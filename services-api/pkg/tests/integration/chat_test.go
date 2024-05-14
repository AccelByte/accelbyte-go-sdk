// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"strings"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/inbox"
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"
)

var (
	inboxOperationsService = &chat.InboxService{
		Client:          factory.NewChatClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	profanityOperationsService = &chat.ProfanityService{
		Client:          factory.NewChatClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
)

func TestIntegrationAdminProfanity(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("skip for ags starter")
	}

	profanityWord := "gosdktestprofanity"
	profanityWordType := "PROFANITY"
	profanityQueryIncludeChildren := false

	// Login User - Arrange
	Init()

	t.Logf("Adding profanity word: %s", profanityWord)

	// CASE Admin Profanity Create

	create, errCreate := profanityOperationsService.AdminProfanityCreateShort(&profanity.AdminProfanityCreateParams{
		Body: &chatclientmodels.ModelsDictionaryInsertRequest{
			Word:     &profanityWord,
			WordType: &profanityWordType,
		},
		Namespace: integration.NamespaceTest,
	})

	// ESAC

	// Assert
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	assert.NotNil(t, create, "should not be nil")

	defer TearDownTestIntegrationAdminProfanity(t, *create)

	t.Logf("Getting profanity word: %s", profanityWord)

	// CASE Admin Profanity Get

	get, errGet := profanityOperationsService.AdminProfanityQueryShort(&profanity.AdminProfanityQueryParams{
		Namespace:       integration.NamespaceTest,
		IncludeChildren: &profanityQueryIncludeChildren,
		WordType:        &profanityWordType,
		StartWith:       &profanityWord,
	})

	// ESAC

	// Assert
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	assert.NotNil(t, get, "should not be nil")
	profanityWordFound := false
	for _, profanityData := range get.Data {
		if *profanityData.Word == profanityWord {
			profanityWordFound = true
		}
	}
	assert.True(t, profanityWordFound)

	t.Logf("Updating profanity word: %s", profanityWord)

	// CASE Admin Profanity Update

	update, errUpdate := profanityOperationsService.AdminProfanityUpdateShort(&profanity.AdminProfanityUpdateParams{
		Body: &chatclientmodels.ModelsDictionaryUpdateRequest{
			Word:     &profanityWord,
			WordType: &profanityWordType,
		},
		Namespace: integration.NamespaceTest,
		ID:        *create.ID,
	})

	// ESAC

	// Assert
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	assert.NotNil(t, update, "should not be nil")
}

func TearDownTestIntegrationAdminProfanity(t *testing.T, create chatclientmodels.ModelsDictionary) {
	t.Helper()

	t.Logf("Deleting profanity word: %s", *create.Word)

	// CASE Admin Profanity Delete

	errDelete := profanityOperationsService.AdminProfanityDeleteShort(&profanity.AdminProfanityDeleteParams{
		Namespace: integration.NamespaceTest,
		ID:        *create.ID,
	})

	// ESAC

	// Assert
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
}

func TestIntegrationInbox(t *testing.T) {
	dataMessage := "GoSdkTestMessage"

	expiredAt := time.Now().Add(time.Hour).Unix()
	scopeChat := chatclientmodels.ModelsSaveInboxMessageRequestScopeUSER
	statusChat := chatclientmodels.ModelsSaveInboxMessageRequestStatusDRAFT
	userIdChat := GetUserID()
	userIds := []string{userIdChat}

	// Login User - Arrange
	Init()

	t.Logf("Saving inbox message: %s", dataMessage)

	// CASE Save Inbox Message

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

	// ESAC

	// Assert
	if errSave != nil {
		assert.FailNow(t, errSave.Error())
	}
	assert.NotNil(t, save, "should not be nil")

	defer TearDownTestIntegrationInbox(t, *save)

	t.Logf("Sending inbox message: %s", dataMessage)

	// CASE Send Inbox Message

	create, errCreate := inboxOperationsService.AdminSendInboxMessageShort(&inbox.AdminSendInboxMessageParams{
		Body:      dataMessage,
		MessageID: *save.ID,
		Namespace: integration.NamespaceTest,
	})

	// ESAC

	// Assert
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	assert.NotNil(t, create, "should not be nil")

	t.Logf("Getting inbox message: %s", dataMessage)

	// CASE Admin Get Inbox Messages

	get, errGet := inboxOperationsService.AdminGetInboxMessagesShort(&inbox.AdminGetInboxMessagesParams{
		Namespace: integration.NamespaceTest,
	})

	// ESAC

	// Assert
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	assert.NotNil(t, get, "should not be nil")

	t.Logf("Updating inbox message: %s", dataMessage)

	// CASE Admin Update Inbox Message

	errUpdate := inboxOperationsService.AdminUpdateInboxMessageShort(&inbox.AdminUpdateInboxMessageParams{
		Body: &chatclientmodels.ModelsUpdateInboxMessageRequest{
			ExpiredAt: &expiredAt,
			Message:   &dataMessage,
			Scope:     &scopeChat,
			UserIds:   userIds,
		},
		Namespace: integration.NamespaceTest,
		MessageID: *save.ID,
	})

	// ESAC

	// Assert
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
}

func TearDownTestIntegrationInbox(t *testing.T, save chatclientmodels.ModelsSaveInboxMessageResponse) {
	t.Helper()

	force := true

	t.Logf("Deleting inbox message: %s", save.Message)

	// CASE Admin Delete Inbox Message

	errDelete := inboxOperationsService.AdminDeleteInboxMessageShort(&inbox.AdminDeleteInboxMessageParams{
		Namespace: integration.NamespaceTest,
		MessageID: *save.ID,
		Force:     &force,
	})

	// ESAC

	// Assert
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
}

func TestIntegrationInboxCategory(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("skip for ags starter")
	}

	categoryName := "GoSdkTestCat"
	expiresIn := int64(3600000000)
	expiresInUpdate := int64(1800000000)

	// Login User - Arrange
	Init()

	defer TearDownTestIntegrationInboxCategory(t, categoryName)

	t.Logf("Adding chat inbox category: %s", categoryName)

	// CASE Add chat inbox category

	add, errAdd := inboxOperationsService.AdminAddInboxCategoryShort(&inbox.AdminAddInboxCategoryParams{
		Body: &chatclientmodels.ModelsAddInboxCategoryRequest{
			Name:      &categoryName,
			ExpiresIn: &expiresIn,
		},
		Namespace: integration.NamespaceTest,
	})

	// ESAC

	// Assert
	if errAdd != nil {
		assert.FailNow(t, errAdd.Error())
	}
	assert.NotNil(t, add, "should not be nil")

	t.Logf("Getting chat inbox category: %s", categoryName)

	// CASE Get chat inbox category

	get, errGet := inboxOperationsService.AdminGetInboxCategoriesShort(&inbox.AdminGetInboxCategoriesParams{
		Namespace: integration.NamespaceTest,
	})

	// ESAC

	// Assert
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	assert.NotNil(t, get, "should not be nil")

	t.Logf("Updating chat inbox category: %s", categoryName)

	// CASE Update chat inbox category

	errUpdate := inboxOperationsService.AdminUpdateInboxCategoryShort(&inbox.AdminUpdateInboxCategoryParams{
		Body: &chatclientmodels.ModelsUpdateInboxCategoryRequest{
			ExpiresIn: &expiresInUpdate,
		},
		Category:  categoryName,
		Namespace: integration.NamespaceTest,
	})

	// ESAC

	// Assert
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
}

func TearDownTestIntegrationInboxCategory(t *testing.T, categoryName string) {
	t.Helper()

	t.Logf("Deleting chat inbox category: %s", categoryName)

	// CASE Delete chat inbox category

	errDelete := inboxOperationsService.AdminDeleteInboxCategoryShort(&inbox.AdminDeleteInboxCategoryParams{
		Category:  categoryName,
		Namespace: integration.NamespaceTest,
	})

	// ESAC

	// Assert
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
}
