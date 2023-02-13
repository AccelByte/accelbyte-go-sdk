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
    --body '{"matchPool": "zWt6Bhbx", "sessionId": "5C0vVxAr"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'S3eEarg3' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'RS2Ao0j1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'RUBr3UWm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'qlSQtgVv' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "ctPba0HS", "stop": false}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'CxMc6jkK' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "gZLmzG47", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "nbibPhP7", "url": "zj7GJ0Np"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '8IYkOwfg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteMatchFunction' test.out

#- 13 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 13 'MatchPoolList' test.out

#- 14 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 15, "backfill_ticket_expiration_seconds": 7, "match_function": "dLUUp23O", "match_function_override": {"backfill_matches": "dgciqWCD", "hydration": ["EwVU1wRx", "axBNN1zg", "nJj0dY2g"], "make_matches": "sKWpYEoh", "stat_codes": ["cJn1xjCc", "LVqv9KrT", "PNUa9uLr"], "validation": ["MBbGk3uK", "2palxSTU", "3vpbSaWz"]}, "name": "tb5JnD0h", "rule_set": "OTkxdPbg", "session_template": "zQ3uHx3t", "ticket_expiration_seconds": 71}' \
    > test.out 2>&1
eval_tap $? 14 'CreateMatchPool' test.out

#- 15 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 't2lIVDXD' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolDetails' test.out

#- 16 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Q00Ihl4U' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 35, "backfill_ticket_expiration_seconds": 12, "match_function": "qg0nQclk", "match_function_override": {"backfill_matches": "ckxoJEFT", "hydration": ["ljSsZBof", "et6MzETG", "FDeEtUUZ"], "make_matches": "yvT1TosD", "stat_codes": ["pI0yqjn1", "WFUn3O6u", "fH4CdKsE"], "validation": ["OT0anGbJ", "1cDO5xua", "WCtxOCJW"]}, "rule_set": "J4koZVSC", "session_template": "0yuTrwPF", "ticket_expiration_seconds": 30}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchPool' test.out

#- 17 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '0KMWsH1O' \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchPool' test.out

#- 18 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"i0Ocp1ix": {}, "xtLwHwvd": {}, "UQho48A0": {}}, "latencies": {"e6VQonGU": 61, "FgXy3c4Y": 88, "OAxFy0i1": 49}, "matchPool": "NYxgzbBO", "sessionID": "ng0Yhr1E"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateMatchTicket' test.out

#- 19 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'I6mUYx9Z' \
    > test.out 2>&1
eval_tap $? 19 'MatchTicketDetails' test.out

#- 20 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'N23U0sCu' \
    > test.out 2>&1
eval_tap $? 20 'DeleteMatchTicket' test.out

#- 21 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 21 'RuleSetList' test.out

#- 22 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"3xPKu7JX": {}, "BgZuvitN": {}, "19LkvraC": {}}, "enable_custom_match_function": true, "name": "5iQYUYpJ"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateRuleSet' test.out

#- 23 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'rZoZsgmF' \
    > test.out 2>&1
eval_tap $? 23 'RuleSetDetails' test.out

#- 24 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '8fGAKTTq' \
    --body '{"data": {"MOD4o4KG": {}, "ButMDXaA": {}, "66UriTQm": {}}, "enable_custom_match_function": true, "name": "CRshpa9O"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateRuleSet' test.out

#- 25 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'QOOJ0UmL' \
    > test.out 2>&1
eval_tap $? 25 'DeleteRuleSet' test.out

#- 26 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 26 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE