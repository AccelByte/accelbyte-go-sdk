// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gametelemetry

import (
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient"
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type OperationsService struct {
	Client          *gametelemetryclient.JusticeGametelemetryService
	TokenRepository repository.TokenRepository
}

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

func (o *OperationsService) ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input *operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.Operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (o *OperationsService) ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input *operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams, authInfo runtime.ClientAuthInfoWriter) (int64, error) {
	ok, err := o.Client.Operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input, authInfo)
	if err != nil {
		return 0, err
	}
	return ok.GetPayload(), nil
}

func (o *OperationsService) ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input *operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.Operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}
