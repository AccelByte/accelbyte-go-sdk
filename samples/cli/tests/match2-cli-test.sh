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
    --body '{"matchPool": "P0cateZYv0U8Gb7b", "sessionId": "SSsuOwEBzlDnWYir"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'Ls1VLPVsrZQBIgnf' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID '1xzdbhIVdoX4hhw0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'iIn9VxeBUXLqeEkZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'Mlwr8tvBP18CDaGp' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "JdWQRPSWt0FEmjnq", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'cLMR1lmeVeSuZIiP' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "jtlIaHNo6AGkasTK", "stop": true}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "iapTWrEwnW86mCUZ", "serviceAppName": "fJaWOmaDJ63Pv9RO", "url": "S781RWKrG3rbfZqX"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'Vy6nwbB7unt06oVZ' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "cNBle0jeeZVqk2gh", "serviceAppName": "JW0flHWHqd7egjh2", "url": "T1RX3aqub9eOTHdw"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'F21ag6ZX5Odha0f2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --name 'Rb3OHaPGH0FONGJC' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 23, "backfill_ticket_expiration_seconds": 67, "match_function": "T37fEFFD8Id3QI2U", "match_function_override": {"backfill_matches": "orBYoUhKdt5Eg8Id", "enrichment": ["JEH7Z69XRKMNRWpd", "JmeMDB388o68MWw6", "qt4aKc83dVd2j5ra"], "make_matches": "ZZXycZtoq0J5uNuf", "stat_codes": ["ibNg8cTTcngsKdYE", "f4EXyiwxZYosnZg1", "s2THOMWsUTDsPFTb"], "validation": ["SyVyYbCCiRlAMdE1", "S3r3zb8mphR9yKob", "qBGPm3g1gSAAuQTx"]}, "name": "3wcvPXKWc21qAqDx", "rule_set": "p5DtrJcFpg4aFyZh", "session_template": "9mWZFHf4NkfsnVVH", "ticket_expiration_seconds": 71}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'PF3OFgmoLSuCOYQk' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'aD6WpqSQPCvLexmh' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 83, "backfill_ticket_expiration_seconds": 26, "match_function": "4tRh8rVQoMmOKD5B", "match_function_override": {"backfill_matches": "SkPUS8buzuonC2r8", "enrichment": ["lDeaG0ylJ4UijKUF", "1o8meGN9vVvVQh8Y", "5bfReGFhrLKo3CZx"], "make_matches": "GhQMqLezfWxwL3ma", "stat_codes": ["uYoUmbSWinGezcgI", "UVIaNV7o3UVCwUEL", "iJ7VDeX4MpQrLMvU"], "validation": ["tu3ZKjpmJIygqIJf", "e2U80qr0AVwgGQx4", "LxQF1kevXTXnGznm"]}, "rule_set": "UL7p64WZjaWDoO3l", "session_template": "QxSjTTIbcFlENr86", "ticket_expiration_seconds": 100}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'qx3nYHUqmxbIcMsU' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '2wG5zUp0K8pAwmW5' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'lvAykDbVlQo2qmpd' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'yWiPN8ZKg5P63OlZ' \
    --limit '72' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 22 'AdminGetMatchPoolTickets' test.out

#- 23 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"w339uxDUgxnC63qI": {}, "bpLcO4mUnkFGiHhR": {}, "uJAFIQND15UBJVAD": {}}, "latencies": {"lXr0aiXRkMxlzW9r": 39, "PkZwgC6HSqd4LfPf": 7, "oQm0OWuteBPOU90N": 100}, "matchPool": "09D0gy4eKXcL4yTk", "sessionID": "y4zcE3MK1kWApyyI"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchTicket' test.out

#- 24 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --matchPool 'RsgXk4Okbf2TZpos' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 24 'GetMyMatchTickets' test.out

#- 25 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'SIC4eiHJaSIwX2GK' \
    > test.out 2>&1
eval_tap $? 25 'MatchTicketDetails' test.out

#- 26 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'fS9Gm9y8EPyBaPwG' \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchTicket' test.out

#- 27 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --name 'QHrXcMEHIsBX9Oe8' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 27 'RuleSetList' test.out

#- 28 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"F3SOsJhuIkbY2yTw": {}, "FDnkzuZezgRzQjea": {}, "duLhrc9atekqFXIB": {}}, "enable_custom_match_function": false, "name": "KHyUcQyvaaJbNHej"}' \
    > test.out 2>&1
eval_tap $? 28 'CreateRuleSet' test.out

#- 29 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '9bT0F9MlMWDvLvzC' \
    > test.out 2>&1
eval_tap $? 29 'RuleSetDetails' test.out

#- 30 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'uPPLSeRBAsIFqzc5' \
    --body '{"data": {"uBq9P8LLdqDeDJW0": {}, "RGdqrNjB6VwIgbOm": {}, "1l3XbEMdvTxShq4C": {}}, "enable_custom_match_function": false, "name": "wGQ0pTkzLKgdAUAZ"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateRuleSet' test.out

#- 31 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'faBaCrwLLpLwoinA' \
    > test.out 2>&1
eval_tap $? 31 'DeleteRuleSet' test.out

#- 32 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 32 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE