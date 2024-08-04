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
echo "1..25"

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
    --limit '79' \
    --offset '90' \
    --sortBy '7sRdtiaSWsB2zUID' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 87, "assignmentRule": "UNSCHEDULED", "code": "5rsnPBvBOrhPRsdX", "description": "ezm1wCWXCTOCyGEN", "endAfter": 72, "endDate": "1991-06-02T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "UC7C68vzQlp8qdgC", "randomizedPerRotation": true, "repeatAfter": 97, "resetConfig": {"resetDate": 47, "resetDay": 20, "resetTime": "4JEX02h9aAn7yVtG"}, "rotation": "NONE", "startDate": "1978-10-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode '3KjeuJUQnQb8LCF4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'ovYKtQhysuknHuqn' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 88, "assignmentRule": "FIXED", "description": "t8EfSxdDbbHJOg6A", "endAfter": 79, "endDate": "1995-09-27T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "ZEiW2bHj7FRx5jQF", "randomizedPerRotation": false, "repeatAfter": 93, "resetConfig": {"resetDate": 100, "resetDay": 0, "resetTime": "NiosgCIV7Equ4zHl"}, "rotation": "MONTHLY", "startDate": "1980-05-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'qnaBbH2ghlLYqtmn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'hlIphB1HVyLMs6cZ' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '37' \
    --sortBy 'PoJgw5eRY4wkTjWf' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'ueZiv1QoUGwt1QFe' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "18Rr2Ykk9wyVWxva", "description": "RIgjteGqfCVmzlGq", "isActive": true, "name": "O2WLY8bUa3lMNv1D", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "P46FHF6v0h1YkiYE", "parameterType": "STATISTIC_CYCLE", "statCycleId": "AX6Tf2h4Ihs7UBcu", "targetValue": 0.7603033029096966}, {"matcher": "GREATER_THAN", "parameterName": "4J7Ez1kWivGY6oGV", "parameterType": "STATISTIC_CYCLE", "statCycleId": "TN1CCPeB21OgME1L", "targetValue": 0.16118583782154017}, {"matcher": "LESS_THAN", "parameterName": "TULZFO1pMQ6BA7Y3", "parameterType": "STATISTIC_CYCLE", "statCycleId": "2ZuAXILlZsa4gj25", "targetValue": 0.9004754211613288}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "JfoaftkTTJ3CIJqt", "parameterType": "ACHIEVEMENT", "statCycleId": "lrANe1adEOsCh8D4", "targetValue": 0.18960490380774564}, {"matcher": "GREATER_THAN", "parameterName": "XKQaGeZrnFhjXn4m", "parameterType": "STATISTIC", "statCycleId": "DnvaAyQjbYZUHZhB", "targetValue": 0.35623910365890943}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "raxoulEbc38uEo1V", "parameterType": "USERACCOUNT", "statCycleId": "gywbpqqb9QOBUjTc", "targetValue": 0.850018143319066}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "QVb8g5VWLib8Ot0p", "parameterType": "ACHIEVEMENT", "statCycleId": "CrFSv1o56pQ1O2VC", "targetValue": 0.6162914557571931}, {"matcher": "GREATER_THAN", "parameterName": "UBoYzPhAh4tP0kzD", "parameterType": "STATISTIC_CYCLE", "statCycleId": "wxhmQa4ArKdc7frm", "targetValue": 0.4099499992672835}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "mWSsBMWbefnpoRmR", "parameterType": "STATISTIC_CYCLE", "statCycleId": "kTMKn0bhiHxsJtLc", "targetValue": 0.8913624283849481}]}], "rewards": [{"itemId": "EHCbkwnSkLNwOTMp", "itemName": "JgwznAC1EA05eXp0", "qty": 0.4481020857244572, "type": "STATISTIC"}, {"itemId": "KToOmfykqLKbtijO", "itemName": "HCoVliT0CMJw5p7o", "qty": 0.3099072485933795, "type": "STATISTIC"}, {"itemId": "9hC67dNSxDfHWfVq", "itemName": "k3HpogUIJjmqqb9V", "qty": 0.2755756559132848, "type": "STATISTIC"}], "schedule": {"endTime": "1978-07-26T00:00:00Z", "order": 64, "startTime": "1972-05-18T00:00:00Z"}, "tags": ["SPPE5EEdxEOJApTT", "MM2SZNwGhi2CP5CC", "sHe0nSU6FSQPYO3L"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'n1v3XL8IB4IhKis2' \
    --code 'Uls4zwYMv1GiZ8CO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'kfPwcGOZ7KgzfQeF' \
    --code '2HrjGmT4lvBVzdwK' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "vLgGC6PLYHsMVqOG", "isActive": false, "name": "BDR5FFrD72fjRyiM", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "QJQJ7wbzat7EPsxk", "parameterType": "STATISTIC", "statCycleId": "OLysySKQ6zVBkNv2", "targetValue": 0.09291870687994852}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "03EltwNfB94FBdMF", "parameterType": "USERACCOUNT", "statCycleId": "9dBxzGuA2ealhsOl", "targetValue": 0.7830448221589296}, {"matcher": "GREATER_THAN", "parameterName": "Ta4mRtHZRlpLbBsv", "parameterType": "ENTITLEMENT", "statCycleId": "86eOMAJ4dgs8To22", "targetValue": 0.9046020552550492}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "TRk6aOvtN88T81ma", "parameterType": "USERACCOUNT", "statCycleId": "iE4Z55BfdGp21gmP", "targetValue": 0.09292152396738462}, {"matcher": "LESS_THAN", "parameterName": "APjPlrbZDGHvdKxv", "parameterType": "ENTITLEMENT", "statCycleId": "3uHqLRDnM87htar4", "targetValue": 0.6242077331238589}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "0AK8YxXEzoe7znsv", "parameterType": "ENTITLEMENT", "statCycleId": "rfnl6K2hRpad3MxQ", "targetValue": 0.002334640795033871}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "dXabAdKhzLowa7u1", "parameterType": "ACHIEVEMENT", "statCycleId": "8OTMdU8jVDhRaPeF", "targetValue": 0.8984527477270394}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "U8JmRrmnng7nsJnF", "parameterType": "USERACCOUNT", "statCycleId": "9Qp3TONXvLk8FI97", "targetValue": 0.9450900697182314}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "jPnS4nx4bbRKgLo5", "parameterType": "ACHIEVEMENT", "statCycleId": "4eeKnydsHV9JBxUL", "targetValue": 0.8266221254916416}]}], "rewards": [{"itemId": "1E1UTKVQlVfP670w", "itemName": "1TYBegsI8h7viKmB", "qty": 0.8286969273338348, "type": "STATISTIC"}, {"itemId": "Zkrr0DvjqGx8i97e", "itemName": "90c582D8zzxwdH84", "qty": 0.47916305007460247, "type": "ENTITLEMENT"}, {"itemId": "S6EP9Xru54FMFDtU", "itemName": "qiqo6Ig1NXnhJwa5", "qty": 0.5085526433776438, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1984-11-14T00:00:00Z", "order": 78, "startTime": "1992-08-27T00:00:00Z"}, "tags": ["1qPVqouINSsvpYce", "XVIDif2eWcVFi0dg", "Z7xCA9f99Ae1crx8"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'g9lrjhj1nCZpx6Mu' \
    --code 'wwDEFkkizrNbEziI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'KHczBsmAsJFVl5rG' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'Lko3hothwGpuBf6X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'Nc3S7GqwyLkLbqrn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zWjnz51whnogfHq3", "mDVdIZI6Kcr3hjw5", "w1ftYYzOzuzY1Urk"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["CiFvhPekMqF2lQrA", "7uQEyNQdkcEEJyfK", "ubJ34OaXUNIyJR28"], "userId": "muS8gkUmLqhtXMS3"}, {"rewardIds": ["JTWwmp03Si7eGYEg", "a2ChQScQ72GE5rZ0", "9UnaQK20bcISb1qo"], "userId": "KMUlm9NCo4pyPBYi"}, {"rewardIds": ["YJzIi8spxQvDr718", "MA2NBJ16GyfkXf0s", "vqZNA0aZU4x8uw0W"], "userId": "kmLynVWrKQfrLYmk"}]' \
    > test.out 2>&1
eval_tap $? 16 'AdminClaimUsersRewards' test.out

#- 17 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'oIEbKjlGrLGWFHmN' \
    --limit '71' \
    --offset '2' \
    --sortBy 'isQQI3QCN2kJQZSS' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetUserRewards' test.out

#- 18 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Gr0XY1y8DIxwAwd1' \
    --body '{"rewardIDs": ["YplF2WOaOBtAkbNL", "lR7blHFy4eCDETcB", "S7s8oZ3CePq1dG3o"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminClaimUserRewards' test.out

#- 19 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '79' \
    --sortBy 'bgk8GVWSC7TdHLvm' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 19 'GetChallenges' test.out

#- 20 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode '1LAzII2gJ00z0NPp' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '92' \
    --tags '["KXSvDvHUSBNFWi9n", "CbjLWhK30ur4mqDM", "2d9m858O0go88OL9"]' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetScheduledGoals' test.out

#- 21 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'EvaluateMyProgress' test.out

#- 22 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'aoKDEYxFVuelBZAZ' \
    --namespace $AB_NAMESPACE \
    --dateTime '1984-11-13T00:00:00Z' \
    --goalCode 'SuHAoK4Gh7xsnJZb' \
    --limit '93' \
    --offset '41' \
    --tags '["UXAaBZZau93nP1FI", "w9C4NuIMK01TDHPs", "6cd6rHcom0HY755E"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetUserProgression' test.out

#- 23 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode '6oZv0YNuCAbhqAw9' \
    --index '87' \
    --namespace $AB_NAMESPACE \
    --goalCode 'VZMUVDa7hkJTeZLk' \
    --limit '18' \
    --offset '31' \
    --tags '["XnGeBc58QUkirBT0", "lYmQOfqqapnLSd5H", "Xm2pZLkbkVUmT2FI"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicGetPastUserProgression' test.out

#- 24 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '47' \
    --sortBy 'Tl13YZ8NnUhAkkcd' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 24 'PublicGetUserRewards' test.out

#- 25 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["mY3vVnOca7TAboKA", "gAgHzT9HikYcO0ul", "WY21O1OWU43qW4Zk"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE