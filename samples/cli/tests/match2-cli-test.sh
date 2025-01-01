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
echo "1..38"

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
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["SFlVwTiUSb1vJg7p", "iPP1R5COVn3yAljq", "oIcHk8NSKg4UyRat"], "matchAnyCommon": true, "platformGroup": {"MlHAIRdPTCkFIdGP": ["PXrMz4uRcTpvjzVz", "WVYzldOKS8rp4vRs", "94upfbti0O44X1o1"], "Zqac9ZdqZFhfjq42": ["pKhrTryh4VzW4qz6", "Kh6cpomxOBMyiXdR", "8K4FysAoZtP6TNJF"], "nBzQVswomazgeYIu": ["6RXnIUVCcb3FGGnU", "6k5ftycL398fTCU6", "xbL3zzh2eF5joLlU"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "46TNs69fMpgCwnb3", "sessionId": "zEc4t2cUSoL3AmRS"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'qJGrCQjGBH9PPSn0' \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'bHjS0dKJF5QhFg8o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'LhtKSz0CwfduwZdh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '2leuyLPkFSA94U2y' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["lSXAuv5wJwOrdD9A", "MyC76yARHLEbsVRB", "SiFdqJXJfsgL0ZSG"], "proposalId": "nGlmqThQ6ajUTel7", "stop": false}' \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'HbW3yUBsaA6fRbHs' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "9WQBZTfYOWDqUrtO", "stop": true}' \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "OHPOxa1sDd5bGI6V", "serviceAppName": "I0r5HaBEkd4ATMMI", "url": "GLMtE2Fzko2GPCoI"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '9hRn3p7wXUZxmE9Y' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "o87TWdY8R7sh3jR6", "serviceAppName": "LiiLT6cNPU6p9qYu", "url": "sdL2wkp8AsIe0rH1"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '2TWcSw2Pi7MIMfgp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'NU9TFgOjFyYJzB9a' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 52, "backfill_ticket_expiration_seconds": 28, "best_latency_calculation_method": "1zhd0yjGORXnbAXY", "crossplay_disabled": false, "match_function": "eqg3Db7IlgExAY9D", "match_function_override": {"backfill_matches": "tjWQq6NujU2ckrdy", "enrichment": ["4AfijLfCU24mg5ix", "iMoYJBE52NqSxWt8", "PLdw0DTOAphbwGZ9"], "make_matches": "t506N9lLLYeigWiK", "stat_codes": ["5WxUL6lQD7RHVbVF", "brRZWNWNZayLwWhD", "jv2hD27BGHNpbyly"], "validation": ["bii9dBvcuNo0SrMJ", "Taj1n5UOchimAoSK", "8Bj43XLPTykKDctS"]}, "name": "bIwnKHbQXW19oOEn", "platform_group_enabled": true, "rule_set": "rQsPILNxm2mb6GpE", "session_template": "xKPN3g20GBr3ZlKm", "ticket_expiration_seconds": 76}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'sjnc3OPNT31ecA3p' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'fSjEU2UtJoufmToI' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 86, "backfill_ticket_expiration_seconds": 32, "best_latency_calculation_method": "V3TpZqiYSUdER7LU", "crossplay_disabled": true, "match_function": "aOjwAzVTLbhBS0ur", "match_function_override": {"backfill_matches": "xC6bLB3NA7idjgRv", "enrichment": ["PI7kdaJIUYErWLvt", "O3G9mAcW6n9JfnFC", "WM0wvrAWLZrqhOuw"], "make_matches": "jLaLYnsGtyCqg5EW", "stat_codes": ["fc8BitaNC5Upde6X", "5LpOOA5MVZ6BZzT3", "A7FWJnXPV3HpeMYw"], "validation": ["nuXJBIcyERkc4ZXA", "1Yfg0al9yviygnbR", "XFKiWfziJYYwG9S0"]}, "platform_group_enabled": true, "rule_set": "SL7nRhQIy09GJ1N9", "session_template": "3HqtVY0cWO3mxPNE", "ticket_expiration_seconds": 53}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'ITGhr1u4VV9nBl0P' \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'q42XJbSKZOEUpvEc' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '1u9JkK6VL92W3vrr' \
    > test.out 2>&1
eval_tap $? 26 'GetPlayerMetric' test.out

#- 27 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool '37DLgKdqiMfcUEGA' \
    --limit '45' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetMatchPoolTickets' test.out

#- 28 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"nh8zeiSXVVrighYG": {}, "ogFpTY0FHX0j6Bur": {}, "SIw1RhNnotrVO4GX": {}}, "excludedSessions": ["fLzrCqDppfxaUNdT", "Bk6m4anIFtw96HOq", "60vBp76NCedzGNgc"], "latencies": {"G5T909tDrK4cJ7Ah": 74, "pE2A6SWAZlpm9LZy": 13, "vmXcBecHBaybqRwY": 1}, "matchPool": "zBfycQTTD8YQoiiM", "sessionID": "PbfwVGsunC1xJwXh", "storage": {"pDwyDbeIQF1p5Ftt": {}, "zq1piwYNfS6FZhV9": {}, "DOIaGdatCfg2yA89": {}}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchTicket' test.out

#- 29 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --matchPool '6SsQzLl7pegHXVsW' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 29 'GetMyMatchTickets' test.out

#- 30 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'kNJS8IYPtdkeK48K' \
    > test.out 2>&1
eval_tap $? 30 'MatchTicketDetails' test.out

#- 31 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'EPwvHqixruqlEkMZ' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchTicket' test.out

#- 32 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --name '6dQ1gB5zkN611Pbi' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetList' test.out

#- 33 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"s6utBGqGzHakOqJ9": {}, "cRuuDzwl4XYYf4qg": {}, "IX37khLQvnyMJxbL": {}}, "enable_custom_match_function": true, "name": "PK9QLYgWfXq35qFy"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateRuleSet' test.out

#- 34 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'oAnsr44HKNW45npC' \
    > test.out 2>&1
eval_tap $? 34 'RuleSetDetails' test.out

#- 35 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'ulBJLfWVyl8P2PWo' \
    --body '{"data": {"GiceMOfnyYjthIPr": {}, "tbv6eGjXuIK1D5Yd": {}, "PWovS4L86kOEfvri": {}}, "enable_custom_match_function": false, "name": "lCFOX7opZo9Jt2sg"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateRuleSet' test.out

#- 36 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'w84to1nxDLcwOtBN' \
    > test.out 2>&1
eval_tap $? 36 'DeleteRuleSet' test.out

#- 37 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Yz7LkLdlny9XV21A' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPlayerMetric' test.out

#- 38 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 38 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE