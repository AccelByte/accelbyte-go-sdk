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
echo "1..38"

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
    --limit '79' \
    --offset '67' \
    --sortBy 'createdAt' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 60, "assignmentRule": "FIXED", "code": "uWCV3l89BovnAGCM", "description": "6YElIc0BymKep4PR", "endAfter": 5, "endDate": "1985-08-24T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "VRcxgNfjLZETAU4Y", "randomizedPerRotation": true, "repeatAfter": 43, "resetConfig": {"resetDate": 37, "resetDay": 44, "resetTime": "4oRgxy9FabHePKcQ"}, "rotation": "DAILY", "startDate": "1988-11-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'QropzNwHs87RatYP' \
    --limit '50' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetActiveChallenges' test.out

#- 5 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'uGxLQntCiJTiMLUW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetChallenge' test.out

#- 6 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'ZRfiPMsJxbbGqjjj' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 59, "assignmentRule": "UNSCHEDULED", "description": "RQ01vsM8K6axLku1", "endAfter": 89, "endDate": "1990-12-07T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "ojhynldjDbATzkFc", "randomizedPerRotation": false, "repeatAfter": 10, "resetConfig": {"resetDate": 69, "resetDay": 37, "resetTime": "x1jhdeN9wUUflF99"}, "rotation": "DAILY", "startDate": "1979-12-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateChallenge' test.out

#- 7 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode '6jqe389ZTAp0GeQo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteChallenge' test.out

#- 8 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'RDMo32g7rlX2veP6' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '44' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetGoals' test.out

#- 9 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'H1QPSuvCxssUarVm' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "T8IDmL0xrwtajsLN", "description": "Z0kr8fvy4JTMJjWz", "isActive": false, "name": "22CQQ2keD32p2Nso", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "xwRds6YwiOJuQRUF", "parameterType": "ENTITLEMENT", "statCycleId": "RN1VLmFueVkJbcPi", "targetValue": 0.2722178699700327}, {"matcher": "LESS_THAN", "parameterName": "xiJsDRL6AlSSYVhd", "parameterType": "STATISTIC", "statCycleId": "8bPdlJMRiZEX2aAq", "targetValue": 0.64937780658811}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "CmXNRrUbwBbSHkdY", "parameterType": "USERACCOUNT", "statCycleId": "nV7bdcYTNiNSvysY", "targetValue": 0.5209796761075998}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "2kH7eyxaXC3wRfVC", "parameterType": "STATISTIC_CYCLE", "statCycleId": "AzlgJ7L3hSruQNXw", "targetValue": 0.776789395843355}, {"matcher": "LESS_THAN", "parameterName": "sClKR5AyRiC7wjhP", "parameterType": "ACHIEVEMENT", "statCycleId": "9azDYLXnq8D6lLGE", "targetValue": 0.7508945881523446}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "q8VPiC3tnu0Kepxs", "parameterType": "ACHIEVEMENT", "statCycleId": "5yChpOxi0qoklsKY", "targetValue": 0.9224255489899886}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "D28clDTKRUgAaMp7", "parameterType": "STATISTIC_CYCLE", "statCycleId": "5DeCUbMTvSuheafu", "targetValue": 0.6403259357888661}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "AxJrRqoygWCFNWRn", "parameterType": "ENTITLEMENT", "statCycleId": "ZqGxaoPxZ27pbsoL", "targetValue": 0.08319350455948249}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "oCrJ28DnZgNFEZty", "parameterType": "ACHIEVEMENT", "statCycleId": "AkpSaBsh10T0dd9k", "targetValue": 0.2094745334220136}]}], "rewards": [{"itemId": "O59qvwpDoc7AwjLZ", "itemName": "KkmHVTCJI4A1qAym", "qty": 0.22851905731196553, "type": "ENTITLEMENT"}, {"itemId": "0R4dm3lnvHwvPSJd", "itemName": "5WqSchKJ8P7T0hvm", "qty": 0.39241585168486415, "type": "STATISTIC"}, {"itemId": "08ztlqV5GHWKSwqs", "itemName": "oqzL5C4C4KGHndut", "qty": 0.05002231426882486, "type": "STATISTIC"}], "schedule": {"endTime": "1994-08-12T00:00:00Z", "order": 60, "startTime": "1973-05-22T00:00:00Z"}, "tags": ["uVLkAO870AcmlDAr", "cxu3bpyHLL809fhB", "JEpbZhsWKXqYKZr0"]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateGoal' test.out

#- 10 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'a3z8ulmWX4CWbCVh' \
    --code 'gxnCM4hNHkqe7mqb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGoal' test.out

#- 11 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'ZNE6Q1iVZmN5gqYy' \
    --code '05ibqPPKHjddok8V' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DMM0DUXokf0dV34e", "isActive": true, "name": "yHjNhZL988IwlKrI", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "5Sgvm6qZ3ph4a9ae", "parameterType": "STATISTIC_CYCLE", "statCycleId": "RW8asKtHJrIftI1H", "targetValue": 0.36217980192122945}, {"matcher": "LESS_THAN", "parameterName": "h6lgCkCsTFGvGPit", "parameterType": "STATISTIC_CYCLE", "statCycleId": "ATuB44T0nG0S2msj", "targetValue": 0.9330780213478552}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "KvZ3f8POVoa82wwA", "parameterType": "STATISTIC", "statCycleId": "v1k30lpAsHnTb7dK", "targetValue": 0.4994746269562931}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "OeeAXUOZbGjHqYOG", "parameterType": "ENTITLEMENT", "statCycleId": "JSIzV7dh2b2GKACb", "targetValue": 0.7512248767173241}, {"matcher": "LESS_THAN", "parameterName": "2mLNseo3toFjaCCy", "parameterType": "ENTITLEMENT", "statCycleId": "J3Pqc2XyrvVWUDCU", "targetValue": 0.7882448659359923}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "QJ6sBMipmCPM2ykf", "parameterType": "ACHIEVEMENT", "statCycleId": "4KK6rrcTf8oS9nYW", "targetValue": 0.05670903406067451}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "IToRsaaolrqYspX9", "parameterType": "ACHIEVEMENT", "statCycleId": "pyOMWk9qGHIRJA41", "targetValue": 0.5024794573955617}, {"matcher": "EQUAL", "parameterName": "o2cvkmOTQUjSNT6c", "parameterType": "STATISTIC_CYCLE", "statCycleId": "gS1Ua4Wv5IerKFCY", "targetValue": 0.7801286937775207}, {"matcher": "EQUAL", "parameterName": "yFkVXHsES5i6vkPb", "parameterType": "STATISTIC", "statCycleId": "wW9iMwMsWgxlHFUW", "targetValue": 0.7954593293464923}]}], "rewards": [{"itemId": "pl3KHm5taseoIDLM", "itemName": "nFoi55IYAVV8XDjV", "qty": 0.10904405068456768, "type": "STATISTIC"}, {"itemId": "estunoDGII1Q1fcB", "itemName": "DAGsY4ZxZ7eJGH7u", "qty": 0.3562528756795511, "type": "ENTITLEMENT"}, {"itemId": "u3c8BaPjKzbjiRjS", "itemName": "9rsyqaF5s07JxKfp", "qty": 0.0371239077067842, "type": "STATISTIC"}], "schedule": {"endTime": "1996-03-17T00:00:00Z", "order": 38, "startTime": "1995-07-31T00:00:00Z"}, "tags": ["CRSMiMuM6XOMUMxB", "WbJTZ4yXfjpCABHf", "CDksySfacOcePwF7"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminUpdateGoals' test.out

#- 12 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'hb8llWuVoKUtIiwD' \
    --code 'Iunq368FmUDSrTCq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGoal' test.out

#- 13 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode '22lGT2SjnnF8fJ8X' \
    --code 'AKzzeYVR8z7nDGJJ' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '44' \
    --userId 'WFir2i9lAOccUbNP' \
    > test.out 2>&1
eval_tap $? 13 'AdminListSchedulesByGoal' test.out

#- 14 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode '5bpfKgUiDP8ZwUT3' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetPeriods' test.out

#- 15 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'iwjO6QPkNvfD6QDf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminRandomizeChallenge' test.out

#- 16 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode '93bgy0rPqXPLqtJ6' \
    --namespace $AB_NAMESPACE \
    --dateTime '1996-01-18T00:00:00Z' \
    --limit '39' \
    --offset '72' \
    --userId '4i2kRjRcHvroPcVs' \
    > test.out 2>&1
eval_tap $? 16 'AdminListSchedules' test.out

#- 17 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'vUS8zs1Bd6eGwa1U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteTiedChallenge' test.out

#- 18 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'sqCNbEGQhzOa6bna' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1992-01-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateTiedChallengeSchedule' test.out

#- 19 AdminGetAssignmentPlugin
samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminGetAssignmentPlugin' test.out

#- 20 AdminUpdateAssignmentPlugin
samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "nWOuYYNrwFJLuqa3", "extendType": "CUSTOM", "grpcServerAddress": "2aAWbL89EcMzKt9r"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateAssignmentPlugin' test.out

#- 21 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "BlAwdkcvIICTBxfU", "extendType": "APP", "grpcServerAddress": "dFCaeUEJ79dlL1r5"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateAssignmentPlugin' test.out

#- 22 AdminDeleteAssignmentPlugin
samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteAssignmentPlugin' test.out

#- 23 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["YArNBWqA92GwRFUF", "zx1GHdvRJsp2hVx1", "nahd2SMgogCEoaht"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminEvaluateProgress' test.out

#- 24 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["hfqlVGrkXVuUm9vw", "Zi7UYnlvjcOug0oo", "YUar3xvurfvMrlbC"], "userId": "fKBTDKs4mvrZI0tA"}, {"rewardIds": ["IYFJGipJQGG2pocV", "1UWU1Mk9awjrYPkV", "ZaVb7XMqQZOquzFo"], "userId": "VRoXqKRA52AWa30o"}, {"rewardIds": ["kLA3VmQWI1MbUwUg", "0KhrswFzyWtsHR4s", "8pCSPqjkkksoIcid"], "userId": "E9zrzbQbGSudP275"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminClaimUsersRewards' test.out

#- 25 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode '1Os9oclRYZhTJ6vs' \
    --namespace $AB_NAMESPACE \
    --userId 'Rv58dmVyi19ZGkL3' \
    --body '{"goalCode": "mva0O8hiB3ys7ohr"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUserRewardsByGoalCode' test.out

#- 26 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode '5MYDeiWLwFM3dXLJ' \
    --namespace $AB_NAMESPACE \
    --userId 'mEMZhb47qF4xenkT' \
    --dateTime '1980-03-10T00:00:00Z' \
    --goalCode 'PhXuEq33UYFCdezI' \
    --limit '61' \
    --offset '50' \
    --tags '["k0iD7A1KooJrVEoB", "26C2xVw52E5j070B", "WTYHXKIRbj92IqhY"]' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetUserProgression' test.out

#- 27 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'sBdbuNsdUG1VjLE3' \
    --challengeCode 'cDbzTdKxHWA2jxLB' \
    --goalProgressionId 'l6xEX14MNjOoHTNW' \
    --limit '87' \
    --offset '66' \
    --sortBy 'createdAt' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserRewards' test.out

#- 28 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'oW61JQ0PAd9qxHRy' \
    --body '{"rewardIDs": ["JLY3B6YQd6PeSWfG", "P7qPtNmwJVnzYyMZ", "SX2KkEiVKf96oE27"]}' \
    > test.out 2>&1
eval_tap $? 28 'AdminClaimUserRewards' test.out

#- 29 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '67' \
    --sortBy 'updatedAt' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 29 'GetChallenges' test.out

#- 30 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'giLGxiMaW6gc4jB3' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '19' \
    --tags '["bWnTKKT2vUi3Oc71", "Z7NatsZ9jbjXcIRv", "ePXuXbaLtjR41tLL"]' \
    > test.out 2>&1
eval_tap $? 30 'PublicGetScheduledGoals' test.out

#- 31 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'RwURWPIOX1r0ONV4' \
    --code 'Lo63isOTbHxTp3J4' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 31 'PublicListSchedulesByGoal' test.out

#- 32 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode '9AolNpVZaOUCkuNF' \
    --namespace $AB_NAMESPACE \
    --dateTime '1996-06-09T00:00:00Z' \
    --limit '51' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedules' test.out

#- 33 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'kl6WRcjhA4sPwlZB' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "X4q61asF9C65PLHs"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicClaimUserRewardsByGoalCode' test.out

#- 34 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'EvaluateMyProgress' test.out

#- 35 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'IWyZaw9pNJMs4NKL' \
    --namespace $AB_NAMESPACE \
    --dateTime '1997-03-19T00:00:00Z' \
    --goalCode 't3akeS7BfASsZtz4' \
    --limit '39' \
    --offset '89' \
    --tags '["ABiq4yE1kmQ2tBV5", "ox87z8jjvzLBH5F8", "d3uky5RN4iY1wY0H"]' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetUserProgression' test.out

#- 36 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'KQk5cYf1OeK8wMIX' \
    --index '18' \
    --namespace $AB_NAMESPACE \
    --goalCode 'g6hC9tLSSgG432HE' \
    --limit '22' \
    --offset '90' \
    --tags '["i2T1rGprIVfb9bNy", "IR95zk8t0rIqnqA0", "p2z9nu8p6X5DHQLm"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetPastUserProgression' test.out

#- 37 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'GCki3530IaF0oe0z' \
    --goalProgressionId 'Qu4pHyKfREdKOOvG' \
    --limit '76' \
    --offset '36' \
    --sortBy 'createdAt:desc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetUserRewards' test.out

#- 38 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["MU0zmdQjI76TFIaG", "b1WVsjtMXffdvGfe", "Ss5zbbGLdihfQJSa"]}' \
    > test.out 2>&1
eval_tap $? 38 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE