// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	matchmakingService = &matchmaking.MatchmakingService{
		Client:          factory.NewMatchmakingClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
)

// Adding user into channel’s session
func TestIntegrationAddUserIntoSessionInChannel(t *testing.T) {
	inputMatchmaking := &matchmaking_.AddUserIntoSessionInChannelParams{
		Body:        nil,
		ChannelName: "",
		MatchID:     "",
		Namespace:   "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := matchmakingService.AddUserIntoSessionInChannel(inputMatchmaking)

	assert.Nil(t, err, "err should be nil")
}

// Deleting a user from session in a channel
func TestIntegrationDeleteUserFromSessionInChannel(t *testing.T) {
	inputMatchmaking := &matchmaking_.DeleteUserFromSessionInChannelParams{
		ChannelName: "",
		MatchID:     "",
		Namespace:   "",
		UserID:      "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := matchmakingService.DeleteUserFromSessionInChannel(inputMatchmaking)

	assert.Nil(t, err, "err should be nil")
}

// Getting a channel
func TestIntegrationGetSingleMatchmakingChannel(t *testing.T) {
	inputMatchmaking := &matchmaking_.GetSingleMatchmakingChannelParams{
		ChannelName: "",
		Namespace:   "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := matchmakingService.GetSingleMatchmakingChannel(inputMatchmaking)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating an achievement
func TestIntegrationUpdatePatchSinglematchmakingPublicV1(t *testing.T) {
	bodyMatchmakingUpdate := &matchmakingclientmodels.ModelsUpdateChannelRequest{
		Deployment:                 nil,
		Description:                nil,
		FindMatchTimeoutSeconds:    nil,
		Joinable:                   nil,
		MaxDelayMs:                 nil,
		RuleSet:                    nil,
		SessionQueueTimeoutSeconds: nil,
		SocialMatchmaking:          nil,
		UseSubGamemode:             nil,
	}
	inputMatchmaking := &matchmaking_.UpdateMatchmakingChannelParams{
		Body:        bodyMatchmakingUpdate,
		ChannelName: "",
		Namespace:   "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := matchmakingService.UpdateMatchmakingChannel(inputMatchmaking)

	assert.Nil(t, err, "err should be nil")
}
