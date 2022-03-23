// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_tag"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

var (
	adminTagService = &ugc.AdminTagService{
		Client:          factory.NewUgcClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	tag           = "GoSDKTag"
	tagUpdate     = "GoSDKTagUpdate"
	bodyTag       = &ugcclientmodels.ModelsCreateTagRequest{Tag: &tag}
	bodyTagUpdate = &ugcclientmodels.ModelsCreateTagRequest{Tag: &tagUpdate}
)

func TestIntegrationTag(t *testing.T) {
	t.Parallel()
	// Creating tags
	inputCreate := &admin_tag.AdminCreateTagParams{
		Body:      bodyTag,
		Namespace: integration.NamespaceTest,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	created, errCreate := adminTagService.AdminCreateTag(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	tagId := *created.ID
	t.Logf("TagId: %v created", tagId)

	// Getting tags
	inputGet := &admin_tag.AdminGetTagParams{
		Limit:     nil,
		Namespace: integration.NamespaceTest,
		Offset:    nil,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	get, errGet := adminTagService.AdminGetTag(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	t.Log("Tag acquired")

	// Updating a tag
	inputUpdate := &admin_tag.AdminUpdateTagParams{
		Body:      bodyTagUpdate,
		Namespace: integration.NamespaceTest,
		TagID:     tagId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	updated, errUpdate := adminTagService.AdminUpdateTag(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	t.Logf("TagId: %v updated", updated.ID)

	// Deleting a tag
	inputDelete := &admin_tag.AdminDeleteTagParams{
		Namespace: integration.NamespaceTest,
		TagID:     tagId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	errDelete := adminTagService.AdminDeleteTag(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	t.Logf("TagId: %v deleted", created.ID)

	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")
	assert.Nil(t, errDelete, "err should be nil")
}
