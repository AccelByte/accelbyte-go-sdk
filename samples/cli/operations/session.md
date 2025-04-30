## Go Extend SDK CLI Sample App Operation Index for Session service.

### Operation `get_healthcheck_info`
```sh
$ samples/cli/sample-apps Session getHealthcheckInfo \
    > result.txt
```

### Operation `get_healthcheck_info_v1`
```sh
$ samples/cli/sample-apps Session getHealthcheckInfoV1 \
    > result.txt
```

### Operation `admin_get_log_config`
```sh
$ samples/cli/sample-apps Session adminGetLogConfig \
    > result.txt
```

### Operation `admin_patch_update_log_config`
```sh
$ samples/cli/sample-apps Session adminPatchUpdateLogConfig \
    --body '{"logLevel": "debug"}' \
    > result.txt
```

### Operation `admin_list_environment_variables`
```sh
$ samples/cli/sample-apps Session adminListEnvironmentVariables \
    > result.txt
```

### Operation `admin_list_global_configuration`
```sh
$ samples/cli/sample-apps Session adminListGlobalConfiguration \
    > result.txt
```

### Operation `admin_update_global_configuration`
```sh
$ samples/cli/sample-apps Session adminUpdateGlobalConfiguration \
    --body '{"metricExcludedNamespaces": ["string"], "regionRetryMapping": {"string": []}, "regionURLMapping": ["string"], "testGameMode": "string", "testRegionURLMapping": ["string"], "testTargetUserIDs": ["string"]}' \
    > result.txt
```

### Operation `admin_delete_global_configuration`
```sh
$ samples/cli/sample-apps Session adminDeleteGlobalConfiguration \
    > result.txt
```

### Operation `admin_get_configuration_alert_v1`
```sh
$ samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_configuration_alert_v1`
```sh
$ samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace 'string' \
    --body '{"durationDays": 1}' \
    > result.txt
```

### Operation `admin_create_configuration_alert_v1`
```sh
$ samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace 'string' \
    --body '{"durationDays": 1}' \
    > result.txt
```

### Operation `admin_delete_configuration_alert_v1`
```sh
$ samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_create_configuration_template_v1`
```sh
$ samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace 'string' \
    --body '{"NativeSessionSetting": {}, "PSNBaseUrl": "string", "amsClaimTimeoutMinutes": 1, "appName": "string", "asyncProcessDSRequest": {}, "attributes": {"string": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "string", "customURLGRPC": "string", "deployment": "string", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "string", "enableSecret": false, "fallbackClaimKeys": ["string"], "grpcSessionConfig": {}, "immutableStorage": false, "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "string", "leaderElectionGracePeriod": 1, "manualRejoin": false, "maxActiveSessions": 1, "maxPlayers": 1, "minPlayers": 1, "name": "string", "persistent": false, "preferredClaimKeys": ["string"], "requestedRegions": ["string"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 1, "type": "string"}' \
    > result.txt
```

### Operation `admin_get_all_configuration_templates_v1`
```sh
$ samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --order 'string' \
    --orderBy 'string' \
    > result.txt
```

### Operation `admin_get_configuration_template_v1`
```sh
$ samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_configuration_template_v1`
```sh
$ samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'string' \
    --namespace 'string' \
    --body '{"NativeSessionSetting": {}, "PSNBaseUrl": "string", "amsClaimTimeoutMinutes": 1, "appName": "string", "asyncProcessDSRequest": {}, "attributes": {"string": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "string", "customURLGRPC": "string", "deployment": "string", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "string", "enableSecret": false, "fallbackClaimKeys": ["string"], "grpcSessionConfig": {}, "immutableStorage": false, "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "string", "leaderElectionGracePeriod": 1, "manualRejoin": false, "maxActiveSessions": 1, "maxPlayers": 1, "minPlayers": 1, "name": "string", "persistent": false, "preferredClaimKeys": ["string"], "requestedRegions": ["string"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 1, "type": "string"}' \
    > result.txt
```

### Operation `admin_delete_configuration_template_v1`
```sh
$ samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_member_active_session`
```sh
$ samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_reconcile_max_active_session`
```sh
$ samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'string' \
    --namespace 'string' \
    --body '{"userID": "string"}' \
    > result.txt
```

### Operation `admin_query_game_sessions`
```sh
$ samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace 'string' \
    --configurationName 'string' \
    --dsPodName 'string' \
    --fromTime 'string' \
    --gameMode 'string' \
    --isPersistent 'string' \
    --isSoftDeleted 'string' \
    --joinability 'string' \
    --limit 1 \
    --matchPool 'string' \
    --memberID 'string' \
    --offset 1 \
    --order 'string' \
    --orderBy 'string' \
    --sessionID 'string' \
    --status 'string' \
    --statusV2 'string' \
    --toTime 'string' \
    > result.txt
```

### Operation `admin_query_game_sessions_by_attributes`
```sh
$ samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace 'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `admin_delete_bulk_game_sessions`
```sh
$ samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace 'string' \
    --body '{"ids": ["string"]}' \
    > result.txt
```

### Operation `admin_set_ds_ready`
```sh
$ samples/cli/sample-apps Session adminSetDSReady \
    --namespace 'string' \
    --sessionId 'string' \
    --body '{"ready": false}' \
    > result.txt
```

### Operation `admin_update_ds_information`
```sh
$ samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace 'string' \
    --sessionId 'string' \
    --body '{"createdRegion": "string", "deployment": "string", "description": "string", "ip": "string", "port": 1, "region": "string", "serverId": "string", "source": "string", "status": "string"}' \
    > result.txt
```

### Operation `admin_kick_game_session_member`
```sh
$ samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'string' \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `admin_update_game_session_member`
```sh
$ samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'string' \
    --namespace 'string' \
    --sessionId 'string' \
    --statusType 'string' \
    > result.txt
```

### Operation `admin_get_list_native_session`
```sh
$ samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    > result.txt
```

### Operation `admin_query_parties`
```sh
$ samples/cli/sample-apps Session adminQueryParties \
    --namespace 'string' \
    --fromTime 'string' \
    --isSoftDeleted 'string' \
    --joinability 'string' \
    --key 'string' \
    --leaderID 'string' \
    --limit 1 \
    --memberID 'string' \
    --memberStatus 'string' \
    --offset 1 \
    --order 'string' \
    --orderBy 'string' \
    --partyID 'string' \
    --toTime 'string' \
    --value 'string' \
    > result.txt
```

### Operation `admin_delete_bulk_parties`
```sh
$ samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace 'string' \
    --body '{"ids": ["string"]}' \
    > result.txt
```

### Operation `admin_read_party_session_storage`
```sh
$ samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace 'string' \
    --partyId 'string' \
    > result.txt
```

### Operation `admin_get_platform_credentials`
```sh
$ samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_platform_credentials`
```sh
$ samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace 'string' \
    --body '{"psn": {}}' \
    > result.txt
```

### Operation `admin_delete_platform_credentials`
```sh
$ samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_delete_platform_credentials_by_platform_id`
```sh
$ samples/cli/sample-apps Session adminDeletePlatformCredentialsByPlatformId \
    --namespace 'string' \
    --platformId 'PSN' \
    > result.txt
```

### Operation `admin_sync_platform_credentials`
```sh
$ samples/cli/sample-apps Session adminSyncPlatformCredentials \
    --namespace 'string' \
    --platformId 'XBOX' \
    > result.txt
```

### Operation `admin_get_recent_player`
```sh
$ samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace 'string' \
    --limit 1 \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_recent_team_player`
```sh
$ samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace 'string' \
    --limit 1 \
    --userId 'string' \
    > result.txt
```

### Operation `admin_read_session_storage`
```sh
$ samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `admin_delete_user_session_storage`
```sh
$ samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `admin_read_user_session_storage`
```sh
$ samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace 'string' \
    --sessionId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_query_player_attributes`
```sh
$ samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace 'string' \
    --users 'string' \
    > result.txt
```

### Operation `admin_get_player_attributes`
```sh
$ samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_sync_native_session`
```sh
$ samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `create_game_session`
```sh
$ samples/cli/sample-apps Session createGameSession \
    --namespace 'string' \
    --resolveMaxActiveSession false \
    --body '{"appName": "string", "attributes": {"string": {}}, "autoJoin": false, "backfillTicketID": "string", "clientVersion": "string", "configurationName": "string", "customURLGRPC": "string", "deployment": "string", "dsSource": "string", "fallbackClaimKeys": ["string"], "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "string", "matchPool": "string", "maxPlayers": 1, "minPlayers": 1, "preferredClaimKeys": ["string"], "requestedRegions": ["string"], "serverName": "string", "storage": {}, "teams": [{}], "textChat": false, "textChatMode": "GAME", "ticketIDs": ["string"], "tieTeamsSessionLifetime": false, "type": "string"}' \
    > result.txt
```

### Operation `public_query_game_sessions_by_attributes`
```sh
$ samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace 'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `public_session_join_code`
```sh
$ samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace 'string' \
    --body '{"code": "string"}' \
    > result.txt
```

### Operation `get_game_session_by_pod_name`
```sh
$ samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `get_game_session`
```sh
$ samples/cli/sample-apps Session getGameSession \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `update_game_session`
```sh
$ samples/cli/sample-apps Session updateGameSession \
    --namespace 'string' \
    --sessionId 'string' \
    --body '{"attributes": {"string": {}}, "backfillTicketID": "string", "clientVersion": "string", "deployment": "string", "fallbackClaimKeys": ["string"], "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "string", "matchPool": "string", "maxPlayers": 1, "minPlayers": 1, "preferredClaimKeys": ["string"], "requestedRegions": ["string"], "teams": [{}], "ticketIDs": ["string"], "tieTeamsSessionLifetime": false, "type": "string", "version": 1}' \
    > result.txt
```

### Operation `delete_game_session`
```sh
$ samples/cli/sample-apps Session deleteGameSession \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `patch_update_game_session`
```sh
$ samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace 'string' \
    --sessionId 'string' \
    --body '{"attributes": {"string": {}}, "backfillTicketID": "string", "clientVersion": "string", "deployment": "string", "fallbackClaimKeys": ["string"], "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "string", "matchPool": "string", "maxPlayers": 1, "minPlayers": 1, "preferredClaimKeys": ["string"], "requestedRegions": ["string"], "teams": [{}], "ticketIDs": ["string"], "tieTeamsSessionLifetime": false, "type": "string", "version": 1}' \
    > result.txt
```

### Operation `update_game_session_backfill_ticket_id`
```sh
$ samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace 'string' \
    --sessionId 'string' \
    --body '{"backfillTicketID": "string"}' \
    > result.txt
```

### Operation `game_session_generate_code`
```sh
$ samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `public_revoke_game_session_code`
```sh
$ samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `public_game_session_invite`
```sh
$ samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace 'string' \
    --sessionId 'string' \
    --body '{"metadata": {"string": "string"}, "platformID": "string", "userID": "string"}' \
    > result.txt
```

### Operation `join_game_session`
```sh
$ samples/cli/sample-apps Session joinGameSession \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `public_promote_game_session_leader`
```sh
$ samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace 'string' \
    --sessionId 'string' \
    --body '{"leaderID": "string"}' \
    > result.txt
```

### Operation `leave_game_session`
```sh
$ samples/cli/sample-apps Session leaveGameSession \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `public_kick_game_session_member`
```sh
$ samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'string' \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `public_game_session_reject`
```sh
$ samples/cli/sample-apps Session publicGameSessionReject \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `get_session_server_secret`
```sh
$ samples/cli/sample-apps Session getSessionServerSecret \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `public_game_session_cancel`
```sh
$ samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace 'string' \
    --sessionId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_party_join_code`
```sh
$ samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace 'string' \
    --body '{"code": "string"}' \
    > result.txt
```

### Operation `public_get_party`
```sh
$ samples/cli/sample-apps Session publicGetParty \
    --namespace 'string' \
    --partyId 'string' \
    > result.txt
```

### Operation `public_update_party`
```sh
$ samples/cli/sample-apps Session publicUpdateParty \
    --namespace 'string' \
    --partyId 'string' \
    --body '{"attributes": {"string": {}}, "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "string", "maxPlayers": 1, "minPlayers": 1, "type": "string", "version": 1}' \
    > result.txt
```

### Operation `public_patch_update_party`
```sh
$ samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace 'string' \
    --partyId 'string' \
    --body '{"attributes": {"string": {}}, "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "string", "maxPlayers": 1, "minPlayers": 1, "type": "string", "version": 1}' \
    > result.txt
```

### Operation `public_generate_party_code`
```sh
$ samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace 'string' \
    --partyId 'string' \
    > result.txt
```

### Operation `public_revoke_party_code`
```sh
$ samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace 'string' \
    --partyId 'string' \
    > result.txt
```

### Operation `public_party_invite`
```sh
$ samples/cli/sample-apps Session publicPartyInvite \
    --namespace 'string' \
    --partyId 'string' \
    --body '{"metadata": {"string": "string"}, "platformID": "string", "userID": "string"}' \
    > result.txt
```

### Operation `public_promote_party_leader`
```sh
$ samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace 'string' \
    --partyId 'string' \
    --body '{"leaderID": "string"}' \
    > result.txt
```

### Operation `public_read_party_session_storage`
```sh
$ samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace 'string' \
    --partyId 'string' \
    > result.txt
```

### Operation `public_update_insert_party_session_storage_reserved`
```sh
$ samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace 'string' \
    --partyId 'string' \
    --userId 'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `public_party_join`
```sh
$ samples/cli/sample-apps Session publicPartyJoin \
    --namespace 'string' \
    --partyId 'string' \
    > result.txt
```

### Operation `public_party_leave`
```sh
$ samples/cli/sample-apps Session publicPartyLeave \
    --namespace 'string' \
    --partyId 'string' \
    > result.txt
```

### Operation `public_party_reject`
```sh
$ samples/cli/sample-apps Session publicPartyReject \
    --namespace 'string' \
    --partyId 'string' \
    > result.txt
```

### Operation `public_party_cancel`
```sh
$ samples/cli/sample-apps Session publicPartyCancel \
    --namespace 'string' \
    --partyId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_party_kick`
```sh
$ samples/cli/sample-apps Session publicPartyKick \
    --namespace 'string' \
    --partyId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_create_party`
```sh
$ samples/cli/sample-apps Session publicCreateParty \
    --namespace 'string' \
    --body '{"attributes": {"string": {}}, "configurationName": "string", "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "string", "maxPlayers": 1, "members": [{}], "minPlayers": 1, "textChat": false, "type": "string"}' \
    > result.txt
```

### Operation `public_get_recent_player`
```sh
$ samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace 'string' \
    --limit 1 \
    > result.txt
```

### Operation `public_get_recent_team_player`
```sh
$ samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace 'string' \
    --limit 1 \
    > result.txt
```

### Operation `public_update_insert_session_storage_leader`
```sh
$ samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace 'string' \
    --sessionId 'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `public_update_insert_session_storage`
```sh
$ samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace 'string' \
    --sessionId 'string' \
    --userId 'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `public_get_bulk_player_current_platform`
```sh
$ samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace 'string' \
    --body '{"userIDs": ["string"]}' \
    > result.txt
```

### Operation `public_get_player_attributes`
```sh
$ samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace 'string' \
    > result.txt
```

### Operation `public_store_player_attributes`
```sh
$ samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace 'string' \
    --body '{"crossplayEnabled": false, "currentPlatform": "string", "data": {"string": {}}, "platforms": [{}], "roles": ["string"], "simultaneousPlatform": "string"}' \
    > result.txt
```

### Operation `public_delete_player_attributes`
```sh
$ samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace 'string' \
    > result.txt
```

### Operation `public_query_my_game_sessions`
```sh
$ samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace 'string' \
    --order 'string' \
    --orderBy 'string' \
    --status 'string' \
    > result.txt
```

### Operation `public_query_my_parties`
```sh
$ samples/cli/sample-apps Session publicQueryMyParties \
    --namespace 'string' \
    --order 'string' \
    --orderBy 'string' \
    --status 'string' \
    > result.txt
```

