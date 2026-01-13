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
    --keyword 'iFa9obSpeq864RH1' \
    --limit '96' \
    --offset '9' \
    --sortBy 'updatedAt:desc' \
    --status 'TIED' \
    --tags '["Fsh1coQ6s20VM8Nm", "zGrg62PQQzUCl300", "GbKeWdDzXH0Omgfn"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 32, "assignmentRule": "CUSTOM", "code": "2lUX4EKEq07S4pZQ", "description": "MCPXIRmPkpU6iiz9", "endAfter": 47, "endDate": "1995-12-13T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "YWl8yVrkoF6IH9tp", "randomizedPerRotation": true, "repeatAfter": 8, "resetConfig": {"resetDate": 81, "resetDay": 32, "resetTime": "EIU2ggf4cG6l9UA0"}, "rotation": "MONTHLY", "startDate": "1996-01-02T00:00:00Z", "tags": ["SWWOq40TRZuXepQ0", "bQwxdjKVA8wQP7Un", "O6Ahb3tE6Jy5epI4"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId '8g6IPsifhp6ybE0M' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'G4aShSkhRlOK67VT' \
    --limit '69' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'O5qYVU7pWC6T3SUB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode '1ZKWznJkzOhzejbK' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 96, "assignmentRule": "RANDOMIZED", "description": "DVNJRmQuwa5228Ho", "endAfter": 44, "endDate": "1972-03-25T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "neyzlhXt4Wo19IJq", "randomizedPerRotation": true, "repeatAfter": 63, "resetConfig": {"resetDate": 49, "resetDay": 54, "resetTime": "yPR3G6d89f0qynmy"}, "rotation": "WEEKLY", "startDate": "1992-11-16T00:00:00Z", "tags": ["3tamuSISt82Yw0hK", "MYlpfEaR91w9P6W0", "FUE408KaUIspuxKu"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'o8OCpfx4gW2Ty3vt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'LGUAk73vARdGcddp' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '43' \
    --sortBy 'createdAt:asc' \
    --tags '["n8imHn9MKbht6XIL", "uUVzkWerJuK7jGbR", "N0zrgrXHvdmPPRea"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'dzjM2UFl7pDumtSI' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Y6lexT0AvlaMiCHC", "description": "Mm1EbEDUMhAg0Eud", "isActive": true, "name": "2i51qx9pqsBrJb6v", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "smzENrHSvALeBHvG", "matcher": "LESS_THAN", "parameterName": "0xBPxNeCTdLoE1TW", "parameterType": "STATISTIC_CYCLE", "statCycleId": "QjQuThOUSCo7hOXx", "targetValue": 0.9090361496841058}, {"id": "Aqd7vA7rwwgIZLqZ", "matcher": "LESS_THAN", "parameterName": "SlJRPqf38uew3M8X", "parameterType": "STATISTIC", "statCycleId": "yGsbIYw1lPr5yAzH", "targetValue": 0.9789678874009207}, {"id": "RnPHVedl7gMxZMC5", "matcher": "GREATER_THAN_EQUAL", "parameterName": "LeX4m0XGCNcYegN2", "parameterType": "ENTITLEMENT", "statCycleId": "V1rtJlKpFpP9j71m", "targetValue": 0.582928015850409}]}, {"operator": "AND", "predicates": [{"id": "AfhpaLBWcKtQK3sQ", "matcher": "LESS_THAN", "parameterName": "iIa914pEiDsQQPAj", "parameterType": "ACHIEVEMENT", "statCycleId": "axfclXlhh6AeRqDN", "targetValue": 0.10429281781212951}, {"id": "6f33oWqW6lwDkPeY", "matcher": "EQUAL", "parameterName": "1OZqNVkDWGNnDaUs", "parameterType": "STATISTIC", "statCycleId": "51Teb0FwswSSix1P", "targetValue": 0.8087326870476806}, {"id": "AW9BhIhsAmYbH8vZ", "matcher": "GREATER_THAN_EQUAL", "parameterName": "uINzAWp8srKhpz6y", "parameterType": "STATISTIC", "statCycleId": "vNfuQoIM6E8l5Rzp", "targetValue": 0.2057031901217521}]}, {"operator": "AND", "predicates": [{"id": "pBXREb2HApoEpieB", "matcher": "GREATER_THAN_EQUAL", "parameterName": "dcvAlnK8HmpCldLP", "parameterType": "ACHIEVEMENT", "statCycleId": "VdehJHSft1eQ8daR", "targetValue": 0.631188095743273}, {"id": "XIPnjRUEogmyUvbF", "matcher": "GREATER_THAN_EQUAL", "parameterName": "W4VrfMzsh2Edy5M9", "parameterType": "ENTITLEMENT", "statCycleId": "MQlAK8bnww9ng99E", "targetValue": 0.3239794944729105}, {"id": "ggMk2YBtaKvxjGks", "matcher": "GREATER_THAN_EQUAL", "parameterName": "pXlS5yHqZCPQARhU", "parameterType": "STATISTIC", "statCycleId": "xdUFopO4atboKf0q", "targetValue": 0.6580803656220995}]}], "rewards": [{"itemId": "yDJwA6yDin160TCc", "itemName": "mmJo4qGFuxxDsg2Q", "qty": 0.4547748227932239, "type": "ENTITLEMENT"}, {"itemId": "fJs70j67BkfWOJGu", "itemName": "7T1xIqNegnBJfEee", "qty": 0.32933216410190846, "type": "STATISTIC"}, {"itemId": "mKfrof6P9Os5mHDS", "itemName": "O5jlqa88zqvQyT0p", "qty": 0.08825716948727946, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1973-03-26T00:00:00Z", "order": 31, "startTime": "1973-11-09T00:00:00Z"}, "tags": ["uqCzk40e5UiDajCo", "7qDCIAMF9YBOl1Pt", "BcWqlK9yUfiGjmxh"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'ZTdQbl1tJ6OnWKPw' \
    --code 'e6cYs7Mad9LJsSRA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'FhJJmUMLOrfCNfoR' \
    --code 'vAoFNbazQnaJjJ4q' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Sq3jsP5VGS9uGFrP", "isActive": false, "name": "Pk5G1WOThJ1GoIAS", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "i01aMbbHi7DS8zuc", "matcher": "LESS_THAN", "parameterName": "amATwUVPwxw4GWW1", "parameterType": "ACHIEVEMENT", "statCycleId": "IBY02OaYyEzXXVDF", "targetValue": 0.3408676548750773}, {"id": "n9u0f5iCOOyX1VxH", "matcher": "GREATER_THAN_EQUAL", "parameterName": "JEQBMwS04uwTieKc", "parameterType": "USERACCOUNT", "statCycleId": "T3qorXbyntKs5CBP", "targetValue": 0.7712623717732305}, {"id": "i7ZEFrfxzZ5LmlcW", "matcher": "EQUAL", "parameterName": "fGPs5KBB1qm9JvXs", "parameterType": "ENTITLEMENT", "statCycleId": "Kl8UoRREkxrTYbt1", "targetValue": 0.6874769632827255}]}, {"operator": "AND", "predicates": [{"id": "LhE9Z5i6eWcVPgmn", "matcher": "GREATER_THAN", "parameterName": "vaqjNbF6s5gnvutv", "parameterType": "STATISTIC_CYCLE", "statCycleId": "AsuzsHAW1O64jdtr", "targetValue": 0.5370111468668832}, {"id": "AtRBKasThh9UPdr9", "matcher": "EQUAL", "parameterName": "K09rS7oxnUWP12DJ", "parameterType": "STATISTIC_CYCLE", "statCycleId": "P3lbQgRp9QhxSs01", "targetValue": 0.659963720431151}, {"id": "UsH3IKWtlWlen5WU", "matcher": "GREATER_THAN_EQUAL", "parameterName": "lbaX3BcNclN3BYv6", "parameterType": "USERACCOUNT", "statCycleId": "tpSyuVuUR7FZF60H", "targetValue": 0.95564600502672}]}, {"operator": "AND", "predicates": [{"id": "4xipNhqbsfJGuMeQ", "matcher": "LESS_THAN_EQUAL", "parameterName": "kWuUyg3j5ppIHGRE", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Esof05Jfe25R4FFh", "targetValue": 0.8410168657012501}, {"id": "Bie27xM63ELKrTQd", "matcher": "GREATER_THAN_EQUAL", "parameterName": "vgUaSEeVqOID9dXY", "parameterType": "ACHIEVEMENT", "statCycleId": "ym5gPNPmTlCS5uyy", "targetValue": 0.33055177188918383}, {"id": "DRHVj53403fpHtzo", "matcher": "GREATER_THAN_EQUAL", "parameterName": "DXzlyUNcR7oJyuwd", "parameterType": "ACHIEVEMENT", "statCycleId": "HIce7OezZooC6qov", "targetValue": 0.3318126922543225}]}], "rewards": [{"itemId": "ys41VaGEAFqdNNOC", "itemName": "jFKxK4l5YKo0DZB4", "qty": 0.06647389471080933, "type": "ENTITLEMENT"}, {"itemId": "DTnKeQDFyTb9vEW9", "itemName": "JRUMrq2vXQLzUeWV", "qty": 0.8546661420291882, "type": "STATISTIC"}, {"itemId": "KMayB0UEdg2iCj0p", "itemName": "NKXl3uM6I9gB7lWS", "qty": 0.5498893618226053, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1988-09-22T00:00:00Z", "order": 18, "startTime": "1972-11-23T00:00:00Z"}, "tags": ["9dWO4GTVaqfkxC6w", "RvDka3PogqavB4zW", "uj9OAOcw9TXOctgJ"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'pgLVNeY9h0QBnLhd' \
    --code 'ssrgCK4Zp92o4iCe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'YmHaX1I9L9sayt9w' \
    --code 'QH2mdfUyiLoZvIej' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '65' \
    --userId 'lA3BVVuTiC4F5Smd' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'Tq9999IYlQfv3uny' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'szYMTONoR7KYLG2y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'EUjwbOegH1uh5b4l' \
    --namespace $AB_NAMESPACE \
    --dateTime '1993-10-24T00:00:00Z' \
    --limit '99' \
    --offset '94' \
    --userId 'bno8Fq5j4ZQAsOor' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'obqqo5HmJNWAZY9t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'tvnpYivpl7vYqaF1' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1987-06-08T00:00:00Z"}' \
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
    --body '{"appName": "xPNEo8BTtHYSRUoh", "extendType": "APP", "grpcServerAddress": "Szz0Sk0ZtuHvuWUW"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "XVEKH9GBVx8O3Eyz", "extendType": "APP", "grpcServerAddress": "pkvYL7J8T5RIT6V6"}' \
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
    --challengeCode '["bSTl0e1DgrHVpLbu", "BU4X2TkCiebCti6W", "cxMSrOF5bg1BfgyC"]' \
    --body '{"userIds": ["DzljH7HJ3vgUBodL", "xuc4aqTrMEwfiqTU", "NRCU87ysyKwWBbm3"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["ZrFDSVo97qB5onpf", "D2Vq8bSBz5l2T9LY", "GOJmMQZ02oOqQ0fY"], "userId": "NRJ0MO8V2MhBGpZk"}, {"rewardIds": ["hcv6fkNzpBzI4Aa2", "MghZwCNkMRUhsqjh", "F5KmvqGlgydB8PMA"], "userId": "jAuLKJvvCFtX5eCM"}, {"rewardIds": ["IbluD9RqvY5pXTh3", "nSPYSzBJKe72xH4M", "GBrj0Nedl9gkLt8G"], "userId": "aSNvd14bGzQGka2F"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'mr6mqmCzRjB8KMJ2' \
    --namespace $AB_NAMESPACE \
    --userId 'wpCRvB5ZUGkKXiY2' \
    --body '{"goalCode": "yTP9RjFRRagwNSZD"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'd5vjJKxzNqzGQ60j' \
    --namespace $AB_NAMESPACE \
    --userId 'V611NvmvFycgX0rb' \
    --dateTime '1990-11-15T00:00:00Z' \
    --goalCode 'Rn1sLANLXYKrfz3V' \
    --limit '84' \
    --offset '55' \
    --tags '["hdOWZ2YEVW91HbQN", "yxJKZFPMkhCHcWgi", "RJEdzK0BNHzANPKr"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '8ZxdD2Z7F5UGSN1Z' \
    --challengeCode 'G4zEAdRw3w0i6JB2' \
    --goalProgressionId 'BMwtv9BONu2KbVPC' \
    --limit '59' \
    --offset '21' \
    --sortBy 'updatedAt' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'nT9rUO7WmOZJifsR' \
    --body '{"rewardIDs": ["7exLeFcdv5hmrhRp", "tK4R99EgwaztBDDL", "6he9M2o2gXOneZHN"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'KDjQKblQ99lb0k7t' \
    --limit '2' \
    --offset '53' \
    --sortBy 'code:asc' \
    --status 'RETIRED' \
    --tags '["n7re6TsThgwYat7M", "buGoqkyfeQyNeG7v", "JI0bCj6vJ2LbeZMi"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'uxa0D2YTBdx18JCb' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '36' \
    --sortBy 'updatedAt:asc' \
    --tags '["Lli8NJnGwEFFcNZA", "xcsqC59emRrZPHvl", "ADjBQHcDhXIcnVzQ"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'k6BuxFAs883KEj7u' \
    --code '9QNhvBHMzHIzFjZ7' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode '8pMZN0V5M4qyr4Pi' \
    --namespace $AB_NAMESPACE \
    --dateTime '1994-02-14T00:00:00Z' \
    --limit '96' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'tf2xQ5cPPgrKZDBo' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "8HZ6VFhVGQC7TfSf"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["MOO7LJQsBKGRf9vS", "sfZkMlBKLf5DHG6W", "ejwL6KN6jqdD8tAm"]' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'PLfZtXgk0NK0LQcv' \
    --namespace $AB_NAMESPACE \
    --dateTime '1988-10-18T00:00:00Z' \
    --goalCode 'pBvhOHkXCNdkje2Q' \
    --limit '18' \
    --offset '40' \
    --tags '["Ul0hoSXwfVO6XoDU", "fTBOa6VWuirXkmij", "owHWnAvxuCKG63uI"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'wiVkvkBxSIAt8fa1' \
    --index '83' \
    --namespace $AB_NAMESPACE \
    --goalCode 'sLTU69LivMwlHcJl' \
    --limit '23' \
    --offset '84' \
    --tags '["3oHXTVSAKmoZaNsA", "JwhQEagNOPZJArTF", "IFg1R1qiG5djinlF"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'cInJvSHmKLKF6pEe' \
    --goalProgressionId 'plARwsauiw9EFZHv' \
    --limit '32' \
    --offset '14' \
    --sortBy 'updatedAt:desc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["bywnK0ri4NNQM8Eq", "tnA0CPfIEwQSjO6P", "sW9o5lGbw1BZrFH0"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE