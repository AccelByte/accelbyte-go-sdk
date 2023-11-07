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
    --body '{"matchPool": "1p5IhxCKbAAlLhhP", "sessionId": "pAjWskzuJDMfz31H"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '4UoJh0ds7GskCrRY' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'g0mDgL5LzNr65R7t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'JeDRZzRzryjxK9mn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'PXrpDwVmtGFLuYMy' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "zGW5TuVF4ZI18uCn", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'ePQNHjEe0FW1ekC0' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "pc9xtI8t2l3Y7cSZ", "stop": false}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "nDV898i5ffmeOnym", "serviceAppName": "luzcqReSPsmjHPDq", "url": "5XI48NhaElAE5DgD"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '2mtRuIQHkGowJ134' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "h32OFRg2TCraiJKQ", "serviceAppName": "oV18iyGSYuMDimSq", "url": "3FzrDU2SmZV28f7w"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'RF03gSX2aVDWpVaE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --name 'L7LFSSZ3963KKpPS' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 8, "backfill_ticket_expiration_seconds": 72, "match_function": "dOKte2b2Pyb79WII", "match_function_override": {"backfill_matches": "zcxdoxYLV5LPAL6P", "enrichment": ["KjOiKgDExVMRNq1b", "4T1ElPP4Lg8CwNBi", "8ezk5MLaIhP0BsBT"], "make_matches": "fxWgkz36rHFLoTE1", "stat_codes": ["sACA6QNp0bc6wwMx", "ROqQhNVGw74a9RfH", "ClzwQESq8N1VzePs"], "validation": ["WM1RmetOHHZYrVGq", "yDjIKSLmS1oUgtUa", "g9x2ZEyIvDyOL0q1"]}, "name": "zPARiz2qgD1Brbe3", "rule_set": "s8uZ9icQqx4eLrbF", "session_template": "pA2QwQHwh0wP9BEl", "ticket_expiration_seconds": 86}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'I2Pc1wGYcvy347J0' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'DxE9yiMt0iNtwrSm' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 73, "backfill_ticket_expiration_seconds": 38, "match_function": "OduTWKYjeoBFlIFD", "match_function_override": {"backfill_matches": "ouPq3rgaxSMuh2gD", "enrichment": ["Ty6tns7OuBVnAzIr", "57BV9m5HFyt9FO0T", "6YqDkhuzbO50yh3P"], "make_matches": "MiWsH1epgzW40wgu", "stat_codes": ["uCAZw8ry6SS9uOqx", "zPQ8M2sMwaTDcH4B", "gXScgaKvslksnJLc"], "validation": ["082gz0PXTkrvCxug", "qcdTHUDiUTnN1cAo", "e6SfZIFhx4pqKv7n"]}, "rule_set": "JSjgXQQ1q8UeEKlQ", "session_template": "ddavgyn4uAakjwRh", "ticket_expiration_seconds": 68}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'IsXenBbxTjbD4A2U' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '181XPA4F0WItq5jZ' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '8cy5Pvy3lSquMpvA' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"djuPSaxTMhEscH4D": {}, "XsvfHeRXd0iV7ACU": {}, "uchne2NTdlEKCdbh": {}}, "latencies": {"UuWKpBitmi7q1r8y": 84, "X3Li3hRbu0rqo9KS": 78, "GIqN62w7QkHOsPDW": 90}, "matchPool": "DbxlJ3dC0mWenlhN", "sessionID": "LSdN12yzzqJCBHPK"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchTicket' test.out

#- 23 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --matchPool 'Bk0kjcNSFDRmX7mI' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 23 'GetMyMatchTickets' test.out

#- 24 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'P4PQfkv6Ba6w9hL1' \
    > test.out 2>&1
eval_tap $? 24 'MatchTicketDetails' test.out

#- 25 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'MSmIGk9l6xEX4OCY' \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchTicket' test.out

#- 26 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --name 'l2F069kbq5OGMbXX' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetList' test.out

#- 27 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"AOgWsScZmqNXioow": {}, "uEzlnFK4tYhZQ3MR": {}, "ku1AH0sCxldiz0zJ": {}}, "enable_custom_match_function": true, "name": "zsuogZln5zRpJos6"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateRuleSet' test.out

#- 28 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'DmNlZcB35nYIAcgk' \
    > test.out 2>&1
eval_tap $? 28 'RuleSetDetails' test.out

#- 29 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'bCV0BIazORtZdG0G' \
    --body '{"data": {"DrqKVlQ0YOGRoSXM": {}, "FZZGWR1iOKQRWhGO": {}, "47hVj4en0JdMt55A": {}}, "enable_custom_match_function": false, "name": "EGxNO8fE6sGRaB3h"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateRuleSet' test.out

#- 30 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'c17Tfh6n0OHTlpgG' \
    > test.out 2>&1
eval_tap $? 30 'DeleteRuleSet' test.out

#- 31 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE