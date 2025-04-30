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
    --keyword 'PcMMEb5yBAFBnxEf' \
    --limit '41' \
    --offset '100' \
    --sortBy 'updatedAt:desc' \
    --status 'INIT' \
    --tags '["LWgJwundw4qZaDcS", "v4O70mauL22L3r2V", "xWhCEyh69Z9aVi34"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 60, "assignmentRule": "FIXED", "code": "XR9zyo2SdlPKrqKC", "description": "PhCM1ypB1c8ZNNoy", "endAfter": 94, "endDate": "1993-06-18T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "DyWVCnWS7ksoeB6R", "randomizedPerRotation": false, "repeatAfter": 0, "resetConfig": {"resetDate": 43, "resetDay": 4, "resetTime": "EkLTMvflW4EPLRj6"}, "rotation": "DAILY", "startDate": "1999-07-13T00:00:00Z", "tags": ["TSk2oJi3ZQn2wyZ7", "gecWRropHj4VKv10", "KXHON61lI7H0Qm3m"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'v0Vnr9i3ZbWph222' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'QjfNIWRGItpPrKew' \
    --limit '90' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'dqiQWgYf8AxcAgRV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'Vl8qd54j8RRFOShF' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 0, "assignmentRule": "FIXED", "description": "OV9im6002Q7wnSL1", "endAfter": 79, "endDate": "1978-05-11T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "7wIO55lci2lJdVsu", "randomizedPerRotation": false, "repeatAfter": 55, "resetConfig": {"resetDate": 10, "resetDay": 56, "resetTime": "MsuKyRrMw5iDxkQO"}, "rotation": "WEEKLY", "startDate": "1999-10-28T00:00:00Z", "tags": ["UhSylN6GnckiLc2K", "IDn7EOysIzZcyFPY", "CtD29CtvEX3tbq2A"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'ClPbX3lD10RozlhI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'z3f8kW8BHqOL2a65' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '5' \
    --sortBy 'createdAt:desc' \
    --tags '["sXnpSmSlMHEZMFeV", "rSKfaalP0r9xNXia", "jQGuK8qoke5piiAi"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'Cw5Fcr4tyu5BK76M' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EXQc5c3bcJFH44uW", "description": "477q3lFuPvNY1Lw1", "isActive": true, "name": "4jjBxNryfyHxfjj2", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "4EAuUGd6l5WZj8rq", "parameterType": "ACHIEVEMENT", "statCycleId": "VFMBTK5JaZR1Trli", "targetValue": 0.9279708062507278}, {"matcher": "EQUAL", "parameterName": "ajyPxdtBW3zoK87Q", "parameterType": "STATISTIC", "statCycleId": "tJqUBbTKEqe9sezn", "targetValue": 0.33322372951980683}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "Ju8xXRLFptRZIeIj", "parameterType": "USERACCOUNT", "statCycleId": "UDaGxwyhitdm86UC", "targetValue": 0.31757020470647435}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "rkcMypscdWNqr2UH", "parameterType": "STATISTIC", "statCycleId": "gzD2GXUniV3tmp16", "targetValue": 0.5808857620037894}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "ROA7nR6JrvjbPoqZ", "parameterType": "STATISTIC", "statCycleId": "IE50loplVBmkYfaj", "targetValue": 0.02321550515082904}, {"matcher": "EQUAL", "parameterName": "FL9k4tWGvQRgedtd", "parameterType": "STATISTIC", "statCycleId": "ZCXGMHp73tKrPPaT", "targetValue": 0.27346213293240584}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "9AKM51B3S6CaixMs", "parameterType": "ACHIEVEMENT", "statCycleId": "Xj0yxKjciKa5OfSy", "targetValue": 0.25639756752837106}, {"matcher": "EQUAL", "parameterName": "KYkPYy1CH3ikhe05", "parameterType": "ENTITLEMENT", "statCycleId": "IiYG6fj5dGJPofrA", "targetValue": 0.8716225007835772}, {"matcher": "GREATER_THAN", "parameterName": "QqIdtxM4GWkkyqre", "parameterType": "STATISTIC", "statCycleId": "ghyhOZesoNxmvnTo", "targetValue": 0.7837228846839169}]}], "rewards": [{"itemId": "HU8VsMz4o35LVs1a", "itemName": "B6qqUq2UoQtm4NjS", "qty": 0.26795518240870986, "type": "STATISTIC"}, {"itemId": "dM0kulr6zUcprSfT", "itemName": "AKmNxX7P2kpFS0w4", "qty": 0.05703683406857318, "type": "ENTITLEMENT"}, {"itemId": "uIQS2FybOBiPBW6H", "itemName": "0V94fA2jawkfDpaW", "qty": 0.83378547492455, "type": "STATISTIC"}], "schedule": {"endTime": "1974-08-08T00:00:00Z", "order": 35, "startTime": "1994-01-21T00:00:00Z"}, "tags": ["fn1MeA5IstE4cwnt", "P7RACANxyrH7XLfJ", "XijfOtAwxqKIjEvz"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode '9SsyLSXAUU9gPXTx' \
    --code 'kO7x0wqh7TxwX7hi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'Ryn5hBgSctb82jCI' \
    --code 'GFuyz5ZnOD6nyCu9' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "VbBy8jXgH1jLTGrE", "isActive": true, "name": "ZkJZaV0daW3CW4qP", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "OeB7xddWJK52I3AV", "parameterType": "STATISTIC", "statCycleId": "9suCV3Q998PEEvyM", "targetValue": 0.09588999281568045}, {"matcher": "LESS_THAN", "parameterName": "Z9n13HVxoTDdt00G", "parameterType": "ACHIEVEMENT", "statCycleId": "p7SFJljIxxB0WI0M", "targetValue": 0.5824775636265802}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "XCF8cJz5OYrfsdNS", "parameterType": "ENTITLEMENT", "statCycleId": "xXoc6LaZmGxVwP3g", "targetValue": 0.6110385295952764}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "bIomfizWHnz2Z9AM", "parameterType": "STATISTIC", "statCycleId": "L4z1TVUIUAeIoIRn", "targetValue": 0.14496976186796717}, {"matcher": "LESS_THAN", "parameterName": "ES1n2ZjjrNDteydw", "parameterType": "STATISTIC", "statCycleId": "ZBbdvSOv2LyQWSEc", "targetValue": 0.7467177481809394}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "ejOrfGuMxfXbF1ik", "parameterType": "ENTITLEMENT", "statCycleId": "5G5U3pF2W51mamB9", "targetValue": 0.2063938235578654}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "LsUwFL9WzblfNaEo", "parameterType": "ENTITLEMENT", "statCycleId": "HpuQIOpGUuKH6czj", "targetValue": 0.8603731480606079}, {"matcher": "LESS_THAN", "parameterName": "Wsa1shPed7kqRLY7", "parameterType": "STATISTIC_CYCLE", "statCycleId": "mv3LUYd6cHiAJVAN", "targetValue": 0.6521078121617822}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "EZPFYwlLKbjqn9Ci", "parameterType": "STATISTIC_CYCLE", "statCycleId": "03EKrX3JacwjVIIG", "targetValue": 0.9995075219727164}]}], "rewards": [{"itemId": "YLm3HcNujk4ueQs0", "itemName": "jA1sY7OnTNOHEX9w", "qty": 0.4206332913175924, "type": "ENTITLEMENT"}, {"itemId": "xDYM8f0CU5LJ0Ez6", "itemName": "qGy1czizlqRJlMF6", "qty": 0.6947468268318501, "type": "ENTITLEMENT"}, {"itemId": "wsFyLhYWIZZZwebR", "itemName": "DAkFYulWgi1BaECp", "qty": 0.13952620312176178, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1984-07-11T00:00:00Z", "order": 19, "startTime": "1988-05-18T00:00:00Z"}, "tags": ["MzV5Hxth0K72BnoJ", "fVtLCnEVAmH7GJyG", "kr9UzenBTofwT2Y4"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'PUZnLqZocFea8eql' \
    --code '1x97kBpHtJ7ROZEj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'ggClOTRz00EsdjsF' \
    --code 'v2b2u2tNyaZvTY7J' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '25' \
    --userId '6QhTUwyE5IjfwPeb' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'TCJRvehrvwLtk2Dm' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode '9ykxUA9uGqBnn1Cr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'szRehIwZgOCdDTxX' \
    --namespace $AB_NAMESPACE \
    --dateTime '1988-03-17T00:00:00Z' \
    --limit '56' \
    --offset '69' \
    --userId 'XlFiuvIST2KD503a' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'AFOR4ksm0OVRIeSG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'w2iBAgZWMDirtN0v' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1998-04-09T00:00:00Z"}' \
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
    --body '{"appName": "hqfC8IvuYBjGMUCx", "extendType": "APP", "grpcServerAddress": "NNuLdt1VH3qPoiUR"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "LUCukxnWhZpbpg46", "extendType": "APP", "grpcServerAddress": "RiKWLiBu55yx3GdV"}' \
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
    --body '{"userIds": ["YC4idFTkvk15TZcb", "NK10CcEPgYiPJDR1", "i9CmfnTF42PIukGP"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["8FL0eh5nzo3Ety8c", "7mm5dYkQbGyOh5vF", "jemaJOpck11TekJc"], "userId": "OD65rdlwq5qEFLx5"}, {"rewardIds": ["g06YAb5vfm5KFwxD", "0cug7NMFuRkWFrK8", "Zh5kF46O5DddOzkj"], "userId": "DT4pIydd4uvzMwZ5"}, {"rewardIds": ["ZWfEd2nggDS8yWVj", "i6RayXQV0lhjgYkM", "4O44b41fM57OcdlH"], "userId": "mHzVxjfDNdb8OPiY"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'I7rPL5uBWuZZHyY5' \
    --namespace $AB_NAMESPACE \
    --userId '6BoWz77h7NWNYM58' \
    --body '{"goalCode": "dHOSDNhf7S3atmPp"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'pidubQZKyfL7rLFp' \
    --namespace $AB_NAMESPACE \
    --userId '56NVw6j3lUPYqsCD' \
    --dateTime '1994-08-16T00:00:00Z' \
    --goalCode '67zVEFn1Fm2wOcv5' \
    --limit '87' \
    --offset '42' \
    --tags '["KQ32YlSAaLCPmxzj", "OycPXFO3r9fvcmAy", "qfM4P5yV4O0JRwmr"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 't336TIkoLLS8oyqv' \
    --challengeCode '3w1JJPtkByhV4rJ8' \
    --goalProgressionId 'dyEPJnaytMMnaWdb' \
    --limit '65' \
    --offset '80' \
    --sortBy 'createdAt:asc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'd6XO7zsxPm3rJQRN' \
    --body '{"rewardIDs": ["ZsVTufhnf0FsmLfE", "CrzapAnJsFIihMfh", "HytnhADMfnibQcjA"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword '2tPNiHku4fqLcGEe' \
    --limit '7' \
    --offset '98' \
    --sortBy 'createdAt:desc' \
    --status 'INIT' \
    --tags '["7XlgQR7VJfIGrPK7", "phVspeMcAMdZQTAo", "celiHKmYUcCwFSmu"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'B5UHiKK9jdvqY1ey' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '85' \
    --sortBy 'updatedAt' \
    --tags '["rIcc9aCfvfTRAsQA", "UbYsW0FQxPWV2ngG", "XPWpt4OFNV0IYvrZ"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode '3TYAFfxP08js4QBq' \
    --code 'h42XVEQ72avPKQ06' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'JJaK3DBBS7gZHEN7' \
    --namespace $AB_NAMESPACE \
    --dateTime '1973-05-20T00:00:00Z' \
    --limit '35' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'txuvmSPni57uMknV' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "47vSUsvrPHasPOGN"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode '7hDyIq8iMzhJIMt8' \
    --namespace $AB_NAMESPACE \
    --dateTime '1989-05-17T00:00:00Z' \
    --goalCode 'YUNEjiUz8y0jpeGM' \
    --limit '67' \
    --offset '19' \
    --tags '["G9SZxS6m6C7K4ui0", "a5uLEmAC21B47dPq", "7dRpZsv7qYgr07B8"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'eaktgkhWCAzOD0Ql' \
    --index '76' \
    --namespace $AB_NAMESPACE \
    --goalCode 'KPV05U6V3gp1bkyl' \
    --limit '65' \
    --offset '31' \
    --tags '["cH7o9EgFohiRJ7Cj", "zWOJaHXiXvEyfFAy", "ydWzGpm9s4NtHebO"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'W8VTlktqETKIuqCr' \
    --goalProgressionId 'EDDbjpjqNVfwCKzB' \
    --limit '48' \
    --offset '87' \
    --sortBy 'createdAt' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["uMugIK3dsfk7wXwA", "3t5OPrpzboff37Pq", "pKxYeDm0ZSp9wqdc"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE