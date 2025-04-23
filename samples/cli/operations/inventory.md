## Go Extend SDK CLI Sample App Operation Index for Inventory service.

### Operation `admin_create_chaining_operations`
```sh
$ samples/cli/sample-apps Inventory adminCreateChainingOperations \
    --namespace 'string' \
    --body '{"message": "string", "operations": [{}], "requestId": "string"}' \
    > result.txt
```

### Operation `admin_list_integration_configurations`
```sh
$ samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    > result.txt
```

### Operation `admin_create_integration_configuration`
```sh
$ samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace 'string' \
    --body '{"mapItemType": ["string"], "serviceName": "string", "targetInventoryCode": "string"}' \
    > result.txt
```

### Operation `admin_update_integration_configuration`
```sh
$ samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'string' \
    --namespace 'string' \
    --body '{"mapItemType": ["string"], "serviceName": "string", "targetInventoryCode": "string"}' \
    > result.txt
```

### Operation `admin_update_status_integration_configuration`
```sh
$ samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'string' \
    --namespace 'string' \
    --body '{"status": "INIT"}' \
    > result.txt
```

### Operation `admin_list_inventories`
```sh
$ samples/cli/sample-apps Inventory adminListInventories \
    --namespace 'string' \
    --inventoryConfigurationCode 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_create_inventory`
```sh
$ samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace 'string' \
    --body '{"inventoryConfigurationCode": "string", "userId": "string"}' \
    > result.txt
```

### Operation `admin_get_inventory`
```sh
$ samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_inventory`
```sh
$ samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'string' \
    --namespace 'string' \
    --body '{"incMaxSlots": 1}' \
    > result.txt
```

### Operation `delete_inventory`
```sh
$ samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'string' \
    --namespace 'string' \
    --body '{"message": "string"}' \
    > result.txt
```

### Operation `admin_list_items`
```sh
$ samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    --sourceItemId 'string' \
    --tags 'string' \
    > result.txt
```

### Operation `admin_get_inventory_item`
```sh
$ samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'string' \
    --namespace 'string' \
    --slotId 'string' \
    --sourceItemId 'string' \
    > result.txt
```

### Operation `admin_list_inventory_configurations`
```sh
$ samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace 'string' \
    --code 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'code' \
    > result.txt
```

### Operation `admin_create_inventory_configuration`
```sh
$ samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace 'string' \
    --body '{"code": "string", "description": "string", "initialMaxSlots": 1, "maxInstancesPerUser": 1, "maxUpgradeSlots": 1, "name": "string"}' \
    > result.txt
```

### Operation `admin_get_inventory_configuration`
```sh
$ samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_inventory_configuration`
```sh
$ samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'string' \
    --namespace 'string' \
    --body '{"code": "string", "description": "string", "initialMaxSlots": 1, "maxInstancesPerUser": 1, "maxUpgradeSlots": 1, "name": "string"}' \
    > result.txt
```

### Operation `admin_delete_inventory_configuration`
```sh
$ samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_list_item_types`
```sh
$ samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    > result.txt
```

### Operation `admin_create_item_type`
```sh
$ samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace 'string' \
    --body '{"name": "string"}' \
    > result.txt
```

### Operation `admin_delete_item_type`
```sh
$ samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_list_tags`
```sh
$ samples/cli/sample-apps Inventory adminListTags \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --owner 'string' \
    --sortBy 'createdAt' \
    > result.txt
```

### Operation `admin_create_tag`
```sh
$ samples/cli/sample-apps Inventory adminCreateTag \
    --namespace 'string' \
    --body '{"name": "string", "owner": "CLIENT"}' \
    > result.txt
```

### Operation `admin_delete_tag`
```sh
$ samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace 'string' \
    --tagName 'string' \
    > result.txt
```

### Operation `admin_consume_user_item`
```sh
$ samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --dateRangeValidation 'string' \
    --body '{"options": ["string"], "qty": 1, "slotId": "string", "sourceItemId": "string"}' \
    > result.txt
```

### Operation `admin_bulk_update_my_items`
```sh
$ samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"customAttributes": {"string": {}}, "serverCustomAttributes": {"string": {}}, "slotId": "string", "sourceItemId": "string", "tags": ["string"], "type": "string"}]' \
    > result.txt
```

### Operation `admin_save_item_to_inventory`
```sh
$ samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"customAttributes": {"string": {}}, "qty": 1, "serverCustomAttributes": {"string": {}}, "slotId": "string", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "string", "tags": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `admin_bulk_remove_items`
```sh
$ samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"slotId": "string", "sourceItemId": "string"}]' \
    > result.txt
```

### Operation `admin_bulk_save_item_to_inventory`
```sh
$ samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"customAttributes": {"string": {}}, "qty": 1, "serverCustomAttributes": {"string": {}}, "slotId": "string", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "string", "tags": ["string"], "type": "string"}]' \
    > result.txt
```

### Operation `admin_update_user_inventories_by_inventory_code`
```sh
$ samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"incMaxSlots": 1}' \
    > result.txt
```

### Operation `admin_save_item`
```sh
$ samples/cli/sample-apps Inventory adminSaveItem \
    --namespace 'string' \
    --userId 'string' \
    --body '{"customAttributes": {"string": {}}, "inventoryConfigurationCode": "string", "qty": 1, "serverCustomAttributes": {"string": {}}, "slotId": "string", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "string", "tags": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `admin_bulk_save_item`
```sh
$ samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"customAttributes": {"string": {}}, "inventoryConfigurationCode": "string", "qty": 1, "serverCustomAttributes": {"string": {}}, "slotId": "string", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "string", "tags": ["string"], "type": "string"}]' \
    > result.txt
```

### Operation `admin_sync_user_entitlements`
```sh
$ samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_purchasable`
```sh
$ samples/cli/sample-apps Inventory adminPurchasable \
    --namespace 'string' \
    --userId 'string' \
    --body '{"entitlementType": "string", "inventoryConfig": {}, "itemId": "string", "itemType": "string", "items": [{}], "quantity": 1, "sku": "string", "stackable": false, "useCount": 1}' \
    > result.txt
```

### Operation `public_list_inventory_configurations`
```sh
$ samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace 'string' \
    --code 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'code' \
    > result.txt
```

### Operation `public_list_item_types`
```sh
$ samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    > result.txt
```

### Operation `public_list_tags`
```sh
$ samples/cli/sample-apps Inventory publicListTags \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    > result.txt
```

### Operation `public_list_inventories`
```sh
$ samples/cli/sample-apps Inventory publicListInventories \
    --namespace 'string' \
    --inventoryConfigurationCode 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    > result.txt
```

### Operation `public_consume_my_item`
```sh
$ samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'string' \
    --namespace 'string' \
    --body '{"options": ["string"], "qty": 1, "slotId": "string", "sourceItemId": "string"}' \
    > result.txt
```

### Operation `public_list_items`
```sh
$ samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    --sourceItemId 'string' \
    --tags 'string' \
    > result.txt
```

### Operation `public_bulk_update_my_items`
```sh
$ samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'string' \
    --namespace 'string' \
    --body '[{"customAttributes": {"string": {}}, "slotId": "string", "sourceItemId": "string", "tags": ["string"]}]' \
    > result.txt
```

### Operation `public_bulk_remove_my_items`
```sh
$ samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'string' \
    --namespace 'string' \
    --body '[{"slotId": "string", "sourceItemId": "string"}]' \
    > result.txt
```

### Operation `public_move_my_items`
```sh
$ samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'string' \
    --namespace 'string' \
    --body '{"items": [{}], "srcInventoryId": "string"}' \
    > result.txt
```

### Operation `public_get_item`
```sh
$ samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'string' \
    --namespace 'string' \
    --slotId 'string' \
    --sourceItemId 'string' \
    > result.txt
```

