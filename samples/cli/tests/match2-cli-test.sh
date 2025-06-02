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
    --body '{"logLevel": "debug"}' \
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
    --body '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": false, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": false}' \
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
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["VO2fFQwPTb9nvP9V", "AGaaYlqlWguWP2tW", "bmmYuSUYrEiRorrL"], "matchAnyCommon": false, "platformGroup": {"VTIeyET2rraEIwSc": ["ZMZUGjkvpW4oNL0k", "X6BqA5mljdUfV7mm", "Eg4XVJiZj4Jmqe5k"], "kaEpeRWfJOcbMYrb": ["RsC1gj5ul6LvFy1f", "DRlBS9fFmYPsnMtY", "ZcemHIa1AlO6juvg"], "21uF46TOfdESxk2V": ["NTW3OfKFEDXPVg4r", "vTk2gwBBVbEhDXrQ", "BHfKFXv5Z7hSCFsZ"]}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPatchConfigV1' test.out

#- 12 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 12 'EnvironmentVariableList' test.out

#- 13 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1975-11-10T00:00:00Z' \
    --isActive 'false' \
    --limit '13' \
    --matchPool '6Tw2OBLBYNoeQDeH' \
    --offset '69' \
    --playerID 'uO1xbSG3oHP0YBAB' \
    --region 'Ev7sIzVKVirFa9tY' \
    --sessionID 'LlAFB0ONt7g1rAyp' \
    --toTime '1985-07-09T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryBackfill' test.out

#- 14 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "TLxHYU9b67O3VPL2", "sessionId": "3fV9v7kQkzQuLDmZ"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateBackfill' test.out

#- 15 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '2CqD2VnYWBe97QoA' \
    > test.out 2>&1
eval_tap $? 15 'GetBackfillProposal' test.out

#- 16 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'sav8AChR4nP8t9yl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetBackfill' test.out

#- 17 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'o2r3PWlnCFFJpCNM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteBackfill' test.out

#- 18 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '3tZn2UQFKPRVGu7k' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["tcJUyCfnF3g6QJ7Z", "Imeccj6k793UG9Rc", "7jWZeLMF8hVpET0G"], "proposalId": "8W1VeLT3Ch8vva8M", "stop": false}' \
    > test.out 2>&1
eval_tap $? 18 'AcceptBackfill' test.out

#- 19 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID '7CAT0sYxxawh8bo4' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "iFkl9fwjMkY3jhIT", "stop": false}' \
    > test.out 2>&1
eval_tap $? 19 'RejectBackfill' test.out

#- 20 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 20 'MatchFunctionList' test.out

#- 21 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "5T25we0mVtORUuJg", "serviceAppName": "9OZzbfM60h4UOqBv", "url": "oQj7dW3J37GpgLDE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchFunction' test.out

#- 22 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name '7B5n8xKQPUePNMsG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionGet' test.out

#- 23 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'vCgHGJ9Rcg3xXom7' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "9rhjs4mk4mYLmmgh", "serviceAppName": "RcDvluJYS7lIeBnc", "url": "FL9b0m2vdDEK0Bsn"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchFunction' test.out

#- 24 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'r25mfHPouC9q7NzV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchFunction' test.out

#- 25 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --name '060pEOK9wAmIOPRJ' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolList' test.out

#- 26 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 98, "backfill_ticket_expiration_seconds": 50, "best_latency_calculation_method": "QbDvePtwvnBlD0yx", "crossplay_disabled": false, "match_function": "VQpd6PSGrQzKV3cC", "match_function_override": {"backfill_matches": "c0XJEeO7dwlvYoJg", "enrichment": ["kn8BPIAhc04ycSAi", "Hc9dtWrWmJ2N7qci", "gWr2WGAMOzNZXT7g"], "make_matches": "IZUdw3A2zvHq1oVH", "stat_codes": ["vcHqwUTIM3DCsSi3", "ARrQiZTSrtdNTlw2", "MxWlKojqPGgeoXyi"], "validation": ["1XEkB7keeKbTWG4d", "EpTrb9gxvj0ati0o", "hbBUAd62I70ua3nb"]}, "name": "PWaNNPyW7kcNbCIc", "platform_group_enabled": false, "rule_set": "VD7D0Xx043FgrRyG", "session_template": "yaLrwYheFTvdoThw", "ticket_expiration_seconds": 38}' \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchPool' test.out

#- 27 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '0L1f2jhFI3USF7PH' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolDetails' test.out

#- 28 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'bEk8Voquk41uSqBL' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 87, "backfill_ticket_expiration_seconds": 34, "best_latency_calculation_method": "2zvVmsf1gBB7D4y4", "crossplay_disabled": true, "match_function": "tTR9dW9u8ITjLwXH", "match_function_override": {"backfill_matches": "Zj1oO0RPcsZvdEcG", "enrichment": ["jj0Kx2LsEWHJzrIm", "PrMNZJz5WvCfwjCU", "osnLTDbHFQjDVtn6"], "make_matches": "KiKY16uUGkN8FIqj", "stat_codes": ["AVOOlV1ArhOC7SPE", "iUXBpy74lwMRvlYK", "hO5CDXRWpclSSKwc"], "validation": ["fZucgppEwHd0GVAT", "dcxPZH1nE4JmynQf", "hrtbfCm4hTmrXUj3"]}, "platform_group_enabled": true, "rule_set": "zL83MrTyG5hLEAbJ", "session_template": "R11na4l3mtdQLpmW", "ticket_expiration_seconds": 80}' \
    > test.out 2>&1
eval_tap $? 28 'UpdateMatchPool' test.out

#- 29 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'O5oKvjmzik635HaC' \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchPool' test.out

#- 30 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'HFDL0zropKLIfm5F' \
    > test.out 2>&1
eval_tap $? 30 'MatchPoolMetric' test.out

#- 31 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'RRvByxV5Sncw1GtJ' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 31 'PostMatchErrorMetric' test.out

#- 32 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'HNsBMlDVdJkCktfI' \
    > test.out 2>&1
eval_tap $? 32 'GetPlayerMetric' test.out

#- 33 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool '9uDzNiscrYqsjNaC' \
    --limit '62' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetMatchPoolTickets' test.out

#- 34 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"3rygKPeiWt1Q5M3P": {}, "QR5JPwC8fYur5vr2": {}, "0Rt07vxcLnc8ZtBU": {}}, "excludedSessions": ["whmdDZjzBOojlyzf", "ar4leMzOSjM4MeKZ", "ueeePVEv6XiRrBJn"], "latencies": {"sajQkVIvpEMKDLaB": 72, "Lxt5mxVugQ5Wm0cR": 36, "3WxKGwUqpBTs8Odh": 49}, "matchPool": "ooN2qEUdYpZRVt7H", "sessionID": "rkRykAvqjvOEV11N", "storage": {"r7DJJAzCvIFnynha": {}, "qkriuUfhCRtUZsJE": {}, "2MWHvL7zl3iJYQbS": {}}}' \
    > test.out 2>&1
eval_tap $? 34 'CreateMatchTicket' test.out

#- 35 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --matchPool 'ibbHw5nQKGbyaIFU' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 35 'GetMyMatchTickets' test.out

#- 36 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'Vumd8juWllpxf4L6' \
    > test.out 2>&1
eval_tap $? 36 'MatchTicketDetails' test.out

#- 37 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'eYvBkOOcd9nnk0DX' \
    > test.out 2>&1
eval_tap $? 37 'DeleteMatchTicket' test.out

#- 38 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --name 'bkRh2QXwgI37hhTY' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 38 'RuleSetList' test.out

#- 39 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"vTjGd67XoPLkx2UT": {}, "qHOjUvBeyqcAYpKp": {}, "EuULNioZDqCvePAc": {}}, "enable_custom_match_function": true, "name": "TaLQsEGsVyvwscc7"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateRuleSet' test.out

#- 40 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'bzF35IErDxVpj39D' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetDetails' test.out

#- 41 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'jUJ9EiTTmUB3ltA7' \
    --body '{"data": {"VUrQUVgTTlOKwDWR": {}, "JjkXFOzNqStLMDfZ": {}, "MerHkkfy976045a9": {}}, "enable_custom_match_function": false, "name": "BnsMgAZiFdIegaIZ"}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateRuleSet' test.out

#- 42 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '46RV4NVEkHd2fuAR' \
    > test.out 2>&1
eval_tap $? 42 'DeleteRuleSet' test.out

#- 43 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '07keujYzOk1lrWLh' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetPlayerMetric' test.out

#- 44 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 44 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE