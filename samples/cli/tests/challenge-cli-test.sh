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
echo "1..22"

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
    --limit '3' \
    --offset '16' \
    --sortBy 'I3X2ajoQuT8s3Tmm' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 88, "assignmentRule": "UNSCHEDULED", "code": "H3cCT2AfshV0GRgL", "description": "e1IeYWIKciiBsLdq", "endAfter": 31, "endDate": "1995-04-19T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "xsli9Xa4ZDq8lJwy", "repeatAfter": 50, "rotation": "MONTHLY", "startDate": "1998-10-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'KVe25GYsh6uWbjuW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'tfaU1m4q2vIkIjw7' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 30, "assignmentRule": "RANDOMIZED", "description": "KmTBjqbikdeZWg9J", "endAfter": 17, "endDate": "1993-03-31T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "YhcIbeP6ZK4UPWfG", "repeatAfter": 68, "rotation": "NONE", "startDate": "1983-01-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'zKSc5GsUEW9nfRsh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'JdEHxX20UG3mIVAQ' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '53' \
    --sortBy '4lyEt7lU1KYJHYje' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'GVSecDEnrJRHZHi8' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Pks1N3vQM9YAm1KT", "description": "CJmNsOhmq2mSDWhc", "isActive": true, "name": "2By7yOskNW21diMp", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "gUDWcAug5mEgC3rq", "parameterType": "USERACCOUNT", "targetValue": 0.5702555557515258}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "EwchQJ1eukc6rfKr", "parameterType": "STATISTIC", "targetValue": 0.29335989147143826}, {"matcher": "EQUAL", "parameterName": "A3ieZhRYQDhE8QPH", "parameterType": "ACHIEVEMENT", "targetValue": 0.06946999042131818}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "5kOE83qMHZEwfUSA", "parameterType": "ACHIEVEMENT", "targetValue": 0.051328663502973715}, {"matcher": "EQUAL", "parameterName": "RKSeVxcHCvrz9Fk2", "parameterType": "USERACCOUNT", "targetValue": 0.13344477928629428}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "56Uuvlj6XSpA0oZQ", "parameterType": "STATISTIC", "targetValue": 0.7716898523101295}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "Ayyc6MBFkhD33BVl", "parameterType": "USERACCOUNT", "targetValue": 0.7108482043973228}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "6XTQ2M4HvgzUWd6y", "parameterType": "USERACCOUNT", "targetValue": 0.5184747286590189}, {"matcher": "GREATER_THAN", "parameterName": "3MWkmqnzunmtkp2S", "parameterType": "ACHIEVEMENT", "targetValue": 0.06801218237592965}]}], "rewards": [{"itemId": "3DPVugipqQOpDIiJ", "itemName": "cupcU9TLdCJpLZcg", "qty": 0.6539296186263062, "type": "STATISTIC"}, {"itemId": "wkpwxl6m0LnZ6A5D", "itemName": "Pultnmo5NQQqa9NB", "qty": 0.4739572073522883, "type": "ENTITLEMENT"}, {"itemId": "M49V8zdLPyzGuInG", "itemName": "9lDndzKaG5fDCfbs", "qty": 0.1498686409630563, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1986-11-20T00:00:00Z", "order": 73, "startTime": "1977-06-27T00:00:00Z"}, "tags": ["ClcdyFu1BiiaBYY0", "813DAjMxNSXrVvZn", "2wfhrmJ1EJq5eWxz"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'bVZWNjR3Xr5cGYww' \
    --code 'HSvIeceuFl6oNSuu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'M7wXLqxs9q9omfdS' \
    --code 'u1OwlEHyZUYahuAb' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Ap1arAAb8PQcY8y2", "isActive": false, "name": "F3C1RCXon4N17pUn", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "2RAVeRo4s5M2ByYa", "parameterType": "STATISTIC", "targetValue": 0.2757902805793937}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "CjXSvvcLFQVNGA1o", "parameterType": "USERACCOUNT", "targetValue": 0.7387177824943468}, {"matcher": "GREATER_THAN", "parameterName": "Sam4ClG3PniDKdUv", "parameterType": "USERACCOUNT", "targetValue": 0.1521455865337924}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "ropzUIMAzu9cVY5N", "parameterType": "STATISTIC", "targetValue": 0.950235711375029}, {"matcher": "EQUAL", "parameterName": "2KYisiDlhVqGCoye", "parameterType": "ACHIEVEMENT", "targetValue": 0.17666544990360356}, {"matcher": "LESS_THAN", "parameterName": "9sVnMAVSqx6KzgXV", "parameterType": "ACHIEVEMENT", "targetValue": 0.6562410300466406}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "N5xNc7WPphvQaMlQ", "parameterType": "STATISTIC", "targetValue": 0.3533710217814219}, {"matcher": "LESS_THAN", "parameterName": "TOVV3czTpE1VfoZs", "parameterType": "USERACCOUNT", "targetValue": 0.8822676984045469}, {"matcher": "LESS_THAN", "parameterName": "ux1OhPM6iFgmQCKR", "parameterType": "STATISTIC", "targetValue": 0.08789136599974834}]}], "rewards": [{"itemId": "TfvZn9Dg7WjjTWKL", "itemName": "VlDbh1sziZljhePK", "qty": 0.71171873777882, "type": "ENTITLEMENT"}, {"itemId": "7hyhUHfpKolTQQyw", "itemName": "3VJD3FJTEuqsItRc", "qty": 0.4293005739806639, "type": "STATISTIC"}, {"itemId": "SemSvk4MyXsoUPLZ", "itemName": "957przWfZFtSQyt7", "qty": 0.43139794654117447, "type": "STATISTIC"}], "schedule": {"endTime": "1973-10-29T00:00:00Z", "order": 79, "startTime": "1987-05-15T00:00:00Z"}, "tags": ["5X0OYws59yoMFVkJ", "ZAKhbpJ5SEXF452B", "Af4TqRrB9Om0G1ri"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'Nbg4tSOwSpigcz3r' \
    --code 'y1d6DiSCLNCfMgrS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'ouXz2hbGsfiA3umh' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode '8eqirJVxVmWHEuVV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'tW1VZ3YTmnXwWvtf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["kvcFSL5BYvmlkkn9", "AaWNHn3B9ApHpvvj", "IzjvEXLizuTNRWK0"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'xToNcnEITOEeVd0p' \
    --limit '96' \
    --offset '94' \
    --sortBy 'Bc2HQhlhBH1VyYep' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserRewards' test.out

#- 17 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '71' \
    --sortBy 'dCKM6xEp0yrq7x09' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 17 'GetChallenges' test.out

#- 18 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'tPLJQqotSHUG3fYj' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '45' \
    --tags '["gZBygEOwPa0kxP9i", "VuJOVSfOE7Za6mk4", "iZxdmCBaEtJ34bBE"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetScheduledGoals' test.out

#- 19 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'EvaluateMyProgress' test.out

#- 20 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode '4TlhKua4UXqk8Xai' \
    --namespace $AB_NAMESPACE \
    --goalCode 'BHi04fQmhd8vO1T5' \
    --limit '70' \
    --offset '0' \
    --tags '["xeFoASnEF8XJTkpy", "AYQmmAu3Er6PvOtg", "7ie484lvdqx4JjgR"]' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserProgression' test.out

#- 21 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '11' \
    --sortBy 'mKPZdKaLuaC0zTqR' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetUserRewards' test.out

#- 22 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["KFMVeLouSLIzZrvl", "GgnSARtPEQAP4WkZ", "OqoQM7oCLhf5OhjD"]}' \
    > test.out 2>&1
eval_tap $? 22 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE