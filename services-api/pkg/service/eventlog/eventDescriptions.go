// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eventlog

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_descriptions"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type EventDescriptionsService struct {
	Client                 *eventlogclient.JusticeEventlogService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (e *EventDescriptionsService) GetAuthSession() auth.Session {
	if e.RefreshTokenRepository != nil {
		return auth.Session{
			e.TokenRepository,
			e.ConfigRepository,
			e.RefreshTokenRepository,
		}
	}

	return auth.Session{
		e.TokenRepository,
		e.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use AgentTypeDescriptionHandlerShort instead
func (e *EventDescriptionsService) AgentTypeDescriptionHandler(input *event_descriptions.AgentTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.EventDescriptions.AgentTypeDescriptionHandler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use SpecificAgentTypeDescriptionHandlerShort instead
func (e *EventDescriptionsService) SpecificAgentTypeDescriptionHandler(input *event_descriptions.SpecificAgentTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := e.Client.EventDescriptions.SpecificAgentTypeDescriptionHandler(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.EventDescriptions.EventIDDescriptionHandler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use SpecificEventIDDescriptionHandlerShort instead
func (e *EventDescriptionsService) SpecificEventIDDescriptionHandler(input *event_descriptions.SpecificEventIDDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventID, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := e.Client.EventDescriptions.SpecificEventIDDescriptionHandler(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.EventDescriptions.EventLevelDescriptionHandler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use SpecificEventLevelDescriptionHandlerShort instead
func (e *EventDescriptionsService) SpecificEventLevelDescriptionHandler(input *event_descriptions.SpecificEventLevelDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventLevel, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := e.Client.EventDescriptions.SpecificEventLevelDescriptionHandler(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.EventDescriptions.EventTypeDescriptionHandler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use SpecificEventTypeDescriptionHandlerShort instead
func (e *EventDescriptionsService) SpecificEventTypeDescriptionHandler(input *event_descriptions.SpecificEventTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventType, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := e.Client.EventDescriptions.SpecificEventTypeDescriptionHandler(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.EventDescriptions.UXNameDescriptionHandler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use SpecificUXDescriptionHandlerShort instead
func (e *EventDescriptionsService) SpecificUXDescriptionHandler(input *event_descriptions.SpecificUXDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleUX, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := e.Client.EventDescriptions.SpecificUXDescriptionHandler(input, client.BearerToken(*token.AccessToken))
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

func (e *EventDescriptionsService) AgentTypeDescriptionHandlerShort(input *event_descriptions.AgentTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventDescriptions.AgentTypeDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) SpecificAgentTypeDescriptionHandlerShort(input *event_descriptions.SpecificAgentTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventDescriptions.SpecificAgentTypeDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) EventIDDescriptionHandlerShort(input *event_descriptions.EventIDDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventID, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventDescriptions.EventIDDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) SpecificEventIDDescriptionHandlerShort(input *event_descriptions.SpecificEventIDDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventID, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventDescriptions.SpecificEventIDDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) EventLevelDescriptionHandlerShort(input *event_descriptions.EventLevelDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventLevel, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventDescriptions.EventLevelDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) SpecificEventLevelDescriptionHandlerShort(input *event_descriptions.SpecificEventLevelDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventLevel, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventDescriptions.SpecificEventLevelDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) EventTypeDescriptionHandlerShort(input *event_descriptions.EventTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventType, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventDescriptions.EventTypeDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) SpecificEventTypeDescriptionHandlerShort(input *event_descriptions.SpecificEventTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventType, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventDescriptions.SpecificEventTypeDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) UXNameDescriptionHandlerShort(input *event_descriptions.UXNameDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleUX, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventDescriptions.UXNameDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EventDescriptionsService) SpecificUXDescriptionHandlerShort(input *event_descriptions.SpecificUXDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleUX, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EventDescriptions.SpecificUXDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
