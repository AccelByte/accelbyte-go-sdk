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
    --limit '34' \
    --offset '30' \
    --sortBy 'listOrder:desc' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "Y91ecU63", "defaultLanguage": "VLH3w3Mi", "description": {"IRME5Yxa": "MWCNVhXD", "mv4z7gJF": "MyrrZtuc", "PTegxqjQ": "ZJNfAo8V"}, "goalValue": 0.9509986084021537, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "5GYdCpP4", "url": "q6AnXfvl"}, {"slug": "AbVCz3i3", "url": "nbIG98ur"}, {"slug": "DKAGCncX", "url": "yOIFqStm"}], "name": {"4h4bGuCs": "gis6fkjS", "Xd9v6IVZ": "Z62YNXve", "Q1QNb2KH": "U8WuO9td"}, "statCode": "yccnrnmD", "tags": ["eCy3shoq", "Ry7xDdZ2", "NXLghizW"], "unlockedIcons": [{"slug": "OGScY1So", "url": "cjg8wO2P"}, {"slug": "GYTGRJpI", "url": "FItJbyC4"}, {"slug": "g48GjOrk", "url": "VqTTQbeZ"}]}' \
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
    --strategy 'Klm1fuhd' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'zug6bKIV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '0li0FCcy' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "euomT3zQ", "description": {"fMJ6iRoN": "v2W6bZys", "Ee8g5EJo": "8WA5x05V", "4TqgoOvn": "Pq76R96P"}, "goalValue": 0.5960277920629614, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "6WuO0iHQ", "url": "pW4S2rdD"}, {"slug": "5cvmtA1Q", "url": "AptbSNzT"}, {"slug": "hT9IvhJP", "url": "QxiW5plK"}], "name": {"zCdURtMb": "CgDJY25S", "ZcfPpwya": "lt5LfhOR", "2ZZqdJNN": "WneUwues"}, "statCode": "6ffMzeXL", "tags": ["E6PsX3pM", "0WUtMYzm", "OXSY35Fo"], "unlockedIcons": [{"slug": "cOacN6Hn", "url": "f57qT6Ji"}, {"slug": "HAYtHqlv", "url": "cxuD2iHQ"}, {"slug": "Nh3gmaEe", "url": "so5m451c"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'vqkKnNs6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'qYoP40H9' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 2}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'OI4c6ZV5' \
    --limit '96' \
    --offset '79' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'k3Rjgg3S' \
    --namespace $AB_NAMESPACE \
    --userId 'gCE8cwib' \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'f3RRub3H' \
    --namespace $AB_NAMESPACE \
    --userId '3uGCYXbX' \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '74' \
    --sortBy 'createdAt:asc' \
    --language 'ZPYQ9pzY' \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'jDbAd8JM' \
    --namespace $AB_NAMESPACE \
    --language 'URuQb0XU' \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'sKvGxmnt' \
    --limit '92' \
    --offset '81' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'Byiwn1PV' \
    --namespace $AB_NAMESPACE \
    --userId '8D1PHt3k' \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE