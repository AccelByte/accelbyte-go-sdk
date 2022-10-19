// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_tag"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

var (
	adminTagService = &ugc.AdminTagService{
		Client:          factory.NewUgcClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	tag           = "GoSDKTag"
	tagUpdate     = "GoSDKTagUpdate"
	bodyTag       = &ugcclientmodels.ModelsCreateTagRequest{Tag: &tag}
	bodyTagUpdate = &ugcclientmodels.ModelsCreateTagRequest{Tag: &tagUpdate}
)

func TestIntegrationTag(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create tag
	inputCreate := &admin_tag.AdminCreateTagParams{
		Body:      bodyTag,
		Namespace: integration.NamespaceTest,
	}

	created, errCreate := adminTagService.AdminCreateTagShort(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	tagID := *created.ID
	t.Logf("TagId: %v created", tagID)
	// ESAC

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	// CASE Get tag
	inputGet := &admin_tag.AdminGetTagParams{
		Limit:     nil,
		Namespace: integration.NamespaceTest,
		Offset:    nil,
	}
	get, errGet := adminTagService.AdminGetTagShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}

	t.Log("Tag acquired")
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")

	// CASE Update a tag
	inputUpdate := &admin_tag.AdminUpdateTagParams{
		Body:      bodyTagUpdate,
		Namespace: integration.NamespaceTest,
		TagID:     tagID,
	}

	updated, errUpdate := adminTagService.AdminUpdateTagShort(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")

	// CASE Delete a tag
	inputDelete := &admin_tag.AdminDeleteTagParams{
		Namespace: integration.NamespaceTest,
		TagID:     tagID,
	}

	errDelete := adminTagService.AdminDeleteTagShort(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
}
