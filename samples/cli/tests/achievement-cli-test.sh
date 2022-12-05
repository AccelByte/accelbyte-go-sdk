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
    --limit '40' \
    --offset '73' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "hU4gpfwi", "defaultLanguage": "0BQaXYld", "description": {"xwOLX7SA": "ycMnVTFQ", "q0yeD29q": "97kt3pD6", "noAXH5JH": "9Dg1rnW8"}, "goalValue": 0.2789004297146127, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "nfgPi1H3", "url": "gSx7h0jG"}, {"slug": "AigEEybH", "url": "U1FzTTXc"}, {"slug": "Hu3sJqoD", "url": "IuqqTeUD"}], "name": {"JNDDRLTd": "ZLgMRd1s", "9x36IWoj": "vc41iBz0", "cCJAdJRk": "tEoCvOaW"}, "statCode": "dOu3T1vI", "tags": ["fwr2jlFh", "v0lDbwMb", "uFvKIO32"], "unlockedIcons": [{"slug": "3XfmqHX1", "url": "XwhizVYA"}, {"slug": "fZI0aJQe", "url": "qtOzkDME"}, {"slug": "V8foZDtU", "url": "ErUU0mhr"}]}' \
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
    --strategy 'BUJMwb1e' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'ZcMNWujq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'tTCXCQYm' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "0sHrly6o", "description": {"5zRY9fBB": "OAO1uR4F", "EZZ4I4wD": "vD4U0ccm", "1SE6HQH9": "949UbIwV"}, "goalValue": 0.22401188994392074, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "jnerJO9r", "url": "ui4VJN9T"}, {"slug": "ashRCouF", "url": "XXQlS4oq"}, {"slug": "hM96Y9uK", "url": "SzdAQQTI"}], "name": {"nWaFlxkx": "N7GYxoYe", "DTiSTbMI": "CSSJpxqR", "i4mGcKFH": "MULQfTBf"}, "statCode": "QcfA3JEK", "tags": ["Sfk3W3GS", "OAeKWL3L", "F5fJ26hc"], "unlockedIcons": [{"slug": "JJZrKgQv", "url": "iliq475j"}, {"slug": "swp9gkRc", "url": "axxag76T"}, {"slug": "QKpgkRKy", "url": "cBR2yIlE"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'vIZReuaS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '4RKraQml' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 30}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '4NAKPL6f' \
    --limit '41' \
    --offset '80' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'q25trNuL' \
    --namespace $AB_NAMESPACE \
    --userId 'RZhm9o5l' \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'XGV2gEHq' \
    --namespace $AB_NAMESPACE \
    --userId 'qGgDbady' \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '26' \
    --sortBy 'listOrder' \
    --language 'usVOZiwq' \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'PD3PfsSn' \
    --namespace $AB_NAMESPACE \
    --language 'CS6TzelV' \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '1jk0R9Sl' \
    --limit '89' \
    --offset '97' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '2u6jKiCr' \
    --namespace $AB_NAMESPACE \
    --userId 'nDdrZojb' \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE