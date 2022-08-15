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
    --limit '70' \
    --offset '81' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "eM91FJMg", "defaultLanguage": "nokTsZRy", "description": {"KPT56uEJ": "RW9oLLad", "Nn4YdDjT": "Kw8QYGKu", "llLSmrxg": "SIL6GBeU"}, "goalValue": 0.4754888273957426, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "HmBe7NIb", "url": "Y3aOkG91"}, {"slug": "2CaIa2Vn", "url": "8sTIDVaL"}, {"slug": "iQkavJVa", "url": "7sDNCKdc"}], "name": {"nES8BuBZ": "ZBkac1tN", "HRJKK7k8": "tSPm5bOk", "6CIwK6K6": "qbHQEeSb"}, "statCode": "r6YKNozo", "tags": ["gjKeyOrh", "CddalEke", "EbYKAxA2"], "unlockedIcons": [{"slug": "afHai57G", "url": "0L2CxIv1"}, {"slug": "GUDTYVpR", "url": "ZKFaCN88"}, {"slug": "d0Pcd3bf", "url": "dJXxLW9G"}]}' \
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
    --strategy 'Mhdmhrr6' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'Ft68VJ2G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'EWzJamfj' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "GIRVBbkV", "description": {"ZhtszxcO": "W8cDYnVu", "6wbRoOpO": "KTkOykuw", "6LPqOzDK": "Puzxakn1"}, "goalValue": 0.5099747685084713, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "aZYesNtc", "url": "4TloglNf"}, {"slug": "ixt78DWT", "url": "qTRIXufY"}, {"slug": "OHm7A7rd", "url": "gz3sMfYb"}], "name": {"yarZ0XXb": "DNbkVuZ7", "l3PAOIqE": "MpEqDIFH", "oyRmCG7S": "0QFO0eXD"}, "statCode": "QeiK4doy", "tags": ["YLssVwFl", "kxyxPqlw", "PbsRhUYW"], "unlockedIcons": [{"slug": "C2wWHaVv", "url": "yChGjjvK"}, {"slug": "r2YX3fhZ", "url": "wCaNtjqF"}, {"slug": "34D9dtP0", "url": "XBQlNO99"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'wFEGEXYp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'WxtSWSbp' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 72}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'ma4VAzAk' \
    --limit '52' \
    --offset '18' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'rDIFWzU7' \
    --namespace $AB_NAMESPACE \
    --userId 'vv9qUpF3' \
    > test.out 2>&1
eval_tap $? 11 'AdminUnlockAchievement' test.out

#- 12 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '73' \
    --sortBy 'updatedAt:asc' \
    --language 'dCuZr0Mb' \
    > test.out 2>&1
eval_tap $? 12 'PublicListAchievements' test.out

#- 13 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'EmF45Yqn' \
    --namespace $AB_NAMESPACE \
    --language 'BTCVh1Vu' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetAchievement' test.out

#- 14 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'vcwwlj1d' \
    --limit '90' \
    --offset '45' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 14 'PublicListUserAchievements' test.out

#- 15 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'rtAciNnu' \
    --namespace $AB_NAMESPACE \
    --userId '7YhSj7tf' \
    > test.out 2>&1
eval_tap $? 15 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE