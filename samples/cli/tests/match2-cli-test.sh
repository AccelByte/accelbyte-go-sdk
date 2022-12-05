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
echo "1..23"

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
    --body '{"matchPool": "fJx47Q44", "sessionId": "vAo3RdA0"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'LRSxqyGH' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "LY2S36CS", "stop": true}' \
    > test.out 2>&1
eval_tap $? 5 'AcceptBackfill' test.out

#- 6 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'qvpzDu1H' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "nPtedFIh", "stop": true}' \
    > test.out 2>&1
eval_tap $? 6 'RejectBackfill' test.out

#- 7 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 7 'MatchFunctionList' test.out

#- 8 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "KO3wegPz", "url": "LVA6KMer"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateMatchFunction' test.out

#- 9 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'sOoBHr9L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteMatchFunction' test.out

#- 10 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 10 'MatchPoolList' test.out

#- 11 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"backfill_ticket_expiration_seconds": 15, "match_function": "5GKrkXoE", "name": "ytLE1Gbe", "rule_set": "tFnUghFx", "session_template": "OciMus7M", "ticket_expiration_seconds": 99}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchPool' test.out

#- 12 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'JKTCdhzj' \
    > test.out 2>&1
eval_tap $? 12 'MatchPoolDetails' test.out

#- 13 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'F3TK0iNm' \
    --body '{"backfill_ticket_expiration_seconds": 81, "match_function": "UWbp8EQ6", "rule_set": "V8vVZIHb", "session_template": "S7tlFHod", "ticket_expiration_seconds": 52}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchPool' test.out

#- 14 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'm7gFw9UC' \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchPool' test.out

#- 15 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"a8hbc2cB": {}, "I0EV71XB": {}, "w4ExGZ8Z": {}}, "latencies": {"ozmkeRmE": 19, "qs6UNBne": 96, "TfDQUiVP": 46}, "matchPool": "BioeKWZI", "sessionID": "7D6Z0onb"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchTicket' test.out

#- 16 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid '9xlstPQ6' \
    > test.out 2>&1
eval_tap $? 16 'MatchTicketDetails' test.out

#- 17 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'jFDDb7Jx' \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchTicket' test.out

#- 18 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 18 'RuleSetList' test.out

#- 19 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": "nRq3AxJU", "name": "5zxBaQFf"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRuleSet' test.out

#- 20 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'NcF1EJf4' \
    > test.out 2>&1
eval_tap $? 20 'RuleSetDetails' test.out

#- 21 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'dALfO73A' \
    --body '{"data": "AZoEdUW3"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRuleSet' test.out

#- 22 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'HlBb7hBp' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRuleSet' test.out

#- 23 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 23 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE