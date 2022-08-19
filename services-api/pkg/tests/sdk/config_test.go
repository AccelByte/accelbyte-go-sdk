// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestConfig_ClientId(t *testing.T) {
	clientId := TestService.ConfigRepository.GetClientId()
	require.NotEmpty(t, clientId)

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
	accessToken = "foo"
	token = iamclientmodels.OauthmodelTokenResponseV3{
		AccessToken: &accessToken,
	}
	err := TestService.TokenRepository.Store(token)
	require.Nil(t, err, "error should be empty")

	tokenRepository, err := TestService.TokenRepository.GetToken()
	require.Nil(t, err, "error should be empty")
	assert.NotNil(t, tokenRepository, "Token repository is empty")
	assert.Equal(t, ConstAccessToken, *tokenRepository.AccessToken)
}
