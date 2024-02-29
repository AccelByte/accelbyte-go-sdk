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
echo "1..21"

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
    --limit '24' \
    --offset '39' \
    --sortBy 'hj9G4RxszFiEYf9L' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 40, "assignmentRule": "RANDOMIZED", "code": "5UsWZCpm4kcRGlx4", "description": "TdnIAa2mTLLwC3eM", "endDate": "1977-01-15T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "ct5K0dousGDn8GcX", "rotation": "MONTHLY", "startDate": "1995-04-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'Jnmincye962xUynE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'GF0ULP4pQ5qFCq8y' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 64, "assignmentRule": "RANDOMIZED", "description": "r2lqDThV9naQ6fk2", "endDate": "1986-04-25T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "XGBVM3hALZdw8sNS", "rotation": "DAILY", "startDate": "1981-05-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'Vg6hYmzmyhuuOgnB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode '7clx0mGe4j063sSi' \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '34' \
    --sortBy 'NlgU2us3guaFY3em' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'Sf6ifOKSByJzcZyB' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "oUGcRhYGpFF4i9LJ", "description": "Z75hKAU0k2rAKhq1", "isActive": false, "name": "1s2GNPy7QR9ATk7P", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "jsKzHaTqFSoEs2Ms", "parameterType": "USERACCOUNT", "targetValue": 0.024551430410652775}, {"matcher": "LESS_THAN", "parameterName": "6UroSDP1ZnPWQhya", "parameterType": "STATISTIC", "targetValue": 0.498490920112971}, {"matcher": "GREATER_THAN", "parameterName": "of4jqry7zo875lBG", "parameterType": "STATISTIC", "targetValue": 0.06037279860422495}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "f8hM0Nslv0fh3MDV", "parameterType": "USERACCOUNT", "targetValue": 0.5855632362594738}, {"matcher": "GREATER_THAN", "parameterName": "EFWCSEm4xiJtUJyC", "parameterType": "STATISTIC", "targetValue": 0.07995561190759448}, {"matcher": "LESS_THAN", "parameterName": "jqw9fy6ZbLWmG4Al", "parameterType": "STATISTIC", "targetValue": 0.6183477128824372}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "kRGSbtQRDmJ7gVZe", "parameterType": "ACHIEVEMENT", "targetValue": 0.37082761844840073}, {"matcher": "LESS_THAN", "parameterName": "UTXcVLJIiNzjxeVV", "parameterType": "STATISTIC", "targetValue": 0.22089092103476737}, {"matcher": "EQUAL", "parameterName": "yNJBSqBCWmcIf9LQ", "parameterType": "USERACCOUNT", "targetValue": 0.4685747279414998}]}], "rewards": [{"itemId": "NxjabtRq6L7PQgcp", "itemName": "xkDgTmgfy6jFx0MS", "qty": 0.46119713801664874, "type": "STATISTIC"}, {"itemId": "L9VwsqiHciJ23Um5", "itemName": "ZLbPy3SIO9zbvWRk", "qty": 0.9963667732966452, "type": "STATISTIC"}, {"itemId": "Wa142KQ6YQow1INy", "itemName": "Qrr17avg7Zeydsnp", "qty": 0.22563289711962198, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1979-10-09T00:00:00Z", "order": 78, "startTime": "1982-09-05T00:00:00Z"}, "tags": ["lmrDM7MXEIj8cqAY", "FiDgODVsytutj7Ey", "C0ReB8XT7URSvWAR"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'LaI6gk8JihkUxiWb' \
    --code 'DFSLgTCwHQqqzrcH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'OBK9QcomLhctvOYU' \
    --code 'WTE12QAhj3jgco8h' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "snkzEberTeUJToRn", "isActive": false, "name": "DxXhBHRlU7eu3IHW", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "0R9YrzVWUA0iUY48", "parameterType": "ACHIEVEMENT", "targetValue": 0.025745824973389286}, {"matcher": "EQUAL", "parameterName": "VFiKUXL4hWLbRAvj", "parameterType": "ACHIEVEMENT", "targetValue": 0.1746939572207471}, {"matcher": "GREATER_THAN", "parameterName": "i2KLJQqQftNYcP5w", "parameterType": "USERACCOUNT", "targetValue": 0.8397900375792926}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "ppmBQcbrE8qRH9FF", "parameterType": "STATISTIC", "targetValue": 0.40733437947893947}, {"matcher": "EQUAL", "parameterName": "cYXH9Rzv7vIXEh4Z", "parameterType": "ACHIEVEMENT", "targetValue": 0.32577265867158367}, {"matcher": "EQUAL", "parameterName": "WqSxkqAp5PQXx0yk", "parameterType": "STATISTIC", "targetValue": 0.789989888496688}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "6kjcpWdCW2LDPW7k", "parameterType": "ACHIEVEMENT", "targetValue": 0.13501399048201757}, {"matcher": "LESS_THAN", "parameterName": "UQTVgjmetNsdMEhp", "parameterType": "STATISTIC", "targetValue": 0.4668309890664506}, {"matcher": "LESS_THAN", "parameterName": "URUEPwyCP382ub2c", "parameterType": "ACHIEVEMENT", "targetValue": 0.70158280288189}]}], "rewards": [{"itemId": "QIYNuA0Rp2dEHzWz", "itemName": "O8dEQRrrzakTGjPa", "qty": 0.8533039417216116, "type": "STATISTIC"}, {"itemId": "oz8DZdUmeTBlVEDc", "itemName": "6rrV86JojSWJ0xoE", "qty": 0.6369826694340753, "type": "STATISTIC"}, {"itemId": "JA2ey7GIUwqynWtL", "itemName": "3P0X8zNbGyvPU4aa", "qty": 0.671421237007884, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1981-03-24T00:00:00Z", "order": 10, "startTime": "1972-12-08T00:00:00Z"}, "tags": ["ciJhmKtuERMxpjZt", "qLmTUK5YSv48kOny", "2D7ujlczxKEdVQ8P"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'a6BRgo3tUU75SNpT' \
    --code '46bimnz3VZlj0k0s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'kLVvOr189hrZ20L4' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'q8Ye1TnGsLjhUYOU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["60gqdr2v1Un22AjD", "ubdiZhmDrjuPc05F", "f1C85toVmv4ljLdq"]}' \
    > test.out 2>&1
eval_tap $? 14 'AdminEvaluateProgress' test.out

#- 15 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'OgWSwu5plLzWwq8N' \
    --limit '51' \
    --offset '99' \
    --sortBy '4em2IriGrHHGOPKr' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserRewards' test.out

#- 16 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '17' \
    --sortBy 'xeLHy38EHrxxIIzZ' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 16 'GetChallenges' test.out

#- 17 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'NByA9M4SavNHypto' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '63' \
    --tags '["hJ86Co1pqGNfBDxt", "FuHFrIV7nw96aCmR", "e0EZAUCDlX4O0ByL"]' \
    > test.out 2>&1
eval_tap $? 17 'PublicGetScheduledGoals' test.out

#- 18 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'EvaluateMyProgress' test.out

#- 19 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'xrOKegth6y8XLqjr' \
    --namespace $AB_NAMESPACE \
    --goalCode 'OqCEUVi1aYhpbwUg' \
    > test.out 2>&1
eval_tap $? 19 'PublicGetUserProgression' test.out

#- 20 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '74' \
    --sortBy 'Y3hdPon251JF04r6' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserRewards' test.out

#- 21 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["aVX9FgbIH1iH15DT", "qZoOLGdhmjjXiJ6L", "egwckhKospno8sbp"]}' \
    > test.out 2>&1
eval_tap $? 21 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE