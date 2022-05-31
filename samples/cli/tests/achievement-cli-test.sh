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
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --body '{"achievementCode": "GlsQuJu8", "defaultLanguage": "vMf0IsJk", "description": {"Trd8IDcV": "2zXnTKjX"}, "goalValue": 0.7927608105719074, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "amiBxx9C", "url": "s18EY84e"}], "name": {"kItqRzHU": "1oh570KQ"}, "statCode": "BVaewc72", "tags": ["krSha68n"], "unlockedIcons": [{"slug": "3Ynozp1C", "url": "2KmIQTuB"}]}' \
    --namespace 'dNEUsxFb' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace '8CJ17M7D' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --file 'tmp.dat' \
    --strategy 'JZaMSxEC' \
    --namespace 'bZbygyoa' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'rORoeNHS' \
    --namespace 'b8Rh3kgs' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --body '{"defaultLanguage": "9qqJbnQs", "description": {"oBgiVpP8": "Cm3yvASU"}, "goalValue": 0.23097481110712859, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "xFqmAGTJ", "url": "8IEdagEt"}], "name": {"p4w29KOu": "9c19R6XD"}, "statCode": "qWHkkP8n", "tags": ["pLEKMfji"], "unlockedIcons": [{"slug": "X7jpkVZk", "url": "3IaQYEmq"}]}' \
    --achievementCode 'GodOEGt9' \
    --namespace 'gPOj0c6i' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '0JkvIas7' \
    --namespace '3ucYnFAJ' \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --body '{"targetOrder": 59}' \
    --achievementCode 'K5T4Eogg' \
    --namespace '0Y39UoYl' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace 'pv5bVAgt' \
    --userId 'sDhUTDUs' \
    --limit '5' \
    --offset '2' \
    --preferUnlocked 'True' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'jbTQuPMz' \
    --namespace '2PTRlkyU' \
    --userId '89ZPOw6z' \
    > test.out 2>&1
eval_tap $? 11 'AdminUnlockAchievement' test.out

#- 12 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace 'PFJ42cwm' \
    --limit '50' \
    --offset '55' \
    --sortBy 'updatedAt' \
    --language 'SMNcoAAO' \
    > test.out 2>&1
eval_tap $? 12 'PublicListAchievements' test.out

#- 13 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'jKNjfcYH' \
    --namespace 'm093aYgB' \
    --language 'U1sqjyK0' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetAchievement' test.out

#- 14 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace 'XH45PaRS' \
    --userId 'OFQBtu23' \
    --limit '86' \
    --offset '61' \
    --preferUnlocked 'False' \
    > test.out 2>&1
eval_tap $? 14 'PublicListUserAchievements' test.out

#- 15 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'RVX7LGOv' \
    --namespace 'DdYiQS9i' \
    --userId '7mV1C91p' \
    > test.out 2>&1
eval_tap $? 15 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE