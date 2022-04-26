#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: go-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"

echo "TAP version 13"
echo "1..15"

#- 1 Login
rm -f $TEMP_TOKEN \
    && mkdir -p $(dirname $TEMP_TOKEN) \
    && echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 AdminListAchievements
samples/cli/sample-apps Achievement adminListAchievements \
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    --sortBy 'pGlsQuJu' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --body '{"achievementCode": "8vMf0IsJ", "defaultLanguage": "kTrd8IDc", "description": {"V2zXnTKj": "XY1bPqam"}, "goalValue": 0.13454254286494316, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "9Cs18EY8", "url": "4ekItqRz"}], "name": {"HU1oh570": "KQBVaewc"}, "statCode": "72krSha6", "tags": ["8n3Ynozp"], "unlockedIcons": [{"slug": "1C2KmIQT", "url": "uBdNEUsx"}]}' \
    --namespace 'Fb8CJ17M' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace '7DJZaMSx' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --file 'tmp.dat' \
    --strategy 'ECbZbygy' \
    --namespace 'oarORoeN' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'HSb8Rh3k' \
    --namespace 'gs9qqJbn' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --body '{"defaultLanguage": "QsoBgiVp", "description": {"P8Cm3yvA": "SUoxdxxF"}, "goalValue": 0.25046182566340336, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "dagEtp4w", "url": "29KOu9c1"}], "name": {"9R6XDqWH": "kkP8npLE"}, "statCode": "KMfjiX7j", "tags": ["pkVZk3Ia"], "unlockedIcons": [{"slug": "QYEmqGod", "url": "OEGt9gPO"}]}' \
    --achievementCode 'j0c6i0Jk' \
    --namespace 'vIas73uc' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'YnFAJ3DK' \
    --namespace '5T4Eogg0' \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --body '{"targetOrder": 100}' \
    --achievementCode '39UoYlpv' \
    --namespace '5bVAgtsD' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace 'hUTDUscb' \
    --userId 'QDjbTQuP' \
    --limit '76' \
    --offset '51' \
    --preferUnlocked 'False' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'kyU89ZPO' \
    --namespace 'w6zPFJ42' \
    --userId 'cwmzBBSM' \
    > test.out 2>&1
eval_tap $? 11 'AdminUnlockAchievement' test.out

#- 12 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace 'NcoAAOjK' \
    --limit '78' \
    --offset '18' \
    --sortBy 'fcYHm093' \
    --language 'aYgBU1sq' \
    > test.out 2>&1
eval_tap $? 12 'PublicListAchievements' test.out

#- 13 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'jyK0XH45' \
    --namespace 'PaRSOFQB' \
    --language 'tu23REZ8' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetAchievement' test.out

#- 14 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace 'hRVX7LGO' \
    --userId 'vDdYiQS9' \
    --limit '16' \
    --offset '24' \
    --preferUnlocked 'True' \
    > test.out 2>&1
eval_tap $? 14 'PublicListUserAchievements' test.out

#- 15 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '91pjG9gp' \
    --namespace 'xL6ycTQd' \
    --userId 'vln2LAuS' \
    > test.out 2>&1
eval_tap $? 15 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE