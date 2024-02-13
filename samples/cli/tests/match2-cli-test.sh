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
    --body '{"matchPool": "bDYW7QqJd3jqFeHz", "sessionId": "4e2SW7t3PP8dheSS"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '8CaN0b6S8Va3KU5k' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID '3Xem2AAD8FVEw00J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'u0YDqjffvs97kjbt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'QhTouD90snr6qQAn' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "jTo5NBwC7hFs3Mon", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'PHtruLIijoad5d8h' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "1yf9frASkv3xBuE2", "stop": true}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "eXIRnuRH2PC1DupB", "serviceAppName": "v8lFqS7I5vLFAWoJ", "url": "GLQORrJWT0ZmA4Xw"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'VsxSvE1XnSSvbxrc' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "TeuO6GLUNXOS6QS7", "serviceAppName": "sWmZbWLLsenhESOv", "url": "c1y8LfQeJhONADjN"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'OwbSpmXjRHSzSsHi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --name 'EHdgNK2Nd1YkklwO' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 65, "backfill_ticket_expiration_seconds": 76, "match_function": "yl2DDzdtjYZSKMI3", "match_function_override": {"backfill_matches": "r6kXkwA0lSWiyQfT", "enrichment": ["m3FRk9aV4MZNKrvC", "eQ3ZTaLkMCxQEzOw", "muQvEunSlSKOKlZB"], "make_matches": "AMqwF6CKg5SimDec", "stat_codes": ["YKe0pP6KJYTSvGg2", "9B0diASJNwfLWoyq", "ZlKBbrU5axg5aYBz"], "validation": ["nL6BZXI8w5naXd5F", "g22vvWTf4WbeBxuj", "nQWDgF8Ezkmp0vEA"]}, "name": "G7tYSQW41f5XVKQk", "rule_set": "TRBYZLuBiwVQ2uct", "session_template": "v0FyeOphyBtiq0T2", "ticket_expiration_seconds": 83}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'HH50V6R3Cx8XBLUj' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'JXpDhowV3bvjnZgd' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 83, "backfill_ticket_expiration_seconds": 56, "match_function": "gfEYr0RIlQgwr38A", "match_function_override": {"backfill_matches": "cdCSjomu6Ie3PfeF", "enrichment": ["IyUmeZMcGaPkhBQP", "J6ECZjCDjTGmgjm4", "vfM6IIaBHYzaXDN3"], "make_matches": "sl1d9bcxPJrhmvm4", "stat_codes": ["Pt4XXq2DD3p8DZFb", "XuMq8M99Ah0jDfeP", "7VUp0jVE2QZmK4MA"], "validation": ["9RxMXS3qIhJmzuYW", "mLU99CdaihcawJJs", "cUyTOny7xHU5HQhA"]}, "rule_set": "WE1PASrGlD7BlROD", "session_template": "qjswcBHvjsCTKBPV", "ticket_expiration_seconds": 36}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '0ygR1eNyYX9FgTVI' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'vtbzs10xit9FGnlr' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'fs32VZcJL6GvB7Nk' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool '9PBrPF4TLzPTS60u' \
    --limit '73' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 22 'AdminGetMatchPoolTickets' test.out

#- 23 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"Kt4U6IPZU6OJ6Spo": {}, "yK2Ym0rJyjykhJX2": {}, "q6eZCbNIDhxAyqZh": {}}, "latencies": {"FSxJAI6E1KWxnoXC": 46, "HcosXQVoHqEsNC3j": 33, "wkW982r34RLK4YXN": 50}, "matchPool": "viLSOS8z2jq897CP", "sessionID": "JJOUCNMbVEU7Oajj"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchTicket' test.out

#- 24 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --matchPool 'PGVYZAM30jxC3apv' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 24 'GetMyMatchTickets' test.out

#- 25 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'fTDS4b2GdX76k5mh' \
    > test.out 2>&1
eval_tap $? 25 'MatchTicketDetails' test.out

#- 26 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'zwx3fsD61WL96qez' \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchTicket' test.out

#- 27 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --name 'HDFEC37pmCaLm0A3' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 27 'RuleSetList' test.out

#- 28 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"IqMpcfoamYwOR1HK": {}, "RCwLaRomD4nlgqBA": {}, "XXxQMkBMyfYdzlj2": {}}, "enable_custom_match_function": true, "name": "PKH5caloDBdgXem2"}' \
    > test.out 2>&1
eval_tap $? 28 'CreateRuleSet' test.out

#- 29 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'LI5RIg2SwLSVqWbn' \
    > test.out 2>&1
eval_tap $? 29 'RuleSetDetails' test.out

#- 30 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'b0Dv47EPAf2s23Xw' \
    --body '{"data": {"2U49NDhxYVVaRXH0": {}, "joySqPuAgtQUQ8Mw": {}, "PgCIqMBe5FuAfafc": {}}, "enable_custom_match_function": true, "name": "bc6DCqbiDZoANfBb"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateRuleSet' test.out

#- 31 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'pfy7t1FgRf89DdRw' \
    > test.out 2>&1
eval_tap $? 31 'DeleteRuleSet' test.out

#- 32 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 32 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE