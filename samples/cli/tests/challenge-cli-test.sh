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
    --keyword 'JI2g3yyWWeRs1JKD' \
    --limit '25' \
    --offset '93' \
    --sortBy 'createdAt' \
    --status 'RETIRED' \
    --tags '["DMlsexpY2QBrEW8e", "MWwwI3ofKkxqSk4l", "1xflYRTOfNxxpCsJ"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 59, "assignmentRule": "FIXED", "code": "MvLXHX0MXMh6Hqgk", "description": "igQCMIP9fjL6jQVd", "endAfter": 15, "endDate": "1996-09-27T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "I5BwGGtg44jUBJbM", "randomizedPerRotation": false, "repeatAfter": 44, "resetConfig": {"resetDate": 11, "resetDay": 30, "resetTime": "BHAEoQfoBAL13fb1"}, "rotation": "WEEKLY", "startDate": "1976-02-13T00:00:00Z", "tags": ["UW9hAVVlEYDCP88D", "N9kwTcn85gZuta8i", "7BfkoJ7TcK1Cwg0I"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'nTDLO4RyJudmhx3z' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'bEwCFmVITEq1NLal' \
    --limit '25' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'hzhrDX3uyfMXljOo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'ELCnnpJ6gDTBfhiV' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 28, "assignmentRule": "RANDOMIZED", "description": "s7YA5U7BJb16UPqo", "endAfter": 12, "endDate": "1977-05-25T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "ZXZma2JIC79R5wH9", "randomizedPerRotation": false, "repeatAfter": 7, "resetConfig": {"resetDate": 34, "resetDay": 29, "resetTime": "Yhb6FQJJMSpsNc2t"}, "rotation": "WEEKLY", "startDate": "1981-05-09T00:00:00Z", "tags": ["GeXQTmxqESlctknp", "gaA7KvzdXSGIar7A", "e8EvTgZxod8l8h9P"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'RWfSDpt9CtEPIsOk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'UKUTvGiFbmdqfqnS' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '63' \
    --sortBy 'createdAt:desc' \
    --tags '["g5jKf7HbmZF9PmfK", "uECt5RIt8Al5Vwbf", "2s6axFKVDp9Bv2jw"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'WATW8J4w1TOLLpem' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MLf2mLjuNAUxuEVF", "description": "Q1P2ynUHjLwcLrzx", "isActive": true, "name": "84TKi6tavLWFYWIP", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "zH5SHamy4yD2Fzwl", "parameterType": "STATISTIC", "statCycleId": "1EcJt41as67BwVKX", "targetValue": 0.6093119841559088}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "3XkqCZNGVfNoOSOq", "parameterType": "ACHIEVEMENT", "statCycleId": "osN30KTZbolLrRjc", "targetValue": 0.07862493630563883}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "qom8e7QHQ9iNg21E", "parameterType": "STATISTIC_CYCLE", "statCycleId": "NvQYXVVJjbIIx3N9", "targetValue": 0.14810070054691526}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "qNznccWf91DFuc8c", "parameterType": "ACHIEVEMENT", "statCycleId": "EdUtwim8dXpZn7Nw", "targetValue": 0.6644484634023275}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "cE9K4a6PjRa4wvuP", "parameterType": "STATISTIC", "statCycleId": "iBbFmfxaHrL2fh4w", "targetValue": 0.1269886361174739}, {"matcher": "EQUAL", "parameterName": "VwGSbPNA4g4NzVKX", "parameterType": "ENTITLEMENT", "statCycleId": "YXygIElOF8ijpiG4", "targetValue": 0.30453721158682157}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "yT7gsVgJ08VBzkCS", "parameterType": "STATISTIC", "statCycleId": "4SvXEghos8jFJlOT", "targetValue": 0.5201739266200089}, {"matcher": "LESS_THAN", "parameterName": "x2l3fzKNknQkEHhq", "parameterType": "STATISTIC", "statCycleId": "fiEe1fMCdalyTzQo", "targetValue": 0.6422593824899057}, {"matcher": "LESS_THAN", "parameterName": "byhhI3MAAEImQeS9", "parameterType": "ENTITLEMENT", "statCycleId": "OjSwRjd4FS79xOC2", "targetValue": 0.6302307572902996}]}], "rewards": [{"itemId": "AOPgOs52EPsvsdCq", "itemName": "ctr1T6fZoZ5i4JOo", "qty": 0.11654689331348933, "type": "STATISTIC"}, {"itemId": "RW2zvBnkDVcw7VkB", "itemName": "uLOyw1QLf1PISdUo", "qty": 0.748344889967515, "type": "ENTITLEMENT"}, {"itemId": "b1giaCnGMcsVWhIJ", "itemName": "S26X8J8xVriyhDGJ", "qty": 0.4479551087889224, "type": "STATISTIC"}], "schedule": {"endTime": "1973-07-05T00:00:00Z", "order": 77, "startTime": "1976-09-11T00:00:00Z"}, "tags": ["hdHMFctCIcBCLmTl", "xYXgwqxCaN2j13Dv", "oMgx9F9l0KZ5qVc2"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'rFOu8ltX91HI0Mgw' \
    --code 'Pbe0thZaKDBSPQ3s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'mPq7zosQHb7L0TEv' \
    --code '5seTCVMNSkXKC2ML' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "iqrKnIJkaz1ornLN", "isActive": false, "name": "3LT0e2Ab2etUaW86", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "NxaLLx9UNtm6vLnn", "parameterType": "STATISTIC_CYCLE", "statCycleId": "YzV3kz151taEFe82", "targetValue": 0.5575287113612587}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "lHBoaMZfzIU8pUZq", "parameterType": "USERACCOUNT", "statCycleId": "iUo7IDtaXHuFi0dA", "targetValue": 0.19736201556260247}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "OTtVREXOYQBkxCW7", "parameterType": "ACHIEVEMENT", "statCycleId": "4z9BDslKpXYdvoGg", "targetValue": 0.0034968577737096718}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "lnc1OIlm7kwvZkin", "parameterType": "ACHIEVEMENT", "statCycleId": "TEIhQrm5RDEVbiD2", "targetValue": 0.391556575131776}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "LjmElYoz0rnfxAVP", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Zu8IwpN1Bf6FBgo1", "targetValue": 0.7422119027607904}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "6EWmdYI3XPR66cFZ", "parameterType": "STATISTIC", "statCycleId": "mbxQc6QRG4hGV68W", "targetValue": 0.7473574905128894}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "Qpv4nFBzFfTildBH", "parameterType": "STATISTIC", "statCycleId": "ZqEuDUbKkuGZDRNR", "targetValue": 0.27335508697725597}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "A9FcvkS7bfBTxmq1", "parameterType": "STATISTIC", "statCycleId": "9eFEri4Quy8Lh3mA", "targetValue": 0.8732020236945045}, {"matcher": "GREATER_THAN", "parameterName": "dgBy7xicH9LpP3az", "parameterType": "STATISTIC_CYCLE", "statCycleId": "1oqD8QGmHUq5tzdD", "targetValue": 0.5032832145717234}]}], "rewards": [{"itemId": "CkW9Q1ZYfqL83x5K", "itemName": "lwMMM9W3WFE236ND", "qty": 0.0809429414525501, "type": "STATISTIC"}, {"itemId": "SYOHXvxktVGC1IJr", "itemName": "mXT3HRBas7vOF0uC", "qty": 0.5604644046269991, "type": "ENTITLEMENT"}, {"itemId": "dkr9m6R9e6zAb1u6", "itemName": "QqvVyKJU4hl2lxvF", "qty": 0.8311992227488634, "type": "STATISTIC"}], "schedule": {"endTime": "1999-04-07T00:00:00Z", "order": 5, "startTime": "1996-12-08T00:00:00Z"}, "tags": ["Su9prwmz1zlouCM9", "1tpRy70JPnoitifY", "9AdIex65KvB3VBR0"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'g7ujqGfFfFmxh0vy' \
    --code 'jcYtulN2UdLmglOu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'GBVnx9x7Yh4UBo6p' \
    --code 'OmhXs6QZCmNP4X87' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '33' \
    --userId '4WoOEWjzQOCTFbNN' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'pF10Tw6yyHOYcyok' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode '6Gefo1F9sfXWnGPS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'mhXkkC4xk9LSJDEB' \
    --namespace $AB_NAMESPACE \
    --dateTime '1995-07-04T00:00:00Z' \
    --limit '88' \
    --offset '34' \
    --userId 'dtVUJ6XeLx1XzJrT' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'SxD6sg94B8WMOL0k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'bhdC6F7TO8bw13Xc' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1997-03-15T00:00:00Z"}' \
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
    --body '{"appName": "HNl21cxcbqgYSpZN", "extendType": "CUSTOM", "grpcServerAddress": "6DNNuXqwi5D0JK2K"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "KHUgW0m5NGqtBC9f", "extendType": "APP", "grpcServerAddress": "4LYZ8P2A14OXsMNF"}' \
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
    --challengeCode '["1mQCKALRS3LUNDx9", "4zZTQ0f3y3XnfhR6", "uthKsZ3TkCn07FgW"]' \
    --body '{"userIds": ["kdbVrJXvrJBAm5s2", "fkPzCu7HXzNT90np", "m0VS2cCJSxnAXHwH"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["PxNjUuo2l8lk1deF", "igfPMK7Ctja8JX8c", "St2wcE16LeU6xpKr"], "userId": "XFtHC43pxpwd6y3K"}, {"rewardIds": ["C6dZyeEqF2FrMOLz", "xroXNe7hwp0AFKlv", "0h7ynFebi4WJ74HV"], "userId": "qsRbLIzXCspA1XyJ"}, {"rewardIds": ["v4mifgqjS3URAhgm", "vCK0t85zXUj70Qxp", "BZ97NIG76nAEPGI9"], "userId": "5cBgLzpLjh4ksPDl"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'gXprr0HCphdaG8gK' \
    --namespace $AB_NAMESPACE \
    --userId '9Q4Qr2kpgSNvKI8M' \
    --body '{"goalCode": "IYDFzIsKFS1O3dpA"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'HJ4nGtmH6ymPk475' \
    --namespace $AB_NAMESPACE \
    --userId 'rYr2vi8QGkcrEk5Q' \
    --dateTime '1998-07-16T00:00:00Z' \
    --goalCode 'itXZQRe83ZQIqmjo' \
    --limit '12' \
    --offset '51' \
    --tags '["BCJPrB27ZABdKdtH", "vjWWv6bQYTVZwktD", "4rcD4shypOPq5fpE"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'TQMSraD4obXuCvW0' \
    --challengeCode '0WD6YLPuCivkPqmF' \
    --goalProgressionId '8UsdZpwTqb5Wdtte' \
    --limit '71' \
    --offset '91' \
    --sortBy 'updatedAt' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'lCRNoS9YlyTPVIxR' \
    --body '{"rewardIDs": ["149nL9TEZLB9c6AP", "4OPVyUrB70LUo87L", "yirWXFoguyaT7csr"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword '5yM8VYqXHYJEuZrs' \
    --limit '34' \
    --offset '40' \
    --sortBy 'updatedAt:asc' \
    --status 'RETIRED' \
    --tags '["vHRJO9d8PGIDPIe9", "B7eFGspeKOMB84vF", "qOiGolyI4Wc3aC4t"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'D3OK2eVcpI5dSwld' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '71' \
    --sortBy 'updatedAt:desc' \
    --tags '["VKthRChw9KlXbIxR", "0elZQfhCzHvEaepX", "6iuqQkcYfLfWTfvh"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'VfEBHGqJDN0E1wBQ' \
    --code 't3jyZ5PhtAonwMrH' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'nVRJdk061GpHshCo' \
    --namespace $AB_NAMESPACE \
    --dateTime '1990-09-18T00:00:00Z' \
    --limit '64' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'bOWLsyrfjC8XkAgu' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "ch1Wracoc4VdaPNO"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["2ngzAXXftDWhnaP3", "NDsTUm8dNZjxMPOx", "lBthuMpefmZJE4Sw"]' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'dz8zvXzeFAQg3TM5' \
    --namespace $AB_NAMESPACE \
    --dateTime '1986-03-26T00:00:00Z' \
    --goalCode 'mMVsrwHwEvgH9i5R' \
    --limit '63' \
    --offset '30' \
    --tags '["oSyz2M2adbePE8sp", "isONPuQZ1TncI7pT", "mABAJqLdFeLfTWXO"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'TIfbBDRuHHwI7KrX' \
    --index '78' \
    --namespace $AB_NAMESPACE \
    --goalCode '9qJWh5tNNhh49lul' \
    --limit '28' \
    --offset '52' \
    --tags '["Q0ewdT5hb8NSK7di", "Dw417MN8FlfYWBUs", "vXGz0L6Qy39B9Z5c"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'TyzsuPiuahSXJQyo' \
    --goalProgressionId 'JWuPCwf9QDEd9FVk' \
    --limit '87' \
    --offset '23' \
    --sortBy 'createdAt:asc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["gSRe4a0WEuJAlsmZ", "8FHfbl6nbhlQqmhV", "ys94HFvbQMOjdvQd"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE