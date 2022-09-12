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
    --limit '9' \
    --offset '90' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "PNgW4ZQi", "defaultLanguage": "rEYCUyCA", "description": {"xALQptIO": "8qupILXV", "lXeDnv0F": "bjSu61NP", "2WsCujYe": "hrJgdFi4"}, "goalValue": 0.5252604398426817, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "GTIAySbE", "url": "zdtm4AgS"}, {"slug": "BVTkMU3K", "url": "VUJlvlbn"}, {"slug": "YgfUabw7", "url": "K2dXApkF"}], "name": {"kVDpOU7h": "oyqYcjEY", "D5aA2YJ9": "0lwMxXCr", "4agAv3pn": "vLHfrdQk"}, "statCode": "VYR5ZQbO", "tags": ["MdAX5Wla", "a1Sn9cNH", "fQeuSFgm"], "unlockedIcons": [{"slug": "59nU9p97", "url": "XMQVu5LC"}, {"slug": "pTQTO1mU", "url": "pwtmRhzk"}, {"slug": "mecRxDwE", "url": "WNuFvhfp"}]}' \
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
    --strategy 'XAqzjEYG' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'fZk7g9zj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'uuzhe3pz' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "5WubXv0N", "description": {"AzaDLasN": "IkE7aI2G", "zzZ43lCy": "HtQbcIep", "DM12LEDV": "avtyZpuS"}, "goalValue": 0.47779829967790455, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "qSXDxNue", "url": "WCC6qGEH"}, {"slug": "HcM5XBdm", "url": "3idsknd9"}, {"slug": "GuQ9ymTn", "url": "3GbPhbJ5"}], "name": {"XVo0ox9J": "8s4bQHaO", "dejxn34C": "SLynlRY5", "JSVS0FYu": "dedqjX9u"}, "statCode": "K4VENHkc", "tags": ["MFeudIX5", "M3ARtYoH", "yccWRv0U"], "unlockedIcons": [{"slug": "U7ZWzeii", "url": "QMKuDJmy"}, {"slug": "PDiUnWLK", "url": "dHOJGYsS"}, {"slug": "26528P8G", "url": "ETrAWn4l"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Bkx9hWa5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'iHCqxkdW' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 1}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'SXoykMwQ' \
    --limit '74' \
    --offset '78' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '8v0UnzNS' \
    --namespace $AB_NAMESPACE \
    --userId '2M4Yy45X' \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'CbYuiME8' \
    --namespace $AB_NAMESPACE \
    --userId '4baQGMCb' \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '27' \
    --sortBy 'createdAt:asc' \
    --language 'cVTgSo37' \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'Cmafmous' \
    --namespace $AB_NAMESPACE \
    --language 'XqGHzcB8' \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'NideJQWn' \
    --limit '21' \
    --offset '36' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'I0O22HZT' \
    --namespace $AB_NAMESPACE \
    --userId 'xn9HQtfG' \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE