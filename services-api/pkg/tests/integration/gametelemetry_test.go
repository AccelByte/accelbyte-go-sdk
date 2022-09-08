// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/strfmt"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gametelemetry"
)

var (
	gameTelemetryOperationsService = &gametelemetry.GametelemetryOperationsService{
		Client:          factory.NewGametelemetryClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: auth.DefaultTokenRepositoryImpl(),
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
	steamId        = "76561199259217491"
)

func TestIntegrationProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Protected Save Events
	telemetryBodyArray = append(telemetryBodyArray, telemetryBody)
	input := &gametelemetry_operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{
		Body: telemetryBodyArray,
	}

	err := gameTelemetryOperationsService.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Protected Get Playtime
	input := &gametelemetry_operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams{
		SteamID: steamId,
	}

	ok, err := gameTelemetryOperationsService.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet_WithRetry(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Protected Get Playtime with retry
	input := &gametelemetry_operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams{
		SteamID: "falseSteamId",
	}
	input.RetryPolicy = &utils.Retry{
		Transport: gameTelemetryOperationsService.Client.Runtime.Transport,
		MaxTries:  utils.MaxTries,
		Backoff:   utils.NewConstantBackoff(0),
		RetryCodes: map[int]bool{
			422: true, // fail on purpose
		},
	}

	get, err := gameTelemetryOperationsService.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input)
	if err != nil {
		assert.NotNil(t, err.Error(), "fail on purpose")
	}
	// ESAC

	// Assert
	assert.Nil(t, get, "get should be nil on purpose")
}

func TestIntegrationProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePut(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Protected Update Playtime
	input := &gametelemetry_operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams{
		Playtime: "4",
		SteamID:  steamId,
	}

	err := gameTelemetryOperationsService.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input)
	if err != nil {
		assert.Contains(t, err.Error(), "returns an error 404")

		t.Skip("User was not found.")
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}
