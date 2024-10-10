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
    --limit '53' \
    --offset '56' \
    --sortBy 'W4rIlPToYlFPgvpd' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 18, "assignmentRule": "CUSTOM", "code": "oOcHaGAgFZBOJlvo", "description": "AxjXMxaOD73vE8zX", "endAfter": 29, "endDate": "1997-01-29T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "mVsTtPRbRAwDNRhV", "randomizedPerRotation": false, "repeatAfter": 38, "resetConfig": {"resetDate": 76, "resetDay": 35, "resetTime": "CsmBrj4WI9yp5zG5"}, "rotation": "MONTHLY", "startDate": "1976-03-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'lmAHEggAaFSpl6SF' \
    --limit '8' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetActiveChallenges' test.out

#- 5 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'nBvxRdZImXFR4O4T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetChallenge' test.out

#- 6 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'jtDpGKJLjJhWalm4' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 21, "assignmentRule": "FIXED", "description": "3oJkRihJ42CYI77b", "endAfter": 24, "endDate": "1996-04-30T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "Dpr6CvGyzm34ZSje", "randomizedPerRotation": false, "repeatAfter": 76, "resetConfig": {"resetDate": 11, "resetDay": 29, "resetTime": "jO9ih6GRF2OmIak9"}, "rotation": "DAILY", "startDate": "1975-09-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateChallenge' test.out

#- 7 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'KdXg0TnSCLujGnzi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteChallenge' test.out

#- 8 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'v0bU37aWRhdTYW6A' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '97' \
    --sortBy 'nMvrgRncT6kvV6kO' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetGoals' test.out

#- 9 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'ZNoWSa7BqStDpM1b' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "GGYEIyedFDuataVf", "description": "gYgnZbCtzq4YEZkp", "isActive": true, "name": "5yUFWOkfSdz1gDUq", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "1I43K7C7zeFmZpzW", "parameterType": "ACHIEVEMENT", "statCycleId": "vT8HCiExFjQo2A3Z", "targetValue": 0.8513320004938504}, {"matcher": "LESS_THAN", "parameterName": "6JQX9gxG8pmx7rHc", "parameterType": "ENTITLEMENT", "statCycleId": "2RB4Xr5fwCJUTXoi", "targetValue": 0.9375687518421345}, {"matcher": "EQUAL", "parameterName": "tQJVSJRNv5KqD9g1", "parameterType": "ENTITLEMENT", "statCycleId": "HBnAjnmWoUmIB4MV", "targetValue": 0.21434162834789972}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "sxo0vMcRO6GCqwhr", "parameterType": "STATISTIC", "statCycleId": "u1QRo0M64JnKCz2B", "targetValue": 0.018522530794876202}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "cg54p81TOnLFVZeE", "parameterType": "ACHIEVEMENT", "statCycleId": "QIVCp6sThn6hqWcr", "targetValue": 0.6437112339196621}, {"matcher": "EQUAL", "parameterName": "3IeJG98voT3Vr81s", "parameterType": "STATISTIC", "statCycleId": "OERYBy5gxJ5v5VBi", "targetValue": 0.5001085116621683}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "VDlucH7E26tTVxSX", "parameterType": "ACHIEVEMENT", "statCycleId": "GmFnSVbOfjeR5a1R", "targetValue": 0.43928672780876954}, {"matcher": "GREATER_THAN", "parameterName": "Xoc1JkG9gKKuzCSW", "parameterType": "STATISTIC_CYCLE", "statCycleId": "hNCO6I97kufipGXX", "targetValue": 0.07663276499115845}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "d2Mdtmh4Gzuqkv9N", "parameterType": "STATISTIC_CYCLE", "statCycleId": "jAdgAr2R2UnaeDuM", "targetValue": 0.7549340886231455}]}], "rewards": [{"itemId": "MphPeENHf0lE4yPF", "itemName": "ODcrWlbDyrhC56f0", "qty": 0.46808066503379175, "type": "STATISTIC"}, {"itemId": "BdcGJqkSXjLTwk7D", "itemName": "O8UJIGmr22H6pTfb", "qty": 0.8066158030585064, "type": "ENTITLEMENT"}, {"itemId": "2EW2aO02NiUPYbmN", "itemName": "pRl7IsokRfqmUjLX", "qty": 0.9706299001050402, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1972-05-20T00:00:00Z", "order": 47, "startTime": "1976-10-10T00:00:00Z"}, "tags": ["nr9vJBbhN9HD902u", "AVxHpIlx3AraA6sH", "BbkDmZXquVPh4KUN"]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateGoal' test.out

#- 10 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'BDFr5hnLWgp1ugVG' \
    --code 'JjDTWOq7ssWT9OVn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGoal' test.out

#- 11 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'nyK68iJT5I7iMJjp' \
    --code 'fawKpdAekh3HWCoo' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "jr4MxiaITXzQ1SFA", "isActive": false, "name": "DGknOL3Pfblr9npQ", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "K2x1mX33N0tTD8OY", "parameterType": "USERACCOUNT", "statCycleId": "RdLOCtrUZ6IVmkiD", "targetValue": 0.4108422165473269}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "2O8MalxVTyNIHxkf", "parameterType": "ACHIEVEMENT", "statCycleId": "Zifjm1ppmllRx9Mh", "targetValue": 0.4251403064432787}, {"matcher": "EQUAL", "parameterName": "GHOPGNtY0QOVon82", "parameterType": "STATISTIC_CYCLE", "statCycleId": "vGd4dpLz9MTMkNOy", "targetValue": 0.9359298995842258}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "KdlBAq3ntxoBFvSj", "parameterType": "ENTITLEMENT", "statCycleId": "LMkE1fFOvEWp1nZo", "targetValue": 0.9461913883268587}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "AvvYI503WNHVjaqX", "parameterType": "STATISTIC", "statCycleId": "BTsDU56RWHgUEyQa", "targetValue": 0.735051980580489}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "0Ge6oYVDD9o9Rs8k", "parameterType": "ENTITLEMENT", "statCycleId": "sSs2DeCapt3arAyB", "targetValue": 0.9226247869860292}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "gvM9e4CfjFxvyOBj", "parameterType": "ACHIEVEMENT", "statCycleId": "NcxYmYyrvkqp1hef", "targetValue": 0.8480279106344671}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "L73RHHSDGsKkgHII", "parameterType": "USERACCOUNT", "statCycleId": "UhDsHvNUT4xP1AaX", "targetValue": 0.8631904064003858}, {"matcher": "LESS_THAN", "parameterName": "AEv6Sqv0zokvlQkn", "parameterType": "USERACCOUNT", "statCycleId": "15iXSagslT1Arw7a", "targetValue": 0.34814246418109385}]}], "rewards": [{"itemId": "MvxUTlnAde4uCyTv", "itemName": "7UhZ1Ekdew7HIXua", "qty": 0.9633799532393538, "type": "ENTITLEMENT"}, {"itemId": "nbWOWKT5drT5Va6T", "itemName": "GiTp2gzwr6SxSGCi", "qty": 0.5063974426605845, "type": "STATISTIC"}, {"itemId": "uHEKAM3BYgwovWrl", "itemName": "Owq60lhPcTUsmxlf", "qty": 0.8721204116488713, "type": "STATISTIC"}], "schedule": {"endTime": "1985-05-23T00:00:00Z", "order": 33, "startTime": "1988-11-18T00:00:00Z"}, "tags": ["U8wwrT1vAiJJfuqu", "YDwtZEFODfZHxtjK", "BEZCKSxZVGyjYOX6"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminUpdateGoals' test.out

#- 12 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'sKBAcnHEeOFiXhyO' \
    --code 'UoFR8INPEHtJY8Lg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGoal' test.out

#- 13 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode '4tlQ7STYjgTKSvIH' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPeriods' test.out

#- 14 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'SCpr47PCHj68leDP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminRandomizeChallenge' test.out

#- 15 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'nczVOpHkhq1BlVug' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteTiedChallenge' test.out

#- 16 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'pY1005mMwymrKess' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1979-11-02T00:00:00Z"}' \
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
    --body '{"appName": "FlLixzPSuGSQbpTF", "extendType": "CUSTOM", "grpcServerAddress": "mQT3DN2CIUULgJcL"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateAssignmentPlugin' test.out

#- 19 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "6Sm14eTMoKm1lTzD", "extendType": "APP", "grpcServerAddress": "N3BSn2orP0697Wvb"}' \
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
    --body '{"userIds": ["xruDbtbnTyQniUdn", "bZ67PPr3i3lJ3xZ0", "yaPd24685iuBLcfR"]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminEvaluateProgress' test.out

#- 22 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["AtGnUkLfn6JDDhDr", "V6OyEQ69GZyvKw4P", "nOfnShkI9LAWXyeh"], "userId": "7ke0YIwAAnbZdizi"}, {"rewardIds": ["jCLaKQOg34vkOQE6", "pVHW16NCWcCaJFct", "grcVlEZaUtok0xy3"], "userId": "xxS6epkJbH15wx5S"}, {"rewardIds": ["za1tpr3vnYR8Px0Q", "IxpAiJEn3PXcxELG", "m4tYEJfl7VAHGiDH"], "userId": "e3TvKhg3YMdEyMwH"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminClaimUsersRewards' test.out

#- 23 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'TZaFza0Sym5NpOEO' \
    --namespace $AB_NAMESPACE \
    --userId 'iY13AyuWtUkhEVWj' \
    --body '{"goalCode": "PBlkCVDpryb3mNqM"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminClaimUserRewardsByGoalCode' test.out

#- 24 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'k2We8IMXcnSj9dch' \
    --namespace $AB_NAMESPACE \
    --userId '9eVqJ1HPAvqgI3kz' \
    --dateTime '1995-10-12T00:00:00Z' \
    --goalCode 'eINoxHJBV6Hes9qF' \
    --limit '53' \
    --offset '63' \
    --tags '["REYXmpJ3qrGS0rqK", "wpkErifhKfq6lYoF", "KOzjZXgak7u1prI5"]' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserProgression' test.out

#- 25 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'GdnsByDBtcIXDVsw' \
    --limit '0' \
    --offset '73' \
    --sortBy 'qrMkTgGy0CMbnhB8' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetUserRewards' test.out

#- 26 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '4ggW6IpwVaLJEOk5' \
    --body '{"rewardIDs": ["Yfe8dqcKeIV9wLKf", "A5PggI3Cf9mUUamG", "LOueDQhvkWpxNeKN"]}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewards' test.out

#- 27 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '41' \
    --sortBy 's0CpDH5Qm8lz5TzH' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 27 'GetChallenges' test.out

#- 28 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'ZKsdhX90MevyJuUr' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '59' \
    --tags '["85HThVDSlFyMrKEl", "d4uoVbpiIJj8nqZA", "a13qKrd1BcqS9JsV"]' \
    > test.out 2>&1
eval_tap $? 28 'PublicGetScheduledGoals' test.out

#- 29 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'mKA3SfilaPaplMJH' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "kl5kLsmpvX18puG3"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicClaimUserRewardsByGoalCode' test.out

#- 30 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'EvaluateMyProgress' test.out

#- 31 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'qgn5XCyf3yI6N9GI' \
    --namespace $AB_NAMESPACE \
    --dateTime '1980-07-22T00:00:00Z' \
    --goalCode 'hho1PsW6PJ0IeLhK' \
    --limit '81' \
    --offset '73' \
    --tags '["6HCtUHnXqHt4z1Ze", "nCGVYKzTDjbi3b0q", "7rVtLlRK3DtiCE2g"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserProgression' test.out

#- 32 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'MPQyiVmNeGx2IM6g' \
    --index '72' \
    --namespace $AB_NAMESPACE \
    --goalCode 'p9CKgcFVVdfJLedP' \
    --limit '90' \
    --offset '39' \
    --tags '["91b0dLpex0afrEZo", "UR9FDqZyVaQVBOK4", "UJ3xGiS1dE1hZZBH"]' \
    > test.out 2>&1
eval_tap $? 32 'PublicGetPastUserProgression' test.out

#- 33 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '67' \
    --sortBy 'rEapdIP80NQIQyGh' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 33 'PublicGetUserRewards' test.out

#- 34 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["ARojIv00tOjlk9Se", "eniPQ8DUBI43jFn5", "BJizu5BwiggiGxO5"]}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE