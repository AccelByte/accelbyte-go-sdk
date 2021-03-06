// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/strfmt"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gametelemetry"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	gameTelemetryOperationsService = &gametelemetry.GametelemetryOperationsService{
		Client:          factory.NewGametelemetryClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	telemetryBodyArray []*gametelemetryclientmodels.TelemetryBody
	telemetryBody      = &gametelemetryclientmodels.TelemetryBody{
		EventID:        eventID,
		EventName:      &eventName,
		EventNamespace: &eventNamespace,
		EventTimestamp: &eventTimestamp,
		Payload:        map[string]interface{}{"foo": "bar"},
	}
	eventID        = "gosdk"
	eventName      = "gosdkevent"
	eventNamespace = "test"
	eventTimestamp = strfmt.DateTime{}
)

// Protected Save Events
func TestIntegrationProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(t *testing.T) {
	Init()

	telemetryBodyArray = append(telemetryBodyArray, telemetryBody)
	input := &gametelemetry_operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{
		Body: telemetryBodyArray,
	}
	err := gameTelemetryOperationsService.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}

// Protected Get Playtime
func TestIntegrationProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet(t *testing.T) {
	Init()

	input := &gametelemetry_operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams{
		SteamID: "76561199259217491",
	}

	ok, err := gameTelemetryOperationsService.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Protected Get Playtime with retry
func TestIntegrationProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet_WithRetry(t *testing.T) {
	Init()

	input := &gametelemetry_operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams{
		SteamID: "765611992592174912",
	}
	input.RetryPolicy = &utils.Retry{
		Transport: gameTelemetryOperationsService.Client.Runtime.Transport,
		MaxTries:  utils.MaxTries,
		Backoff:   utils.NewConstantBackoff(0),
		RetryCodes: map[int]bool{
			422: true,
		},
	}

	_, err := gameTelemetryOperationsService.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input)
	if err != nil {
		assert.NotNil(t, err, "err should not be nil")
	}
}

// Protected Update Playtime
func TestIntegrationProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePut(t *testing.T) {
	Init()

	input := &gametelemetry_operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams{
		Playtime: "4",
		SteamID:  "76561199259217491",
	}
	err := gameTelemetryOperationsService.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input)
	if err != nil {
		assert.Contains(t, err.Error(), "returns an error 404")

		t.Skip("User was not found.")
	}

	assert.Nil(t, err, "err should be nil")
}
