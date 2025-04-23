## Go Extend SDK CLI Sample App Operation Index for Match2 service.

### Operation `get_healthcheck_info`
```sh
$ samples/cli/sample-apps Match2 getHealthcheckInfo \
    > result.txt
```

### Operation `get_healthcheck_info_v1`
```sh
$ samples/cli/sample-apps Match2 getHealthcheckInfoV1 \
    > result.txt
```

### Operation `admin_get_log_config`
```sh
$ samples/cli/sample-apps Match2 adminGetLogConfig \
    > result.txt
```

### Operation `admin_patch_update_log_config`
```sh
$ samples/cli/sample-apps Match2 adminPatchUpdateLogConfig \
    --body '{"logLevel": "debug"}' \
    > result.txt
```

### Operation `admin_get_all_config_v1`
```sh
$ samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > result.txt
```

### Operation `admin_get_config_v1`
```sh
$ samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_patch_config_v1`
```sh
$ samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace 'string' \
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["string"], "matchAnyCommon": false, "platformGroup": {"string": []}}' \
    > result.txt
```

### Operation `environment_variable_list`
```sh
$ samples/cli/sample-apps Match2 environmentVariableList \
    > result.txt
```

### Operation `admin_query_backfill`
```sh
$ samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace 'string' \
    --fromTime '2000-01-01T12:34:56Z' \
    --isActive false \
    --limit 1 \
    --matchPool 'string' \
    --offset 1 \
    --playerID 'string' \
    --region 'string' \
    --sessionID 'string' \
    --toTime '2000-01-01T12:34:56Z' \
    > result.txt
```

### Operation `create_backfill`
```sh
$ samples/cli/sample-apps Match2 createBackfill \
    --namespace 'string' \
    --body '{"matchPool": "string", "sessionId": "string"}' \
    > result.txt
```

### Operation `get_backfill_proposal`
```sh
$ samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace 'string' \
    --sessionID 'string' \
    > result.txt
```

### Operation `get_backfill`
```sh
$ samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_backfill`
```sh
$ samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `accept_backfill`
```sh
$ samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'string' \
    --namespace 'string' \
    --body '{"acceptedTicketIds": ["string"], "proposalId": "string", "stop": false}' \
    > result.txt
```

### Operation `reject_backfill`
```sh
$ samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'string' \
    --namespace 'string' \
    --body '{"proposalId": "string", "stop": false}' \
    > result.txt
```

### Operation `match_function_list`
```sh
$ samples/cli/sample-apps Match2 matchFunctionList \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_match_function`
```sh
$ samples/cli/sample-apps Match2 createMatchFunction \
    --namespace 'string' \
    --body '{"match_function": "string", "serviceAppName": "string", "url": "string"}' \
    > result.txt
```

### Operation `update_match_function`
```sh
$ samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'string' \
    --namespace 'string' \
    --body '{"match_function": "string", "serviceAppName": "string", "url": "string"}' \
    > result.txt
```

### Operation `delete_match_function`
```sh
$ samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `match_pool_list`
```sh
$ samples/cli/sample-apps Match2 matchPoolList \
    --namespace 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    > result.txt
```

### Operation `create_match_pool`
```sh
$ samples/cli/sample-apps Match2 createMatchPool \
    --namespace 'string' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 1, "backfill_ticket_expiration_seconds": 1, "best_latency_calculation_method": "string", "crossplay_disabled": false, "match_function": "string", "match_function_override": {}, "name": "string", "platform_group_enabled": false, "rule_set": "string", "session_template": "string", "ticket_expiration_seconds": 1}' \
    > result.txt
```

### Operation `match_pool_details`
```sh
$ samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace 'string' \
    --pool 'string' \
    > result.txt
```

### Operation `update_match_pool`
```sh
$ samples/cli/sample-apps Match2 updateMatchPool \
    --namespace 'string' \
    --pool 'string' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 1, "backfill_ticket_expiration_seconds": 1, "best_latency_calculation_method": "string", "crossplay_disabled": false, "match_function": "string", "match_function_override": {}, "platform_group_enabled": false, "rule_set": "string", "session_template": "string", "ticket_expiration_seconds": 1}' \
    > result.txt
```

### Operation `delete_match_pool`
```sh
$ samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace 'string' \
    --pool 'string' \
    > result.txt
```

### Operation `match_pool_metric`
```sh
$ samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace 'string' \
    --pool 'string' \
    > result.txt
```

### Operation `post_match_error_metric`
```sh
$ samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace 'string' \
    --pool 'string' \
    --body '{"type": "connectDS"}' \
    > result.txt
```

### Operation `get_player_metric`
```sh
$ samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace 'string' \
    --pool 'string' \
    > result.txt
```

### Operation `admin_get_match_pool_tickets`
```sh
$ samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace 'string' \
    --pool 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_match_ticket`
```sh
$ samples/cli/sample-apps Match2 createMatchTicket \
    --namespace 'string' \
    --body '{"attributes": {"string": {}}, "excludedSessions": ["string"], "latencies": {"string": 1}, "matchPool": "string", "sessionID": "string", "storage": {"string": {}}}' \
    > result.txt
```

### Operation `get_my_match_tickets`
```sh
$ samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace 'string' \
    --limit 1 \
    --matchPool 'string' \
    --offset 1 \
    > result.txt
```

### Operation `match_ticket_details`
```sh
$ samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace 'string' \
    --ticketid 'string' \
    > result.txt
```

### Operation `delete_match_ticket`
```sh
$ samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace 'string' \
    --ticketid 'string' \
    > result.txt
```

### Operation `rule_set_list`
```sh
$ samples/cli/sample-apps Match2 ruleSetList \
    --namespace 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    > result.txt
```

### Operation `create_rule_set`
```sh
$ samples/cli/sample-apps Match2 createRuleSet \
    --namespace 'string' \
    --body '{"data": {"string": {}}, "enable_custom_match_function": false, "name": "string"}' \
    > result.txt
```

### Operation `rule_set_details`
```sh
$ samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace 'string' \
    --ruleset 'string' \
    > result.txt
```

### Operation `update_rule_set`
```sh
$ samples/cli/sample-apps Match2 updateRuleSet \
    --namespace 'string' \
    --ruleset 'string' \
    --body '{"data": {"string": {}}, "enable_custom_match_function": false, "name": "string"}' \
    > result.txt
```

### Operation `delete_rule_set`
```sh
$ samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace 'string' \
    --ruleset 'string' \
    > result.txt
```

### Operation `public_get_player_metric`
```sh
$ samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace 'string' \
    --pool 'string' \
    > result.txt
```

### Operation `version_check_handler`
```sh
$ samples/cli/sample-apps Match2 versionCheckHandler \
    > result.txt
```

