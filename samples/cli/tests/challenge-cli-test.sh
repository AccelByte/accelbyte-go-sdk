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
    --keyword 'f4fStRUlcOVvjS0q' \
    --limit '69' \
    --offset '56' \
    --sortBy 'updatedAt' \
    --status 'RETIRED' \
    --tags '["9pTY7Lh6wIsa0z6S", "2Q11wJrDNEbN9cqP", "VQSPa9hNDmlD1Fep"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 37, "assignmentRule": "UNSCHEDULED", "code": "FpArpcEQhzyy1K3m", "description": "rNvdaJudbStOPIsQ", "endAfter": 44, "endDate": "1997-05-08T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "DxtBlQnuXtc4QPYt", "randomizedPerRotation": true, "repeatAfter": 27, "resetConfig": {"resetDate": 90, "resetDay": 20, "resetTime": "njdUVLwMSZBhql1S"}, "rotation": "DAILY", "startDate": "1999-04-25T00:00:00Z", "tags": ["kJEFRI1RT3TkEo43", "SFe4z79SZeEr9MYz", "ipePS3hKrGEd8TDL"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'iS0ytxGjB1TRkQMA' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId '5aVYoP3juWVYVSUB' \
    --limit '53' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode '97JkxjvW23UjiN9P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'xaoeh3PoSXZphziE' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 59, "assignmentRule": "FIXED", "description": "OKX1hJsbzjB8eWrH", "endAfter": 50, "endDate": "1981-07-20T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "enidIEO3beL0G5tv", "randomizedPerRotation": true, "repeatAfter": 50, "resetConfig": {"resetDate": 79, "resetDay": 5, "resetTime": "ARCocZ8k5I0qSdCo"}, "rotation": "MONTHLY", "startDate": "1986-11-03T00:00:00Z", "tags": ["LztPGuaInDgC7AXC", "7mSjMTambBHg5VsL", "QwQtbUt643PnK0HK"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'AKyg58P9V1bqyuZm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'NB6nfJD5KMi5oT6l' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '63' \
    --sortBy 'createdAt' \
    --tags '["D4gj26sTvQSIvbCA", "XsK3cC2eCb45cndI", "37PkkXjxn3xQwfCE"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'ayfguxw5cw4MvkHO' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ClvZxzPzo6yqXUne", "description": "1fTKslnVvO85IQbK", "isActive": false, "name": "lyASku6iweslUxRj", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "xIHOcA75aFsWMU9t", "parameterType": "STATISTIC", "statCycleId": "SenyMlNRMUNJJtv4", "targetValue": 0.2559006823561556}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "0Wb2ZcAcb1H4VZO1", "parameterType": "STATISTIC", "statCycleId": "4FXiqt2OvrIMVMQI", "targetValue": 0.37257945160655637}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "ame2C3zm8UenZfci", "parameterType": "ENTITLEMENT", "statCycleId": "XXnVlJKwfSO7rkLF", "targetValue": 0.23176969386755997}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "WeA30O7hADyMZEX2", "parameterType": "STATISTIC_CYCLE", "statCycleId": "ClXmg9yj59mYaiWL", "targetValue": 0.6994916276623254}, {"matcher": "LESS_THAN", "parameterName": "HO2c3zf9YqMbLqSo", "parameterType": "ENTITLEMENT", "statCycleId": "83BniDchJIYoC0hn", "targetValue": 0.6924452683415987}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "5uZXq94NABqmeDXT", "parameterType": "USERACCOUNT", "statCycleId": "pCOAIzvjYx64Xk6I", "targetValue": 0.6034421683826273}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "0xuq29tYsMRHfNDJ", "parameterType": "STATISTIC", "statCycleId": "NOyf0OUz29HjxhLN", "targetValue": 0.10034057558576426}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "JMPypRzG60LW9J3B", "parameterType": "ENTITLEMENT", "statCycleId": "5DCldJkF8UGbafzC", "targetValue": 0.9719427015579811}, {"matcher": "EQUAL", "parameterName": "x7NFS5Vg4z5Lf9IY", "parameterType": "STATISTIC_CYCLE", "statCycleId": "25OWPkR0gRvDo4Ly", "targetValue": 0.31290090920787617}]}], "rewards": [{"itemId": "CxS5gtVb6bMwAbDq", "itemName": "iSs84Y9Ih6GvZqrf", "qty": 0.3119587683702867, "type": "STATISTIC"}, {"itemId": "BxPf9dt1GyKJcdSH", "itemName": "JhpqfTEZlSuRc4b7", "qty": 0.40693992349321595, "type": "ENTITLEMENT"}, {"itemId": "WHG1JqwBVsdjfW0k", "itemName": "tUHMXjBd6D6RCbdJ", "qty": 0.39633192762396985, "type": "STATISTIC"}], "schedule": {"endTime": "1976-06-09T00:00:00Z", "order": 14, "startTime": "1974-10-07T00:00:00Z"}, "tags": ["F5KbJSQLr1fiFWQp", "aV1LRGFJExEqwr7x", "ugMqgzbtPg6dxzEv"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'ehGrtqBzt8zyNZvt' \
    --code 'rzIbijYkSmCgSlWd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'TEwYLTAa38sGUEXe' \
    --code 'WpjTZOtkjLNHvcNC' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "w34Kh0dUgiWS4Kq9", "isActive": false, "name": "oj6WpH2mZGEtPtgu", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "6YvnyflYFFg6FaPy", "parameterType": "STATISTIC_CYCLE", "statCycleId": "KWqZ4GZXl0Wza4uJ", "targetValue": 0.2768460688188037}, {"matcher": "GREATER_THAN", "parameterName": "Wxh8CD67jRZo1PwM", "parameterType": "ACHIEVEMENT", "statCycleId": "Alw8jM87sGwSdrm8", "targetValue": 0.4529609283132179}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "KwHaU6lZLZLyzhVC", "parameterType": "USERACCOUNT", "statCycleId": "SQu9PPSk03eO6ceY", "targetValue": 0.3421007118904317}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "DtSxhUyUacytAHfp", "parameterType": "USERACCOUNT", "statCycleId": "fwtO7PpTOeCNQzJl", "targetValue": 0.828096168998456}, {"matcher": "LESS_THAN", "parameterName": "PrtgDP63uWqsyiY8", "parameterType": "USERACCOUNT", "statCycleId": "GigqTkZ19c8aAkKm", "targetValue": 0.5589201483365522}, {"matcher": "LESS_THAN", "parameterName": "HbTD6rnsrKbqcqCL", "parameterType": "ACHIEVEMENT", "statCycleId": "2NCsODYBsZo6SO79", "targetValue": 0.1045580128048107}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "uLxc5HZsXymBbg9K", "parameterType": "USERACCOUNT", "statCycleId": "IPslFtRTGOiu04Vf", "targetValue": 0.8668478786806327}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "kRdMwf2U7gLwo1su", "parameterType": "USERACCOUNT", "statCycleId": "kWKTo7OxxKtvzWyx", "targetValue": 0.9349497541563292}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "nc3J6w3TFGWfZ9cF", "parameterType": "ENTITLEMENT", "statCycleId": "vxmCaZni8gYi2Mzn", "targetValue": 0.6354641597146296}]}], "rewards": [{"itemId": "R81Hll8rckRXeyPU", "itemName": "1u2A3icmJI6Gee1V", "qty": 0.7760518692125588, "type": "ENTITLEMENT"}, {"itemId": "x7KOWzfQiXJvsesL", "itemName": "tgAlFivfj7aOtaGB", "qty": 0.6815081659517988, "type": "ENTITLEMENT"}, {"itemId": "KUTtUky3VJ8Wo22r", "itemName": "6yDOK7Qw54G1XSSx", "qty": 0.46472897501346155, "type": "STATISTIC"}], "schedule": {"endTime": "1974-07-02T00:00:00Z", "order": 61, "startTime": "1971-10-07T00:00:00Z"}, "tags": ["QzbN6VxchWA92Bgs", "evybK1XuKtzIAK6Y", "nyhArlUoZgJb3BJd"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'hoUcgRR5nPD3BB9j' \
    --code 'NERSvdy8QgF4hhJZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'YqZz9js8HsmUsk6c' \
    --code 'UfDSuH72hZlEyjr8' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '16' \
    --userId 'OEocAxZQHmjNEuCH' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'pwVnVuK2Hg2xIADs' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'dYvOOjHLDYAdbcAc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'MyhJ6o0EJy1DFDWH' \
    --namespace $AB_NAMESPACE \
    --dateTime '1991-10-24T00:00:00Z' \
    --limit '31' \
    --offset '73' \
    --userId '1fdKriY208AIMg4G' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'Vc7huIqO9BMmy0Yh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'pPakKCsTWJ6Pho6g' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1971-02-02T00:00:00Z"}' \
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
    --body '{"appName": "h8lerZczT19DaZU8", "extendType": "APP", "grpcServerAddress": "rEbfCvQLz2BzRc29"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "EFtOhAFihN4O3Fmb", "extendType": "APP", "grpcServerAddress": "HLgMDC7olC9KKqML"}' \
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
    --body '{"userIds": ["AUBorJhbvDb6dtEa", "tog4d3adxhNjDmVT", "xW7Lf87e9ONPurME"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["5UwP95o7phxwJVX9", "LrdwE1NppZcl5gIF", "J7RnzyC0lBFjDr24"], "userId": "weOUddHFgmwCQXFT"}, {"rewardIds": ["JkgAdR3yxNltt7fk", "2nMOitdVFYcMKesO", "P76jghwKx76NMQGm"], "userId": "5dob9kRxcNdPXhum"}, {"rewardIds": ["sbh8xA7rOqQ4y2XW", "JHIFJugsHBPoRcYw", "vPyFbdj2LE5wYive"], "userId": "XXufEP7XlhaRfSCv"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'gVH8FWGiGmuoLqZx' \
    --namespace $AB_NAMESPACE \
    --userId 'XxY6jRnKKt9PPLpc' \
    --body '{"goalCode": "uTeaRbKmPBdV1nlt"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'N3WlSBt8vXUJMBt4' \
    --namespace $AB_NAMESPACE \
    --userId 'ap39lpKURyaUJsso' \
    --dateTime '1978-03-10T00:00:00Z' \
    --goalCode 'ItX4luREGM9VRTRY' \
    --limit '8' \
    --offset '10' \
    --tags '["R1O9io8GHf7onxf4", "N7O2JdXKXTEvZwpF", "n2Pe5tpfNJFAk2Uw"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '2dhBW2bAnKBdvAaH' \
    --challengeCode 'WsRqJiYUBCF9aKHS' \
    --goalProgressionId 'qOViInNgg3qJm7c7' \
    --limit '42' \
    --offset '12' \
    --sortBy 'createdAt:desc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '2MXwLJX3ds9aXusD' \
    --body '{"rewardIDs": ["74xQsC3qQS87H4mx", "EtJ9D8eGClMd0VGF", "izhiSKscxkBcFdGv"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword '3e0cFqBVGFJCW8Ap' \
    --limit '99' \
    --offset '9' \
    --sortBy 'createdAt:asc' \
    --status 'TIED' \
    --tags '["88DcgVcbZCxxdpWJ", "IIHfFp2zlCMyhBzp", "CtH4AtHonT6HxcUz"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'RQWPiW0Qr8r2TVFd' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '25' \
    --sortBy 'createdAt' \
    --tags '["654tUba7Mgs83Koc", "EX4eRXk758StOBO3", "vsAZHUtD9nIrMQ8D"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'JjRCjQd6yRRduTVI' \
    --code '0bvBPTnIQfIodsxG' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'V8QsIZ0FuYUGsrFA' \
    --namespace $AB_NAMESPACE \
    --dateTime '1987-06-15T00:00:00Z' \
    --limit '76' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'aDayKlKATdJv47fc' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "uQzH568otat4gFaP"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'ncAvUoNcwVHYHcFd' \
    --namespace $AB_NAMESPACE \
    --dateTime '1999-07-16T00:00:00Z' \
    --goalCode 'PfNOYK9m3RgFhhMt' \
    --limit '72' \
    --offset '93' \
    --tags '["17NmrrcFChBqJnrf", "lXKCilbNmZITTTxe", "BxtE6kTGvEsHwMGT"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'sfTYMGRKc3Kvlc3v' \
    --index '78' \
    --namespace $AB_NAMESPACE \
    --goalCode 'pvUmX2ouS1QjxHnd' \
    --limit '45' \
    --offset '64' \
    --tags '["4diQGHr7AAqRY5Ay", "pIaRhl7k87NrCqBc", "ARA6OOoy5TwZIPod"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'KqgPBSW6yk5qhUaq' \
    --goalProgressionId '5gfDLQUpFg59D1MT' \
    --limit '2' \
    --offset '53' \
    --sortBy 'createdAt:desc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["0bMz172vo6rDiWNW", "eGenFDxFyP8Y2QO7", "0qZT71ilKz1xUXgF"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE