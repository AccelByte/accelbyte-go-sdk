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
echo "1..24"

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
    --limit '32' \
    --offset '50' \
    --sortBy '9emPTn7V9Juwp44y' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 62, "assignmentRule": "UNSCHEDULED", "code": "P3hoTjUxcad4DlE2", "description": "tTERv06kVxGozTTo", "endAfter": 69, "endDate": "1977-08-13T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "vXt8evlVSGQNwdie", "repeatAfter": 9, "resetConfig": {"resetDate": 39, "resetDay": 69, "resetTime": "M24bqfCFiLKVs6cK"}, "rotation": "MONTHLY", "startDate": "1975-11-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'fAYirOqz8BxRAOH9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode '8dN0qY7fLGdeeoj9' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 80, "assignmentRule": "FIXED", "description": "8eS0djJcNViRH6Ji", "endAfter": 79, "endDate": "1998-03-25T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "fydV6XWeBeYx4F7A", "repeatAfter": 76, "resetConfig": {"resetDate": 46, "resetDay": 52, "resetTime": "YQRmLAHC3zfz2EU9"}, "rotation": "NONE", "startDate": "1972-11-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'CTRwntifVI6V2kuR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'zrQ4aIWujFxfGjCB' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '22' \
    --sortBy '381JjiwRYZFVLDkk' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'XyJl1B2qoWImBYVp' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "B4qRjUy0tukodNdo", "description": "tHJeCyaRAaGatEyW", "isActive": false, "name": "Rtf2gIgU0WlL7UAy", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "EjJUXg0XMkQm7qzZ", "parameterType": "STATISTIC", "statCycleId": "dzJuZ4AGAhaYucVe", "targetValue": 0.794600741905751}, {"matcher": "LESS_THAN", "parameterName": "OKiCWYa3hAZr8SmD", "parameterType": "STATISTIC_CYCLE", "statCycleId": "NyMcr0yWWa80BR53", "targetValue": 0.6424418089364168}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "L260n5c5EjmYNH5x", "parameterType": "ACHIEVEMENT", "statCycleId": "PWzdWrB7gUGXyK3y", "targetValue": 0.943002044349529}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "jIbv3svDUPdU1SwE", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Y9nh0YhWHBcstGNI", "targetValue": 0.7917912131982987}, {"matcher": "LESS_THAN", "parameterName": "UoYuYynOTucAuuGE", "parameterType": "STATISTIC", "statCycleId": "N9OrrPvZmRkQhxgd", "targetValue": 0.6301930341924515}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "zUex1vhPdERr6CJ9", "parameterType": "STATISTIC", "statCycleId": "s3O1BLu6kEpP6h7i", "targetValue": 0.27090134974337055}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "7NQqdWI2g0RzCifs", "parameterType": "ENTITLEMENT", "statCycleId": "dc9WwIFH4ZlhRglS", "targetValue": 0.05118318118760745}, {"matcher": "GREATER_THAN", "parameterName": "w4SVkHriH9IcS3nl", "parameterType": "USERACCOUNT", "statCycleId": "dJ9GGZGyUieN3KZN", "targetValue": 0.9232267239533203}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "uhKVr5Bho43zsFwT", "parameterType": "STATISTIC_CYCLE", "statCycleId": "wJdndQkrrJdvvghR", "targetValue": 0.21079590831175998}]}], "rewards": [{"itemId": "wsi0lKvWV3UI1Jtp", "itemName": "NZR3AFu3wBVbVOA5", "qty": 0.0956060287445415, "type": "STATISTIC"}, {"itemId": "drgvCy1tQSqhXbkJ", "itemName": "0PybfQfaTKtTlePy", "qty": 0.44912408740843135, "type": "STATISTIC"}, {"itemId": "6ibC5yOUTRaIUigS", "itemName": "2e9FONocACy7GwNT", "qty": 0.3460164424763743, "type": "STATISTIC"}], "schedule": {"endTime": "1982-12-19T00:00:00Z", "order": 61, "startTime": "1985-08-04T00:00:00Z"}, "tags": ["VE3sNWC2mfFf7pNZ", "TL8yzKqDjU9oIJ0M", "MBAoWQdxJNEh8ObZ"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode '1Kr2ajoqpwqDPe7v' \
    --code 'enHkz0ak6a2VlcgI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'V54AKRR1CJ3NIRlr' \
    --code 'vKnwRXGpEO5knqy0' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3bHLpv6FtJYcFUFj", "isActive": true, "name": "lqOKObyyzwDXgApx", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "TEBjIhKuBcF92Ab2", "parameterType": "USERACCOUNT", "statCycleId": "YqFCdp6dvW77jvFn", "targetValue": 0.8607019905593194}, {"matcher": "LESS_THAN", "parameterName": "sQZZPGgd33isBxRK", "parameterType": "STATISTIC", "statCycleId": "GFJORI2dTffwqKsX", "targetValue": 0.7027739077379531}, {"matcher": "EQUAL", "parameterName": "TGxFebF2kJomatbD", "parameterType": "ACHIEVEMENT", "statCycleId": "vtCmCpTclSmBQW9K", "targetValue": 0.19028479579514646}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "2WoZE77F94SMH6AI", "parameterType": "STATISTIC", "statCycleId": "YaH4zKdi0l6YJwJW", "targetValue": 0.5404345881799868}, {"matcher": "GREATER_THAN", "parameterName": "dK5LWzxJepe3NM7S", "parameterType": "STATISTIC_CYCLE", "statCycleId": "p0GCl3yIchi1N5mu", "targetValue": 0.08383375603811893}, {"matcher": "EQUAL", "parameterName": "ud89oRYf15L7Yt8R", "parameterType": "STATISTIC", "statCycleId": "ZsK9Vzz8UUpUhZbL", "targetValue": 0.06861253445599724}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "4de2z61zWq4FODBJ", "parameterType": "ACHIEVEMENT", "statCycleId": "VZmrR6QpFEAJ33AU", "targetValue": 0.31950227526209596}, {"matcher": "LESS_THAN", "parameterName": "mZb2BtOE6dLX1mz5", "parameterType": "ENTITLEMENT", "statCycleId": "JwxWbnXhGI6JnOME", "targetValue": 0.8896245463333428}, {"matcher": "LESS_THAN", "parameterName": "9sNy6nwb7pkOIZgP", "parameterType": "ACHIEVEMENT", "statCycleId": "aQmpEP46y9Xly85l", "targetValue": 0.9366857007738968}]}], "rewards": [{"itemId": "q27gUobL0CYrCFaz", "itemName": "4ImKZ0b381NAgiIi", "qty": 0.8300116248268178, "type": "ENTITLEMENT"}, {"itemId": "FMCghrZPKHSFU9kd", "itemName": "6bxr3DUGl9AJqGB9", "qty": 0.9129825517281304, "type": "STATISTIC"}, {"itemId": "i3pnctn1AbY6kb2L", "itemName": "bwhsr4K9hCRUZPlo", "qty": 0.01625315923638182, "type": "STATISTIC"}], "schedule": {"endTime": "1999-12-07T00:00:00Z", "order": 79, "startTime": "1993-06-26T00:00:00Z"}, "tags": ["9xQsmGmiBgksY4qt", "8MW5vZ5uHZUD2nAs", "8XrlArCuofOe5Y0K"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'OQpVb0KvEsrrCYcU' \
    --code 'se6nBxrD2ezV9dk1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'mRR6FDnY9l6q3Kai' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'rhG58ecWxfd3lsUl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode '6uAwgTDEtzu7xyr9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["aNyhCZXLRVg4ckgl", "vBttOBqDdEy9f6sq", "1iOegC2KYh494d8g"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["hcCDD4Wdzyl7poRx", "7hjeJqv6WKnEHuGo", "OPKOiHTp5Wnbd9pc"], "userId": "OcEqd5haxvm9tC2Q"}, {"rewardIds": ["W2NuEpExuGrkRLz7", "EnWjyPLoJWczgPh1", "6FxR3M7BH4WTxKmW"], "userId": "Mv70M1toSoIy2MFQ"}, {"rewardIds": ["KdKz3qUPgBxykm2o", "xe0dPPbu7kdesOmG", "DlOTcBEAgMwKJIdK"], "userId": "yyJuCZioL9WsRhio"}]' \
    > test.out 2>&1
eval_tap $? 16 'AdminClaimUsersRewards' test.out

#- 17 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'tQVTmFBdNO9G9hpD' \
    --limit '18' \
    --offset '93' \
    --sortBy 'bJ8P4Q7rLYFEwywJ' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetUserRewards' test.out

#- 18 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'QINY2NeQUaHblD6A' \
    --body '{"rewardIDs": ["ynmrastKXIKobDOt", "RqVcCpEJaQDlna9O", "8dxMg84w7JM0MrCK"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminClaimUserRewards' test.out

#- 19 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '51' \
    --sortBy 'hJwuUf7PVmyPmzMm' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 19 'GetChallenges' test.out

#- 20 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'HBvI77LssHTpt6aO' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '53' \
    --tags '["Em6Z6xRVANOiyYaL", "RlH4nXiGPYQMH9Es", "IUUIOyAsCjYwI4XM"]' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetScheduledGoals' test.out

#- 21 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'EvaluateMyProgress' test.out

#- 22 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'VE1YTrpvg3eISOGe' \
    --namespace $AB_NAMESPACE \
    --goalCode 'AX5TklqHaQ8RYi5p' \
    --limit '26' \
    --offset '30' \
    --tags '["Wd6kxoHJoX8R1FsH", "khEXcBxmTV1HFJIm", "LcXTBIfldHSn1Bzi"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetUserProgression' test.out

#- 23 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '15' \
    --sortBy 'CHP5UnfUwyenFQIG' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 23 'PublicGetUserRewards' test.out

#- 24 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["cD2REkFoc3dYwh10", "xfbwKwnriHN8j7oM", "FIpweH4UyiELoRRH"]}' \
    > test.out 2>&1
eval_tap $? 24 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE