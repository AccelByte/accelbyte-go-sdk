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
    --keyword 'LOlljLY7A9CGjg8O' \
    --limit '28' \
    --offset '58' \
    --sortBy 'createdAt:asc' \
    --status 'INIT' \
    --tags '["PZ1oiu1tTpp6iIZB", "PCeQfgnmpW76mSnN", "sDirHaVRx1tXkAWK"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 64, "assignmentRule": "CUSTOM", "code": "dZBbtmDekYtBwGQI", "description": "QyZ9iNuKiG1rmg3N", "endAfter": 10, "endDate": "1981-05-10T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "18r2apwHeebt08Jb", "randomizedPerRotation": false, "repeatAfter": 16, "resetConfig": {"resetDate": 64, "resetDay": 51, "resetTime": "o0NRqHXsDhsP3AoJ"}, "rotation": "NONE", "startDate": "1974-02-05T00:00:00Z", "tags": ["ykJNFlzMtvvqzZhA", "y1OQXSEFZJaLPzVg", "yEuUZKmFMNVRlgel"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'kIFZhAggsEAn0yUl' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'ECYSLXEpmys9ol0F' \
    --limit '66' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode '85mYZFmkxy5SoanQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'zNNrviGWEMFUnKP9' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 85, "assignmentRule": "FIXED", "description": "HxraOwUFPaz7Fe4Q", "endAfter": 13, "endDate": "1978-08-31T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "4nMxjCNLWOBnIt7O", "randomizedPerRotation": true, "repeatAfter": 54, "resetConfig": {"resetDate": 53, "resetDay": 4, "resetTime": "IQ7htZgTVUGwtgwp"}, "rotation": "DAILY", "startDate": "1994-08-05T00:00:00Z", "tags": ["gglks6Wx6oO11Tkt", "Yv5bvLMuO9tXDgzv", "DKnOyfZwDUdVbWNj"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'w9uMUCBvTxyRUPCo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'YNRkTvv4mGZEmpOc' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '24' \
    --sortBy 'updatedAt:asc' \
    --tags '["DcQjWlZoyXFPjRWT", "M4MYhkWFYePRjY8I", "Z5jHpxkgEsGDWKEl"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode '9SM2oHlN0u5VaGz3' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mDuRauXreZ4aEbQl", "description": "cw6zicUxMKRhu8tt", "isActive": false, "name": "i8Tl4JziSP3XuAp6", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "cMCpwnGEpQgNpcDm", "parameterType": "STATISTIC", "statCycleId": "gyfsPoTMJp3ero2A", "targetValue": 0.6880814070555732}, {"matcher": "LESS_THAN", "parameterName": "qTaOqDY8VOF9Yzku", "parameterType": "STATISTIC", "statCycleId": "9p9XUfKrWeHnUjDS", "targetValue": 0.8170043054120967}, {"matcher": "GREATER_THAN", "parameterName": "woQpxwgfYDrxPLuy", "parameterType": "STATISTIC", "statCycleId": "LCV5Sxx6bAQkAhET", "targetValue": 0.13907382470521112}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "RfQE4aextVCjO6z4", "parameterType": "USERACCOUNT", "statCycleId": "MB0OfGi51JWNXKZO", "targetValue": 0.9914566784724129}, {"matcher": "LESS_THAN", "parameterName": "uYFD9OV11lpbORkm", "parameterType": "STATISTIC", "statCycleId": "Z9IzUtlfjaHWEFBE", "targetValue": 0.8001507755467943}, {"matcher": "LESS_THAN", "parameterName": "l6pj4oZEBPA52qOc", "parameterType": "USERACCOUNT", "statCycleId": "e0NyWVRjH7PJOZSe", "targetValue": 0.07248431266518551}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "7W0KaevtmTiRjQfd", "parameterType": "ACHIEVEMENT", "statCycleId": "XQXQwrskyf1aceOZ", "targetValue": 0.8782706896614044}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "8GAg7L6bbpgbdt6v", "parameterType": "ENTITLEMENT", "statCycleId": "B4yHCypY9HnykKiu", "targetValue": 0.9028189388170381}, {"matcher": "LESS_THAN", "parameterName": "pULXL4BdwhkTsZEU", "parameterType": "ENTITLEMENT", "statCycleId": "TdKeZTQ9jcuvuik7", "targetValue": 0.6793600699321604}]}], "rewards": [{"itemId": "PSdd9pjKn7uXIDFy", "itemName": "HsDUY6mC19VnuIrW", "qty": 0.41288290834196084, "type": "ENTITLEMENT"}, {"itemId": "Frn0b7i68FSM0z45", "itemName": "M5yPqL24J29LDCxv", "qty": 0.29950722046698564, "type": "ENTITLEMENT"}, {"itemId": "mNkAyPA6mm17rkpW", "itemName": "N45qWi79gnjDGUpS", "qty": 0.10777529167564504, "type": "STATISTIC"}], "schedule": {"endTime": "1992-11-18T00:00:00Z", "order": 79, "startTime": "1986-04-02T00:00:00Z"}, "tags": ["H9meDgH0UGcwByJ0", "kjCJnobMtabLeGlT", "3iclh0fvJsqLqS2p"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'w5Jb6XBShvTERSv0' \
    --code 'nAWyEaJCe9Y5v7pb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'YlaJRqhHpn4ePpRt' \
    --code 'c7SPmYFbVCMSYErT' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5J3Pckjt4Ax1ZbFl", "isActive": true, "name": "AEM1Yx0TUMj9blVk", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "VIprJxrD31Fvloe4", "parameterType": "STATISTIC_CYCLE", "statCycleId": "iGS6ALAR8F3EFzpW", "targetValue": 0.8601574281457933}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "Yai2lINtOSbpJAgr", "parameterType": "STATISTIC", "statCycleId": "njYYu3HwsRuczNuB", "targetValue": 0.8678482550559478}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "djN3yHha4kuqXa7r", "parameterType": "ENTITLEMENT", "statCycleId": "ryvdxRPyzhnzNcyx", "targetValue": 0.6920157077781783}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "6OcngLmATOWRpeub", "parameterType": "ACHIEVEMENT", "statCycleId": "Iwy8Ud8pIsQsi9m4", "targetValue": 0.305739484748607}, {"matcher": "GREATER_THAN", "parameterName": "gL65jXghCMzdIzET", "parameterType": "ACHIEVEMENT", "statCycleId": "KpHaKpyPIuK0Q9cV", "targetValue": 0.22594907543995435}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "yLrnPuboL7xBj3TX", "parameterType": "STATISTIC_CYCLE", "statCycleId": "R5ggRuTi1H2TCI1C", "targetValue": 0.23244316963798717}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "CdVWPKH4B2TOHIvz", "parameterType": "ENTITLEMENT", "statCycleId": "ddCKBQnE3P8hXJgj", "targetValue": 0.12733736774595816}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "94O0Nn9X0FPATbTm", "parameterType": "STATISTIC_CYCLE", "statCycleId": "WdE3UoUVbxJ9q0mC", "targetValue": 0.3206957107411742}, {"matcher": "EQUAL", "parameterName": "GLi92CKtrnuTk4Ws", "parameterType": "ENTITLEMENT", "statCycleId": "PFvKjR3yimpXomBB", "targetValue": 0.0031360355476162116}]}], "rewards": [{"itemId": "u7uXNb45FCVV6Nve", "itemName": "qhUiTDRuB4sJGeH6", "qty": 0.5712847728071206, "type": "ENTITLEMENT"}, {"itemId": "8ldAI3xGeDF5UnJr", "itemName": "dEV694XFW1O4VZcA", "qty": 0.17668946221143644, "type": "STATISTIC"}, {"itemId": "vAJUSjMurdK8zvev", "itemName": "kny0WnbjNb5a9jL8", "qty": 0.22233738381100288, "type": "STATISTIC"}], "schedule": {"endTime": "1981-03-22T00:00:00Z", "order": 77, "startTime": "1988-11-20T00:00:00Z"}, "tags": ["qCJLiIOrmaEUyVLL", "SXBG6OeW1TErVVXp", "WyRGhAkXjFPgKB9x"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'MOOmARCsjq3PcPhw' \
    --code 'nGVGan5zIazfWLjq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'mLfZmmnoTkacwsQx' \
    --code 'ZhZ0q9IgX2qRMw1l' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '47' \
    --userId 'QsG8jCQpx8n2corM' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'HK9ZXjuUFGnWyGQe' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'oTV1GSx1iSRQdzmd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'HiMsd96ttsDwm2nW' \
    --namespace $AB_NAMESPACE \
    --dateTime '1975-03-20T00:00:00Z' \
    --limit '66' \
    --offset '81' \
    --userId '5RAI2WOywxLWnlfN' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'Y2qsOmlJ7ne73Fhi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'BGIXB719V6jKr4ih' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1988-07-26T00:00:00Z"}' \
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
    --body '{"appName": "9uejhEf7ATXE0zVn", "extendType": "CUSTOM", "grpcServerAddress": "zW8QcEyjsLGeBFfy"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "ltZQ5bErUjLgpGZJ", "extendType": "APP", "grpcServerAddress": "gc43ppBAtXsIBMtR"}' \
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
    --challengeCode '["yABFTLSLNmxgyKIy", "IwNWC5xMgiQVaQCM", "yq4uOL7CBcy17BFJ"]' \
    --body '{"userIds": ["o3f0IJLpVgL9oxTW", "rw0snuctuzlsa2Qc", "oX8pZia3itxWejmE"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["TdkAPluaiMPQGRBs", "aD3maQaSuDgGFDjj", "Hr1IeLUxQrmdKmUA"], "userId": "RuK3fnpBqKr1WlfD"}, {"rewardIds": ["0czXgaNe5rKXl03z", "unZ4uhOahl4zUQOq", "1U2Fk4pxhjPR59kK"], "userId": "6YevbdygBLCFBy6k"}, {"rewardIds": ["y4xawDmGW1umhWqp", "WYA74eYwjxUunF1w", "itcit34scQOns9Xw"], "userId": "at8YYIWvozUVYaBK"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'PjSt6014c7Ptkplz' \
    --namespace $AB_NAMESPACE \
    --userId 'tPFVt5hn1QwGGoxq' \
    --body '{"goalCode": "YIUUl3dxC50zJK7o"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode '6EIUMsBbM6lI07pt' \
    --namespace $AB_NAMESPACE \
    --userId 'AD9ThTOSgbZs0VZo' \
    --dateTime '1992-09-19T00:00:00Z' \
    --goalCode 'ZU9IPV1Wzfre6FNJ' \
    --limit '52' \
    --offset '0' \
    --tags '["M9ZMW5fjs5n5pbjf", "UdS8sdA8BJs6S1w6", "RhU4oz9X9YCbrSst"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'roSFa30XJvwBBqTF' \
    --challengeCode 'GzauYmsqF53Gxjvf' \
    --goalProgressionId 'PAnP21uqqaga9Z3v' \
    --limit '88' \
    --offset '99' \
    --sortBy 'updatedAt:asc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '5oBUZq08ZGwiXmzC' \
    --body '{"rewardIDs": ["V2VQUS2Y8o7BOC6s", "tmT2dtbtUoX8wPWI", "y7tIYYJiFZG1yghj"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'EJJaqeWHt1elkaDA' \
    --limit '37' \
    --offset '64' \
    --sortBy 'updatedAt' \
    --status 'RETIRED' \
    --tags '["WCQ2QcED5lA9Rng6", "3ql9YBqaetb4tb2A", "P0ZAZcoLHdpMyBaL"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode '2iqryCB0MnPRzUOk' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '85' \
    --sortBy 'createdAt:desc' \
    --tags '["4CepCDmivjH3Siqg", "WVa0FOQ4PO11JytL", "EXb6PPJ965rJoAHZ"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'PXucd72YC9wNUtCZ' \
    --code 'EAZEdkiIV0MuVFlS' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'MmVipjeonHXyBhlk' \
    --namespace $AB_NAMESPACE \
    --dateTime '1981-02-22T00:00:00Z' \
    --limit '47' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode '27vPFhSqqKJA8jtg' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "D4Mu01em3WSPUaNa"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["TPoQjJN6TyO7lInh", "wAFQCgecOKKPe95F", "8j8Jgg8mbxMw5wVF"]' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'ng1oZYhJfqB2eYSt' \
    --namespace $AB_NAMESPACE \
    --dateTime '1972-04-16T00:00:00Z' \
    --goalCode 'LgjqwPL3Q07hoQaD' \
    --limit '91' \
    --offset '71' \
    --tags '["mNaWydrOeNCA7cgF", "JlkTwL7N34FyZr0o", "lgnJWJ7kOXzxpOR1"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'p8MG3qvLx5XHg7RL' \
    --index '68' \
    --namespace $AB_NAMESPACE \
    --goalCode 'l1ntgavFZEJHT0Bi' \
    --limit '72' \
    --offset '67' \
    --tags '["RLXZy5367BH4HfmL", "bCamkROL5pyTLIow", "ER13HooTYXO7eJxp"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'icdRLJj6NjlwItGi' \
    --goalProgressionId 'jAzP5ivg25IrV7qB' \
    --limit '35' \
    --offset '12' \
    --sortBy 'createdAt:desc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["kL7EidOaGopFbgwp", "VCE6tmF035c3acu3", "5iMsgDrqmIPXozwE"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE