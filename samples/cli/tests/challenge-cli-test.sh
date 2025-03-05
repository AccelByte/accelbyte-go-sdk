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
    --keyword '2AZCm42JuyTagifL' \
    --limit '45' \
    --offset '56' \
    --sortBy 'updatedAt' \
    --status 'TIED' \
    --tags '["wXcM4xbd2OoG10e5", "PD3N9kW7PjlDxgER", "acJTKPBl36GBg220"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 3, "assignmentRule": "CUSTOM", "code": "ruOl2sTdDyJw5c48", "description": "FeqWr9CnBKB5Lvb4", "endAfter": 100, "endDate": "1989-09-03T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "HwSRjms74FSsFVDi", "randomizedPerRotation": true, "repeatAfter": 92, "resetConfig": {"resetDate": 51, "resetDay": 24, "resetTime": "RsF0dx2A4JrJkrnt"}, "rotation": "WEEKLY", "startDate": "1986-09-25T00:00:00Z", "tags": ["r6xnlUBLcbzEBxWu", "sIje6jOx99HBuzcP", "XMtFiHADI8clu2s1"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId '5XwE4sXwUyyUUCjE' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'LJMsUziSzvEPBFXq' \
    --limit '85' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'hmVmzOmMGetkJVgx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode '90dA1Dqb2F2idWqS' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 59, "assignmentRule": "UNSCHEDULED", "description": "JGy2zyHmoY4tjRgb", "endAfter": 53, "endDate": "1987-10-16T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "zbCAoT1OOcWzAGxn", "randomizedPerRotation": true, "repeatAfter": 100, "resetConfig": {"resetDate": 84, "resetDay": 88, "resetTime": "P0DoI4IpaLxOWxc6"}, "rotation": "NONE", "startDate": "1984-11-08T00:00:00Z", "tags": ["4EkbhOiiCd6FpKx9", "YCXE91AXHb25jDHb", "d9agVi9zqaaQhmfi"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode '498M6QJr2JLXiLgf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'J95uSO37mBIIjy99' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '19' \
    --sortBy 'updatedAt' \
    --tags '["oDNkaC5lhApSVADN", "rXFRPhT1c9IC2dAu", "qA0OQkQJ6sEpdtKw"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'c9OjIE2WQ4vzb2pW' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vKbydsnW63fJaArP", "description": "71dHvq8UNX2iZlrn", "isActive": true, "name": "j8kyg0fpk00OwUrs", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "azeiPa5gILxPpHen", "parameterType": "STATISTIC", "statCycleId": "bYhTabXv653NJLOW", "targetValue": 0.8138890895932609}, {"matcher": "GREATER_THAN", "parameterName": "wHXVc1XVLIRZUNCe", "parameterType": "ENTITLEMENT", "statCycleId": "BXPVvZCeWfdVR8RT", "targetValue": 0.8029973387825039}, {"matcher": "GREATER_THAN", "parameterName": "dBrAhdZAWbksfkrj", "parameterType": "STATISTIC_CYCLE", "statCycleId": "w5Yn1osk0OYRk7St", "targetValue": 0.3198556880411142}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "blVODTLlQtPiaGgU", "parameterType": "ENTITLEMENT", "statCycleId": "DUNopT0MoCuSVxak", "targetValue": 0.4886554563402302}, {"matcher": "GREATER_THAN", "parameterName": "XnG5ggmWYqMCPPqM", "parameterType": "ACHIEVEMENT", "statCycleId": "z6X0ZcXCOp9aofdI", "targetValue": 0.9878300599844247}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "bfG5bNCWESCKaLHi", "parameterType": "STATISTIC_CYCLE", "statCycleId": "4qWQ6FmeGez5vi7E", "targetValue": 0.24252296051731248}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "9Tzaa8Q7vC8QLTcH", "parameterType": "STATISTIC", "statCycleId": "T3iIlGGypwJhTf83", "targetValue": 0.15020987327085145}, {"matcher": "LESS_THAN", "parameterName": "7Axm1XNxcaRnYArl", "parameterType": "STATISTIC", "statCycleId": "KzBIpQfFAzgmWMnp", "targetValue": 0.31779602716445465}, {"matcher": "EQUAL", "parameterName": "uoy0ct7iyuXkycU3", "parameterType": "STATISTIC_CYCLE", "statCycleId": "CkCjQ83lVfZvyfvo", "targetValue": 0.04256237808246721}]}], "rewards": [{"itemId": "61u8rQUlNaibvlS6", "itemName": "uaL1GwihXeb0uslh", "qty": 0.0448763947807842, "type": "STATISTIC"}, {"itemId": "fVFOCknF9imGQll8", "itemName": "FjFIwKLsMxHf1nOh", "qty": 0.20607089318326322, "type": "ENTITLEMENT"}, {"itemId": "oaf9Mh6yvFjBw6XH", "itemName": "wXgFs4Fddiy8Tbm3", "qty": 0.07586141756343934, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1986-10-19T00:00:00Z", "order": 7, "startTime": "1972-08-28T00:00:00Z"}, "tags": ["NkPbBXVM3KKT1rxG", "5z9XGEpieoo8ErmT", "FV56yPlAJ2sCZ9Qi"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'pCXnFUUkbSeBJxrQ' \
    --code 'YqXdTBzQdPcfUPSA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'wDP7IdpMpN0aBJ2i' \
    --code '7AmrRQ8n1raxtVDc' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fQTIMRb8Oe5mwpXS", "isActive": false, "name": "moGgUw1Ef0elX1km", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "jfhZNiKgC4kWcbos", "parameterType": "ACHIEVEMENT", "statCycleId": "ksxb8g8vFlpBc54g", "targetValue": 0.2734276302208736}, {"matcher": "GREATER_THAN", "parameterName": "5lKkVEjC0h0XHUJE", "parameterType": "STATISTIC", "statCycleId": "h9kLgd1yMwox3ZyJ", "targetValue": 0.5265279280606552}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "SIfZGPzoxBvdvrXF", "parameterType": "STATISTIC", "statCycleId": "nfRZzfcHtv1pHpHP", "targetValue": 0.5146809744769771}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "ZKblv9NXN6RE9AIA", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Hk8B5Xs2XRgvSQFC", "targetValue": 0.8912644701533429}, {"matcher": "GREATER_THAN", "parameterName": "Ks2rVLpxU3AwzT2h", "parameterType": "STATISTIC", "statCycleId": "msHw23CQ627Kco3T", "targetValue": 0.12232160166259076}, {"matcher": "GREATER_THAN", "parameterName": "YvnEcdLksXjxAPcw", "parameterType": "ENTITLEMENT", "statCycleId": "IB00Lbo1EwE6BANX", "targetValue": 0.2776332523784404}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "jnL3SdhJc6NuiDrm", "parameterType": "STATISTIC", "statCycleId": "f9PcsfZbSh8fd6YU", "targetValue": 0.11727489020089132}, {"matcher": "GREATER_THAN", "parameterName": "2FtG20orSQQ9YpA3", "parameterType": "STATISTIC", "statCycleId": "O7dWNWymGjkzzO27", "targetValue": 0.07495536801744929}, {"matcher": "EQUAL", "parameterName": "NOvgtQuiaXK9I4ZJ", "parameterType": "ACHIEVEMENT", "statCycleId": "vms5H4MxbxJfl74e", "targetValue": 0.6877251075483044}]}], "rewards": [{"itemId": "4t0rPCABw6QoUlV5", "itemName": "7vlHOaHViIropviw", "qty": 0.7827036776050864, "type": "ENTITLEMENT"}, {"itemId": "abYgE6FOZyQNHUcW", "itemName": "aAmNX7tJmESd6J9A", "qty": 0.9664294642294822, "type": "STATISTIC"}, {"itemId": "yT5a62dA3FE1JI68", "itemName": "O8Zow1q6VFWGrKon", "qty": 0.045112851059270764, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1998-07-25T00:00:00Z", "order": 34, "startTime": "1987-03-18T00:00:00Z"}, "tags": ["lP0Jrm3vbQNCrNy9", "VWIBCtSilh8VKd0p", "33WCnJahEWsliVOb"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'cQE5C8PD29VemwhK' \
    --code '7UqpFMUZubV1sF8s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'ZEmhL0uHDnIe9TLh' \
    --code 'f2rSxDhwnkRSp4BG' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '75' \
    --userId '3yo7QUY52UqdWqgs' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'cF9cds2JOY5dWDzd' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'n7q6fnyQ77iFNLE5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'gxZGl8VnxMueA2b0' \
    --namespace $AB_NAMESPACE \
    --dateTime '1973-12-08T00:00:00Z' \
    --limit '84' \
    --offset '54' \
    --userId 'LZx2v3G9i8Yk7DzT' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'tpv6BAbesLUhvrfa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'fSCzmmVdpmPWEdL5' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1971-03-30T00:00:00Z"}' \
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
    --body '{"appName": "DuytJex8fdxnrklo", "extendType": "APP", "grpcServerAddress": "tnCF9Y83NFpDLuBs"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "td8iDPWWAPlwpRzT", "extendType": "CUSTOM", "grpcServerAddress": "ijCMutOxWW7DoYU6"}' \
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
    --body '{"userIds": ["lhufPeuastNoGrUi", "2ScrOMHgMgBSRGyi", "DcsvpYbE6UCFp771"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["tXE94NuVIMsjaAE9", "4uAOpimU4rZTixKF", "arLpO0G2uxXwNqTF"], "userId": "rSO3eWGZdtTVM9Vz"}, {"rewardIds": ["JINCwCpxjZ90qXHj", "jXoxFBG1cx91XQP8", "NTeMkG3XXvsy82kf"], "userId": "zs9OvH4fw0m1J2xN"}, {"rewardIds": ["qvwigwDIIrILNANF", "8ZZcxbkJ232o3A4H", "xSnirQAPRDZ686Wl"], "userId": "9768zdeYHLrlL5cm"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'r1CedTkSmQnq34qE' \
    --namespace $AB_NAMESPACE \
    --userId 'uGLGzjBxcwUKZWXP' \
    --body '{"goalCode": "rbl7Y8QtqPZrjZyg"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'LSldeE1XWYiHlgdD' \
    --namespace $AB_NAMESPACE \
    --userId 'ZslHjE3Zf6Voqe6M' \
    --dateTime '1973-11-07T00:00:00Z' \
    --goalCode 'hVveYBkjVCKNSkMf' \
    --limit '54' \
    --offset '5' \
    --tags '["4oHkBKU5TSjNG6eh", "xwxdMOANM5cYjv8Z", "RpNIuuLSANkCYMbL"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'dN325ZNw1CurDeWq' \
    --challengeCode 'EZZJsI7J88D8JlUQ' \
    --goalProgressionId 'mv6cwM0kEhOBnjsR' \
    --limit '82' \
    --offset '25' \
    --sortBy 'updatedAt' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'SvGgUPJ6HZkqtHQW' \
    --body '{"rewardIDs": ["m34PlCrxzD0fZHgu", "RrHhLBvKyDsdVDGA", "CKOHc3jrS2tcDkZc"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'FfiqyWwJ0Mdn8rF4' \
    --limit '39' \
    --offset '93' \
    --sortBy 'createdAt:desc' \
    --status 'INIT' \
    --tags '["P7Baj6Hco0D8WkCW", "NkUG78hEbpyypH4a", "hpnPCFdXWeE0Mcxz"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'YRKnQ2ai90xJdZnJ' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '71' \
    --sortBy 'updatedAt' \
    --tags '["LqKBfiaMxGum6Kbr", "6Rf6CqJzTQ8ZD8aa", "PlKVoNlNKfWok1kU"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'gFu8qXRpTcM8rbk5' \
    --code 'tbHnds6kvl8BDaKn' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'tPJ9e6yHrK4icKRW' \
    --namespace $AB_NAMESPACE \
    --dateTime '1978-07-27T00:00:00Z' \
    --limit '75' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'y6Fzto3jqCca4zqR' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "NY87F25TntacPw56"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode '4bWBhTsRUyXPevfI' \
    --namespace $AB_NAMESPACE \
    --dateTime '1984-10-12T00:00:00Z' \
    --goalCode 'BLKsdscKcazCkLjT' \
    --limit '91' \
    --offset '45' \
    --tags '["crKQPzsRK44qVp4f", "oqBIv4QugN67zXAA", "7Eynk1rXMrApfvdV"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'PFCiGqn7ppCmsBjv' \
    --index '43' \
    --namespace $AB_NAMESPACE \
    --goalCode 'pgbNXVlQs22FNQoZ' \
    --limit '97' \
    --offset '87' \
    --tags '["Ai5DrKBiJPRnGaaO", "vrONeX5Y1Z7JG573", "hECI120bdHfBmg9b"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'MgVbKFM28bWLAZEo' \
    --goalProgressionId '17Z9RWlLj9EdRgY8' \
    --limit '76' \
    --offset '58' \
    --sortBy 'createdAt:asc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["BlusPghBpJfz9LGG", "5yv3VaW695gq3rt2", "Jrof5ALuTEne2ady"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE