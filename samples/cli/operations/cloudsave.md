## Go Extend SDK CLI Sample App Operation Index for Cloudsave service.

### Operation `admin_list_admin_game_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminListAdminGameRecordV1 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_bulk_get_admin_game_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace 'string' \
    --body '{"keys": ["string"]}' \
    > result.txt
```

### Operation `admin_get_admin_game_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_put_admin_game_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{}' \
    > result.txt
```

### Operation `admin_post_admin_game_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{}' \
    > result.txt
```

### Operation `admin_delete_admin_game_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_admin_game_record_ttl_config`
```sh
$ samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_list_game_binary_records_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_post_game_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace 'string' \
    --body '{"file_type": "string", "key": "string", "set_by": "CLIENT", "ttl_config": {}}' \
    > result.txt
```

### Operation `admin_get_game_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_put_game_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"content_type": "string", "file_location": "string"}' \
    > result.txt
```

### Operation `admin_delete_game_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_put_game_binary_recor_metadata_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"set_by": "CLIENT", "tags": ["string"], "ttl_config": {}}' \
    > result.txt
```

### Operation `admin_post_game_binary_presigned_urlv1`
```sh
$ samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"file_type": "string"}' \
    > result.txt
```

### Operation `delete_game_binary_record_ttl_config`
```sh
$ samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_put_admin_game_record_concurrent_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"tags": ["string"], "ttl_config": {}, "updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    > result.txt
```

### Operation `admin_put_game_record_concurrent_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"set_by": "CLIENT", "tags": ["string"], "ttl_config": {}, "updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    > result.txt
```

### Operation `get_plugin_config`
```sh
$ samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `create_plugin_config`
```sh
$ samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace 'string' \
    --body '{"appConfig": {}, "customConfig": {}, "customFunction": {}, "extendType": "APP"}' \
    > result.txt
```

### Operation `delete_plugin_config`
```sh
$ samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_plugin_config`
```sh
$ samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace 'string' \
    --body '{"appConfig": {}, "customConfig": {}, "customFunction": {}, "extendType": "APP"}' \
    > result.txt
```

### Operation `list_game_records_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace 'string' \
    --query 'string' \
    --tags '["string"]' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_get_game_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_put_game_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{}' \
    > result.txt
```

### Operation `admin_post_game_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{}' \
    > result.txt
```

### Operation `admin_delete_game_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_game_record_ttl_config`
```sh
$ samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_list_tags_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_post_tag_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace 'string' \
    --body '{"tag": "string"}' \
    > result.txt
```

### Operation `admin_delete_tag_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace 'string' \
    --tag 'string' \
    > result.txt
```

### Operation `bulk_get_admin_player_record_by_user_ids_v1`
```sh
$ samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `bulk_get_player_record_size_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace 'string' \
    --body '{"data": [{}]}' \
    > result.txt
```

### Operation `admin_bulk_put_player_records_by_key_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"data": [{}]}' \
    > result.txt
```

### Operation `admin_bulk_get_player_records_by_user_i_ds_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_list_admin_user_records_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_bulk_get_admin_player_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"keys": ["string"]}' \
    > result.txt
```

### Operation `admin_get_admin_player_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_put_admin_player_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{}' \
    > result.txt
```

### Operation `admin_post_player_admin_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{}' \
    > result.txt
```

### Operation `admin_delete_admin_player_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_list_player_binary_records_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_post_player_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"file_type": "string", "is_public": false, "key": "string", "set_by": "CLIENT"}' \
    > result.txt
```

### Operation `admin_get_player_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_put_player_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"content_type": "string", "file_location": "string"}' \
    > result.txt
```

### Operation `admin_delete_player_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_put_player_binary_recor_metadata_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"is_public": false, "set_by": "CLIENT", "tags": ["string"]}' \
    > result.txt
```

### Operation `admin_post_player_binary_presigned_urlv1`
```sh
$ samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"file_type": "string"}' \
    > result.txt
```

### Operation `admin_put_admin_player_record_concurrent_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --responseBody false \
    --body '{"tags": ["string"], "updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    > result.txt
```

### Operation `admin_put_player_record_concurrent_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --responseBody false \
    --body '{"set_by": "CLIENT", "tags": ["string"], "ttl_config": {}, "updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    > result.txt
```

### Operation `admin_put_player_public_record_concurrent_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --responseBody false \
    --body '{"set_by": "CLIENT", "tags": ["string"], "ttl_config": {}, "updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    > result.txt
```

### Operation `admin_retrieve_player_records`
```sh
$ samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_put_player_records_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"data": [{}]}' \
    > result.txt
```

### Operation `admin_get_player_records_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"keys": ["string"]}' \
    > result.txt
```

### Operation `admin_get_player_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_put_player_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{}' \
    > result.txt
```

### Operation `admin_post_player_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{}' \
    > result.txt
```

### Operation `admin_delete_player_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_player_public_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_put_player_public_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{}' \
    > result.txt
```

### Operation `admin_post_player_public_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{}' \
    > result.txt
```

### Operation `admin_delete_player_public_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_player_record_size_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `list_game_binary_records_v1`
```sh
$ samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `post_game_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace 'string' \
    --body '{"file_type": "string", "key": "string"}' \
    > result.txt
```

### Operation `bulk_get_game_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace 'string' \
    --body '{"keys": ["string"]}' \
    > result.txt
```

### Operation `get_game_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `put_game_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"content_type": "string", "file_location": "string"}' \
    > result.txt
```

### Operation `delete_game_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `post_game_binary_presigned_urlv1`
```sh
$ samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"file_type": "string"}' \
    > result.txt
```

### Operation `put_game_record_concurrent_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    > result.txt
```

### Operation `get_game_records_bulk`
```sh
$ samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace 'string' \
    --body '{"keys": ["string"]}' \
    > result.txt
```

### Operation `get_game_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `put_game_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{}' \
    > result.txt
```

### Operation `post_game_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{}' \
    > result.txt
```

### Operation `delete_game_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `public_list_tags_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `bulk_get_player_public_binary_records_v1`
```sh
$ samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `bulk_get_player_public_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `list_my_binary_records_v1`
```sh
$ samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `bulk_get_my_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace 'string' \
    --body '{"keys": ["string"]}' \
    > result.txt
```

### Operation `retrieve_player_records`
```sh
$ samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `get_player_records_bulk_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace 'string' \
    --body '{"keys": ["string"]}' \
    > result.txt
```

### Operation `public_delete_player_public_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `post_player_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"file_type": "string", "is_public": false, "key": "string"}' \
    > result.txt
```

### Operation `list_other_player_public_binary_records_v1`
```sh
$ samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `bulk_get_other_player_public_binary_records_v1`
```sh
$ samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"keys": ["string"]}' \
    > result.txt
```

### Operation `get_player_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `put_player_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"content_type": "string", "file_location": "string"}' \
    > result.txt
```

### Operation `delete_player_binary_record_v1`
```sh
$ samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `put_player_binary_recor_metadata_v1`
```sh
$ samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"is_public": false}' \
    > result.txt
```

### Operation `post_player_binary_presigned_urlv1`
```sh
$ samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"file_type": "string"}' \
    > result.txt
```

### Operation `get_player_public_binary_records_v1`
```sh
$ samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `put_player_record_concurrent_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --responseBody false \
    --body '{"updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    > result.txt
```

### Operation `put_player_public_record_concurrent_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --responseBody false \
    --body '{"updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    > result.txt
```

### Operation `get_other_player_public_record_key_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `get_other_player_public_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"keys": ["string"]}' \
    > result.txt
```

### Operation `get_player_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `put_player_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{}' \
    > result.txt
```

### Operation `post_player_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{}' \
    > result.txt
```

### Operation `delete_player_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_player_public_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `put_player_public_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{}' \
    > result.txt
```

### Operation `post_player_public_record_handler_v1`
```sh
$ samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{}' \
    > result.txt
```

