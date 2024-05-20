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
echo "1..35"

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

#- 4 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAllConfigV1' test.out

#- 5 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigV1' test.out

#- 6 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"platformGroup": {"4ycot36rgYmFOw7B": ["vSo3KMkLOD9DGMWe", "avSvonoI2g42yNu1", "eYsbPUtJiJ2NFU1a"], "Mgpbap1UkXUeleFJ": ["1i5o5MyBZCDf8jIl", "8sGJ4n4PUMLb8mMI", "gecCDEDGjkl5JUT9"], "Iny6YsyovdNCcwH7": ["LePWpxTyLnlI2ZBb", "WsWzsO2D9ls8bbOt", "K5QSxtYZr8TbFRK4"]}}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPatchConfigV1' test.out

#- 7 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 7 'EnvironmentVariableList' test.out

#- 8 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "XXlx9cNcZQ7vg8KF", "sessionId": "U1G6xmYCBJFwKmxK"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateBackfill' test.out

#- 9 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'Ah1NPVJLPibeaDoL' \
    > test.out 2>&1
eval_tap $? 9 'GetBackfillProposal' test.out

#- 10 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID '9nRQRxrYA1X6iHWv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetBackfill' test.out

#- 11 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'cOq7qNxLXSmKOBnw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteBackfill' test.out

#- 12 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'SF4hl2GvlKi7ZaFu' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "oHZEuPlboDZ9fHYW", "stop": true}' \
    > test.out 2>&1
eval_tap $? 12 'AcceptBackfill' test.out

#- 13 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'sssm0GRRLaFxw6a8' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "54vL0CT7J3DS94cQ", "stop": false}' \
    > test.out 2>&1
eval_tap $? 13 'RejectBackfill' test.out

#- 14 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 14 'MatchFunctionList' test.out

#- 15 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "I0vf0IXnEryINT05", "serviceAppName": "ktfvyt9ATelLCGzp", "url": "ka9KmDhDdA7lHI7g"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchFunction' test.out

#- 16 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'OebcLxKv5ouHNY8J' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "hQO4L1Zg4bf7sBxA", "serviceAppName": "lhETsQz2LRCZWoel", "url": "1Zy09kuDGX97TtpW"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchFunction' test.out

#- 17 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '4n9nr4Ilpj1H9OVs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchFunction' test.out

#- 18 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --name '2HMMiKJKNR8E34DC' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolList' test.out

#- 19 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 42, "backfill_ticket_expiration_seconds": 18, "crossplay_disabled": true, "match_function": "2xPzmgS8ExIAyTAK", "match_function_override": {"backfill_matches": "S9YYF0QFuzf3qtE6", "enrichment": ["LHDydhOhvjnHchn7", "X5fkpgaaLuQkwWBn", "6dCtPDnYmygLj2x0"], "make_matches": "jX3JuZhyA39oCN7p", "stat_codes": ["CnjLvC8SmaNUKghV", "nE5nl8jcXMUNjDrm", "FqPQMeTGt5J8n5sx"], "validation": ["NnPytvxeoFkRInFY", "5kSGLidbrtN2DdbE", "QBQTcJy0cqC4fn6q"]}, "name": "9Rnq8KVCG14l6659", "platform_group_enabled": false, "rule_set": "baTZKuW2s17SKkUa", "session_template": "6C25rZuHRl9fDom2", "ticket_expiration_seconds": 50}' \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchPool' test.out

#- 20 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'IFmPYR5loznn5ls9' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolDetails' test.out

#- 21 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'z8g7bCbFeJxzDzc9' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 47, "backfill_ticket_expiration_seconds": 95, "crossplay_disabled": false, "match_function": "z8VQ5I1p4W46wz6S", "match_function_override": {"backfill_matches": "nBOkLg0zRetUmxSS", "enrichment": ["SJXh2PnPbuMDCHyP", "FkUGN9mT3clgCBg1", "B7gzEXS8yBu3QOfE"], "make_matches": "TO1oSXpS0JsXyuIl", "stat_codes": ["zYbjCjVKdyXrwuh9", "3rxi3EbGCzWh6wWZ", "uxNAV6xHPFLuFFG6"], "validation": ["XDrdXgKsxKIkmEgi", "SEUbE07w7dnE0pKW", "1dvwUoRCsjfHvCk3"]}, "platform_group_enabled": true, "rule_set": "CjoLw14khRtDwixl", "session_template": "Dgac0NXMzi88ultB", "ticket_expiration_seconds": 1}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateMatchPool' test.out

#- 22 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'TONMWHcygZLfEQgY' \
    > test.out 2>&1
eval_tap $? 22 'DeleteMatchPool' test.out

#- 23 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'bHn2VXif9QzD88fW' \
    > test.out 2>&1
eval_tap $? 23 'MatchPoolMetric' test.out

#- 24 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'n5BFdYLsEBhyWIOO' \
    > test.out 2>&1
eval_tap $? 24 'GetPlayerMetric' test.out

#- 25 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'BVGPeehDXerczzZc' \
    --limit '34' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetMatchPoolTickets' test.out

#- 26 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"JLlmfMWiryBOMldk": {}, "xI6CKrCbZGARLNra": {}, "argjl7av9MS5ZINY": {}}, "latencies": {"qvpqtYjlMvCo5EMM": 43, "rk5JuKMTSjzrjwYa": 21, "dp6Rbr0mgjPOYYoI": 25}, "matchPool": "0yusUcctXUrHeKFc", "sessionID": "Okfq1QSJioaqd9rK"}' \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchTicket' test.out

#- 27 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --matchPool 'fgmlI5mr1fbWyHFH' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 27 'GetMyMatchTickets' test.out

#- 28 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'RQUeYYXKWtdak73l' \
    > test.out 2>&1
eval_tap $? 28 'MatchTicketDetails' test.out

#- 29 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'r3IkKktXpgXDBQG9' \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchTicket' test.out

#- 30 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --name 'i9ok9sm6d7GAp73C' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 30 'RuleSetList' test.out

#- 31 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"bWMtGAP0bM23Z1j5": {}, "5tEFPuunYwMpyUSh": {}, "m1MHj7a0usPP0Miw": {}}, "enable_custom_match_function": true, "name": "zgLsD1URnIABgaB9"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateRuleSet' test.out

#- 32 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'WLKnTAdVkeauVJ0C' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetDetails' test.out

#- 33 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'KeFwQpCdMmbbVMpt' \
    --body '{"data": {"crggQ5NblP0DUq0N": {}, "wmDecTJ7a37iAUW5": {}, "8yBqrfV04gGmRBeS": {}}, "enable_custom_match_function": true, "name": "HJSJMWEUYhz18NkI"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateRuleSet' test.out

#- 34 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'NogD3QM3XcuP8ret' \
    > test.out 2>&1
eval_tap $? 34 'DeleteRuleSet' test.out

#- 35 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 35 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE