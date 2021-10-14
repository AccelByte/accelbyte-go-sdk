package eventlog

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type EventV2Service struct {
	Client          *eventlogclient.JusticeEventlogService
	TokenRepository repository.TokenRepository
}

func (e *EventV2Service) GetEventSpecificUserV2Handler(input *event_v2.GetEventSpecificUserV2HandlerParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.GetEventSpecificUserV2Handler(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		logrus.Error("Bad Request")
		return nil, badRequest
	}
	if unauthorized != nil {
		logrus.Error("Unauthorized")
		return nil, unauthorized
	}
	if forbidden != nil {
		logrus.Error("Forbidden")
		return nil, forbidden
	}
	if notFound != nil {
		logrus.Error("Not Found")
		return nil, notFound
	}
	if internalServerError != nil {
		logrus.Error("Internal Server Error")
		return nil, internalServerError
	}
	if notImplemented != nil {
		logrus.Error("Not Implemented")
		return nil, notImplemented
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventV2Service) GetPublicEditHistory(input *event_v2.GetPublicEditHistoryParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.GetPublicEditHistory(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		logrus.Error("Bad Request")
		return nil, badRequest
	}
	if unauthorized != nil {
		logrus.Error("Unauthorized")
		return nil, unauthorized
	}
	if forbidden != nil {
		logrus.Error("Forbidden")
		return nil, forbidden
	}
	if notFound != nil {
		logrus.Error("Not Found")
		return nil, notFound
	}
	if internalServerError != nil {
		logrus.Error("Internal Server Error")
		return nil, internalServerError
	}
	if notImplemented != nil {
		logrus.Error("Not Implemented")
		return nil, notImplemented
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventV2Service) GetUserEventsV2Public(input *event_v2.GetUserEventsV2PublicParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.GetUserEventsV2Public(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		logrus.Error("Bad Request")
		return nil, badRequest
	}
	if unauthorized != nil {
		logrus.Error("Unauthorized")
		return nil, unauthorized
	}
	if forbidden != nil {
		logrus.Error("Forbidden")
		return nil, forbidden
	}
	if notFound != nil {
		logrus.Error("Not Found")
		return nil, notFound
	}
	if internalServerError != nil {
		logrus.Error("Internal Server Error")
		return nil, internalServerError
	}
	if notImplemented != nil {
		logrus.Error("Not Implemented")
		return nil, notImplemented
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EventV2Service) QueryEventStreamHandler(input *event_v2.QueryEventStreamHandlerParams) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.Client.EventV2.QueryEventStreamHandler(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		logrus.Error("Bad Request")
		return nil, badRequest
	}
	if unauthorized != nil {
		logrus.Error("Unauthorized")
		return nil, unauthorized
	}
	if forbidden != nil {
		logrus.Error("Forbidden")
		return nil, forbidden
	}
	if notFound != nil {
		logrus.Error("Not Found")
		return nil, notFound
	}
	if internalServerError != nil {
		logrus.Error("Internal Server Error")
		return nil, internalServerError
	}
	if notImplemented != nil {
		logrus.Error("Not Implemented")
		return nil, notImplemented
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
