// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
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
)

// Creating a session
func TestIntegrationCreateSession(t *testing.T) {
	inputSession := &session.CreateSessionParams{
		Body:      nil,
		Namespace: "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionService.CreateSession(inputSession)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Deleting a session
func TestIntegrationDeleteSession(t *testing.T) {
	inputSession := &session.DeleteSessionParams{
		Namespace: "",
		SessionID: "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionService.DeleteSession(inputSession)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Getting a session
func TestIntegrationGetSession(t *testing.T) {
	inputMatchmaking := &session.GetSessionParams{
		Namespace: "",
		SessionID: "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionService.GetSession(inputMatchmaking)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating a session
func TestIntegrationUpdateSession(t *testing.T) {
	bodySessionUpdate := &sessionbrowserclientmodels.ModelsUpdateSessionRequest{
		GameCurrentPlayer: nil,
		GameMaxPlayer:     nil,
	}
	inputMatchmaking := &session.UpdateSessionParams{
		Body:      bodySessionUpdate,
		Namespace: "",
		SessionID: "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := sessionService.UpdateSession(inputMatchmaking)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
