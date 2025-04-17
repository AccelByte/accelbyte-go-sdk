// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"strings"
	"testing"

	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_functions"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_pools"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_tickets"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/rule_sets"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

var (
	ruleSetsService = &match2.RuleSetsService{
		Client:          factory.NewMatch2Client(configRepo),
		TokenRepository: tokenRepository,
	}
	matchPoolService = &match2.MatchPoolsService{
		Client:          factory.NewMatch2Client(configRepo),
		TokenRepository: tokenRepository,
	}
	matchTicketService = &match2.MatchTicketsService{
		Client:          factory.NewMatch2Client(configRepo),
		TokenRepository: tokenRepository,
	}
	matchFunctionService = &match2.MatchFunctionsService{
		Client:          factory.NewMatch2Client(configRepo),
		TokenRepository: tokenRepository,
	}
	ruleSetName       = "go_sdk_ruleset_" + RandStringBytes(4)
	poolName          = "go_sdk_pool_" + RandStringBytes(4)
	matchFunction     = "basic"
	expirationSeconds = int32(600)
	offset            = int64(0)
	userID            string
	data              = map[string]interface{}{
		"alliance": map[string]int{
			"min_number":        2,
			"max_number":        10,
			"player_min_number": 2,
			"player_max_number": 4,
		},
		"matchingRules": []map[string]string{
			{
				"attribute": "",
				"criteria":  "distance",
				"reference": "",
			},
		},
		"flexingRules": []map[string]string{
			{
				"duration":  "600",
				"attribute": "",
				"criteria":  "distance",
				"reference": "",
			},
		},
		"match_options": map[string]interface{}{
			"options": []map[string]string{
				{
					"name": "option",
					"type": "any",
				},
			},
		},
		"alliance_flexing_rule": []map[string]int{
			{
				"duration":          600,
				"min_number":        1,
				"max_number":        2,
				"player_min_number": 1,
				"player_max_number": 2,
			},
		},
	}
	matchPoolSessionTemplateName = randomizeCfgTemplateName()
	bodyMatchPool                = &match2clientmodels.APIMatchPool{
		BackfillTicketExpirationSeconds: &expirationSeconds,
		MatchFunction:                   &matchFunction,
		Name:                            &poolName,
		RuleSet:                         &ruleSetName,
		SessionTemplate:                 &matchPoolSessionTemplateName,
		TicketExpirationSeconds:         &expirationSeconds,
	}
	maxNumber = int32(2)
	minNumber = int32(2)
)

func TestIntegrationMatchPool(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("temporarily disabled in AGS Starter due to issue in session service")
	}

	// Login User - Arrange
	Init()

	// Create configuration - Arrange
	cfgName, _ := createCfgTemplate(randomizeCfgTemplateName())
	defer func(name string) {
		err := deleteCfgTemplate(name)
		if err != nil {
			assert.FailNow(t, err.Error())
		}
	}(cfgName)

	// CASE Create a match rule set
	inputCreateRule := &rule_sets.CreateRuleSetParams{
		Body: &match2clientmodels.APIRuleSetPayload{
			Data: &data,
			Name: &ruleSetName,
		},
		Namespace: integration.NamespaceTest,
	}
	errCreateRule := ruleSetsService.CreateRuleSetShort(inputCreateRule)
	if errCreateRule != nil {
		assert.FailNow(t, errCreateRule.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreateRule, "err should be nil")

	// CASE Create a match pool
	tempMatchPoolBody := *bodyMatchPool
	tempMatchPoolBody.SessionTemplate = &cfgName

	inputCreatePool := &match_pools.CreateMatchPoolParams{
		Body:      &tempMatchPoolBody,
		Namespace: integration.NamespaceTest,
	}
	errCreated := matchPoolService.CreateMatchPoolShort(inputCreatePool)
	if errCreated != nil {
		assert.FailNow(t, errCreated.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreated, "err should be nil")

	// CASE List match pools
	inputCreate := &match_pools.MatchPoolListParams{
		Limit:     &limit,
		Namespace: integration.NamespaceTest,
		Offset:    &offset,
	}
	getList, errGetList := matchPoolService.MatchPoolListShort(inputCreate)
	if errGetList != nil {
		assert.FailNow(t, errGetList.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errGetList, "err should be nil")
	assert.NotNil(t, getList, "should not be nil")

	player2Id := createPlayer2()
	defer deletePlayer(player2Id)

	sessionID := getSessionID(t, player2Id)

	// CASE User create a match ticket
	inputCreateTicket := &match_tickets.CreateMatchTicketParams{
		Body: &match2clientmodels.APIMatchTicketRequest{
			MatchPool: &poolName,
			SessionID: sessionID,
		},
		Namespace: integration.NamespaceTest,
	}
	createdTicket, errCreatedTicket := matchTicketService.CreateMatchTicketShort(inputCreateTicket)
	if errCreatedTicket != nil {
		assert.FailNow(t, errCreatedTicket.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreatedTicket, "err should be nil")
	assert.NotNil(t, createdTicket, "should not be nil")

	// CASE Delete a match ticket
	inputDeleteTicket := &match_tickets.DeleteMatchTicketParams{
		Namespace: integration.NamespaceTest,
		Ticketid:  *createdTicket.MatchTicketID,
	}
	errDeletedTicket := matchTicketService.DeleteMatchTicketShort(inputDeleteTicket)
	if errDeletedTicket != nil {
		assert.FailNow(t, errDeletedTicket.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errDeletedTicket, "err should be nil")

	var matchRuleSet string
	for _, match := range getList.Data {
		poolName = *match.Name
		matchRuleSet = *match.RuleSet
	}

	// CASE Delete a match pool
	inputDeletePool := &match_pools.DeleteMatchPoolParams{
		Namespace: integration.NamespaceTest,
		Pool:      poolName,
	}
	errDeletedPool := matchPoolService.DeleteMatchPoolShort(inputDeletePool)
	if errDeletedPool != nil {
		assert.FailNow(t, errDeletedPool.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errDeletedPool, "err should be nil")

	// CASE Delete a match rule set
	inputDeleteRule := &rule_sets.DeleteRuleSetParams{
		Namespace: integration.NamespaceTest,
		Ruleset:   matchRuleSet,
	}
	errDeletedRule := ruleSetsService.DeleteRuleSetShort(inputDeleteRule)
	if errDeletedRule != nil {
		assert.FailNow(t, errDeletedRule.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errDeletedRule, "err should be nil")
}

func TestIntegrationMatchFunction(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE List match functions
	inputCreate := &match_functions.MatchFunctionListParams{
		Limit:     &limit,
		Namespace: integration.NamespaceTest,
		Offset:    &offset,
	}
	getList, errGetList := matchFunctionService.MatchFunctionListShort(inputCreate)
	if errGetList != nil {
		assert.FailNow(t, errGetList.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errGetList, "err should be nil")
	assert.NotNil(t, getList, "should not be nil")
}

func getSessionID(t *testing.T, memberID string) string {
	t.Helper()

	cfgName, _ := createCfgTemplate(randomizeCfgTemplateName())
	defer func(name string) {
		err := deleteCfgTemplate(name)
		if err != nil {
			assert.FailNow(t, err.Error())
		}
	}(cfgName)

	tempCreatePartyBody := *bodyParty
	tempCreatePartyBody.ConfigurationName = &cfgName
	tempCreatePartyBody.Members = []*sessionclientmodels.ApimodelsRequestMember{{ID: &memberID}}

	created, errCreated := partyService.PublicCreatePartyShort(&party.PublicCreatePartyParams{
		Body:      &tempCreatePartyBody,
		Namespace: integration.NamespaceTest,
	})
	if errCreated != nil {
		logrus.Error(errCreated.Error())

		return ""
	}

	return *created.ID
}
