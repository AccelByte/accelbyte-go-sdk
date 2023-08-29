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
echo "1..31"

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

#- 4 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 4 'EnvironmentVariableList' test.out

#- 5 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "F8TVN32DkLY1DkMx", "sessionId": "gHXJzW4697poL5pW"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'ZcLI4eH4pIT60iAq' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'BGoI3Mv0A43NfqDP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'BOkz9jmn7itT7UMd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'n4YTAKXIw46nEfm7' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "kfqxGsOVhLL5sihH", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'fkgvRAVnPqSMKv2f' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "UrGjlN92pLBtH3Ef", "stop": false}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "Gcv0RNrgBX46npPS", "serviceAppName": "KQ53owCQlGwBIQhe", "url": "C8baZBQoJjg0nF1R"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'sErpORnlVUATUe3B' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "uHiTRDPy0WXord30", "serviceAppName": "5FxY48IfTF99FVG9", "url": "rf64XWhpWQK6fQJ4"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'qeBTXAbUIGQyVHsj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --name '9BTGLGlesWJNf6Db' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 35, "backfill_ticket_expiration_seconds": 62, "match_function": "Ui3PIRB9FC7Zo35U", "match_function_override": {"backfill_matches": "M6UgNNV822JzSHmp", "enrichment": ["pyXFekZ6999nRygu", "5PphZsJk9e8dncNT", "vykWPVqAPoahn1jZ"], "make_matches": "VebIpMAZ21MoyBfz", "stat_codes": ["06CJU5suyOXYaX1g", "MKvx4ZX51rZ4j8E7", "8VIZLVV8L5kMJE7Q"], "validation": ["CSXC7WticO7QmIHg", "muaAiVipXNFVN0DS", "s13FoBrsLHai3udm"]}, "name": "v9xMjxPo4EwR8JmQ", "rule_set": "40ecXagVTNJ9Lqzs", "session_template": "9dPo4lroVHlDQ76j", "ticket_expiration_seconds": 77}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'tyTaO62CF1OnQTkW' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '3XuMT1PjSjpiOlZK' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 56, "backfill_ticket_expiration_seconds": 43, "match_function": "QSwDt3uTz0NTLg7w", "match_function_override": {"backfill_matches": "FiYw35RkajgG9iUE", "enrichment": ["uBDi14DMXSxhq1ni", "9TYa7A08m6dVa9zn", "nHesRDk9ST0KA8mu"], "make_matches": "9NFWuM2DYyZTmqGT", "stat_codes": ["8TFKcZjohWD73OiI", "pPBzb8C8bTrbGSVQ", "b7bj59Qg4IKn1jqi"], "validation": ["ZtaLAddYQKpyYD7R", "GazNCiid7r6We9YR", "7IYGaaiwlVp1VnPP"]}, "rule_set": "nW07QdFifSgRtn9g", "session_template": "jZCnhz1MB2jWhQ6Q", "ticket_expiration_seconds": 75}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '6T6pTJzyGWtpvOQZ' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'swbh62yy4yfe1O16' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'w7TZJ5Ke3y9oYe97' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"w3I4lM43JhQSTerz": {}, "lY3KyTMZ0SclemUO": {}, "7ttLftsZP3BfnLTn": {}}, "latencies": {"Vk3L2L2ZUiewlqKH": 94, "K82VIhiS3BUyQjfC": 60, "H0sw4ZHPNibdh7yQ": 2}, "matchPool": "exofTBh7Q9sLpWHP", "sessionID": "TNBTtxeF8op8QlUF"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchTicket' test.out

#- 23 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --matchPool 'Xl9InUk4taHMBRmB' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 23 'GetMyMatchTickets' test.out

#- 24 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'A4Gite6IN2Thk0vS' \
    > test.out 2>&1
eval_tap $? 24 'MatchTicketDetails' test.out

#- 25 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'fEvfA4U36e5SMUKB' \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchTicket' test.out

#- 26 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --name 'JBrr9UHgHldiX4iN' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetList' test.out

#- 27 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"JNWEKsvKNNXRRb98": {}, "2qYoldTihxah25Ei": {}, "n3376wbkQrS537gS": {}}, "enable_custom_match_function": true, "name": "PIetJB6JMAe4dB5l"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateRuleSet' test.out

#- 28 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'TqXkyJLzumSlMbVV' \
    > test.out 2>&1
eval_tap $? 28 'RuleSetDetails' test.out

#- 29 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'xvSwkNlgOI5Hiomj' \
    --body '{"data": {"bPsaFZcvGSv1enhI": {}, "JwWJ4IIlXDnIhNip": {}, "Vda26zqGLFOiY3Sw": {}}, "enable_custom_match_function": false, "name": "IwlAAgFYMsQ7THtD"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateRuleSet' test.out

#- 30 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'nyEjVkONZdONRanE' \
    > test.out 2>&1
eval_tap $? 30 'DeleteRuleSet' test.out

#- 31 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE