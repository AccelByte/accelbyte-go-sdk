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
)

// Creating tags
func TestIntegrationAdminCreateTag(t *testing.T) {
	inputTag := &admin_tag.AdminCreateTagParams{
		Body:      nil,
		Namespace: "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := adminTagService.AdminCreateTag(inputTag)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Deleting a tag
func TestIntegrationAdminDeleteTag(t *testing.T) {
	inputTag := &admin_tag.AdminDeleteTagParams{
		Namespace: "",
		TagID:     "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := adminTagService.AdminDeleteTag(inputTag)

	assert.Nil(t, err, "err should be nil")
}

// Getting tags
func TestIntegrationAdminGetTag(t *testing.T) {
	inputTag := &admin_tag.AdminGetTagParams{
		Limit:     nil,
		Namespace: "",
		Offset:    nil,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := adminTagService.AdminGetTag(inputTag)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating a tag
func TestIntegrationAdminUpdateTag(t *testing.T) {
	bodyTagUpdate := &ugcclientmodels.ModelsCreateTagRequest{Tag: nil}
	inputTag := &admin_tag.AdminUpdateTagParams{
		Body:      bodyTagUpdate,
		Namespace: "",
		TagID:     "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := adminTagService.AdminUpdateTag(inputTag)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
