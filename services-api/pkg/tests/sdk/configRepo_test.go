// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

var (
	token       iamclientmodels.OauthmodelTokenResponseV3
	ConfigRepo  ConfigRepositoryImplTest
	TestService = &TestWrapperService{
		Client:           NewClientWithBasePath("httpbin.org", ""),
		ConfigRepository: &ConfigRepositoryImplTest{},
		TokenRepository:  &TokenRepositoryImplTest{},
	}
	TestMockService = &TestWrapperService{
		Client:           NewClientWithBasePath("0.0.0.0:8080", ""),
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

func TestConfig_ClientId(t *testing.T) {
	clientId := TestService.ConfigRepository.GetClientId()
	require.NotEmpty(t, ConstClientId)

	assert.Equal(t, ConstClientId, clientId)
}

func TestConfig_ClientSecret(t *testing.T) {
	clientSecret := TestService.ConfigRepository.GetClientSecret()
	require.NotEmpty(t, clientSecret)

	assert.Equal(t, ConstClientSecret, clientSecret)
}

func TestConfig_BaseURL(t *testing.T) {
	url := TestService.ConfigRepository.GetJusticeBaseUrl()
	require.NotEmpty(t, url)

	assert.Equal(t, ConstURL, url)
}

func TestToken(t *testing.T) {
	accessToken := "foo"
	token = iamclientmodels.OauthmodelTokenResponseV3{
		AccessToken: &accessToken,
	}
	err := TestService.TokenRepository.Store(token)
	require.Nil(t, err, "error should be empty")

	tokenRepo, err := TestService.TokenRepository.GetToken()
	require.Nil(t, err, "error should be empty")
	assert.NotNil(t, tokenRepo, "token repository is empty")
	assert.Equal(t, ConstAccessToken, *tokenRepo.AccessToken)
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
