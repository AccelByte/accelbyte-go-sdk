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
    --limit '100' \
    --offset '71' \
    --sortBy 'listOrder:desc' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "iAjSCoXe", "defaultLanguage": "lxwzH0Zc", "description": {"uyVmeSd1": "CFebcusL", "iAUNrozK": "2ahNUqSW", "XC3LGBYN": "Jv0fvPVd"}, "goalValue": 0.8383108602473338, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "oBE6FQTX", "url": "HiAX73zQ"}, {"slug": "nKP1MkFx", "url": "cFJR8lKJ"}, {"slug": "G3VfF2eR", "url": "puW7Jdag"}], "name": {"YLUrTwFN": "BoZAyiWW", "8ZyUuaqO": "WEmAgfM3", "Ntuoszhx": "5OLhBMQm"}, "statCode": "JFpUlLQ3", "tags": ["kD9xrygR", "P2dw4OkS", "FzGUnQfl"], "unlockedIcons": [{"slug": "9fjpwq5A", "url": "QmBeuHgi"}, {"slug": "qclOe0kf", "url": "gsLwmYHO"}, {"slug": "ax9YtqNL", "url": "JIsZVHN1"}]}' \
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
    --strategy '467FCl4X' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '2iDd8wq1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'Anmf7CZM' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "wKieePJV", "description": {"0CpqG33W": "2Kpha91l", "n1f7XBgN": "ThUXSqVy", "NWAx6jHP": "tz3jVarB"}, "goalValue": 0.1811782299804967, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "1WrBZwZl", "url": "mzP19FZQ"}, {"slug": "mgcaWs3S", "url": "a0SKs9Du"}, {"slug": "AH3kAOi6", "url": "HD6RI2oR"}], "name": {"v8RCskbW": "IYtflVsE", "eHcnQBCU": "QWvAswr4", "9dCzJIml": "DhdKjR3J"}, "statCode": "yECnNXmI", "tags": ["apAmSE9m", "6HCbsxNL", "jIiDbxCy"], "unlockedIcons": [{"slug": "PGZWDXAP", "url": "0lKmb7hZ"}, {"slug": "NyHrS34P", "url": "h1AcwpRi"}, {"slug": "b2XBSfEN", "url": "pgssoSFL"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'scs0YOZ8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'zUw9vmdO' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 84}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'VTnuNVWP' \
    --limit '10' \
    --offset '29' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'sDN3UIqg' \
    --namespace $AB_NAMESPACE \
    --userId 'kTztherM' \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'hxXMGldp' \
    --namespace $AB_NAMESPACE \
    --userId 'CqWt7haq' \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '93' \
    --sortBy 'createdAt' \
    --language 'XNcDXop4' \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'I4E5b0XA' \
    --namespace $AB_NAMESPACE \
    --language 'S2ZmdDlj' \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'dYuqs8Ap' \
    --limit '94' \
    --offset '32' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'aXzzcYtM' \
    --namespace $AB_NAMESPACE \
    --userId 'C6KBbLWb' \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE