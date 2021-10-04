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

func (g *GameNotificationService) CreateTemplate(body *lobbyclientmodels.ModelCreateTemplateRequest, namespace string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &notification.CreateTemplateParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := g.LobbyClient.Notification.CreateTemplate(params, client.BearerToken(*token.AccessToken))
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
		logrus.Error(err)
		return err
	}
	return nil
}

func (g *GameNotificationService) CreateTopic(body *lobbyclientmodels.ModelCreateTopicRequest, namespace string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &notification.CreateTopicParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, conflict, err := g.LobbyClient.Notification.CreateTopic(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (g *GameNotificationService) DeleteNotificationTemplateSlugV1Admin(namespace, templateSlug string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &notification.DeleteNotificationTemplateSlugV1AdminParams{
		Namespace:    namespace,
		TemplateSlug: templateSlug,
	}
	_, badRequest, unauthorized, forbidden, conflict, err := g.LobbyClient.Notification.DeleteNotificationTemplateSlugV1Admin(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (g *GameNotificationService) DeleteNotificationTopicV1Admin(namespace, topicName string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &notification.DeleteNotificationTopicV1AdminParams{
		Namespace: namespace,
		TopicName: topicName,
	}
	_, badRequest, unauthorized, forbidden, conflict, err := g.LobbyClient.Notification.DeleteNotificationTopicV1Admin(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (g *GameNotificationService) DeleteTemplateLocalization(namespace, templateLanguage, templateSlug string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &notification.DeleteTemplateLocalizationParams{
		Namespace:        namespace,
		TemplateLanguage: templateLanguage,
		TemplateSlug:     templateSlug,
	}
	_, badRequest, unauthorized, forbidden, conflict, err := g.LobbyClient.Notification.DeleteTemplateLocalization(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (g *GameNotificationService) DeleteTemplateLocalizationV1Admin(namespace, templateLanguage, templateSlug string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &notification.DeleteTemplateLocalizationV1AdminParams{
		Namespace:        namespace,
		TemplateLanguage: templateLanguage,
		TemplateSlug:     templateSlug,
	}
	_, badRequest, unauthorized, forbidden, conflict, err := g.LobbyClient.Notification.DeleteTemplateLocalizationV1Admin(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (g *GameNotificationService) DeleteTemplateSlug(namespace, templateSlug string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &notification.DeleteTemplateSlugParams{
		Namespace:    namespace,
		TemplateSlug: templateSlug,
	}
	_, badRequest, unauthorized, forbidden, conflict, err := g.LobbyClient.Notification.DeleteTemplateSlug(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (g *GameNotificationService) DeleteTopicByTopicName(namespace, topic string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &notification.DeleteTopicByTopicNameParams{
		Namespace: namespace,
		Topic:     topic,
	}
	_, badRequest, unauthorized, forbidden, conflict, err := g.LobbyClient.Notification.DeleteTopicByTopicName(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (g *GameNotificationService) GetAllNotificationTemplatesV1Admin(namespace string) ([]*lobbyclientmodels.ModelNotificationTemplateResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetAllNotificationTemplatesV1AdminParams{
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetAllNotificationTemplatesV1Admin(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) GetAllNotificationTopicsV1Admin(after, before *string, limit *int64, namespace string) (*lobbyclientmodels.ModelGetAllNotificationTopicsResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetAllNotificationTopicsV1AdminParams{
		After:     after,
		Before:    before,
		Limit:     limit,
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetAllNotificationTopicsV1Admin(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) GetAllStoredNotificationsV1(namespace string) ([]*lobbyclientmodels.ModelGetStoredNotificationResp, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetAllStoredNotificationsV1Params{
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetAllStoredNotificationsV1(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) GetGameTemplate(namespace string) ([]*lobbyclientmodels.ModelTemplateResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetGameTemplateParams{
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetGameTemplate(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) GetLocalizationTemplate(namespace, templateLanguage, templateSlug string) (*lobbyclientmodels.ModelTemplateLocalization, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetLocalizationTemplateParams{
		Namespace:        namespace,
		TemplateLanguage: templateLanguage,
		TemplateSlug:     templateSlug,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetLocalizationTemplate(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) GetNotificationTopicV1Admin(namespace, topicName string) (*lobbyclientmodels.ModelNotificationTopicResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetNotificationTopicV1AdminParams{
		Namespace: namespace,
		TopicName: topicName,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetNotificationTopicV1Admin(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) GetNotifications(namespace, userID string) ([]*lobbyclientmodels.ModelNotificationResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetNotificationsParams{
		Namespace: namespace,
		UserID:    userID,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetNotifications(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) GetSingleTemplateLocalizationV1Admin(namespace, templateLanguage, templateSlug string) (*lobbyclientmodels.ModelLocalization, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetSingleTemplateLocalizationV1AdminParams{
		Namespace:        namespace,
		TemplateLanguage: templateLanguage,
		TemplateSlug:     templateSlug,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetSingleTemplateLocalizationV1Admin(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) GetSlugTemplate(after, before *string, limit *int64, namespace, templateSlug string) (*lobbyclientmodels.ModelTemplateLocalizationResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetSlugTemplateParams{
		After:        after,
		Before:       before,
		Limit:        limit,
		Namespace:    namespace,
		TemplateSlug: templateSlug,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetSlugTemplate(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) GetTemplateSlugLocalizationsTemplateV1Admin(after, before *string, limit *int64, namespace, templateSlug string) (*lobbyclientmodels.ModelGetAllNotificationTemplateSlugResp, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetTemplateSlugLocalizationsTemplateV1AdminParams{
		After:        after,
		Before:       before,
		Limit:        limit,
		Namespace:    namespace,
		TemplateSlug: templateSlug,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetTemplateSlugLocalizationsTemplateV1Admin(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) GetTopicByNamespace(after, before *string, limit *int64, namespace string) (*lobbyclientmodels.ModelTopicByNamespacesResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetTopicByNamespaceParams{
		After:     after,
		Before:    before,
		Limit:     limit,
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetTopicByNamespace(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) GetTopicByTopicName(namespace, topic string) (*lobbyclientmodels.ModelNotificationTopicResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &notification.GetTopicByTopicNameParams{
		Namespace: namespace,
		Topic:     topic,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.GetTopicByTopicName(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameNotificationService) NotificationWithTemplate(body *lobbyclientmodels.ModelNotificationWithTemplateRequest, namespace string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &notification.NotificationWithTemplateParams{
		Body:      body,
		Namespace: namespace,
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.NotificationWithTemplate(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (g *GameNotificationService) NotificationWithTemplateByUserID(async *bool, body *lobbyclientmodels.ModelNotificationWithTemplateRequest, namespace, userID string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &notification.NotificationWithTemplateByUserIDParams{
		Async:     async,
		Body:      body,
		Namespace: namespace,
		UserID:    userID,
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.NotificationWithTemplateByUserID(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (g *GameNotificationService) PublishTemplate(namespace, templateLanguage, templateSlug string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &notification.PublishTemplateParams{
		Namespace:        namespace,
		TemplateLanguage: templateLanguage,
		TemplateSlug:     templateSlug,
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.PublishTemplate(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (g *GameNotificationService) PublishTemplateLocalizationV1Admin(namespace, templateLanguage, templateSlug string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &notification.PublishTemplateLocalizationV1AdminParams{
		Namespace:        namespace,
		TemplateLanguage: templateLanguage,
		TemplateSlug:     templateSlug,
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.PublishTemplateLocalizationV1Admin(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (g GameNotificationService) SendSpecificUserTemplatedNotificationV1Admin(namespace, userID string, async *bool, content *lobbyclientmodels.ModelNotificationWithTemplateRequestV1) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.SendSpecificUserTemplatedNotificationV1AdminParams{
		Namespace: namespace,
		UserID:    userID,
		Async:     async,
		Body:      content,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := g.LobbyClient.Notification.SendSpecificUserTemplatedNotificationV1Admin(param, client.BearerToken(*accessToken.AccessToken))
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

func (g GameNotificationService) SendUsersTemplatedNotificationV1Admin(body *lobbyclientmodels.ModelNotificationWithTemplateRequestV1, namespace string) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.SendUsersTemplatedNotificationV1AdminParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := g.LobbyClient.Notification.SendUsersTemplatedNotificationV1Admin(param, client.BearerToken(*accessToken.AccessToken))
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

func (g GameNotificationService) UpdateLocalizationTemplate(body *lobbyclientmodels.ModelUpdateTemplateRequest, namespace, templateLanguage, templateSlug string) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.UpdateLocalizationTemplateParams{
		Body:             body,
		Namespace:        namespace,
		TemplateLanguage: templateLanguage,
		TemplateSlug:     templateSlug,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := g.LobbyClient.Notification.UpdateLocalizationTemplate(param, client.BearerToken(*accessToken.AccessToken))
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

func (g GameNotificationService) UpdateNotificationTopicV1Admin(body *lobbyclientmodels.ModelUpdateTopicRequest, namespace, topicName string) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.UpdateNotificationTopicV1AdminParams{
		Body:      body,
		Namespace: namespace,
		TopicName: topicName,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.UpdateNotificationTopicV1Admin(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
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

func (g GameNotificationService) UpdateTemplateLocalizationV1Admin(body *lobbyclientmodels.ModelUpdateTemplateRequest, namespace, templateLanguage, templateSlug string) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.UpdateTemplateLocalizationV1AdminParams{
		Body:             body,
		Namespace:        namespace,
		TemplateLanguage: templateLanguage,
		TemplateSlug:     templateSlug,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.UpdateTemplateLocalizationV1Admin(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
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

func (g GameNotificationService) UpdateTopicByTopicName(body *lobbyclientmodels.ModelUpdateTopicRequest, namespace, topic string) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &notification.UpdateTopicByTopicNameParams{
		Body:      body,
		Namespace: namespace,
		Topic:     topic,
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := g.LobbyClient.Notification.UpdateTopicByTopicName(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
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
