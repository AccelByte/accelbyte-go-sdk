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
echo "1..41"

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
    --keyword 'ikSl9Y6PJ6QfVudA' \
    --limit '65' \
    --offset '74' \
    --sortBy 'updatedAt' \
    --status 'RETIRED' \
    --tags '["vGdJWRVgg3iUdtw2", "naklaLi8At89oqLY", "PJ4m0ZpquBzq8ocE"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 36, "assignmentRule": "FIXED", "code": "bQQxzQMBLuw0M6D0", "description": "NCY7wWrxwfLHqAOF", "endAfter": 58, "endDate": "1978-10-02T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "aXoUojr55K7IET2r", "randomizedPerRotation": false, "repeatAfter": 39, "resetConfig": {"resetDate": 35, "resetDay": 50, "resetTime": "HJKXlEJYqQPSayL9"}, "rotation": "WEEKLY", "startDate": "1995-12-28T00:00:00Z", "tags": ["zyfATlJGI2Ixxff8", "0NbosFRhcOduMrVq", "8NF9pMYZLCj2D8mP"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'FQt7kExS20NXDNri' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'wh8mKYZGy6z901Ym' \
    --limit '11' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'pM3EIkyzsc5ty1z7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'e68dByC7asjZWipd' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 94, "assignmentRule": "CUSTOM", "description": "opIMavk4mmfTuCSB", "endAfter": 78, "endDate": "1973-01-02T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "KDe2YV2Brpy4bFxl", "randomizedPerRotation": true, "repeatAfter": 43, "resetConfig": {"resetDate": 59, "resetDay": 91, "resetTime": "P2oRuQ2DxOUjnv8s"}, "rotation": "DAILY", "startDate": "1997-04-23T00:00:00Z", "tags": ["4NRLa5alKrV2Fwky", "1FYqVwS0HWjzHacz", "FB7n2lvrdaXQqjSv"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'fI3q3OSWvJ66YT39' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'sr7ks7TNa6HutLxX' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '39' \
    --sortBy 'updatedAt:asc' \
    --tags '["QsIy6ZKlj4k3ubnf", "uWIV9ulZkPUseO6R", "GnDDQjT1tXdCdxW6"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'qKgrPlvbB7JhJjyC' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "t7SxQ1ihbeA6scGL", "description": "NaJMropT8D6bmM6z", "isActive": true, "name": "heqL0XnTqfMJDXCt", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "oK7tzIIaj3ziZZ5t", "matcher": "EQUAL", "parameterName": "T5AMhOrolcMIhrfz", "parameterType": "ENTITLEMENT", "statCycleId": "9BHlTZ3oBK3PIaVN", "targetValue": 0.2224983886159747}, {"id": "1KZY6e3GDFZEVFbQ", "matcher": "LESS_THAN", "parameterName": "dTf6hou3mbXEmhPl", "parameterType": "USERACCOUNT", "statCycleId": "7x9SEXcTRxDuobgi", "targetValue": 0.2135410137216618}, {"id": "UzRBwXS79Nb3NNlZ", "matcher": "EQUAL", "parameterName": "1WeT2EQHG8xZf56f", "parameterType": "ENTITLEMENT", "statCycleId": "ZVObLCj8A0RMa8OY", "targetValue": 0.025715191932964565}]}, {"operator": "AND", "predicates": [{"id": "vtj8fmqMA4T5sc9P", "matcher": "LESS_THAN_EQUAL", "parameterName": "NHDAwDXZo8690gTM", "parameterType": "ENTITLEMENT", "statCycleId": "GTxshgnOXG5aHTUV", "targetValue": 0.332295231133251}, {"id": "zaQ2XV3kfty5nTvg", "matcher": "LESS_THAN_EQUAL", "parameterName": "oCyCa1ETZgVavuxN", "parameterType": "ACHIEVEMENT", "statCycleId": "imXxSziJRZBKyF5h", "targetValue": 0.18431192998946588}, {"id": "s2m5nU4F4WX2xQdU", "matcher": "LESS_THAN", "parameterName": "wF3pnRNqz7QjW0qe", "parameterType": "ENTITLEMENT", "statCycleId": "Y3LzwTKthma8Eaka", "targetValue": 0.6798406391973849}]}, {"operator": "AND", "predicates": [{"id": "SuPMTu8TflJvCTnE", "matcher": "LESS_THAN", "parameterName": "EfuR5GIwvL3Htbfr", "parameterType": "STATISTIC_CYCLE", "statCycleId": "liunD4Brx4BkXgBD", "targetValue": 0.5697778326388581}, {"id": "JEZc4bRe4gb3GaoC", "matcher": "LESS_THAN_EQUAL", "parameterName": "nXpeogUjsNtPe6gx", "parameterType": "ENTITLEMENT", "statCycleId": "zJwYtgRU4Ot1lGz5", "targetValue": 0.19142405324660117}, {"id": "urss3b84IR9quYD8", "matcher": "GREATER_THAN_EQUAL", "parameterName": "aa6zeXXFf15Isykb", "parameterType": "ACHIEVEMENT", "statCycleId": "DoJ5DSjV3bkxeSYm", "targetValue": 0.2713915239585186}]}], "rewards": [{"itemId": "sZ9vGwrl4PwQtHmk", "itemName": "A69HHBbMkLSnUw2u", "qty": 0.3336347938269595, "type": "STATISTIC"}, {"itemId": "OjGub13EFq4ZzDGy", "itemName": "TnOJwXpboWiIwt3i", "qty": 0.7086068052654021, "type": "STATISTIC"}, {"itemId": "Y4CKnoP9dRlL8JP5", "itemName": "caxeF9kpd4LS0BoX", "qty": 0.6316791807902907, "type": "STATISTIC"}], "schedule": {"endTime": "1993-04-23T00:00:00Z", "order": 32, "startTime": "1982-07-17T00:00:00Z"}, "tags": ["qNm5JiTlkSJAIAKA", "ifOGH3X09phdiGei", "o0tPdFyHxuLuvQ8h"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'RDzrNu26sxKKH9Q5' \
    --code '67wNhb2n8EG7G4Hr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'F3UBGkgnfns6HRfQ' \
    --code 'IsICEPRkiQEyf5sa' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "bKXLK4rxzK7Hm0Is", "isActive": false, "name": "Cp7nkU2mQPzIXxzz", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "EgyDQeyY90y8m5BH", "matcher": "LESS_THAN_EQUAL", "parameterName": "zBKVXrOFK9AGTS2y", "parameterType": "STATISTIC_CYCLE", "statCycleId": "ctCoMJtHk7Sa4z6Z", "targetValue": 0.24866150646797136}, {"id": "7rrv2c2740CknclR", "matcher": "LESS_THAN_EQUAL", "parameterName": "QjucGuZVNG34rPR7", "parameterType": "ACHIEVEMENT", "statCycleId": "KCYeSknpyQZRJkwA", "targetValue": 0.2976396201269328}, {"id": "M2hB4vYQhQlgi5Uz", "matcher": "GREATER_THAN", "parameterName": "s2b5ye8NmyobwfXF", "parameterType": "STATISTIC_CYCLE", "statCycleId": "N6F1hmCFWD2lbybb", "targetValue": 0.5110391358638439}]}, {"operator": "AND", "predicates": [{"id": "hvhMU3eJOPHmSzpv", "matcher": "GREATER_THAN", "parameterName": "3R5gHv3Rg2PLoRXA", "parameterType": "ACHIEVEMENT", "statCycleId": "Qyw7qSkiThd7RnzH", "targetValue": 0.08528842016940064}, {"id": "V1TfEPvDMey6WVvN", "matcher": "LESS_THAN", "parameterName": "Z71Py4r3C2vQvJdL", "parameterType": "ENTITLEMENT", "statCycleId": "5OWA9H5dzfOXvgwi", "targetValue": 0.7329450795810805}, {"id": "4H2dD5ZjqL0HNLZ9", "matcher": "LESS_THAN_EQUAL", "parameterName": "vEle6twxiXPSuWBD", "parameterType": "ACHIEVEMENT", "statCycleId": "ojiDP0uS8s86jxw6", "targetValue": 0.2796072546382139}]}, {"operator": "AND", "predicates": [{"id": "fq3qKfIrsLoJU6Xy", "matcher": "LESS_THAN", "parameterName": "nTSw8Eush4OMhPgT", "parameterType": "ENTITLEMENT", "statCycleId": "OS6zRzKsNUflu5nT", "targetValue": 0.7108739479434931}, {"id": "ZD4MJSbQmgYmPAEr", "matcher": "GREATER_THAN", "parameterName": "HACREiIeWYaYrSnA", "parameterType": "ACHIEVEMENT", "statCycleId": "ZMcUT6eQKLbhJVGo", "targetValue": 0.3387843943383221}, {"id": "nFIgS8R7tuqMinhp", "matcher": "GREATER_THAN_EQUAL", "parameterName": "ki3OYVW2FT497XLz", "parameterType": "USERACCOUNT", "statCycleId": "10PftZlAt7kfRZAl", "targetValue": 0.2452538913569806}]}], "rewards": [{"itemId": "i7dDpFnKyNqE1UpS", "itemName": "vyXeBldtFOtjaPsa", "qty": 0.6064435335061059, "type": "STATISTIC"}, {"itemId": "d1zkI8m4s4RWuMIO", "itemName": "1tWfTDFjgjB2H2ZE", "qty": 0.05761962278044275, "type": "ENTITLEMENT"}, {"itemId": "OVbttmIlSQ2eFeAx", "itemName": "KU1ztwvmC3XZvmEl", "qty": 0.3696450521406994, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1971-03-18T00:00:00Z", "order": 45, "startTime": "1997-01-05T00:00:00Z"}, "tags": ["lP0WZkoB0urqt1kY", "PCJaZfIOB2On0SXW", "ZyEBGs9lE82VvRwH"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'xqj5ZHjhhJrW4rpw' \
    --code 'm2mgKgCZB6j3Cz3q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'miPsYqfhu6fQUrM7' \
    --code 'm8CurJKc3NqPLtNS' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '69' \
    --userId 'JqGlqPSkZRPkDLgV' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminMoveGoalToSlot
samples/cli/sample-apps Challenge adminMoveGoalToSlot \
    --challengeCode 'syN4VUwc3UkfA3el' \
    --code '8cEIYvwmtpOOYPYT' \
    --namespace $AB_NAMESPACE \
    --body '{"slotIndex": 45}' \
    > test.out 2>&1
eval_tap $? 15 'AdminMoveGoalToSlot' test.out

#- 16 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'rbzxNt8PjOoueHma' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetPeriods' test.out

#- 17 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'Q99biXb1hbO7q0Yx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminRandomizeChallenge' test.out

#- 18 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode '0s53riZUKWjiGrY2' \
    --namespace $AB_NAMESPACE \
    --dateTime '1985-06-11T00:00:00Z' \
    --limit '17' \
    --offset '61' \
    --userId 'sE5tNfOVBFbNFJVO' \
    > test.out 2>&1
eval_tap $? 18 'AdminListSchedules' test.out

#- 19 AdminGetChallengeSlots
samples/cli/sample-apps Challenge adminGetChallengeSlots \
    --challengeCode 'IZozYruE3BKV2Ya4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminGetChallengeSlots' test.out

#- 20 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'DPKOJuHzGwvaa3JQ' \
    --namespace $AB_NAMESPACE \
    --safeDelete 'U125CwwMoK9p60bl' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTiedChallenge' test.out

#- 21 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode '4bNpeKINBkrueMGf' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1992-09-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateTiedChallengeSchedule' test.out

#- 22 AdminGetAssignmentPlugin
samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetAssignmentPlugin' test.out

#- 23 AdminUpdateAssignmentPlugin
samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "efMNShrBIUAA3MhX", "extendType": "APP", "grpcServerAddress": "rOnzI9uhbWErHwm0"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdateAssignmentPlugin' test.out

#- 24 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "oNG77J9YT7pVRhLE", "extendType": "CUSTOM", "grpcServerAddress": "3pNb9ZdbuX0mvNxf"}' \
    > test.out 2>&1
eval_tap $? 24 'AdminCreateAssignmentPlugin' test.out

#- 25 AdminDeleteAssignmentPlugin
samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteAssignmentPlugin' test.out

#- 26 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["Kccn8i6eMiD4TCA8", "2Ve8vayf2mnZFhj1", "LyO4gKcNomFi42CW"]' \
    --includeOneTimeEvent 'XKeZRY1MdDVNJXgb' \
    --body '{"userIds": ["aZKbxp0h76Ga5Lz0", "oLE3LKgGpmQ2OduE", "QJDyb3HIzY9IrHBg"]}' \
    > test.out 2>&1
eval_tap $? 26 'AdminEvaluateProgress' test.out

#- 27 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["0NqQMoUoozJoiz70", "Jh7Aa9XehiHx9ZDX", "1VEZz3yNJm4ONZRI"], "userId": "54u1FF7u0mMkoyjx"}, {"rewardIds": ["ocXU9LgmpV8gmgtq", "dbDOkDhlE28RYLei", "SRjmpMvIJOizWldV"], "userId": "Jm22dSKNSn2tIm0i"}, {"rewardIds": ["ahNHwbVj8EljhMGG", "AIgdke3rRz0MEyrf", "MMwdbuZxU9P0fkIC"], "userId": "5pt721gV8nIjOUZG"}]' \
    > test.out 2>&1
eval_tap $? 27 'AdminClaimUsersRewards' test.out

#- 28 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode '3DYp6QHAzywItNTx' \
    --namespace $AB_NAMESPACE \
    --userId 'K6RnDx909hsgKV3H' \
    --body '{"goalCode": "Zuullo9nyIMTF6Jv"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminClaimUserRewardsByGoalCode' test.out

#- 29 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'bzE818EDa2tFHMYk' \
    --namespace $AB_NAMESPACE \
    --userId 'ZyhYiuEzSnrSE47w' \
    --dateTime '1995-08-29T00:00:00Z' \
    --goalCode 'YSKMYMdmVtIOn7M6' \
    --limit '54' \
    --offset '42' \
    --tags '["uNscF3hQS9iU8tiM", "J9WMMusKtSczo6KJ", "LmUXF2FpwVbreeDg"]' \
    > test.out 2>&1
eval_tap $? 29 'AdminGetUserProgression' test.out

#- 30 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'hdEcry2SpNXIMQzF' \
    --challengeCode 'uY4jxGps4L6znCTy' \
    --goalProgressionId 'dAPrhxkzFvaqLhCb' \
    --limit '90' \
    --offset '2' \
    --sortBy 'updatedAt:desc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserRewards' test.out

#- 31 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ks8LSOnd1fPr7zZ3' \
    --body '{"rewardIDs": ["Uc1nypFzUghMDVKQ", "jun723X7JGpEQgnR", "vaLLT2OCCZCSvm2l"]}' \
    > test.out 2>&1
eval_tap $? 31 'AdminClaimUserRewards' test.out

#- 32 PublicGetChallenges
samples/cli/sample-apps Challenge publicGetChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'BlMu94UjLoTnJxVy' \
    --limit '12' \
    --offset '29' \
    --sortBy 'updatedAt:asc' \
    --status 'RETIRED' \
    --tags '["8rlB8F3RAUEFpqan", "NyK8OzwrwWvTCSCg", "xM0m25lWZpSVVdDF"]' \
    > test.out 2>&1
eval_tap $? 32 'PublicGetChallenges' test.out

#- 33 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'whT98YZgRxkEB8LA' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '5' \
    --sortBy 'createdAt:desc' \
    --tags '["8wG5vbP8plzkud4R", "bcNO8nlcOtxQ95IU", "lj7jfab7oi6E3ZTi"]' \
    > test.out 2>&1
eval_tap $? 33 'PublicGetScheduledGoals' test.out

#- 34 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'glXapkPuTTg5fAjJ' \
    --code 'Ebgv2eMJZ4jhESUg' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 34 'PublicListSchedulesByGoal' test.out

#- 35 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'PwVHNwLVC5m4cGIh' \
    --namespace $AB_NAMESPACE \
    --dateTime '1979-01-24T00:00:00Z' \
    --limit '49' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 35 'PublicListSchedules' test.out

#- 36 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode '0G5i6DJ4LXVMXFq3' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "Ouq00Pn9kdLnrqCj"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicClaimUserRewardsByGoalCode' test.out

#- 37 PublicEvaluateMyProgress
samples/cli/sample-apps Challenge publicEvaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["T2CqF78IdRYGEHZq", "OSjzMMEYi1cubiK2", "t2WAw2qzVvxn6r42"]' \
    --includeOneTimeEvent 'DchWy9Olq91S7RoE' \
    > test.out 2>&1
eval_tap $? 37 'PublicEvaluateMyProgress' test.out

#- 38 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'E9w0blRl2arbIpTn' \
    --namespace $AB_NAMESPACE \
    --dateTime '1971-12-22T00:00:00Z' \
    --goalCode 'iBa8mHFOPPYZe2eL' \
    --limit '92' \
    --offset '69' \
    --tags '["Xazw6ZA3q0JNrMvv", "hBL6gfyfzuEusfi9", "gzyaEk0Ztp3seJzV"]' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserProgression' test.out

#- 39 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'K4xClU1L9NI4Ksqk' \
    --index '29' \
    --namespace $AB_NAMESPACE \
    --goalCode 'riwvgBBNZt0lKiJa' \
    --limit '60' \
    --offset '18' \
    --tags '["CalLh5pf9jdiemjz", "9SBw4R4l6x8MXhyf", "4iDTGSZs6h73hzhL"]' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetPastUserProgression' test.out

#- 40 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode '0NKvJO1irHDIPfyI' \
    --goalProgressionId 'CcVnqRXO0Ib4cqFo' \
    --limit '35' \
    --offset '38' \
    --sortBy 'createdAt' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetUserRewards' test.out

#- 41 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["VtveHysvu2CN0sp5", "IKgQ3RZwgqKo6wWH", "Mo13ZCKf9iIy9h27"]}' \
    > test.out 2>&1
eval_tap $? 41 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE