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
echo "1..39"

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

#- 2 AdminGetChallenges
samples/cli/sample-apps Challenge adminGetChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'FjcGybxwWziPfevU' \
    --limit '51' \
    --offset '77' \
    --sortBy 'code:desc' \
    --status 'RETIRED' \
    --tags '["nGJbG9PO5b9TCpzY", "bEx817PCmnhyM65S", "i5TeHBqaAlgTnvO6"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 66, "assignmentRule": "CUSTOM", "code": "3uElC5733RrIsDM9", "description": "VnZJ00xM70NB9Gr1", "endAfter": 76, "endDate": "1997-12-17T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "lFCIZIS16GrOLtMN", "randomizedPerRotation": true, "repeatAfter": 53, "resetConfig": {"resetDate": 94, "resetDay": 92, "resetTime": "U8TmCnbahwaF0856"}, "rotation": "WEEKLY", "startDate": "1971-12-25T00:00:00Z", "tags": ["Gf5O4NEgCQYsUvBY", "AQhbwo9GhFVjsSfc", "dRF9mDaPq7uDNHiY"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'RpfynIOaSyZlwTmk' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'e2T2N0BkpcRa0eQr' \
    --limit '38' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode '2XJjMQDVoOeUV2jO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'yCcNaVphVGhlYQoe' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 7, "assignmentRule": "UNSCHEDULED", "description": "VTeDGoZZo54gWvr7", "endAfter": 71, "endDate": "1976-11-23T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "RRpNGLkv58C5RLei", "randomizedPerRotation": false, "repeatAfter": 74, "resetConfig": {"resetDate": 45, "resetDay": 75, "resetTime": "0qk1zFADAdSGlyyy"}, "rotation": "NONE", "startDate": "1999-07-01T00:00:00Z", "tags": ["4is2yot7vvPDgqXj", "fv8AuJlpu7a3SGMZ", "PFUzRAwaaTSFwOcW"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'z1SGz2TH1dCXbN88' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'bAyBa1G2eB6p4PWs' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '60' \
    --sortBy 'updatedAt:asc' \
    --tags '["CNvq9wqrF2BsliIQ", "jFxKFEFUGwSXkg9Q", "mdFZb28WaX4HvDab"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode '4zfZII6psxeau3no' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "U4EOPxrnSK8dKtxC", "description": "CQYNtZ7hB0v3ugRy", "isActive": true, "name": "EeOrgTS0aiDvayKO", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "vbpwCuZ9Bvna7dVf", "matcher": "EQUAL", "parameterName": "GzK26VNvgPRQDWYi", "parameterType": "USERACCOUNT", "statCycleId": "VDT0XHaZwuUTdYul", "targetValue": 0.443220015821292}, {"id": "Sq3A6vqRZfHscJdm", "matcher": "LESS_THAN_EQUAL", "parameterName": "0IcDP4VfkCqSh6lR", "parameterType": "USERACCOUNT", "statCycleId": "3iKJYKepqGvBBt2H", "targetValue": 0.15173615292017717}, {"id": "IiJq4CGVAIvazCgQ", "matcher": "GREATER_THAN_EQUAL", "parameterName": "uYER3mENwyDkLHNU", "parameterType": "ENTITLEMENT", "statCycleId": "VsRXFLKiAHKnq48f", "targetValue": 0.9629233786425543}]}, {"operator": "AND", "predicates": [{"id": "Fuc81LzPYdLJq7cI", "matcher": "EQUAL", "parameterName": "inofL4NNbSkVgDKy", "parameterType": "ENTITLEMENT", "statCycleId": "fEpal9wUopgBhCFI", "targetValue": 0.3651783036480425}, {"id": "CwaOoU9T7OI1NpUs", "matcher": "LESS_THAN_EQUAL", "parameterName": "8kHPPjlwwHOYV9o7", "parameterType": "ENTITLEMENT", "statCycleId": "Hf3CrSk4qsnpbdsb", "targetValue": 0.7360712730422684}, {"id": "ynYUEXiRiwqOR59k", "matcher": "LESS_THAN_EQUAL", "parameterName": "8KQzwSkGv1Id18i6", "parameterType": "STATISTIC", "statCycleId": "QoyEfiutRfRQ9qS0", "targetValue": 0.33199798528279567}]}, {"operator": "AND", "predicates": [{"id": "yhQGEcNmwfEIsiRP", "matcher": "LESS_THAN_EQUAL", "parameterName": "c0ixDUcO7y3FbfFZ", "parameterType": "USERACCOUNT", "statCycleId": "NlkrWPP0XxvNhDnl", "targetValue": 0.5510313564501667}, {"id": "3jhwSZVdOcz2dH0v", "matcher": "EQUAL", "parameterName": "dDwuXzxVm9tBZ0AJ", "parameterType": "STATISTIC", "statCycleId": "VE120bRblcYs6vxx", "targetValue": 0.6404607679272487}, {"id": "Pec1cLXdzZwPLaER", "matcher": "EQUAL", "parameterName": "eNcDsX9LZpImCNyR", "parameterType": "USERACCOUNT", "statCycleId": "OMMV0uFilT4vPKqL", "targetValue": 0.13401547726568164}]}], "rewards": [{"itemId": "WTUSSaOnoIDQz3tX", "itemName": "JOSoAArN5IWA4GVv", "qty": 0.335565472845734, "type": "ENTITLEMENT"}, {"itemId": "t8cyizRemRivR8Ee", "itemName": "l1NBHprdySsLKePZ", "qty": 0.03892318451697985, "type": "STATISTIC"}, {"itemId": "NdzL28ekI4jUHWaN", "itemName": "fnuGXjAM0hi86UVv", "qty": 0.984318081297165, "type": "STATISTIC"}], "schedule": {"endTime": "1991-10-05T00:00:00Z", "order": 76, "startTime": "1981-05-06T00:00:00Z"}, "tags": ["IxX6PAfBqqlViMTz", "4orNrCmQqGEVTJoq", "DsJk9vvdmGRuXyTd"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'Rl2gMpnOghc1CNQj' \
    --code 'OnWQ9rmrd1jRoIXZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'lVdNTvCGOE4f4ZAa' \
    --code 'Ksr6mOhqw9hoKC0E' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "JsMh0apGczNbJFQx", "isActive": false, "name": "BqHEsViOAOpwspNB", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "uOEyPkcCa6DSFCoO", "matcher": "EQUAL", "parameterName": "2hsZbnW0Iw7bUixj", "parameterType": "ENTITLEMENT", "statCycleId": "xUzqJRk6I29agYOJ", "targetValue": 0.08076851007179442}, {"id": "zbXFZPPjhw0dft0E", "matcher": "LESS_THAN", "parameterName": "kkeHt1G1VBhsqDPb", "parameterType": "ENTITLEMENT", "statCycleId": "mZArk4aQuwqdFsGa", "targetValue": 0.890024757808659}, {"id": "pJ4eKvVAQw9PrNls", "matcher": "GREATER_THAN_EQUAL", "parameterName": "0oz1phTXDZZ3wu1Z", "parameterType": "USERACCOUNT", "statCycleId": "XVZcctq7dylokfaT", "targetValue": 0.7981193701038959}]}, {"operator": "AND", "predicates": [{"id": "V2xEZkVvPdvSIXnC", "matcher": "LESS_THAN", "parameterName": "tMAZUYDvyJd0TBwf", "parameterType": "STATISTIC", "statCycleId": "TFu4LoWeO4njANep", "targetValue": 0.2508339523437618}, {"id": "YESZPcxToFYcSdbO", "matcher": "GREATER_THAN_EQUAL", "parameterName": "Ou4mNbNIa3NF8UYC", "parameterType": "USERACCOUNT", "statCycleId": "OeVKN12rwloGSLRQ", "targetValue": 0.16883031936789228}, {"id": "rj5pmmE4LggqNEIV", "matcher": "LESS_THAN_EQUAL", "parameterName": "eEqLYxM6aNNUjZ1j", "parameterType": "ENTITLEMENT", "statCycleId": "5YcQNvBTxxwXjNTf", "targetValue": 0.8020798037121935}]}, {"operator": "AND", "predicates": [{"id": "xWX2ouuoV16iEJqO", "matcher": "EQUAL", "parameterName": "58lwmPRcrxLWzZmd", "parameterType": "USERACCOUNT", "statCycleId": "NQWGFZy0f43UGOtw", "targetValue": 0.7763749971315635}, {"id": "pysy9HWnOMple4gY", "matcher": "GREATER_THAN_EQUAL", "parameterName": "yjLi4iDpxixdQfQi", "parameterType": "USERACCOUNT", "statCycleId": "KIUkDI7vhWOUfIij", "targetValue": 0.6149772802172438}, {"id": "sN1lIVZaFV3KO71j", "matcher": "LESS_THAN", "parameterName": "gPnlF9D8IUm7CCe9", "parameterType": "ACHIEVEMENT", "statCycleId": "l2aXHUoIhMpCoxzS", "targetValue": 0.03819572991142184}]}], "rewards": [{"itemId": "YxHir8LmSY52ftxb", "itemName": "yBBRkyULYGg0iZFw", "qty": 0.5446160525350892, "type": "STATISTIC"}, {"itemId": "Y981XP1aSbKV368o", "itemName": "TPgyFPyipZgoEqvQ", "qty": 0.7209289443607533, "type": "STATISTIC"}, {"itemId": "8CYQT4CsgRLBMGj7", "itemName": "hH7Z3RcgpPFoESGu", "qty": 0.7566720685250593, "type": "STATISTIC"}], "schedule": {"endTime": "1978-12-31T00:00:00Z", "order": 70, "startTime": "1990-11-06T00:00:00Z"}, "tags": ["22RaBpse2kIDcyHr", "v7X2Nq0KZPqx614B", "U815bfUR4F3ka2VJ"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'fXjuiRX92hTFRa7k' \
    --code 'Qyr795HBsRwkWUhg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'rGQcrPHJefwusYuk' \
    --code '3TVeJn73haELfbrH' \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '15' \
    --userId 'Svt4r4G3bvr4y6om' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'ZEUF5pj0PbV3zUrE' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'oTZp2gmbZbmy9gf2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'HhuGOl2V1jsndHRh' \
    --namespace $AB_NAMESPACE \
    --dateTime '1994-10-04T00:00:00Z' \
    --limit '100' \
    --offset '2' \
    --userId 'jIITRmEbklQgo8ww' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode '3amy4HnrjcMfVFLe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'hs0tFq1hrLW4MwTD' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1974-07-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateTiedChallengeSchedule' test.out

#- 20 AdminGetAssignmentPlugin
samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminGetAssignmentPlugin' test.out

#- 21 AdminUpdateAssignmentPlugin
samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "rlBIZWp3PLODMjgY", "extendType": "CUSTOM", "grpcServerAddress": "sGTTABSVCUEwMdvB"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "agyQhUtadsmaqOhz", "extendType": "APP", "grpcServerAddress": "iM93ml4GHFbMiB9K"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateAssignmentPlugin' test.out

#- 23 AdminDeleteAssignmentPlugin
samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminDeleteAssignmentPlugin' test.out

#- 24 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["O1YMj3gzykVOemHT", "mAiBBIxkHiYFm03I", "4FjjAzXYCwJdqykx"]' \
    --includeOneTimeEvent '6lx1FvwEC9o3dZ3b' \
    --body '{"userIds": ["mnRlwLKJeDVY9UnP", "T5UtpnLv0WvzxANF", "DENSchhEtnimzy6p"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["KRTarEJ7S7MiNlP9", "EY0GWIsgA8FlvAKy", "fKIONZXioFJaQHK8"], "userId": "XOOvmPtNo4SMhGAr"}, {"rewardIds": ["qNyaBPYye7oiHQ9Y", "TZwuSl4QwQ7oseLa", "juVh96vuyYl5yJpV"], "userId": "8MBlpE7WvWY54mb6"}, {"rewardIds": ["escU8i7kXOQyUWn8", "1XyQMs4lZoZIcGAr", "AeOdEfgStOLhWOoi"], "userId": "lkiGnpKHM9d3exCx"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'ulSfJLzKl6psLsG5' \
    --namespace $AB_NAMESPACE \
    --userId 'aeoDnXXAaQGB4oMF' \
    --body '{"goalCode": "GQIX7SBchYkLCr5M"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'AfGn6GvGAKuMvqlA' \
    --namespace $AB_NAMESPACE \
    --userId 'UF6mOewO4eabCmCL' \
    --dateTime '1984-06-17T00:00:00Z' \
    --goalCode 'EQRVtVad7AXpTeZh' \
    --limit '84' \
    --offset '13' \
    --tags '["V5rIKFq3rGSqnRy1", "MuNqwWPgMUVPsfzL", "dx8sOB2ZLkZk9x7p"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'NhCoYLgIMk87v4KB' \
    --challengeCode 'uuYC2Ctskw1lujLB' \
    --goalProgressionId 'v8LTy4p7upFKshga' \
    --limit '44' \
    --offset '74' \
    --sortBy 'createdAt:asc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'b1TdlwTiSIxbwj36' \
    --body '{"rewardIDs": ["rKpGY17bSOr14jEe", "kAM2VO2SbymvzaG3", "KK59PAnzdAkHkRz3"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'qCARcwdIlgQzwY20' \
    --limit '41' \
    --offset '9' \
    --sortBy 'updatedAt:desc' \
    --status 'RETIRED' \
    --tags '["JwAgQkwJEVt07txA", "Uc6gL8ppkM2Bqwlh", "1yRbV7EnSjnq7aD6"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'WE8dZW5y2kB0bsdY' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '60' \
    --sortBy 'updatedAt:desc' \
    --tags '["sV98sG6x8fczrRxN", "VK66LIqjsu4ul1E2", "WEJetZsG1Wm50N7B"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'kgJhDfiCDTMLUlxx' \
    --code 'loblT5lGi0oc3QgN' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'F979KU5QHNUxE51e' \
    --namespace $AB_NAMESPACE \
    --dateTime '1983-03-09T00:00:00Z' \
    --limit '62' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'SLhkvvgudAV8K9Re' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "Cljrr75olo4vS25q"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["Db9USz562f6EyhIu", "IxOp8uICUgUszauO", "6A1XjwFgrEYyUuhj"]' \
    --includeOneTimeEvent 'NIlWtctTvG7NAvBc' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'yoft2f0CqF1w9P8S' \
    --namespace $AB_NAMESPACE \
    --dateTime '1985-04-15T00:00:00Z' \
    --goalCode 'pUEqbCInPzsef4dl' \
    --limit '41' \
    --offset '1' \
    --tags '["uKOBDYK3B9q7UETq", "FQqGpwELokupajYc", "wgs5Nk4Qgny8SA4K"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'q28X9L99kswgJIoI' \
    --index '81' \
    --namespace $AB_NAMESPACE \
    --goalCode 'A8Ghbjg9fuz9NP65' \
    --limit '69' \
    --offset '0' \
    --tags '["n4mIEGenCyXuYY5y", "TCHFAF8woBfs8FRQ", "BRodpCkMgrO6VZfm"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'WdMkZ0XyBuAeCURw' \
    --goalProgressionId 'uVaINqGjLpB3S2VF' \
    --limit '19' \
    --offset '4' \
    --sortBy 'updatedAt' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["lkIsPddDNAFkiYB2", "tReGPRH29GPrD3Kv", "DZu8faVoeKCZ3wGL"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE