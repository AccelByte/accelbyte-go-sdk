// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

//lint:ignore SA5011 possible nil pointer dereference

import (
	"net/http"
	"os"
	"testing"

	"github.com/sirupsen/logrus"
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
	redirectURI         string
	scope               = "commerce account social publishing analytics"
	username            = os.Getenv("AB_USERNAME")
	password            = os.Getenv("AB_PASSWORD")
	clientID            = oAuth20Service.ConfigRepository.GetClientId()
)

func Init() {
	input := &o_auth2_0.TokenGrantV3Params{
		Password:  &password,
		Username:  &username,
		GrantType: "password",
	}
	accessToken, err := oAuth20Service.TokenGrantV3Short(input)
	if err != nil {
		logrus.Error("failed login")
	} else if accessToken == nil { //lint:ignore SA5011 possible nil pointer dereference
		logrus.Error("empty access token")
	} else {
		errStore := oAuth20Service.TokenRepository.Store(*accessToken)
		if errStore != nil {
			logrus.Error("failed stored the token")
		}
	}
}

// Getting an authorization
func TestIntegrationAuthorizeV3(t *testing.T) {
	t.Parallel()

	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectURI,
		Scope:               &scope,
		ClientID:            clientID,
		ResponseType:        "code",
		HTTPClient:          httpClient,
	}
	expected, err := oAuth20Service.AuthorizeV3Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

// Getting an authentication
func TestIntegrationAuthenticate(t *testing.T) {
	t.Parallel()

	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectURI,
		Scope:               &scope,
		ClientID:            oAuth20Service.ConfigRepository.GetClientId(),
		ResponseType:        "code",
		HTTPClient:          httpClient,
	}
	requestID, err := oAuth20Service.AuthorizeV3Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	inputAuth := &o_auth2_0_extension.UserAuthenticationV3Params{
		ClientID:   &clientID,
		Password:   password,
		RequestID:  requestID,
		UserName:   username,
		HTTPClient: httpClient,
	}
	expected, errExpected := oAuth20ExtensionService.UserAuthenticationV3Short(inputAuth)
	if errExpected != nil {
		assert.FailNow(t, errExpected.Error())
	}
	assert.Nil(t, errExpected, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

// Getting a token grant
func TestIntegrationGrantTokenAuthorizationCode(t *testing.T) {
	t.Parallel()

	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectURI,
		Scope:               &scope,
		ClientID:            clientID,
		ResponseType:        "code",
		HTTPClient:          httpClient,
	}
	requestID, err := oAuth20Service.AuthorizeV3Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	inputAuth := &o_auth2_0_extension.UserAuthenticationV3Params{
		ClientID:   &clientID,
		Password:   password,
		RequestID:  requestID,
		UserName:   username,
		HTTPClient: httpClient,
	}
	code, errCode := oAuth20ExtensionService.UserAuthenticationV3Short(inputAuth)
	if errCode != nil {
		assert.FailNow(t, errCode.Error())
	}

	codeVerifier := codeVerifierGenerator.String()
	inputTokenGrant := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    "authorization_code",
	}
	expected, errExpected := oAuth20Service.TokenGrantV3Short(inputTokenGrant)
	if errExpected != nil {
		assert.FailNow(t, errExpected.Error())
	}

	assert.Nil(t, errExpected, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

func TestIntegrationLogin(t *testing.T) {
	t.Parallel()
	input := &o_auth2_0.TokenGrantV3Params{
		Password:  &password,
		Username:  &username,
		GrantType: o_auth2_0.GrantTypeConstant,
	}
	ok, err := oAuth20Service.TokenGrantV3Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	logrus.Infof("Bearer %v; UserId %v", *ok.AccessToken, *ok.UserID)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
