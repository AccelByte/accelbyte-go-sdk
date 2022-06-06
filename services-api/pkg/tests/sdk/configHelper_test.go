// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var (
	token       iamclientmodels.OauthmodelTokenResponseV3
	ConfigRepo  ConfigRepositoryImplTest
	TestService = &TestWrapperService{
		Client:           NewClientWithBasePath("httpbin.org", ""),
		ConfigRepository: &ConfigRepositoryImplTest{},
		TokenRepository:  &TokenRepositoryImplTest{},
	}
)

const (
	ConstAccessToken  = "foo"
	ConstClientId     = "admin"
	ConstClientSecret = "admin"
	ConstURL          = "https://httpbin.org"
)

type TokenRepositoryImplTest struct {
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
	token = accessToken

	return nil
}

func (t *TokenRepositoryImplTest) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	return &token, nil
}

func (t *TokenRepositoryImplTest) RemoveToken() error {
	token = iamclientmodels.OauthmodelTokenResponseV3{}

	return nil
}
