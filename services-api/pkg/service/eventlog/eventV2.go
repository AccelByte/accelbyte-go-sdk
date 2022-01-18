// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventlog

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type EventV2Service struct {
	Client          *eventlogclient.JusticeEventlogService
	TokenRepository repository.TokenRepository
}

func (e *EventV2Service) QueryEventStreamHandler(input *event_v2.QueryEventStreamHandlerParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.QueryEventStreamHandler(input, client.BearerToken(*accessToken.AccessToken))
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
	if notImplemented != nil {
		return nil, notImplemented
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventV2Service) GetEventSpecificUserV2Handler(input *event_v2.GetEventSpecificUserV2HandlerParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.GetEventSpecificUserV2Handler(input, client.BearerToken(*accessToken.AccessToken))
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
	if notImplemented != nil {
		return nil, notImplemented
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventV2Service) GetPublicEditHistory(input *event_v2.GetPublicEditHistoryParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.GetPublicEditHistory(input, client.BearerToken(*accessToken.AccessToken))
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
	if notImplemented != nil {
		return nil, notImplemented
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventV2Service) GetUserEventsV2Public(input *event_v2.GetUserEventsV2PublicParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.GetUserEventsV2Public(input, client.BearerToken(*accessToken.AccessToken))
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
	if notImplemented != nil {
		return nil, notImplemented
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventV2Service) QueryEventStreamHandlerShort(input *event_v2.QueryEventStreamHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	ok, err := e.Client.EventV2.QueryEventStreamHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventV2Service) GetEventSpecificUserV2HandlerShort(input *event_v2.GetEventSpecificUserV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	ok, err := e.Client.EventV2.GetEventSpecificUserV2HandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventV2Service) GetPublicEditHistoryShort(input *event_v2.GetPublicEditHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	ok, err := e.Client.EventV2.GetPublicEditHistoryShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventV2Service) GetUserEventsV2PublicShort(input *event_v2.GetUserEventsV2PublicParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	ok, err := e.Client.EventV2.GetUserEventsV2PublicShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
