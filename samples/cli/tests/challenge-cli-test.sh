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
    --keyword 'UW3u4PWFdWNMAB9V' \
    --limit '41' \
    --offset '72' \
    --sortBy 'updatedAt:asc' \
    --status 'TIED' \
    --tags '["MQdpDDrWqQxg63OR", "ErxakBbeoRy4gfvd", "2zUZ7N8UbA6nwauN"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 72, "assignmentRule": "UNSCHEDULED", "code": "rf4uULP33iuLnFCV", "description": "KEGcS5BaAFljAtOH", "endAfter": 6, "endDate": "1991-12-10T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "vLTVfeKXy4CWB0UC", "randomizedPerRotation": false, "repeatAfter": 43, "resetConfig": {"resetDate": 54, "resetDay": 91, "resetTime": "0kKpKngEjVvc8EHN"}, "rotation": "MONTHLY", "startDate": "1994-12-30T00:00:00Z", "tags": ["RmK4qhsEZwHVAUD4", "tFBBpp8zjwx3rNIx", "ENTkkgL5HQO69Ow5"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'CulEbEPfLEv6fHTr' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'ZihaU3lotpOHS2kq' \
    --limit '28' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'fng3IPJCLKYMNfjB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode '7fGexWoS40jYsPki' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 84, "assignmentRule": "CUSTOM", "description": "pYFNH3uraCEKIIxT", "endAfter": 74, "endDate": "1972-11-19T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "1bVzuYcupLFKAj7o", "randomizedPerRotation": true, "repeatAfter": 3, "resetConfig": {"resetDate": 77, "resetDay": 1, "resetTime": "kQouB72WcpbyKqY6"}, "rotation": "NONE", "startDate": "1976-05-08T00:00:00Z", "tags": ["Mbl3fEKPWUh47xwC", "skVsY95UXna2w1NH", "f74DCJLwCXP4lKDA"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'oAyYMLdrzbFLKBvl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'gp4oXvwgRk3V2r97' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '80' \
    --sortBy 'createdAt:asc' \
    --tags '["zNsP2fddm3V88HIX", "RZEgWUpKvLr8fiU7", "7rfjvjI87GmCwbP3"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode '54OCMPM9wj8N2oaI' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "83mXiINP5TdCvovn", "description": "yUx6dE1IhuBg99VA", "isActive": true, "name": "O1eJNyXmf5LxkYm3", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "L4T9kf0LgrV7NrLG", "parameterType": "ACHIEVEMENT", "statCycleId": "jE65Zr92RGO0uOlz", "targetValue": 0.4357927756195705}, {"matcher": "GREATER_THAN", "parameterName": "5nlSIglSwhctgsqP", "parameterType": "ENTITLEMENT", "statCycleId": "dPt30XrdMdkTMM2X", "targetValue": 0.4873586030611795}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "NlM9FUHFt8tDUIkV", "parameterType": "ACHIEVEMENT", "statCycleId": "q7D4yHj9FO4TM90o", "targetValue": 0.7495056258844678}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "thgT1bmnyuz1LrRl", "parameterType": "USERACCOUNT", "statCycleId": "YCLxFwGIAAkOE0YA", "targetValue": 0.18302023448609261}, {"matcher": "EQUAL", "parameterName": "7viaujbTlMyX7lYa", "parameterType": "STATISTIC_CYCLE", "statCycleId": "75DHkD5VTmD2lBat", "targetValue": 0.4613511782784937}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "YnzR2k5qY3N4wz2Z", "parameterType": "STATISTIC_CYCLE", "statCycleId": "RTarnRGLRikfbrgB", "targetValue": 0.039460799884832753}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "uo7RCxygM0RQSmYk", "parameterType": "USERACCOUNT", "statCycleId": "VltAGIvClnwb7A3X", "targetValue": 0.4815398451512286}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "lmNsrok4AGOdpmAK", "parameterType": "STATISTIC", "statCycleId": "IFr1nrtuQSpQx10P", "targetValue": 0.4990265120305387}, {"matcher": "EQUAL", "parameterName": "6TU1Zy7Md4p260eb", "parameterType": "USERACCOUNT", "statCycleId": "rK2XgBHKENY4YMGw", "targetValue": 0.5264280893026367}]}], "rewards": [{"itemId": "HPjpWMsfJyivdwTV", "itemName": "YpFs4EG116FhjJN1", "qty": 0.6617382204000456, "type": "STATISTIC"}, {"itemId": "YtnurOB3nWdNzWpj", "itemName": "ouDByVczkChXC17A", "qty": 0.11908229355783373, "type": "STATISTIC"}, {"itemId": "JuCyeSoqaT84eqch", "itemName": "7OZsoWAh8wIcY8SX", "qty": 0.8095783708060618, "type": "STATISTIC"}], "schedule": {"endTime": "1971-02-11T00:00:00Z", "order": 33, "startTime": "1975-05-16T00:00:00Z"}, "tags": ["IGOO9IWxHn8wgBQ0", "pdeUZT0G47xSkTfl", "Bd2xkSVSpmjLhQCm"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'n9UULqGxGJr8tnpy' \
    --code 'xEPbvEwbxwPFJZL4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'x85SdWPVbEl62z0E' \
    --code 'bP2tqwexJPgttWlb' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "aE1tB8w8G8Hz3KlU", "isActive": false, "name": "ASx6G4DpozkEs0AK", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "74zbr3jtqAAd3Vho", "parameterType": "STATISTIC_CYCLE", "statCycleId": "PDXHRjfILSpD3X9I", "targetValue": 0.6376521372593894}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "PmJ0P12u15uIogYX", "parameterType": "STATISTIC", "statCycleId": "chkM435PBjXHjdun", "targetValue": 0.15279933750679786}, {"matcher": "LESS_THAN", "parameterName": "NM68QF6wNkMNCb67", "parameterType": "STATISTIC", "statCycleId": "IFSgjwBq9coXDxbS", "targetValue": 0.34029200414569927}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "sbjd8UatXDGqkzWQ", "parameterType": "ENTITLEMENT", "statCycleId": "uGKzF0XEt1HVvifD", "targetValue": 0.5232395699677409}, {"matcher": "GREATER_THAN", "parameterName": "vRCft29F4m2cQxBx", "parameterType": "USERACCOUNT", "statCycleId": "yT2exwTv8IkomAIh", "targetValue": 0.6648939842390695}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "thq0u3CpNUIAUAwB", "parameterType": "STATISTIC", "statCycleId": "A2BKqi89zUIMhosu", "targetValue": 0.9771758072546085}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "n0R9i0QJtpcrLAST", "parameterType": "USERACCOUNT", "statCycleId": "4zpf2o1ehnlOQk88", "targetValue": 0.22334379805273052}, {"matcher": "GREATER_THAN", "parameterName": "y7jte0YHlrb3LqNq", "parameterType": "STATISTIC", "statCycleId": "N8ST8pCinMsPLmEC", "targetValue": 0.36312649389714957}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "74hhHDm4mDwPdfTy", "parameterType": "STATISTIC_CYCLE", "statCycleId": "SNPPUUsoVyJIBeiI", "targetValue": 0.9146047120207839}]}], "rewards": [{"itemId": "9vjnpHyYFHGhZhf6", "itemName": "l0xmsSZ2VPE2Jlg2", "qty": 0.6754833488484763, "type": "ENTITLEMENT"}, {"itemId": "1hTBoE3ens9ZtX6u", "itemName": "ZHJH7gzrTYucfEIM", "qty": 0.6133844311831576, "type": "ENTITLEMENT"}, {"itemId": "LPLlQFYbIzIsot5b", "itemName": "nQr1J9BM7aeNqW8k", "qty": 0.9583219118594403, "type": "STATISTIC"}], "schedule": {"endTime": "1979-08-07T00:00:00Z", "order": 61, "startTime": "1974-12-23T00:00:00Z"}, "tags": ["HSAzI1iWB1XJcGgl", "kAagdRs7vJygkFnm", "w1bWsdskToQSDC1B"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'd9BKsARYlwEpR43X' \
    --code 'kgSdWlTWwBh4ZSu2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'kZQIys860fa74dLl' \
    --code 'jaazcuk9Jw9I0ktp' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '21' \
    --userId 'vGe1FcrIJC7sJbxl' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'jaC6FStiu1OgLvl7' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'QDqJ24tVTPhxYfnb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'vvemJJ8QjZnb2TIn' \
    --namespace $AB_NAMESPACE \
    --dateTime '1982-11-25T00:00:00Z' \
    --limit '3' \
    --offset '9' \
    --userId '7FbWvkgsRRis6Fbg' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'Gly6sLZ4f8IkwbPT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode '1mkBGOMj4SJ2R7VM' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1984-07-20T00:00:00Z"}' \
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
    --body '{"appName": "KKWCgTqrUd6gqg0k", "extendType": "CUSTOM", "grpcServerAddress": "Wxtqt9evO3erP62Z"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "Sc96BMFwEfOKcOOT", "extendType": "APP", "grpcServerAddress": "i7u1ouPGB6MCNvqF"}' \
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
    --challengeCode '["UUqOBs9OqEP408IX", "eQbSPU5LTwXM496C", "7OPUevomttsoO7zH"]' \
    --body '{"userIds": ["mHQEykwnib6AIOrm", "nEBie8laUbiiswj2", "pY04HjeVZxzuNMBr"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["D4qfhCmpo6YFUF2I", "WUsbk0eHwyptnSR7", "mpwCwHP7Pj5T7nzB"], "userId": "LV47G6KF5VAjl2cT"}, {"rewardIds": ["m0f5P0Ci1CdNlZy0", "xnmVOzB3MW97qyMS", "E3ouwm5enzoxN0ir"], "userId": "jLtFffPva2OD0e9s"}, {"rewardIds": ["E0KBfU0PF6sF11J4", "yueiBJuw51Gbd9WF", "9jMaKpaRoOTV7YII"], "userId": "kiDJiys5RPZSvbou"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'zaozSxEGacBjEhnt' \
    --namespace $AB_NAMESPACE \
    --userId 'hRwDb3NMLMeGAzqR' \
    --body '{"goalCode": "PuKGbOO3TypCgKTs"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'gesOsHxi0iHkxhho' \
    --namespace $AB_NAMESPACE \
    --userId 'Mw27kF9pLp6eg17q' \
    --dateTime '1979-06-16T00:00:00Z' \
    --goalCode 'XbKcC3xhjqPq7eNc' \
    --limit '42' \
    --offset '53' \
    --tags '["1m1PDPwuC83zAwfo", "lFnVRiqmi18mLewx", "kQmeDOpxXvBdcUlu"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'uL3a9t60TwVFpgdk' \
    --challengeCode 'tW5M56XEOduQqDus' \
    --goalProgressionId 'SIOtuNBxEwowFWhA' \
    --limit '59' \
    --offset '81' \
    --sortBy 'createdAt' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'GkkljZ8AUl9OneLB' \
    --body '{"rewardIDs": ["2onVliHue0ELrtSz", "GwFGmUlx5tKJ9gFu", "NmMFYE7oPktOFXiv"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'e5a5REyZq7LOWR60' \
    --limit '29' \
    --offset '49' \
    --sortBy 'createdAt' \
    --status 'TIED' \
    --tags '["A47cSj7nYgVWDz1I", "HRa24L4BCihIt0f8", "GhEocQLpvEPtltQe"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'Dtp7Jnaa4xrCbad9' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '87' \
    --sortBy 'createdAt:desc' \
    --tags '["3S1OpNBUutLdLnhX", "1ynofmwOlY1bjzka", "2BgYGEvE4GvVNh53"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'Fn6GaAqIK3hTsXVU' \
    --code 'mZ3kMZ9HiG3GN1XW' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'pFKUo16VXUHaWb8u' \
    --namespace $AB_NAMESPACE \
    --dateTime '1990-02-22T00:00:00Z' \
    --limit '46' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'whfVndPRlO4XD37Q' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "MwN91SepQosN0LFf"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["D5b0QGkXCmG23DRq", "EUzXntL79Oc4sXyn", "Mfll8w6sCN8JkEUH"]' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'hd0eHB1BM7S36dYT' \
    --namespace $AB_NAMESPACE \
    --dateTime '1977-07-26T00:00:00Z' \
    --goalCode '7gvtQ4PdQUDatxIy' \
    --limit '37' \
    --offset '80' \
    --tags '["6e9ciFfuV4RCmHpf", "yWuXnXvfwEh7ZGUQ", "Lzv0RigU0zg47rY9"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode '8bQiBjjp4WJlew21' \
    --index '21' \
    --namespace $AB_NAMESPACE \
    --goalCode 'BM0DiFTL0lLzDWyE' \
    --limit '47' \
    --offset '86' \
    --tags '["zCHf2W9t8Vv5pqyU", "DyKpXDKi8oEC1bl1", "WArVdlQ3k1UTgw6g"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'yLXQRElgcjT5DJZf' \
    --goalProgressionId 'HY6nEQ8BjpnYyGbJ' \
    --limit '6' \
    --offset '41' \
    --sortBy 'createdAt' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["HWRRiXL9L3vPk2BE", "crvRbaC49EO7gHsn", "u2y0kTPh3KwaZhii"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE