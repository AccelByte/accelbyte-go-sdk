## Go Extend SDK CLI Sample App Operation Index for Social service.

### Operation `get_global_stat_items`
```sh
$ samples/cli/sample-apps Social getGlobalStatItems \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --statCodes 'string' \
    > result.txt
```

### Operation `get_global_stat_item_by_stat_code`
```sh
$ samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace 'string' \
    --statCode 'string' \
    > result.txt
```

### Operation `get_stat_cycles`
```sh
$ samples/cli/sample-apps Social getStatCycles \
    --namespace 'string' \
    --cycleType 'ANNUALLY' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sortBy 'string' \
    --status 'ACTIVE' \
    > result.txt
```

### Operation `create_stat_cycle`
```sh
$ samples/cli/sample-apps Social createStatCycle \
    --namespace 'string' \
    --body '{"cycleType": "ANNUALLY", "description": "string", "end": "2000-01-01T12:34:56Z", "id": "string", "name": "string", "resetDate": 1, "resetDay": 1, "resetMonth": 1, "resetTime": "string", "seasonPeriod": 1, "start": "2000-01-01T12:34:56Z"}' \
    > result.txt
```

### Operation `bulk_get_stat_cycle`
```sh
$ samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace 'string' \
    --body '{"cycleIds": ["string"]}' \
    > result.txt
```

### Operation `export_stat_cycle`
```sh
$ samples/cli/sample-apps Social exportStatCycle \
    --namespace 'string' \
    > result.txt
```

### Operation `import_stat_cycle`
```sh
$ samples/cli/sample-apps Social importStatCycle \
    --namespace 'string' \
    --replaceExisting false \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_stat_cycle`
```sh
$ samples/cli/sample-apps Social getStatCycle \
    --cycleId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_stat_cycle`
```sh
$ samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'string' \
    --namespace 'string' \
    --body '{"cycleType": "ANNUALLY", "description": "string", "end": "2000-01-01T12:34:56Z", "name": "string", "resetDate": 1, "resetDay": 1, "resetMonth": 1, "resetTime": "string", "seasonPeriod": 1, "start": "2000-01-01T12:34:56Z"}' \
    > result.txt
```

### Operation `delete_stat_cycle`
```sh
$ samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `bulk_add_stats`
```sh
$ samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'string' \
    --namespace 'string' \
    --body '{"statCodes": ["string"]}' \
    > result.txt
```

### Operation `stop_stat_cycle`
```sh
$ samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `bulk_fetch_stat_items`
```sh
$ samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace 'string' \
    --statCode 'string' \
    --userIds 'string' \
    > result.txt
```

### Operation `bulk_inc_user_stat_item`
```sh
$ samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace 'string' \
    --body '[{"inc": 3.14, "statCode": "string", "userId": "string"}]' \
    > result.txt
```

### Operation `bulk_inc_user_stat_item_value`
```sh
$ samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace 'string' \
    --body '[{"inc": 3.14, "statCode": "string", "userId": "string"}]' \
    > result.txt
```

### Operation `bulk_fetch_or_default_stat_items`
```sh
$ samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace 'string' \
    --statCode 'string' \
    --userIds '["string"]' \
    > result.txt
```

### Operation `bulk_reset_user_stat_item`
```sh
$ samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace 'string' \
    --body '[{"statCode": "string", "userId": "string"}]' \
    > result.txt
```

### Operation `get_stats`
```sh
$ samples/cli/sample-apps Social getStats \
    --namespace 'string' \
    --cycleIds 'string' \
    --isGlobal false \
    --isPublic false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_stat`
```sh
$ samples/cli/sample-apps Social createStat \
    --namespace 'string' \
    --body '{"capCycleOverride": false, "cycleIds": ["string"], "cycleOverrides": [{}], "defaultValue": 3.14, "description": "string", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 3.14, "minimum": 3.14, "name": "string", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "string", "tags": ["string"], "visibility": "SERVERONLY"}' \
    > result.txt
```

### Operation `export_stats`
```sh
$ samples/cli/sample-apps Social exportStats \
    --namespace 'string' \
    > result.txt
```

### Operation `import_stats`
```sh
$ samples/cli/sample-apps Social importStats \
    --namespace 'string' \
    --replaceExisting false \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `query_stats`
```sh
$ samples/cli/sample-apps Social queryStats \
    --namespace 'string' \
    --isGlobal false \
    --isPublic false \
    --limit 1 \
    --offset 1 \
    --keyword 'string' \
    > result.txt
```

### Operation `get_stat`
```sh
$ samples/cli/sample-apps Social getStat \
    --namespace 'string' \
    --statCode 'string' \
    > result.txt
```

### Operation `delete_stat`
```sh
$ samples/cli/sample-apps Social deleteStat \
    --namespace 'string' \
    --statCode 'string' \
    > result.txt
```

### Operation `update_stat`
```sh
$ samples/cli/sample-apps Social updateStat \
    --namespace 'string' \
    --statCode 'string' \
    --body '{"capCycleOverride": false, "cycleIds": ["string"], "cycleOverrides": [{}], "defaultValue": 3.14, "description": "string", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "string", "tags": ["string"], "visibility": "SERVERONLY"}' \
    > result.txt
```

### Operation `get_stat_items`
```sh
$ samples/cli/sample-apps Social getStatItems \
    --namespace 'string' \
    --statCode 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    > result.txt
```

### Operation `delete_tied_stat`
```sh
$ samples/cli/sample-apps Social deleteTiedStat \
    --namespace 'string' \
    --statCode 'string' \
    > result.txt
```

### Operation `get_user_stat_cycle_items`
```sh
$ samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --isPublic false \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --statCodes 'string' \
    > result.txt
```

### Operation `get_user_stat_items`
```sh
$ samples/cli/sample-apps Social getUserStatItems \
    --namespace 'string' \
    --userId 'string' \
    --isPublic false \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --statCodes 'string' \
    --tags 'string' \
    > result.txt
```

### Operation `bulk_create_user_stat_items`
```sh
$ samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"statCode": "string"}]' \
    > result.txt
```

### Operation `bulk_inc_user_stat_item_1`
```sh
$ samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"inc": 3.14, "statCode": "string"}]' \
    > result.txt
```

### Operation `bulk_inc_user_stat_item_value_1`
```sh
$ samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"inc": 3.14, "statCode": "string"}]' \
    > result.txt
```

### Operation `bulk_reset_user_stat_item_1`
```sh
$ samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"statCode": "string"}]' \
    > result.txt
```

### Operation `create_user_stat_item`
```sh
$ samples/cli/sample-apps Social createUserStatItem \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `delete_user_stat_items`
```sh
$ samples/cli/sample-apps Social deleteUserStatItems \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `inc_user_stat_item_value`
```sh
$ samples/cli/sample-apps Social incUserStatItemValue \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    --body '{"inc": 3.14}' \
    > result.txt
```

### Operation `reset_user_stat_item_value`
```sh
$ samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    --additionalKey 'string' \
    --body '{"additionalData": {"string": {}}}' \
    > result.txt
```

### Operation `get_global_stat_items_1`
```sh
$ samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --statCodes 'string' \
    > result.txt
```

### Operation `get_global_stat_item_by_stat_code_1`
```sh
$ samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace 'string' \
    --statCode 'string' \
    > result.txt
```

### Operation `get_stat_cycles_1`
```sh
$ samples/cli/sample-apps Social getStatCycles1 \
    --namespace 'string' \
    --cycleType 'ANNUALLY' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sortBy 'string' \
    --status 'ACTIVE' \
    > result.txt
```

### Operation `bulk_get_stat_cycle_1`
```sh
$ samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace 'string' \
    --body '{"cycleIds": ["string"]}' \
    > result.txt
```

### Operation `get_stat_cycle_1`
```sh
$ samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `bulk_fetch_stat_items_1`
```sh
$ samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace 'string' \
    --statCode 'string' \
    --userIds 'string' \
    > result.txt
```

### Operation `public_bulk_inc_user_stat_item`
```sh
$ samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace 'string' \
    --body '[{"inc": 3.14, "statCode": "string", "userId": "string"}]' \
    > result.txt
```

### Operation `public_bulk_inc_user_stat_item_value`
```sh
$ samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace 'string' \
    --body '[{"inc": 3.14, "statCode": "string", "userId": "string"}]' \
    > result.txt
```

### Operation `bulk_reset_user_stat_item_2`
```sh
$ samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace 'string' \
    --body '[{"statCode": "string", "userId": "string"}]' \
    > result.txt
```

### Operation `create_stat_1`
```sh
$ samples/cli/sample-apps Social createStat1 \
    --namespace 'string' \
    --body '{"capCycleOverride": false, "cycleIds": ["string"], "cycleOverrides": [{}], "defaultValue": 3.14, "description": "string", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 3.14, "minimum": 3.14, "name": "string", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "string", "tags": ["string"], "visibility": "SERVERONLY"}' \
    > result.txt
```

### Operation `public_list_my_stat_cycle_items`
```sh
$ samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --statCodes '["string"]' \
    > result.txt
```

### Operation `public_list_my_stat_items`
```sh
$ samples/cli/sample-apps Social publicListMyStatItems \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --statCodes '["string"]' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_list_all_my_stat_items`
```sh
$ samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace 'string' \
    --additionalKey 'string' \
    --statCodes '["string"]' \
    --tags '["string"]' \
    > result.txt
```

### Operation `get_user_stat_cycle_items_1`
```sh
$ samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --statCodes 'string' \
    > result.txt
```

### Operation `public_query_user_stat_items_1`
```sh
$ samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --statCodes 'string' \
    --tags 'string' \
    > result.txt
```

### Operation `public_bulk_create_user_stat_items`
```sh
$ samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"statCode": "string"}]' \
    > result.txt
```

### Operation `public_query_user_stat_items`
```sh
$ samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace 'string' \
    --userId 'string' \
    --additionalKey 'string' \
    --statCodes '["string"]' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_bulk_inc_user_stat_item_1`
```sh
$ samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"inc": 3.14, "statCode": "string"}]' \
    > result.txt
```

### Operation `bulk_inc_user_stat_item_value_2`
```sh
$ samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"inc": 3.14, "statCode": "string"}]' \
    > result.txt
```

### Operation `bulk_reset_user_stat_item_3`
```sh
$ samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"statCode": "string"}]' \
    > result.txt
```

### Operation `public_create_user_stat_item`
```sh
$ samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `delete_user_stat_items_1`
```sh
$ samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_inc_user_stat_item`
```sh
$ samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    --body '{"inc": 3.14}' \
    > result.txt
```

### Operation `public_inc_user_stat_item_value`
```sh
$ samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    --body '{"inc": 3.14}' \
    > result.txt
```

### Operation `reset_user_stat_item_value_1`
```sh
$ samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `bulk_update_user_stat_item_v2`
```sh
$ samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace 'string' \
    --body '[{"additionalData": {"string": {}}, "additionalKey": "string", "requestId": "string", "statCode": "string", "updateStrategy": "INCREMENT", "userId": "string", "value": 3.14}]' \
    > result.txt
```

### Operation `bulk_fetch_or_default_stat_items_1`
```sh
$ samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace 'string' \
    --additionalKey 'string' \
    --statCode 'string' \
    --userIds '["string"]' \
    > result.txt
```

### Operation `admin_list_users_stat_items`
```sh
$ samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace 'string' \
    --userId 'string' \
    --additionalKey 'string' \
    --statCodes '["string"]' \
    --tags '["string"]' \
    > result.txt
```

### Operation `bulk_update_user_stat_item`
```sh
$ samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace 'string' \
    --userId 'string' \
    --additionalKey 'string' \
    --body '[{"additionalData": {"string": {}}, "requestId": "string", "statCode": "string", "updateStrategy": "INCREMENT", "value": 3.14}]' \
    > result.txt
```

### Operation `bulk_get_or_default_by_user_id`
```sh
$ samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace 'string' \
    --userId 'string' \
    --additionalKey 'string' \
    --body '{"statCodes": ["string"]}' \
    > result.txt
```

### Operation `bulk_reset_user_stat_item_values`
```sh
$ samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace 'string' \
    --userId 'string' \
    --additionalKey 'string' \
    --body '[{"additionalData": {"string": {}}, "statCode": "string"}]' \
    > result.txt
```

### Operation `delete_user_stat_items_2`
```sh
$ samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    --additionalKey 'string' \
    > result.txt
```

### Operation `update_user_stat_item_value`
```sh
$ samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    --additionalKey 'string' \
    --body '{"additionalData": {"string": {}}, "updateStrategy": "INCREMENT", "value": 3.14}' \
    > result.txt
```

### Operation `bulk_update_user_stat_item_1`
```sh
$ samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace 'string' \
    --body '[{"additionalData": {"string": {}}, "additionalKey": "string", "requestId": "string", "statCode": "string", "updateStrategy": "INCREMENT", "userId": "string", "value": 3.14}]' \
    > result.txt
```

### Operation `public_query_user_stat_items_2`
```sh
$ samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace 'string' \
    --userId 'string' \
    --additionalKey 'string' \
    --statCodes '["string"]' \
    --tags '["string"]' \
    > result.txt
```

### Operation `bulk_update_user_stat_item_2`
```sh
$ samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace 'string' \
    --userId 'string' \
    --additionalKey 'string' \
    --body '[{"additionalData": {"string": {}}, "requestId": "string", "statCode": "string", "updateStrategy": "INCREMENT", "value": 3.14}]' \
    > result.txt
```

### Operation `update_user_stat_item_value_1`
```sh
$ samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace 'string' \
    --statCode 'string' \
    --userId 'string' \
    --additionalKey 'string' \
    --body '{"additionalData": {"string": {}}, "updateStrategy": "INCREMENT", "value": 3.14}' \
    > result.txt
```

