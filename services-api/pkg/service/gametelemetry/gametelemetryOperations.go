// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gametelemetry

import (
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient"
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type GametelemetryOperationsService struct {
	Client          *gametelemetryclient.JusticeGametelemetryService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetEventsGameTelemetryV1AdminEventsGetShort instead
func (g *GametelemetryOperationsService) AdminGetEventsGameTelemetryV1AdminEventsGet(input *gametelemetry_operations.AdminGetEventsGameTelemetryV1AdminEventsGetParams) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unprocessableEntity, err := g.Client.GametelemetryOperations.AdminGetEventsGameTelemetryV1AdminEventsGet(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetShort instead
func (g *GametelemetryOperationsService) AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet(input *gametelemetry_operations.AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetParams) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = g.Client.GametelemetryOperations.AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort instead
func (g *GametelemetryOperationsService) ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(input *gametelemetry_operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unprocessableEntity, err := g.Client.GametelemetryOperations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort instead
func (g *GametelemetryOperationsService) ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet(input *gametelemetry_operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams) (interface{}, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := g.Client.GametelemetryOperations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort instead
func (g *GametelemetryOperationsService) ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePut(input *gametelemetry_operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unprocessableEntity, err := g.Client.GametelemetryOperations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePut(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}

	return nil
}

func (g *GametelemetryOperationsService) AdminGetEventsGameTelemetryV1AdminEventsGetShort(input *gametelemetry_operations.AdminGetEventsGameTelemetryV1AdminEventsGetParams) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = g.Client.GametelemetryOperations.AdminGetEventsGameTelemetryV1AdminEventsGetShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (g *GametelemetryOperationsService) AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetShort(input *gametelemetry_operations.AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetParams) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = g.Client.GametelemetryOperations.AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (g *GametelemetryOperationsService) ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input *gametelemetry_operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = g.Client.GametelemetryOperations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (g *GametelemetryOperationsService) ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input *gametelemetry_operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams) (interface{}, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GametelemetryOperations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (g *GametelemetryOperationsService) ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input *gametelemetry_operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = g.Client.GametelemetryOperations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}
