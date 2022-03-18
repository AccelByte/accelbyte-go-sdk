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
)

// Creating a store
func TestIntegrationCreateStore(t *testing.T) {
	inputStore := &store.CreateStoreParams{
		Body:      bodyStore,
		Namespace: integration.NamespaceTest,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := storeService.CreateStore(inputStore)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Deleting a store
func TestIntegrationDeleteStore(t *testing.T) {
	inputStoreCreate := &store.CreateStoreParams{
		Body:      bodyStore,
		Namespace: integration.NamespaceTest,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	created, err := storeService.CreateStore(inputStoreCreate)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	storeId := *created.StoreID
	inputStore := &store.DeleteStoreParams{
		Namespace: integration.NamespaceTest,
		StoreID:   storeId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, errOk := storeService.DeleteStore(inputStore)

	assert.Nil(t, errOk, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Getting a single store
func TestIntegrationGetStore(t *testing.T) {
	inputStoreCreate := &store.CreateStoreParams{
		Body:      bodyStore,
		Namespace: integration.NamespaceTest,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	created, err := storeService.CreateStore(inputStoreCreate)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	storeId := *created.StoreID
	inputStore := &store.GetStoreParams{
		Namespace: integration.NamespaceTest,
		StoreID:   storeId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, errOk := storeService.GetStore(inputStore)

	assert.Nil(t, errOk, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating a store
func TestIntegrationUpdateStore(t *testing.T) {
	inputStoreCreate := &store.CreateStoreParams{
		Body:      bodyStore,
		Namespace: integration.NamespaceTest,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	created, err := storeService.CreateStore(inputStoreCreate)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	storeId := *created.StoreID
	bodyStoreUpdate := &platformclientmodels.StoreUpdate{
		DefaultLanguage: language,
		DefaultRegion:   region,
		Description:     title,
		Title:           &title,
	}
	inputStore := &store.UpdateStoreParams{
		Body:      bodyStoreUpdate,
		Namespace: integration.NamespaceTest,
		StoreID:   storeId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, errOk := storeService.UpdateStore(inputStore)

	assert.Nil(t, errOk, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
