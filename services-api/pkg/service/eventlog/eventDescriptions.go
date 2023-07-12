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
	Client           *eventlogclient.JusticeEventlogService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *EventDescriptionsService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use AgentTypeDescriptionHandlerShort instead.
func (aaa *EventDescriptionsService) AgentTypeDescriptionHandler(input *event_descriptions.AgentTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.EventDescriptions.AgentTypeDescriptionHandler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use SpecificAgentTypeDescriptionHandlerShort instead.
func (aaa *EventDescriptionsService) SpecificAgentTypeDescriptionHandler(input *event_descriptions.SpecificAgentTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.EventDescriptions.SpecificAgentTypeDescriptionHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use EventIDDescriptionHandlerShort instead.
func (aaa *EventDescriptionsService) EventIDDescriptionHandler(input *event_descriptions.EventIDDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventID, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.EventDescriptions.EventIDDescriptionHandler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use SpecificEventIDDescriptionHandlerShort instead.
func (aaa *EventDescriptionsService) SpecificEventIDDescriptionHandler(input *event_descriptions.SpecificEventIDDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventID, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.EventDescriptions.SpecificEventIDDescriptionHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use EventLevelDescriptionHandlerShort instead.
func (aaa *EventDescriptionsService) EventLevelDescriptionHandler(input *event_descriptions.EventLevelDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventLevel, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.EventDescriptions.EventLevelDescriptionHandler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use SpecificEventLevelDescriptionHandlerShort instead.
func (aaa *EventDescriptionsService) SpecificEventLevelDescriptionHandler(input *event_descriptions.SpecificEventLevelDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventLevel, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.EventDescriptions.SpecificEventLevelDescriptionHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use EventTypeDescriptionHandlerShort instead.
func (aaa *EventDescriptionsService) EventTypeDescriptionHandler(input *event_descriptions.EventTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventType, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.EventDescriptions.EventTypeDescriptionHandler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use SpecificEventTypeDescriptionHandlerShort instead.
func (aaa *EventDescriptionsService) SpecificEventTypeDescriptionHandler(input *event_descriptions.SpecificEventTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventType, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.EventDescriptions.SpecificEventTypeDescriptionHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use UXNameDescriptionHandlerShort instead.
func (aaa *EventDescriptionsService) UXNameDescriptionHandler(input *event_descriptions.UXNameDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleUX, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.EventDescriptions.UXNameDescriptionHandler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use SpecificUXDescriptionHandlerShort instead.
func (aaa *EventDescriptionsService) SpecificUXDescriptionHandler(input *event_descriptions.SpecificUXDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleUX, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.EventDescriptions.SpecificUXDescriptionHandler(input, client.BearerToken(*token.AccessToken))
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

func (aaa *EventDescriptionsService) AgentTypeDescriptionHandlerShort(input *event_descriptions.AgentTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.EventDescriptions.AgentTypeDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EventDescriptionsService) SpecificAgentTypeDescriptionHandlerShort(input *event_descriptions.SpecificAgentTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleAgentType, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.EventDescriptions.SpecificAgentTypeDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EventDescriptionsService) EventIDDescriptionHandlerShort(input *event_descriptions.EventIDDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventID, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.EventDescriptions.EventIDDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EventDescriptionsService) SpecificEventIDDescriptionHandlerShort(input *event_descriptions.SpecificEventIDDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventID, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.EventDescriptions.SpecificEventIDDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EventDescriptionsService) EventLevelDescriptionHandlerShort(input *event_descriptions.EventLevelDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventLevel, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.EventDescriptions.EventLevelDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EventDescriptionsService) SpecificEventLevelDescriptionHandlerShort(input *event_descriptions.SpecificEventLevelDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventLevel, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.EventDescriptions.SpecificEventLevelDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EventDescriptionsService) EventTypeDescriptionHandlerShort(input *event_descriptions.EventTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventType, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.EventDescriptions.EventTypeDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EventDescriptionsService) SpecificEventTypeDescriptionHandlerShort(input *event_descriptions.SpecificEventTypeDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleEventType, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.EventDescriptions.SpecificEventTypeDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EventDescriptionsService) UXNameDescriptionHandlerShort(input *event_descriptions.UXNameDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleUX, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.EventDescriptions.UXNameDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EventDescriptionsService) SpecificUXDescriptionHandlerShort(input *event_descriptions.SpecificUXDescriptionHandlerParams) (*eventlogclientmodels.ModelsMultipleUX, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.EventDescriptions.SpecificUXDescriptionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
