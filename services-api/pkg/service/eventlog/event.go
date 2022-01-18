// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventlog

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type EventService struct {
	Client          *eventlogclient.JusticeEventlogService
	TokenRepository repository.TokenRepository
}

func (e *EventService) GetEventByNamespaceHandler(input *event.GetEventByNamespaceHandlerParams) (*eventlogclientmodels.ModelsEventResponse, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.Event.GetEventByNamespaceHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EventService) PostEventHandler(input *event.PostEventHandlerParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := e.Client.Event.PostEventHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (e *EventService) GetEventByEventIDHandler(input *event.GetEventByEventIDHandlerParams) (*eventlogclientmodels.ModelsEventResponse, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.Event.GetEventByEventIDHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EventService) GetEventByEventTypeHandler(input *event.GetEventByEventTypeHandlerParams) (*eventlogclientmodels.ModelsEventResponse, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.Event.GetEventByEventTypeHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EventService) GetEventByEventTypeAndEventIDHandler(input *event.GetEventByEventTypeAndEventIDHandlerParams) (*eventlogclientmodels.ModelsEventResponse, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.Event.GetEventByEventTypeAndEventIDHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EventService) GetEventByUserIDHandler(input *event.GetEventByUserIDHandlerParams) (*eventlogclientmodels.ModelsEventResponse, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.Event.GetEventByUserIDHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EventService) GetEventByUserIDAndEventIDHandler(input *event.GetEventByUserIDAndEventIDHandlerParams) (*eventlogclientmodels.ModelsEventResponse, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.Event.GetEventByUserIDAndEventIDHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EventService) GetEventByUserIDAndEventTypeHandler(input *event.GetEventByUserIDAndEventTypeHandlerParams) (*eventlogclientmodels.ModelsEventResponse, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.Event.GetEventByUserIDAndEventTypeHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EventService) GetEventByUserEventIDAndEventTypeHandler(input *event.GetEventByUserEventIDAndEventTypeHandlerParams) (*eventlogclientmodels.ModelsEventResponse, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := e.Client.Event.GetEventByUserEventIDAndEventTypeHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EventService) GetEventByNamespaceHandlerShort(input *event.GetEventByNamespaceHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponse, error) {
	ok, err := e.Client.Event.GetEventByNamespaceHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventService) PostEventHandlerShort(input *event.PostEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := e.Client.Event.PostEventHandlerShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (e *EventService) GetEventByEventIDHandlerShort(input *event.GetEventByEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponse, error) {
	ok, err := e.Client.Event.GetEventByEventIDHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventService) GetEventByEventTypeHandlerShort(input *event.GetEventByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponse, error) {
	ok, err := e.Client.Event.GetEventByEventTypeHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventService) GetEventByEventTypeAndEventIDHandlerShort(input *event.GetEventByEventTypeAndEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponse, error) {
	ok, err := e.Client.Event.GetEventByEventTypeAndEventIDHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventService) GetEventByUserIDHandlerShort(input *event.GetEventByUserIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponse, error) {
	ok, err := e.Client.Event.GetEventByUserIDHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventService) GetEventByUserIDAndEventIDHandlerShort(input *event.GetEventByUserIDAndEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponse, error) {
	ok, err := e.Client.Event.GetEventByUserIDAndEventIDHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventService) GetEventByUserIDAndEventTypeHandlerShort(input *event.GetEventByUserIDAndEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponse, error) {
	ok, err := e.Client.Event.GetEventByUserIDAndEventTypeHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventService) GetEventByUserEventIDAndEventTypeHandlerShort(input *event.GetEventByUserEventIDAndEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponse, error) {
	ok, err := e.Client.Event.GetEventByUserEventIDAndEventTypeHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
