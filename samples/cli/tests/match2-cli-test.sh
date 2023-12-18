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
echo "1..32"

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
    --body '{"matchPool": "pEZDQxrMKAY3sl7M", "sessionId": "Ba90wiNeOaZxvLje"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'RhxHX0zSg4liSAqU' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'J1raDVwwfzAca2TQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '40mFoIzSXcRwayvP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '9XdwPiW9wtSqXnoa' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "07AxKAvwpHj3ljOJ", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'DpuaBblrMs2eOrXd' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "2ZM6VwptDqsJwuea", "stop": true}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "kohIfyqXFIhKdk6r", "serviceAppName": "BSZz1SK3lpbCYChj", "url": "47ZLTv9o4jC0zEe4"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '8bkbrD9YGLd336BD' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "7c7UWyhxJDQJ38D4", "serviceAppName": "YXPteCti8c7gCsKe", "url": "4yKns2aGxKCk9HzG"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '1KOx2s0zyypYPmVR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --name 'nX8VltJwWMtIAU2R' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 95, "backfill_ticket_expiration_seconds": 19, "match_function": "sjLsW6effHqccyei", "match_function_override": {"backfill_matches": "g79MOiGKsnClPUtr", "enrichment": ["hrMeLTYwcTF4965q", "jckSSGpHhifsMKLJ", "2sEjWG3RphScTF5t"], "make_matches": "rwOwKrILxaJyLX3M", "stat_codes": ["Kk0pMQAZY0ZSxzjb", "0eOTYAn3xKji1BJ4", "27QYy1KWomhVHPhK"], "validation": ["i7u4bi9iVXtfAOtA", "1K5Nr19wZWzG9Pcd", "Rj9rnAbk04WbiuNR"]}, "name": "5Y1HbPGmbfLUSH0K", "rule_set": "HAL7vBik5C2liHBC", "session_template": "C6zH1YquuAo5a4kz", "ticket_expiration_seconds": 44}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '8GV1gBuDZzgG9Ri9' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Bm6W85vFaJxS4GcZ' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 2, "backfill_ticket_expiration_seconds": 8, "match_function": "GY1q3J4Sr3VStb04", "match_function_override": {"backfill_matches": "5jYatEDUYtBZxu7P", "enrichment": ["awfkHGB9pKvEVaop", "98ASZBwdLCXEznAr", "zAddDLsDJXxDh1ZE"], "make_matches": "Kmm6RQV50hqgxznt", "stat_codes": ["UZyAGxfYo6TQyW6X", "V2grzQe1xrAAD7H7", "qpi4fnpz6E1eBtwM"], "validation": ["uToNJ6YaENt09uMr", "lh4L78sBaE87LYLB", "DlK0bkmnOdjNFmJp"]}, "rule_set": "exEbGezKR7AkFpfj", "session_template": "5oHa9imIfP4RI3C9", "ticket_expiration_seconds": 61}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'izgdlotVkbkU97J9' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'GSwtjYOyuaGcZmaT' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'eTcVsvJOlBoiwBAl' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'gRb48D6dvisL8Cg0' \
    --limit '56' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 22 'AdminGetMatchPoolTickets' test.out

#- 23 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"gYm9pke9wVrYUHlJ": {}, "ZXBLHXuAp82ngzBE": {}, "LI7RKNn2XPjCPMEC": {}}, "latencies": {"kFzLBHyaaDH2SY7b": 81, "1IZ8nJxemw7yl9Ji": 68, "IXNNg6cGdv6adC6Q": 99}, "matchPool": "q8wR3N2cLrdZNXc6", "sessionID": "0bBrBT0ochFFyZ4n"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchTicket' test.out

#- 24 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --matchPool 'm3ZUUpms9B3VDdwf' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 24 'GetMyMatchTickets' test.out

#- 25 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'NgdCofFiIOCmo3Si' \
    > test.out 2>&1
eval_tap $? 25 'MatchTicketDetails' test.out

#- 26 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'gDhHcGEWlLpJxJ1H' \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchTicket' test.out

#- 27 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --name '2z2M8NJyodtam3so' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 27 'RuleSetList' test.out

#- 28 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"FeI1keYekxNu7t6i": {}, "tBwCpURLQcZRibw1": {}, "A5L6jlaGFkLXuZYP": {}}, "enable_custom_match_function": false, "name": "jiVdihChA90Xwsub"}' \
    > test.out 2>&1
eval_tap $? 28 'CreateRuleSet' test.out

#- 29 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'gOvpfIrFScFNv8Ec' \
    > test.out 2>&1
eval_tap $? 29 'RuleSetDetails' test.out

#- 30 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'KoWrAFjt6NFgWE2W' \
    --body '{"data": {"1dEJSKQc1KlJDjoa": {}, "rcOiwwMI6r7auDBC": {}, "8BjTTcXs9ZxDuEFi": {}}, "enable_custom_match_function": true, "name": "M2vLMt7EoIi0gKHy"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateRuleSet' test.out

#- 31 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'qX5HmeaYWrzy9OXb' \
    > test.out 2>&1
eval_tap $? 31 'DeleteRuleSet' test.out

#- 32 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 32 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE