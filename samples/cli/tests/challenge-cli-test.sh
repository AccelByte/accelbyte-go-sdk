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
    --limit '94' \
    --offset '47' \
    --sortBy 'xV1c0Jcbmz7JZ60z' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 63, "assignmentRule": "UNSCHEDULED", "code": "QObjLqewjZWrFUYX", "description": "CSlOLp8dXFBhPra4", "endAfter": 15, "endDate": "1981-09-27T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "2PkGJJi6SWr3qenW", "rotation": "MONTHLY", "startDate": "1971-01-16T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'sWfN2nSp6EDk6EuP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'ABOBxvrXnKbUhZV5' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 70, "assignmentRule": "UNSCHEDULED", "description": "nm9taUXo3gl12JOz", "endAfter": 84, "endDate": "1983-02-16T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "tRWVNl40XBc8CX0v", "rotation": "MONTHLY", "startDate": "1988-06-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'glpscdxuxb0NSQnT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'tyuBUGNWURqyxXQ7' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '58' \
    --sortBy 'lUhcflCwn4m2pT5n' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'Nu4QTWTU4N00np7Z' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "4vkVtZsl3V1kF9yR", "description": "UE0UxVfX1gDcTA1Q", "isActive": false, "name": "lNRSIjsrjkJuELVC", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "Bb0UWEaZvGgd0v7l", "parameterType": "STATISTIC", "targetValue": 0.4460697561224195}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "bcWQdar6PGGaKpg7", "parameterType": "USERACCOUNT", "targetValue": 0.40848373413081884}, {"matcher": "GREATER_THAN", "parameterName": "PqvwoGeMCTKGbMTO", "parameterType": "ACHIEVEMENT", "targetValue": 0.8998494043705048}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "Hk7H2Upi3YYhLUw1", "parameterType": "ACHIEVEMENT", "targetValue": 0.0999879600402176}, {"matcher": "LESS_THAN", "parameterName": "sXqJxcQ4Zm6ejzbY", "parameterType": "ACHIEVEMENT", "targetValue": 0.009054624714698645}, {"matcher": "GREATER_THAN", "parameterName": "Ua90I6PeQadZASl3", "parameterType": "ACHIEVEMENT", "targetValue": 0.6467985251847587}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "jBYjkVMbjI5WGmw6", "parameterType": "STATISTIC", "targetValue": 0.18399615768582278}, {"matcher": "LESS_THAN", "parameterName": "skuxoZAHnFcOwIJf", "parameterType": "USERACCOUNT", "targetValue": 0.4116535466809944}, {"matcher": "LESS_THAN", "parameterName": "if7WP7i5RzEZ6hDK", "parameterType": "STATISTIC", "targetValue": 0.9992009912818152}]}], "rewards": [{"itemId": "NdD7oCpJSprvCdHe", "itemName": "2hsMR9Nc8S1uM2hR", "qty": 0.3918130091561357, "type": "STATISTIC"}, {"itemId": "kHpeodCUZ1V1iktV", "itemName": "meDh9TtU2ufGhnA7", "qty": 0.27889778132447873, "type": "STATISTIC"}, {"itemId": "VhW3el8jf5TyFTkF", "itemName": "tXlAgt2HVkUV03W4", "qty": 0.7688658968918155, "type": "STATISTIC"}], "schedule": {"endTime": "1993-08-21T00:00:00Z", "order": 40, "startTime": "1992-01-13T00:00:00Z"}, "tags": ["UDMAEYQxSmuatf4b", "rSM5fIIPEk67Br5L", "24CHdgrI36hlfeLq"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'YZh65pDIKlmHrYPF' \
    --code 'U06mWk6q1I6FBs4i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'bMD29XT6GozDDzQn' \
    --code 'zdlx8z1Jdhs85qGh' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "T5pBpTUQ8xUtvHot", "isActive": false, "name": "fwr4m2EuKQmjWSrR", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "tILz1xZDFMm8HF1z", "parameterType": "ACHIEVEMENT", "targetValue": 0.6932279723229828}, {"matcher": "EQUAL", "parameterName": "qHdJwsZnuk686lvi", "parameterType": "USERACCOUNT", "targetValue": 0.8895216510355571}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "uHlTRDFywGc1PTHp", "parameterType": "STATISTIC", "targetValue": 0.8929451511355919}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "jBtFFHNC350Yz0BM", "parameterType": "STATISTIC", "targetValue": 0.3923388163300615}, {"matcher": "LESS_THAN", "parameterName": "wIqed0yRrRCJ90yD", "parameterType": "USERACCOUNT", "targetValue": 0.668141067853713}, {"matcher": "LESS_THAN", "parameterName": "pAELi8ykM98BYI5s", "parameterType": "ACHIEVEMENT", "targetValue": 0.464370427481978}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "4I5CPdZFcG1OLIsA", "parameterType": "ACHIEVEMENT", "targetValue": 0.019926243818801592}, {"matcher": "LESS_THAN", "parameterName": "YxAL1r4unsoFjE9b", "parameterType": "ACHIEVEMENT", "targetValue": 0.9684182785876391}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "jFKokl5kr1TpFoqL", "parameterType": "STATISTIC", "targetValue": 0.761847041486775}]}], "rewards": [{"itemId": "bsSaJ6OkeM9zXUr7", "itemName": "D2mTaIlIBIXZHML9", "qty": 0.7472595801040961, "type": "STATISTIC"}, {"itemId": "RnBNKJ5UPzI2LKLG", "itemName": "skFvSJNE3M2RuRdH", "qty": 0.41028346228537393, "type": "ENTITLEMENT"}, {"itemId": "ubqx4bBotHVHGmht", "itemName": "Rr32OC2IP9DFPSpv", "qty": 0.545350904050205, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1981-03-08T00:00:00Z", "order": 71, "startTime": "1991-10-30T00:00:00Z"}, "tags": ["PYOrGtZHeflYjN2Y", "NZXMVJrElfA76p1j", "iwpNrBKTx7Y526Ap"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'fdluNskwI6Ihmnr0' \
    --code 'wbrF4TsoVC4MCi3X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'NVbFhUajunMo6OP0' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'fivLzPI7yPxn6pAl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'gmBjiatmASiCb5TH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Ptn9cUoXx4tSsp3k", "VvMEBpKQqpeHeFPV", "PlVtHBQpNSmzxotv"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'IQvAUhDEvXXN1JJX' \
    --limit '40' \
    --offset '32' \
    --sortBy 'HNS0p82q9hEAT3zO' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserRewards' test.out

#- 17 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '22' \
    --sortBy 'fkjXmxSuIxXaH5GT' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 17 'GetChallenges' test.out

#- 18 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'DpSk8YCwdlku3KzC' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '86' \
    --tags '["furglv4vj9PS5oaU", "RXlgujXHeLlVtE1e", "OzWue3bK6iALhoKJ"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetScheduledGoals' test.out

#- 19 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'EvaluateMyProgress' test.out

#- 20 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'u9F41m0i2M4bVl1P' \
    --namespace $AB_NAMESPACE \
    --goalCode 'sWrcZVvjTxvbNl24' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserProgression' test.out

#- 21 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '3' \
    --sortBy 'YbbdiJ2QEUA7VHSA' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetUserRewards' test.out

#- 22 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["Ih0sxwGgJQnLRKaS", "Hn25TfSN7elmIePf", "UekffSHMPQjZozzZ"]}' \
    > test.out 2>&1
eval_tap $? 22 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE