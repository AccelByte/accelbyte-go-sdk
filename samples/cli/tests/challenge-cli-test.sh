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
echo "1..29"

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
    --limit '74' \
    --offset '63' \
    --sortBy 'pP6MlW52oK25ttAi' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 72, "assignmentRule": "RANDOMIZED", "code": "AAMj1Zr607AdObV2", "description": "nWWi4fLz3zLf9XFd", "endAfter": 45, "endDate": "1973-06-17T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "eyBggHCyPBjGZOj9", "randomizedPerRotation": false, "repeatAfter": 55, "resetConfig": {"resetDate": 77, "resetDay": 99, "resetTime": "KrVYYDTD08DF1qdF"}, "rotation": "NONE", "startDate": "1995-08-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'QqU7zIZXIpSychk4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'XtorgIeWYLTPNPiC' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 3, "assignmentRule": "RANDOMIZED", "description": "KEXupYdBPcM3jXx9", "endAfter": 19, "endDate": "1994-08-03T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "3Hy7lPSQjRwx9rk9", "randomizedPerRotation": true, "repeatAfter": 93, "resetConfig": {"resetDate": 38, "resetDay": 39, "resetTime": "eprExq4FlKxDuHQi"}, "rotation": "NONE", "startDate": "1973-06-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'lDGDcmvX8buefS63' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'HspbzklgiKjedl58' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '56' \
    --sortBy 'gWoBoIlXq1eKGAOi' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'dDuoAdqf02v2lmMG' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0ruAictqhIdAcGL6", "description": "aOGNqVkk0Jzo94q7", "isActive": false, "name": "nzB5v0RGVKlua0rn", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "Wzl3t9SNoSg5mrAS", "parameterType": "ACHIEVEMENT", "statCycleId": "Bfv3glJrRZz4WFHP", "targetValue": 0.38181649096361336}, {"matcher": "LESS_THAN", "parameterName": "pZxbYn6NPGk6n39I", "parameterType": "STATISTIC_CYCLE", "statCycleId": "LQNzQ8EjdE9lQAox", "targetValue": 0.40822392887704884}, {"matcher": "LESS_THAN", "parameterName": "eIbmlfSEz4DLAZON", "parameterType": "USERACCOUNT", "statCycleId": "ZahnajOLuhAC1N2R", "targetValue": 0.8739759717567112}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "4d9t0sl4k0r7ibCD", "parameterType": "ENTITLEMENT", "statCycleId": "hTXDDD1hThJIVTfh", "targetValue": 0.9621975005084247}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "1oRwSzwQaE9s0omy", "parameterType": "STATISTIC_CYCLE", "statCycleId": "wIQaYEkTxVys660t", "targetValue": 0.7814055193372627}, {"matcher": "EQUAL", "parameterName": "3xXroz8Sk1BULAFA", "parameterType": "ENTITLEMENT", "statCycleId": "pPs2q5xV4zHBTasF", "targetValue": 0.023120256328211353}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "XNTndJCt3R7A3xRi", "parameterType": "ENTITLEMENT", "statCycleId": "ad18NxDVy31GLXoa", "targetValue": 0.7781452611067458}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "Wq5VI4wEDiwcd0rj", "parameterType": "STATISTIC_CYCLE", "statCycleId": "qQ2pvDZuYQ8aAGQU", "targetValue": 0.4507898679533481}, {"matcher": "GREATER_THAN", "parameterName": "WbOpJUKFmPwjYsNS", "parameterType": "ENTITLEMENT", "statCycleId": "ONX6M0pBfNGGxzrz", "targetValue": 0.3239724021240564}]}], "rewards": [{"itemId": "lNcU0hD9QBC0u1Gw", "itemName": "zKDUFA8xIc8zQ9GO", "qty": 0.6148896510356421, "type": "STATISTIC"}, {"itemId": "Hg9QK78eJn2FqQS5", "itemName": "HGJS5jn9N86Q56tC", "qty": 0.1291457034666419, "type": "ENTITLEMENT"}, {"itemId": "0xwugptbRLeXf7YR", "itemName": "x8K64lv4YwhJBlTK", "qty": 0.5122179687488652, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1971-01-14T00:00:00Z", "order": 26, "startTime": "1980-12-07T00:00:00Z"}, "tags": ["7FihGrg21YNmokYH", "gxqKeM1zsval4sIT", "TQfAf1JtUFVV2eo4"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'YxlSzKT9Yg552r3C' \
    --code 'XMFraS1PXueChR5m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'jUv4HI5y5RLMAEuz' \
    --code 'p3JonNKd4177wO8H' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "CNKiciD2dlbRqCRm", "isActive": true, "name": "X6024L9Ow9NvSXff", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "TCJSA2bn3Iwogr0f", "parameterType": "USERACCOUNT", "statCycleId": "8TSwoJx5nW6i5Ffx", "targetValue": 0.8879385201434855}, {"matcher": "EQUAL", "parameterName": "bRbpYJXvG8zFXaM8", "parameterType": "STATISTIC_CYCLE", "statCycleId": "BS8AvxYWilBCV3pP", "targetValue": 0.5323914887232479}, {"matcher": "GREATER_THAN", "parameterName": "s5QYvtajGg2k8BwA", "parameterType": "STATISTIC_CYCLE", "statCycleId": "VqCaZFOIp4X8ni5Z", "targetValue": 0.9162839742774956}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "LlzTzbUDViovZIBQ", "parameterType": "ACHIEVEMENT", "statCycleId": "JSnaRXBFWvqCVR55", "targetValue": 0.8944353404275351}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "bw7tiiIDGWSNtpO2", "parameterType": "STATISTIC_CYCLE", "statCycleId": "UaqWgFGLpMT98INs", "targetValue": 0.6059221936818238}, {"matcher": "EQUAL", "parameterName": "JL2dVzjsACb8DLfD", "parameterType": "USERACCOUNT", "statCycleId": "ayfifrcCzT6otU8f", "targetValue": 0.638016433445455}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "hv33sDjrYn3U4ris", "parameterType": "ACHIEVEMENT", "statCycleId": "JmnAuCJep5QlaOfX", "targetValue": 0.05751157490988734}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "l0c5ELTHQmSckyDx", "parameterType": "ACHIEVEMENT", "statCycleId": "oYOzqCJaZ4LFIiwI", "targetValue": 0.29208440059092133}, {"matcher": "LESS_THAN", "parameterName": "QAas9X2l4YLGfVdX", "parameterType": "ENTITLEMENT", "statCycleId": "eyifXSa3fcd2RoBp", "targetValue": 0.8387127994173065}]}], "rewards": [{"itemId": "kABSrcWeYD0XcFLC", "itemName": "9StKtpQ4QW3id8Yf", "qty": 0.8166075571358066, "type": "ENTITLEMENT"}, {"itemId": "xnCWfW1XjvKhHYlA", "itemName": "2xxzCZGIM05VAvBI", "qty": 0.9967265361124972, "type": "STATISTIC"}, {"itemId": "qGVdqSHA2I5tLF6K", "itemName": "LubmwhnZ9Rh10M1a", "qty": 0.5569229124058428, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1994-12-10T00:00:00Z", "order": 63, "startTime": "1998-04-04T00:00:00Z"}, "tags": ["keDDTtbQVPrvUdbd", "vvSGNmf9sufbhEnM", "RoIVvzxeVhVKD4qr"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'WSKCakbL7ZsCBfcv' \
    --code 'DqS8jainanfaZ9s2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'qXUEo22rx8eT5h0i' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'IXWFCueU7s0NsuGB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'MDJKRiLXSKU3RNyZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminGetAssignmentPlugin
samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAssignmentPlugin' test.out

#- 16 AdminUpdateAssignmentPlugin
samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "CJPiy6oabDOHWP1E", "extendType": "CUSTOM", "grpcServerAddress": "gGco2TpzQFT3QLhH"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateAssignmentPlugin' test.out

#- 17 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "jvyifKVBL7oxTnp1", "extendType": "CUSTOM", "grpcServerAddress": "9WU0E8hdsPHnEUWS"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminCreateAssignmentPlugin' test.out

#- 18 AdminDeleteAssignmentPlugin
samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteAssignmentPlugin' test.out

#- 19 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ptp7hiDs7y2SyWnL", "kQ5jPzzuDaIyODtU", "jlqsIqoNxeHlVU24"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminEvaluateProgress' test.out

#- 20 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["71I9TgpWaG7FsrlO", "24tvpunHXTTyQMFe", "DjQBaiAtBp62A4jY"], "userId": "LDfTitAvETuDmz78"}, {"rewardIds": ["qFfHSl6KUSo6qg3Z", "McKJRFKr7BFeTg4x", "381cPLH84rnP9K5i"], "userId": "fDgRdk7bbMbFRbeX"}, {"rewardIds": ["gp6uAYj1bvUPYZEj", "aimmPv9SdjOGyuLF", "9FA7YzOD8QklWyIa"], "userId": "PpyWQxaNRjhmNPQd"}]' \
    > test.out 2>&1
eval_tap $? 20 'AdminClaimUsersRewards' test.out

#- 21 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '6jGX9Cg9HHXaTrsj' \
    --limit '83' \
    --offset '83' \
    --sortBy 'GuOwrNkkSbeMP1AO' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserRewards' test.out

#- 22 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'xrAJsKS2ot5wZklA' \
    --body '{"rewardIDs": ["97Wc3FcxBml5Qk2F", "b9xu7a6swWgVoOqC", "uyIcAJCTtYS5UWhC"]}' \
    > test.out 2>&1
eval_tap $? 22 'AdminClaimUserRewards' test.out

#- 23 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '20' \
    --sortBy 'qwcD8DrnuYRm9Gsy' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 23 'GetChallenges' test.out

#- 24 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'T4VCnEFCz9wSvYfY' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '68' \
    --tags '["njyoMP5ducYPJKEw", "ah1L7wzE568bYO1c", "ES9nvjwBCsttuyoo"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicGetScheduledGoals' test.out

#- 25 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'EvaluateMyProgress' test.out

#- 26 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'cMssqsCFOr0bdwXR' \
    --namespace $AB_NAMESPACE \
    --dateTime '1981-06-11T00:00:00Z' \
    --goalCode 'a5iKXnO7IzhKtJ0A' \
    --limit '97' \
    --offset '79' \
    --tags '["PhbUPMCH3Tww95lX", "FYnizIq9nfgGxyEr", "HelRidMdV37TfsfR"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicGetUserProgression' test.out

#- 27 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'dknNkZikuODvBfMj' \
    --index '81' \
    --namespace $AB_NAMESPACE \
    --goalCode 'hrTF8vf0KHxND1U6' \
    --limit '35' \
    --offset '27' \
    --tags '["hLe4RhDEh4CBTclk", "fhwVg10bNeux3Hs9", "TA3V9cHSdPiTZnhg"]' \
    > test.out 2>&1
eval_tap $? 27 'PublicGetPastUserProgression' test.out

#- 28 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '57' \
    --sortBy 'CU23mHB2Ys09nzQc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'PublicGetUserRewards' test.out

#- 29 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["R14CQj2FFyBnkQoE", "zwb10fY2YGAHigwm", "CUFbGg5wOSR6d3K2"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE