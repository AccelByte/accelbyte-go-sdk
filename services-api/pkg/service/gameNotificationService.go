package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type GameNotificationService struct {
	LobbyClient     *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

func (g GameNotificationService) CreateNotificationTemplateV1Admin(namespace string, content *lobbyclientmodels.ModelCreateTemplateRequest) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.CreateNotificationTemplateV1AdminParams{
		Namespace: namespace,
		Body:      content,
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err := g.LobbyClient.Notification.CreateNotificationTemplateV1Admin(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		return err
	}
	return nil
}

func (g GameNotificationService) CreateNotificationTopicV1Admin(namespace string, content *lobbyclientmodels.ModelCreateTopicRequestV1) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.CreateNotificationTopicV1AdminParams{
		Namespace: namespace,
		Body:      content,
	}
	_, badRequest, unauthorized, forbidden, err := g.LobbyClient.Notification.CreateNotificationTopicV1Admin(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if err != nil {
		return err
	}
	return nil
}

func (g GameNotificationService) FreeFormNotification(namespace string, content *lobbyclientmodels.ModelFreeFormNotificationRequest) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.FreeFormNotificationParams{
		Namespace: namespace,
		Body:      content,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := g.LobbyClient.Notification.FreeFormNotification(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

func (g GameNotificationService) FreeFormNotificationByUserID(namespace, userID string, async *bool, content *lobbyclientmodels.ModelFreeFormNotificationRequest) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.FreeFormNotificationByUserIDParams{
		Namespace: namespace,
		UserID:    userID,
		Async:     async,
		Body:      content,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := g.LobbyClient.Notification.FreeFormNotificationByUserID(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

func (g GameNotificationService) SendMultipleUsersFreeformNotificationV1Admin(namespace string, async *bool, content *lobbyclientmodels.ModelBulkUsersFreeFormNotificationRequestV1) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.SendMultipleUsersFreeformNotificationV1AdminParams{
		Namespace: namespace,
		Async:     async,
		Body:      content,
	}
	_, badRequest, unauthorized, forbidden, err := g.LobbyClient.Notification.SendMultipleUsersFreeformNotificationV1Admin(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if err != nil {
		return err
	}
	return nil
}

func (g GameNotificationService) SendSpecificUserFreeformNotificationV1Admin(namespace, userID string, async *bool, content *lobbyclientmodels.ModelFreeFormNotificationRequestV1) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.SendSpecificUserFreeformNotificationV1AdminParams{
		Namespace: namespace,
		UserID:    userID,
		Async:     async,
		Body:      content,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := g.LobbyClient.Notification.SendSpecificUserFreeformNotificationV1Admin(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

func (g GameNotificationService) SendUsersFreeformNotificationV1Admin(namespace string, content *lobbyclientmodels.ModelFreeFormNotificationRequestV1) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.SendUsersFreeformNotificationV1AdminParams{
		Namespace: namespace,
		Body:      content,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := g.LobbyClient.Notification.SendUsersFreeformNotificationV1Admin(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}
