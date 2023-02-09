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
echo "1..26"

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
    --body '{"matchPool": "FDTEmTbS", "sessionId": "qWdccslK"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'HgXIyR0T' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'n9mjn8QD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '1S8Sf3SC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'qJy60ACx' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "SkhV0Dlk", "stop": false}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'ZJS0nYJe' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "MY7YWaa5", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "ZtJ0CALO", "url": "NYNIQUcG"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'mioFRoyn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteMatchFunction' test.out

#- 13 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 13 'MatchPoolList' test.out

#- 14 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 46, "backfill_ticket_expiration_seconds": 73, "match_function": "K2lSU6I2", "match_function_override": {"backfill_matches": "wcXG7GMy", "hydration": ["zeo4QiQy", "YMnFqB49", "GkF5EqBf"], "make_matches": "SK1rB1Yw", "stat_codes": ["UsYpQWc9", "O0cF0ESJ", "NksWZGw2"], "validation": ["tdqh6u10", "lLvq0iR1", "ou1A1IMM"]}, "name": "xEdAomkM", "rule_set": "9RgyJr9n", "session_template": "L3hqmms1", "ticket_expiration_seconds": 23}' \
    > test.out 2>&1
eval_tap $? 14 'CreateMatchPool' test.out

#- 15 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'pCoDY3rg' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolDetails' test.out

#- 16 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Gjw7tpMx' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 87, "backfill_ticket_expiration_seconds": 37, "match_function": "ptJYKSzt", "match_function_override": {"backfill_matches": "V7yQDcXa", "hydration": ["T4PxVadw", "1HQ0WQ4p", "cj43Tr1K"], "make_matches": "dbn50mTk", "stat_codes": ["8tbVnLr8", "3DX5TGpd", "29mSeLXE"], "validation": ["YA56qL6k", "KUN5BvRn", "Y4HW4twe"]}, "rule_set": "gyBhmsvl", "session_template": "LvjmtFiK", "ticket_expiration_seconds": 96}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchPool' test.out

#- 17 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'hrN28VT1' \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchPool' test.out

#- 18 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"0w41VSo6": {}, "73De2wQl": {}, "iTcprVKc": {}}, "latencies": {"OT46UkSQ": 85, "17aZ6s1E": 57, "bJsQRj4q": 27}, "matchPool": "g86uyf0c", "sessionID": "YDffedSd"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateMatchTicket' test.out

#- 19 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'eRDDDWuA' \
    > test.out 2>&1
eval_tap $? 19 'MatchTicketDetails' test.out

#- 20 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'FlMiLRTc' \
    > test.out 2>&1
eval_tap $? 20 'DeleteMatchTicket' test.out

#- 21 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 21 'RuleSetList' test.out

#- 22 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": "bbGxkJuB", "name": "YTRlOFpu"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateRuleSet' test.out

#- 23 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'Hk06W552' \
    > test.out 2>&1
eval_tap $? 23 'RuleSetDetails' test.out

#- 24 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'tSiWClxT' \
    --body '{"data": "CG7q9XZL"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateRuleSet' test.out

#- 25 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'TFq38jRx' \
    > test.out 2>&1
eval_tap $? 25 'DeleteRuleSet' test.out

#- 26 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 26 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE