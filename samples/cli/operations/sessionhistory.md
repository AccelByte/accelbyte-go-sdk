## Go Extend SDK CLI Sample App Operation Index for Sessionhistory service.

### Operation `get_healthcheck_info`
```sh
$ samples/cli/sample-apps Sessionhistory getHealthcheckInfo \
    > result.txt
```

### Operation `get_healthcheck_info_v1`
```sh
$ samples/cli/sample-apps Sessionhistory getHealthcheckInfoV1 \
    > result.txt
```

### Operation `admin_get_env_config`
```sh
$ samples/cli/sample-apps Sessionhistory adminGetEnvConfig \
    > result.txt
```

### Operation `admin_patch_update_env_config`
```sh
$ samples/cli/sample-apps Sessionhistory adminPatchUpdateEnvConfig \
    --body '{"SESSION_DELETION_GRACE_PERIOD": 1}' \
    > result.txt
```

### Operation `admin_get_log_config`
```sh
$ samples/cli/sample-apps Sessionhistory adminGetLogConfig \
    > result.txt
```

### Operation `admin_patch_update_log_config`
```sh
$ samples/cli/sample-apps Sessionhistory adminPatchUpdateLogConfig \
    --body '{"logLevel": "debug"}' \
    > result.txt
```

### Operation `admin_query_game_session_detail`
```sh
$ samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace 'string' \
    --completedOnly 'string' \
    --configurationName 'string' \
    --dsPodName 'string' \
    --endDate 'string' \
    --gameSessionID 'string' \
    --isPersistent 'string' \
    --joinability 'string' \
    --limit 1 \
    --matchPool 'string' \
    --offset 1 \
    --order 'string' \
    --orderBy 'string' \
    --startDate 'string' \
    --statusV2 'string' \
    --userID 'string' \
    > result.txt
```

### Operation `get_game_session_detail`
```sh
$ samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `admin_query_matchmaking_detail`
```sh
$ samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace 'string' \
    --gameSessionID 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    --orderBy 'string' \
    --ticketID 'string' \
    --userID 'string' \
    > result.txt
```

### Operation `admin_get_matchmaking_detail_by_session_id`
```sh
$ samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `admin_get_matchmaking_detail_by_ticket_id`
```sh
$ samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace 'string' \
    --ticketId 'string' \
    > result.txt
```

### Operation `admin_query_party_detail`
```sh
$ samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace 'string' \
    --endDate 'string' \
    --joinability 'string' \
    --leaderID 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    --orderBy 'string' \
    --partyID 'string' \
    --startDate 'string' \
    --userID 'string' \
    > result.txt
```

### Operation `get_party_detail`
```sh
$ samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace 'string' \
    --sessionId 'string' \
    > result.txt
```

### Operation `admin_query_ticket_detail`
```sh
$ samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace 'string' \
    --endDate 'string' \
    --gameMode 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    --partyID 'string' \
    --region 'string' \
    --startDate 'string' \
    --userIDs 'string' \
    > result.txt
```

### Operation `admin_ticket_detail_get_by_ticket_id`
```sh
$ samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace 'string' \
    --ticketId 'string' \
    > result.txt
```

### Operation `public_query_game_session_me`
```sh
$ samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    > result.txt
```

### Operation `query_xray_match_pool`
```sh
$ samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace 'string' \
    --poolName '["string"]' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_detail_tick_match_pool`
```sh
$ samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace 'string' \
    --podName 'string' \
    --poolName 'string' \
    --all false \
    --limit 1 \
    --offset 1 \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_detail_tick_match_pool_matches`
```sh
$ samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace 'string' \
    --podName 'string' \
    --poolName 'string' \
    --tickId 'string' \
    > result.txt
```

### Operation `query_detail_tick_match_pool_ticket`
```sh
$ samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace 'string' \
    --podName 'string' \
    --poolName 'string' \
    --tickId 'string' \
    > result.txt
```

### Operation `query_match_histories`
```sh
$ samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `query_match_ticket_histories`
```sh
$ samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `query_xray_match`
```sh
$ samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `query_acquiring_ds`
```sh
$ samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace 'string' \
    --matchPool '["string"]' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_acquiring_ds_wait_time_avg`
```sh
$ samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace 'string' \
    --matchPool '["string"]' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_match_length_durationp_avg`
```sh
$ samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace 'string' \
    --matchPool '["string"]' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_match_length_durationp99`
```sh
$ samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace 'string' \
    --matchPool '["string"]' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_total_active_session`
```sh
$ samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace 'string' \
    --matchPool '["string"]' \
    --region 'string' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_total_matchmaking_match`
```sh
$ samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace 'string' \
    --matchPool '["string"]' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_total_player_persession`
```sh
$ samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace 'string' \
    --matchPool '["string"]' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_total_matchmaking_canceled`
```sh
$ samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace 'string' \
    --matchPool '["string"]' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_total_matchmaking_created`
```sh
$ samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace 'string' \
    --matchPool '["string"]' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_total_matchmaking_expired`
```sh
$ samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace 'string' \
    --matchPool '["string"]' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_total_matchmaking_match_ticket`
```sh
$ samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace 'string' \
    --matchPool '["string"]' \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `create_xray_ticket_observability`
```sh
$ samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace 'string' \
    --body '{"action": "string", "activeAllianceRule": {}, "activeMatchingRule": [{}], "function": "string", "gameMode": "string", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 1, "matchID": "string", "namespace": "string", "remainingPlayersPerTicket": [1], "remainingTickets": 1, "sessionTickID": "string", "tickID": 1, "ticketID": "string", "timeToMatchSec": 3.14, "timestamp": "2000-01-01T12:34:56Z", "unbackfillReason": "string", "unmatchReason": "string"}' \
    > result.txt
```

### Operation `create_xray_bulk_ticket_observability`
```sh
$ samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace 'string' \
    --body '{"ticketObservabilities": [{}]}' \
    > result.txt
```

### Operation `query_xray_timeline_by_ticket_id`
```sh
$ samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace 'string' \
    --ticketId 'string' \
    --limit 1 \
    --offset 1 \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `query_xray_timeline_by_user_id`
```sh
$ samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --endDate 'string' \
    --startDate 'string' \
    > result.txt
```

