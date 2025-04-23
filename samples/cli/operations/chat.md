## Go Extend SDK CLI Sample App Operation Index for Chat service.

### Operation `admin_filter_chat_message`
```sh
$ samples/cli/sample-apps Chat adminFilterChatMessage \
    --namespace 'string' \
    --detail false \
    --body '{"message": "string", "timestamp": 1, "topicId": "string", "topicType": "GROUP", "userId": "string"}' \
    > result.txt
```

### Operation `admin_chat_history`
```sh
$ samples/cli/sample-apps Chat adminChatHistory \
    --namespace 'string' \
    --chatId '["string"]' \
    --endCreatedAt 1 \
    --keyword 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    --senderUserId 'string' \
    --shardId 'string' \
    --startCreatedAt 1 \
    --topic '["string"]' \
    --unfiltered false \
    > result.txt
```

### Operation `admin_create_namespace_topic`
```sh
$ samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace 'string' \
    --body '{"description": "string", "name": "string"}' \
    > result.txt
```

### Operation `admin_topic_list`
```sh
$ samples/cli/sample-apps Chat adminTopicList \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --topicType 'string' \
    > result.txt
```

### Operation `admin_create_topic`
```sh
$ samples/cli/sample-apps Chat adminCreateTopic \
    --namespace 'string' \
    --body '{"admins": ["string"], "description": "string", "isChannel": false, "isJoinable": false, "members": ["string"], "name": "string", "shardLimit": 1, "type": "string"}' \
    > result.txt
```

### Operation `admin_channel_topic_list`
```sh
$ samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --topicName 'string' \
    > result.txt
```

### Operation `admin_channel_topic_summary`
```sh
$ samples/cli/sample-apps Chat adminChannelTopicSummary \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_query_topic_log`
```sh
$ samples/cli/sample-apps Chat adminQueryTopicLog \
    --namespace 'string' \
    --endCreatedAt 1 \
    --limit 1 \
    --offset 1 \
    --senderUserId 'string' \
    --startCreatedAt 1 \
    --topicId 'string' \
    --topicIds '["string"]' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_topic`
```sh
$ samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace 'string' \
    --topic 'string' \
    --body '{"description": "string", "isJoinable": false, "name": "string"}' \
    > result.txt
```

### Operation `admin_delete_topic`
```sh
$ samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace 'string' \
    --topic 'string' \
    > result.txt
```

### Operation `admin_ban_topic_members`
```sh
$ samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace 'string' \
    --topic 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_channel_topic_info`
```sh
$ samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace 'string' \
    --topic 'string' \
    > result.txt
```

### Operation `admin_send_chat`
```sh
$ samples/cli/sample-apps Chat adminSendChat \
    --namespace 'string' \
    --topic 'string' \
    --body '{"message": "string"}' \
    > result.txt
```

### Operation `admin_delete_chat`
```sh
$ samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'string' \
    --namespace 'string' \
    --topic 'string' \
    > result.txt
```

### Operation `admin_topic_members`
```sh
$ samples/cli/sample-apps Chat adminTopicMembers \
    --namespace 'string' \
    --topic 'string' \
    --isBanned false \
    --isModerator false \
    --limit 1 \
    --offset 1 \
    --shardId 'string' \
    > result.txt
```

### Operation `admin_topic_shards`
```sh
$ samples/cli/sample-apps Chat adminTopicShards \
    --namespace 'string' \
    --topic 'string' \
    > result.txt
```

### Operation `admin_unban_topic_members`
```sh
$ samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace 'string' \
    --topic 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_add_topic_member`
```sh
$ samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace 'string' \
    --topic 'string' \
    --userId 'string' \
    --body '{"isAdmin": false}' \
    > result.txt
```

### Operation `admin_remove_topic_member`
```sh
$ samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace 'string' \
    --topic 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_query_topic`
```sh
$ samples/cli/sample-apps Chat adminQueryTopic \
    --namespace 'string' \
    --includeMembers false \
    --includePastMembers false \
    --includePastTopics false \
    --limit 1 \
    --offset 1 \
    --topic '["string"]' \
    --topicSubType 'CLAN' \
    --topicType 'GROUP' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_query_users_topic`
```sh
$ samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace 'string' \
    --userId 'string' \
    --includePastTopics false \
    --limit 1 \
    --offset 1 \
    --topicSubType 'CLAN' \
    --topicType 'GROUP' \
    > result.txt
```

### Operation `public_get_muted_topics`
```sh
$ samples/cli/sample-apps Chat publicGetMutedTopics \
    --namespace 'string' \
    > result.txt
```

### Operation `public_topic_list`
```sh
$ samples/cli/sample-apps Chat publicTopicList \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --topicType 'string' \
    > result.txt
```

### Operation `public_ban_topic_members`
```sh
$ samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace 'string' \
    --topic 'string' \
    --body '{"userIDs": ["string"]}' \
    > result.txt
```

### Operation `public_chat_history`
```sh
$ samples/cli/sample-apps Chat publicChatHistory \
    --namespace 'string' \
    --topic 'string' \
    --limit 1 \
    --order 'string' \
    --startCreatedAt 1 \
    > result.txt
```

### Operation `public_delete_chat`
```sh
$ samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'string' \
    --namespace 'string' \
    --topic 'string' \
    > result.txt
```

### Operation `public_mute_user`
```sh
$ samples/cli/sample-apps Chat publicMuteUser \
    --namespace 'string' \
    --topic 'string' \
    --body '{"duration": 1, "userId": "string"}' \
    > result.txt
```

### Operation `public_unban_topic_members`
```sh
$ samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace 'string' \
    --topic 'string' \
    --body '{"userIDs": ["string"]}' \
    > result.txt
```

### Operation `public_unmute_user`
```sh
$ samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace 'string' \
    --topic 'string' \
    --body '{"userId": "string"}' \
    > result.txt
```

### Operation `admin_get_all_config_v1`
```sh
$ samples/cli/sample-apps Chat adminGetAllConfigV1 \
    > result.txt
```

### Operation `admin_get_log_config`
```sh
$ samples/cli/sample-apps Chat adminGetLogConfig \
    > result.txt
```

### Operation `admin_patch_update_log_config`
```sh
$ samples/cli/sample-apps Chat adminPatchUpdateLogConfig \
    --body '{"internalAccessLogEnabled": false, "logLevel": "debug", "logLevelDB": "debug", "slowQueryThreshold": 1, "socketLogEnabled": false}' \
    > result.txt
```

### Operation `admin_get_config_v1`
```sh
$ samples/cli/sample-apps Chat adminGetConfigV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_config_v1`
```sh
$ samples/cli/sample-apps Chat adminUpdateConfigV1 \
    --namespace 'string' \
    --body '{"chatRateLimitBurst": 1, "chatRateLimitDuration": 1, "concurrentUsersLimit": 1, "enableClanChat": false, "enableManualTopicCreation": false, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "string", "filterParam": "string", "filterType": "string", "generalRateLimitBurst": 1, "generalRateLimitDuration": 1, "maxChatMessageLength": 1, "shardCapacityLimit": 1, "shardDefaultLimit": 1, "shardHardLimit": 1, "spamChatBurst": 1, "spamChatDuration": 1, "spamMuteDuration": 1}' \
    > result.txt
```

### Operation `export_config`
```sh
$ samples/cli/sample-apps Chat exportConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `import_config`
```sh
$ samples/cli/sample-apps Chat importConfig \
    --namespace 'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `admin_get_inbox_categories`
```sh
$ samples/cli/sample-apps Chat adminGetInboxCategories \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_add_inbox_category`
```sh
$ samples/cli/sample-apps Chat adminAddInboxCategory \
    --namespace 'string' \
    --body '{"enabled": false, "expiresIn": 1, "hook": {}, "jsonSchema": {"string": {}}, "name": "string", "saveInbox": false, "sendNotification": false}' \
    > result.txt
```

### Operation `admin_delete_inbox_category`
```sh
$ samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_inbox_category`
```sh
$ samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'string' \
    --namespace 'string' \
    --body '{"enabled": false, "expiresIn": 1, "hook": {}, "jsonSchema": {"string": {}}, "saveInbox": false, "sendNotification": false}' \
    > result.txt
```

### Operation `admin_get_category_schema`
```sh
$ samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_delete_inbox_message`
```sh
$ samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'string' \
    --namespace 'string' \
    --force false \
    > result.txt
```

### Operation `admin_get_inbox_messages`
```sh
$ samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace 'string' \
    --activeOnly false \
    --endCreatedAt 1 \
    --limit 1 \
    --messageId '["string"]' \
    --offset 1 \
    --order 'string' \
    --scope 'NAMESPACE' \
    --startCreatedAt 1 \
    --status 'DRAFT' \
    --transient false \
    > result.txt
```

### Operation `admin_save_inbox_message`
```sh
$ samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace 'string' \
    --body '{"category": "string", "expiredAt": 1, "message": {"string": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_unsend_inbox_message`
```sh
$ samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'string' \
    --namespace 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_get_inbox_users`
```sh
$ samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --status 'READ' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_inbox_message`
```sh
$ samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'string' \
    --namespace 'string' \
    --body '{"expiredAt": 1, "message": {"string": {}}, "scope": "NAMESPACE", "userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_send_inbox_message`
```sh
$ samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'string' \
    --namespace 'string' \
    --body '{}' \
    > result.txt
```

### Operation `admin_get_inbox_stats`
```sh
$ samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace 'string' \
    --messageId '["string"]' \
    > result.txt
```

### Operation `admin_get_chat_snapshot`
```sh
$ samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_delete_chat_snapshot`
```sh
$ samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_profanity_query`
```sh
$ samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace 'string' \
    --filterMask 'string' \
    --includeChildren false \
    --limit 1 \
    --offset 1 \
    --parentId 'string' \
    --startWith 'string' \
    --wordType 'string' \
    > result.txt
```

### Operation `admin_profanity_create`
```sh
$ samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace 'string' \
    --body '{"falseNegative": ["string"], "falsePositive": ["string"], "word": "string", "wordType": "string"}' \
    > result.txt
```

### Operation `admin_profanity_create_bulk`
```sh
$ samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace 'string' \
    --body '{"dictionaries": [{}]}' \
    > result.txt
```

### Operation `admin_profanity_export`
```sh
$ samples/cli/sample-apps Chat adminProfanityExport \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_profanity_group`
```sh
$ samples/cli/sample-apps Chat adminProfanityGroup \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_profanity_import`
```sh
$ samples/cli/sample-apps Chat adminProfanityImport \
    --namespace 'string' \
    --action 'FULLREPLACE' \
    --showResult false \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `admin_profanity_update`
```sh
$ samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'string' \
    --namespace 'string' \
    --body '{"falseNegative": ["string"], "falsePositive": ["string"], "word": "string", "wordType": "string"}' \
    > result.txt
```

### Operation `admin_profanity_delete`
```sh
$ samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ samples/cli/sample-apps Chat publicGetMessages \
    > result.txt
```

### Operation `public_get_config_v1`
```sh
$ samples/cli/sample-apps Chat publicGetConfigV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `public_get_chat_snapshot`
```sh
$ samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'string' \
    --namespace 'string' \
    --topic 'string' \
    > result.txt
```

