// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/go-openapi/strfmt"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gametelemetry"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	operationsService = &gametelemetry.OperationsService{
		Client:          factory.NewGametelemetryClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	telemetryBodyArray []*gametelemetryclientmodels.TelemetryBody
	telemetryBody      = &gametelemetryclientmodels.TelemetryBody{
		EventID:        eventId,
		EventName:      &eventName,
		EventNamespace: &eventNamespace,
		EventTimestamp: &eventTimestamp,
		Payload:        map[string]interface{}{"foo": "bar"},
	}
	eventId        = "gosdk"
	eventName      = "gosdkevent"
	eventNamespace = "test"
	eventTimestamp = strfmt.DateTime{}
)

// Protected Save Events
func TestIntegrationProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(t *testing.T) {
	Init()

	telemetryBodyArray = append(telemetryBodyArray, telemetryBody)
	input := &operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{
		Body: telemetryBodyArray,
	}
	err := operationsService.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}

// Protected Update Playtime
func TestIntegrationProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePut(t *testing.T) {
	Init()

	input := &operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams{
		Playtime: "4",
		SteamID:  "76561199259217491",
	}
	err := operationsService.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}
