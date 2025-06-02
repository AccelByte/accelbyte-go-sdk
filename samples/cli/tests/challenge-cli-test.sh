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
    --keyword 'rTzAXDmBJkNMigZW' \
    --limit '24' \
    --offset '45' \
    --sortBy 'updatedAt:asc' \
    --status 'TIED' \
    --tags '["GXlQ9wzUbElnDNFS", "V0AnEYRumFar18Vg", "yAvternPUl0IjXmD"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 90, "assignmentRule": "RANDOMIZED", "code": "VbI05uc2CKMiEVcR", "description": "RWoSG8WvSRb1FcYG", "endAfter": 35, "endDate": "1999-01-07T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "MDBEu9NgFXQAn0sD", "randomizedPerRotation": false, "repeatAfter": 43, "resetConfig": {"resetDate": 21, "resetDay": 46, "resetTime": "ZnGEasptwT88AR1g"}, "rotation": "NONE", "startDate": "1991-08-22T00:00:00Z", "tags": ["6s3bxHCc70VD05s9", "ORqpg7E7i9hPzXvY", "JFjFlQ9cWbBNmD4O"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId '1RAQ30B5ldRzcOQN' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'KCaBGcNxN1MeZ5mo' \
    --limit '4' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'aUtGioDE9AtmGQZ0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'GjoSKmCqqTpDGcKi' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 44, "assignmentRule": "RANDOMIZED", "description": "XD1lYaEg4NIgSjvk", "endAfter": 85, "endDate": "1997-03-02T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "zNZNOT9nFPkqqqxc", "randomizedPerRotation": true, "repeatAfter": 42, "resetConfig": {"resetDate": 97, "resetDay": 89, "resetTime": "mFGcRqdbCNJWtGe1"}, "rotation": "MONTHLY", "startDate": "1984-05-02T00:00:00Z", "tags": ["rJBGKXhyu34tQvmC", "uJe7onHweqEJ1UL1", "HWbkJFySWoQodTps"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'cxbGFGcDPMtPXT2y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'zB6FCxV1wHs0u5Ge' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '16' \
    --sortBy 'updatedAt' \
    --tags '["qAevTopoPHVKOQfF", "nbK1P1AxQ9mtwVb1", "RNuoV5i8CHImlNA4"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'ybkLHzD6gy0lfk0r' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MTjhaYlPs9XOv4db", "description": "MWvn4X2EU3UYM9e5", "isActive": false, "name": "GYC8mD4v3aVsLFRB", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "pu341JGJtj1EW8Ex", "parameterType": "ENTITLEMENT", "statCycleId": "4VMNVrHzrtYKNfXQ", "targetValue": 0.2644100740229287}, {"matcher": "LESS_THAN", "parameterName": "c8xPH0yWFNv4xeSI", "parameterType": "ENTITLEMENT", "statCycleId": "Kk98oMsu5OFmyBRJ", "targetValue": 0.984692271189084}, {"matcher": "EQUAL", "parameterName": "3MeHYy3VNVDK24An", "parameterType": "ACHIEVEMENT", "statCycleId": "sOpEtsv2cOOoWn0u", "targetValue": 0.31067210117972954}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "ktNOnUAbQcamwKH1", "parameterType": "ENTITLEMENT", "statCycleId": "rYQdA8UZ2vEmgeE6", "targetValue": 0.6714136488520783}, {"matcher": "GREATER_THAN", "parameterName": "AbUIliQ9xsWKwyok", "parameterType": "USERACCOUNT", "statCycleId": "hvgeNV40pvjDDlc8", "targetValue": 0.12785648827796803}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "vo1VCdox0NF1V3dN", "parameterType": "ACHIEVEMENT", "statCycleId": "XRD6wx5MULSjQlYE", "targetValue": 0.17201333642372563}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "md3jJ23Yt3jxzEZb", "parameterType": "USERACCOUNT", "statCycleId": "hCQ42kuulxi67rqc", "targetValue": 0.3713649760576302}, {"matcher": "LESS_THAN", "parameterName": "0us6FD8mFyxYeVBf", "parameterType": "ACHIEVEMENT", "statCycleId": "myu0vuDNJ0kBbdhv", "targetValue": 0.603786849127418}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "MqEBcfYtxfiZf5CX", "parameterType": "STATISTIC_CYCLE", "statCycleId": "0CFZMp7CAMTmeFiA", "targetValue": 0.5277843970139242}]}], "rewards": [{"itemId": "HC0QTDemqaj08AMp", "itemName": "BgF8tjTIITKTGVSQ", "qty": 0.18372379723120202, "type": "ENTITLEMENT"}, {"itemId": "tCsK85fzH9tc2P0n", "itemName": "JTgRkhP3DSYJjFCG", "qty": 0.4958523942567131, "type": "STATISTIC"}, {"itemId": "H8SGv38Yo194YunG", "itemName": "Vlml8QB0NfRacpXW", "qty": 0.14318455633371707, "type": "STATISTIC"}], "schedule": {"endTime": "1977-09-26T00:00:00Z", "order": 86, "startTime": "1985-03-12T00:00:00Z"}, "tags": ["OaOl0JJCHBKMWcYL", "eTP0dURspzVsdtdV", "7Wv194W322H153mt"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'kSbBWWx1qRgEc51b' \
    --code 'jpYAMybjB0qv7Cr0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'eHVWuxc423yrDahy' \
    --code 'w4aa4EX9dfuHgS7b' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hh1MFsiegUQmbTT2", "isActive": true, "name": "nz0JrPw3ey5qCJGJ", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "SJG10ErTcME5v63u", "parameterType": "ACHIEVEMENT", "statCycleId": "068LBXfDIZN5Kga9", "targetValue": 0.44522853062829604}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "otJwX2lRKsaSHDvI", "parameterType": "STATISTIC", "statCycleId": "r8Omzfhs1pJeQTzD", "targetValue": 0.5138034649056051}, {"matcher": "GREATER_THAN", "parameterName": "9iPQBLfhn0vwF5eM", "parameterType": "ACHIEVEMENT", "statCycleId": "0y7Ef998gMM6JWgT", "targetValue": 0.8109979335202453}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "WqCrGzufeie9u46i", "parameterType": "USERACCOUNT", "statCycleId": "k714uWCgBEXPHxLo", "targetValue": 0.6941187317405175}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "UF6RuVcEGmM1GXe9", "parameterType": "STATISTIC", "statCycleId": "0DyRi3VnhU02GsJ4", "targetValue": 0.5889255092937021}, {"matcher": "LESS_THAN", "parameterName": "nczsP7NT2XajwW3y", "parameterType": "USERACCOUNT", "statCycleId": "83M07Q7O8QPfd80l", "targetValue": 0.6706363244696294}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "drerazAMPe94JnGb", "parameterType": "ENTITLEMENT", "statCycleId": "VfEDl28zIbnMd4gu", "targetValue": 0.06172645571574109}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "FYXEyUxQmJyat0MV", "parameterType": "ENTITLEMENT", "statCycleId": "dJpwn2YATAUVHpbu", "targetValue": 0.6901277043226205}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "P9B07cGo1z8UZo8U", "parameterType": "USERACCOUNT", "statCycleId": "Ii9hn7kVEcX5FFqJ", "targetValue": 0.6619532815470677}]}], "rewards": [{"itemId": "AVgfELtyYo51aF5i", "itemName": "PwwoMRNuhB0CgZlm", "qty": 0.38763243119007396, "type": "STATISTIC"}, {"itemId": "vmqhLHwmZSCxOi7Q", "itemName": "Ny5unEmMNTSzHk7H", "qty": 0.9427286257396601, "type": "STATISTIC"}, {"itemId": "8dOgofMgEg7eaqMR", "itemName": "vz4qMurhTCDYwGNM", "qty": 0.8966270905831825, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1990-11-03T00:00:00Z", "order": 10, "startTime": "1982-07-11T00:00:00Z"}, "tags": ["JFXiUlrFVBTdeGHY", "MJxn9QAKv1JvjQ8g", "AvwtCcRWf4DZ1JQ5"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'AdeJY1XaGYTCTrAq' \
    --code 'yScuRgYzXBRFsjgH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'nBgeihEU9KTMVO4s' \
    --code 'AzDfmeeFFSTZbJHU' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '54' \
    --userId '4H8c5Xhh513doaFe' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'nsnlx3W78R1VI6ad' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'FnTSw3n98QmHf3sq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'rHTqxyVlJRI26FrS' \
    --namespace $AB_NAMESPACE \
    --dateTime '1972-04-02T00:00:00Z' \
    --limit '43' \
    --offset '54' \
    --userId '2846mkWKsRKRqJfd' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'I2rftCN1CEaRMoP8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'KmP8v39WSxHamhHV' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1979-12-19T00:00:00Z"}' \
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
    --body '{"appName": "3MvI3BjEoNQzRvR2", "extendType": "CUSTOM", "grpcServerAddress": "5buS9BuWz6eJVnV1"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "RRPEv1ljELT7e4x7", "extendType": "APP", "grpcServerAddress": "f4sAksg9p9q5byOY"}' \
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
    --body '{"userIds": ["dRVeT5NYfImaMWsz", "0DLGnY1c1CgnY2zN", "UzVVUeqBGbrjlQwt"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["9XG3Gj0sp0zx87tx", "28He6GZDLtcWktKJ", "no8b3kD7WA7vvRJP"], "userId": "l1gJLPpjNtmedkgC"}, {"rewardIds": ["WUSHu4pGY9FNXKtv", "MW6xwEnSHHKQumqf", "vVIw6Lhm6COXi8jT"], "userId": "qgcRiPkl9pQy6bcD"}, {"rewardIds": ["bvrriSR0VkKh6um8", "2L82g614uADVE9jW", "og2GmLPC0z6MyiK8"], "userId": "rQeGm1CVosbnpDxl"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'K6TPUUXDxEedbQL9' \
    --namespace $AB_NAMESPACE \
    --userId 'Qboqovj31lMXGYh5' \
    --body '{"goalCode": "X7bsJ9uujSOUtW6C"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'doPXM3Baq27k6jeX' \
    --namespace $AB_NAMESPACE \
    --userId 'DSTILtRh5FusYAp0' \
    --dateTime '1993-07-28T00:00:00Z' \
    --goalCode '7J7DQ11uJ11zRUHu' \
    --limit '54' \
    --offset '77' \
    --tags '["oszSGonyzEbyGRbG", "A8ckYLdMrrloewXz", "RWhpUMnpTJdbrIw7"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'omcH8pkcHtBWdibh' \
    --challengeCode 'SDYHWgevOujyvFSU' \
    --goalProgressionId 'ex4arANSRR03X2dQ' \
    --limit '67' \
    --offset '90' \
    --sortBy 'updatedAt:asc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'IIKJTn6dNffzf1wJ' \
    --body '{"rewardIDs": ["99Rbrwm5gvBnVU70", "9VeCt0T7VBYrrXua", "dnLIgTePnNBZ3V1h"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'XB8Sn9HjdDNyilMF' \
    --limit '33' \
    --offset '20' \
    --sortBy 'updatedAt' \
    --status 'RETIRED' \
    --tags '["r1TfO891eoxLFl7i", "WQAr9EiWAyzvHA5B", "t3V5Qv8xXI47X4zw"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode '5BBMeNmM1h7bSuOd' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '80' \
    --sortBy 'updatedAt' \
    --tags '["HwAvi7fvziUnQAWJ", "vFN06IGA36AbjpPM", "PTRoEdIkYdSBTYV5"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'eR8vKzuPaNjCEEMF' \
    --code 'nOTgOjorxw6g84g3' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'zaIIBY3NwyzPaMXq' \
    --namespace $AB_NAMESPACE \
    --dateTime '1996-01-01T00:00:00Z' \
    --limit '67' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'vs1b9umCq5atoeAX' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "E6eFQpxJAdbs9uKo"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'Kp3xD1fhlcSGTAkV' \
    --namespace $AB_NAMESPACE \
    --dateTime '1993-09-13T00:00:00Z' \
    --goalCode 'MaUq8esHw6TINzWV' \
    --limit '85' \
    --offset '24' \
    --tags '["gkHEQ8vhcDiFBRwa", "wuwEZVJytL6020kL", "obWApxQiNODeoxnl"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'PdrHXkfIjFlasWNE' \
    --index '62' \
    --namespace $AB_NAMESPACE \
    --goalCode 'izCuRAmbIzRRZjCu' \
    --limit '34' \
    --offset '71' \
    --tags '["jeCYrvlTSljO5CqJ", "tcMxUlqme4nLZAgt", "uinLZLdOI0HtEtNF"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'NwujyzogdjYhl1dH' \
    --goalProgressionId 'rdaYdSuYcgSuSQW1' \
    --limit '40' \
    --offset '28' \
    --sortBy 'updatedAt:asc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["Cd0EpCNbVsNasxbK", "Gdp7qXkrCkUqZrYE", "cr5cNLk5FRuN7khg"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE