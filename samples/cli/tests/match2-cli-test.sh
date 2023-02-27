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
echo "1..27"

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

#- 4 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "yMC2pyWM", "sessionId": "nL9eth81"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'u3K3Z1tZ' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID '8Hyp58L1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'ORTjBnLt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'FzsPXaZA' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "jCa7JrsS", "stop": true}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID '8i6QyJqu' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "Djc2i60x", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "W9NaMUHm", "url": "Lfax6iUm"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'ydN1vExp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteMatchFunction' test.out

#- 13 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 13 'MatchPoolList' test.out

#- 14 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 12, "backfill_ticket_expiration_seconds": 85, "match_function": "o6T3tWgh", "match_function_override": {"backfill_matches": "Wz1kLdJh", "hydration": ["liiY5ZCL", "ip1z560H", "NoHo2sbX"], "make_matches": "yauoMPrJ", "stat_codes": ["Onc3KPEf", "ZuN5e2Lv", "Q9F3FqMK"], "validation": ["WU6kHQT6", "UDURJfAY", "EpdjFelM"]}, "name": "OHX0knLb", "rule_set": "mfAVNP7S", "session_template": "JrwtdiKD", "ticket_expiration_seconds": 97}' \
    > test.out 2>&1
eval_tap $? 14 'CreateMatchPool' test.out

#- 15 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '9NQ85eD7' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolDetails' test.out

#- 16 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'k6RpsDMI' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 91, "backfill_ticket_expiration_seconds": 26, "match_function": "E1T5wvF8", "match_function_override": {"backfill_matches": "s2hInp7C", "hydration": ["A0J3x7QY", "geuedMse", "lA8Tdk1k"], "make_matches": "grQ4yumZ", "stat_codes": ["v775eYO2", "IpE2O3Ii", "xraBc6ui"], "validation": ["D7GWlqJ4", "RsVgyRKj", "yIwgUlMz"]}, "rule_set": "ZH9OBrWS", "session_template": "8Al1jujn", "ticket_expiration_seconds": 76}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchPool' test.out

#- 17 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'OkVv3BOR' \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchPool' test.out

#- 18 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'MDUgDEqp' \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolMetric' test.out

#- 19 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"RSGazwco": {}, "fHvmPJGo": {}, "HMWfhOjt": {}}, "latencies": {"F0vy1zRm": 52, "S5PvrOVy": 41, "vgtIImbJ": 86}, "matchPool": "8gCqfYDB", "sessionID": "lEg7WnXI"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchTicket' test.out

#- 20 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'bTjHE8g3' \
    > test.out 2>&1
eval_tap $? 20 'MatchTicketDetails' test.out

#- 21 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'QMUtWE97' \
    > test.out 2>&1
eval_tap $? 21 'DeleteMatchTicket' test.out

#- 22 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 22 'RuleSetList' test.out

#- 23 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"ue8uqFxy": {}, "TJ21ppcK": {}, "fzzmnded": {}}, "enable_custom_match_function": false, "name": "Rxy4nUkw"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateRuleSet' test.out

#- 24 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'qMGpGdgA' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetDetails' test.out

#- 25 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '8Nhrocp7' \
    --body '{"data": {"6VkbB3ra": {}, "yw9lpI1Q": {}, "ZYBx5zJw": {}}, "enable_custom_match_function": false, "name": "aFxVGCdP"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateRuleSet' test.out

#- 26 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'V74R0UvB' \
    > test.out 2>&1
eval_tap $? 26 'DeleteRuleSet' test.out

#- 27 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 27 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE