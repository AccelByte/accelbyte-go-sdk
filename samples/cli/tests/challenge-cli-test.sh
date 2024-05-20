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
    --limit '17' \
    --offset '24' \
    --sortBy 'h7AxMJOcLNWrxeHZ' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 86, "assignmentRule": "RANDOMIZED", "code": "uElZGpnX5k1Ri42s", "description": "6TgAIx8th7g4ArDm", "endAfter": 81, "endDate": "1972-12-08T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "DZeQiQNUQGPXU2uA", "repeatAfter": 5, "rotation": "NONE", "startDate": "1994-01-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'Z2YLpdnbk0IvwaSt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'ruBghso6Z08pQawm' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 94, "assignmentRule": "FIXED", "description": "wAyey5XV6pWsb7Kw", "endAfter": 52, "endDate": "1972-06-26T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "TqV35DkYE9ZSeCYK", "repeatAfter": 74, "rotation": "NONE", "startDate": "1991-11-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'AJyqqr8y0kI4BkP7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'V2b8KErQ8VBu0YKk' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '31' \
    --sortBy 'ujkbTQvnLKEgKl56' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'pfiQLdJfVEW74gMs' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "GemFApy5WdLzndDR", "description": "XYpB40seuJyulIqD", "isActive": true, "name": "3FApk7cOBzPJcTXF", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "39xgme7pbo40k40d", "parameterType": "USERACCOUNT", "statCycleId": "32QVyLVayyo982nI", "targetValue": 0.9462175874266481}, {"matcher": "GREATER_THAN", "parameterName": "AXvnkUr0XR5fVVOW", "parameterType": "ACHIEVEMENT", "statCycleId": "No9O3YN1R66wRw8e", "targetValue": 0.7482320333165516}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "iWrFx9BmYSLwQjOK", "parameterType": "USERACCOUNT", "statCycleId": "2dlhHMMyFJ0bUDwW", "targetValue": 0.14767936452506847}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "UeHEUclpa0jR5Ber", "parameterType": "STATISTIC", "statCycleId": "aeYoDolclVtG0uCJ", "targetValue": 0.8071324665128135}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "c4fB2H852aoRy2bI", "parameterType": "ACHIEVEMENT", "statCycleId": "IqgHdd5DnTgiyQ8p", "targetValue": 0.8396961159367411}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "ZOpd7rnS3DBQaQE2", "parameterType": "STATISTIC_CYCLE", "statCycleId": "2JWdxc52zv3AGl6q", "targetValue": 0.339342748220244}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "sPVFN0FSF7KgJiS3", "parameterType": "STATISTIC", "statCycleId": "2bQqvhIj8stUXqjR", "targetValue": 0.760424591597898}, {"matcher": "LESS_THAN", "parameterName": "I7dc7MspTABx1hVL", "parameterType": "ACHIEVEMENT", "statCycleId": "l9bBAFc953WCboOa", "targetValue": 0.8679424067883096}, {"matcher": "LESS_THAN", "parameterName": "Q73eIDgmZfgqOXQ8", "parameterType": "STATISTIC", "statCycleId": "0gzXnoulq0dwjLnF", "targetValue": 0.6701703394361318}]}], "rewards": [{"itemId": "XsaoIeu9lTgqUjyZ", "itemName": "YOjBOB97WlwH6zcw", "qty": 0.9525508000734183, "type": "ENTITLEMENT"}, {"itemId": "h0G35dbAV9xJy252", "itemName": "75bL13eC8FlFHcZe", "qty": 0.6870221118986897, "type": "ENTITLEMENT"}, {"itemId": "zOG0XK9Gu3AnXeHR", "itemName": "3n0n9HYXssVaBhm4", "qty": 0.8435295753161841, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1981-02-19T00:00:00Z", "order": 88, "startTime": "1995-01-25T00:00:00Z"}, "tags": ["ipD3rv60ORBsTYWc", "6JndpeX1KLKWcaWM", "Cu52wxiECz4WKUpC"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode '9Z36yN3Tp7KcfGnH' \
    --code 'b8D1AyhJFhqvwwX9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'kqK2vEzXP9vWT7w8' \
    --code 'uQyjThhRd6o20UIo' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "I9Zm8ON5eUbP0wTn", "isActive": false, "name": "QQcWUzFmLHhMdrjc", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "yqv8asO2SOLzCFSI", "parameterType": "STATISTIC", "statCycleId": "MXhgc6y0hYS1NyCl", "targetValue": 0.8414648599310407}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "uNxlrIzAltgcSWEg", "parameterType": "STATISTIC", "statCycleId": "ZSgGgTWhylJPSH40", "targetValue": 0.859320249044677}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "pThRGDYF8NA12mhf", "parameterType": "STATISTIC", "statCycleId": "I3BHOpDCxXSN5OWV", "targetValue": 0.22346581606978877}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "kPuZfrRIXsarVYy0", "parameterType": "STATISTIC_CYCLE", "statCycleId": "lGFTpMiXtNMSCI8C", "targetValue": 0.37796950986837385}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "iMA4EELq6kRwhbdy", "parameterType": "STATISTIC_CYCLE", "statCycleId": "H2VvwuXokjdnXkQG", "targetValue": 0.6569173171462458}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "kOrxyeRQ69yilyCC", "parameterType": "STATISTIC", "statCycleId": "6ZuHTwtEQcRV753m", "targetValue": 0.8285754622536973}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "D6240bpgzm46r0Tn", "parameterType": "USERACCOUNT", "statCycleId": "NioLn4awaS8JkDtr", "targetValue": 0.8598463987750314}, {"matcher": "EQUAL", "parameterName": "IOhN2tG8Jt7KE73q", "parameterType": "ACHIEVEMENT", "statCycleId": "PBdlCw2qocELkzlX", "targetValue": 0.013911386973365025}, {"matcher": "EQUAL", "parameterName": "zgix9f1v8ZHwtf0i", "parameterType": "STATISTIC", "statCycleId": "7SRGh8VNIYApBHlm", "targetValue": 0.9043295597426504}]}], "rewards": [{"itemId": "2PpBlUW6eAWhxT46", "itemName": "6wvTX2kYMnw2L6NZ", "qty": 0.7899607475032003, "type": "STATISTIC"}, {"itemId": "CUE8vtiY8bUXC9kO", "itemName": "JzpJMAyYkcfRzlUG", "qty": 0.5214414940898862, "type": "ENTITLEMENT"}, {"itemId": "VFyLX8wODa49jIVf", "itemName": "RJ6D4K9EHONiDU8Y", "qty": 0.25779162137966694, "type": "STATISTIC"}], "schedule": {"endTime": "1997-12-18T00:00:00Z", "order": 3, "startTime": "1991-12-07T00:00:00Z"}, "tags": ["PnNf5iiFQsVIuhQi", "3K0k1lfEucowuEYU", "aYa0kBSypH8RCTqP"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode '1v5oZPHYNeT585YO' \
    --code '6NK70A6O2wRiMECp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'hIv1e6Px2Ja1GKd1' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'kVlEfXkVjEl7vpoe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'fGKAVguTD8P73TH9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xFjmiXFpgScK6hSK", "C0NtGB0ZDwgJ6iN2", "5lC4KXsffsZngUaM"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'vhusMmgjOhXVzLUP' \
    --limit '15' \
    --offset '68' \
    --sortBy 'LtrZjkwjPWnmt6zh' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserRewards' test.out

#- 17 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '14' \
    --sortBy 'odKYlq7InAuwanOe' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 17 'GetChallenges' test.out

#- 18 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode '49xZ1CFNUWRD67YW' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '55' \
    --tags '["tOXVzpLrnoTr53x8", "DkKroPJgZpmmTO7j", "dobW1PcwHPEWkrkQ"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetScheduledGoals' test.out

#- 19 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'EvaluateMyProgress' test.out

#- 20 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'vDOlPXht0KMMlq5J' \
    --namespace $AB_NAMESPACE \
    --goalCode 'NCHtdVq773ahxreT' \
    --limit '9' \
    --offset '60' \
    --tags '["0stIj8SYPi8MzSIA", "Vhhx5Quoo3OchHjb", "ra7fa7RlewLQbtJc"]' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserProgression' test.out

#- 21 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '65' \
    --sortBy 'Hbr415OwDIQVp5Co' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetUserRewards' test.out

#- 22 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["LN7Q3W1xIZkJ6rMD", "yBIWJKA74dFkSH1Z", "wYW9JeTWvV7b0XQt"]}' \
    > test.out 2>&1
eval_tap $? 22 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE