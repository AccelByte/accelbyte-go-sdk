// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"bufio"
	"strings"
	"testing"

	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	lobbyAdminNotification "github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
)

var (
	connMgr             *integration.ConnectionManagerImpl
	msgType             string
	notificationService = &service.NotificationServiceWebsocket{
		ConfigRepository:  oAuth20Service.ConfigRepository,
		TokenRepository:   oAuth20Service.TokenRepository,
		ConnectionManager: connMgr,
	}
	lobbyMessageHandler = func(dataByte []byte) {

		msg := decodeWSMessage(string(dataByte))

		if v, ok := msg["type"]; ok {
			msgType = v
		}
		switch msgType {
		case model.TypeNotificationMessage:
		}
	}
)

func decodeWSMessage(msg string) map[string]string {
	scanner := bufio.NewScanner(strings.NewReader(msg))
	res := make(map[string]string)

	for scanner.Scan() {
		str := scanner.Text()
		keyValue := strings.Split(str, ": ")
		if len(keyValue) == 2 {
			res[keyValue[0]] = keyValue[1]
		}
	}

	if err := scanner.Err(); err != nil {
		logrus.Errorf("error reading websocket message: %v", err)
	}

	return res
}

func TestIntegrationNotification(t *testing.T) {
	t.Parallel()

	// Login User - Arrange
	Init()
	connMgr = &integration.ConnectionManagerImpl{}
	connection, err := connectionutils.NewWebsocketConnection(oAuth20Service.ConfigRepository, oAuth20Service.TokenRepository, lobbyMessageHandler)
	assert.Nil(t, err, "err should be nil")

	connMgr.Save(connection)

	// CASE Lobby get a notification
	err = notificationService.GetNotificationMessage()
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")

	// CASE Lobby get offline notification
	err = notificationService.GetOfflineNotification()
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationLobbyFreeFormNotification(t *testing.T) {
	// Login User - Arrange
	oAuth20Service := integration.LoginUser(t)

	lobbyAdminSvc := &lobby.AdminService{
		Client:                 factory.NewLobbyClient(oAuth20Service.ConfigRepository),
		ConfigRepository:       oAuth20Service.ConfigRepository,
		TokenRepository:        oAuth20Service.TokenRepository,
		RefreshTokenRepository: oAuth20Service.RefreshTokenRepository,
	}

	topic := "go_server_sdk_integration_test"
	message := "This is a Go Extend SDK integration test"

	err := lobbyAdminSvc.FreeFormNotificationShort(&lobbyAdminNotification.FreeFormNotificationParams{
		Body: &lobbyclientmodels.ModelFreeFormNotificationRequest{
			Message: &message,
			Topic:   &topic,
		},
		Namespace: integration.NamespaceTest,
	})

	// Assert
	assert.NoError(t, err)
}

func TestIntegrationLobbyNotificationTopics(t *testing.T) {
	// prepare
	oauthSvc := integration.LoginUser(t)
	lobbyNotifSvc := &lobby.NotificationService{
		Client:                 factory.NewLobbyClient(oauthSvc.ConfigRepository),
		ConfigRepository:       oauthSvc.ConfigRepository,
		TokenRepository:        oauthSvc.TokenRepository,
		RefreshTokenRepository: oauthSvc.RefreshTokenRepository,
	}
	desc := "go lobby notification topics integration test"
	topic := "GOINTEGRATIONTESTTOPIC"
	_ = lobbyNotifSvc.DeleteNotificationTopicV1AdminShort(&notification.DeleteNotificationTopicV1AdminParams{
		TopicName: topic,
		Namespace: integration.NamespaceTest,
	})

	// tests run
	t.Run("Admin create notification topics", func(t *testing.T) {
		err := lobbyNotifSvc.CreateNotificationTopicV1AdminShort(&notification.CreateNotificationTopicV1AdminParams{
			Body: &lobbyclientmodels.ModelCreateTopicRequestV1{
				Description: &desc,
				TopicName:   &topic,
			},
			Namespace: integration.NamespaceTest,
		})
		assert.NoError(t, err)
	})

	//
	t.Run("Admin get notification topics admin", func(t *testing.T) {
		resp, err := lobbyNotifSvc.GetNotificationTopicV1AdminShort(&notification.GetNotificationTopicV1AdminParams{
			TopicName: topic,
			Namespace: integration.NamespaceTest,
		})
		assert.NoError(t, err)
		assert.NotNil(t, resp)
		assert.Equal(t, topic, *resp.TopicName)
	})

	//
	t.Run("Admin update notification topics admin", func(t *testing.T) {
		newDesc := "[updated] go lobby notification topics integration test"
		err := lobbyNotifSvc.UpdateNotificationTopicV1AdminShort(&notification.UpdateNotificationTopicV1AdminParams{
			Body: &lobbyclientmodels.ModelUpdateTopicRequest{
				Description: &newDesc,
			},
			Namespace: integration.NamespaceTest,
			TopicName: topic,
		})
		assert.NoError(t, err)
	})

	//
	t.Run("Admin delete notification topics admin", func(t *testing.T) {
		err := lobbyNotifSvc.DeleteNotificationTopicV1AdminShort(&notification.DeleteNotificationTopicV1AdminParams{
			Namespace: integration.NamespaceTest,
			TopicName: topic,
		})
		assert.NoError(t, err)
	})
}

func TestIntegrationLobbyNotificationTemplates(t *testing.T) {
	// prepare
	oauthSvc := integration.LoginUser(t)
	lobbyNotifSvc := &lobby.NotificationService{
		Client:                 factory.NewLobbyClient(oauthSvc.ConfigRepository),
		ConfigRepository:       oauthSvc.ConfigRepository,
		TokenRepository:        oauthSvc.TokenRepository,
		RefreshTokenRepository: oauthSvc.RefreshTokenRepository,
	}
	templSlug := "GoIntegrationTestTemplate"
	templLang := "en"
	templContent := "go integration test notification template content"
	updatedTemplContent := "[updated] go integration test content"
	_ = lobbyNotifSvc.DeleteNotificationTemplateSlugV1AdminShort(&notification.DeleteNotificationTemplateSlugV1AdminParams{
		Namespace:    integration.NamespaceTest,
		TemplateSlug: templSlug,
	})

	// tests run
	t.Run("Admin create notification templates", func(t *testing.T) {
		err := lobbyNotifSvc.CreateNotificationTemplateV1AdminShort(&notification.CreateNotificationTemplateV1AdminParams{
			Body: &lobbyclientmodels.ModelCreateTemplateRequest{
				TemplateContent:  &templContent,
				TemplateLanguage: &templLang,
				TemplateSlug:     &templSlug,
			},
			Namespace: integration.NamespaceTest,
		})
		assert.NoError(t, err)
	})

	t.Run("Admin get notification templates", func(t *testing.T) {
		resp, err := lobbyNotifSvc.GetTemplateSlugLocalizationsTemplateV1AdminShort(&notification.GetTemplateSlugLocalizationsTemplateV1AdminParams{
			Namespace:    integration.NamespaceTest,
			TemplateSlug: templSlug,
		})
		assert.NoError(t, err)
		assert.NotNil(t, resp)
		assert.NotEmpty(t, resp.Data)
		assert.Equal(t, templLang, *resp.Data[0].TemplateLanguage)
		assert.Equal(t, templContent, *resp.Data[0].TemplateContent.Draft)
	})

	t.Run("Admin update template language", func(t *testing.T) {
		err := lobbyNotifSvc.UpdateTemplateLocalizationV1AdminShort(&notification.UpdateTemplateLocalizationV1AdminParams{
			Body: &lobbyclientmodels.ModelUpdateTemplateRequest{
				TemplateContent: &updatedTemplContent,
			},
			Namespace:        integration.NamespaceTest,
			TemplateLanguage: templLang,
			TemplateSlug:     templSlug,
		})
		assert.NoError(t, err)
	})

	t.Run("Admin delete notification template", func(t *testing.T) {
		err := lobbyNotifSvc.DeleteNotificationTemplateSlugV1AdminShort(&notification.DeleteNotificationTemplateSlugV1AdminParams{
			Namespace:    integration.NamespaceTest,
			TemplateSlug: templSlug,
		})
		assert.NoError(t, err)
	})
}
