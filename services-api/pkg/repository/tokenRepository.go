// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package repository

import (
	"encoding/json"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

var token iamclientmodels.OauthmodelTokenResponseV3

type TokenRepository interface {
	Store(accessToken interface{}) error
	GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error)
	RemoveToken() error
	TokenIssuedTimeUTC() time.Time
}

func GetRefreshExpiresIn(repository TokenRepository) (*int32, error) {
	getToken, errGet := repository.GetToken()
	if errGet != nil {
		return nil, errGet
	}

	return getToken.RefreshExpiresIn, nil
}

func GetExpiresIn(repository TokenRepository) (*int32, error) {
	getToken, errGet := repository.GetToken()
	if errGet != nil {
		return nil, errGet
	}
	token = *getToken

	return token.ExpiresIn, nil
}

func GetRefreshToken(repository TokenRepository) (string, error) {
	getToken, errGet := repository.GetToken()
	if errGet != nil {
		return "", errGet
	}

	return *getToken.RefreshToken, nil
}

func GetSecondsTillExpiry(repository TokenRepository, refreshRate float64) time.Duration {
	if !HasToken(repository) {
		return 0
	}
	get, err := GetExpiresIn(repository)
	if err != nil {
		return 0
	}
	withRefreshRate := float64(*get) * refreshRate
	expiresAt := repository.TokenIssuedTimeUTC().Add(time.Duration(withRefreshRate) * time.Second)
	timeNow := time.Now().UTC()
	secondsTillExpiry := expiresAt.Sub(timeNow) // in seconds ex 1m6.995968173s

	return secondsTillExpiry
}

func HasToken(repository TokenRepository) bool {
	_, err := repository.GetToken()

	return err == nil
}

func HasTokenExpired(repository TokenRepository, refreshRate float64) bool {
	x := GetSecondsTillExpiry(repository, refreshRate) <= 0

	return x
}

func GetSecondsTillExpiryRefresh(repository TokenRepository, refreshRate float64) time.Duration {
	if !HasToken(repository) {
		return 0
	}
	get, err := GetRefreshExpiresIn(repository)
	if err != nil {
		return 0
	}
	withRefreshRate := float64(*get) * refreshRate
	expiresAt := repository.TokenIssuedTimeUTC().Add(time.Duration(withRefreshRate) * time.Second)
	secondsTillExpiry := expiresAt.Sub(time.Now().UTC()) // in seconds ex 1m6.995968173s

	return secondsTillExpiry
}

func HasRefreshTokenExpired(repository TokenRepository, refreshRate float64) bool {
	return GetSecondsTillExpiryRefresh(repository, refreshRate) <= 0
}

func ConvertInterfaceToModel(tokenInterface interface{}, tokenModel *iamclientmodels.OauthmodelTokenResponseV3) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	tmpToken, errMarshal := json.Marshal(tokenInterface)
	if errMarshal != nil {
		return nil, errMarshal
	}

	errUnmarshal := json.Unmarshal(tmpToken, &tokenModel)
	if errUnmarshal != nil {
		return nil, errUnmarshal
	}

	return tokenModel, nil
}
