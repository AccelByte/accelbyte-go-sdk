package service

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type EventlogService struct {
	EventlogServiceClient *eventlogclient.JusticeEventlogService
	TokenRepository       repository.TokenRepository
}

func (e *EventlogService) GetEventSpecificUserV2Handler(endDate, eventName *string, namespace string, offset, pageSize *float64, startDate *string, userID string) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &event_v2.GetEventSpecificUserV2HandlerParams{
		EndDate:   endDate,
		EventName: eventName,
		Namespace: namespace,
		Offset:    offset,
		PageSize:  pageSize,
		StartDate: startDate,
		UserID:    userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.EventlogServiceClient.EventV2.GetEventSpecificUserV2Handler(params, client.BearerToken(*token.AccessToken))
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

func (e *EventlogService) GetPublicEditHistory(endDate *string, namespace string, offset, pageSize *float64, startDate *string, type_ *string, userID string) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &event_v2.GetPublicEditHistoryParams{
		EndDate:   endDate,
		Namespace: namespace,
		Offset:    offset,
		PageSize:  pageSize,
		StartDate: startDate,
		Type:      type_,
		UserID:    userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.EventlogServiceClient.EventV2.GetPublicEditHistory(params, client.BearerToken(*token.AccessToken))
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

func (e *EventlogService) GetUserEventsV2Public(endDate, eventName *string, namespace string, offset, pageSize *float64, startDate *string, userID string) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &event_v2.GetUserEventsV2PublicParams{
		EndDate:   endDate,
		EventName: eventName,
		Namespace: namespace,
		Offset:    offset,
		PageSize:  pageSize,
		StartDate: startDate,
		UserID:    userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.EventlogServiceClient.EventV2.GetUserEventsV2Public(params, client.BearerToken(*token.AccessToken))
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

func (e *EventlogService) QueryEventStreamHandler(body *eventlogclientmodels.ModelsGenericQueryPayload, endDate *string, namespace string, offset, pageSize *float64, startDate *string) (*eventlogclientmodels.ModelsEventResponseV2, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &event_v2.QueryEventStreamHandlerParams{
		Body:      body,
		EndDate:   endDate,
		Namespace: namespace,
		Offset:    offset,
		PageSize:  pageSize,
		StartDate: startDate,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, notImplemented, err := e.EventlogServiceClient.EventV2.QueryEventStreamHandler(params, client.BearerToken(*token.AccessToken))
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
