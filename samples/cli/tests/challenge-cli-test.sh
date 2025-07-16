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
    --keyword 'BotNjNpulCuayOCV' \
    --limit '60' \
    --offset '80' \
    --sortBy 'updatedAt:desc' \
    --status 'RETIRED' \
    --tags '["fkid48c3quJ7MbOE", "D7ZTh8wh9bkLRgdA", "shbW7Dv6ysRRn6V5"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 19, "assignmentRule": "RANDOMIZED", "code": "Eqk6ceUIA2hqjeqj", "description": "qlAcLw2SKRvw13sO", "endAfter": 38, "endDate": "1991-04-20T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "hBB7tMdT6brPLSan", "randomizedPerRotation": false, "repeatAfter": 65, "resetConfig": {"resetDate": 37, "resetDay": 84, "resetTime": "0wWs4rsuDgCiMxoy"}, "rotation": "NONE", "startDate": "1989-08-09T00:00:00Z", "tags": ["e16DYFCqlVjw5Z60", "OeniKhcLOw17jrw5", "kylSKiHUP4lOrRVO"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'E0tJVim7vr15QTO6' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'ngXQcu9uvmzIRh6D' \
    --limit '94' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'Tise5tz2GJtbVqrr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'PG8cm1gvZF5V7P8O' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 20, "assignmentRule": "UNSCHEDULED", "description": "TaDSWZoAbLg5leay", "endAfter": 93, "endDate": "1972-07-15T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "ECNnOPwO5bwMYj8q", "randomizedPerRotation": true, "repeatAfter": 38, "resetConfig": {"resetDate": 32, "resetDay": 15, "resetTime": "vaeMhKjetywXIg8Z"}, "rotation": "NONE", "startDate": "1980-09-26T00:00:00Z", "tags": ["x9V38yNO5TihIgE4", "a8DafpZXGQ9SUAhr", "G39zYDqmjmhres4r"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'jS9xcrO4pq7heFZi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'N2asybiSDLUISDj5' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '81' \
    --sortBy 'updatedAt:desc' \
    --tags '["Q1W5cadChUddpXrU", "QMYB4qgO75UvHgbb", "dP4wQvutO0RJvIgM"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'd2GKFDTcvlDiDdLB' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NfPbdc6Aazlv9ovi", "description": "1kieQTUcLQCenIJI", "isActive": false, "name": "fXJsrrbWseEUgLCz", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "Gk9WhWIL5UFM47CY", "parameterType": "ENTITLEMENT", "statCycleId": "orkG5QLgm0FqNDd2", "targetValue": 0.6900711871653913}, {"matcher": "GREATER_THAN", "parameterName": "6DKf7mGbcR1Xk5qQ", "parameterType": "ACHIEVEMENT", "statCycleId": "ZSqWek2zFGUD4s8a", "targetValue": 0.4599284965908541}, {"matcher": "GREATER_THAN", "parameterName": "pFYjlyR0x062EXkP", "parameterType": "ENTITLEMENT", "statCycleId": "UMpAs5tCmZ9ejXFY", "targetValue": 0.16213421617793689}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "fNuUGOm8zfcnVqHk", "parameterType": "STATISTIC", "statCycleId": "Ec2kFhWEvDN3lwOB", "targetValue": 0.654969418882851}, {"matcher": "EQUAL", "parameterName": "pdx86u0QYYbA2wgu", "parameterType": "ENTITLEMENT", "statCycleId": "fOIlgAc5d4qWic9r", "targetValue": 0.8268349625165355}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "UwvTVFg6FZf4Epit", "parameterType": "ACHIEVEMENT", "statCycleId": "ZJamJ8i8h8goA3qc", "targetValue": 0.5682307626537095}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "SPddUxT2BQw4IOcS", "parameterType": "STATISTIC", "statCycleId": "TovkUlBaOgvxSFEf", "targetValue": 0.43366550241547286}, {"matcher": "LESS_THAN", "parameterName": "wkUyTIfrF81xCKQ2", "parameterType": "USERACCOUNT", "statCycleId": "wxKwBOiTH5dXb5A4", "targetValue": 0.9051972687743789}, {"matcher": "LESS_THAN", "parameterName": "941qxd852Vb9orMO", "parameterType": "STATISTIC_CYCLE", "statCycleId": "xD28f0TSseoyYWuV", "targetValue": 0.13373349556710556}]}], "rewards": [{"itemId": "ns7ClKLDIa4UGPSl", "itemName": "GGjx6ci1XvQkUGcU", "qty": 0.9837595516589934, "type": "ENTITLEMENT"}, {"itemId": "z6iUigqjvunNznal", "itemName": "5ihjZKvXu9iFHwGG", "qty": 0.9609594157927303, "type": "STATISTIC"}, {"itemId": "QCMNNKb1PdfiRspN", "itemName": "51oHFUVoGCqR8J5M", "qty": 0.5857039402754743, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1998-05-09T00:00:00Z", "order": 45, "startTime": "1990-06-29T00:00:00Z"}, "tags": ["TMoGtWTAeBhT8ykT", "VHDIpRq0FAy9HHwj", "nhM1Ubtr3EaUvzkF"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'Mcm0GZUB6NBcHgqe' \
    --code 'a6zpJT6MwqNGZXJb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode '5Cf1gy3cmDS6Lb1u' \
    --code '95d42wmkMdH69iZl' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6WOkECn1U3LL9nYN", "isActive": true, "name": "N4rv0BEqv73COIwX", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "3PhQUCW5CEEDPWeq", "parameterType": "USERACCOUNT", "statCycleId": "sE3ylfLgFcXqwqmG", "targetValue": 0.6705108007960869}, {"matcher": "EQUAL", "parameterName": "ydg9cyf7qHDClTGI", "parameterType": "STATISTIC_CYCLE", "statCycleId": "xKCakdlffKRqIBd8", "targetValue": 0.02704583577819497}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "HpHB4piuYwNEd1U0", "parameterType": "USERACCOUNT", "statCycleId": "iNH6Sa5R4VVm2Jhx", "targetValue": 0.14758323497127468}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "C22KH2jcBoiiRdDq", "parameterType": "ACHIEVEMENT", "statCycleId": "tObgQZa2DWP370Po", "targetValue": 0.7944729015880886}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "o0MHDG5UXX7SnUZX", "parameterType": "ENTITLEMENT", "statCycleId": "7kKR0mY8okpz7nQ1", "targetValue": 0.4120546755824753}, {"matcher": "EQUAL", "parameterName": "LoHamnmLWBrEwDpa", "parameterType": "STATISTIC", "statCycleId": "OlSRTSgsEOjZ6YfA", "targetValue": 0.7672018697261379}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "27iCXvCkQ6iv2JIQ", "parameterType": "ENTITLEMENT", "statCycleId": "zEJ2BrdEH54quLrK", "targetValue": 0.24741221145116987}, {"matcher": "LESS_THAN", "parameterName": "oNezpNKfTndo6MmV", "parameterType": "STATISTIC_CYCLE", "statCycleId": "PaFWN2RAgWKpDrzy", "targetValue": 0.8866312581445869}, {"matcher": "LESS_THAN", "parameterName": "NkGmbi2WSLufr6pV", "parameterType": "STATISTIC", "statCycleId": "fsQngnWj9N002hVR", "targetValue": 0.8181993030635589}]}], "rewards": [{"itemId": "0AajS9U6UXnX7hAV", "itemName": "ibPsRFufiqACb3Ot", "qty": 0.6194488836723696, "type": "STATISTIC"}, {"itemId": "DpMCcdWWiOrjKehv", "itemName": "016cHvjGJECB1A7M", "qty": 0.060868626244277024, "type": "STATISTIC"}, {"itemId": "HHcBbC4AOphGWua6", "itemName": "BC8a9vrHfVPUZqAU", "qty": 0.46410327968035936, "type": "STATISTIC"}], "schedule": {"endTime": "1996-10-23T00:00:00Z", "order": 16, "startTime": "1995-04-24T00:00:00Z"}, "tags": ["a1YjzB6Hx56f8dsV", "pRFX77kxQXkVZ1wf", "qCYPqykn5cPGHqzC"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode '3m8LBPQUnTrqyjkm' \
    --code 'TBH5LtmgRqaeRMjm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'xgElMoyfDvq3cXRD' \
    --code '1Mqr9afrQ8XgqjWK' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '12' \
    --userId 'JSizyFEuHFLCH1sO' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'TmmKDSrV8FdHEyLn' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'GMXophZEzqXqLMTA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'bYbjqQINGKnU63pd' \
    --namespace $AB_NAMESPACE \
    --dateTime '1980-09-01T00:00:00Z' \
    --limit '33' \
    --offset '80' \
    --userId 'zcpEPVMIielAI5y9' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'ZkPXNiviB9niJwJE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'yyZLh9C4nV3BCRh2' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1991-06-11T00:00:00Z"}' \
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
    --body '{"appName": "Ipyx9fo8WLYU5Red", "extendType": "APP", "grpcServerAddress": "eJ0WEEFmXsY2Zpwe"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "b15hnehU8t9kUnHl", "extendType": "APP", "grpcServerAddress": "EH5UuM00xfK3VLbI"}' \
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
    --body '{"userIds": ["uZBTvzjg5XpL0GvN", "6IjLNkD8R0HRlTky", "O5Q4fpIX0ypJasTP"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["3z34alAGoZUAvpqt", "CnnDKkx7Z9DtaqOr", "YzHm5FUw1C64sNc0"], "userId": "U01bH6QPVmpOyYzF"}, {"rewardIds": ["gQnjVkFqfjS8obmb", "R249Q7IcKfeOrzjl", "4DKZzkXLuj1tNA4s"], "userId": "290PUtQQN7MejJbx"}, {"rewardIds": ["afv2oIeln7PdepRG", "Y7VPj852wuh6RUBs", "o3TZZVl1eTzxJArd"], "userId": "xyU21UwaVNd0R2o7"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'TTPR2xCbnm6TQTMo' \
    --namespace $AB_NAMESPACE \
    --userId 'JoposXIi1SOalTJ9' \
    --body '{"goalCode": "OKXwKUh6OSsshV9a"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode '5GzX5g24SybB0Te4' \
    --namespace $AB_NAMESPACE \
    --userId 'yBSuERwwQxlJ2DIN' \
    --dateTime '1999-09-07T00:00:00Z' \
    --goalCode 'JKHJ3AN9L0gRP92t' \
    --limit '0' \
    --offset '61' \
    --tags '["tQythAkbzZxcDwQy", "sD9g4OO0Drhp6chB", "YpHJDKnAF5JUPqs1"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'xGI05UEQxxJEY4Fy' \
    --challengeCode 'KxjS5DOvJlsCg7T6' \
    --goalProgressionId 'ywKuFDYwq8qlYD40' \
    --limit '55' \
    --offset '69' \
    --sortBy 'createdAt:desc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ewrCbVmze77V62Gq' \
    --body '{"rewardIDs": ["io7ImeXgOSV3tWhb", "01wOaZlYNB8cd5ld", "vrGsyuFiLpmNkNZd"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'utNpEHsScitmiXDh' \
    --limit '10' \
    --offset '15' \
    --sortBy 'updatedAt:desc' \
    --status 'RETIRED' \
    --tags '["gdykjEzLNssNSkZ3", "g7q3ettlpTtmK9UI", "oncqPs9vCmitlB1U"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'A9Oq5VRQ2XU7tYMG' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '27' \
    --sortBy 'updatedAt:desc' \
    --tags '["zx4q7fC58Z1FT2eQ", "PcnueKTJl0mqZNem", "jWKR9AvPcvU2G6JX"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'A3I0LTs1E6HcuPUE' \
    --code '1A54X3oAwtOr7ZlM' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'bA2dSaMO7dKNL90s' \
    --namespace $AB_NAMESPACE \
    --dateTime '1971-11-20T00:00:00Z' \
    --limit '7' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'YCAwWb5DqvNM4l14' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "VXxk9eTtNua6hvoC"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'ttj6tuKppN5kk0Pw' \
    --namespace $AB_NAMESPACE \
    --dateTime '1995-01-28T00:00:00Z' \
    --goalCode 'rcfzBLMwXVnLTJhV' \
    --limit '52' \
    --offset '47' \
    --tags '["xckR7QJm21Qudafi", "NsOISQbooWjdcYT1", "uJ9wPEcxqkBMwvI4"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'H67bagWgjKQ7F3tA' \
    --index '47' \
    --namespace $AB_NAMESPACE \
    --goalCode 'gMbP4W6b1UNhtIUK' \
    --limit '19' \
    --offset '96' \
    --tags '["BUnTxwlK1PSvbADI", "HwEMWYhcH2gWPQ1Z", "4awD9MJpezuzuHAf"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode '3tDnow1xu4K20Tvr' \
    --goalProgressionId '76W6VMvlfxA9t06N' \
    --limit '45' \
    --offset '47' \
    --sortBy 'createdAt' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["85y9EXlGykLuJAWk", "imb8QxnKd9aOuftH", "0sx2a6kw46o2xoW6"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE