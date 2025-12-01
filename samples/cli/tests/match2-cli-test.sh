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
echo "1..46"

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
    --body '{"logLevel": "fatal"}' \
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

#- 9 AdminGetXRayConfig
samples/cli/sample-apps Match2 adminGetXRayConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetXRayConfig' test.out

#- 10 AdminUpdateXRayConfig
samples/cli/sample-apps Match2 adminUpdateXRayConfig \
    --namespace $AB_NAMESPACE \
    --body '{"whitelistedUsers": ["tp3LHZrohic6BGFj", "R0RHzrXXOY726PNw", "vsNA49ZiNLv9SBl4"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateXRayConfig' test.out

#- 11 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigV1' test.out

#- 12 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigV1' test.out

#- 13 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["C2KHK7mLz4aXQ4K9", "3B903JKqAEFbwXYS", "CifXJLg3Efs3Y38Q"], "matchAnyCommon": true, "platformGroup": {"bZQzpFyRNt8izRfo": ["xlFsejMueeHOpXQo", "ZMj3vYtz9QLbI35A", "gQYps6CRicrpPZbn"], "EZ4rjekTtBbtPCvG": ["OW8xgch324IQOuJc", "eKLTInYxAK3vYc8A", "cypBAjTmPIKVQU64"], "4DNKGxbhZdaY8UYE": ["h7LJ0ezuqzem3V52", "sXsHMXwiJ38y5W8y", "mosffxu5Wdch2kEM"]}, "xrayMaxWhitelistedUserCount": 95}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1991-08-19T00:00:00Z' \
    --isActive 'true' \
    --limit '80' \
    --matchPool 'UK4zs4AlpidORT71' \
    --offset '70' \
    --playerID 'J0WBsxViPJMUGKyC' \
    --region '2XjfUpahNXDTFAuf' \
    --sessionID '1EDNRxR6fwdDahOc' \
    --toTime '1975-12-22T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "naIpFKYT5n4P2Rkr", "sessionId": "RJD9Tgt1xFrIPEWA"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'ZNBm8O4hBKGcQ94O' \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'lpIJuki0eZKoxoLJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '4uBKwVwmFnztuuCO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '5Y4bMLoYRcg36QNr' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["Nyr92DfSdxZGZdH8", "EUHt9YjrkHOVzRro", "X2oXNCYSZIk7IUbk"], "proposalId": "B3DSAYCxC8CuJTTb", "stop": true}' \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID '31OmZ4y2demkbVRF' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "oioi3kPBfx1fEtui", "stop": true}' \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "a0824n8sqjU5aGeI", "serviceAppName": "yO3LKSfWAHCmYzfs", "url": "jOWoURkQXq2Thv8z"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'rSn4AXESvcXZ8ujG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'XtGexf5NElw3wYZU' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "I4uG87GO221CbggU", "serviceAppName": "c1zD4f1pfaR7S1FD", "url": "hbDAFsMgk5gtjB1B"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'FW5aPRIz29r34K4s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --name 'tszTpXydO0dUIptM' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 60, "backfill_ticket_expiration_seconds": 73, "best_latency_calculation_method": "ChFx0l8OZ0ZkwSUj", "crossplay_disabled": false, "match_function": "mE8862g3eJBUfyGH", "match_function_override": {"backfill_matches": "ZhaDcafzkagsphF8", "enrichment": ["KiVSJu29jhk8X2La", "N0yIue9kn3bbexpZ", "npYNDwkpsasLSFCi"], "make_matches": "4Y30XPusRfB24aIj", "stat_codes": ["NhvOP1NknLzVwHnu", "Q1w7XRawuGb75xz5", "yuFdUYf3zjQVTLgR"], "validation": ["FKmzTdz9G8RaDGaa", "5zF1rnadWd1Q3q0A", "LmyUeCRFBFzs5sGX"]}, "name": "r2NKuzPuU2OtNVHD", "platform_group_enabled": false, "rule_set": "8qQPEVGjtCRTQtgX", "session_template": "bgs0ePqRZqUYLvEg", "ticket_expiration_seconds": 79}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'zIDsw2Jtu8sSeclA' \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'g26ilw4o7ZJkS6st' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 91, "backfill_ticket_expiration_seconds": 7, "best_latency_calculation_method": "BLqMABaQXVjQgRbM", "crossplay_disabled": true, "match_function": "mCQUKRg8BEfAfdZN", "match_function_override": {"backfill_matches": "71TNL9U7tXb5Xx6O", "enrichment": ["S65Dnyeu5ZiRCTGR", "XTKSAqqYxVFWh6C7", "pM23SuOgJI49vjEN"], "make_matches": "7N4Li62h694NEerR", "stat_codes": ["ZX3qNF4lkuC0ThGp", "4TVpGeXPASHC6mq4", "ZbI705fqSXpjIUJf"], "validation": ["Wdl0PaZbYRTxldjU", "eyA8R0OfGM4emaYu", "Qg7MtVbZW7ZeCuOM"]}, "platform_group_enabled": false, "rule_set": "rFdZKcLYPJyYYODd", "session_template": "Zxxy01PgcZ3TB55O", "ticket_expiration_seconds": 32}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'rdkSbVsx6HOX3x3w' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Nj6xpElpKRkPBfbT' \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'RsQpwV04A9bW0RjP' \
    --body '{"type": "getExternalDS"}' \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '97kL60saqY9xh24h' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'LsnKPUgCrp5MCYO4' \
    --limit '1' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"WJQhlqsYc1FkgTmR": {}, "v1LcwFNiz0EdTzpa": {}, "Gd9SFSa7YrfgqtS3": {}}, "excludedSessions": ["vLuUYCeRcXWB9n9N", "NXPqvkz3ykWUaicN", "uSAqlurMduvzPXbc"], "latencies": {"DDIn1C4Ko6zBilAe": 39, "ry03BlUSzQWzHFsU": 78, "eiqSUTl8UnlEJ04i": 52}, "matchPool": "I85WBDo4igNibXpK", "sessionID": "xdYH6NI4wfk0x3lV", "storage": {"eqRavrUD092yvolv": {}, "2BAq1mHlzPCPkrmU": {}, "tf2qnb2XCfbTl9fO": {}}}' \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --matchPool 'TKfBfqNUv4rJjWOF' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'OHNnuQMkRdvYgoQL' \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'V2FHK1F3knTrSgJV' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'kvaqvn4meQ7LqCUe' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"aQwwemQOQDTY58Vn": {}, "shAmkxERv0COkZH3": {}, "s6yVOV5bCwKxMVmg": {}}, "enable_custom_match_function": true, "name": "zbPvGfjZLrNvH3Fb"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'kUQHZscG9tcaJKmC' \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'WfuCaaTZmMzpzV6o' \
    --body '{"data": {"89gTbP3NX5cXhQGR": {}, "sMR6EI2vAH1YnHG6": {}, "STRT2QaYKk2E00fa": {}}, "enable_custom_match_function": true, "name": "GsimvUeTIxs35sGv"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'nOSBz6JNfBUDLoNq' \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Ds65FiJb7ro6jQNJ' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE