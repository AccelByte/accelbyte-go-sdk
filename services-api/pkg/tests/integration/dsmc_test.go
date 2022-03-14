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
	sessionService = &dsmc.SessionService{
		Client:          factory.NewDsmcClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	namespaceDsmc = integration.Namespace
	deployment    = "default"
	gameMode      = "GAME_MODE"
	sessionId     = "SESSION_ID"
	bodySession   = &dsmcclientmodels.ModelsCreateSessionRequest{
		ClientVersion:       nil,
		Configuration:       nil,
		Deployment:          &deployment,
		GameMode:            &gameMode,
		MatchingAllies:      nil,
		Namespace:           &namespaceDsmc,
		NotificationPayload: nil,
		PodName:             nil,
		Region:              nil,
		SessionID:           &sessionId,
	}
)

// Creating a session
func TestIntegrationAdminCreateSession(t *testing.T) {
	input := &session.CreateSessionParams{
		Body:      bodySession,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionService.CreateSession(input)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Claiming a DS (Dedicated Server)
func TestIntegrationClaimSession(t *testing.T) {
	input := &session.CreateSessionParams{
		Body:      bodySession,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionService.CreateSession(input)
	assert.Nil(t, err, "err should be nil")

	sessionIdResp := ok.Session.ID
	bodyClaim := &dsmcclientmodels.ModelsClaimSessionRequest{SessionID: sessionIdResp}
	inputClaim := &session.ClaimServerParams{
		Body:      bodyClaim,
		Namespace: integration.Namespace,
	}
	errClaim := sessionService.ClaimServer(inputClaim)

	assert.Nil(t, errClaim, "err should be nil")
}

// Getting a session
func TestIntegrationGetSession(t *testing.T) {
	input := &session.CreateSessionParams{
		Body:      bodySession,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionService.CreateSession(input)
	assert.Nil(t, err, "err should be nil")

	sessionIdResp := *ok.Session.ID
	inputExpected := &session.GetSessionParams{
		Namespace: integration.Namespace,
		SessionID: sessionIdResp,
	}
	expected, err := sessionService.GetSession(inputExpected)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
	assert.NotNil(t, expected, "response should not be nil")
}
