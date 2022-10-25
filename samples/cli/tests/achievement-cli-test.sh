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
echo "1..16"

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
    --limit '0' \
    --offset '94' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "WFfb7IyN", "defaultLanguage": "qZHFnkAN", "description": {"SIGhMN8u": "0PfqB89w", "KOgkxQIg": "KINXdxRV", "OPCut9AK": "l8ecghDA"}, "goalValue": 0.9174220940252743, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "bqBSbeKT", "url": "nWvQ3Bvz"}, {"slug": "gjuFMVMg", "url": "aLjog3nD"}, {"slug": "1z1iuTmh", "url": "EJf3DCob"}], "name": {"dCpX9EL8": "AmA1I1Ll", "Nu4Yx3Cm": "J4S5rZJc", "uVz8euPT": "76tYfvvU"}, "statCode": "4QSGI2DG", "tags": ["t7uURaQu", "LeRw84X1", "WBUeN4ZI"], "unlockedIcons": [{"slug": "DPP57Hyb", "url": "Q5vYAm3e"}, {"slug": "ZCkM5UUg", "url": "N5dr7WsH"}, {"slug": "SkYDg0XL", "url": "X0CA25fY"}]}' \
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
    --strategy 'gLZUcM3D' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '8Gskd9RB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'xw2kqNom' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "fDuUKLDm", "description": {"ta1jiddH": "oBv7j9ou", "mOSqAsPK": "NJp0bZq7", "Zaa7BUfr": "NFffGXwY"}, "goalValue": 0.03252420713703619, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "QXAXvwD3", "url": "w9q8OpJq"}, {"slug": "66qMf7J1", "url": "f5HkAmaD"}, {"slug": "1po9gDKR", "url": "ZtCbH7F9"}], "name": {"ii3Mc0PG": "dWXh1dhM", "v7YXIFzE": "ikEwWO30", "nXQ8Rk0F": "7LP1nk3X"}, "statCode": "lwdnfP8W", "tags": ["YXniSLFK", "efoi4C15", "tvNI6fPy"], "unlockedIcons": [{"slug": "NAN7fl4M", "url": "xBeEOG5W"}, {"slug": "rjoIKdzr", "url": "OZGSBBIj"}, {"slug": "gCnirS5d", "url": "ZBb658Tl"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'edcgEMMj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'lQmEXchs' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 54}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'QgvwjAl3' \
    --limit '97' \
    --offset '19' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'ZO45gd6T' \
    --namespace $AB_NAMESPACE \
    --userId 'CurAN1YC' \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'OmiRw7rj' \
    --namespace $AB_NAMESPACE \
    --userId 'OYdzAT0w' \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '83' \
    --sortBy 'listOrder:asc' \
    --language 'FmlQURDG' \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'C30NRxXz' \
    --namespace $AB_NAMESPACE \
    --language '3GfevRGH' \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '4L4iImkJ' \
    --limit '50' \
    --offset '61' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'SuYS2YmM' \
    --namespace $AB_NAMESPACE \
    --userId 'Qg1qkpk4' \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE