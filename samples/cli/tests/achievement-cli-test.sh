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
    --global 'false' \
    --limit '46' \
    --offset '43' \
    --sortBy 'updatedAt:desc' \
    --tags '["VPzP9qVF", "OwpLfkcI", "YzXBollG"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "iYpNEYmY", "defaultLanguage": "GaigPF56", "description": {"6VVefl29": "Fy7NVohl", "TAW0FCQ1": "865hq36N", "d2ikxdvC": "rTJ3M4rF"}, "global": false, "goalValue": 0.5696803832051831, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "iYXcY21Y", "url": "rQLNrOdD"}, {"slug": "tMUNfS7y", "url": "qiTmoK6G"}, {"slug": "32NjO7Uw", "url": "JIteZeKz"}], "name": {"ApvgUK39": "KlwsFhnY", "PpyC3MvO": "lHwQg9Vd", "TEbZagaq": "tLaYmxH9"}, "statCode": "2IdzhG3Q", "tags": ["H1PbS0i4", "EuehPHcM", "wgvOmMjp"], "unlockedIcons": [{"slug": "CHK0FuvS", "url": "V6gOXGAX"}, {"slug": "LfuHIfTZ", "url": "fm31GTWr"}, {"slug": "xzmVRQP8", "url": "v6kTIgaf"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["KjKagRg0", "U5L5PLHC", "xDSQ5Bj0"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'n48BxJXg' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '0KftG89H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'teku7Jtd' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "2Dm45dQM", "description": {"UALwvJIh": "m7N38P5h", "kcaNqYOb": "T77IzEYM", "1QYYC9S3": "gpeXEpsd"}, "global": true, "goalValue": 0.0363794078345232, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "7uFrrMMJ", "url": "GVpSEUdp"}, {"slug": "e5bO1gTr", "url": "BHdztRxc"}, {"slug": "kUMQuLpk", "url": "7H0pcxmX"}], "name": {"TaZDa8g4": "yPdJKMyT", "uMCR5PvF": "JiPrgC8n", "mVv3g0AZ": "jwq71nfx"}, "statCode": "k19S8bk6", "tags": ["MjrUCegu", "d4RRRLUw", "gYbZkphe"], "unlockedIcons": [{"slug": "7Xd9fKHY", "url": "eGJM85Mi"}, {"slug": "ulTKITBt", "url": "6NEGvUrz"}, {"slug": "1oas2DlO", "url": "Lj3eYtxM"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'DVamrfY8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '1jJnt7KL' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 20}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '4Jw9XU5L' \
    --limit '72' \
    --offset '8' \
    --sortBy 'aRzX0LRT' \
    --status '4LYCoyi2' \
    --tags '["dh6cClU5", "TflzQVzK", "4O2VACI5"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'aFHFytg6' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '45' \
    --sortBy 'aC1S3hOS' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'IlPfXgbU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --name 'Z9RC50Nq' \
    --offset '34' \
    --sortBy 'HeV0jJN9' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'RQi6cX04' \
    --limit '32' \
    --offset '4' \
    --preferUnlocked 'false' \
    --sortBy 'n62dlLe6' \
    --tags '["VU4oxX31", "dH0oglNp", "HrIHqHQZ"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'RghFuzAr' \
    --namespace $AB_NAMESPACE \
    --userId 'xuXoCS8D' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'eAikI8tr' \
    --namespace $AB_NAMESPACE \
    --userId 'cnjqyMMC' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '1qdyXnQ7' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '4PsHokpA' \
    --achievementCodes 'Nwba64fw' \
    --limit '80' \
    --offset '39' \
    --sortBy 'FaKwn3Zh' \
    --tags '["Nb0seNiA", "8UGA1mzP", "xUYhJaVI"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '39' \
    --offset '12' \
    --sortBy 'updatedAt:asc' \
    --tags '["yc4sIVbT", "ZdpCGm6V", "KeiDzZnl"]' \
    --language 'pR9nAU0p' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'XDih8lhn' \
    --namespace $AB_NAMESPACE \
    --language 'FrmZSZTZ' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'c8mvxYtp' \
    --limit '32' \
    --offset '25' \
    --sortBy 'BxlPe8te' \
    --status 'Klr6PMjq' \
    --tags '["7pf53yjT", "ed4XaYv2", "fmwwcUP0"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode '3cE6N36J' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '46' \
    --sortBy 'tDoVn0K5' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name '9z6a2vw3' \
    --offset '66' \
    --sortBy 'H9H7YynW' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'yrkZXgeH' \
    --limit '30' \
    --offset '100' \
    --preferUnlocked 'true' \
    --sortBy 'RPpLcPj5' \
    --tags '["h3E8cxxN", "1ApPvT5D", "o8XAKaO0"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'OScLhY2V' \
    --namespace $AB_NAMESPACE \
    --userId 'ULu3QDMC' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'BbMPeGx3' \
    --achievementCodes '0PPrQ1Vj' \
    --limit '74' \
    --offset '73' \
    --sortBy 'JVvfk8m8' \
    --tags '["C31WvwD5", "XCgrGbjL", "jX1WMYS2"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'QYKfENe0' \
    --namespace $AB_NAMESPACE \
    --userId 'yL4JwfBX' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE