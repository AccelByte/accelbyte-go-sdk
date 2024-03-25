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
echo "1..22"

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
    --limit '60' \
    --offset '4' \
    --sortBy 'Rrsp92Jj0xgDJnmA' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 31, "assignmentRule": "UNSCHEDULED", "code": "WCSrjAExZ2a6OLbr", "description": "MgcA8F1RnuYKUHnV", "endAfter": 1, "endDate": "1995-11-17T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "Mwf34M5AahxCmZQ7", "rotation": "WEEKLY", "startDate": "1998-03-31T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'NUqHc9aFOw05ejyP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'cFmCiLUOf0JWRJvF' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 33, "assignmentRule": "RANDOMIZED", "description": "xJttHrrevDmNdqi3", "endAfter": 61, "endDate": "1986-01-03T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "DTO1MB1tLcUY9dYD", "rotation": "NONE", "startDate": "1990-05-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode '4fGUZNZml8u3uSbj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'AiyUWvXDgS4fL79p' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '41' \
    --sortBy 'lwNWahvuTg6cSjCt' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'cArMF60zpcqsw8So' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "p3tAgGQ4tZWppSls", "description": "qPselEGouQKyQu7l", "isActive": false, "name": "e6Jy7b8qD4GBK2MZ", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "ccT2e6uekHCXJrFB", "parameterType": "ACHIEVEMENT", "targetValue": 0.6573292562971251}, {"matcher": "LESS_THAN", "parameterName": "3LMtAyDSgpJreAfF", "parameterType": "STATISTIC", "targetValue": 0.6112581073049387}, {"matcher": "EQUAL", "parameterName": "OhlT2ieqQmr4zw2Q", "parameterType": "STATISTIC", "targetValue": 0.25262636735846145}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "1tiRFqiFrB3HShkw", "parameterType": "USERACCOUNT", "targetValue": 0.44983201887762514}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "GVsUSPwcjQgOQFxg", "parameterType": "STATISTIC", "targetValue": 0.06775225058048295}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "PUVzsObHGbLiFIJj", "parameterType": "STATISTIC", "targetValue": 0.6634849977347947}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "UZc4aT7As3UVjnsP", "parameterType": "STATISTIC", "targetValue": 0.7928514773059614}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "bDRmuuAkRhQBZak4", "parameterType": "USERACCOUNT", "targetValue": 0.8201107714870184}, {"matcher": "EQUAL", "parameterName": "0GSH10HBUOylU2uQ", "parameterType": "STATISTIC", "targetValue": 0.7750587808487095}]}], "rewards": [{"itemId": "BPN4xcra48tAtLHo", "itemName": "dOOn30IhGQZQQnqq", "qty": 0.18364525054044611, "type": "STATISTIC"}, {"itemId": "3wVaYpTVuxwp88Vp", "itemName": "8PntEYJmNK5XvObL", "qty": 0.8741114793027851, "type": "STATISTIC"}, {"itemId": "SfZVZTMqtxFZLLni", "itemName": "Yve6LtDLzEhX0Hlu", "qty": 0.054891714607151476, "type": "STATISTIC"}], "schedule": {"endTime": "1993-07-21T00:00:00Z", "order": 84, "startTime": "1974-03-03T00:00:00Z"}, "tags": ["0nBbcmW1NvIRVESB", "JEZpBqVpxeBN3AKb", "OgmeIMQ5bO2bf3Je"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode '7gVccMl2dBjyHylX' \
    --code 'FOTNBqlz1HqwYa5r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode '4wG3FLtrJlv7v5h3' \
    --code 'uMy5WH0sI8w7wAnD' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "9OKvvC5xcJ8asMPL", "isActive": true, "name": "LLRFF8VoI00WT7U3", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "GttARkEax4TXzDld", "parameterType": "USERACCOUNT", "targetValue": 0.6570159200303672}, {"matcher": "LESS_THAN", "parameterName": "HL1Fl1wJmdWr6DNo", "parameterType": "ACHIEVEMENT", "targetValue": 0.06923668211509393}, {"matcher": "LESS_THAN", "parameterName": "Vdt1Zqkj9t6vqvJJ", "parameterType": "STATISTIC", "targetValue": 0.3140927754749947}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "REVhpoyExa2WWxT2", "parameterType": "STATISTIC", "targetValue": 0.4820602804718299}, {"matcher": "LESS_THAN", "parameterName": "0GZB9IU7dmU08kQk", "parameterType": "STATISTIC", "targetValue": 0.0891853775168725}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "9KgWa547rsSenrr6", "parameterType": "USERACCOUNT", "targetValue": 0.36022525465027566}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "eIHW0ddZqzQBCtiy", "parameterType": "ACHIEVEMENT", "targetValue": 0.7522811758382291}, {"matcher": "LESS_THAN", "parameterName": "QFqWaBPbdjhtHKWR", "parameterType": "STATISTIC", "targetValue": 0.8321428582536967}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "OcDB23BFHrcazmwG", "parameterType": "USERACCOUNT", "targetValue": 0.8477313134079965}]}], "rewards": [{"itemId": "aqLhWKSRoH706OrR", "itemName": "5HWiEVSSXGjl1EwU", "qty": 0.7303728594147324, "type": "STATISTIC"}, {"itemId": "yuEfZ6QskYjKWCQw", "itemName": "jG1o8g8GtDskdOon", "qty": 0.8357892767268744, "type": "STATISTIC"}, {"itemId": "59kDhxYNJ9RD4zWW", "itemName": "R0SJTwArLkvxdM9S", "qty": 0.6920110111819758, "type": "STATISTIC"}], "schedule": {"endTime": "1998-10-19T00:00:00Z", "order": 77, "startTime": "1998-08-22T00:00:00Z"}, "tags": ["EuFCFurPTZo0Ams7", "QkwOYiaeaotd4Nge", "HOaUURR7Be1nv5LA"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'ckOvVGD3WdtIlbhb' \
    --code 'R8lY56aqC7RiIW1z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'e9g3ZGm4e7BG16t4' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'oWY323Jyz2fUWsIK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode '3JNWxEKDFeBKIMaN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0mmn8KM1f3iSajel", "t10oFsEKKPgT98ep", "bt46okzltfJl6xDS"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'w5LXGM5H9Lz20tAc' \
    --limit '70' \
    --offset '82' \
    --sortBy 'nbHY4aIbcDftKu87' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserRewards' test.out

#- 17 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '83' \
    --sortBy 'S0Srnb5XNz6drEr4' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 17 'GetChallenges' test.out

#- 18 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'vgabkAcalRxNmj6e' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '18' \
    --tags '["Kc7JBooubVP5hk00", "QjLIrodbL5N47ZLc", "JKyelY9kAtxzYcun"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetScheduledGoals' test.out

#- 19 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'EvaluateMyProgress' test.out

#- 20 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'IjuVmvYWJBGDKIs7' \
    --namespace $AB_NAMESPACE \
    --goalCode 'DUzdvSm8robf3jIM' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserProgression' test.out

#- 21 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '8' \
    --sortBy '4x536x7nd74fgs0r' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetUserRewards' test.out

#- 22 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["A3bTn8zpF4jfco1p", "k2DTLO2GoFwadNa3", "L9gfdxPbtCpLD5SV"]}' \
    > test.out 2>&1
eval_tap $? 22 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE