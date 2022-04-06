// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gametelemetry

import (
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient"
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type OperationsService struct {
	Client          *gametelemetryclient.JusticeGametelemetryService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetEventsGameTelemetryV1AdminEventsGetShort instead
func (o *OperationsService) AdminGetEventsGameTelemetryV1AdminEventsGet(input *operations.AdminGetEventsGameTelemetryV1AdminEventsGetParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unprocessableEntity, err := o.Client.Operations.AdminGetEventsGameTelemetryV1AdminEventsGet(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetShort instead
func (o *OperationsService) AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet(input *operations.AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.Operations.AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (o *OperationsService) AdminGetEventsGameTelemetryV1AdminEventsGetShort(input *operations.AdminGetEventsGameTelemetryV1AdminEventsGetParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.Operations.AdminGetEventsGameTelemetryV1AdminEventsGetShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (o *OperationsService) AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetShort(input *operations.AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.Operations.AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}
