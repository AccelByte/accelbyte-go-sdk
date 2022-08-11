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
    --limit '29' \
    --offset '6' \
    --sortBy 'listOrder' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "2uePN4Sy", "defaultLanguage": "tm880m9l", "description": {"BMe7741g": "rvkSh93O", "CZlCq7AA": "tz27lk64", "DfquyXjg": "UXtPgQ4U"}, "goalValue": 0.003660679079021456, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "xlnVW3WW", "url": "lJPYj8iG"}, {"slug": "OUksBcua", "url": "H6y9sGKd"}, {"slug": "PCxEACHS", "url": "OCithmVf"}], "name": {"qDlXuNyW": "ItQZMqag", "oS6JcATB": "tIo7ry92", "IgKWdVJB": "PM79xyf7"}, "statCode": "cVFU6XCJ", "tags": ["n2HySi6W", "cKSmSuK8", "gdvv4J2X"], "unlockedIcons": [{"slug": "50n9nX7K", "url": "twfqojHs"}, {"slug": "zX7DPhDw", "url": "30eUdKsd"}, {"slug": "NfTwxAHS", "url": "wrQ2AA6B"}]}' \
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
    --strategy 'VSfYv6LR' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'bIVoavoH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'i3YZ6kvh' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "WwoOKk7Z", "description": {"Jk1ocAtW": "M1A4SVip", "NsF8fz0t": "R2xUSXtJ", "fTBNLcMq": "IKCwisQn"}, "goalValue": 0.08698943911014778, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "pEFkWoXt", "url": "uX2BDRHv"}, {"slug": "jY3Ye6Xg", "url": "RreBJRYp"}, {"slug": "sThxRX0u", "url": "uztOPLVw"}], "name": {"Opi5U7UZ": "TRsf2ELb", "JG0DXz2t": "oTpDB8OZ", "DTz2R8Lc": "p0lGHjna"}, "statCode": "7HIEaUyn", "tags": ["nQGp4g8b", "2vmtSkIq", "aMI7FYvH"], "unlockedIcons": [{"slug": "nASFY9e1", "url": "IdfwbSml"}, {"slug": "ILf2e2wE", "url": "3W3rF9Sg"}, {"slug": "Z2e8HY5l", "url": "b93KBZ9a"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Sp6RoGHX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'j7VdCEtG' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 10}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'qiovm9YS' \
    --limit '93' \
    --offset '26' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'h6Brtm0Q' \
    --namespace $AB_NAMESPACE \
    --userId 'csH3BTbE' \
    > test.out 2>&1
eval_tap $? 11 'AdminUnlockAchievement' test.out

#- 12 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '0' \
    --sortBy 'updatedAt' \
    --language 'accsEDcS' \
    > test.out 2>&1
eval_tap $? 12 'PublicListAchievements' test.out

#- 13 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'x11COuvh' \
    --namespace $AB_NAMESPACE \
    --language 'rzTOhmql' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetAchievement' test.out

#- 14 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'SBUP9oKH' \
    --limit '51' \
    --offset '88' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 14 'PublicListUserAchievements' test.out

#- 15 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '05ugWieH' \
    --namespace $AB_NAMESPACE \
    --userId 'lkbBRcKl' \
    > test.out 2>&1
eval_tap $? 15 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE