// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventlog

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_registry"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type EventRegistryService struct {
	Client          *eventlogclient.JusticeEventlogService
	TokenRepository repository.TokenRepository
}

func (e *EventRegistryService) GetRegisteredEventsHandler(input *event_registry.GetRegisteredEventsHandlerParams) (*eventlogclientmodels.ModelsEventRegistry, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := e.Client.EventRegistry.GetRegisteredEventsHandler(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventRegistryService) RegisterEventHandler(input *event_registry.RegisterEventHandlerParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, conflict, internalServerError, err := e.Client.EventRegistry.RegisterEventHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (e *EventRegistryService) GetRegisteredEventIDHandler(input *event_registry.GetRegisteredEventIDHandlerParams) (*eventlogclientmodels.ModelsEventRegistry, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.EventRegistry.GetRegisteredEventIDHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventRegistryService) UpdateEventRegistryHandler(input *event_registry.UpdateEventRegistryHandlerParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.EventRegistry.UpdateEventRegistryHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (e *EventRegistryService) UnregisterEventIDHandler(input *event_registry.UnregisterEventIDHandlerParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := e.Client.EventRegistry.UnregisterEventIDHandler(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (e *EventRegistryService) GetRegisteredEventsByEventTypeHandler(input *event_registry.GetRegisteredEventsByEventTypeHandlerParams) (*eventlogclientmodels.ModelsEventRegistry, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.EventRegistry.GetRegisteredEventsByEventTypeHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventRegistryService) GetRegisteredEventsHandlerShort(input *event_registry.GetRegisteredEventsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventRegistry, error) {
	ok, err := e.Client.EventRegistry.GetRegisteredEventsHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventRegistryService) RegisterEventHandlerShort(input *event_registry.RegisterEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := e.Client.EventRegistry.RegisterEventHandlerShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (e *EventRegistryService) GetRegisteredEventIDHandlerShort(input *event_registry.GetRegisteredEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventRegistry, error) {
	ok, err := e.Client.EventRegistry.GetRegisteredEventIDHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventRegistryService) UpdateEventRegistryHandlerShort(input *event_registry.UpdateEventRegistryHandlerParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := e.Client.EventRegistry.UpdateEventRegistryHandlerShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (e *EventRegistryService) UnregisterEventIDHandlerShort(input *event_registry.UnregisterEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := e.Client.EventRegistry.UnregisterEventIDHandlerShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (e *EventRegistryService) GetRegisteredEventsByEventTypeHandlerShort(input *event_registry.GetRegisteredEventsByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventRegistry, error) {
	ok, err := e.Client.EventRegistry.GetRegisteredEventsByEventTypeHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
