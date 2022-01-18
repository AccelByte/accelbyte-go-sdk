// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventlog

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_descriptions"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type EventDescriptionsService struct {
	Client          *eventlogclient.JusticeEventlogService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AgentTypeDescriptionHandlerShort instead
func (e *EventDescriptionsService) AgentTypeDescriptionHandler(input *event_descriptions.AgentTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.EventDescriptions.AgentTypeDescriptionHandler(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use SpecificAgentTypeDescriptionHandlerShort instead
func (e *EventDescriptionsService) SpecificAgentTypeDescriptionHandler(input *event_descriptions.SpecificAgentTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := e.Client.EventDescriptions.SpecificAgentTypeDescriptionHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use EventIDDescriptionHandlerShort instead
func (e *EventDescriptionsService) EventIDDescriptionHandler(input *event_descriptions.EventIDDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventID, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.EventDescriptions.EventIDDescriptionHandler(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use SpecificEventIDDescriptionHandlerShort instead
func (e *EventDescriptionsService) SpecificEventIDDescriptionHandler(input *event_descriptions.SpecificEventIDDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventID, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := e.Client.EventDescriptions.SpecificEventIDDescriptionHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use EventLevelDescriptionHandlerShort instead
func (e *EventDescriptionsService) EventLevelDescriptionHandler(input *event_descriptions.EventLevelDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventLevel, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.EventDescriptions.EventLevelDescriptionHandler(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use SpecificEventLevelDescriptionHandlerShort instead
func (e *EventDescriptionsService) SpecificEventLevelDescriptionHandler(input *event_descriptions.SpecificEventLevelDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventLevel, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := e.Client.EventDescriptions.SpecificEventLevelDescriptionHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use EventTypeDescriptionHandlerShort instead
func (e *EventDescriptionsService) EventTypeDescriptionHandler(input *event_descriptions.EventTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventType, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.EventDescriptions.EventTypeDescriptionHandler(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use SpecificEventTypeDescriptionHandlerShort instead
func (e *EventDescriptionsService) SpecificEventTypeDescriptionHandler(input *event_descriptions.SpecificEventTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventType, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := e.Client.EventDescriptions.SpecificEventTypeDescriptionHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UXNameDescriptionHandlerShort instead
func (e *EventDescriptionsService) UXNameDescriptionHandler(input *event_descriptions.UXNameDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleUX, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.EventDescriptions.UXNameDescriptionHandler(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use SpecificUXDescriptionHandlerShort instead
func (e *EventDescriptionsService) SpecificUXDescriptionHandler(input *event_descriptions.SpecificUXDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleUX, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := e.Client.EventDescriptions.SpecificUXDescriptionHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) AgentTypeDescriptionHandlerShort(input *event_descriptions.AgentTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	ok, err := e.Client.EventDescriptions.AgentTypeDescriptionHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) SpecificAgentTypeDescriptionHandlerShort(input *event_descriptions.SpecificAgentTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	ok, err := e.Client.EventDescriptions.SpecificAgentTypeDescriptionHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) EventIDDescriptionHandlerShort(input *event_descriptions.EventIDDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsMultipleEventID, error) {
	ok, err := e.Client.EventDescriptions.EventIDDescriptionHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) SpecificEventIDDescriptionHandlerShort(input *event_descriptions.SpecificEventIDDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsMultipleEventID, error) {
	ok, err := e.Client.EventDescriptions.SpecificEventIDDescriptionHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) EventLevelDescriptionHandlerShort(input *event_descriptions.EventLevelDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsMultipleEventLevel, error) {
	ok, err := e.Client.EventDescriptions.EventLevelDescriptionHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) SpecificEventLevelDescriptionHandlerShort(input *event_descriptions.SpecificEventLevelDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsMultipleEventLevel, error) {
	ok, err := e.Client.EventDescriptions.SpecificEventLevelDescriptionHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) EventTypeDescriptionHandlerShort(input *event_descriptions.EventTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsMultipleEventType, error) {
	ok, err := e.Client.EventDescriptions.EventTypeDescriptionHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) SpecificEventTypeDescriptionHandlerShort(input *event_descriptions.SpecificEventTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsMultipleEventType, error) {
	ok, err := e.Client.EventDescriptions.SpecificEventTypeDescriptionHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) UXNameDescriptionHandlerShort(input *event_descriptions.UXNameDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsMultipleUX, error) {
	ok, err := e.Client.EventDescriptions.UXNameDescriptionHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) SpecificUXDescriptionHandlerShort(input *event_descriptions.SpecificUXDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*eventlogclientmodels.ModelsMultipleUX, error) {
	ok, err := e.Client.EventDescriptions.SpecificUXDescriptionHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
