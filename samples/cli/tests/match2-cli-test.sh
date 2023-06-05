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
echo "1..29"

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
    --body '{"matchPool": "PpPPzSgyPUTMIhFF", "sessionId": "YD89RYSdPJaI58fV"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'DO48oAlhlQxdmsJl' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'XCDaFF6v4CNksfNm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'j1bxHrH9gmyF4SlV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'Z56iJwl27iTU8oos' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "gDwxdmtyJw5dVchG", "stop": true}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'I67AuQJFikNoGCf2' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "qELINPshKRTtaPzF", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "uHpxfSicZ2MUyWwv", "url": "Bd44QTUcRXf1k5IX"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'C5CXeGAEkKlviIvm' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "3gZH5bIw5nG3ptYK", "url": "8TZUFO7jdcumv5Nj"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'fnnH0i33Bp4yVQj8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 17, "backfill_ticket_expiration_seconds": 100, "match_function": "xcFQq4AkwLdQwK58", "match_function_override": {"backfill_matches": "rYhvXLLUND2LW7Ds", "enrichment": ["TvJkxkZgI6qkPchw", "B62gHshaW049A8Jw", "ejquuCO4wNNRvnKn"], "make_matches": "6ZWWxU6pp2qO7jD8", "stat_codes": ["RBZzSwysAxUOjMF2", "fiVtKYtVSyj7UmE0", "ZsWi4H5yuAWKcmJB"], "validation": ["ueyy8SS2O9osB5Nb", "7lyOOEIFsP4rEgMA", "BwXAYiHx4xxpexpy"]}, "name": "PkdT6cG7hgj3Nri6", "rule_set": "EmfbBs5ya0D0yqgC", "session_template": "Z7FnG46oJSfLJEXb", "ticket_expiration_seconds": 85}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'It4Y4ydqTgCmh8tN' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Q1W9aPH3F7Q4ZD33' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 73, "backfill_ticket_expiration_seconds": 55, "match_function": "qeTq454vIfrpYa8n", "match_function_override": {"backfill_matches": "uHkBDxZGjk3scupI", "enrichment": ["nQkpMwKoEfi6Fmlk", "8tdJzRpJlrlwF9fD", "zij8JUY14DWXiWKR"], "make_matches": "HwDgUXYxiQ3n71z6", "stat_codes": ["z5zS9km9ucsdb3zk", "ANd66P6dVpMcOrlR", "1eLxIlwN7jOpe0B3"], "validation": ["TPIgwspESyuWuR5C", "XMmu5uZ2U2tBBnef", "VRrrGC45smsGaNTA"]}, "rule_set": "1qSHHCem3D63CNt2", "session_template": "QrVlTnssm6ltowx0", "ticket_expiration_seconds": 4}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '8t3337qx5UXyWqCV' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'JgAp1UAEq98ysVXr' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'JTpdVXM3Y5LasObP' \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"uDZo4i9SAqfLfnX5": {}, "7KQ9PRwvlVW9VYzF": {}, "aVyzrBhpL5BFQZ2N": {}}, "latencies": {"KLIbqEpJSHsh42f9": 5, "gUe89UsHsCmtMx5C": 13, "W1J1O8ycIvN1g2tc": 71}, "matchPool": "ti0XAt6qqXDnE006", "sessionID": "zTA8PdtBxHnXE9BZ"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'clecxQaMEscvRLOn' \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'ADVUnae0EBNraJJj' \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"Rz7mOFjl0RhOAwUI": {}, "0S0uRJbASYsyzf3s": {}, "YcWPI703Dk5icAhe": {}}, "enable_custom_match_function": false, "name": "i8B0oJOiHOPDI137"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'QpKeGY0ebgDN6gHN' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'f8Yry6ngpJdcCLsT' \
    --body '{"data": {"V8KZhlDy31e6lOuL": {}, "cPIcodlvjUxxPD8K": {}, "q1xyOg6fcjvB8znk": {}}, "enable_custom_match_function": false, "name": "2dPPFKAsn9KrwdJo"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'PvzAR3sokPPNJKzd' \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE