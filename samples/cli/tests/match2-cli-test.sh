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
    --body '{"logLevel": "panic"}' \
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

#- 9 AdminGetXRayConfig
samples/cli/sample-apps Match2 adminGetXRayConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetXRayConfig' test.out

#- 10 AdminUpdateXRayConfig
samples/cli/sample-apps Match2 adminUpdateXRayConfig \
    --namespace $AB_NAMESPACE \
    --body '{"whitelistedUsers": ["KceIeiATNBARbIqA", "7EFXNQuj6sNByVov", "5al4TNJbe0tRzAEp"]}' \
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
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["xej9xboTgPb1nPPW", "XOnJA4P6Nw27lsLK", "KE2opYXhwZe8URg8"], "matchAnyCommon": false, "platformGroup": {"cVOOzIakJ4lM796M": ["TNVjmy1kNPvGAbPk", "DepQ9LJe2BnRPySM", "H30nC5CeIlwOSqFA"], "aftwxUun2ddqo2At": ["LlzXdtEE7JNOw7wX", "jHFpv4ZXMgBSGjGb", "Pot7taVBlFPCdsyf"], "8qKPTJxaylldHgJj": ["gWjEVwfZsoE8EO6L", "LJPq2KzFPSUTR687", "bGSduOrp47Xh8zwF"]}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1983-02-16T00:00:00Z' \
    --isActive 'true' \
    --limit '88' \
    --matchPool 'lrZCMrV0Zu1B3I2K' \
    --offset '53' \
    --playerID 'FBd0JeIMBxMQJx0w' \
    --region '911jIMa7rkidiYDO' \
    --sessionID 'iaO1D0SU4HpWbt3B' \
    --toTime '1996-03-14T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "Y6OcMJWKSF1F4Lbx", "sessionId": "zJy63jaePzums7nz"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'MU5ApYwaxE8OlwIJ' \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'R6tmBExl3whSbndS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'fb7GOJSYatj8Ujbu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '8u8oGxTsNvCn4KZl' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["fWdCMdR6BKQ2Z9Sd", "3BJlEijr2iqjGT1C", "XJ36jBxb6g87Cote"], "proposalId": "340ftRsTPXFdGFzF", "stop": false}' \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'rwqD2OldryaNzgqU' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "v378z2PSx5RMacoj", "stop": false}' \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "FhdCacAMrlKVfkn1", "serviceAppName": "QZO3qTf3ATedMzg6", "url": "ENc1va3LdiyJYJtc"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'QXA3tqcP4rhh9N8w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '1jsS6FCqXRHHKU42' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "AVqwggcLHBlX6I9L", "serviceAppName": "fNqi5Zoh9THGLP6I", "url": "z69x27MeyJA7mpUV"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '98XKFx6CQKbeUROd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --name 'sYrVTqGwS2KgiFop' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 28, "backfill_ticket_expiration_seconds": 69, "best_latency_calculation_method": "DdF3Jl7phLQ1P3bO", "crossplay_disabled": false, "match_function": "B0UqU4WU7KWdDvLf", "match_function_override": {"backfill_matches": "jGvsLTRmlVWb2P9f", "enrichment": ["wWEBojQzhS90dHy2", "pDmKGSdm3PDApOiI", "ELw5rjtNxFdUGuGa"], "make_matches": "h14xgeMtbfbKSal3", "stat_codes": ["fbjJXJLLzkf7VDa8", "IDKZr5rtIxI7bqEj", "8wVW4HUGxK12lmnX"], "validation": ["DSNSM5OwvqOdXi7z", "mFtLBMKey2sQE6yr", "ioJnh723dRiZ2dBo"]}, "name": "53pHLcDlwNINo59S", "platform_group_enabled": true, "rule_set": "UhcAdN0vGi5RyAMQ", "session_template": "zxBowZSVlA6dh3bq", "ticket_expiration_seconds": 28}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'QYcJKCkdE94IQhko' \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'ZbM5GyH6THmpFhc0' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 76, "backfill_ticket_expiration_seconds": 44, "best_latency_calculation_method": "cKieNjH0SkltiMXN", "crossplay_disabled": false, "match_function": "RsfPQuTIG4nxPbzw", "match_function_override": {"backfill_matches": "LS5dBbALguHSWI2H", "enrichment": ["FaRQqXFMqFKzvEZ6", "f3O8duhtBlljMquo", "HiiPZnAynYQQllem"], "make_matches": "QDXhaVLocHXuN70d", "stat_codes": ["atn5Jk45X4aojEdS", "qLM2DOzBmakWPDC0", "vy8ANWG9blRDRCG3"], "validation": ["EYLiuZThimIbqSPj", "3qeN4PdFL1IQ7VXq", "fF7mKYtBf4lQ8zK9"]}, "platform_group_enabled": true, "rule_set": "zJTQFBRpYMSxKfmj", "session_template": "kvtQLrsIFGL8Wbfa", "ticket_expiration_seconds": 74}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'NBfn9VgzK6IsRMtK' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Yquf5VQ1sF79BuCu' \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'ZDK4ILY94gPjNy8d' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '6OeZsfpBBQKNvHcv' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'hOGZaRCcmWg6Bwbm' \
    --limit '64' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"H8SCWGc9ypkBmsDt": {}, "BOwFhWXAEHUoR6KK": {}, "RSVo8yWB0zCYye9E": {}}, "excludedSessions": ["ZMK64Ap6kbKVDlMY", "sAH2Y2OgFakGush9", "UZR9sR7lCcQ293Wk"], "latencies": {"cQ1H27dZQXQuhA3m": 12, "XCYnIbBkI74EXqUm": 44, "hmexN9wx2gGg4ggQ": 8}, "matchPool": "ttjLBnLtg0NUfyOD", "sessionID": "9K4KPqZ3x1wRQ38q", "storage": {"GSxx5Eza8zDdsH2B": {}, "TIgInTDsew9sfD5f": {}, "01t0ZYLqaLOUaiwf": {}}}' \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --matchPool 'BFrTeEir52EPzYPE' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid '9Rckj4BQDFSBec2X' \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'J4HXuaFKfrdnYYWD' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name '9wseKBzPDFhHiQXz' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"qfzdgqYDn2lUUWz4": {}, "IhNSvzQI4kpdov48": {}, "z1F2RADcliPlnmCu": {}}, "enable_custom_match_function": false, "name": "nZ090ZxIJJGOaOnL"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '8IeQREwKjdjMkjuc' \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'ryJp7IvA783Xb3xT' \
    --body '{"data": {"XXN9TJOSxvUCGZQ7": {}, "hh303RX8vVpg2lve": {}, "0rHnvpQhCRaPn47k": {}}, "enable_custom_match_function": true, "name": "LJCeFcdmxnhuQ5MT"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'UcdjJ6IS3fpVLhMS' \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '9UVmoe7HIxPGFexi' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE