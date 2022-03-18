// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"fmt"
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

var (
	sessionService = &sessionbrowser.SessionService{
		Client:          factory.NewSessionbrowserClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	namespaceSession   = integration.Namespace
	sessionType        = "p2p" // "dedicated server can not be updated"
	mode               = "mode"
	mapName            = "mapName"
	emptyInt32         = int32(0)
	defaultInt32       = int32(1)
	defaultBool        = false
	sessionBrowserId   = "0a486209-6c30-42d5-9fe0-edc67495c723"
	gameSessionSetting = &sessionbrowserclientmodels.ModelsGameSessionSetting{
		AllowJoinInProgress:   &defaultBool,
		CurrentInternalPlayer: &emptyInt32,
		CurrentPlayer:         &emptyInt32,
		MapName:               &mapName,
		MaxInternalPlayer:     &emptyInt32,
		MaxPlayer:             &emptyInt32,
		Mode:                  &mode,
		NumBot:                &emptyInt32,
		Password:              &emptyString,
		Settings:              &emptyInterface,
	}
	bodySession = &sessionbrowserclientmodels.ModelsCreateSessionRequest{
		GameSessionSetting: gameSessionSetting,
		GameVersion:        &emptyString,
		Namespace:          &namespaceSession,
		SessionType:        &sessionType,
		Username:           &emptyString,
	}
)

// Creating a session
func TestIntegrationCreateSession(t *testing.T) {
	inputSession := &session.CreateSessionParams{
		Body:      bodySession,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionService.CreateSession(inputSession)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
	fmt.Printf("sessionId: %v", *ok.SessionID)
}

// Deleting a session
func TestIntegrationDeleteSession(t *testing.T) {
	inputSession := &session.DeleteSessionParams{
		Namespace: integration.Namespace,
		SessionID: sessionBrowserId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionService.DeleteSession(inputSession)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Getting a session
func TestIntegrationGetSession(t *testing.T) {
	inputMatchmaking := &session.GetSessionParams{
		Namespace: integration.Namespace,
		SessionID: sessionBrowserId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionService.GetSession(inputMatchmaking)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating a session
func TestIntegrationUpdateSession(t *testing.T) {
	bodySessionUpdate := &sessionbrowserclientmodels.ModelsUpdateSessionRequest{
		GameCurrentPlayer: &defaultInt32,
		GameMaxPlayer:     &defaultInt32,
	}
	inputMatchmaking := &session.UpdateSessionParams{
		Body:      bodySessionUpdate,
		Namespace: integration.Namespace,
		SessionID: sessionBrowserId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionService.UpdateSession(inputMatchmaking)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
