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
    --body '{"logLevel": "warning"}' \
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
    --body '{"extraPlatforms": ["OsiHZnssmFicnboj", "tGGDArupSA1ZdpNr", "E0hIWwhSz8Dyicay"], "platformGroup": {"KvcvzUNsXxBbxn14": ["axIZXXM3pinvlB3n", "VwiHGlRJK68gIk1M", "ZS8ky4tHiPbK58MS"], "VIelQspm9SsLVsiS": ["0qbHZisVGsNESuyh", "yIZW0tXQPVGQ3ZP6", "huPgpcelMDCYibd2"], "DYwgUxjL7qavsXdM": ["v2bmWkpEoCWHl5Ql", "yAS5xCjIuWOoEIxp", "U0GABKI15JnPZPIK"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "SSBSHR6R4A8Di9Xp", "sessionId": "WN8AtEP7AiMYmc2y"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '7fmk8tGEoed5qQV3' \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'EuF0xVvhxjp9ExgJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '36Hb5XkPEMPG6Ffq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'w1VMsWy4bdQWR6HY' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "o0wdNp73rFL7km3w", "stop": true}' \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID '0YzXlu7Hm3hdU1F1' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "LobvvMOMRgDFSawj", "stop": true}' \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "V5gvnaSwfucSL7xZ", "serviceAppName": "aayct2T6K95dXJLv", "url": "WJODUSYi5V5sKT4P"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'JFhLgBJsjRMsY1Gi' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "lKGmuB3fWnF1kkPe", "serviceAppName": "5bLNfq1EcaixPyBS", "url": "2hqEGl2QzSZ4U83A"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '83zabhjN0Ro39gL3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --name 'ozY75e9sdvOEaBgJ' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 42, "backfill_ticket_expiration_seconds": 25, "crossplay_disabled": false, "match_function": "bfssuEB4YhU6jSro", "match_function_override": {"backfill_matches": "B4tAzM9bY1Zem2Gz", "enrichment": ["QyVpVzS7yFGcNlos", "0X7LVQyg0bSK4rXV", "bOnrG8xkGhZX3NAL"], "make_matches": "SXQzGoPS86SFp9K3", "stat_codes": ["S4Slgg4YDL5daIS2", "zrKpqIoRqr20MVG3", "FlD8by5xAZiL9BpS"], "validation": ["19uxVECt0zBRabpz", "NnosdewIyJwHcXmo", "R9eNGqs9L6S8uEpF"]}, "name": "87a2OQxz1aOax3im", "platform_group_enabled": true, "rule_set": "UvcNbF75ktTKganQ", "session_template": "sVvV5tuaDIbgSS70", "ticket_expiration_seconds": 65}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '8Z1hjS8RsMRsbgkP' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'S4f18yKKB0uMTqkI' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 68, "backfill_ticket_expiration_seconds": 0, "crossplay_disabled": true, "match_function": "0pqourMFcd3jerDG", "match_function_override": {"backfill_matches": "8Zel22jzOjTSfj5e", "enrichment": ["U7v7eNPTl5BfqK84", "RpiekDp6VbCoIweM", "6aKo2aRS4NV9wWMs"], "make_matches": "lrDWN4wyqJOIWYNy", "stat_codes": ["A9D0XCFTuf5EGG1X", "z7LAdZls1hb6FD0c", "j8ThYhvi5ZETMWQa"], "validation": ["KFjLJQQvBb0NYsRf", "c3J6ADYFLAqHpVui", "VcjwHtaWeyzSeJEy"]}, "platform_group_enabled": true, "rule_set": "vNZIbgcSaiwSlFaP", "session_template": "wvDewEJQ0I5Xmc0V", "ticket_expiration_seconds": 65}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'GlSPMq1AxRMrl0QD' \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'g53jaEWpnrjYJqwQ' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'eL8pkfrhQyfLfUVQ' \
    > test.out 2>&1
eval_tap $? 26 'GetPlayerMetric' test.out

#- 27 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'DWEY9HD7NaC8x4CY' \
    --limit '33' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetMatchPoolTickets' test.out

#- 28 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"phhvUORG5yOF6R9t": {}, "X43yMmVlYmrndHof": {}, "miEK8uRBFLxKP85T": {}}, "latencies": {"TjBU0kIKsmnOOy0G": 37, "FjDmFXawLINSGUcY": 15, "IRLmBkU07qavZb0s": 53}, "matchPool": "gl3zbE7BBIWMd5uI", "sessionID": "NqWLEoWF5EhVJ91b", "storage": {"sjrQXRmsl3Wu064h": {}, "rotPrAObJtlPcWdx": {}, "zcGRfLi4MRQ0zMmm": {}}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchTicket' test.out

#- 29 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --matchPool '8RwZnzOapkqgQcBC' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 29 'GetMyMatchTickets' test.out

#- 30 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid '0c2EeR7Lg7mxbLaw' \
    > test.out 2>&1
eval_tap $? 30 'MatchTicketDetails' test.out

#- 31 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'WPfIZNpVmgHgwRX4' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchTicket' test.out

#- 32 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --name 'OMDdxHHubhrtkcg3' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetList' test.out

#- 33 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"c1nGylgtBMYVofNN": {}, "LGCuyksgepWznR1k": {}, "EJXMmVlw8xIko2ej": {}}, "enable_custom_match_function": false, "name": "XsZjjM49KER1vvtE"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateRuleSet' test.out

#- 34 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'cGr7jYlcTftLDYAm' \
    > test.out 2>&1
eval_tap $? 34 'RuleSetDetails' test.out

#- 35 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'QQ3BKuXnJ63Ol2yU' \
    --body '{"data": {"cLglHZnweekqDIQM": {}, "3kRMwSNI1cvjep4H": {}, "f0nni8SiT5vkAPFK": {}}, "enable_custom_match_function": false, "name": "OgLt1LHRW1dwkzko"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateRuleSet' test.out

#- 36 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'iLdH9Lc4h20vUH7X' \
    > test.out 2>&1
eval_tap $? 36 'DeleteRuleSet' test.out

#- 37 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 37 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE