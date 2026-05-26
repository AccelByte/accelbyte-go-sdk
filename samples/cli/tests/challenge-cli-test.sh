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
    --keyword 'jlhvMZyiie1vqtsc' \
    --limit '2' \
    --offset '3' \
    --sortBy 'name:asc' \
    --status 'RETIRED' \
    --tags '["FP9jea8u6YkFS31P", "3q9mBKOlhSXVA4Bt", "HVSDrFJTApZnSewt"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 12, "assignmentRule": "RANDOMIZED", "code": "HLo4HyMjWkLuBv8H", "description": "GZvOySkFhTn78xs5", "endAfter": 53, "endDate": "1997-05-22T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "bjg2QLfOfUsHPk6S", "randomizedPerRotation": true, "repeatAfter": 77, "resetConfig": {"resetDate": 30, "resetDay": 35, "resetTime": "G4lcUXxyPWPPaYjG"}, "rotation": "MONTHLY", "startDate": "1983-08-01T00:00:00Z", "tags": ["29VbBbx3cNxpvVWx", "uBp31fFgvt8TJUTF", "MdbLatOrTPqZ0H0V"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'czEpWsZTAi9RLPlq' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'P223APohwPCIUEAP' \
    --limit '34' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode '1tlcRqhayVw215FN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'QOI0iiMSR6geqLb9' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 70, "assignmentRule": "CUSTOM", "description": "xrOSPiEF05D9CdYs", "endAfter": 35, "endDate": "1992-03-03T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "5iMF3JPpxXIXc8Tw", "randomizedPerRotation": false, "repeatAfter": 94, "resetConfig": {"resetDate": 82, "resetDay": 13, "resetTime": "kpODZNbDG5YwnyQu"}, "rotation": "MONTHLY", "startDate": "1976-09-06T00:00:00Z", "tags": ["wE7u5hD6YUAkeO5p", "vzaTX3Ti69I2lYt9", "IOJSuXTk4guiOX4e"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'XxMbQPe1zh2P4lVo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'L8UfGP0iuQwsiKuj' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '90' \
    --sortBy 'updatedAt:desc' \
    --tags '["qCZz8Oo8yLjs25f7", "HzA4c9n0nhVfDqFB", "F9HisP5cQ7yxDhSP"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'tjSmxoSxMSLW3qAZ' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QWsJwAEYYVH5QAQ7", "description": "Q4sRi4dwY4NXfasA", "isActive": false, "name": "hbbqIQMkuawLtlYl", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "jHSZNkXw7qAdJzPY", "matcher": "GREATER_THAN_EQUAL", "parameterName": "klh7l6HPXcRQ9Ex6", "parameterType": "ENTITLEMENT", "statCycleId": "l3JcdAsKr21qtVst", "targetValue": 0.6698608709668542}, {"id": "3n2VnVX7Ee0J3m22", "matcher": "LESS_THAN_EQUAL", "parameterName": "2vwSDpyUkrjQ3a3o", "parameterType": "ENTITLEMENT", "statCycleId": "ivLwYrrLdScKlSCB", "targetValue": 0.7158412212226334}, {"id": "eW3foV2ioWuarjrP", "matcher": "LESS_THAN", "parameterName": "x1I6hS2R2Vx4AnFQ", "parameterType": "STATISTIC_CYCLE", "statCycleId": "NUwG6Xz6pmTGxkMH", "targetValue": 0.41483442143226523}]}, {"operator": "AND", "predicates": [{"id": "XrQuYlXJPswNEHIl", "matcher": "GREATER_THAN_EQUAL", "parameterName": "2gysKVT5vs9rfsWM", "parameterType": "STATISTIC_CYCLE", "statCycleId": "U5zZdPvKcil2mBhW", "targetValue": 0.33502128615236815}, {"id": "dNnFMEwwwSaMwjTt", "matcher": "LESS_THAN_EQUAL", "parameterName": "YqGGW9piic89pj98", "parameterType": "STATISTIC", "statCycleId": "QsVvjslUXG5Z0k8H", "targetValue": 0.33398264570132785}, {"id": "ua8XMNHC2Yo1oaZ2", "matcher": "LESS_THAN", "parameterName": "rlvk1O5ZMrrbXrUm", "parameterType": "STATISTIC", "statCycleId": "5EwMKuQlSVT9HOfo", "targetValue": 0.3404143020697966}]}, {"operator": "AND", "predicates": [{"id": "8JjkJmDu9V8whG9W", "matcher": "EQUAL", "parameterName": "iWaW2gpUHxYU5VzD", "parameterType": "ENTITLEMENT", "statCycleId": "116uEXusZ7QaZTYs", "targetValue": 0.7657524961211505}, {"id": "iaqzGtKcIb2FBXy2", "matcher": "EQUAL", "parameterName": "xPWSuVblbv92tH8M", "parameterType": "STATISTIC", "statCycleId": "GvYjZDW25O6NqGOx", "targetValue": 0.437847829965219}, {"id": "4GkLJZKsafp8Edut", "matcher": "EQUAL", "parameterName": "VH0DOzarTA4JOKW0", "parameterType": "USERACCOUNT", "statCycleId": "GvwFsZlY0KFP9i5Q", "targetValue": 0.1969022206872536}]}], "rewards": [{"itemId": "WYQfSDe4I6bleEdt", "itemName": "9MSiwMg3zzX6hMLb", "qty": 0.8192305510755048, "type": "STATISTIC"}, {"itemId": "sJxQr90iwnWj7od0", "itemName": "fu1Cs1OwzBS7AHRd", "qty": 0.6129925302006777, "type": "STATISTIC"}, {"itemId": "nhccHpSXcFtw3VGF", "itemName": "QfWbq61r53f5Ymst", "qty": 0.3545311724938299, "type": "STATISTIC"}], "schedule": {"endTime": "1988-11-19T00:00:00Z", "order": 52, "startTime": "1998-10-04T00:00:00Z"}, "tags": ["Rp719KDh8a05v5cs", "ZjUkvcluxuSuuSDP", "nf8O7iMfuSLWkRby"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'dtH6hXxL7gsxOEmX' \
    --code '6c1bSo3NrRoQDzcV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'HTEMYu9V3JrGNEQk' \
    --code 'mai0JIhbnChI3UaQ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BWFwR9L57WBcHF5h", "isActive": true, "name": "Li7CBjIKXrgcSyFj", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "mwccMGwYlrLPii6a", "matcher": "LESS_THAN", "parameterName": "74YlnvPynOGkhcIm", "parameterType": "USERACCOUNT", "statCycleId": "MTcu3uKpISG8K67y", "targetValue": 0.8190076724458943}, {"id": "6boGfxf17OgSl7PI", "matcher": "LESS_THAN", "parameterName": "zxFS73t7HwuPIivQ", "parameterType": "ACHIEVEMENT", "statCycleId": "ZxvFyry43os2KwJd", "targetValue": 0.15242929551837847}, {"id": "ibJlXlTYy5DYzJYx", "matcher": "EQUAL", "parameterName": "KNZlcFTa6sndojuw", "parameterType": "ACHIEVEMENT", "statCycleId": "ofybZEWAVWj9hPhf", "targetValue": 0.3427769397586625}]}, {"operator": "AND", "predicates": [{"id": "UUvaQi1JGHJJbxjs", "matcher": "GREATER_THAN", "parameterName": "94YsMNTLMi3EuyUd", "parameterType": "ACHIEVEMENT", "statCycleId": "9FgcaZ4PISbk8k9Q", "targetValue": 0.9191686162484951}, {"id": "3B4bpWyMRcXEwHu0", "matcher": "LESS_THAN_EQUAL", "parameterName": "1EmLzcfJEpiAvwtl", "parameterType": "STATISTIC_CYCLE", "statCycleId": "QTg4IanEu2KyrWhU", "targetValue": 0.2561034082602005}, {"id": "1rzFm7qzAiiRFNd5", "matcher": "LESS_THAN_EQUAL", "parameterName": "wgHyVLVETRjmagzT", "parameterType": "ENTITLEMENT", "statCycleId": "f5bFq1QUQ7j0eoyk", "targetValue": 0.5811448105133374}]}, {"operator": "AND", "predicates": [{"id": "zYjFm21qtwxWp5zc", "matcher": "GREATER_THAN", "parameterName": "ZX2PJqsFkORPVxqU", "parameterType": "USERACCOUNT", "statCycleId": "0DQIZ9Uw2qaLZxNA", "targetValue": 0.2459503183592241}, {"id": "FpnxFZxJLr56fLMg", "matcher": "LESS_THAN", "parameterName": "R3MXQKKSE0ercz2r", "parameterType": "ACHIEVEMENT", "statCycleId": "STpbt8obDNV0XHUQ", "targetValue": 0.5438034291821583}, {"id": "6WcEcWghD9WC4I97", "matcher": "LESS_THAN_EQUAL", "parameterName": "YMbA0YXBcVu6ZNhc", "parameterType": "ACHIEVEMENT", "statCycleId": "cTITja3FNsjnhHZG", "targetValue": 0.08024105572286033}]}], "rewards": [{"itemId": "niywzlgQezkL6neQ", "itemName": "OzSRW88lgwtUQaCx", "qty": 0.7549834388565431, "type": "ENTITLEMENT"}, {"itemId": "7US7J8jO7sogEFmR", "itemName": "lJ309hWcpi4EGN3W", "qty": 0.3777842522629957, "type": "STATISTIC"}, {"itemId": "e9wRSmf5C4SKk0lN", "itemName": "VpLX1FKiFwgEpr9H", "qty": 0.03454676924641886, "type": "STATISTIC"}], "schedule": {"endTime": "1978-12-14T00:00:00Z", "order": 92, "startTime": "1986-05-03T00:00:00Z"}, "tags": ["jPvq6fqCxdZNg1m3", "9a1vlqHR0SYYgLV5", "8pTGqa34m1pSZM4d"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'GPFApJwFo19nF1uX' \
    --code 'f9fCwLfuRUpbGJzJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode '6H4aBPcB5I5QDqWR' \
    --code 'zEyGotq6sJTgjOzx' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '45' \
    --userId '6fdiYJrAxscpPrFC' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'zAH9Z0YvHVUpvR1n' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'uRSNUf2D5U8VlMru' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'm5v56rydZDNYzEwc' \
    --namespace $AB_NAMESPACE \
    --dateTime '1987-11-12T00:00:00Z' \
    --limit '38' \
    --offset '59' \
    --userId 'kelaSTqlpCC11vGq' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'd7R94DEs5g4XA3Uf' \
    --namespace $AB_NAMESPACE \
    --safeDelete 'gMLSMNzA4N8JTAoS' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'oxP9aVbycUBEBSsj' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1994-08-05T00:00:00Z"}' \
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
    --body '{"appName": "uOdNRumlHzrsFTjR", "extendType": "APP", "grpcServerAddress": "Foe7c6xDF3JFdcum"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "0WDFPH3nXsQusJe7", "extendType": "APP", "grpcServerAddress": "hzmxAGsb77Bp4CVk"}' \
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
    --challengeCode '["qdyXwenauFXQEtC8", "hRZgCFQf6s5G8Xxe", "AUNiNxeMju9ojz6H"]' \
    --includeOneTimeEvent 'f6oSGkVLUIRfvq4V' \
    --body '{"userIds": ["GXk9632jEfVDJ4wP", "Qj0P5JV4QytCvdk8", "SDTm9RYbPYKRsmDW"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["zFFX9Tgb92HTY0iJ", "km6Q5bSenPGq1Ryn", "QGk5QOJiFZgbqEY4"], "userId": "xFZzZ4GEeKNFz3c0"}, {"rewardIds": ["UF2YRNg6DXKVMmkP", "umneOC1MVsiwubfO", "bHnGv4FiPA6f58ZW"], "userId": "DaRrrW0HicwowyU7"}, {"rewardIds": ["k3LstR5sxfONqa8J", "YOOwkCCaWWO5DKui", "m2vv8Cm9UZzg3hUv"], "userId": "A0GsoMroLI1wbgl4"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'iByIusWJYm6QXbVv' \
    --namespace $AB_NAMESPACE \
    --userId 'SSKkWjRLrqZIuGmF' \
    --body '{"goalCode": "wdV2FU5eQ74Jqke5"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'hLUZFnb8lMbh2EBP' \
    --namespace $AB_NAMESPACE \
    --userId 'bhCQlKWlyZ1zjvlI' \
    --dateTime '1976-01-10T00:00:00Z' \
    --goalCode 'XQJqOzUsdMvABliw' \
    --limit '86' \
    --offset '94' \
    --tags '["qzKGRbwJnEILzqyn", "TSilybr9KJuJCdrq", "Ys9nszIY4TlnXDDe"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'WWl8jSX5c6SEY5pJ' \
    --challengeCode 'yzWW6VbfeoNPZ8Mc' \
    --goalProgressionId 'IJD1HRmgV0fcarcw' \
    --limit '38' \
    --offset '29' \
    --sortBy 'createdAt:desc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'I0b1baSwaGCB7tEq' \
    --body '{"rewardIDs": ["0pznuHKQE9BXAcC8", "1785glDxqTdL1iOm", "AoWoxpsXW4TYdpDe"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'xzKHEgliq39jzTZO' \
    --limit '93' \
    --offset '26' \
    --sortBy 'createdAt:asc' \
    --status 'TIED' \
    --tags '["vil8oSueUoYWtaK5", "uwa8DfnYlO4pj7kr", "kfkSR7VOuzk53qKW"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'fFWYK2PwlRiyAsx8' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '80' \
    --sortBy 'updatedAt:asc' \
    --tags '["oxSjAJQ4bHdBe0n0", "gecploqbonEKIaDo", "HWmY0QV0nLGafM7Q"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode '0n4fCaQeK98devIi' \
    --code 'iKkE4gupavusnQEN' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'ZxbUrJN2zoIlwJm6' \
    --namespace $AB_NAMESPACE \
    --dateTime '1973-04-22T00:00:00Z' \
    --limit '64' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'VYitUiyWjTDY5zlm' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "wXRFk6q2fJQlGHrh"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["5BkQiU80a8mVUxSP", "3yWyMMdzzUeRneIR", "Dw4u6RuiuoW6ZiyI"]' \
    --includeOneTimeEvent '6ArNMFj34qLbL3up' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'dNYF4DQGiF3egQ2V' \
    --namespace $AB_NAMESPACE \
    --dateTime '1991-05-15T00:00:00Z' \
    --goalCode 'A7g0gnR5HFaHfQga' \
    --limit '62' \
    --offset '15' \
    --tags '["ufs7Td8Qi4Cwhk6h", "OXu65DXLw8S7mH4N", "6IlnNPIbY1MszjUZ"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode '43bhw7S84hzo0K77' \
    --index '98' \
    --namespace $AB_NAMESPACE \
    --goalCode 'xLswJIQJmtdUuQgE' \
    --limit '89' \
    --offset '3' \
    --tags '["xydnvj1I15OpAyMn", "YpS64ku0rOdUKcZI", "tHthWy8BhTGTqpY9"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode '89MYwRiDJWtrfGP2' \
    --goalProgressionId 'uFB06TwRtnSrEpY0' \
    --limit '92' \
    --offset '41' \
    --sortBy 'createdAt' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["RmTAgftgexrYqMX5", "8AmvgDZ7AojSszNd", "JhF5vOCPwVsux5BY"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE