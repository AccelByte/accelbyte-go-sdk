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
    --body '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": true, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": true}' \
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
    --body '{"whitelistedUsers": ["C4u8KdkZc2ku2zNk", "yUsopudGoZukagHO", "aLboVS54tn5LQdYm"]}' \
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
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["aU9q8YSXBuzYDu5z", "Oh30IeqGanFMaTjc", "F4nPP4bJYvTo4i9d"], "matchAnyCommon": true, "platformGroup": {"RQdSIUa4dgG6IU7v": ["DDhjFJf9VPoHEcQv", "IzlD2ZHya6U3p5Lj", "6oU5BAcvUMluvMoE"], "yg3RrSt5r2N2WlhB": ["gM4QgHn3TanMop9P", "sKoTY0xBN7SUl3w8", "cfqkYeiG4TUDOJTS"], "0r8Mp55WjczRZbAq": ["ZCnC09jI0BtFplEE", "f8kgX7PIPJbei5JS", "nnpMoos42uqhxTCq"]}, "xrayMaxWhitelistedUserCount": 21}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1978-12-14T00:00:00Z' \
    --isActive 'true' \
    --limit '73' \
    --matchPool 'kUSHawMyaawV3Mfx' \
    --offset '79' \
    --playerID 'XESMwKcEDAz4SikP' \
    --region 'N1LN7pWKNCz5FNDT' \
    --sessionID 'UuTbfoeWFzAbnDKt' \
    --toTime '1977-12-29T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "HNKXgmlexCYHt386", "sessionId": "WRgWJT3XGlb3Qsms"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'gejfLdXKoWTTtdrH' \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'PcgnQGEc15fQq7z0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'KvgZJB9xqqhhcCb9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'Eaz4KzroDm89kbJH' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["bCuT9coAreLDjkAX", "uk8V8rewzfuQX3MC", "u70xVUDN5mPmTk54"], "proposalId": "Q0fjK541TPHpEXcy", "stop": false}' \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'bQHctJUgwVFT6BMZ' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "D7Cj0NT85v0cPFSQ", "stop": true}' \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "gwg1OnfrCYHwYBOT", "serviceAppName": "HIETQtCL3j7pTnWi", "url": "E6SD6OwyTpV2PCgy"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'RK2lFMoBdP53AzgI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '93N7VLYRZcqzL8LZ' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "Nasrm4VI5EBChfJn", "serviceAppName": "pwnxqO4bDyWJp0M3", "url": "AHhcI4iqe3cIkhi8"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'FKcEHtARmSYJNm0F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --name 'C5RlszvFVe4GTqwj' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 18, "backfill_ticket_expiration_seconds": 52, "best_latency_calculation_method": "LWhL7hsEBS4T2IEx", "crossplay_disabled": false, "match_function": "bdQcmgExvajmQuBj", "match_function_override": {"backfill_matches": "HmXDH4t4FWa7i4cL", "enrichment": ["3lUvLE7lSuQ3Avok", "ZGOkULBMDWZY95et", "hLSvjJpf79LVFn3d"], "make_matches": "v3Xqi8Z7oV9zlypX", "stat_codes": ["BShL9hwoEMwVFYHJ", "EXcY4qDXJXryhFZy", "5wy7eQRYiEISIF9z"], "validation": ["aaZeM99Ts65cOvuD", "vXfxcj58ZrKnAhIt", "4vbnBLsh0jNwa7yr"]}, "name": "tjNoCkoiumRY3nyx", "platform_group_enabled": true, "rule_set": "Hfn4a7ror7m1ZIhu", "session_template": "pEHBMrpMNg49dNRE", "ticket_expiration_seconds": 72}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '7Xs0Sd17fkCEQ2ow' \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'atvGBHnGhRyOGywL' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 82, "backfill_ticket_expiration_seconds": 62, "best_latency_calculation_method": "946tp2rRthZRUiAX", "crossplay_disabled": true, "match_function": "EsRuPD0LUTTyOiBq", "match_function_override": {"backfill_matches": "LNzoVJz4FOi6nIyB", "enrichment": ["i7CXD4cLKjQzjg4E", "L5mOx4uNJqYHRcxj", "Jzh427GGp7CqCV9N"], "make_matches": "AZm4BdHN1SdtZqgl", "stat_codes": ["2TqPtqBkNGzZhZo5", "ZCh3aG7onhf98aid", "WVA0DzJnE9Z69kBc"], "validation": ["8ovlwD4oFAVmp4RE", "sO9arrGRwGh7FsAH", "zjCdx2iUcZ1G8Ezi"]}, "platform_group_enabled": false, "rule_set": "iQbKuCGhZuEpi5FE", "session_template": "TR1VYMF9Lnu3LXv8", "ticket_expiration_seconds": 52}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Pnc4FpCHZXs9stO3' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Yvj0kMi3fYM96BbI' \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'nKi7mnIddORoPqc4' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '1UeFak8wUKyEF7Ub' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'UYx7RV6ciX4oNLEY' \
    --limit '26' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"ha43xam0ElibY5tu": {}, "fJMr9AxaQsIH7ARn": {}, "gOO9reoNSkEr2NcL": {}}, "excludedSessions": ["WLjjEjKlQOpShwdz", "NsPVjqZyRpTWHrc2", "xNqCC2SGsswzNHPo"], "latencies": {"kY3zzehgJuUD9dWs": 83, "YizbGJF3zUte3uS5": 0, "viQc4Imwh1ji2Xid": 38}, "matchPool": "E7EDwWYguxUyosXw", "sessionID": "l6wB3UFEYWF4iiO1", "storage": {"cRhU6OhfdBmf4y9g": {}, "UWSE9S8CndKKIRFI": {}, "bx8TeW1RqXg7xxkV": {}}}' \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --matchPool 'Vt84aLf48gtc1b1J' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'hvv3bM5T7hW8ZqQO' \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid '0bC0XGdE7kNLgs8c' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --name 'FrL7maztGaHKxIPV' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"vlXeTrEAtXgDW1Vt": {}, "qf5lI1LZzPEMsWDN": {}, "X510Zhmrao78iNa0": {}}, "enable_custom_match_function": false, "name": "NepMBwPUcNGYLJ14"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'WAGGJVu95CmgmQxX' \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '9vZxouToxHuCdPRQ' \
    --body '{"data": {"Q9vY3Pxulh1zMA1p": {}, "jsLhOLNl0J9kwJ9S": {}, "scBpNMEU2Bcduprp": {}}, "enable_custom_match_function": false, "name": "OLPGVsEM9HwK0GxU"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'P1hAe1GKHJXfyoGi' \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '0XicDwfGvuJf3O8E' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE