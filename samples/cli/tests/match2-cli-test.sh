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
    --body '{"matchPool": "AilDHkRlGs2Gr0Wo", "sessionId": "r6uOS6TBVOgK5Kbn"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'QyBs0Ve2xHeJTmqp' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'Wk86DkYLYhgsLFCx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'HmZwtmcaHJQ0zg6P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'qe4jon8FnXcrsasB' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "8aThCyD8ZB0Usfoh", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'Mew2shP8svsnWkNL' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "I0nNJw8rh96Bv85x", "stop": true}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "d09B0KDArN6CE3Wv", "serviceAppName": "5WIOVjfS9aHtvPiQ", "url": "QURQB7MT23A1Hm01"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'gP9WikI1Ff4P0Qd6' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "IycyOg8ZskfrDp6I", "serviceAppName": "Fu4AT6VbKPYcTN9n", "url": "kmXf4ujri5EBCIPR"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'ByHQ1K0QPTdXregQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --name 'bE4iDkNSHqlY7joH' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 57, "backfill_ticket_expiration_seconds": 25, "match_function": "Y8AXH9DwSsxHOD91", "match_function_override": {"backfill_matches": "UUV9xEa1xbYEpBtX", "enrichment": ["Dn3SG3wnnSReeG0h", "zEwYATHtfPQt2ucE", "MBsR4dIwTeCZqWia"], "make_matches": "T1yZXQ3elmOE7jci", "stat_codes": ["S5fl7UxrKDQLSkn0", "lKV7FXGlDbOF9KJS", "PP3l1CUghLxy67hL"], "validation": ["BIXRtKgvH4mFQaHZ", "06lnLYl6361kXiHY", "98GLlq89s8G2iik9"]}, "name": "nNKPlOU0Yp681daL", "rule_set": "BfAPfzFreLrU8y0E", "session_template": "ei2hkOIJ3CQIYB5I", "ticket_expiration_seconds": 51}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'RY6RzSusXLEJSiAL' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'pqzpU3PDs4drsz5v' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 8, "backfill_ticket_expiration_seconds": 49, "match_function": "QVHehHvQT8PKN15O", "match_function_override": {"backfill_matches": "xGpUHKArPMHYnGFq", "enrichment": ["d2bIBdz9xkOwAPn3", "7MX2ovzRT3hm58mL", "WfamkF9JSMHuMwMX"], "make_matches": "nrcahk1sVUAc0MbR", "stat_codes": ["GEpdacJ0fF5YTr8Y", "nZDdbfrhXWTJl7GW", "V8stHrPGTua0RN7o"], "validation": ["o4y97fbm8LQIXIHN", "x6XnM3mUpnLNVBHs", "8gTE1HV1iz3vZAnM"]}, "rule_set": "9aWiHInJkw8ntgZQ", "session_template": "VoFpar9BzQONLiEu", "ticket_expiration_seconds": 85}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Bu47HxDOiiSZdtsS' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'sfRlPC2tQyXB6Cpb' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'GEHONQtyJvFYX1oU' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"xUGZxyjB4dslF6tY": {}, "CcO3JrvCpX4sTJqJ": {}, "OHMnKLr23dUsPtqX": {}}, "latencies": {"dhclsKHn5NpsBYdw": 95, "D6XHFzAISuxmEOqf": 11, "h0wElT27y4OT64Q4": 59}, "matchPool": "0kzn5inZNv3vcmcY", "sessionID": "j4ul5vJH8UY9oF7L"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchTicket' test.out

#- 23 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --matchPool 'oEOSo7nMDasgK5c0' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 23 'GetMyMatchTickets' test.out

#- 24 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'IwLqaKmg03zEfDkP' \
    > test.out 2>&1
eval_tap $? 24 'MatchTicketDetails' test.out

#- 25 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'UJLkC8s0ouWGsU81' \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchTicket' test.out

#- 26 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --name 'TxPwcrzZwB866QgK' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetList' test.out

#- 27 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"jnwW7jII1gNW2U90": {}, "9bqPn0VlEZEZzVNG": {}, "fvIzAoMpQYsh9QPd": {}}, "enable_custom_match_function": false, "name": "sVAAw8qchYhPG76x"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateRuleSet' test.out

#- 28 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '50B4vlqjzyg3E7yb' \
    > test.out 2>&1
eval_tap $? 28 'RuleSetDetails' test.out

#- 29 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'sMkvxnENUk67munf' \
    --body '{"data": {"w6VwMqbmxqY9I667": {}, "0uqTaSRvrrpKyU3j": {}, "fk5oiN6XgVnC8On2": {}}, "enable_custom_match_function": false, "name": "URWwq72DKYF0RBiU"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateRuleSet' test.out

#- 30 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'tUQWJXnpNvHn02KE' \
    > test.out 2>&1
eval_tap $? 30 'DeleteRuleSet' test.out

#- 31 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE