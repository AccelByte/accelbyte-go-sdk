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
echo "1..41"

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
    --body '{"logLevel": "panic"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigV1' test.out

#- 7 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigV1' test.out

#- 8 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["h9PnawihFu586UHh", "9UVltNF2KpHmWzP4", "DMuodgBM54GELcfT"], "matchAnyCommon": false, "platformGroup": {"KjEKJnAoKfXoM7My": ["6gzqAjzBlqL8IPdT", "AKWsoFfYgcfU6hAn", "dHRIVEERC43MjynC"], "GTg9tCCYv3tvXwWL": ["mUESPYVYQFtMe3WN", "eK1Z4TVD1hY01XzF", "lgM1z8cW3eW1qMol"], "pGwXHxsTL1KGcwaK": ["ks0epacCommFY4dI", "Uwpf7Wx8PcoIzxNt", "gffiWl4tc6vpL2y7"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1978-01-21T00:00:00Z' \
    --isActive 'false' \
    --limit '69' \
    --matchPool 'yMpGJSmHxxIhaUWr' \
    --offset '38' \
    --playerID 'YtRvBv1B8K7wtH1O' \
    --region 'hCJxix4CKCLMG6U0' \
    --sessionID 'HOmtcOv3zs1uSj6F' \
    --toTime '1977-05-21T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 10 'AdminQueryBackfill' test.out

#- 11 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "ULFfE8NZHHQfha2n", "sessionId": "YOaQ82zeqaixZ4xH"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateBackfill' test.out

#- 12 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'h7efrR2N6AyulUcq' \
    > test.out 2>&1
eval_tap $? 12 'GetBackfillProposal' test.out

#- 13 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'VIBWKQHujJNrr4Br' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetBackfill' test.out

#- 14 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'jqaRuuC7VqawHq4c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteBackfill' test.out

#- 15 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'x2jMxH7JrRLWhttD' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["x57GHniNtZnYr6vD", "snu1h42Pcq6yj5W9", "qvibG3t2L0BkJfLc"], "proposalId": "ecEnMKAQPnOSancG", "stop": true}' \
    > test.out 2>&1
eval_tap $? 15 'AcceptBackfill' test.out

#- 16 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'ktGY30qi0OSkydy4' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "Vjm86KqkMsdEqwg6", "stop": true}' \
    > test.out 2>&1
eval_tap $? 16 'RejectBackfill' test.out

#- 17 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 17 'MatchFunctionList' test.out

#- 18 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "iaQJ97erDzxfKFHl", "serviceAppName": "mePSXMrmxdjTdehB", "url": "M2HPhypAka1Xxz2x"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateMatchFunction' test.out

#- 19 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'jslMhRrZsOjqTsIo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'MatchFunctionGet' test.out

#- 20 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'ZwtttIqdxFoHk2Io' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "Oyr0tOZdadpTWDYR", "serviceAppName": "K50tjdXJCJV6lGrR", "url": "Sayr331xMWCn07Lb"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateMatchFunction' test.out

#- 21 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'P47RY34rbV1aC4QS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'DeleteMatchFunction' test.out

#- 22 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --name 'dWkEmuRrr2bErDMG' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolList' test.out

#- 23 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 40, "backfill_ticket_expiration_seconds": 63, "best_latency_calculation_method": "C62TjtVQavlwE2Ut", "crossplay_disabled": true, "match_function": "0SNl3xTDuVp7360V", "match_function_override": {"backfill_matches": "ouKgZE2hBqMmiAxo", "enrichment": ["0qS2C2gI17N4GGYB", "j1BeGpmsAQfHG5cr", "atvKVHUnScRDAwjX"], "make_matches": "OPAaS45HTBeiDC3V", "stat_codes": ["jLPHGKv7QxqxqcAd", "I7nnnX4EOsAuZDNl", "CghBRDgotoWga5Zr"], "validation": ["fNYGpB1U3HKPxurZ", "FYX8PHo9Jgme5eOt", "jtUj0z9ucvqEQi6R"]}, "name": "JdykJyvSA2fPXYWT", "platform_group_enabled": false, "rule_set": "8QgxZmYa6E0FWPB2", "session_template": "F3zkVQuHVNHELGEx", "ticket_expiration_seconds": 72}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchPool' test.out

#- 24 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '6DieWeugzWcFYwQH' \
    > test.out 2>&1
eval_tap $? 24 'MatchPoolDetails' test.out

#- 25 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '7BqR5CRCKZrS85rM' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 36, "backfill_ticket_expiration_seconds": 28, "best_latency_calculation_method": "WVrlUoWAniXBtK11", "crossplay_disabled": true, "match_function": "PvVrH8XYEGe1c2RV", "match_function_override": {"backfill_matches": "oWeorS8bF7Px3NBe", "enrichment": ["V0keAbOvdob8YpXv", "vi7vPzcs4uohc4Nb", "HuKMjHONr6z4sJ6A"], "make_matches": "cbl0KF3QGO4EDKks", "stat_codes": ["qvyBwAY0XtRCGwLk", "Pa1IPycfDZlz4noD", "aM8E5jIGsa5kY64l"], "validation": ["g0duAMEtILWY5ytp", "UMM8zVJz50MUGumO", "w2VTK7AA8H01eR2E"]}, "platform_group_enabled": true, "rule_set": "hdnqeHhkcl0sIGDe", "session_template": "X0pakZ4DLVbwtXQr", "ticket_expiration_seconds": 54}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchPool' test.out

#- 26 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'QqKX1GBRRNXoXfFY' \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchPool' test.out

#- 27 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'zPZddbcKMFNNZxBB' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolMetric' test.out

#- 28 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'KWfvA3hgPfKyd9bU' \
    --body '{"type": "getExternalDS"}' \
    > test.out 2>&1
eval_tap $? 28 'PostMatchErrorMetric' test.out

#- 29 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Sv8BDGLNb0siPnsQ' \
    > test.out 2>&1
eval_tap $? 29 'GetPlayerMetric' test.out

#- 30 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'Ijk2C3hFWFnl7QBV' \
    --limit '31' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetMatchPoolTickets' test.out

#- 31 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"2BKbMd1Om0fgnnMq": {}, "opc31wMU6Wfi8FZd": {}, "gL9wHiZGUKyNYFe3": {}}, "excludedSessions": ["f3ZzfZ54MopCRgpQ", "umvCHUvtOSLwI7lo", "08oubJ4F0ok9vbMC"], "latencies": {"L5O1LuOOivpW6ReP": 78, "2s2Dtad1QJETiY7k": 36, "6IEmHVCk2Rrv8RBK": 37}, "matchPool": "82rDMBFLjAmpfkpj", "sessionID": "bwzzr2g6kgRdg34u", "storage": {"wu8kLmMKpfmmRTQL": {}, "i6D26G8O251wNIfB": {}, "LN3bXm63WiZ3tiu6": {}}}' \
    > test.out 2>&1
eval_tap $? 31 'CreateMatchTicket' test.out

#- 32 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --matchPool 'k3tQNALxn927vEle' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 32 'GetMyMatchTickets' test.out

#- 33 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'YtVY5vrwBuMEVUCD' \
    > test.out 2>&1
eval_tap $? 33 'MatchTicketDetails' test.out

#- 34 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'xGWFrXfl6a51M9l5' \
    > test.out 2>&1
eval_tap $? 34 'DeleteMatchTicket' test.out

#- 35 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --name 'xuxEDmH9YmbzleZd' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 35 'RuleSetList' test.out

#- 36 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"41KHd775OjfoyqdQ": {}, "7810SZQee9kPpaBQ": {}, "2LWE3guWQh9bfo4f": {}}, "enable_custom_match_function": false, "name": "ceIP0EvXFtAcg4hj"}' \
    > test.out 2>&1
eval_tap $? 36 'CreateRuleSet' test.out

#- 37 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'V8TcZIFtPB278f9v' \
    > test.out 2>&1
eval_tap $? 37 'RuleSetDetails' test.out

#- 38 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'rAcbxy71mL8S8Hrf' \
    --body '{"data": {"xFxuc7myEfQQyGVD": {}, "zj9GcMQfyX5keB2a": {}, "Q5DLFNIUvSjUWSkG": {}}, "enable_custom_match_function": true, "name": "7v7V1hNrFKuqWxyT"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateRuleSet' test.out

#- 39 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '3uym3G28Vfai3hZN' \
    > test.out 2>&1
eval_tap $? 39 'DeleteRuleSet' test.out

#- 40 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'sV6RGH9cR9QtghhR' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetPlayerMetric' test.out

#- 41 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 41 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE