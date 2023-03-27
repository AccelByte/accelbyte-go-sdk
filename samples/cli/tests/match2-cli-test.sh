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
echo "1..28"

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
    --body '{"matchPool": "A13L3Ntk", "sessionId": "Wj7pQMSU"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'YSrlyql8' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'IzIYOwVp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'YXNV6qHh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'vUVN7Mhe' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "b5cBUBkz", "stop": true}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'mxYTUHvU' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "MgV62LOL", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "M1OSl86o", "url": "FqhdsyUh"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'ChN52r5x' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "fBJcNmzm", "url": "YFAnRaMf"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'zFEUvVAg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 52, "backfill_ticket_expiration_seconds": 33, "match_function": "qIeD4NHE", "match_function_override": {"backfill_matches": "gRO3ymlV", "enrichment": ["OST46sb8", "yB2lA7yd", "CPxOh7DA"], "make_matches": "H3LRu9bF", "stat_codes": ["ydP3eMXG", "YfvsIlT7", "dB5u0k5k"], "validation": ["K3WBymXW", "TVdcfn5j", "mEmDyDp7"]}, "name": "uU3WR5ht", "rule_set": "YEeDT6u9", "session_template": "o7SBTL5s", "ticket_expiration_seconds": 40}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '7o66chW3' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'bfE1mWuP' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 56, "backfill_ticket_expiration_seconds": 98, "match_function": "hGt0OW3S", "match_function_override": {"backfill_matches": "kLRFcGZj", "enrichment": ["gJgEohxA", "j0HPHSWp", "6BZ7laiG"], "make_matches": "SAborz1i", "stat_codes": ["5V76dQv1", "F4YDbik2", "AdIi0YBA"], "validation": ["84VayPpg", "xiRQrVxy", "pvhBR3KV"]}, "rule_set": "9yptsr6b", "session_template": "czvnnQBw", "ticket_expiration_seconds": 10}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '3rM4zpC2' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'SXeguEJH' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"35bvpeMA": {}, "Ac0EWuxq": {}, "yk9zYqUY": {}}, "latencies": {"WkyOHajw": 58, "waN5nyrQ": 93, "M87OTyJ6": 35}, "matchPool": "cNxcyeSm", "sessionID": "IBR74Hbq"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateMatchTicket' test.out

#- 21 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'V9a5MFCT' \
    > test.out 2>&1
eval_tap $? 21 'MatchTicketDetails' test.out

#- 22 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'wUI8EJWZ' \
    > test.out 2>&1
eval_tap $? 22 'DeleteMatchTicket' test.out

#- 23 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 23 'RuleSetList' test.out

#- 24 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"uqgdZWsF": {}, "VH3LovSa": {}, "cXNZo9wm": {}}, "enable_custom_match_function": true, "name": "TR4SIjf7"}' \
    > test.out 2>&1
eval_tap $? 24 'CreateRuleSet' test.out

#- 25 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'Nr4EsdQb' \
    > test.out 2>&1
eval_tap $? 25 'RuleSetDetails' test.out

#- 26 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'ahd8Omv3' \
    --body '{"data": {"m6hqeDkD": {}, "hcNn11DT": {}, "YxK4B59y": {}}, "enable_custom_match_function": true, "name": "SaJSJO7d"}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateRuleSet' test.out

#- 27 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'lcia7lsH' \
    > test.out 2>&1
eval_tap $? 27 'DeleteRuleSet' test.out

#- 28 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 28 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE