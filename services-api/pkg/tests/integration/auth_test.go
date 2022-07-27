// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/stretchr/testify/assert"
)

var (
	clientIDPhantAuth     = "test.client"
	clientSecretPhantAuth = "UTBcWwt5"
)

func TestIntegrationLoginPlatform(t *testing.T) {
	t.Parallel()

	// prepare and use the helper
	platformToken, errGetPlatformToken := PostPhantauthPlatformToken(t)
	if errGetPlatformToken != nil {
		assert.FailNow(t, errGetPlatformToken.Error())
	}
	assert.NotNil(t, platformToken, "platform token should not be nil")

	// act
	createHeadless := true
	input := &o_auth2_0.PlatformTokenGrantV3Params{
		ClientID:       &clientIDPhantAuth,
		CreateHeadless: &createHeadless,
		DeviceID:       nil, // choose one, device_id or platform_token should be requested
		PlatformID:     "phantauth",
		PlatformToken:  &platformToken,
	}
	err := oAuth20Service.LoginPlatform(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	// assert
	assert.Nil(t, err, "err should be nil")
	getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
	assert.Nil(t, errGetToken, "err should be nil")
	assert.NotNil(t, getToken, "get token form token repository should not be nil")
}

// PostPhantauthPlatformToken is the second invoked endpoint
func PostPhantauthPlatformToken(t *testing.T) (string, error) {
	t.Helper()

	// prepare and use the helper
	code, errCode := GetPhantauthAuthorizationCode(t)
	if errCode != nil {
		assert.Fail(t, errCode.Error())
	}
	assert.NotNil(t, code, "authorization code should not nil")

	// act
	redirectUri := "http://localhost"
	input := integration.PostPhantauthParams{
		GrantType:    "authorization_code",
		ClientID:     clientIDPhantAuth,
		ClientSecret: clientSecretPhantAuth,
		RedirectURI:  redirectUri,
		Code:         code,
	}
	token, err := integration.OAuth20PhantAuthService.Client.ClientPhantauthService.Post(&input)
	if err != nil {
		assert.Fail(t, err.Error())
	}
	assert.NotNil(t, token, "token form phantauth should not nil")

	return *token.Payload.IDToken, nil
}

// GetPhantauthAuthorizationCode is the first invoked endpoint
func GetPhantauthAuthorizationCode(t *testing.T) (string, error) {
	t.Helper()

	input := integration.GetPhantauthParams{
		Username: "test.serversdk1",
		Kind:     "authorization",
	}
	code, err := integration.OAuth20PhantAuthService.Client.ClientPhantauthService.Get(&input)
	if err != nil {
		assert.Fail(t, err.Error())
	}

	assert.NotNil(t, code, "code from phantauth should not nil")

	return code.Payload, nil
}
