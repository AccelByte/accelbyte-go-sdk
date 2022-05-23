// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type NotificationService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use SendMultipleUsersFreeformNotificationV1AdminShort instead
func (n *NotificationService) SendMultipleUsersFreeformNotificationV1Admin(input *notification.SendMultipleUsersFreeformNotificationV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, err := n.Client.Notification.SendMultipleUsersFreeformNotificationV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SendUsersFreeformNotificationV1AdminShort instead
func (n *NotificationService) SendUsersFreeformNotificationV1Admin(input *notification.SendUsersFreeformNotificationV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendUsersFreeformNotificationV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SendPartyFreeformNotificationV1AdminShort instead
func (n *NotificationService) SendPartyFreeformNotificationV1Admin(input *notification.SendPartyFreeformNotificationV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendPartyFreeformNotificationV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SendPartyTemplatedNotificationV1AdminShort instead
func (n *NotificationService) SendPartyTemplatedNotificationV1Admin(input *notification.SendPartyTemplatedNotificationV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendPartyTemplatedNotificationV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetAllNotificationTemplatesV1AdminShort instead
func (n *NotificationService) GetAllNotificationTemplatesV1Admin(input *notification.GetAllNotificationTemplatesV1AdminParams) ([]*lobbyclientmodels.ModelNotificationTemplateResponse, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetAllNotificationTemplatesV1Admin(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CreateNotificationTemplateV1AdminShort instead
func (n *NotificationService) CreateNotificationTemplateV1Admin(input *notification.CreateNotificationTemplateV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err := n.Client.Notification.CreateNotificationTemplateV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SendUsersTemplatedNotificationV1AdminShort instead
func (n *NotificationService) SendUsersTemplatedNotificationV1Admin(input *notification.SendUsersTemplatedNotificationV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendUsersTemplatedNotificationV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetTemplateSlugLocalizationsTemplateV1AdminShort instead
func (n *NotificationService) GetTemplateSlugLocalizationsTemplateV1Admin(input *notification.GetTemplateSlugLocalizationsTemplateV1AdminParams) (*lobbyclientmodels.ModelGetAllNotificationTemplateSlugResp, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.GetTemplateSlugLocalizationsTemplateV1Admin(input, client.BearerToken(*token.AccessToken))
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
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteNotificationTemplateSlugV1AdminShort instead
func (n *NotificationService) DeleteNotificationTemplateSlugV1Admin(input *notification.DeleteNotificationTemplateSlugV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.DeleteNotificationTemplateSlugV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetSingleTemplateLocalizationV1AdminShort instead
func (n *NotificationService) GetSingleTemplateLocalizationV1Admin(input *notification.GetSingleTemplateLocalizationV1AdminParams) (*lobbyclientmodels.ModelLocalization, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetSingleTemplateLocalizationV1Admin(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateTemplateLocalizationV1AdminShort instead
func (n *NotificationService) UpdateTemplateLocalizationV1Admin(input *notification.UpdateTemplateLocalizationV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.UpdateTemplateLocalizationV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use DeleteTemplateLocalizationV1AdminShort instead
func (n *NotificationService) DeleteTemplateLocalizationV1Admin(input *notification.DeleteTemplateLocalizationV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.DeleteTemplateLocalizationV1Admin(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublishTemplateLocalizationV1AdminShort instead
func (n *NotificationService) PublishTemplateLocalizationV1Admin(input *notification.PublishTemplateLocalizationV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.PublishTemplateLocalizationV1Admin(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetAllNotificationTopicsV1AdminShort instead
func (n *NotificationService) GetAllNotificationTopicsV1Admin(input *notification.GetAllNotificationTopicsV1AdminParams) (*lobbyclientmodels.ModelGetAllNotificationTopicsResponse, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetAllNotificationTopicsV1Admin(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CreateNotificationTopicV1AdminShort instead
func (n *NotificationService) CreateNotificationTopicV1Admin(input *notification.CreateNotificationTopicV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, err := n.Client.Notification.CreateNotificationTopicV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetNotificationTopicV1AdminShort instead
func (n *NotificationService) GetNotificationTopicV1Admin(input *notification.GetNotificationTopicV1AdminParams) (*lobbyclientmodels.ModelNotificationTopicResponseV1, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetNotificationTopicV1Admin(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateNotificationTopicV1AdminShort instead
func (n *NotificationService) UpdateNotificationTopicV1Admin(input *notification.UpdateNotificationTopicV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.UpdateNotificationTopicV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use DeleteNotificationTopicV1AdminShort instead
func (n *NotificationService) DeleteNotificationTopicV1Admin(input *notification.DeleteNotificationTopicV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.DeleteNotificationTopicV1Admin(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SendSpecificUserFreeformNotificationV1AdminShort instead
func (n *NotificationService) SendSpecificUserFreeformNotificationV1Admin(input *notification.SendSpecificUserFreeformNotificationV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendSpecificUserFreeformNotificationV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SendSpecificUserTemplatedNotificationV1AdminShort instead
func (n *NotificationService) SendSpecificUserTemplatedNotificationV1Admin(input *notification.SendSpecificUserTemplatedNotificationV1AdminParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendSpecificUserTemplatedNotificationV1Admin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use FreeFormNotificationShort instead
func (n *NotificationService) FreeFormNotification(input *notification.FreeFormNotificationParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.FreeFormNotification(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use NotificationWithTemplateShort instead
func (n *NotificationService) NotificationWithTemplate(input *notification.NotificationWithTemplateParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.NotificationWithTemplate(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetGameTemplateShort instead
func (n *NotificationService) GetGameTemplate(input *notification.GetGameTemplateParams) ([]*lobbyclientmodels.ModelTemplateResponse, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.GetGameTemplate(input, client.BearerToken(*token.AccessToken))
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
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateTemplateShort instead
func (n *NotificationService) CreateTemplate(input *notification.CreateTemplateParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.CreateTemplate(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetSlugTemplateShort instead
func (n *NotificationService) GetSlugTemplate(input *notification.GetSlugTemplateParams) (*lobbyclientmodels.ModelTemplateLocalizationResponse, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.GetSlugTemplate(input, client.BearerToken(*token.AccessToken))
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
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteTemplateSlugShort instead
func (n *NotificationService) DeleteTemplateSlug(input *notification.DeleteTemplateSlugParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.DeleteTemplateSlug(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetLocalizationTemplateShort instead
func (n *NotificationService) GetLocalizationTemplate(input *notification.GetLocalizationTemplateParams) (*lobbyclientmodels.ModelTemplateLocalization, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.GetLocalizationTemplate(input, client.BearerToken(*token.AccessToken))
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
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateLocalizationTemplateShort instead
func (n *NotificationService) UpdateLocalizationTemplate(input *notification.UpdateLocalizationTemplateParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.UpdateLocalizationTemplate(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use DeleteTemplateLocalizationShort instead
func (n *NotificationService) DeleteTemplateLocalization(input *notification.DeleteTemplateLocalizationParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.DeleteTemplateLocalization(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublishTemplateShort instead
func (n *NotificationService) PublishTemplate(input *notification.PublishTemplateParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.PublishTemplate(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetTopicByNamespaceShort instead
func (n *NotificationService) GetTopicByNamespace(input *notification.GetTopicByNamespaceParams) (*lobbyclientmodels.ModelTopicByNamespacesResponse, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetTopicByNamespace(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CreateTopicShort instead
func (n *NotificationService) CreateTopic(input *notification.CreateTopicParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, conflict, err := n.Client.Notification.CreateTopic(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetTopicByTopicNameShort instead
func (n *NotificationService) GetTopicByTopicName(input *notification.GetTopicByTopicNameParams) (*lobbyclientmodels.ModelNotificationTopicResponse, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetTopicByTopicName(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateTopicByTopicNameShort instead
func (n *NotificationService) UpdateTopicByTopicName(input *notification.UpdateTopicByTopicNameParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.UpdateTopicByTopicName(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use DeleteTopicByTopicNameShort instead
func (n *NotificationService) DeleteTopicByTopicName(input *notification.DeleteTopicByTopicNameParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.DeleteTopicByTopicName(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use FreeFormNotificationByUserIDShort instead
func (n *NotificationService) FreeFormNotificationByUserID(input *notification.FreeFormNotificationByUserIDParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.FreeFormNotificationByUserID(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use NotificationWithTemplateByUserIDShort instead
func (n *NotificationService) NotificationWithTemplateByUserID(input *notification.NotificationWithTemplateByUserIDParams) error {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.NotificationWithTemplateByUserID(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) SendMultipleUsersFreeformNotificationV1AdminShort(input *notification.SendMultipleUsersFreeformNotificationV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.SendMultipleUsersFreeformNotificationV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) SendUsersFreeformNotificationV1AdminShort(input *notification.SendUsersFreeformNotificationV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.SendUsersFreeformNotificationV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) SendPartyFreeformNotificationV1AdminShort(input *notification.SendPartyFreeformNotificationV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.SendPartyFreeformNotificationV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) SendPartyTemplatedNotificationV1AdminShort(input *notification.SendPartyTemplatedNotificationV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.SendPartyTemplatedNotificationV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) GetAllNotificationTemplatesV1AdminShort(input *notification.GetAllNotificationTemplatesV1AdminParams) ([]*lobbyclientmodels.ModelNotificationTemplateResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := n.Client.Notification.GetAllNotificationTemplatesV1AdminShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NotificationService) CreateNotificationTemplateV1AdminShort(input *notification.CreateNotificationTemplateV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.CreateNotificationTemplateV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) SendUsersTemplatedNotificationV1AdminShort(input *notification.SendUsersTemplatedNotificationV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.SendUsersTemplatedNotificationV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) GetTemplateSlugLocalizationsTemplateV1AdminShort(input *notification.GetTemplateSlugLocalizationsTemplateV1AdminParams) (*lobbyclientmodels.ModelGetAllNotificationTemplateSlugResp, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := n.Client.Notification.GetTemplateSlugLocalizationsTemplateV1AdminShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NotificationService) DeleteNotificationTemplateSlugV1AdminShort(input *notification.DeleteNotificationTemplateSlugV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.DeleteNotificationTemplateSlugV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) GetSingleTemplateLocalizationV1AdminShort(input *notification.GetSingleTemplateLocalizationV1AdminParams) (*lobbyclientmodels.ModelLocalization, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := n.Client.Notification.GetSingleTemplateLocalizationV1AdminShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NotificationService) UpdateTemplateLocalizationV1AdminShort(input *notification.UpdateTemplateLocalizationV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.UpdateTemplateLocalizationV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) DeleteTemplateLocalizationV1AdminShort(input *notification.DeleteTemplateLocalizationV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.DeleteTemplateLocalizationV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) PublishTemplateLocalizationV1AdminShort(input *notification.PublishTemplateLocalizationV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.PublishTemplateLocalizationV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) GetAllNotificationTopicsV1AdminShort(input *notification.GetAllNotificationTopicsV1AdminParams) (*lobbyclientmodels.ModelGetAllNotificationTopicsResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := n.Client.Notification.GetAllNotificationTopicsV1AdminShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NotificationService) CreateNotificationTopicV1AdminShort(input *notification.CreateNotificationTopicV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.CreateNotificationTopicV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) GetNotificationTopicV1AdminShort(input *notification.GetNotificationTopicV1AdminParams) (*lobbyclientmodels.ModelNotificationTopicResponseV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := n.Client.Notification.GetNotificationTopicV1AdminShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NotificationService) UpdateNotificationTopicV1AdminShort(input *notification.UpdateNotificationTopicV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.UpdateNotificationTopicV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) DeleteNotificationTopicV1AdminShort(input *notification.DeleteNotificationTopicV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.DeleteNotificationTopicV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) SendSpecificUserFreeformNotificationV1AdminShort(input *notification.SendSpecificUserFreeformNotificationV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.SendSpecificUserFreeformNotificationV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) SendSpecificUserTemplatedNotificationV1AdminShort(input *notification.SendSpecificUserTemplatedNotificationV1AdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.SendSpecificUserTemplatedNotificationV1AdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) FreeFormNotificationShort(input *notification.FreeFormNotificationParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.FreeFormNotificationShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) NotificationWithTemplateShort(input *notification.NotificationWithTemplateParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.NotificationWithTemplateShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) GetGameTemplateShort(input *notification.GetGameTemplateParams) ([]*lobbyclientmodels.ModelTemplateResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := n.Client.Notification.GetGameTemplateShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NotificationService) CreateTemplateShort(input *notification.CreateTemplateParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.CreateTemplateShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) GetSlugTemplateShort(input *notification.GetSlugTemplateParams) (*lobbyclientmodels.ModelTemplateLocalizationResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := n.Client.Notification.GetSlugTemplateShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NotificationService) DeleteTemplateSlugShort(input *notification.DeleteTemplateSlugParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.DeleteTemplateSlugShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) GetLocalizationTemplateShort(input *notification.GetLocalizationTemplateParams) (*lobbyclientmodels.ModelTemplateLocalization, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := n.Client.Notification.GetLocalizationTemplateShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NotificationService) UpdateLocalizationTemplateShort(input *notification.UpdateLocalizationTemplateParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.UpdateLocalizationTemplateShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) DeleteTemplateLocalizationShort(input *notification.DeleteTemplateLocalizationParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.DeleteTemplateLocalizationShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) PublishTemplateShort(input *notification.PublishTemplateParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.PublishTemplateShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) GetTopicByNamespaceShort(input *notification.GetTopicByNamespaceParams) (*lobbyclientmodels.ModelTopicByNamespacesResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := n.Client.Notification.GetTopicByNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NotificationService) CreateTopicShort(input *notification.CreateTopicParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.CreateTopicShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) GetTopicByTopicNameShort(input *notification.GetTopicByTopicNameParams) (*lobbyclientmodels.ModelNotificationTopicResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := n.Client.Notification.GetTopicByTopicNameShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NotificationService) UpdateTopicByTopicNameShort(input *notification.UpdateTopicByTopicNameParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.UpdateTopicByTopicNameShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) DeleteTopicByTopicNameShort(input *notification.DeleteTopicByTopicNameParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.DeleteTopicByTopicNameShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) FreeFormNotificationByUserIDShort(input *notification.FreeFormNotificationByUserIDParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.FreeFormNotificationByUserIDShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (n *NotificationService) NotificationWithTemplateByUserIDShort(input *notification.NotificationWithTemplateByUserIDParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  n.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := n.Client.Notification.NotificationWithTemplateByUserIDShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
