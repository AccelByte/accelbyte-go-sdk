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
    --body '{"logLevel": "error"}' \
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
    --body '{"whitelistedUsers": ["ZAL6LczqzskhurCX", "m6xJwSJcgW49p0Ns", "G2VE01gRTb0sgHFI"]}' \
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
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["pC8FlfWB40aVgYoD", "83Dftu05Zdkf0JNf", "r4oK8BadxVtVUj1s"], "matchAnyCommon": true, "platformGroup": {"P2Tm2AVBhjdYAUYr": ["LHhCXZSJhA7KJojF", "9fZvyyCN4TNe0Rj6", "hsePz9EYH6owgnbA"], "VakSPRz5EMcPIfqW": ["GdRmAw4RxoME4dc9", "aaUsiT2L0RHGUbAm", "nAwVIp7k8gx4wZXG"], "iMSMxPNNb57KWXzT": ["kULpWldvcFVtziKx", "UULnmHF9KEmDjY8G", "EUP88TZeIiTfAE7t"]}, "xrayMaxWhitelistedUserCount": 24}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1991-05-21T00:00:00Z' \
    --isActive 'false' \
    --limit '68' \
    --matchPool 'domBAqMhS3FbX3jw' \
    --offset '52' \
    --playerID 'cbbqQdd2EXGLsgYt' \
    --region 'LWR2x8yeNTtmLlLz' \
    --sessionID 'IG77qfhuNWjh5YOI' \
    --toTime '1976-11-03T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "YBOAbH5qWcPhkKC3", "sessionId": "8dHrMZMfPYtV8Pil"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'hLOnPmqjzDMabtZh' \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'n6QyTII8M72NOvkt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'yPFeTmE6LnIsPEmY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '5qwhcrc1D5KvQfK0' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["X8PM3BeAeG1m2m2q", "6zCTbejaXD0ybqgy", "SSTdZglSrxCvrEjg"], "proposalId": "FtDdfnslBSaI5oNw", "stop": false}' \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'po9K9BbqcWiiTRKM' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "u5J8ZTs6qU2WYGBx", "stop": false}' \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "BYmFiRxYvS2puQdq", "serviceAppName": "ie4se31umN7nHew3", "url": "GUDWqx4yo21YkhQX"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'QLjbNW2RfZnXqE0l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '7V7oXBihvoETbfPL' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "qFkTtGoO0nXJ61d7", "serviceAppName": "YK4LbRC3yXYXdlg6", "url": "K2C30bu66tDmhknp"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'Drbx8krzen0Hzhpq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --name 'iD4cAQIksbbqsGE7' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 33, "backfill_ticket_expiration_seconds": 71, "best_latency_calculation_method": "wlL5O94jk1uPekPE", "crossplay_disabled": false, "match_function": "UhHfKgF2VBaF0G5o", "match_function_override": {"backfill_matches": "bpxgPKEfgdwnej4q", "enrichment": ["9HhiwzHAUOe9NJU9", "lAEw1Zw7grDpfoQL", "zIqPZ9KBgmOX7iEf"], "make_matches": "qNZNkEUo2PSjOTew", "stat_codes": ["AUUVlFhhvUaQ2rbR", "LCfu2XF1XAOKzS9a", "CK76N9lit5pDLSJR"], "validation": ["ZkUXPhlemRwRuYAS", "N8GljIdePwhGTc7H", "DTj6BF14TUZFTUMZ"]}, "name": "fzOkLcfdHCt1JMIW", "platform_group_enabled": true, "rule_set": "tQw4G90IqRu9n9BJ", "session_template": "MSzkYWEGztAxFa33", "ticket_expiration_seconds": 46}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'vpGeE0TEqzR3xyIa' \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'TEwYoXqnjaOgQ2IV' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 88, "backfill_ticket_expiration_seconds": 93, "best_latency_calculation_method": "73nesbYYuGUNdREf", "crossplay_disabled": true, "match_function": "9zpTKZ7wV2AwpXER", "match_function_override": {"backfill_matches": "9YSBc1gC2CZoJ4e4", "enrichment": ["wq43LTEfRcFTzkIL", "sxZw3MnTGH45APiB", "PrjfEZ0nucMNDPu1"], "make_matches": "2OrNEHr7mecQANyw", "stat_codes": ["2y0YlrXd9Dsazieq", "EWJJWxEq2VsjXv5D", "ieHFEXbMSWtI39ct"], "validation": ["YXfG8GUpSTT9aMZ5", "uUVhqrAek6OqXWMO", "jBX84DpWMj0RpyGb"]}, "platform_group_enabled": true, "rule_set": "3otduaQKqShA7XsH", "session_template": "6RI1DGDufHuaEEek", "ticket_expiration_seconds": 54}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'fkcH9lKKSgOWmJ3w' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'cKJo60HctQESnt4q' \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'FgwLGyGReN8XheEq' \
    --body '{"type": "getExternalDS"}' \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'EexwSZcOTMroEcZ4' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'jaRse16eST0UQTAm' \
    --limit '67' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"BPT2QWDRqKdg9Rau": {}, "Wd1oMitNV5Guq1LO": {}, "f95uxmvAVUP64Qk9": {}}, "excludedSessions": ["oLyYvxgmFahjkp2P", "Ggjy6pO0f61GK8Vf", "5MpqmFTq7vF12I4F"], "latencies": {"icE6IBKP2FaRUQSC": 33, "P68VLqsN0M2jezYJ": 50, "jp4RcwwDN6FHfnYJ": 25}, "matchPool": "gfPS49R2V6b7jy2Z", "sessionID": "J9sppGJS6EMlymKW", "storage": {"u94jnQ160nI27bDU": {}, "1icpklERb2pUigri": {}, "Wsuogh0R0V91X5Kx": {}}}' \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --matchPool 'ftDEbSwzd7Th6wmj' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'Zmr17bku3Xe1iZdD' \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'fwbTBiACvxWMUKM6' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --name 'md4TgKzYFFMWcgP8' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"iPfkxYo3cBS8ARNP": {}, "qIpTzxaCVBo5CAvb": {}, "UV4Uuay3QkuOHQT2": {}}, "enable_custom_match_function": false, "name": "u1KcAHPfAGVOswfO"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '2k0jdg250XU4P1he' \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'Vd8JlCmUnE1D2YXT' \
    --body '{"data": {"NBfRjfVgtGkgv5Xl": {}, "4AQoCJb7abUkAJxU": {}, "WzOJ2FCLnS105EBx": {}}, "enable_custom_match_function": true, "name": "iVfzR9b6udov4BBw"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'xSrbvLV3UNbztQo0' \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'O9S9F57s360rdyud' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE