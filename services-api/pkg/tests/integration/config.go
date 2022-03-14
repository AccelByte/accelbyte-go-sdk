// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration

import (
	"encoding/json"
	"errors"
	"io/ioutil"
	"os"

	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

/*
	Please set your client_id and client_secret in to the env before run the test
*/

const (
	BaseURL   = "https://demo.accelbyte.io"
	Namespace = "accelbyte"
)

var token iamclientmodels.OauthmodelTokenResponseV3

type TokenRepositoryImpl struct {
}

type ConfigRepositoryImpl struct {
}

func (configRepository *ConfigRepositoryImpl) GetClientId() string {
	return os.Getenv("APP_CLIENT_ID")
}

func (configRepository *ConfigRepositoryImpl) GetClientSecret() string {
	return os.Getenv("APP_CLIENT_SECRET")
}

func (configRepository *ConfigRepositoryImpl) GetJusticeBaseUrl() string {
	return BaseURL
}

func (tokenRepository *TokenRepositoryImpl) Store(accessToken iamclientmodels.OauthmodelTokenResponseV3) error {
	token = accessToken
	return nil
}

func (tokenRepository *TokenRepositoryImpl) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	content, err := ioutil.ReadFile(os.TempDir() + "/justice-sample-apps/userData")
	if err != nil {
		logrus.Error(err)
		return nil, errors.New("please do login, fail to get")
	}
	err = json.Unmarshal(content, &token)
	if err != nil {
		logrus.Error(err)
		return nil, errors.New("please do login, fail to unmarshal")
	}
	return &token, nil
}

func (tokenRepository *TokenRepositoryImpl) RemoveToken() error {
	token = iamclientmodels.OauthmodelTokenResponseV3{}
	return nil
}
