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
echo "1..27"

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
    --body '{"matchPool": "EAxcVpFr", "sessionId": "ttufHIRd"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'H9UzVRiX' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'bqlAw7r6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'W2ktQG0h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '5JAav5kR' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "a62WopBJ", "stop": true}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'AMTwE6I5' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "6IaRDBXx", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "rQeFbQ1g", "url": "7qbPngUN"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'B1vRodwp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteMatchFunction' test.out

#- 13 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 13 'MatchPoolList' test.out

#- 14 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 6, "backfill_ticket_expiration_seconds": 1, "match_function": "gs21Jub7", "match_function_override": {"backfill_matches": "4CUkNmKJ", "hydration": ["fh5pUkHO", "DpoMF78N", "Y4YkHs1c"], "make_matches": "nz1JSDgY", "stat_codes": ["1TXp38zs", "CTCrbCbP", "OyNQkT7N"], "validation": ["vyE3cwyA", "LczNIicX", "m7agSrjJ"]}, "name": "W2OQNOs1", "rule_set": "PXhT5Fvd", "session_template": "iRilZ7oF", "ticket_expiration_seconds": 13}' \
    > test.out 2>&1
eval_tap $? 14 'CreateMatchPool' test.out

#- 15 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'pKxR8dl0' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolDetails' test.out

#- 16 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'zRVW4EZG' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 96, "backfill_ticket_expiration_seconds": 4, "match_function": "68su8Xfq", "match_function_override": {"backfill_matches": "lqNiTvB6", "hydration": ["SdAdIhUD", "rwoZ5Mec", "dKi5r6QE"], "make_matches": "a1ysLEzt", "stat_codes": ["h6mXhzkz", "WkFeZSoE", "AcBdW19m"], "validation": ["4eu6d5tA", "5jUmiTqp", "yhPFdxLz"]}, "rule_set": "FQN05MYz", "session_template": "YiKWe5dN", "ticket_expiration_seconds": 90}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchPool' test.out

#- 17 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'LIAjGGJd' \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchPool' test.out

#- 18 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'dVCvu9vx' \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolMetric' test.out

#- 19 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"5KQ7KYnI": {}, "uMBvaO35": {}, "llzQRaT5": {}}, "latencies": {"kPxUfofv": 28, "6UpOXGSL": 25, "UlrMdI4s": 81}, "matchPool": "lkvR8sKg", "sessionID": "nuRkgghG"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchTicket' test.out

#- 20 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'oYupD391' \
    > test.out 2>&1
eval_tap $? 20 'MatchTicketDetails' test.out

#- 21 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'C2qtPYok' \
    > test.out 2>&1
eval_tap $? 21 'DeleteMatchTicket' test.out

#- 22 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 22 'RuleSetList' test.out

#- 23 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"hFjkQsfC": {}, "aTmt1d67": {}, "FXGk2s9Q": {}}, "enable_custom_match_function": false, "name": "zwPuo3td"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateRuleSet' test.out

#- 24 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '6TC6I3lM' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetDetails' test.out

#- 25 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'jGSWN2la' \
    --body '{"data": {"RlxfcjHf": {}, "YakUCTqG": {}, "kE7wcWfD": {}}, "enable_custom_match_function": true, "name": "qYSYWytL"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateRuleSet' test.out

#- 26 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'PziZMdjx' \
    > test.out 2>&1
eval_tap $? 26 'DeleteRuleSet' test.out

#- 27 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 27 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE