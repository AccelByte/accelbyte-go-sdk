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
    --limit '65' \
    --offset '57' \
    --sortBy '9E8h8soiN1bfs2cz' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 77, "assignmentRule": "FIXED", "code": "vBQuVb1A1DNwTn3T", "description": "Bpda6xPN76Ou3l0A", "endAfter": 76, "endDate": "1998-12-20T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "3aP0yuJgcSUgMX8u", "rotation": "NONE", "startDate": "1994-08-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'bQnuFvrnb41prcFS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'MBzM0Gf4RQ5YOTlm' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 14, "assignmentRule": "RANDOMIZED", "description": "17ZT3tHlXFaUDt8K", "endAfter": 61, "endDate": "1988-12-09T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "5qR7vfmslaJc0pGr", "rotation": "MONTHLY", "startDate": "1988-08-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode '7dbNxGGDrnsY1dvA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'eWi6MWSkh4GL0Shu' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '35' \
    --sortBy '5vM2McexkrSnq5t7' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'uz3JKVgJVrnj6CY4' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ypnTFNnHDqUv2WoZ", "description": "pbLhigGNkd978htN", "isActive": false, "name": "utuHisNXRcmjYjK8", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "nuo9mme15h7dCb2j", "parameterType": "STATISTIC", "targetValue": 0.288298455864592}, {"matcher": "EQUAL", "parameterName": "xnv6r3xZfztsdXtj", "parameterType": "ACHIEVEMENT", "targetValue": 0.5636996217331088}, {"matcher": "GREATER_THAN", "parameterName": "XrjK2dFaJNzy3zmR", "parameterType": "STATISTIC", "targetValue": 0.6525585636127248}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "OrsW0VfZC6y0rr8p", "parameterType": "USERACCOUNT", "targetValue": 0.5256814946846955}, {"matcher": "GREATER_THAN", "parameterName": "OsHlVUqm8wb2eDHO", "parameterType": "ACHIEVEMENT", "targetValue": 0.5234774864148544}, {"matcher": "EQUAL", "parameterName": "TVtqIZfEgCvV9UVi", "parameterType": "STATISTIC", "targetValue": 0.30283300485906595}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "amyNd93NOQ0sJMjh", "parameterType": "ACHIEVEMENT", "targetValue": 0.2544302267490198}, {"matcher": "LESS_THAN", "parameterName": "6y7Ep5wlLslqFduj", "parameterType": "ACHIEVEMENT", "targetValue": 0.9337383814020743}, {"matcher": "GREATER_THAN", "parameterName": "ZLTGAhScN4HlQZwQ", "parameterType": "STATISTIC", "targetValue": 0.8079064835952924}]}], "rewards": [{"itemId": "HbLqQ4VKfIgyb7Xe", "itemName": "AkoXcVS0IySeg06o", "qty": 0.9211672983825215, "type": "STATISTIC"}, {"itemId": "7Dt01M4JKUWrLIL7", "itemName": "LWsM4F93h8MkOvJ3", "qty": 0.19721260941190166, "type": "STATISTIC"}, {"itemId": "Sa6s6m70aijxigeE", "itemName": "YFegEy0aibuSKpY2", "qty": 0.1389426398436926, "type": "STATISTIC"}], "schedule": {"endTime": "1980-01-06T00:00:00Z", "order": 29, "startTime": "1977-09-05T00:00:00Z"}, "tags": ["3jEmPtrutsZ7TfsK", "uWaIv70ZUYzXXYFg", "nStCB1Ap7Ol2uRSv"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'Q1BW94ZlFt5RWTuU' \
    --code 'FAqqUCP4rOL656Hn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'bm95mtbkvmNDlPze' \
    --code 'raMP20FVYOShcNiy' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "sfluYhkwz5qhU3Oz", "isActive": false, "name": "SkTWxTImrwVrJMIp", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "WHRuCArBc8VzTb4s", "parameterType": "STATISTIC", "targetValue": 0.34020551664388055}, {"matcher": "GREATER_THAN", "parameterName": "VlbFlRtI37xXthT9", "parameterType": "ACHIEVEMENT", "targetValue": 0.21496074496224227}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "HgufaNtnGimSOHZc", "parameterType": "STATISTIC", "targetValue": 0.5840747826877565}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "f6Xe3apwLJz1S1mp", "parameterType": "ACHIEVEMENT", "targetValue": 0.7098164424426471}, {"matcher": "GREATER_THAN", "parameterName": "72uKoHRCPT6KUp07", "parameterType": "USERACCOUNT", "targetValue": 0.17519974750337652}, {"matcher": "LESS_THAN", "parameterName": "6thzmGh2BFTS7lkp", "parameterType": "STATISTIC", "targetValue": 0.026143368009708734}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "jzXiXtPhw7Z54J1l", "parameterType": "ACHIEVEMENT", "targetValue": 0.7616529776097944}, {"matcher": "GREATER_THAN", "parameterName": "jlcpfrEVxhFrsOXw", "parameterType": "STATISTIC", "targetValue": 0.7299192568492634}, {"matcher": "GREATER_THAN", "parameterName": "XWtLxomFVwchgW2s", "parameterType": "USERACCOUNT", "targetValue": 0.9752594130694154}]}], "rewards": [{"itemId": "1IeLTUqsFDsfzHj9", "itemName": "sfq6WQ5NgANtwdG5", "qty": 0.0538958192691098, "type": "STATISTIC"}, {"itemId": "MOm47GmrkZM1n1sz", "itemName": "fdGU48ex7Em51ZUi", "qty": 0.7627975616177528, "type": "ENTITLEMENT"}, {"itemId": "mnfviGf11oo1cp50", "itemName": "p8NcWvAwu7VkUNqJ", "qty": 0.4556925625745071, "type": "STATISTIC"}], "schedule": {"endTime": "1994-07-01T00:00:00Z", "order": 12, "startTime": "1999-03-29T00:00:00Z"}, "tags": ["nbPhaXloPwUXvJDu", "3S93HLMFaOWDJVCE", "HjqpH0N1soKtB2UP"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'dp1HoXRmlvDxEakj' \
    --code 'YRa7hgzzXkoUnuny' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'AQaeeo56u4RL6fAI' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'dtbBVSlmEQYlRask' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'dxXh8yFrtlWkFpaR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["7wEu5EJ1074PCYnB", "eN8piFij8TSR28Ss", "eaTYTcOsVYTW0I0f"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '1TMuHRHtso70X6yi' \
    --limit '96' \
    --offset '65' \
    --sortBy 'EQTDfD2odyoLx9Ke' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserRewards' test.out

#- 17 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '1' \
    --sortBy 'jFyTuYJ9p9UipugY' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 17 'GetChallenges' test.out

#- 18 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'g04nkpOGYoXADQdM' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '92' \
    --tags '["IxV11qmYV1CtNuVX", "olWtseIq6e4JsjrW", "IeDsXettThvwKK0X"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetScheduledGoals' test.out

#- 19 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'EvaluateMyProgress' test.out

#- 20 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'IyeoE20Zdu6qBYqR' \
    --namespace $AB_NAMESPACE \
    --goalCode 'KSkB5v1EhAh9XxgS' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserProgression' test.out

#- 21 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '81' \
    --sortBy 'hnoZ3aI6a0d6qReK' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetUserRewards' test.out

#- 22 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["ve05XgUp1c0MakIt", "6zHYxMj1SchBAqAK", "Vr3TPXnI3KSx4xWq"]}' \
    > test.out 2>&1
eval_tap $? 22 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE