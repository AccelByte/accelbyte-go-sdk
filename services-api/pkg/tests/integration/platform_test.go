// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	storeService = &platform.StoreService{
		Client:          factory.NewPlatformClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	language  = "en-US"
	region    = "US"
	title     = "Go Test SDK"
	bodyStore = &platformclientmodels.StoreCreate{
		DefaultLanguage: language,
		DefaultRegion:   region,
		Description:     title,
		Title:           &title,
	}
	bodyStoreUpdate = &platformclientmodels.StoreUpdate{
		DefaultLanguage: language,
		DefaultRegion:   region,
		Description:     title,
		Title:           &title,
	}
)

func TestIntegrationStore(t *testing.T) {
	// Creating a store
	inputCreate := &store.CreateStoreParams{
		Body:      bodyStore,
		Namespace: integration.NamespaceTest,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	created, errCreate := storeService.CreateStore(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	storeId := *created.StoreID
	t.Logf("Store: %v created", storeId)

	// Getting a single store
	inputGet := &store.GetStoreParams{
		Namespace: integration.NamespaceTest,
		StoreID:   storeId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	get, errGet := storeService.GetStore(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	t.Logf("Store: %v get", storeId)

	// Updating a store
	inputUpdate := &store.UpdateStoreParams{
		Body:      bodyStoreUpdate,
		Namespace: integration.NamespaceTest,
		StoreID:   storeId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	updated, errUpdate := storeService.UpdateStore(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	t.Logf("Store: %v updated", storeId)

	// Deleting a store
	inputDelete := &store.DeleteStoreParams{
		Namespace: integration.NamespaceTest,
		StoreID:   storeId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	deleted, errDelete := storeService.DeleteStore(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	t.Logf("Store: %v deleted", storeId)

	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")
	assert.Nil(t, errDelete, "err should be nil")
	assert.NotNil(t, deleted, "response should not be nil")
}
