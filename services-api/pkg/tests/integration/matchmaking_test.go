// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"

	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	matchmakingService = &matchmaking.MatchmakingService{
		Client:          factory.NewMatchmakingClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: auth.DefaultTokenRepositoryImpl(),
	}
	empty           = "-"
	defaultGameMode = "go_sdk"
	criteria        = "distance"
	maxNumber       = int32(2)
	minNumber       = int32(2)
	alliance        = &matchmakingclientmodels.ModelsAllianceRule{
		MaxNumber:       &maxNumber,
		MinNumber:       &minNumber,
		PlayerMaxNumber: &maxNumber,
		PlayerMinNumber: &minNumber,
	}

	allianceFlexingRules []*matchmakingclientmodels.ModelsAllianceFlexingRule
	allianceFlexingRule  = &matchmakingclientmodels.ModelsAllianceFlexingRule{
		Duration:        nil,
		MaxNumber:       &maxNumber,
		MinNumber:       &minNumber,
		PlayerMaxNumber: &maxNumber,
		PlayerMinNumber: &minNumber,
	}
	flexingRule = &matchmakingclientmodels.ModelsFlexingRule{
		Attribute: "",
		Criteria:  criteria,
		Duration:  nil,
		Reference: 0,
	}
	flexingRules []*matchmakingclientmodels.ModelsFlexingRule
	matchingRule = &matchmakingclientmodels.ModelsMatchingRule{
		Attribute: "",
		Criteria:  criteria,
		Reference: 0,
	}
	matchingRules []*matchmakingclientmodels.ModelsMatchingRule
	matchOptions  *matchmakingclientmodels.ModelsMatchOptionRule
	subGameModes  = make(map[string]matchmakingclientmodels.ModelsSubGameMode)
	ruleSet       = &matchmakingclientmodels.ModelsRuleSet{
		Alliance:            alliance,
		AllianceFlexingRule: allianceFlexingRules,
		FlexingRule:         flexingRules,
		MatchOptions:        matchOptions,
		MatchingRule:        matchingRules,
		SubGameModes:        subGameModes,
	}
	bodyMatchmaking = &matchmakingclientmodels.ModelsChannelRequest{
		Deployment:                 empty,
		Description:                empty,
		FindMatchTimeoutSeconds:    0,
		GameMode:                   defaultGameMode,
		Joinable:                   &defaultBool,
		MaxDelayMs:                 0,
		RuleSet:                    ruleSet,
		SessionQueueTimeoutSeconds: 0,
		SocialMatchmaking:          &defaultBool,
		UseSubGamemode:             &defaultBool,
	}
	allianceUpdate = &matchmakingclientmodels.ModelsUpdateAllianceRule{
		MaxNumber:       maxNumber,
		MinNumber:       minNumber,
		PlayerMaxNumber: maxNumber,
		PlayerMinNumber: minNumber,
	}
	rulesetUpdate = &matchmakingclientmodels.ModelsUpdateRuleset{
		Alliance:            allianceUpdate,
		AllianceFlexingRule: allianceFlexingRules,
		FlexingRules:        flexingRules,
		MatchOptions:        matchOptions,
		MatchingRules:       matchingRules,
		SubGameModes:        subGameModes,
	}
	bodyMatchmakingUpdate = &matchmakingclientmodels.ModelsUpdateChannelRequest{
		Deployment:                 &empty,
		Description:                &empty,
		FindMatchTimeoutSeconds:    nil,
		Joinable:                   &defaultBool,
		MaxDelayMs:                 nil,
		RuleSet:                    rulesetUpdate,
		SessionQueueTimeoutSeconds: nil,
		SocialMatchmaking:          &defaultBool,
		UseSubGamemode:             &defaultBool,
	}
)

func TestIntegrationDeleteChannelHandler(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Delete a matchmaking channel
	inputMatchmaking := &matchmaking_.DeleteChannelHandlerParams{
		Channel:   defaultGameMode,
		Namespace: integration.NamespaceTest,
	}

	err := matchmakingService.DeleteChannelHandlerShort(inputMatchmaking)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationCreateChannelHandler(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create a matchmaking channel
	allianceFlexingRules = append(allianceFlexingRules, allianceFlexingRule)
	flexingRules = append(flexingRules, flexingRule)
	matchingRules = append(matchingRules, matchingRule)
	inputMatchmaking := &matchmaking_.CreateChannelHandlerParams{
		Body:      bodyMatchmaking,
		Namespace: integration.NamespaceTest,
	}

	ok, err := matchmakingService.CreateChannelHandlerShort(inputMatchmaking)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationGetSingleMatchmakingChannel(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Get a matchmaking channel
	inputMatchmaking := &matchmaking_.GetSingleMatchmakingChannelParams{
		ChannelName: defaultGameMode,
		Namespace:   integration.NamespaceTest,
	}

	ok, err := matchmakingService.GetSingleMatchmakingChannelShort(inputMatchmaking)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationUpdatePatchSinglematchmakingPublicV1(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Update matchmaking
	inputMatchmaking := &matchmaking_.UpdateMatchmakingChannelParams{
		Body:        bodyMatchmakingUpdate,
		ChannelName: defaultGameMode,
		Namespace:   integration.NamespaceTest,
	}

	err := matchmakingService.UpdateMatchmakingChannelShort(inputMatchmaking)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}
