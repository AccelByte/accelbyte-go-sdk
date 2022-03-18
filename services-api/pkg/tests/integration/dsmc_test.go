// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	sessionDSMCService = &dsmc.SessionService{
		Client:          factory.NewDsmcClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	namespaceDsmc  = "armadademotestqa"
	deployment     = "deployruli"
	gameMode       = "soloyogs"
	sessionId      = "d10d7eb4-e6aa-48b1-9ba4-9ad48a095636"
	emptyString    = ""
	emptyInterface interface{}
)

// Creating a session
func TestIntegrationCreateSessionDSMC(t *testing.T) {
	var partyMembers []*dsmcclientmodels.ModelsRequestMatchMember
	partyMember := &dsmcclientmodels.ModelsRequestMatchMember{
		UserID: &emptyString,
	}
	partyMembers = append(partyMembers, partyMember)
	var matchingParties []*dsmcclientmodels.ModelsRequestMatchParty
	matchingParty := &dsmcclientmodels.ModelsRequestMatchParty{
		PartyAttributes: emptyInterface,
		PartyID:         &deployment,
		PartyMembers:    partyMembers,
	}
	matchingParties = append(matchingParties, matchingParty)
	var matchingAllies []*dsmcclientmodels.ModelsRequestMatchingAlly
	matchingAlly := &dsmcclientmodels.ModelsRequestMatchingAlly{
		MatchingParties: matchingParties,
	}
	matchingAllies = append(matchingAllies, matchingAlly)
	bodySession := &dsmcclientmodels.ModelsCreateSessionRequest{
		ClientVersion:       &emptyString,
		Configuration:       &emptyString,
		Deployment:          &deployment,
		GameMode:            &gameMode,
		MatchingAllies:      matchingAllies,
		Namespace:           &namespaceDsmc,
		NotificationPayload: &emptyString,
		PodName:             &emptyString,
		Region:              &emptyString,
		SessionID:           &sessionId,
	}
	inputDsmc := &session.CreateSessionParams{
		Body:      bodySession,
		Namespace: namespaceDsmc,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionDSMCService.CreateSession(inputDsmc)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Claiming a DS (Dedicated Server)
func TestIntegrationClaimSessionDSMC(t *testing.T) {
	var partyMembers []*dsmcclientmodels.ModelsRequestMatchMember
	partyMember := &dsmcclientmodels.ModelsRequestMatchMember{
		UserID: &emptyString,
	}
	partyMembers = append(partyMembers, partyMember)
	var matchingParties []*dsmcclientmodels.ModelsRequestMatchParty
	matchingParty := &dsmcclientmodels.ModelsRequestMatchParty{
		PartyAttributes: emptyInterface,
		PartyID:         &deployment,
		PartyMembers:    partyMembers,
	}
	matchingParties = append(matchingParties, matchingParty)
	var matchingAllies []*dsmcclientmodels.ModelsRequestMatchingAlly
	matchingAlly := &dsmcclientmodels.ModelsRequestMatchingAlly{
		MatchingParties: matchingParties,
	}
	matchingAllies = append(matchingAllies, matchingAlly)
	bodySession := &dsmcclientmodels.ModelsCreateSessionRequest{
		ClientVersion:       &emptyString,
		Configuration:       &emptyString,
		Deployment:          &deployment,
		GameMode:            &gameMode,
		MatchingAllies:      matchingAllies,
		Namespace:           &namespaceDsmc,
		NotificationPayload: &emptyString,
		PodName:             &emptyString,
		Region:              &emptyString,
		SessionID:           &sessionId,
	}
	inputDsmc := &session.CreateSessionParams{
		Body:      bodySession,
		Namespace: namespaceDsmc,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionDSMCService.CreateSession(inputDsmc)

	assert.Nil(t, err, "err should be nil")

	sessionIdResp := ok.Session.ID
	bodyClaim := &dsmcclientmodels.ModelsClaimSessionRequest{SessionID: sessionIdResp}
	inputClaim := &session.ClaimServerParams{
		Body:      bodyClaim,
		Namespace: integration.Namespace,
	}

	//lint:ignore SA1019 Ignore the deprecation warnings
	errClaim := sessionDSMCService.ClaimServer(inputClaim)

	assert.Nil(t, errClaim, "err should be nil")
}

// Getting a session
func TestIntegrationGetSessionDSMC(t *testing.T) {
	var partyMembers []*dsmcclientmodels.ModelsRequestMatchMember
	partyMember := &dsmcclientmodels.ModelsRequestMatchMember{
		UserID: &emptyString,
	}
	partyMembers = append(partyMembers, partyMember)
	var matchingParties []*dsmcclientmodels.ModelsRequestMatchParty
	matchingParty := &dsmcclientmodels.ModelsRequestMatchParty{
		PartyAttributes: emptyInterface,
		PartyID:         &deployment,
		PartyMembers:    partyMembers,
	}
	matchingParties = append(matchingParties, matchingParty)
	var matchingAllies []*dsmcclientmodels.ModelsRequestMatchingAlly
	matchingAlly := &dsmcclientmodels.ModelsRequestMatchingAlly{
		MatchingParties: matchingParties,
	}
	matchingAllies = append(matchingAllies, matchingAlly)
	bodySession := &dsmcclientmodels.ModelsCreateSessionRequest{
		ClientVersion:       &emptyString,
		Configuration:       &emptyString,
		Deployment:          &deployment,
		GameMode:            &gameMode,
		MatchingAllies:      matchingAllies,
		Namespace:           &namespaceDsmc,
		NotificationPayload: &emptyString,
		PodName:             &emptyString,
		Region:              &emptyString,
		SessionID:           &sessionId,
	}
	inputDsmc := &session.CreateSessionParams{
		Body:      bodySession,
		Namespace: namespaceDsmc,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionDSMCService.CreateSession(inputDsmc)
	assert.Nil(t, err, "err should be nil")

	sessionIdResp := *ok.Session.ID
	inputExpected := &session.GetSessionParams{
		Namespace: namespaceDsmc,
		SessionID: sessionIdResp,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	expected, err := sessionDSMCService.GetSession(inputExpected)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}
