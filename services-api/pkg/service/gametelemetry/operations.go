// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gametelemetry

import (
	"github.com/go-openapi/runtime/client"

	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient"
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type OperationsService struct {
	Client          *gametelemetryclient.JusticeGametelemetryService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort instead
func (o *OperationsService) ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(input *operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unprocessableEntity, err := o.Client.Operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort instead
func (o *OperationsService) ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet(input *operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams) (int64, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return 0, err
	}
	ok, unprocessableEntity, err := o.Client.Operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return 0, unprocessableEntity
	}
	if err != nil {
		return 0, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort instead
func (o *OperationsService) ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePut(input *operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unprocessableEntity, err := o.Client.Operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePut(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}
	return nil
}

func (o *OperationsService) ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input *operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.Operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (o *OperationsService) ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input *operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams) (int64, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return 0, err
	}
	ok, err := o.Client.Operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return 0, err
	}
	return ok.GetPayload(), nil
}

func (o *OperationsService) ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input *operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.Operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}
