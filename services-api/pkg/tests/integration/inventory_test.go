// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_inventories"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_inventory_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"

	"github.com/stretchr/testify/assert"

	"testing"
)

var (
	adminInventoriesService = &inventory.AdminInventoriesService{
		Client:          factory.NewInventoryClient(configRepo),
		TokenRepository: tokenRepository,
	}
	adminInventoryConfigurationsService = &inventory.AdminInventoryConfigurationsService{
		Client:          factory.NewInventoryClient(configRepo),
		TokenRepository: tokenRepository,
	}
	inventoryConfigurationCode = "go-sdk-code-" + RandStringBytes(4)
	initialMaxSlots            = int32(3)
	maxInstancesPerUser        = int32(2)
	maxUpgradeSlots            = int32(5)
)

func TestIntegrationInventory(t *testing.T) {
	// Login User - Arrange
	userID = GetUserID()

	// Create Inventory configuration\
	inputCreateInventoryConfig := &admin_inventory_configurations.AdminCreateInventoryConfigurationParams{
		Body: &inventoryclientmodels.ApimodelsCreateInventoryConfigurationReq{
			Code:                &inventoryConfigurationCode,
			Description:         "testing",
			InitialMaxSlots:     &initialMaxSlots,
			MaxInstancesPerUser: &maxInstancesPerUser,
			MaxUpgradeSlots:     &maxUpgradeSlots,
			Name:                inventoryConfigurationCode,
		},
		Namespace: integration.NamespaceTest,
	}

	createInventoryConfig, errCreateInventoryConfig := adminInventoryConfigurationsService.AdminCreateInventoryConfigurationShort(inputCreateInventoryConfig)

	// Assert
	assert.Nil(t, errCreateInventoryConfig, "err should be nil")
	assert.NotNil(t, createInventoryConfig, "response should not be nil")

	if createInventoryConfig != nil {
		t.Logf("Created inventory config with code: %v, id: %v", *createInventoryConfig.Code, *createInventoryConfig.ID)
	}

	defer func() {
		_ = deleteInventoryConfiguration(t, *createInventoryConfig.ID)
	}()

	// CASE Create inventory
	inputCreateInventory := &admin_inventories.AdminCreateInventoryParams{
		Body: &inventoryclientmodels.ApimodelsCreateInventoryReq{
			InventoryConfigurationCode: createInventoryConfig.Code,
			UserID:                     &userID,
		},
		Namespace: integration.NamespaceTest,
	}

	createInventoryOk, errCreateInventory := adminInventoriesService.AdminCreateInventoryShort(inputCreateInventory)
	// ESAC

	// Assert
	assert.Nil(t, errCreateInventory, "err should be nil")
	assert.NotNil(t, createInventoryOk, "response should not be nil")

	inventoryID := *createInventoryOk.ID
	t.Logf("Created inventory with id: %v", *createInventoryOk.ID)

	// CASE Get inventory
	inputGetInventory := &admin_inventories.AdminGetInventoryParams{
		InventoryID: inventoryID,
		Namespace:   integration.NamespaceTest,
	}
	getInventory, errGetInventory := adminInventoriesService.AdminGetInventoryShort(inputGetInventory)
	if errGetInventory != nil {
		assert.FailNow(t, errGetInventory.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errGetInventory, "err should be nil")
	assert.NotNil(t, getInventory, "should not be nil")

	t.Logf("Get inventory with id: %v", *getInventory.InventoryConfigurationID)

	// CASE Update inventory
	inputUpdateInventory := &admin_inventories.AdminUpdateInventoryParams{
		Body:        &inventoryclientmodels.ApimodelsUpdateInventoryReq{IncMaxSlots: &minNumber},
		InventoryID: inventoryID,
		Namespace:   integration.NamespaceTest,
	}

	updateInventory, errUpdateInventory := adminInventoriesService.AdminUpdateInventoryShort(inputUpdateInventory)
	// ESAC

	// Assert
	assert.Nil(t, errUpdateInventory, "err should be nil")
	assert.NotNil(t, updateInventory, "response should not be nil")
	assert.NotEqual(t, *updateInventory.MaxSlots, initialMaxSlots)

	messageInventory := "deleting " + inventoryConfigurationCode
	t.Logf("Update inventory with max slot: %v", *createInventoryOk.ID)

	// CASE Delete inventory
	inputDeleteInventory := &admin_inventories.DeleteInventoryParams{
		Body:        &inventoryclientmodels.ApimodelsDeleteInventoryReq{Message: &messageInventory},
		InventoryID: inventoryID,
		Namespace:   integration.NamespaceTest,
	}

	errDeleteInventory := adminInventoriesService.DeleteInventoryShort(inputDeleteInventory)
	// ESAC

	// Assert
	assert.Nil(t, errDeleteInventory, "err should be nil")
}

func deleteInventoryConfiguration(t *testing.T, inventoryConfigurationID string) error {
	t.Helper()

	errDeleteInventory := adminInventoryConfigurationsService.AdminDeleteInventoryConfigurationShort(&admin_inventory_configurations.AdminDeleteInventoryConfigurationParams{
		InventoryConfigurationID: inventoryConfigurationID,
		Namespace:                integration.NamespaceTest,
	})
	if errDeleteInventory != nil {
		assert.Nil(t, errDeleteInventory, "err should be nil")
	}

	return nil
}
