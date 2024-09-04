# Inventory Service Index

&nbsp;

## Operations

### Admin Chaining Operations Wrapper:  [AdminChainingOperations](../../services-api/pkg/service/inventory/adminChainingOperations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/admin/namespaces/{namespace}/chainingOperations` | POST | AdminCreateChainingOperationsShort | [AdminCreateChainingOperationsShort](../../inventory-sdk/pkg/inventoryclient/admin_chaining_operations/admin_chaining_operations_client.go) | [AdminCreateChainingOperationsShort](../../services-api/pkg/service/inventory/adminChainingOperations.go) | [AdminCreateChainingOperationsShort](../../samples/cli/cmd/inventory/adminChainingOperations/adminCreateChainingOperations.go) |

### Admin Integration Configurations Wrapper:  [AdminIntegrationConfigurations](../../services-api/pkg/service/inventory/adminIntegrationConfigurations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/admin/namespaces/{namespace}/integrationConfigurations` | GET | AdminListIntegrationConfigurationsShort | [AdminListIntegrationConfigurationsShort](../../inventory-sdk/pkg/inventoryclient/admin_integration_configurations/admin_integration_configurations_client.go) | [AdminListIntegrationConfigurationsShort](../../services-api/pkg/service/inventory/adminIntegrationConfigurations.go) | [AdminListIntegrationConfigurationsShort](../../samples/cli/cmd/inventory/adminIntegrationConfigurations/adminListIntegrationConfigurations.go) |
| `/inventory/v1/admin/namespaces/{namespace}/integrationConfigurations` | POST | AdminCreateIntegrationConfigurationShort | [AdminCreateIntegrationConfigurationShort](../../inventory-sdk/pkg/inventoryclient/admin_integration_configurations/admin_integration_configurations_client.go) | [AdminCreateIntegrationConfigurationShort](../../services-api/pkg/service/inventory/adminIntegrationConfigurations.go) | [AdminCreateIntegrationConfigurationShort](../../samples/cli/cmd/inventory/adminIntegrationConfigurations/adminCreateIntegrationConfiguration.go) |
| `/inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}` | PUT | AdminUpdateIntegrationConfigurationShort | [AdminUpdateIntegrationConfigurationShort](../../inventory-sdk/pkg/inventoryclient/admin_integration_configurations/admin_integration_configurations_client.go) | [AdminUpdateIntegrationConfigurationShort](../../services-api/pkg/service/inventory/adminIntegrationConfigurations.go) | [AdminUpdateIntegrationConfigurationShort](../../samples/cli/cmd/inventory/adminIntegrationConfigurations/adminUpdateIntegrationConfiguration.go) |
| `/inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}/status` | PUT | AdminUpdateStatusIntegrationConfigurationShort | [AdminUpdateStatusIntegrationConfigurationShort](../../inventory-sdk/pkg/inventoryclient/admin_integration_configurations/admin_integration_configurations_client.go) | [AdminUpdateStatusIntegrationConfigurationShort](../../services-api/pkg/service/inventory/adminIntegrationConfigurations.go) | [AdminUpdateStatusIntegrationConfigurationShort](../../samples/cli/cmd/inventory/adminIntegrationConfigurations/adminUpdateStatusIntegrationConfiguration.go) |

### Admin Inventories Wrapper:  [AdminInventories](../../services-api/pkg/service/inventory/adminInventories.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/admin/namespaces/{namespace}/inventories` | GET | AdminListInventoriesShort | [AdminListInventoriesShort](../../inventory-sdk/pkg/inventoryclient/admin_inventories/admin_inventories_client.go) | [AdminListInventoriesShort](../../services-api/pkg/service/inventory/adminInventories.go) | [AdminListInventoriesShort](../../samples/cli/cmd/inventory/adminInventories/adminListInventories.go) |
| `/inventory/v1/admin/namespaces/{namespace}/inventories` | POST | AdminCreateInventoryShort | [AdminCreateInventoryShort](../../inventory-sdk/pkg/inventoryclient/admin_inventories/admin_inventories_client.go) | [AdminCreateInventoryShort](../../services-api/pkg/service/inventory/adminInventories.go) | [AdminCreateInventoryShort](../../samples/cli/cmd/inventory/adminInventories/adminCreateInventory.go) |
| `/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}` | GET | AdminGetInventoryShort | [AdminGetInventoryShort](../../inventory-sdk/pkg/inventoryclient/admin_inventories/admin_inventories_client.go) | [AdminGetInventoryShort](../../services-api/pkg/service/inventory/adminInventories.go) | [AdminGetInventoryShort](../../samples/cli/cmd/inventory/adminInventories/adminGetInventory.go) |
| `/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}` | PUT | AdminUpdateInventoryShort | [AdminUpdateInventoryShort](../../inventory-sdk/pkg/inventoryclient/admin_inventories/admin_inventories_client.go) | [AdminUpdateInventoryShort](../../services-api/pkg/service/inventory/adminInventories.go) | [AdminUpdateInventoryShort](../../samples/cli/cmd/inventory/adminInventories/adminUpdateInventory.go) |
| `/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}` | DELETE | DeleteInventoryShort | [DeleteInventoryShort](../../inventory-sdk/pkg/inventoryclient/admin_inventories/admin_inventories_client.go) | [DeleteInventoryShort](../../services-api/pkg/service/inventory/adminInventories.go) | [DeleteInventoryShort](../../samples/cli/cmd/inventory/adminInventories/deleteInventory.go) |
| `/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories` | PUT | AdminUpdateUserInventoriesByInventoryCodeShort | [AdminUpdateUserInventoriesByInventoryCodeShort](../../inventory-sdk/pkg/inventoryclient/admin_inventories/admin_inventories_client.go) | [AdminUpdateUserInventoriesByInventoryCodeShort](../../services-api/pkg/service/inventory/adminInventories.go) | [AdminUpdateUserInventoriesByInventoryCodeShort](../../samples/cli/cmd/inventory/adminInventories/adminUpdateUserInventoriesByInventoryCode.go) |
| `/inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable` | POST | AdminPurchasableShort | [AdminPurchasableShort](../../inventory-sdk/pkg/inventoryclient/admin_inventories/admin_inventories_client.go) | [AdminPurchasableShort](../../services-api/pkg/service/inventory/adminInventories.go) | [AdminPurchasableShort](../../samples/cli/cmd/inventory/adminInventories/adminPurchasable.go) |

### Admin Items Wrapper:  [AdminItems](../../services-api/pkg/service/inventory/adminItems.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items` | GET | AdminListItemsShort | [AdminListItemsShort](../../inventory-sdk/pkg/inventoryclient/admin_items/admin_items_client.go) | [AdminListItemsShort](../../services-api/pkg/service/inventory/adminItems.go) | [AdminListItemsShort](../../samples/cli/cmd/inventory/adminItems/adminListItems.go) |
| `/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/slots/{slotId}/sourceItems/{sourceItemId}` | GET | AdminGetInventoryItemShort | [AdminGetInventoryItemShort](../../inventory-sdk/pkg/inventoryclient/admin_items/admin_items_client.go) | [AdminGetInventoryItemShort](../../services-api/pkg/service/inventory/adminItems.go) | [AdminGetInventoryItemShort](../../samples/cli/cmd/inventory/adminItems/adminGetInventoryItem.go) |
| `/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume` | POST | AdminConsumeUserItemShort | [AdminConsumeUserItemShort](../../inventory-sdk/pkg/inventoryclient/admin_items/admin_items_client.go) | [AdminConsumeUserItemShort](../../services-api/pkg/service/inventory/adminItems.go) | [AdminConsumeUserItemShort](../../samples/cli/cmd/inventory/adminItems/adminConsumeUserItem.go) |
| `/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items` | PUT | AdminBulkUpdateMyItemsShort | [AdminBulkUpdateMyItemsShort](../../inventory-sdk/pkg/inventoryclient/admin_items/admin_items_client.go) | [AdminBulkUpdateMyItemsShort](../../services-api/pkg/service/inventory/adminItems.go) | [AdminBulkUpdateMyItemsShort](../../samples/cli/cmd/inventory/adminItems/adminBulkUpdateMyItems.go) |
| `/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items` | POST | AdminSaveItemToInventoryShort | [AdminSaveItemToInventoryShort](../../inventory-sdk/pkg/inventoryclient/admin_items/admin_items_client.go) | [AdminSaveItemToInventoryShort](../../services-api/pkg/service/inventory/adminItems.go) | [AdminSaveItemToInventoryShort](../../samples/cli/cmd/inventory/adminItems/adminSaveItemToInventory.go) |
| `/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items` | DELETE | AdminBulkRemoveItemsShort | [AdminBulkRemoveItemsShort](../../inventory-sdk/pkg/inventoryclient/admin_items/admin_items_client.go) | [AdminBulkRemoveItemsShort](../../services-api/pkg/service/inventory/adminItems.go) | [AdminBulkRemoveItemsShort](../../samples/cli/cmd/inventory/adminItems/adminBulkRemoveItems.go) |
| `/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk` | POST | AdminBulkSaveItemToInventoryShort | [AdminBulkSaveItemToInventoryShort](../../inventory-sdk/pkg/inventoryclient/admin_items/admin_items_client.go) | [AdminBulkSaveItemToInventoryShort](../../services-api/pkg/service/inventory/adminItems.go) | [AdminBulkSaveItemToInventoryShort](../../samples/cli/cmd/inventory/adminItems/adminBulkSaveItemToInventory.go) |
| `/inventory/v1/admin/namespaces/{namespace}/users/{userId}/items` | POST | AdminSaveItemShort | [AdminSaveItemShort](../../inventory-sdk/pkg/inventoryclient/admin_items/admin_items_client.go) | [AdminSaveItemShort](../../services-api/pkg/service/inventory/adminItems.go) | [AdminSaveItemShort](../../samples/cli/cmd/inventory/adminItems/adminSaveItem.go) |
| `/inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk` | POST | AdminBulkSaveItemShort | [AdminBulkSaveItemShort](../../inventory-sdk/pkg/inventoryclient/admin_items/admin_items_client.go) | [AdminBulkSaveItemShort](../../services-api/pkg/service/inventory/adminItems.go) | [AdminBulkSaveItemShort](../../samples/cli/cmd/inventory/adminItems/adminBulkSaveItem.go) |
| `/inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync` | PUT | AdminSyncUserEntitlementsShort | [AdminSyncUserEntitlementsShort](../../inventory-sdk/pkg/inventoryclient/admin_items/admin_items_client.go) | [AdminSyncUserEntitlementsShort](../../services-api/pkg/service/inventory/adminItems.go) | [AdminSyncUserEntitlementsShort](../../samples/cli/cmd/inventory/adminItems/adminSyncUserEntitlements.go) |

### Admin Inventory Configurations Wrapper:  [AdminInventoryConfigurations](../../services-api/pkg/service/inventory/adminInventoryConfigurations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations` | GET | AdminListInventoryConfigurationsShort | [AdminListInventoryConfigurationsShort](../../inventory-sdk/pkg/inventoryclient/admin_inventory_configurations/admin_inventory_configurations_client.go) | [AdminListInventoryConfigurationsShort](../../services-api/pkg/service/inventory/adminInventoryConfigurations.go) | [AdminListInventoryConfigurationsShort](../../samples/cli/cmd/inventory/adminInventoryConfigurations/adminListInventoryConfigurations.go) |
| `/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations` | POST | AdminCreateInventoryConfigurationShort | [AdminCreateInventoryConfigurationShort](../../inventory-sdk/pkg/inventoryclient/admin_inventory_configurations/admin_inventory_configurations_client.go) | [AdminCreateInventoryConfigurationShort](../../services-api/pkg/service/inventory/adminInventoryConfigurations.go) | [AdminCreateInventoryConfigurationShort](../../samples/cli/cmd/inventory/adminInventoryConfigurations/adminCreateInventoryConfiguration.go) |
| `/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}` | GET | AdminGetInventoryConfigurationShort | [AdminGetInventoryConfigurationShort](../../inventory-sdk/pkg/inventoryclient/admin_inventory_configurations/admin_inventory_configurations_client.go) | [AdminGetInventoryConfigurationShort](../../services-api/pkg/service/inventory/adminInventoryConfigurations.go) | [AdminGetInventoryConfigurationShort](../../samples/cli/cmd/inventory/adminInventoryConfigurations/adminGetInventoryConfiguration.go) |
| `/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}` | PUT | AdminUpdateInventoryConfigurationShort | [AdminUpdateInventoryConfigurationShort](../../inventory-sdk/pkg/inventoryclient/admin_inventory_configurations/admin_inventory_configurations_client.go) | [AdminUpdateInventoryConfigurationShort](../../services-api/pkg/service/inventory/adminInventoryConfigurations.go) | [AdminUpdateInventoryConfigurationShort](../../samples/cli/cmd/inventory/adminInventoryConfigurations/adminUpdateInventoryConfiguration.go) |
| `/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}` | DELETE | AdminDeleteInventoryConfigurationShort | [AdminDeleteInventoryConfigurationShort](../../inventory-sdk/pkg/inventoryclient/admin_inventory_configurations/admin_inventory_configurations_client.go) | [AdminDeleteInventoryConfigurationShort](../../services-api/pkg/service/inventory/adminInventoryConfigurations.go) | [AdminDeleteInventoryConfigurationShort](../../samples/cli/cmd/inventory/adminInventoryConfigurations/adminDeleteInventoryConfiguration.go) |

### Admin Item Types Wrapper:  [AdminItemTypes](../../services-api/pkg/service/inventory/adminItemTypes.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/admin/namespaces/{namespace}/itemtypes` | GET | AdminListItemTypesShort | [AdminListItemTypesShort](../../inventory-sdk/pkg/inventoryclient/admin_item_types/admin_item_types_client.go) | [AdminListItemTypesShort](../../services-api/pkg/service/inventory/adminItemTypes.go) | [AdminListItemTypesShort](../../samples/cli/cmd/inventory/adminItemTypes/adminListItemTypes.go) |
| `/inventory/v1/admin/namespaces/{namespace}/itemtypes` | POST | AdminCreateItemTypeShort | [AdminCreateItemTypeShort](../../inventory-sdk/pkg/inventoryclient/admin_item_types/admin_item_types_client.go) | [AdminCreateItemTypeShort](../../services-api/pkg/service/inventory/adminItemTypes.go) | [AdminCreateItemTypeShort](../../samples/cli/cmd/inventory/adminItemTypes/adminCreateItemType.go) |
| `/inventory/v1/admin/namespaces/{namespace}/itemtypes/{itemTypeName}` | DELETE | AdminDeleteItemTypeShort | [AdminDeleteItemTypeShort](../../inventory-sdk/pkg/inventoryclient/admin_item_types/admin_item_types_client.go) | [AdminDeleteItemTypeShort](../../services-api/pkg/service/inventory/adminItemTypes.go) | [AdminDeleteItemTypeShort](../../samples/cli/cmd/inventory/adminItemTypes/adminDeleteItemType.go) |

### Admin Tags Wrapper:  [AdminTags](../../services-api/pkg/service/inventory/adminTags.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/admin/namespaces/{namespace}/tags` | GET | AdminListTagsShort | [AdminListTagsShort](../../inventory-sdk/pkg/inventoryclient/admin_tags/admin_tags_client.go) | [AdminListTagsShort](../../services-api/pkg/service/inventory/adminTags.go) | [AdminListTagsShort](../../samples/cli/cmd/inventory/adminTags/adminListTags.go) |
| `/inventory/v1/admin/namespaces/{namespace}/tags` | POST | AdminCreateTagShort | [AdminCreateTagShort](../../inventory-sdk/pkg/inventoryclient/admin_tags/admin_tags_client.go) | [AdminCreateTagShort](../../services-api/pkg/service/inventory/adminTags.go) | [AdminCreateTagShort](../../samples/cli/cmd/inventory/adminTags/adminCreateTag.go) |
| `/inventory/v1/admin/namespaces/{namespace}/tags/{tagName}` | DELETE | AdminDeleteTagShort | [AdminDeleteTagShort](../../inventory-sdk/pkg/inventoryclient/admin_tags/admin_tags_client.go) | [AdminDeleteTagShort](../../services-api/pkg/service/inventory/adminTags.go) | [AdminDeleteTagShort](../../samples/cli/cmd/inventory/adminTags/adminDeleteTag.go) |

### Public Inventory Configurations Wrapper:  [PublicInventoryConfigurations](../../services-api/pkg/service/inventory/publicInventoryConfigurations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/public/namespaces/{namespace}/inventoryConfigurations` | GET | PublicListInventoryConfigurationsShort | [PublicListInventoryConfigurationsShort](../../inventory-sdk/pkg/inventoryclient/public_inventory_configurations/public_inventory_configurations_client.go) | [PublicListInventoryConfigurationsShort](../../services-api/pkg/service/inventory/publicInventoryConfigurations.go) | [PublicListInventoryConfigurationsShort](../../samples/cli/cmd/inventory/publicInventoryConfigurations/publicListInventoryConfigurations.go) |

### Public Item Types Wrapper:  [PublicItemTypes](../../services-api/pkg/service/inventory/publicItemTypes.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/public/namespaces/{namespace}/itemtypes` | GET | PublicListItemTypesShort | [PublicListItemTypesShort](../../inventory-sdk/pkg/inventoryclient/public_item_types/public_item_types_client.go) | [PublicListItemTypesShort](../../services-api/pkg/service/inventory/publicItemTypes.go) | [PublicListItemTypesShort](../../samples/cli/cmd/inventory/publicItemTypes/publicListItemTypes.go) |

### Public Tags Wrapper:  [PublicTags](../../services-api/pkg/service/inventory/publicTags.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/public/namespaces/{namespace}/tags` | GET | PublicListTagsShort | [PublicListTagsShort](../../inventory-sdk/pkg/inventoryclient/public_tags/public_tags_client.go) | [PublicListTagsShort](../../services-api/pkg/service/inventory/publicTags.go) | [PublicListTagsShort](../../samples/cli/cmd/inventory/publicTags/publicListTags.go) |

### Public Inventories Wrapper:  [PublicInventories](../../services-api/pkg/service/inventory/publicInventories.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/public/namespaces/{namespace}/users/me/inventories` | GET | PublicListInventoriesShort | [PublicListInventoriesShort](../../inventory-sdk/pkg/inventoryclient/public_inventories/public_inventories_client.go) | [PublicListInventoriesShort](../../services-api/pkg/service/inventory/publicInventories.go) | [PublicListInventoriesShort](../../samples/cli/cmd/inventory/publicInventories/publicListInventories.go) |

### Public Items Wrapper:  [PublicItems](../../services-api/pkg/service/inventory/publicItems.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/consume` | POST | PublicConsumeMyItemShort | [PublicConsumeMyItemShort](../../inventory-sdk/pkg/inventoryclient/public_items/public_items_client.go) | [PublicConsumeMyItemShort](../../services-api/pkg/service/inventory/publicItems.go) | [PublicConsumeMyItemShort](../../samples/cli/cmd/inventory/publicItems/publicConsumeMyItem.go) |
| `/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items` | GET | PublicListItemsShort | [PublicListItemsShort](../../inventory-sdk/pkg/inventoryclient/public_items/public_items_client.go) | [PublicListItemsShort](../../services-api/pkg/service/inventory/publicItems.go) | [PublicListItemsShort](../../samples/cli/cmd/inventory/publicItems/publicListItems.go) |
| `/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items` | PUT | PublicBulkUpdateMyItemsShort | [PublicBulkUpdateMyItemsShort](../../inventory-sdk/pkg/inventoryclient/public_items/public_items_client.go) | [PublicBulkUpdateMyItemsShort](../../services-api/pkg/service/inventory/publicItems.go) | [PublicBulkUpdateMyItemsShort](../../samples/cli/cmd/inventory/publicItems/publicBulkUpdateMyItems.go) |
| `/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items` | DELETE | PublicBulkRemoveMyItemsShort | [PublicBulkRemoveMyItemsShort](../../inventory-sdk/pkg/inventoryclient/public_items/public_items_client.go) | [PublicBulkRemoveMyItemsShort](../../services-api/pkg/service/inventory/publicItems.go) | [PublicBulkRemoveMyItemsShort](../../samples/cli/cmd/inventory/publicItems/publicBulkRemoveMyItems.go) |
| `/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items/movement` | POST | PublicMoveMyItemsShort | [PublicMoveMyItemsShort](../../inventory-sdk/pkg/inventoryclient/public_items/public_items_client.go) | [PublicMoveMyItemsShort](../../services-api/pkg/service/inventory/publicItems.go) | [PublicMoveMyItemsShort](../../samples/cli/cmd/inventory/publicItems/publicMoveMyItems.go) |
| `/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/slots/{slotId}/sourceItems/{sourceItemId}` | GET | PublicGetItemShort | [PublicGetItemShort](../../inventory-sdk/pkg/inventoryclient/public_items/public_items_client.go) | [PublicGetItemShort](../../services-api/pkg/service/inventory/publicItems.go) | [PublicGetItemShort](../../samples/cli/cmd/inventory/publicItems/publicGetItem.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `apimodels.AdminUpdateItemReq` | [ApimodelsAdminUpdateItemReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_admin_update_item_req.go) |
| `apimodels.BulkSaveItemError` | [ApimodelsBulkSaveItemError ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_bulk_save_item_error.go) |
| `apimodels.BulkSaveItemResp` | [ApimodelsBulkSaveItemResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_bulk_save_item_resp.go) |
| `apimodels.ChainingOperationReq` | [ApimodelsChainingOperationReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_chaining_operation_req.go) |
| `apimodels.ChainingOperationResp` | [ApimodelsChainingOperationResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_chaining_operation_resp.go) |
| `apimodels.ConsumeItem` | [ApimodelsConsumeItem ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_consume_item.go) |
| `apimodels.ConsumeItemReq` | [ApimodelsConsumeItemReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_consume_item_req.go) |
| `apimodels.CreateIntegrationConfigurationReq` | [ApimodelsCreateIntegrationConfigurationReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_create_integration_configuration_req.go) |
| `apimodels.CreateInventoryConfigurationReq` | [ApimodelsCreateInventoryConfigurationReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_create_inventory_configuration_req.go) |
| `apimodels.CreateInventoryReq` | [ApimodelsCreateInventoryReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_create_inventory_req.go) |
| `apimodels.CreateItem` | [ApimodelsCreateItem ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_create_item.go) |
| `apimodels.CreateItemTypeReq` | [ApimodelsCreateItemTypeReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_create_item_type_req.go) |
| `apimodels.CreateItemTypeResp` | [ApimodelsCreateItemTypeResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_create_item_type_resp.go) |
| `apimodels.CreateTagReq` | [ApimodelsCreateTagReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_create_tag_req.go) |
| `apimodels.CreateTagResp` | [ApimodelsCreateTagResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_create_tag_resp.go) |
| `apimodels.DeleteInventoryReq` | [ApimodelsDeleteInventoryReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_delete_inventory_req.go) |
| `apimodels.ErrorResponse` | [ApimodelsErrorResponse ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_error_response.go) |
| `apimodels.IntegrationConfigurationResp` | [ApimodelsIntegrationConfigurationResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_integration_configuration_resp.go) |
| `apimodels.InventoryConfig` | [ApimodelsInventoryConfig ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_inventory_config.go) |
| `apimodels.InventoryConfigurationReq` | [ApimodelsInventoryConfigurationReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_inventory_configuration_req.go) |
| `apimodels.InventoryConfigurationResp` | [ApimodelsInventoryConfigurationResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_inventory_configuration_resp.go) |
| `apimodels.InventoryResp` | [ApimodelsInventoryResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_inventory_resp.go) |
| `apimodels.ItemResp` | [ApimodelsItemResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_item_resp.go) |
| `apimodels.ListIntegrationConfigurationsResp` | [ApimodelsListIntegrationConfigurationsResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_list_integration_configurations_resp.go) |
| `apimodels.ListInventoryConfigurationsResp` | [ApimodelsListInventoryConfigurationsResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_list_inventory_configurations_resp.go) |
| `apimodels.ListInventoryResp` | [ApimodelsListInventoryResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_list_inventory_resp.go) |
| `apimodels.ListItemResp` | [ApimodelsListItemResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_list_item_resp.go) |
| `apimodels.ListItemTypesResp` | [ApimodelsListItemTypesResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_list_item_types_resp.go) |
| `apimodels.ListTagsResp` | [ApimodelsListTagsResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_list_tags_resp.go) |
| `apimodels.MoveItemsReq` | [ApimodelsMoveItemsReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_move_items_req.go) |
| `apimodels.MoveItemsResp` | [ApimodelsMoveItemsResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_move_items_resp.go) |
| `apimodels.Operation` | [ApimodelsOperation ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_operation.go) |
| `apimodels.Paging` | [ApimodelsPaging ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_paging.go) |
| `apimodels.PurchaseValidationItemReq` | [ApimodelsPurchaseValidationItemReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_purchase_validation_item_req.go) |
| `apimodels.PurchaseValidationReq` | [ApimodelsPurchaseValidationReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_purchase_validation_req.go) |
| `apimodels.RemoveInventoryItemReq` | [ApimodelsRemoveInventoryItemReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_remove_inventory_item_req.go) |
| `apimodels.RemoveItem` | [ApimodelsRemoveItem ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_remove_item.go) |
| `apimodels.SaveItemReq` | [ApimodelsSaveItemReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_save_item_req.go) |
| `apimodels.SaveItemToInventoryReq` | [ApimodelsSaveItemToInventoryReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_save_item_to_inventory_req.go) |
| `apimodels.TradeItem` | [ApimodelsTradeItem ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_trade_item.go) |
| `apimodels.TradeItemResp` | [ApimodelsTradeItemResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_trade_item_resp.go) |
| `apimodels.UpdateIntegrationConfigurationReq` | [ApimodelsUpdateIntegrationConfigurationReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_update_integration_configuration_req.go) |
| `apimodels.UpdateInventoryReq` | [ApimodelsUpdateInventoryReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_update_inventory_req.go) |
| `apimodels.UpdateItem` | [ApimodelsUpdateItem ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_update_item.go) |
| `apimodels.UpdateItemReq` | [ApimodelsUpdateItemReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_update_item_req.go) |
| `apimodels.UpdateItemResp` | [ApimodelsUpdateItemResp ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_update_item_resp.go) |
| `apimodels.UpdateStatusIntegrationConfigurationReq` | [ApimodelsUpdateStatusIntegrationConfigurationReq ](../../inventory-sdk/pkg/inventoryclientmodels/apimodels_update_status_integration_configuration_req.go) |
