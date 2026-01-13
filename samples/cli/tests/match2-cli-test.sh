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
    --body '{"whitelistedUsers": ["WsGQaNXjXlNZRzy2", "dtCfiSKKygjRWRQo", "3vPBPANQlcEknwmx"]}' \
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
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["vPlUyCKZCogOqyJN", "6ijzj7AmRoajVxag", "5KiVqPxy6RG3iTNX"], "matchAnyCommon": false, "platformGroup": {"dwOaM31FP3CyIb83": ["QDLrK6e0MzGRvza7", "czdhXN3GItB2GNZd", "cjflhvaRdrTwfhv9"], "C4wEdChj8c4o50SC": ["6ZMPTMbR2u2uYqAB", "xcmgsNwHxmK3bSIU", "I9e9KqlvqlemmtUN"], "l6h8n7xW8pxFm6cE": ["x6Kkqcwo1Y6bEqfa", "W7438iFawfx1aCFP", "drdzzwlD1UgMcM2e"]}, "xrayMaxWhitelistedUserCount": 37}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1974-06-22T00:00:00Z' \
    --isActive 'true' \
    --limit '29' \
    --matchPool 'k7HbyeKr7umY5PBN' \
    --offset '85' \
    --playerID 'FiZI7E4yDAUIy3WR' \
    --region 'NgSS87EkxQoKSdyY' \
    --sessionID 'IZIiv9n8LYWoqvra' \
    --toTime '1994-07-17T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "Geaba1wpoo4NqLd6", "sessionId": "aydcBUh5rOCfcE1F"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'jYi2C22JdFny5zbT' \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'OViEw8SyAtcwYnVZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'vP0rJI1CHpVzLxMm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'fbULWLfEEPUcCV7N' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["TcrFgFUV6R93rCl5", "QLdIF0EQyCEISupd", "RMKayV2vM9sR1xYs"], "proposalId": "J8WTrtsP2hwSLDBx", "stop": false}' \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'QUWMx7goyEKZ4KyY' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "TW0sGRTfRzGdBAwT", "stop": false}' \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "EUpZlBgZXILg3vsj", "serviceAppName": "TfSvBQxHV62hpfLk", "url": "KppyGkmG1gjnOHxW"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'uMfhj54Q2vzJmSRw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'Etg9CCecUhhVUFsw' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "XuFYo63OpcK14UzY", "serviceAppName": "9Gk2v9YkeaWHrqro", "url": "1XoxAjw78X7mY2XM"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'DLxHNwr0aq7fPgNq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --name 'cX4qznlcZLcCnsX7' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 11, "backfill_ticket_expiration_seconds": 52, "best_latency_calculation_method": "OPTVomAgoCYWQBMA", "crossplay_disabled": true, "match_function": "OXD0sPS3PTwkqeY6", "match_function_override": {"backfill_matches": "Wj7psBvDiWuUv6Wv", "enrichment": ["ZwONhAJ0tWd7ZGrO", "6MzPZXSIO9gr7s4u", "0XI9C3JO2QGIrsJU"], "make_matches": "hQHwsiyrCgoy3Ld8", "stat_codes": ["gC1AaojKozspjuLI", "9OKNQiYGXK7wiWi3", "tTeHJyPv4doupTdh"], "validation": ["NDI5G42PTRyJPPgt", "kAOeeLcHzH7AFYD0", "25RtWEkfWJ2uQiiT"]}, "name": "Yt9jQsMfKxIS1wJp", "platform_group_enabled": false, "rule_set": "cPdAyTeG1GqfGoM6", "session_template": "EWKP70y4NvZoEahU", "ticket_expiration_seconds": 90}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'liXVMvJMXBaCrYvp' \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '1GYBQGl5IQlvr2JR' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 4, "backfill_ticket_expiration_seconds": 85, "best_latency_calculation_method": "xJIwKveBJdoU1Y2J", "crossplay_disabled": true, "match_function": "y0It8lSCdDJTmxW7", "match_function_override": {"backfill_matches": "VrniRtCiy1WA03yr", "enrichment": ["kaxBh1tU6yg2skSL", "e0rUKSI68vOimbNw", "IYAAoHpRpj2L31U4"], "make_matches": "tFz9qttm1KpfRzDx", "stat_codes": ["84u42bltd5PAT0ut", "yyy2owth5BjERHC4", "aUSxjlWOFTwBX9b7"], "validation": ["0qlvdWU8szHKrbdV", "eDRdrPiLuuZnDCsU", "GihNTvRJZzPvgdbH"]}, "platform_group_enabled": true, "rule_set": "v3ZIIx0bYx3bxzzK", "session_template": "lMQwkBWdfIrOUSrr", "ticket_expiration_seconds": 52}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'oJNyOfvwXR3lgWSl' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '9TWW7wgE1sy1tnVm' \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'ov6PpCO58m7qXFlg' \
    --body '{"type": "getExternalDS"}' \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'CjJmeDtb9VTJcuWy' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'VEHvVQzlsrhPmYGV' \
    --limit '84' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"pYdiYnrurBDmDKdd": {}, "DtrVr5x17gZRRq5j": {}, "uvLzcbh1HvTxsySZ": {}}, "excludedSessions": ["kddffuawgk1d6ZpE", "qDJ5V3HeelFNAqst", "EWXZMSolUmlVAOe9"], "latencies": {"dEriOdy2hX9GJHAv": 47, "HDVUWTiogvffTZLC": 15, "bZglRAZtgwvrDnzn": 61}, "matchPool": "FfVal5asi9yvKeJM", "sessionID": "KCgQuNKe3MyswF75", "storage": {"qwjOPi7ReLvg9zIw": {}, "uFv1IrbbFZS6HJRL": {}, "2VRoIH32CsGz7vVf": {}}}' \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --matchPool 'vKzfkyJFmIEZukis' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'ccfd90Fg3FzHgyEf' \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'kzAX4wzlPdVZ5i7z' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --name 'J12ZY3c3VEWqEwew' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"U1RKuKBn8rvJtXsr": {}, "GsWFreB2I95HFEMV": {}, "o6Cko0d47DFIzoNn": {}}, "enable_custom_match_function": false, "name": "c8VtQsPTNJAEW4ee"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'kUFlCildVg1Fxo7Q' \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '20SpWjd3qNcE0VTJ' \
    --body '{"data": {"CJZQ2AdiHutzIOnM": {}, "5NOuz9sEeW8ocQ0V": {}, "lTpsjUR0ccAPlDxu": {}}, "enable_custom_match_function": false, "name": "jRzKlDQsD1OWzNcb"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'RliWx1fANHzUqU1t' \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'EyGPxBUJtXJ5xYa8' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE