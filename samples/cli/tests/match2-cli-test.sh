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
    --body '{"matchPool": "T7PotlrX6tPb5BfC", "sessionId": "Z99cGoYpOQBTI3fx"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'pO0u9fzj34Cef6Ci' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'l491B6vIoGTKalzg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'JLBiV71n3m4klvmR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'HasyBna5rZeio8cZ' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "gDuSyTSr4jZggBMc", "stop": false}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID '6U95ruXGSzVXnpqJ' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "aL7YnnCmBLqVhkgf", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "CHixuAmVE6jDYCHS", "serviceAppName": "8qz6caSYo47YzSZh", "url": "r1YL1Ac1rwQiQxxZ"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'r1kl4L5oG8cghLe1' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "yQtsEJR3GAakeJcM", "serviceAppName": "y3ri6eTXUciXEtKV", "url": "NaWDQLkRzemcJyl4"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'vqpDTAUliqsNUWQp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 32, "backfill_ticket_expiration_seconds": 60, "match_function": "U2vfFwxrkXMJWgr8", "match_function_override": {"backfill_matches": "ALNVXp5TXVuBlxLC", "enrichment": ["Wupjto78DRkvAe7v", "pgmv09jAMFMHHKx4", "2O3jmGKV6nJgAZUX"], "make_matches": "CiJOsbqETEVM1JtB", "stat_codes": ["Yepi1gZC9x9eaMm4", "crrQRJtLrWoH3EMH", "DOdN6bFuP24tTjK2"], "validation": ["R6YEFaRwLM9t9uFB", "9qnaYHJBokoc4Gw4", "3BnMwBd1ZcSYxhxx"]}, "name": "muMybomUNl2hnRWy", "rule_set": "8qdlfLCAeaPdmUO6", "session_template": "FLTV0B86kjitJvBC", "ticket_expiration_seconds": 69}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'RaLAyb7EkkU50VTN' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'ZPCujlyGAZUbEh67' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 16, "backfill_ticket_expiration_seconds": 86, "match_function": "IaSjtoa1mOdmKkhX", "match_function_override": {"backfill_matches": "Cd96omgNMhE4CpwC", "enrichment": ["No55WZWZlrI5A1u2", "hvKOG3gqnanCMySN", "w7Vb0TMrxEpurnZJ"], "make_matches": "hCgi8nQN0Mw8GEbf", "stat_codes": ["rnK5Yqyo9i0Mfh5Y", "wzN79uRwGFM9yXSU", "078jMqACzHnxIPMV"], "validation": ["QOOjUE0fsPad0Hky", "v91leaECqyzuyyQx", "FkVocuiLBL8LZkSH"]}, "rule_set": "8mSSLWvhPRsJmiUq", "session_template": "BS1hr5GKs387ueoT", "ticket_expiration_seconds": 32}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Q8umMcXdhitjzGOP' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'xdRbmlcyAJKE8RK2' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '1k9LnD98poma0ylQ' \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"HcJHuDpijskSNpNb": {}, "1GSB8pj2BRh9zrzJ": {}, "hzeREIiu8GnJE1Cy": {}}, "latencies": {"s7ixuLC9C3idtROd": 61, "yn9rebw3bxCHmEa9": 87, "eDdmkw5NSO1g3Nzz": 95}, "matchPool": "LDykj5JpH4kXGo8i", "sessionID": "F4lMvuDf9DJirFwM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid '1Bnih2fvnUfSaKkq' \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'VWAZM3gCTYrjgljR' \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"fTSAsYOGbz6amAjP": {}, "vyEdPgwYwxKOG4uR": {}, "18aDQVPeKh8AtYX0": {}}, "enable_custom_match_function": true, "name": "GjtQAKcgkfbCFc3F"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'WcWFHnDP5XXopeHC' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'NX85zf8UsNSR1UHG' \
    --body '{"data": {"ZHkM6IdoiVowFe43": {}, "JoYlTAU6MpV8WWJm": {}, "242BEDFPWjMGU15g": {}}, "enable_custom_match_function": false, "name": "oTwvAxpYWHVAQI3R"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'TZ27uwBK9rRDy8cj' \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE