// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type NotificationService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use SendMultipleUsersFreeformNotificationV1AdminShort instead
func (n *NotificationService) SendMultipleUsersFreeformNotificationV1Admin(input *notification.SendMultipleUsersFreeformNotificationV1AdminParams) error {
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, err := n.Client.Notification.SendMultipleUsersFreeformNotificationV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendUsersFreeformNotificationV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendPartyFreeformNotificationV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendPartyTemplatedNotificationV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetAllNotificationTemplatesV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err := n.Client.Notification.CreateNotificationTemplateV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendUsersTemplatedNotificationV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.GetTemplateSlugLocalizationsTemplateV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.DeleteNotificationTemplateSlugV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetSingleTemplateLocalizationV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.UpdateTemplateLocalizationV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.DeleteTemplateLocalizationV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.PublishTemplateLocalizationV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetAllNotificationTopicsV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, err := n.Client.Notification.CreateNotificationTopicV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetNotificationTopicV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.UpdateNotificationTopicV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.DeleteNotificationTopicV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendSpecificUserFreeformNotificationV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.SendSpecificUserTemplatedNotificationV1Admin(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.FreeFormNotification(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.NotificationWithTemplate(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.GetGameTemplate(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.CreateTemplate(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.GetSlugTemplate(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.DeleteTemplateSlug(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.GetLocalizationTemplate(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.UpdateLocalizationTemplate(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.DeleteTemplateLocalization(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.PublishTemplate(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetTopicByNamespace(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, conflict, err := n.Client.Notification.CreateTopic(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.GetTopicByTopicName(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.UpdateTopicByTopicName(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := n.Client.Notification.DeleteTopicByTopicName(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.FreeFormNotificationByUserID(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := n.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := n.Client.Notification.NotificationWithTemplateByUserID(input, client.BearerToken(*accessToken.AccessToken))
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

func (n *NotificationService) SendMultipleUsersFreeformNotificationV1AdminShort(input *notification.SendMultipleUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.SendMultipleUsersFreeformNotificationV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) SendUsersFreeformNotificationV1AdminShort(input *notification.SendUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.SendUsersFreeformNotificationV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) SendPartyFreeformNotificationV1AdminShort(input *notification.SendPartyFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.SendPartyFreeformNotificationV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) SendPartyTemplatedNotificationV1AdminShort(input *notification.SendPartyTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.SendPartyTemplatedNotificationV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) GetAllNotificationTemplatesV1AdminShort(input *notification.GetAllNotificationTemplatesV1AdminParams, authInfo runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelNotificationTemplateResponse, error) {
	ok, err := n.Client.Notification.GetAllNotificationTemplatesV1AdminShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (n *NotificationService) CreateNotificationTemplateV1AdminShort(input *notification.CreateNotificationTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.CreateNotificationTemplateV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) SendUsersTemplatedNotificationV1AdminShort(input *notification.SendUsersTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.SendUsersTemplatedNotificationV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) GetTemplateSlugLocalizationsTemplateV1AdminShort(input *notification.GetTemplateSlugLocalizationsTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelGetAllNotificationTemplateSlugResp, error) {
	ok, err := n.Client.Notification.GetTemplateSlugLocalizationsTemplateV1AdminShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (n *NotificationService) DeleteNotificationTemplateSlugV1AdminShort(input *notification.DeleteNotificationTemplateSlugV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.DeleteNotificationTemplateSlugV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) GetSingleTemplateLocalizationV1AdminShort(input *notification.GetSingleTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelLocalization, error) {
	ok, err := n.Client.Notification.GetSingleTemplateLocalizationV1AdminShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (n *NotificationService) UpdateTemplateLocalizationV1AdminShort(input *notification.UpdateTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.UpdateTemplateLocalizationV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) DeleteTemplateLocalizationV1AdminShort(input *notification.DeleteTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.DeleteTemplateLocalizationV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) PublishTemplateLocalizationV1AdminShort(input *notification.PublishTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.PublishTemplateLocalizationV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) GetAllNotificationTopicsV1AdminShort(input *notification.GetAllNotificationTopicsV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelGetAllNotificationTopicsResponse, error) {
	ok, err := n.Client.Notification.GetAllNotificationTopicsV1AdminShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (n *NotificationService) CreateNotificationTopicV1AdminShort(input *notification.CreateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.CreateNotificationTopicV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) GetNotificationTopicV1AdminShort(input *notification.GetNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelNotificationTopicResponseV1, error) {
	ok, err := n.Client.Notification.GetNotificationTopicV1AdminShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (n *NotificationService) UpdateNotificationTopicV1AdminShort(input *notification.UpdateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.UpdateNotificationTopicV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) DeleteNotificationTopicV1AdminShort(input *notification.DeleteNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.DeleteNotificationTopicV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) SendSpecificUserFreeformNotificationV1AdminShort(input *notification.SendSpecificUserFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.SendSpecificUserFreeformNotificationV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) SendSpecificUserTemplatedNotificationV1AdminShort(input *notification.SendSpecificUserTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.SendSpecificUserTemplatedNotificationV1AdminShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) FreeFormNotificationShort(input *notification.FreeFormNotificationParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.FreeFormNotificationShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) NotificationWithTemplateShort(input *notification.NotificationWithTemplateParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.NotificationWithTemplateShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) GetGameTemplateShort(input *notification.GetGameTemplateParams, authInfo runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelTemplateResponse, error) {
	ok, err := n.Client.Notification.GetGameTemplateShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (n *NotificationService) CreateTemplateShort(input *notification.CreateTemplateParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.CreateTemplateShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) GetSlugTemplateShort(input *notification.GetSlugTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelTemplateLocalizationResponse, error) {
	ok, err := n.Client.Notification.GetSlugTemplateShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (n *NotificationService) DeleteTemplateSlugShort(input *notification.DeleteTemplateSlugParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.DeleteTemplateSlugShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) GetLocalizationTemplateShort(input *notification.GetLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelTemplateLocalization, error) {
	ok, err := n.Client.Notification.GetLocalizationTemplateShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (n *NotificationService) UpdateLocalizationTemplateShort(input *notification.UpdateLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.UpdateLocalizationTemplateShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) DeleteTemplateLocalizationShort(input *notification.DeleteTemplateLocalizationParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.DeleteTemplateLocalizationShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) PublishTemplateShort(input *notification.PublishTemplateParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.PublishTemplateShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) GetTopicByNamespaceShort(input *notification.GetTopicByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelTopicByNamespacesResponse, error) {
	ok, err := n.Client.Notification.GetTopicByNamespaceShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (n *NotificationService) CreateTopicShort(input *notification.CreateTopicParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.CreateTopicShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) GetTopicByTopicNameShort(input *notification.GetTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelNotificationTopicResponse, error) {
	ok, err := n.Client.Notification.GetTopicByTopicNameShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (n *NotificationService) UpdateTopicByTopicNameShort(input *notification.UpdateTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.UpdateTopicByTopicNameShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) DeleteTopicByTopicNameShort(input *notification.DeleteTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.DeleteTopicByTopicNameShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) FreeFormNotificationByUserIDShort(input *notification.FreeFormNotificationByUserIDParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.FreeFormNotificationByUserIDShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (n *NotificationService) NotificationWithTemplateByUserIDShort(input *notification.NotificationWithTemplateByUserIDParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := n.Client.Notification.NotificationWithTemplateByUserIDShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}
