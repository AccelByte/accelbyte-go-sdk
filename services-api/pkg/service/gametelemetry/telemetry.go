// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gametelemetry

import (
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient"
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/telemetry"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/constant"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type TelemetryService struct {
	Client                 *gametelemetryclient.JusticeGametelemetryService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *TelemetryService) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: 2022-01-10 - please use GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort instead.
func (aaa *TelemetryService) GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet(input *telemetry.GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unprocessableEntity, err := aaa.Client.Telemetry.GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}

	return nil
}

func (aaa *TelemetryService) GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort(input *telemetry.GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
			{"cookie"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, constant.AccessToken)
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Telemetry.GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
