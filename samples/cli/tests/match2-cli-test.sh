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
    --body '{"matchPool": "2H9k11BcekncNcAv", "sessionId": "56UToU190eP7ZQOj"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'tS86QE0LCqdhjZEI' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'b0Dinafjhh7gcGNJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'LnfkNho8n1xuJ0sd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '7YOyoFuh0FBe2qQT' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "qUd5F1c3jiqo0oRa", "stop": true}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID '4yrRzd2Bwgne3Lsj' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "DyRaMrtZ06jOoLvm", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "AzFzfwf4ozWQQxVS", "url": "CgQej0RcjSye8Gom"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'i0zhXdKjRHBDLFBF' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "U6IL5XbYKZeGLHIM", "url": "TFuJxih4cSeATnmM"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'Yhbrj11KCF4eKBqP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 68, "backfill_ticket_expiration_seconds": 10, "match_function": "vEhyHX4OnZ3WzPSF", "match_function_override": {"backfill_matches": "S7ukM4C55nw7uhdr", "enrichment": ["toY27yDGGXJNo6lO", "rQcedNv3j0qZZPNz", "9RNr6iYip8LfvAK9"], "make_matches": "e7cUaaEAoWIGEhbV", "stat_codes": ["xoHXZdDuLaCRMEZu", "ZO6O4u70tfqV7c5q", "8o9FAf3ZGInu3PBG"], "validation": ["koBFTU6uvDKtYUGV", "esxUkBpDDtjkEoPC", "BJl4wDyFlEEO33Cp"]}, "name": "9AJta6DKhA81kDcm", "rule_set": "5rkg4ldbPmhy5OWn", "session_template": "AunPPGZ11PpVFOwr", "ticket_expiration_seconds": 88}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'eQyi3x1DATEOEw32' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'D8Xfr3zg4F8DDOWc' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 8, "backfill_ticket_expiration_seconds": 53, "match_function": "o981ZsqyJp3U3Drl", "match_function_override": {"backfill_matches": "EpWatYqTeAeBMg2E", "enrichment": ["n2tLT2HTWvD2Kzq3", "udmHcigxVwHZOGt7", "5ZIbpIlJoUKITKj3"], "make_matches": "87Y5k4ILumGshcNk", "stat_codes": ["s3OkjIdFpjVaWigq", "xbBk0K95FswnjDRl", "KxnyIrpyoG39PZAN"], "validation": ["b0GDbgDWiRWQNYEl", "CIt9cnt63RGZULFK", "6q5qblBkDI5MYW9z"]}, "rule_set": "hRSiC8A7ikommaRV", "session_template": "wl2ewGDHXixUItTt", "ticket_expiration_seconds": 87}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'CjCGPbFxNE7gX3vl' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'mXPqkEsB5sJMDKbE' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'JhrhfHlTdC73wiQp' \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"IuZmIWrdGm55NtvW": {}, "ObpHDhLeIxcmp1dM": {}, "iaQC4RGjqYH7mB2v": {}}, "latencies": {"CPaTX8abnTHy7J5s": 56, "nccpjs4HdU59eebS": 11, "qdKDnxjl4cI5hAau": 11}, "matchPool": "HNpKlX2P8NmxC1ml", "sessionID": "mcgR1lGhL8E0fnD5"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'SRlWxnyfBs1lfUnK' \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'beJNCQgtm2n4eiP3' \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"vV8aHe7NN3b29a7s": {}, "UEeB9fRTRqQq8gt7": {}, "Wfz6t0sHZv1M8N1D": {}}, "enable_custom_match_function": true, "name": "N2zPNbTA9XtftQCX"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'FPPBSgL9lODJfFTt' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'WRRtLHsePBCqEOYF' \
    --body '{"data": {"xPOw2sVIPTrVE38T": {}, "FHGPG4kPDXmzxVfO": {}, "v2u2j3RulY16qEIJ": {}}, "enable_custom_match_function": true, "name": "DAfGZ91C625giAb3"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '7MBX5qYKlfhNCcQ7' \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE