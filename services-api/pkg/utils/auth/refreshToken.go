// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"encoding/json"
	"errors"
	"io/ioutil"
	"os"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/sirupsen/logrus"
)

var (
	token           iamclientmodels.OauthmodelTokenResponseV3
	TokenIssuedTime time.Time
)

type RefreshTokenImpl struct {
	RefreshRate float64
	AutoRefresh bool
}

func DefaultRefreshTokenImpl() *RefreshTokenImpl {
	return &RefreshTokenImpl{
		1.0,
		true,
	}
}

func (r *RefreshTokenImpl) DisableAutoRefresh() bool {
	return !r.AutoRefresh
}

func (r *RefreshTokenImpl) GetExpiresIn(accessToken iamclientmodels.OauthmodelTokenResponseV3) *int32 {
	return accessToken.ExpiresIn
}

func (r *RefreshTokenImpl) GetRefreshExpiresIn(accessToken iamclientmodels.OauthmodelTokenResponseV3) (*int32, error) {
	return accessToken.RefreshExpiresIn, nil
}

func (r *RefreshTokenImpl) GetRefreshRate() float64 {
	return r.RefreshRate
}

func (r *RefreshTokenImpl) StoreRefreshToken(accessToken iamclientmodels.OauthmodelTokenResponseV3) error {
	_, err := os.Stat(os.TempDir() + "/justice-sample-apps/")
	if os.IsNotExist(err) {
		errDir := os.MkdirAll(os.TempDir()+"/justice-sample-apps/", 0755)
		if errDir != nil {
			return errDir
		}
	}
	marshal, err := json.Marshal(accessToken)
	if err != nil {
		return err
	}
	if accessToken.RefreshToken == nil {
		return errors.New("empty Refresh Token")
	}
	err = ioutil.WriteFile(os.TempDir()+"/justice-sample-apps/userData", marshal, 0644)
	if err != nil {
		return err
	}

	return nil
}

func (r *RefreshTokenImpl) GetRefreshToken() (string, error) {
	if _, err := os.Stat(os.TempDir() + "/justice-sample-apps/userData"); os.IsNotExist(err) {
		logrus.Error(err)

		return "", errors.New("failed to create a file, please do login")
	}
	content, err := ioutil.ReadFile(os.TempDir() + "/justice-sample-apps/userData")
	if err != nil {
		logrus.Error(err)

		return "", errors.New("failed to read file, please do login")
	}

	err = json.Unmarshal(content, &token)
	if err != nil {
		logrus.Error(err)

		return "", errors.New("failed to unmarshal Token, please do login")
	}

	return *token.RefreshToken, nil
}

func (r *RefreshTokenImpl) GetSecondsTillExpiry(token iamclientmodels.OauthmodelTokenResponseV3) time.Duration {
	if !r.HasToken(token) {
		return 0
	}
	if r.HasTokenExpired(token) {
		return 0
	}
	expiresAt := TokenIssuedTime.Add(time.Duration(*r.GetExpiresIn(token)) * time.Second)
	secondsTillExpiry := expiresAt.Sub(time.Now().UTC()) // in seconds ex 1m6.995968173s

	return secondsTillExpiry
}

func (r *RefreshTokenImpl) HasToken(accessToken iamclientmodels.OauthmodelTokenResponseV3) bool {
	return accessToken.RefreshToken != nil
}

func (r *RefreshTokenImpl) HasTokenExpired(accessToken iamclientmodels.OauthmodelTokenResponseV3) bool {
	withRefreshRate := float64(*accessToken.ExpiresIn) * r.RefreshRate
	calculatedTime := TokenIssuedTime.Add(time.Duration(withRefreshRate) * time.Second)
	if until := time.Until(calculatedTime); until > 0 {
		return false
	}

	return true
}

func (r *RefreshTokenImpl) HasRefreshTokenExpired(accessToken iamclientmodels.OauthmodelTokenResponseV3) bool {
	withRefreshRate := float64(*accessToken.RefreshExpiresIn) * r.RefreshRate
	calculatedTime := TokenIssuedTime.Add(time.Duration(withRefreshRate) * time.Second)
	if until := time.Until(calculatedTime); until > 0 {
		return false
	}

	return true
}

func (r *RefreshTokenImpl) RemoveRefreshToken() error {
	err := os.Remove(os.TempDir() + "/justice-sample-apps/userData")
	if err != nil {
		logrus.Error("Cannot delete Refresh Token")

		return err
	}

	return nil
}
