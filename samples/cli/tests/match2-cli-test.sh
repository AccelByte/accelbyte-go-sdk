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
echo "1..44"

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

#- 4 AdminGetLogConfig
samples/cli/sample-apps Match2 adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
samples/cli/sample-apps Match2 adminPatchUpdateLogConfig \
    --body '{"logLevel": "trace"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetPlayFeatureFlag
samples/cli/sample-apps Match2 adminGetPlayFeatureFlag \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetPlayFeatureFlag' test.out

#- 7 AdminUpsertPlayFeatureFlag
samples/cli/sample-apps Match2 adminUpsertPlayFeatureFlag \
    --namespace $AB_NAMESPACE \
    --body '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": true, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": false}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpsertPlayFeatureFlag' test.out

#- 8 AdminDeletePlayFeatureFlag
samples/cli/sample-apps Match2 adminDeletePlayFeatureFlag \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeletePlayFeatureFlag' test.out

#- 9 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 9 'AdminGetAllConfigV1' test.out

#- 10 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetConfigV1' test.out

#- 11 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["BtGgzPXSkiDBPQTZ", "W8jz3nRgry5ku7WY", "JXYA0qpdlibcLZHG"], "matchAnyCommon": true, "platformGroup": {"CW0Og7T48THXT7iz": ["30hSaEJC0jPvEBbW", "D87G9v0ptpoMUZiw", "wyAcnvB84CarSIhX"], "lh69seax0wikqzhX": ["MAS9lzg1DdGaBJPh", "5SxUeyhaqhICbaSQ", "XgqAvcKlY9mys9uK"], "rh5mnHzIo4y9ME6o": ["OrFP4DGRfZbA8k2S", "nJzqTJZgPBUOlDCH", "0qTYCKR5SEtOJPJQ"]}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPatchConfigV1' test.out

#- 12 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 12 'EnvironmentVariableList' test.out

#- 13 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1976-01-31T00:00:00Z' \
    --isActive 'true' \
    --limit '9' \
    --matchPool 'pq28kq5tUJH0ICBF' \
    --offset '76' \
    --playerID 'uUnBRUBtecYFttoc' \
    --region 'saO16wQfhoRpJZ9t' \
    --sessionID '1HjqNOe5W6IJJ7lb' \
    --toTime '1996-04-05T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryBackfill' test.out

#- 14 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "RFmOEjMTwSw8wpbT", "sessionId": "kevn01kQdAnohqny"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateBackfill' test.out

#- 15 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'AVkiBXCPctMeihws' \
    > test.out 2>&1
eval_tap $? 15 'GetBackfillProposal' test.out

#- 16 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'NKh4mJdcG7C9T9dS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetBackfill' test.out

#- 17 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '0Cw3J191CzCGlaS4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteBackfill' test.out

#- 18 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'cJWaR1JeSJNMJojA' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["2jQQWDMx1dr2zh6r", "LhYF4Oct23OiOWUZ", "byIXdVb5bA08IxYT"], "proposalId": "71EOyy9ih9jQc0Zl", "stop": true}' \
    > test.out 2>&1
eval_tap $? 18 'AcceptBackfill' test.out

#- 19 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'bjnL4bpPY7CdJSfv' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "jsAAZqMPEEDSEy5P", "stop": true}' \
    > test.out 2>&1
eval_tap $? 19 'RejectBackfill' test.out

#- 20 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 20 'MatchFunctionList' test.out

#- 21 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "kZn7dbrFbYkmkP8K", "serviceAppName": "DRyVcNgeSbOwW6vB", "url": "wxScCmaPxhxFRWEv"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchFunction' test.out

#- 22 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'JyWW1dXaZZnfmF87' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionGet' test.out

#- 23 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'RN1HVA8MqmDRAIWY' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "fLjnq2eRfVvCQObE", "serviceAppName": "9ZAzaBkc9tPoh1Sc", "url": "wTg8OOfgQD7ryU2b"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchFunction' test.out

#- 24 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'ejByUfo5T0PWSqiu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchFunction' test.out

#- 25 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --name 'l5NFkBbbZfTImUNf' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolList' test.out

#- 26 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 7, "backfill_ticket_expiration_seconds": 84, "best_latency_calculation_method": "Y4QNktBDK6be4U0L", "crossplay_disabled": true, "match_function": "nGfwGr62uTuysQSj", "match_function_override": {"backfill_matches": "mzAS3LVIy6Jc0EqT", "enrichment": ["5N7CFt73rbRRC2ZM", "RBC8NV0A1XOgQzMF", "ziIZei7DdZL1uwtX"], "make_matches": "8CPdV1URFVFGqzbC", "stat_codes": ["vm0zfqVXcXaOclpW", "m8dxNjNF9WfXj934", "Rj0LDQKfF2x2KOcQ"], "validation": ["04gKVwlfNTSkc5zY", "OnbuNkM2d6pmrNmG", "b9d5P5inT8fpo8Hb"]}, "name": "jJXIlCynTZOwRe97", "platform_group_enabled": false, "rule_set": "Im7AR1CA1HHWE63G", "session_template": "kWd6maUVCkmdhh6a", "ticket_expiration_seconds": 4}' \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchPool' test.out

#- 27 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'rFPDHdaLOrreh4jK' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolDetails' test.out

#- 28 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'b5wTxi22fmtyEMsS' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 4, "backfill_ticket_expiration_seconds": 5, "best_latency_calculation_method": "aICXLVbGzx7KJnoN", "crossplay_disabled": false, "match_function": "C7hyKGBN0uBwmr13", "match_function_override": {"backfill_matches": "ooRTAKpZjdcO8YYm", "enrichment": ["xDbP7NBuwz8TEyPX", "s2Isc4Y8lvhXu1Wh", "8LI0BiomJmJoLTpS"], "make_matches": "18CIzFudoY3ZFuTN", "stat_codes": ["1A55TycYmtnXkl98", "fBlssBJUkQKsiqzJ", "uU150AphFF1rOKcm"], "validation": ["kaZSaRfMYF0o7BML", "xiG2m8aicGqyHvoQ", "YnyJ6qDDBcjz2j3R"]}, "platform_group_enabled": false, "rule_set": "Q5T3AtqDjuXTuYmf", "session_template": "5wD7gHMIizMmTRSQ", "ticket_expiration_seconds": 35}' \
    > test.out 2>&1
eval_tap $? 28 'UpdateMatchPool' test.out

#- 29 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'jYOW5IKhbeTkJ6o3' \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchPool' test.out

#- 30 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '6j4WQHGWWa69ggCB' \
    > test.out 2>&1
eval_tap $? 30 'MatchPoolMetric' test.out

#- 31 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'p8Zdj8k1meFl9P9j' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 31 'PostMatchErrorMetric' test.out

#- 32 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '0y1j2sneLBZ0eUgh' \
    > test.out 2>&1
eval_tap $? 32 'GetPlayerMetric' test.out

#- 33 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'gAIX9MfCsSvxdRK9' \
    --limit '29' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetMatchPoolTickets' test.out

#- 34 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"yNPJELM9mcdFJRYo": {}, "Tda1eYZDZjd7LsFe": {}, "U6lLQZdBPCXPczF3": {}}, "excludedSessions": ["SgeUaZO94BOvButv", "PqlA77EaNmNJ9FzZ", "29IiHnT8GjiWny8x"], "latencies": {"oUgdoASOilkygQ20": 64, "7aJLIG78QEG4RnHa": 80, "8JoMWK3ip5JUrD0w": 6}, "matchPool": "uJ12lo6xDGAjBUOn", "sessionID": "oEb0HDxpxh0CkDT9", "storage": {"oSRE1oi4Cpx615mi": {}, "OkovNJgXDLOGXn3o": {}, "NotqPCcvc6BvKTfg": {}}}' \
    > test.out 2>&1
eval_tap $? 34 'CreateMatchTicket' test.out

#- 35 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --matchPool 'xS80Yq7GFwbf9iKL' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 35 'GetMyMatchTickets' test.out

#- 36 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid '4LJnZTmoJ7vsQWdD' \
    > test.out 2>&1
eval_tap $? 36 'MatchTicketDetails' test.out

#- 37 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'Of8yHz61D0lDAFtL' \
    > test.out 2>&1
eval_tap $? 37 'DeleteMatchTicket' test.out

#- 38 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --name '7bFyIZQ1urJlGhiI' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 38 'RuleSetList' test.out

#- 39 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"AKzZDS34mqMPCbVS": {}, "LdkU8zvt7WC6EVy3": {}, "Vr0CyvVlhz4MWL8k": {}}, "enable_custom_match_function": false, "name": "ZC7a6MVX8YAIP0sA"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateRuleSet' test.out

#- 40 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'vDR9e84svI61b7sZ' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetDetails' test.out

#- 41 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'iIMvutDgcnjr9Dnt' \
    --body '{"data": {"BzmpyJWTODVKanWr": {}, "v14zltoqf7GWOJjH": {}, "aUdKZFS3loB87MNf": {}}, "enable_custom_match_function": false, "name": "scloITmPqGt7PA46"}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateRuleSet' test.out

#- 42 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'VKQHlNbudVktcxEh' \
    > test.out 2>&1
eval_tap $? 42 'DeleteRuleSet' test.out

#- 43 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'hATRC68449VqeKau' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetPlayerMetric' test.out

#- 44 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 44 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE