// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"testing"
	"time"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/constant"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/testutils"
)

func TestDefaultConfigRepositoryImpl(t *testing.T) {
	clientID := "expected_ab_client_id"
	clientSecret := "expected_ab_client_secret"
	baseURL := "expected_ab_base_url"

	testutils.Setenv(t, constant.EnvClientID, clientID)
	testutils.Setenv(t, constant.EnvClientSecret, clientSecret)
	testutils.Setenv(t, constant.EnvBaseURL, baseURL)

	cfg := DefaultConfigRepositoryImpl()

	assert.Equal(t, clientID, cfg.GetClientId())
	assert.Equal(t, clientSecret, cfg.GetClientSecret())
	assert.Equal(t, baseURL, cfg.GetJusticeBaseUrl())
}

func TestTokenRepositoryImpl(t *testing.T) {
	t.Run("New default token repository should return non-nil empty token", func(t *testing.T) {
		tokenRepo := DefaultTokenRepositoryImpl()
		// default token repository return empty value token as default
		tkn, err := tokenRepo.GetToken()
		assert.NotNil(t, tkn)
		assert.NoError(t, err)
	})

	t.Run("Invalid access token object", func(t *testing.T) {
		tokenRepo := DefaultTokenRepositoryImpl()

		err := tokenRepo.Store("<string invalid access token object>")
		assert.Error(t, err)

		// existing token value not affected because Store operation failed
		tkn, err := tokenRepo.GetToken()
		assert.NoError(t, err)
		assert.Equal(t, &iamclientmodels.OauthmodelTokenResponseV3{}, tkn)

		err = tokenRepo.RemoveToken()
		assert.NoError(t, err)

		tkn, err = tokenRepo.GetToken()
		assert.Error(t, err)
		assert.Nil(t, tkn)
	})

	t.Run("Nil access token object", func(t *testing.T) {
		tokenRepo := DefaultTokenRepositoryImpl()

		err := tokenRepo.Store(nil)
		assert.NoError(t, err)

		tkn, err := tokenRepo.GetToken()
		assert.Error(t, err)
		assert.Nil(t, tkn)
	})

	t.Run("Valid access token object", func(t *testing.T) {
		tokenRepo := DefaultTokenRepositoryImpl()
		accessTokenStr := "<my-random-access-token-here>"
		accessToken := &iamclientmodels.OauthmodelTokenResponseV3{
			AccessToken: &accessTokenStr,
			DisplayName: "accelbyte",
		}

		now := time.Now().UTC()
		utils.SetTimeNowForTest(t, now)
		err := tokenRepo.Store(accessToken)
		assert.NoError(t, err)

		tkn, err := tokenRepo.GetToken()
		assert.NoError(t, err)
		assert.Equal(t, accessToken, tkn)

		issuedAt := tokenRepo.TokenIssuedTimeUTC()
		assert.Equal(t, now, issuedAt)

		err = tokenRepo.RemoveToken()
		assert.NoError(t, err)

		tkn, err = tokenRepo.GetToken()
		assert.Error(t, err)
		assert.Nil(t, tkn)
	})
}
