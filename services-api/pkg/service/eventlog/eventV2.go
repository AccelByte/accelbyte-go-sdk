// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eventlog

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type EventV2Service struct {
	Client          *eventlogclient.JusticeEventlogService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryEventStreamHandlerShort instead
func (e *EventV2Service) QueryEventStreamHandler(input *event_v2.QueryEventStreamHandlerParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.QueryEventStreamHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetEventSpecificUserV2HandlerShort instead
func (e *EventV2Service) GetEventSpecificUserV2Handler(input *event_v2.GetEventSpecificUserV2HandlerParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.GetEventSpecificUserV2Handler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetPublicEditHistoryShort instead
func (e *EventV2Service) GetPublicEditHistory(input *event_v2.GetPublicEditHistoryParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.GetPublicEditHistory(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetUserEventsV2PublicShort instead
func (e *EventV2Service) GetUserEventsV2Public(input *event_v2.GetUserEventsV2PublicParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.GetUserEventsV2Public(input, client.BearerToken(*token.AccessToken))
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

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:EVENT [READ]'], 'authorization': []}]
func (e *EventV2Service) QueryEventStreamHandlerShort(input *event_v2.QueryEventStreamHandlerParams, authInfoWriter runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.EventV2.QueryEventStreamHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:EVENT [READ]'], 'HasScope': ['analytics'], 'authorization': []}]
func (e *EventV2Service) GetEventSpecificUserV2HandlerShort(input *event_v2.GetEventSpecificUserV2HandlerParams, authInfoWriter runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.EventV2.GetEventSpecificUserV2HandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (e *EventV2Service) GetPublicEditHistoryShort(input *event_v2.GetPublicEditHistoryParams, authInfoWriter runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.EventV2.GetPublicEditHistoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (e *EventV2Service) GetUserEventsV2PublicShort(input *event_v2.GetUserEventsV2PublicParams, authInfoWriter runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.EventV2.GetUserEventsV2PublicShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
