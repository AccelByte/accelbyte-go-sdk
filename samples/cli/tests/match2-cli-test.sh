#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..37"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 GetHealthcheckInfo
samples/cli/sample-apps Match2 getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
samples/cli/sample-apps Match2 getHealthcheckInfoV1 \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminGetLogConfig
samples/cli/sample-apps Match2 adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
samples/cli/sample-apps Match2 adminPatchUpdateLogConfig \
    --body '{"logLevel": "trace"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigV1' test.out

#- 7 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigV1' test.out

#- 8 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["HpTVQQvFicEb683n", "jKEYfmIRQXFpmlgF", "gRfmJOkbbuMOC7VS"], "matchAnyCommon": true, "platformGroup": {"BxkZbuGaLvJLR0Qm": ["t6Ht3koEIfr0gnuL", "tXYugXCBaU7po3cH", "V9wGYTpInHBcFEpx"], "z5njx9vGHa67iUL3": ["7JjOWDcl7Eis4Dmt", "5MrjOSFznz1DLJUb", "p5DhIoUxSlDXzZlE"], "NeC9PaL9csVq2dyk": ["V6OuxAtxYCswS7dh", "dr2PJ3yk5QQO8hB1", "KL2BM58eZIf9P4GN"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "5A33bZR4GifwjFme", "sessionId": "yU3bQdp3yC8ENP3x"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'bt2nMOiUptBmYwJJ' \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'xJAfVhsOXqVU9n4B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'fTKB5zPHb7NYIVyT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'UBMkIccdkHwrkwah' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "9qwQKYNj6I81ZRqh", "stop": true}' \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'QEBuGeYn1gzmjzXA' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "KnHgANjXorxo4t1O", "stop": false}' \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "4nsWZKH1vvCGfsPL", "serviceAppName": "743IynRfjeYDkZzE", "url": "wXopwjivylVAO9sE"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'wmDTCJxVWIJxbiRB' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "6aJShsD5RuKRgC8w", "serviceAppName": "YVKrEymWT8MpW1GL", "url": "1J4OCzgmUqrmN2XU"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '1YGTsolIFSzT48TT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --name 'MQoujvcWr6q89mRF' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 35, "backfill_ticket_expiration_seconds": 18, "best_latency_calculation_method": "a3gIw4bny2DYZbdc", "crossplay_disabled": false, "match_function": "XBKuojbniWP0G7VY", "match_function_override": {"backfill_matches": "smsbnRMnIqN4rXp8", "enrichment": ["F4Jqk0y7LpgK95qG", "xpZUwRSPvEf3yyPi", "o3nc5snXJN6kCwIv"], "make_matches": "v9jl5iEnOWFDuyNU", "stat_codes": ["6sY5KrXQrGxtm3bO", "QG28mjSeNdSsoYjd", "16GeRTEk5futECpG"], "validation": ["iHhUmgOAK8PLnqxp", "rWraYJJ9bTfDkF99", "eaHNgQwV7ZDB51kZ"]}, "name": "PCZNL0UZ9BTCFVMF", "platform_group_enabled": true, "rule_set": "HqKf39WwBr5b4RiP", "session_template": "PxOlKzmk8V8ZD0Jk", "ticket_expiration_seconds": 10}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '03F6EXRVfFiI77B2' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'KQutt5VKggz9NMFt' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 25, "backfill_ticket_expiration_seconds": 17, "best_latency_calculation_method": "3Y9OnArEWuy6ZZ7B", "crossplay_disabled": true, "match_function": "mYKHiqnWy6GGFIqt", "match_function_override": {"backfill_matches": "kjUNSQnTWIta0ItL", "enrichment": ["hNW5b1HLGLHQvXvc", "vq8fKBpIuw4TSMtL", "p7BcOoGUdRZGyEaW"], "make_matches": "GRl3ikBr4YREBUCZ", "stat_codes": ["8vDDHEuYFqSGfydq", "ZONpnMqwC0xNnuGu", "HsZrJtKLW5ACil01"], "validation": ["DfRMK8c2d7wihtAf", "0fNitkhGs9oCZe85", "NuxTzt6dIE7ZM2ez"]}, "platform_group_enabled": false, "rule_set": "FS4HUJcCwHrwI5OU", "session_template": "R1uTZZrju2CiRDMl", "ticket_expiration_seconds": 92}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'dHCLhLZdqdmxoFp1' \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'rwULOnf2i89xEscj' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'p7SVh1KvW62FodMt' \
    > test.out 2>&1
eval_tap $? 26 'GetPlayerMetric' test.out

#- 27 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'TngIjXPU8mmTqL8d' \
    --limit '48' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetMatchPoolTickets' test.out

#- 28 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"SZsH8BYp7eLmCU11": {}, "MZGtrH1N9uaSJyxv": {}, "mnUPB9NJmMorTJEK": {}}, "latencies": {"GbWJEYxCrukN1bJ4": 26, "sEELhbe3e7d4zSkl": 72, "HFRQOc5VG52FBEZa": 36}, "matchPool": "J087IfHTsaEr074X", "sessionID": "6VDLZCVGOWnkjqL8", "storage": {"awHptXztzGOLAdEu": {}, "is8OekVbdrJzuAaE": {}, "Vq1YiZSTRDJGCIGW": {}}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchTicket' test.out

#- 29 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --matchPool 'ubcVNv4OL2bvkNNy' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 29 'GetMyMatchTickets' test.out

#- 30 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'IHLMLU1riIHn9KZK' \
    > test.out 2>&1
eval_tap $? 30 'MatchTicketDetails' test.out

#- 31 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'Odbrz63Q0NAgZKjI' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchTicket' test.out

#- 32 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --name 'wkix5FFoZ5uKet9C' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetList' test.out

#- 33 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"h1z89NqA8Is7Akm1": {}, "o14z2A9M6qcSbAwq": {}, "5Y3yd5rzAoGcIByc": {}}, "enable_custom_match_function": true, "name": "tLcQKUv5qNDX5BQp"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateRuleSet' test.out

#- 34 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'puYJH3qxxaN1DAbF' \
    > test.out 2>&1
eval_tap $? 34 'RuleSetDetails' test.out

#- 35 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '9Olw1Z01QY1POtm9' \
    --body '{"data": {"7gAq9ft9KWxonK8e": {}, "09GACXPGEWHHpHja": {}, "V9SOaJOglcTCh4bP": {}}, "enable_custom_match_function": false, "name": "dCsfkvbaIa5q8L9o"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateRuleSet' test.out

#- 36 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'ngphxiRfr2wisGjT' \
    > test.out 2>&1
eval_tap $? 36 'DeleteRuleSet' test.out

#- 37 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 37 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE