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
	ConstURL          = "https://httpbin.org"
	ConfigRepo        ConfigRepositoryImplTest
	TestService       = &TestWrapperService{
		Client:           NewClientWithBasePath("httpbin.org", ""),
		ConfigRepository: &ConfigRepositoryImplTest{},
		TokenRepository:  &TokenRepositoryImplTest{},
	}
)

const (
	ConstAccessToken = "foo"
)

type TokenRepositoryImplTest struct {
	IssuedTime time.Time                                 `json:"issuedTime"`
	Token      iamclientmodels.OauthmodelTokenResponseV3 `json:"Token"`
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

func (t *TokenRepositoryImplTest) Store(accessToken iamclientmodels.OauthmodelTokenResponseV3) error {
	t.IssuedTime = time.Now()
	t.Token = accessToken

	return nil
}

func (t *TokenRepositoryImplTest) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	return &t.Token, nil
}

func (t *TokenRepositoryImplTest) RemoveToken() error {
	t.Token = iamclientmodels.OauthmodelTokenResponseV3{}

	return nil
}

func (t *TokenRepositoryImplTest) TokenIssuedTimeUTC() time.Time {
	return t.IssuedTime
}
