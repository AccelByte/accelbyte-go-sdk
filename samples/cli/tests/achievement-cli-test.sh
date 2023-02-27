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
echo "1..27"

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
    --global 'true' \
    --limit '21' \
    --offset '1' \
    --sortBy 'createdAt:asc' \
    --tags '["QCxphyI6", "C864ZFsd", "LwWkHegP"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "NVvZMYf4", "defaultLanguage": "mJ5T4ies", "description": {"F3olsXRF": "fvDORMFG", "f7nWKjEY": "EOCOEksl", "nuJOenl6": "H7lbvqKO"}, "global": true, "goalValue": 0.9199953636001051, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "EO5AzKF0", "url": "a2UPyo2y"}, {"slug": "vhIRCSvA", "url": "FFY7kvqa"}, {"slug": "6BDZ9N63", "url": "jX2nMhSW"}], "name": {"XKTsWSWk": "VAJIq5AK", "RDVQhWJ2": "g9G1Lok6", "Q56mGSzl": "RxoIJVut"}, "statCode": "z7M3HM9q", "tags": ["RNo3A6Rj", "3rApVoHv", "0QNX8KB8"], "unlockedIcons": [{"slug": "YS7JJU10", "url": "cHdVOu4P"}, {"slug": "mBdhBx4U", "url": "IJPwxUUS"}, {"slug": "xlU3JZUk", "url": "B0iYcyDe"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["xYDgOvf3", "RGRS8ZCp", "VFL2i3IO"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '2NQl2zQH' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'q0eExt9S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'EBzq9BFc' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "mEqgkfs0", "description": {"6TQKpA3j": "uCzFCeip", "mFVD2fTJ": "K0Rmdn11", "zdlMFhpy": "vMqweAY2"}, "global": false, "goalValue": 0.8832105553139151, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "SIytHSqX", "url": "Wru9P4sw"}, {"slug": "myh00b0e", "url": "B6cIYNjb"}, {"slug": "OOV5sIFP", "url": "BJxByCj6"}], "name": {"VXnrTrNi": "zEiJ8BUH", "vXlkuxZH": "2cX0zjAK", "Y3TSxzbV": "YgyyGuK0"}, "statCode": "rOmqKBYO", "tags": ["iLxDfobn", "RxACJu85", "FI1g7hN3"], "unlockedIcons": [{"slug": "LqBqjh7P", "url": "Es5f5q8H"}, {"slug": "dbGBrThZ", "url": "mFZ1m1V8"}, {"slug": "wQp8jqc9", "url": "I5ECE4Bx"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '03nxPNxW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'SNlZ9aJF' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 91}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'GJM40hie' \
    --limit '57' \
    --offset '36' \
    --sortBy 'eMgyZ20G' \
    --status 'cTeQkt3J' \
    --tags '["KyA45ykP", "KFGkKlCv", "O2d78HSi"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'Z7b4LRkq' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '87' \
    --sortBy 'GfAvx0WD' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'k8A72OeF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --name 'Jk4O15d9' \
    --offset '100' \
    --sortBy 'tLvTvIZ0' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'NSQAmXjU' \
    --limit '13' \
    --offset '92' \
    --preferUnlocked 'true' \
    --sortBy 'E7etPa0P' \
    --tags '["7CY9kjAc", "XpvxQAcd", "4DS5KZxK"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'jRIPJ8LV' \
    --namespace $AB_NAMESPACE \
    --userId 'YUXNb5bo' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'cNXcr1iv' \
    --namespace $AB_NAMESPACE \
    --userId 'kiI8fGqY' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'KvJCUD1M' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '4OS7dHCQ' \
    --achievementCodes 'OQQW7U7K' \
    --limit '59' \
    --offset '67' \
    --sortBy 'vxfTKQzt' \
    --tags '["xMUOoEyh", "h6Gy034K", "IpBhgGI8"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '23' \
    --offset '14' \
    --sortBy 'listOrder:asc' \
    --tags '["OumimhKv", "JNXndu6F", "THxyfvMr"]' \
    --language 'BrWKK74J' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'mz5WZ8sm' \
    --namespace $AB_NAMESPACE \
    --language 'm4HCvfD0' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '8OyT3zZ6' \
    --limit '55' \
    --offset '63' \
    --sortBy 'FJluyo6U' \
    --status 'lW9ttReA' \
    --tags '["Br9qg7jO", "VSFnEZqI", "zapSMrr7"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'k5LSEUDC' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '83' \
    --sortBy 'uaKqR09X' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --name 'wQrlAOaz' \
    --offset '68' \
    --sortBy 'jHqesVbk' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'PPSI85zd' \
    --limit '3' \
    --offset '36' \
    --preferUnlocked 'false' \
    --sortBy 'SJsvRMj8' \
    --tags '["GOfoHBks", "o4xsh0c9", "iy2hxbrO"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '7CIxJBuW' \
    --namespace $AB_NAMESPACE \
    --userId 'Y1tc4R5W' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'm9g0lswt' \
    --achievementCodes 'pNHgCd8d' \
    --limit '62' \
    --offset '42' \
    --sortBy '9ncCwGrj' \
    --tags '["V3w68mZ0", "5V5PQKk4", "8iNXCYJN"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'ZlBUPXHB' \
    --namespace $AB_NAMESPACE \
    --userId 'A3eiIJhT' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE