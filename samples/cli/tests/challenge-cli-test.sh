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
echo "1..34"

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
    --limit '100' \
    --offset '25' \
    --sortBy 'U3j8oGPqB0foNPGs' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 72, "assignmentRule": "FIXED", "code": "XGFLycTMn78foI5o", "description": "3L1UX9ETU1vMnzCO", "endAfter": 96, "endDate": "1973-02-23T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "06QGYF445jVvOFpM", "randomizedPerRotation": true, "repeatAfter": 28, "resetConfig": {"resetDate": 32, "resetDay": 56, "resetTime": "EmiKF6FPufVvM7k0"}, "rotation": "NONE", "startDate": "1988-04-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'fMKAj4muHbQxp8ue' \
    --limit '89' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetActiveChallenges' test.out

#- 5 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'QVW6B0ElmsiqhqEf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetChallenge' test.out

#- 6 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'oJbfIyaqTxZVRAKz' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 25, "assignmentRule": "RANDOMIZED", "description": "ECfW3LhY4ZKjOU8m", "endAfter": 78, "endDate": "1981-05-23T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "YTE3D7b9sTLnWgDo", "randomizedPerRotation": true, "repeatAfter": 91, "resetConfig": {"resetDate": 55, "resetDay": 85, "resetTime": "IVKJA1jecDuPTXo0"}, "rotation": "MONTHLY", "startDate": "1976-10-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateChallenge' test.out

#- 7 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'FC6SdfQucY9DmNAy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteChallenge' test.out

#- 8 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'DqXio4KSPCBxZyRY' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '82' \
    --sortBy '5G3xkIrbrDVrT7Mm' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetGoals' test.out

#- 9 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'hICmyyOaGYEPm1gw' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Fvmxe6DSV3CaUy91", "description": "Fhf5Jg9hTYXhXyiR", "isActive": true, "name": "deHjG78jDoUVbREM", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "lCuzPCRIVftreeuX", "parameterType": "ACHIEVEMENT", "statCycleId": "9N8xopt93vZbBr5r", "targetValue": 0.25978237946195404}, {"matcher": "EQUAL", "parameterName": "PZkFymvjjcRAtoCK", "parameterType": "STATISTIC", "statCycleId": "XEECaVvMDBb30PGr", "targetValue": 0.31367867399269656}, {"matcher": "EQUAL", "parameterName": "N6fxNjc1vgXuUx4O", "parameterType": "STATISTIC", "statCycleId": "o753PPcliYRGJhFv", "targetValue": 0.1593202741482772}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "9fdT3CkmhMJkwAxa", "parameterType": "ENTITLEMENT", "statCycleId": "KHnV1nrxC0nXBwsS", "targetValue": 0.7162808767422094}, {"matcher": "GREATER_THAN", "parameterName": "4ZpExZEjbvU3vlM5", "parameterType": "STATISTIC", "statCycleId": "VDfZ0TJoPMdAEH2y", "targetValue": 0.9336481714588333}, {"matcher": "EQUAL", "parameterName": "UAuBSZ8YHcLewzap", "parameterType": "ENTITLEMENT", "statCycleId": "owzpJJRcjCreCenO", "targetValue": 0.7790514002199184}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "71jMMF5QDvaDZCXh", "parameterType": "ACHIEVEMENT", "statCycleId": "vdUNmvi5u2xY41cv", "targetValue": 0.3174329568912533}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "5wCwj9dXWxA4gYiw", "parameterType": "STATISTIC", "statCycleId": "1r0WykLFrF88P2wd", "targetValue": 0.7283141331864784}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "3fhwidcuE0tcOG65", "parameterType": "STATISTIC", "statCycleId": "Ed2w3ycoQibB960X", "targetValue": 0.3223982768586019}]}], "rewards": [{"itemId": "MuQ41eWVYJjBLRoH", "itemName": "P9aP2sxWeCgTrhJd", "qty": 0.4478830127821215, "type": "ENTITLEMENT"}, {"itemId": "AafZibI8g4asAIER", "itemName": "sWQMs7cBSKh1A9qW", "qty": 0.8458617107009838, "type": "STATISTIC"}, {"itemId": "1afS0z2ud6Q6qSGm", "itemName": "b7WX4uEzq8M4XYHH", "qty": 0.902893277766312, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1986-07-01T00:00:00Z", "order": 2, "startTime": "1993-02-20T00:00:00Z"}, "tags": ["3reEQvz1ncTsjW7Q", "glRh0MDpZwZU4yBu", "RLsWXb5siETy2fmK"]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateGoal' test.out

#- 10 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'eFsEwsgC0qoWImKb' \
    --code 'Jqa5W7GOjc2FuXqh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGoal' test.out

#- 11 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'hMhQX3IHPNhX35ZT' \
    --code 'ejYAL3lzBIJuc1s3' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hPc3RL3SA6Rwj0M6", "isActive": false, "name": "sT8bxbEID2zoPSPF", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "77vpVE7xJxWXG7tI", "parameterType": "ACHIEVEMENT", "statCycleId": "mqfoXk2Nkn0cSlT6", "targetValue": 0.5407971230019797}, {"matcher": "EQUAL", "parameterName": "klRYyNdVOBMgC1yq", "parameterType": "ACHIEVEMENT", "statCycleId": "Xs9Cb4wL78AnpEc3", "targetValue": 0.6710689000363435}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "XeG8J2BPByKReUW6", "parameterType": "USERACCOUNT", "statCycleId": "nMCKQZZmkeQvJUDi", "targetValue": 0.7101218682247044}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "sOw8DvDrOeyJ2NDO", "parameterType": "STATISTIC_CYCLE", "statCycleId": "FeoybJCO7m1BDK5p", "targetValue": 0.09444908858479828}, {"matcher": "EQUAL", "parameterName": "XPqJoIo7eaMFaNwd", "parameterType": "ACHIEVEMENT", "statCycleId": "79NpNkII4QUWruiT", "targetValue": 0.905412675488822}, {"matcher": "LESS_THAN", "parameterName": "y8FdC26rITXCff6V", "parameterType": "ENTITLEMENT", "statCycleId": "UbGYavukbJRiI9Yy", "targetValue": 0.7673534279389753}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "EkW1gicfXwaKFAER", "parameterType": "ACHIEVEMENT", "statCycleId": "Ph5pDraasuGqWCr4", "targetValue": 0.369263738848441}, {"matcher": "LESS_THAN", "parameterName": "QJKnbHhqrIuRbqvm", "parameterType": "STATISTIC", "statCycleId": "lPItNJMWjW9kvKs5", "targetValue": 0.31046929706672177}, {"matcher": "LESS_THAN", "parameterName": "QJbgoY2hCgpH3Yn5", "parameterType": "STATISTIC", "statCycleId": "uuOMHPg34eWym2rI", "targetValue": 0.2630918582164131}]}], "rewards": [{"itemId": "ebcI6PqMH7PJae0c", "itemName": "wXYw12Ls43XbV8HM", "qty": 0.24744184784351486, "type": "ENTITLEMENT"}, {"itemId": "TBV3onDRsLdQqQzq", "itemName": "v5F7mACuFglybExu", "qty": 0.49179367618628644, "type": "ENTITLEMENT"}, {"itemId": "89eZQF0FxRVhK7hC", "itemName": "7gX7DfOeh8tknhPU", "qty": 0.5691520659925244, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1981-03-25T00:00:00Z", "order": 34, "startTime": "1980-04-03T00:00:00Z"}, "tags": ["lc0HhE0yhSWgNL3y", "mJvA05mjkHt7Tp0Z", "wCztdpikK7uIiIkY"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminUpdateGoals' test.out

#- 12 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'o4Met8e8gcdCv7Uk' \
    --code 'gvjd0vtpAC883Mcu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGoal' test.out

#- 13 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'u7TbWnLKwCGkS5TC' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPeriods' test.out

#- 14 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'wCO5ofZSahKh7pf1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminRandomizeChallenge' test.out

#- 15 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'Cde0NUH831gR44RA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteTiedChallenge' test.out

#- 16 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'PZbQRsSXapWukBqB' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1971-05-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateTiedChallengeSchedule' test.out

#- 17 AdminGetAssignmentPlugin
samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAssignmentPlugin' test.out

#- 18 AdminUpdateAssignmentPlugin
samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "yET3NhdJXEoaDnp1", "extendType": "APP", "grpcServerAddress": "6R4rnYXLjcK1mCG5"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateAssignmentPlugin' test.out

#- 19 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "JD8FgcGCopCoiIZr", "extendType": "CUSTOM", "grpcServerAddress": "LZXfMAV746bgBsRy"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateAssignmentPlugin' test.out

#- 20 AdminDeleteAssignmentPlugin
samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteAssignmentPlugin' test.out

#- 21 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["1UGZ5NR0oNMEgnLL", "QhVfDhXI6CEHSymX", "m1n6n8ZRRy7C8nMi"]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminEvaluateProgress' test.out

#- 22 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["fLexpaelUPXTlm6g", "H8DLaz5Wx58qfG2J", "jA81pP9ZmhZXHMar"], "userId": "wNZYLLEpMgmLZ0DV"}, {"rewardIds": ["CVwLYPiF3IM8Y9aL", "USymlAQQCKE3sSTd", "ExhxNUNOZX6EApsa"], "userId": "Rwi1dVYeFMOd5ah2"}, {"rewardIds": ["vjVrztEnDDvFFjWH", "trEqajfFEkW7I0iO", "Z6dHyEyd1XkJTo97"], "userId": "aAWbIwvbo0GgqZmB"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminClaimUsersRewards' test.out

#- 23 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'ttiKFI1EclgBBq68' \
    --namespace $AB_NAMESPACE \
    --userId '0NMvmdoqc6JMRGh6' \
    --body '{"goalCode": "q7gZrarSa6YlSjAm"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminClaimUserRewardsByGoalCode' test.out

#- 24 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'eHmgNvgJZAiVayfX' \
    --namespace $AB_NAMESPACE \
    --userId 'WhcPijZC9HKuCIAX' \
    --dateTime '1994-08-02T00:00:00Z' \
    --goalCode '3XZtUTJvLXZvrCmt' \
    --limit '30' \
    --offset '73' \
    --tags '["2DBfu5z4zUDoInL1", "BN4ihk9PvdVCIXhT", "XsOmUTeV7popPs9Q"]' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserProgression' test.out

#- 25 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'YtvNrItFrfqYqaoP' \
    --limit '61' \
    --offset '19' \
    --sortBy 'N1WCn0AB83JnmRXB' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetUserRewards' test.out

#- 26 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '5L3PZF876NCmxCYK' \
    --body '{"rewardIDs": ["84Sq3ksKj7Kuy0YC", "D3CEF8Zz0ARswbKN", "xpgHjJ3s80IEur8l"]}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewards' test.out

#- 27 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '83' \
    --sortBy 'vP10xFue607RQfy1' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 27 'GetChallenges' test.out

#- 28 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'SP8gspV75nnYC2ci' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '4' \
    --tags '["HfLuXufu0Qp8SAg4", "ZLB6aqyfvj1eyJGQ", "l0yJpA8AKoT0T8IK"]' \
    > test.out 2>&1
eval_tap $? 28 'PublicGetScheduledGoals' test.out

#- 29 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'FD6OySkfXNmPKUry' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "yY1Q1CkgrNt66bGL"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicClaimUserRewardsByGoalCode' test.out

#- 30 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'EvaluateMyProgress' test.out

#- 31 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'FzyQX8dORXsp2fh1' \
    --namespace $AB_NAMESPACE \
    --dateTime '1985-08-15T00:00:00Z' \
    --goalCode 'sjXttLEuD2qHWUSE' \
    --limit '93' \
    --offset '0' \
    --tags '["D9UvckZBsSi5jleP", "9F4VG6Ud7g0RQV1Q", "4l2ikJKYr2mp2Wax"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserProgression' test.out

#- 32 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode '5nLu7VLU4ETrmjwS' \
    --index '97' \
    --namespace $AB_NAMESPACE \
    --goalCode 'LQQ4dYwL5CpGuEsi' \
    --limit '30' \
    --offset '75' \
    --tags '["vvxWC8OKljnPXRct", "0fFxzksJGgrPgWM8", "EDfK6BB7vQKmJXS5"]' \
    > test.out 2>&1
eval_tap $? 32 'PublicGetPastUserProgression' test.out

#- 33 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '38' \
    --sortBy '9VbI0M1WCyUjYmMS' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 33 'PublicGetUserRewards' test.out

#- 34 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["pMHYQ3hvV1lcOCG6", "esfIQlw9PoIjCrIj", "QhZr19TDHas8Qpr9"]}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE