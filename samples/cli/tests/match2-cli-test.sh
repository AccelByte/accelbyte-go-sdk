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
    --body '{"matchPool": "0tS7DkIvHSshSJEf", "sessionId": "lH3Rmpi8zQANZQYi"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'KpALc5jsXMEe7YYP' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'pI0Nzpvr82QpAxEZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'xRNXU7EQYw2RM8l4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'kQs9gkToY2i29uyR' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "i6uWnCCJssYCPkF0", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'hkVqpjuOOutItxq8' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "pAqMI3vG3qJFqAUR", "stop": false}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "xTIdiuw8hcGShFri", "serviceAppName": "TCy2oEVuQWrBgVi3", "url": "ujqBwlOJB4wcIxAh"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'S9dG4gFtyYaqivuK' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "3McyLLCZVT6JltnG", "serviceAppName": "mgHExy8xGKgSh7xn", "url": "MJ4exLgsVHoRmfjx"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'Lq5lRUsWFZ9QGyxf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --name 'SKiicB6ciqSOpwG8' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 94, "backfill_ticket_expiration_seconds": 80, "match_function": "9NgX8wvrwjBPm8NL", "match_function_override": {"backfill_matches": "XG2hrbbSb5YHe7eo", "enrichment": ["DYMH3JPhG1wb10WB", "Pj0ffoz95fqtNjbf", "yDiIPXLDqP0H4km8"], "make_matches": "jHj1Ib3BYofbErAJ", "stat_codes": ["eZ2jaABB9ZJuhbI7", "E4pUQWzPQKYSNp4k", "SaWMuTnG2LHCETbq"], "validation": ["3raOvSkR5vOIEgqc", "R8DFoJRx7g8OOtj6", "WTfhA6d6ZlaxHPKc"]}, "name": "yzPmJTrQzVEbKXy5", "rule_set": "8CDxeUkTYq0faRdZ", "session_template": "l8YTJorNBKyjhS94", "ticket_expiration_seconds": 90}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'uYYMbOf1uy0jiOgl' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'cTECaObPhN2uF3yi' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 23, "backfill_ticket_expiration_seconds": 14, "match_function": "x8TkIgalVVAyqbRq", "match_function_override": {"backfill_matches": "bziqUfqmzJGPZKlG", "enrichment": ["eB1i4eUVx8NSvHfy", "TySfLLpo7dBR1TkE", "Rgk3DT4lNnTuyNY0"], "make_matches": "LLP8eX9jh5YYPZuW", "stat_codes": ["5owOKvagukLc9F07", "Veg16BBiMtH8uCyw", "jCWcvhzfj7MA9u9h"], "validation": ["htObdSYa7wglsWEK", "7Y2RGPu4f9FavIWp", "KA2OICcTZnWYomgl"]}, "rule_set": "6vesocvm5booitiw", "session_template": "1bOXjeboXQmwodrK", "ticket_expiration_seconds": 93}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'a19oLahTKaq8VjT6' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'ymTyb8nlkqHgOk14' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '7CiKSJUUUJj3R6Ys' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"vZOyp6lVl2N7I1F4": {}, "8ptqOx1yLuew6PJz": {}, "Bwk3mYARKmBFbDiP": {}}, "latencies": {"49suhsqhXaGzaItA": 58, "4OsciTy5oVTdnSKb": 96, "2fAuJqGehlfjDi9Z": 74}, "matchPool": "xLp0XWozTZsCLKqj", "sessionID": "t2xp7qqDGjYjCdqD"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchTicket' test.out

#- 23 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --matchPool '4RYBDIP2TSzXZAmv' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 23 'GetMyMatchTickets' test.out

#- 24 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'lx5SlL31trZjOQYw' \
    > test.out 2>&1
eval_tap $? 24 'MatchTicketDetails' test.out

#- 25 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'I4efSwzn0adpz8UY' \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchTicket' test.out

#- 26 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'K8pl2B3fshJM7JCA' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetList' test.out

#- 27 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"dt03030RgrDbpaKi": {}, "36cbDDz77Bukw8Nt": {}, "2l26WLBMfUfCHEEx": {}}, "enable_custom_match_function": false, "name": "yIKoRQuXLiQMASgJ"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateRuleSet' test.out

#- 28 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'XT4Hf3LHMRDmJUT5' \
    > test.out 2>&1
eval_tap $? 28 'RuleSetDetails' test.out

#- 29 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'PrB4zWqoQNgwxzJp' \
    --body '{"data": {"rkkmlNRLvr5IKJ18": {}, "5B6NDyGcUvmww36Z": {}, "37iRouiT5dx175xw": {}}, "enable_custom_match_function": true, "name": "COOnlHue1q9rCs29"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateRuleSet' test.out

#- 30 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'w9k8p9u8fPy9JkF7' \
    > test.out 2>&1
eval_tap $? 30 'DeleteRuleSet' test.out

#- 31 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE