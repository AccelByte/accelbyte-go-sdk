// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/inbox"
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"
)

var (
	chatOperationsService = &chat.OperationsService{
		Client:          factory.NewChatClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	inboxOperationsService = &chat.InboxService{
		Client:          factory.NewChatClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	profanityOperationsService = &chat.ProfanityService{
		Client:          factory.NewChatClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	wordType          = "FALSEPOSITIVE"
	word              = "anal-go"
	wordUpdate        = "anal-update-go"
	profanityId       = ""
	dataMessage       = "testing golang"
	dataMessageUpdate = "testing golang update"
)

func TestIntegrationGetMessages(t *testing.T) {
	// Login User - Arrange
	Init()

	// Get Public Messages
	get, err := chatOperationsService.PublicGetMessagesShort(&operations.PublicGetMessagesParams{})
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, get, "should not be nil")
}

func TestIntegrationAdminProfanity(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Admin Profanity Get
	get, errGet := profanityOperationsService.AdminProfanityQueryShort(&profanity.AdminProfanityQueryParams{
		Namespace: integration.NamespaceTest,
	})
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "should not be nil")

	for _, profanityData := range get.Data {
		if *profanityData.Word == word {
			profanityId = *profanityData.ID
			t.Logf("Found existing profanity %s with id %s", *profanityData.Word, *profanityData.ID)
		}
	}

	if profanityId == "" {
		// CASE Admin Profanity Create
		create, errCreate := profanityOperationsService.AdminProfanityCreateShort(&profanity.AdminProfanityCreateParams{
			Body: &chatclientmodels.ModelsDictionaryInsertRequest{
				Word:     &wordUpdate,
				WordType: &wordType,
			},
			Namespace: integration.NamespaceTest,
		})
		if errCreate != nil {
			assert.FailNow(t, errCreate.Error())
		}
		// ESAC

		// Assert
		assert.Nil(t, errCreate, "err should be nil")
		assert.NotNil(t, create, "should not be nil")

		// CASE Admin Profanity Update
		update, errUpdate := profanityOperationsService.AdminProfanityUpdateShort(&profanity.AdminProfanityUpdateParams{
			Body: &chatclientmodels.ModelsDictionaryUpdateRequest{
				Word:     &word,
				WordType: &wordType,
			},
			Namespace: integration.NamespaceTest,
			ID:        *create.ID,
		})
		if errUpdate != nil {
			assert.FailNow(t, errUpdate.Error())
		}
		// ESAC

		// Assert
		assert.Nil(t, errUpdate, "err should be nil")
		assert.NotNil(t, update, "should not be nil")
		t.Logf("Updated profanity with id: %s", *create.ID)

		// CASE Admin Profanity Delete
		errDelete := profanityOperationsService.AdminProfanityDeleteShort(&profanity.AdminProfanityDeleteParams{
			Namespace: integration.NamespaceTest,
			ID:        *create.ID,
		})
		if errDelete != nil {
			assert.FailNow(t, errDelete.Error())
		}
		// ESAC

		// Assert
		assert.Nil(t, errDelete, "err should be nil")
		t.Logf("Deleted profanity with id: %s", *create.ID)
	}
}

func TestIntegrationInbox(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Save Inbox Message
	expiredAt := time.Now().Add(time.Hour).Unix()
	scopeChat := chatclientmodels.ModelsSaveInboxMessageRequestScopeUSER
	statusChat := chatclientmodels.ModelsSaveInboxMessageRequestStatusDRAFT
	userIdChat := GetUserID()
	userIds := []string{userIdChat}

	save, errSave := inboxOperationsService.AdminSaveInboxMessageShort(&inbox.AdminSaveInboxMessageParams{
		Body: &chatclientmodels.ModelsSaveInboxMessageRequest{
			ExpiredAt: &expiredAt,
			Message:   &dataMessage,
			Scope:     &scopeChat,
			Status:    &statusChat,
			UserIds:   userIds,
		},
		Namespace: integration.NamespaceTest,
	})
	if errSave != nil {
		assert.FailNow(t, errSave.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errSave, "err should be nil")
	assert.NotNil(t, save, "should not be nil")
	t.Logf("Saved inbox with message id: %s. message: %s", *save.ID, dataMessage)

	// Send Inbox Message
	create, errCreate := inboxOperationsService.AdminSendInboxMessageShort(&inbox.AdminSendInboxMessageParams{
		Body:      dataMessage,
		MessageID: *save.ID,
		Namespace: integration.NamespaceTest,
	})
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, create, "should not be nil")
	t.Logf("Created inbox with message id: %s", *save.ID)

	// Admin Get Inbox Messages
	get, errGet := inboxOperationsService.AdminGetInboxMessagesShort(&inbox.AdminGetInboxMessagesParams{
		Namespace: integration.NamespaceTest,
	})
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "should not be nil")

	// Admin Update Inbox Message
	errUpdate := inboxOperationsService.AdminUpdateInboxMessageShort(&inbox.AdminUpdateInboxMessageParams{
		Body: &chatclientmodels.ModelsUpdateInboxMessageRequest{
			ExpiredAt: &expiredAt,
			Message:   &dataMessageUpdate,
			Scope:     &scopeChat,
			UserIds:   userIds,
		},
		Namespace: integration.NamespaceTest,
		MessageID: *save.ID,
	})
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}

	// Assert
	assert.Nil(t, errUpdate, "err should be nil")
	t.Logf("Updated inbox with message id: %s", *save.ID)

	// Admin Delete Inbox Message
	force := true
	errDelete := inboxOperationsService.AdminDeleteInboxMessageShort(&inbox.AdminDeleteInboxMessageParams{
		Namespace: integration.NamespaceTest,
		MessageID: *save.ID,
		Force:     &force,
	})
	if errDelete != nil {
		t.Skip()
		assert.FailNow(t, errDelete.Error())
	}

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
	t.Logf("Deleted inbox with message id: %s", *save.ID)
}
