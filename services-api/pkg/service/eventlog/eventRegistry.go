// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eventlog

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_registry"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type EventRegistryService struct {
	Client          *eventlogclient.JusticeEventlogService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetRegisteredEventsHandlerShort instead
func (e *EventRegistryService) GetRegisteredEventsHandler(input *event_registry.GetRegisteredEventsHandlerParams) (*eventlogclientmodels.ModelsEventRegistry, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := e.Client.EventRegistry.GetRegisteredEventsHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use RegisterEventHandlerShort instead
func (e *EventRegistryService) RegisterEventHandler(input *event_registry.RegisterEventHandlerParams) error {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, conflict, internalServerError, err := e.Client.EventRegistry.RegisterEventHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetRegisteredEventIDHandlerShort instead
func (e *EventRegistryService) GetRegisteredEventIDHandler(input *event_registry.GetRegisteredEventIDHandlerParams) (*eventlogclientmodels.ModelsEventRegistry, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.EventRegistry.GetRegisteredEventIDHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateEventRegistryHandlerShort instead
func (e *EventRegistryService) UpdateEventRegistryHandler(input *event_registry.UpdateEventRegistryHandlerParams) error {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.EventRegistry.UpdateEventRegistryHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UnregisterEventIDHandlerShort instead
func (e *EventRegistryService) UnregisterEventIDHandler(input *event_registry.UnregisterEventIDHandlerParams) error {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := e.Client.EventRegistry.UnregisterEventIDHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetRegisteredEventsByEventTypeHandlerShort instead
func (e *EventRegistryService) GetRegisteredEventsByEventTypeHandler(input *event_registry.GetRegisteredEventsByEventTypeHandlerParams) (*eventlogclientmodels.ModelsEventRegistry, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.EventRegistry.GetRegisteredEventsByEventTypeHandler(input, client.BearerToken(*token.AccessToken))
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

func (e *EventRegistryService) GetRegisteredEventsHandlerShort(input *event_registry.GetRegisteredEventsHandlerParams) (*eventlogclientmodels.ModelsEventRegistry, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventRegistry.GetRegisteredEventsHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EventRegistryService) RegisterEventHandlerShort(input *event_registry.RegisterEventHandlerParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := e.Client.EventRegistry.RegisterEventHandlerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (e *EventRegistryService) GetRegisteredEventIDHandlerShort(input *event_registry.GetRegisteredEventIDHandlerParams) (*eventlogclientmodels.ModelsEventRegistry, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventRegistry.GetRegisteredEventIDHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EventRegistryService) UpdateEventRegistryHandlerShort(input *event_registry.UpdateEventRegistryHandlerParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := e.Client.EventRegistry.UpdateEventRegistryHandlerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (e *EventRegistryService) UnregisterEventIDHandlerShort(input *event_registry.UnregisterEventIDHandlerParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := e.Client.EventRegistry.UnregisterEventIDHandlerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (e *EventRegistryService) GetRegisteredEventsByEventTypeHandlerShort(input *event_registry.GetRegisteredEventsByEventTypeHandlerParams) (*eventlogclientmodels.ModelsEventRegistry, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventRegistry.GetRegisteredEventsByEventTypeHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
