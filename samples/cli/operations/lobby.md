## Go Extend SDK CLI Sample App Operation Index for Lobby service.

### Operation `get_user_friends_updated`
```sh
$ samples/cli/sample-apps Lobby getUserFriendsUpdated \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_incoming_friends`
```sh
$ samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_incoming_friends_with_time`
```sh
$ samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_outgoing_friends`
```sh
$ samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_outgoing_friends_with_time`
```sh
$ samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_friends_with_platform`
```sh
$ samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `user_request_friend`
```sh
$ samples/cli/sample-apps Lobby userRequestFriend \
    --namespace 'string' \
    --body '{"friendId": "string", "friendPublicId": "string", "metadata": {"string": "string"}}' \
    > result.txt
```

### Operation `user_accept_friend_request`
```sh
$ samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace 'string' \
    --body '{"friendId": "string"}' \
    > result.txt
```

### Operation `user_cancel_friend_request`
```sh
$ samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace 'string' \
    --body '{"friendId": "string"}' \
    > result.txt
```

### Operation `user_reject_friend_request`
```sh
$ samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace 'string' \
    --body '{"friendId": "string"}' \
    > result.txt
```

### Operation `user_get_friendship_status`
```sh
$ samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `user_unfriend_request`
```sh
$ samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace 'string' \
    --body '{"friendId": "string"}' \
    > result.txt
```

### Operation `add_friends_without_confirmation`
```sh
$ samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace 'string' \
    --userId 'string' \
    --body '{"friendIds": ["string"]}' \
    > result.txt
```

### Operation `bulk_delete_friends`
```sh
$ samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace 'string' \
    --userId 'string' \
    --body '{"friendIds": ["string"]}' \
    > result.txt
```

### Operation `sync_native_friends`
```sh
$ samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace 'string' \
    --body '[{"isLogin": false, "platformId": "string", "platformToken": "string", "psnEnv": "string"}]' \
    > result.txt
```

### Operation `sync_native_blocked_user`
```sh
$ samples/cli/sample-apps Lobby syncNativeBlockedUser \
    --namespace 'string' \
    --body '[{"platformId": "string", "psnEnv": "string"}]' \
    > result.txt
```

### Operation `admin_get_all_config_v1`
```sh
$ samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > result.txt
```

### Operation `admin_get_log_config`
```sh
$ samples/cli/sample-apps Lobby adminGetLogConfig \
    > result.txt
```

### Operation `admin_patch_update_log_config`
```sh
$ samples/cli/sample-apps Lobby adminPatchUpdateLogConfig \
    --body '{"logLevel": "debug", "logLevelDB": "debug", "slowQueryThreshold": 1, "socketLogEnabled": false}' \
    > result.txt
```

### Operation `admin_get_config_v1`
```sh
$ samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_config_v1`
```sh
$ samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace 'string' \
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 1, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 1, "chatRateLimitDuration": 1, "concurrentUsersLimit": 1, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "string", "generalRateLimitBurst": 1, "generalRateLimitDuration": 1, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 1, "maxFriendsLimit": 1, "maxPartyMember": 1, "profanityFilter": false, "readyConsentTimeout": 1, "requestMetadataMaxSize": 1, "unregisterDelay": 1}' \
    > result.txt
```

### Operation `admin_export_config_v1`
```sh
$ samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_import_config_v1`
```sh
$ samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace 'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_list_of_friends`
```sh
$ samples/cli/sample-apps Lobby getListOfFriends \
    --namespace 'string' \
    --userId 'string' \
    --friendId 'string' \
    --friendIds '["string"]' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_incoming_friend_requests`
```sh
$ samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace 'string' \
    --userId 'string' \
    --friendId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_list_friends_of_friends`
```sh
$ samples/cli/sample-apps Lobby adminListFriendsOfFriends \
    --namespace 'string' \
    --userId 'string' \
    --friendId 'string' \
    --limit 1 \
    --nopaging false \
    --offset 1 \
    > result.txt
```

### Operation `get_outgoing_friend_requests`
```sh
$ samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `send_multiple_users_freeform_notification_v1_admin`
```sh
$ samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace 'string' \
    --body '{"message": "string", "topicName": "string", "userIds": ["string"]}' \
    > result.txt
```

### Operation `send_users_freeform_notification_v1_admin`
```sh
$ samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace 'string' \
    --body '{"message": "string", "topicName": "string"}' \
    > result.txt
```

### Operation `get_all_notification_templates_v1_admin`
```sh
$ samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace 'string' \
    > result.txt
```

### Operation `create_notification_template_v1_admin`
```sh
$ samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace 'string' \
    --body '{"templateContent": "string", "templateLanguage": "string", "templateSlug": "string"}' \
    > result.txt
```

### Operation `send_users_templated_notification_v1_admin`
```sh
$ samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace 'string' \
    --body '{"templateContext": {"string": "string"}, "templateLanguage": "string", "templateSlug": "string", "topicName": "string"}' \
    > result.txt
```

### Operation `get_template_slug_localizations_template_v1_admin`
```sh
$ samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace 'string' \
    --templateSlug 'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `delete_notification_template_slug_v1_admin`
```sh
$ samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace 'string' \
    --templateSlug 'string' \
    > result.txt
```

### Operation `get_single_template_localization_v1_admin`
```sh
$ samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace 'string' \
    --templateLanguage 'string' \
    --templateSlug 'string' \
    > result.txt
```

### Operation `update_template_localization_v1_admin`
```sh
$ samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace 'string' \
    --templateLanguage 'string' \
    --templateSlug 'string' \
    --body '{"templateContent": "string"}' \
    > result.txt
```

### Operation `delete_template_localization_v1_admin`
```sh
$ samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace 'string' \
    --templateLanguage 'string' \
    --templateSlug 'string' \
    > result.txt
```

### Operation `publish_template_localization_v1_admin`
```sh
$ samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace 'string' \
    --templateLanguage 'string' \
    --templateSlug 'string' \
    > result.txt
```

### Operation `get_all_notification_topics_v1_admin`
```sh
$ samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace 'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `create_notification_topic_v1_admin`
```sh
$ samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace 'string' \
    --body '{"description": "string", "topicName": "string"}' \
    > result.txt
```

### Operation `get_notification_topic_v1_admin`
```sh
$ samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace 'string' \
    --topicName 'string' \
    > result.txt
```

### Operation `update_notification_topic_v1_admin`
```sh
$ samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace 'string' \
    --topicName 'string' \
    --body '{"description": "string"}' \
    > result.txt
```

### Operation `delete_notification_topic_v1_admin`
```sh
$ samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace 'string' \
    --topicName 'string' \
    > result.txt
```

### Operation `send_specific_user_freeform_notification_v1_admin`
```sh
$ samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace 'string' \
    --userId 'string' \
    --body '{"message": "string", "topicName": "string"}' \
    > result.txt
```

### Operation `send_specific_user_templated_notification_v1_admin`
```sh
$ samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace 'string' \
    --userId 'string' \
    --body '{"templateContext": {"string": "string"}, "templateLanguage": "string", "templateSlug": "string", "topicName": "string"}' \
    > result.txt
```

### Operation `admin_get_lobby_ccu`
```sh
$ samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_bulk_player_blocked_players_v1`
```sh
$ samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace 'string' \
    --body '{"listBlockedUserId": ["string"]}' \
    > result.txt
```

### Operation `admin_get_player_blocked_players_v1`
```sh
$ samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_player_blocked_by_players_v1`
```sh
$ samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_bulk_block_players_v1`
```sh
$ samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"listBlockedUserId": ["string"]}' \
    > result.txt
```

### Operation `admin_bulk_unblock_players_v1`
```sh
$ samples/cli/sample-apps Lobby adminBulkUnblockPlayersV1 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"listUnblockUserId": ["string"]}' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ samples/cli/sample-apps Lobby publicGetMessages \
    > result.txt
```

### Operation `public_player_block_players_v1`
```sh
$ samples/cli/sample-apps Lobby publicPlayerBlockPlayersV1 \
    --namespace 'string' \
    --body '{"blockedUserId": "string"}' \
    > result.txt
```

### Operation `public_get_player_blocked_players_v1`
```sh
$ samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `public_get_player_blocked_by_players_v1`
```sh
$ samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `public_unblock_player_v1`
```sh
$ samples/cli/sample-apps Lobby publicUnblockPlayerV1 \
    --namespace 'string' \
    --body '{"userId": "string"}' \
    > result.txt
```

### Operation `users_presence_handler_v1`
```sh
$ samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace 'string' \
    --countOnly false \
    --userIds 'string' \
    > result.txt
```

### Operation `users_presence_handler_v2`
```sh
$ samples/cli/sample-apps Lobby usersPresenceHandlerV2 \
    --namespace 'string' \
    --countOnly false \
    --body '{"userIDs": ["string"]}' \
    > result.txt
```

### Operation `free_form_notification`
```sh
$ samples/cli/sample-apps Lobby freeFormNotification \
    --namespace 'string' \
    --body '{"message": "string", "topic": "string"}' \
    > result.txt
```

### Operation `get_my_notifications`
```sh
$ samples/cli/sample-apps Lobby getMyNotifications \
    --namespace 'string' \
    --endTime 1 \
    --limit 1 \
    --offset 1 \
    --startTime 1 \
    > result.txt
```

### Operation `notification_with_template`
```sh
$ samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace 'string' \
    --body '{"templateContext": {"string": "string"}, "templateLanguage": "string", "templateSlug": "string", "topic": "string"}' \
    > result.txt
```

### Operation `get_game_template`
```sh
$ samples/cli/sample-apps Lobby getGameTemplate \
    --namespace 'string' \
    > result.txt
```

### Operation `create_template`
```sh
$ samples/cli/sample-apps Lobby createTemplate \
    --namespace 'string' \
    --body '{"templateContent": "string", "templateLanguage": "string", "templateSlug": "string"}' \
    > result.txt
```

### Operation `get_slug_template`
```sh
$ samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace 'string' \
    --templateSlug 'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `delete_template_slug`
```sh
$ samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace 'string' \
    --templateSlug 'string' \
    > result.txt
```

### Operation `get_localization_template`
```sh
$ samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace 'string' \
    --templateLanguage 'string' \
    --templateSlug 'string' \
    > result.txt
```

### Operation `update_localization_template`
```sh
$ samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace 'string' \
    --templateLanguage 'string' \
    --templateSlug 'string' \
    --body '{"templateContent": "string"}' \
    > result.txt
```

### Operation `delete_template_localization`
```sh
$ samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace 'string' \
    --templateLanguage 'string' \
    --templateSlug 'string' \
    > result.txt
```

### Operation `publish_template`
```sh
$ samples/cli/sample-apps Lobby publishTemplate \
    --namespace 'string' \
    --templateLanguage 'string' \
    --templateSlug 'string' \
    > result.txt
```

### Operation `get_topic_by_namespace`
```sh
$ samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace 'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `create_topic`
```sh
$ samples/cli/sample-apps Lobby createTopic \
    --namespace 'string' \
    --body '{"description": "string", "topic": "string"}' \
    > result.txt
```

### Operation `get_topic_by_topic_name`
```sh
$ samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace 'string' \
    --topic 'string' \
    > result.txt
```

### Operation `update_topic_by_topic_name`
```sh
$ samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace 'string' \
    --topic 'string' \
    --body '{"description": "string"}' \
    > result.txt
```

### Operation `delete_topic_by_topic_name`
```sh
$ samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace 'string' \
    --topic 'string' \
    > result.txt
```

### Operation `free_form_notification_by_user_id`
```sh
$ samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace 'string' \
    --userId 'string' \
    --body '{"message": "string", "topic": "string"}' \
    > result.txt
```

### Operation `notification_with_template_by_user_id`
```sh
$ samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace 'string' \
    --userId 'string' \
    --body '{"templateContext": {"string": "string"}, "templateLanguage": "string", "templateSlug": "string", "topic": "string"}' \
    > result.txt
```

