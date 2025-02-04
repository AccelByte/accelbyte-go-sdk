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
    --keyword 'TBZ0bF6A3kXsAupy' \
    --limit '59' \
    --offset '86' \
    --sortBy 'updatedAt:desc' \
    --status 'INIT' \
    --tags '["K1vT00VaOrEloDZr", "Ee7KABTME4aur1na", "4mvtt1icvauDvCcB"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 0, "assignmentRule": "CUSTOM", "code": "k1h1yxJp7TuWXWyi", "description": "YfDxcbJW0itcXW7J", "endAfter": 2, "endDate": "1986-07-20T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "iEc39OxPpyZvy8dh", "randomizedPerRotation": false, "repeatAfter": 42, "resetConfig": {"resetDate": 38, "resetDay": 21, "resetTime": "3C0HquKkWZj6kgi5"}, "rotation": "MONTHLY", "startDate": "1991-10-17T00:00:00Z", "tags": ["Vucw0TUjFnkfxecA", "68I8n8atq6iRiVx8", "l3koKkg34CAXxK3V"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'THQ4cRw1g9FuMYLk' \
    --limit '42' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetActiveChallenges' test.out

#- 5 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'zLWsmThy0hnyk5b8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetChallenge' test.out

#- 6 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'd0UGwmwI3FtTckBS' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 88, "assignmentRule": "FIXED", "description": "BtbIizHoEeeaI3rz", "endAfter": 52, "endDate": "1986-09-19T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "C1MqSqKZ1y89TicH", "randomizedPerRotation": false, "repeatAfter": 71, "resetConfig": {"resetDate": 42, "resetDay": 46, "resetTime": "4AUk2Dp0qmvYGVB9"}, "rotation": "NONE", "startDate": "1987-09-28T00:00:00Z", "tags": ["zMO3yRRbQWFef5Uy", "dqkTuRFrYIywFJdy", "D7KG1IrPPfsgluOV"]}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateChallenge' test.out

#- 7 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'vLAvOMd2GKteG0Gt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteChallenge' test.out

#- 8 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode '41aLv4vX3HheDZY6' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '60' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetGoals' test.out

#- 9 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'BFFI7prIaPHVQLVg' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NAE75EKkYEeo1Im5", "description": "aKzxkqYL8oxOsls8", "isActive": false, "name": "GUa5fC4wNXSeZ7wU", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "52h528U22650JclC", "parameterType": "ACHIEVEMENT", "statCycleId": "JiOm5WKbopKlDx37", "targetValue": 0.32846914083306356}, {"matcher": "EQUAL", "parameterName": "kdsIazcLXRYOHqBs", "parameterType": "STATISTIC_CYCLE", "statCycleId": "D0qTt2MczjyGURy4", "targetValue": 0.8765313875734457}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "VdrsqT1K3xuJekrI", "parameterType": "ACHIEVEMENT", "statCycleId": "hnw1SNPrldU0ZLD3", "targetValue": 0.5434865646636793}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "Tx7PpIAvI8nPZ5Xh", "parameterType": "ACHIEVEMENT", "statCycleId": "Z0cBV3636lAtPiQM", "targetValue": 0.03456240194705251}, {"matcher": "LESS_THAN", "parameterName": "5hnt3rm6ph1mlr73", "parameterType": "ACHIEVEMENT", "statCycleId": "npLAUJIkaRR9SW4E", "targetValue": 0.8457663585284805}, {"matcher": "LESS_THAN", "parameterName": "8nFn6xQu4qaB72ZC", "parameterType": "STATISTIC", "statCycleId": "LvzNFJ2XYh53c4Xo", "targetValue": 0.7591591383336918}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "DqM7CS6IohBHIynW", "parameterType": "USERACCOUNT", "statCycleId": "x5ZxrgNtQW5NNEdr", "targetValue": 0.35117766974088416}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "YDCie2FVbQcE88a1", "parameterType": "USERACCOUNT", "statCycleId": "9veTmJY1pI8VUgDL", "targetValue": 0.062326946814998285}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "qeEHKHUxJhC9jHoV", "parameterType": "USERACCOUNT", "statCycleId": "ZebvDlrbOZNQws0u", "targetValue": 0.11873912630657457}]}], "rewards": [{"itemId": "pYKwcyNK2yLBdqHd", "itemName": "TyRvVIgChRZO6DIP", "qty": 0.6363353241995572, "type": "STATISTIC"}, {"itemId": "IoKp0kE8gYCteyoX", "itemName": "r9XZZRi5sQHhy7se", "qty": 0.7842025216618013, "type": "STATISTIC"}, {"itemId": "GuL64kQINtwgaPLR", "itemName": "FVjhoMZzkisnPxWT", "qty": 0.06970014935235058, "type": "STATISTIC"}], "schedule": {"endTime": "1989-02-11T00:00:00Z", "order": 4, "startTime": "1994-09-18T00:00:00Z"}, "tags": ["21K55LDijAQ5WtWX", "pXQEe6tX3XhFcP7i", "BiSRYElBJix7jmdm"]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateGoal' test.out

#- 10 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'IGQcuBOEEgUN61RG' \
    --code '8SSQY6pvMKqkZ6hQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGoal' test.out

#- 11 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'TTF6Pusf2BvewZFJ' \
    --code 'KXLM3GozCtSufnsX' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "EsfPJnGwhcBGe2Ab", "isActive": false, "name": "xZaHciuErRul25Sy", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "VmaiMneUtuIK2SSw", "parameterType": "STATISTIC_CYCLE", "statCycleId": "HSix3QSKt9BgCBRc", "targetValue": 0.7158321166062248}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "Vny32OAkwX3sb83P", "parameterType": "STATISTIC_CYCLE", "statCycleId": "N98XPHxiIpztNj1D", "targetValue": 0.43737838994030087}, {"matcher": "LESS_THAN", "parameterName": "wKpMmDXpgQ2LvtO5", "parameterType": "ACHIEVEMENT", "statCycleId": "3osHCC7kCWFuWoee", "targetValue": 0.20759963014972127}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "6A01WMqu8PUE8ViS", "parameterType": "STATISTIC", "statCycleId": "2FdNrYtK7mvCa0l6", "targetValue": 0.290224935889125}, {"matcher": "LESS_THAN", "parameterName": "nlkIfehnQgkcu0ge", "parameterType": "STATISTIC_CYCLE", "statCycleId": "sBMpZ5tCvXytA9np", "targetValue": 0.937093566110451}, {"matcher": "EQUAL", "parameterName": "7hfu3sK6oAbzqNwT", "parameterType": "ACHIEVEMENT", "statCycleId": "fqwKhCOvT4RuJHbN", "targetValue": 0.23365529288693077}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "aTMtMWiyDop2rHNW", "parameterType": "USERACCOUNT", "statCycleId": "wCfqMIzYH9CR7axT", "targetValue": 0.326667331029439}, {"matcher": "LESS_THAN", "parameterName": "uFsPu8w1AevJXkGJ", "parameterType": "ACHIEVEMENT", "statCycleId": "P2Uf4kK4h71fgWbv", "targetValue": 0.47533964988056154}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "adXDdEO7Ol7d3Dcv", "parameterType": "STATISTIC_CYCLE", "statCycleId": "vYlTip2a5aWXYRbc", "targetValue": 0.6496173351666717}]}], "rewards": [{"itemId": "3aISXzicjMHQpkO6", "itemName": "kQ7Wi1o6n98x3Red", "qty": 0.414343150221702, "type": "ENTITLEMENT"}, {"itemId": "ZkaDmoTmNz4Fg8Oc", "itemName": "ACmMITjVfTm3n1cl", "qty": 0.2181029039432102, "type": "ENTITLEMENT"}, {"itemId": "8oEPv2gpZyECOsey", "itemName": "TeM8BfI7C97JWezb", "qty": 0.32598366927231337, "type": "STATISTIC"}], "schedule": {"endTime": "1975-12-13T00:00:00Z", "order": 29, "startTime": "1974-07-09T00:00:00Z"}, "tags": ["aAbBvoSiW0BWFury", "MeaGdy8atZfPsdZP", "3sCT5hAkcVGI57oi"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminUpdateGoals' test.out

#- 12 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'Ajernua5YVsDF0gZ' \
    --code 'ZLLPgCkNNyTuiEkt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGoal' test.out

#- 13 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'S7CKSM5EH1Yok4VV' \
    --code 'B3nbLKjzDIczLNMB' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '36' \
    --userId 'KDbMNMCfCyra0ww4' \
    > test.out 2>&1
eval_tap $? 13 'AdminListSchedulesByGoal' test.out

#- 14 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode '1yVpA6p19zHpzyg1' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetPeriods' test.out

#- 15 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'p7ietjKgsu7WX7Oi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminRandomizeChallenge' test.out

#- 16 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'o8WRJe0LV4NOhHZt' \
    --namespace $AB_NAMESPACE \
    --dateTime '1976-01-05T00:00:00Z' \
    --limit '57' \
    --offset '91' \
    --userId '5kYK65FR6pxIdT4A' \
    > test.out 2>&1
eval_tap $? 16 'AdminListSchedules' test.out

#- 17 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode '2ROVlf7H1DBb2pg7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteTiedChallenge' test.out

#- 18 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode '1aWuR8yyOHG3czz2' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1978-06-28T00:00:00Z"}' \
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
    --body '{"appName": "NTcRyAMm3z5R8k89", "extendType": "CUSTOM", "grpcServerAddress": "dGWQIUFPQv8rDOnV"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateAssignmentPlugin' test.out

#- 21 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "nJJUmUk2LHtSUiSv", "extendType": "APP", "grpcServerAddress": "hpjRdZOuH0utoSQc"}' \
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
    --body '{"userIds": ["DKTbzmvQ2O7ah9wi", "cxHVrX2QtkSumLRo", "Rvt8g5zbKCgYEzIp"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminEvaluateProgress' test.out

#- 24 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["vPScvug10i2ClfCF", "VAj9vqzV9AjVjJWn", "2CkwUYjbfJldA8HO"], "userId": "N0jzyuQbhMmm8CUx"}, {"rewardIds": ["d8hjIvMxp09Q7uEy", "lJ89qWzZGNB4JwK3", "cv4kF7uCsLc0JKZZ"], "userId": "svLu7pYtfx3AShAQ"}, {"rewardIds": ["GWHasgYW2THG1zQ3", "vDU3tPxzBrj8WI89", "NFc86CsHkbIjKeRn"], "userId": "MCKYgaJLXEIyf3xr"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminClaimUsersRewards' test.out

#- 25 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'ZHjjNEFUybrmqRhQ' \
    --namespace $AB_NAMESPACE \
    --userId 'dR2vCwXURiQjYVtB' \
    --body '{"goalCode": "MlJGQwD9Nc6hPWgb"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUserRewardsByGoalCode' test.out

#- 26 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'Nn7qcwxnAPCqQKOO' \
    --namespace $AB_NAMESPACE \
    --userId 'CTPVQvhzClHVzK5i' \
    --dateTime '1997-07-03T00:00:00Z' \
    --goalCode '6FwoIL3qUuWYBdB2' \
    --limit '84' \
    --offset '83' \
    --tags '["YMtvExJuTQevqoG2", "7jWPkhm2cTBh84vv", "YcM9OZQQ4LIy7ShU"]' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetUserProgression' test.out

#- 27 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'tuSiPI69X9TMRsSR' \
    --challengeCode 'aKmCoQsCtOteXddV' \
    --goalProgressionId 'mt1jfKt2VCMfpJtV' \
    --limit '92' \
    --offset '38' \
    --sortBy 'createdAt' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserRewards' test.out

#- 28 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'AHdjYhl6G5xAnbXr' \
    --body '{"rewardIDs": ["PaXDgrt1fjng0z16", "ra58G0fiOBib6ghl", "JOgmu1npWOIEZ8D6"]}' \
    > test.out 2>&1
eval_tap $? 28 'AdminClaimUserRewards' test.out

#- 29 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'DcUj5UG4Z2AMeYEh' \
    --limit '77' \
    --offset '49' \
    --sortBy 'updatedAt' \
    --status 'INIT' \
    --tags '["DCYkZ1RzRPh6ThB9", "wBONm1cQ9bxOrE9g", "i2ZQ6XO1O639RaxS"]' \
    > test.out 2>&1
eval_tap $? 29 'GetChallenges' test.out

#- 30 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode '0bOtQMO48DeNWMaT' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '22' \
    --tags '["2pd6mzeb4wlXZig1", "JrnIiV2ko3G7dEii", "m0VzZ1jXZZ6qquhm"]' \
    > test.out 2>&1
eval_tap $? 30 'PublicGetScheduledGoals' test.out

#- 31 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode '5eyvOTejs1h6wx9A' \
    --code 'CkqmVhStren3NOVN' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 31 'PublicListSchedulesByGoal' test.out

#- 32 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'ZVcgOpa1NYzRiFRo' \
    --namespace $AB_NAMESPACE \
    --dateTime '1988-09-30T00:00:00Z' \
    --limit '20' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedules' test.out

#- 33 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'bw9YMPTtavvBQIuf' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "h9IS8JvlWJ7XJYIO"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicClaimUserRewardsByGoalCode' test.out

#- 34 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'EvaluateMyProgress' test.out

#- 35 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode '5x3Jy4hlsGDiEgyV' \
    --namespace $AB_NAMESPACE \
    --dateTime '1994-09-04T00:00:00Z' \
    --goalCode 'GkMaA49Csixe0gDD' \
    --limit '32' \
    --offset '30' \
    --tags '["4Ta9NZ6NaoKiifCp", "ZcHS7Y98b6tyKsZH", "bHRNgQ6pL0zIvOig"]' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetUserProgression' test.out

#- 36 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'oR90xik4R2nZSFPR' \
    --index '45' \
    --namespace $AB_NAMESPACE \
    --goalCode 'kJfRYel3FGvTbZ5V' \
    --limit '27' \
    --offset '62' \
    --tags '["dYtZTvtRIOUtK9XV", "2iBhEZ3cytPEqFEp", "VWKgQKaZfJ9HJwn7"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetPastUserProgression' test.out

#- 37 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'VUOSRAMdx7sd0FnR' \
    --goalProgressionId 'ui8jTIdlpk3zixtO' \
    --limit '18' \
    --offset '15' \
    --sortBy 'createdAt' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetUserRewards' test.out

#- 38 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["bu5IxFVbDt2oQokA", "uvlObvDRPP6Y6CN1", "OtIhntc6jOSvwLsN"]}' \
    > test.out 2>&1
eval_tap $? 38 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE