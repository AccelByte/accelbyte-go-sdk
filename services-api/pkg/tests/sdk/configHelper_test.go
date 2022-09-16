// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var (
	ConstClientId     = "admin"
	ConstClientSecret = "admin"
	ConstURL          = "http://localhost:80"
	ConfigRepo        ConfigRepositoryImplTest
	TestService       = &TestWrapperService{
		Client:           NewClientWithBasePath("localhost:80", ""),
		ConfigRepository: &ConfigRepositoryImplTest{},
		TokenRepository:  &TokenRepositoryImplTest{},
	}
	token iamclientmodels.OauthmodelTokenResponseV3
)

const (
	ConstAccessToken = "foo"
)

type TokenRepositoryImplTest struct {
	IssuedTime  *time.Time                                 `json:"issuedTime"`
	AccessToken *iamclientmodels.OauthmodelTokenResponseV3 `json:"AccessToken"`
}

type ConfigRepositoryImplTest struct {
}

type TestWrapperService struct {
	Client           *AnythingService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (c *ConfigRepositoryImplTest) GetClientId() string {
	return ConstClientId
}

func (c *ConfigRepositoryImplTest) GetClientSecret() string {
	return ConstClientSecret
}

func (c *ConfigRepositoryImplTest) GetJusticeBaseUrl() string {
	return ConstURL
}

func (t *TokenRepositoryImplTest) Store(accessToken interface{}) error {
	timeNow := time.Now().UTC()
	t.IssuedTime = &timeNow

	convertedToken, err := repository.ConvertInterfaceToModel(accessToken, &token)
	if err != nil {
		return err
	}
	t.AccessToken = convertedToken

	return nil
}

func (t *TokenRepositoryImplTest) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	return t.AccessToken, nil
}

func (t *TokenRepositoryImplTest) RemoveToken() error {
	t.AccessToken = &iamclientmodels.OauthmodelTokenResponseV3{}

	return nil
}

func (t *TokenRepositoryImplTest) TokenIssuedTimeUTC() time.Time {
	return *t.IssuedTime
}
