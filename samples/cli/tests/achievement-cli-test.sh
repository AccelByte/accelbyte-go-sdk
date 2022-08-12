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
echo "1..15"

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

#- 2 AdminListAchievements
samples/cli/sample-apps Achievement adminListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '83' \
    --sortBy 'listOrder' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "S8FzblAi", "defaultLanguage": "xppVYWoW", "description": {"H0b4eGgM": "S8QYm4Xl", "SzCLMiPO": "4HviXcOz", "8HyUdY2a": "2VkJj0dx"}, "goalValue": 0.251809862552956, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "kaF3Wu3T", "url": "aGVWV1UG"}, {"slug": "0JU2ycdv", "url": "lXUDGa2m"}, {"slug": "Ef8W8KRf", "url": "GRs0N4jG"}], "name": {"oQG8FcQr": "3R35wEY2", "KOYaEl7h": "phFiee8C", "BDCrGSs5": "67GEiCCl"}, "statCode": "w39IaHvS", "tags": ["DrOtidkZ", "E8WLeb4s", "UL1zpGzn"], "unlockedIcons": [{"slug": "5tr4DbQh", "url": "kvA4B4Us"}, {"slug": "Jr6vJlUt", "url": "acibc0u0"}, {"slug": "0Z8ti6ha", "url": "aZOzJUbE"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'kFv3Qzqn' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'Cj6NFQjX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'ltgFfdTS' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "GDIm4bpY", "description": {"I6N5t11H": "CpOLBqIf", "spyDcNwC": "AO7PSu5J", "ZGtTk6bg": "MIP9px1B"}, "goalValue": 0.6108961916962181, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "RUHppjRr", "url": "03jpsQXB"}, {"slug": "dkcMUj4a", "url": "p5vVUyYm"}, {"slug": "CjSXe1B2", "url": "u47ZdQNJ"}], "name": {"fJl5JZGU": "ZWy1T1Hh", "CRNpWlPu": "vgLLAaic", "url88Ano": "iHeYSmdY"}, "statCode": "pSxQRjmY", "tags": ["d1Cs8NMZ", "P4B3yRBa", "xTnefxRc"], "unlockedIcons": [{"slug": "4YBGVR4G", "url": "nx9sBKdh"}, {"slug": "LFm6WYRG", "url": "4vSHIOdi"}, {"slug": "80C8wLrQ", "url": "Hhr95ha5"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'eajXnsEu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'QMbpVzk6' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 94}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'OUczdjg6' \
    --limit '97' \
    --offset '28' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'LLbulM18' \
    --namespace $AB_NAMESPACE \
    --userId 'A4lAP4lM' \
    > test.out 2>&1
eval_tap $? 11 'AdminUnlockAchievement' test.out

#- 12 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '4' \
    --sortBy 'createdAt:desc' \
    --language 'M0lq22hn' \
    > test.out 2>&1
eval_tap $? 12 'PublicListAchievements' test.out

#- 13 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'lKdVzxKW' \
    --namespace $AB_NAMESPACE \
    --language 'F1hHuxsu' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetAchievement' test.out

#- 14 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'M9jgqaaI' \
    --limit '23' \
    --offset '84' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 14 'PublicListUserAchievements' test.out

#- 15 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'q7krBjXc' \
    --namespace $AB_NAMESPACE \
    --userId 'QCQxxPRM' \
    > test.out 2>&1
eval_tap $? 15 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE