// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"net/http"
	"os"
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var (
	httpClient = &http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	oAuth20Service = &iam.OAuth20Service{
		Client:           factory.NewIamClient(&integration.ConfigRepositoryImpl{}),
		ConfigRepository: &integration.ConfigRepositoryImpl{},
		TokenRepository:  &integration.TokenRepositoryImpl{},
	}
	oAuth20ExtensionService = &iam.OAuth20ExtensionService{
		Client:           factory.NewIamClient(&integration.ConfigRepositoryImpl{}),
		ConfigRepository: &integration.ConfigRepositoryImpl{},
		TokenRepository:  &integration.TokenRepositoryImpl{},
	}
	codeChallengeMethod = "S256"
	redirectUri         string
	scope               = "commerce account social publishing analytics"
	username            = os.Getenv("username")
	password            = os.Getenv("password")
)

// Getting an authorization
func TestIntegrationAuthorizeV3(t *testing.T) {
	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	clientId := oAuth20Service.ConfigRepository.GetClientId()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectUri,
		Scope:               &scope,
		ClientID:            clientId,
		ResponseType:        "code",
		HTTPClient:          httpClient,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	expected, err := oAuth20Service.AuthorizeV3(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

// Getting an authentication
func TestIntegrationAuthenticate(t *testing.T) {
	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	clientId := oAuth20ExtensionService.ConfigRepository.GetClientId()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectUri,
		Scope:               &scope,
		ClientID:            oAuth20Service.ConfigRepository.GetClientId(),
		ResponseType:        "code",
		HTTPClient:          httpClient,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	requestID, err := oAuth20Service.AuthorizeV3(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	inputAuth := &o_auth2_0_extension.UserAuthenticationV3Params{
		ClientID:   &clientId,
		Password:   password,
		RequestID:  requestID,
		UserName:   username,
		HTTPClient: httpClient,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	expected, err := oAuth20ExtensionService.UserAuthenticationV3(inputAuth)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

// Getting a token grant
func TestIntegrationGrantTokenAuthorizationCode(t *testing.T) {
	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	clientId := oAuth20ExtensionService.ConfigRepository.GetClientId()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectUri,
		Scope:               &scope,
		ClientID:            oAuth20Service.ConfigRepository.GetClientId(),
		ResponseType:        "code",
		HTTPClient:          httpClient,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	requestID, err := oAuth20Service.AuthorizeV3(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	inputAuth := &o_auth2_0_extension.UserAuthenticationV3Params{
		ClientID:   &clientId,
		Password:   password,
		RequestID:  requestID,
		UserName:   username,
		HTTPClient: httpClient,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	code, err := oAuth20ExtensionService.UserAuthenticationV3(inputAuth)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	codeVerifier := codeVerifierGenerator.String()
	inputTokenGrant := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    "authorization_code",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	expected, err := oAuth20Service.TokenGrantV3(inputTokenGrant)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

// Login
func TestIntegrationLogin(t *testing.T) {
	err := oAuth20Service.Login(username, password)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}

// Logout
func TestIntegrationLogout(t *testing.T) {
	err := oAuth20Service.Login(username, password)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	err = oAuth20Service.Logout()
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}
