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
    --body '{"extraPlatforms": ["lOFEiG7xUztDXkWD", "2s8yuyf9v0ltdOxR", "9AeJeiMeSOcDCcPx"], "platformGroup": {"CDuZyvtmYZKnKKkq": ["OSHHmckwV6U8n92N", "jVBJobq2ByRA7RRg", "hWEmYgCnIC7iODEY"], "YJNCs0MlkPgBbnvh": ["ATnm7jZHStbPTff1", "iTT9uxk2TvNc8ML9", "PYUGDjWXkvbmFiqg"], "XocLF61kYCSdNcsT": ["bZacZGmFwRKy0ivF", "e95I0sgXDAb87Chq", "hEI8wg5zAcXrvMbf"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "KEEa6SLGbaG0IMfl", "sessionId": "AHL9ysqwUZw8E8Qn"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'MW1FAT4LPMXmq4cd' \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'dHSoe7gYdTSKXigp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'OookNIjK5OlG5yfb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '4sRkuDUt0F6bj7c3' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "cse4072ggyLwOujT", "stop": true}' \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'a2mtCZeRfM7A0ZDS' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "dLjyLKB4d7Ef9g5A", "stop": false}' \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "pIq7A8ewR76GtMcv", "serviceAppName": "ADGGOHIjqw0fzbwX", "url": "PZlNQ284GQGo7MBn"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'nmvQLERqL9kzbMsX' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "ihU9u8ui3NqwMVe2", "serviceAppName": "kzoPBKAtSZDfRwSI", "url": "hIQ7ovsiljtA15fK"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'jEuLv7g54EMwskjF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --name 'JsAEpdA8y0ZZiPyW' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 40, "backfill_ticket_expiration_seconds": 72, "crossplay_disabled": true, "match_function": "0cPoyAKGOEOLzYo4", "match_function_override": {"backfill_matches": "HjvbbESRPhQKWABX", "enrichment": ["GunpvnHCkf6eruP9", "BsozuBD6r0Jd9uCN", "IhgwANSs62DjTtpX"], "make_matches": "SCI4L6d20v7ksO0B", "stat_codes": ["Bi795YQauxVmui7V", "vyrmm4FfyVqKMtpf", "RZpVfs9jw9KUxWun"], "validation": ["GBtRgrR7jIaiIUwf", "NPFt4i7LMime7uXO", "BO1e8aQB3WKQIJPh"]}, "name": "gmgtsbs2HaQmPagH", "platform_group_enabled": true, "rule_set": "KBLVYSSIzO7BXMeF", "session_template": "vzyFdBpCgNjaJgE0", "ticket_expiration_seconds": 30}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'ujnQfz7A3bcaxQtf' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'f3gBFhIiqyG23uJe' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 98, "backfill_ticket_expiration_seconds": 87, "crossplay_disabled": false, "match_function": "i3XFQnf6ySWWXzTT", "match_function_override": {"backfill_matches": "ek6LZoNhJfHTSHoQ", "enrichment": ["19Qx1kaqBJkeqm2H", "5Nlt80CELInAEIB7", "IafbcOdthHhUlLZ8"], "make_matches": "kmAXeoK7SgbShGGV", "stat_codes": ["4nOfIorwxtNfkBjY", "upnFmwBVaK8G0QoT", "gLx8R4mkrD3Tre5S"], "validation": ["u6SLseqjDLzqjPgu", "g2XG3JqtTLneL6Qn", "kAMUGpeMCqoqTHkR"]}, "platform_group_enabled": false, "rule_set": "C5YUzHzCZPg4oLZH", "session_template": "PNEiMw4TryYoq7ee", "ticket_expiration_seconds": 87}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'FJwXAsozq0Mx1r1A' \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'mHPnYsCdBaZLNJvI' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'flD2MbU6El0KqXr0' \
    > test.out 2>&1
eval_tap $? 26 'GetPlayerMetric' test.out

#- 27 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'kj6Mvj95TJDdBT1N' \
    --limit '79' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetMatchPoolTickets' test.out

#- 28 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"4lfBWtp7NPKe4QUP": {}, "fVBNi3wE1AuNjgkF": {}, "l4m08mWgpcBitRwG": {}}, "latencies": {"0Onqp4qbBij0MbwQ": 43, "tzo3LDcTV4ACypIg": 92, "r0X4nv08PiEQLygb": 45}, "matchPool": "BVWLnu8Z6mmALzVY", "sessionID": "BgemyKFUx6wxR0fG", "storage": {"rQxk1qxtarUqZq2A": {}, "KQqtjSr7uTvoNjj3": {}, "skYiMPNTZcdxupuN": {}}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchTicket' test.out

#- 29 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --matchPool 'qTbN8S6W3dGDlJRx' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 29 'GetMyMatchTickets' test.out

#- 30 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'hGPYNVZG2iNI8uZm' \
    > test.out 2>&1
eval_tap $? 30 'MatchTicketDetails' test.out

#- 31 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'QJHl8BM8TykDUIq3' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchTicket' test.out

#- 32 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'oZAgIXJqx91SLTpy' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetList' test.out

#- 33 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"uJNoy1iqjlDQhZpG": {}, "xtO86SmKyKHpMEVM": {}, "GF1sWXAtlt2H1coZ": {}}, "enable_custom_match_function": false, "name": "tGXJ8Bk6ndD7pBIu"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateRuleSet' test.out

#- 34 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'z8KkLbOozb6nJcHr' \
    > test.out 2>&1
eval_tap $? 34 'RuleSetDetails' test.out

#- 35 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'y3T6m7LivZnI7YFP' \
    --body '{"data": {"acqqJtc601m55fFj": {}, "iU3elwz0XrwHcAcS": {}, "0eZtcoU49sCzaAMp": {}}, "enable_custom_match_function": true, "name": "LN3R8vJswUGW8QGI"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateRuleSet' test.out

#- 36 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'YSnp7AEUVDqkMLZk' \
    > test.out 2>&1
eval_tap $? 36 'DeleteRuleSet' test.out

#- 37 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 37 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE