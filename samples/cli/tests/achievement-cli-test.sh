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
echo "1..19"

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
    --limit '94' \
    --offset '72' \
    --sortBy 'createdAt:asc' \
    --tags '["OYXuqc3D", "I0KpS4g7", "ZPWVU2bo"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "aZvve3Bm", "defaultLanguage": "IVshPBIO", "description": {"qnsHD3zo": "GalMOxgO", "GqcB5AnA": "1QXSoZxU", "YvVR6PvK": "n8Xa55gg"}, "goalValue": 0.3934444657011109, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "xnOYGm3W", "url": "jh3uOeS9"}, {"slug": "K184kWzh", "url": "DbIU05pd"}, {"slug": "2wsFOz7U", "url": "VO36v0EQ"}], "name": {"VhSW5XTW": "GNsWbZqM", "m3uIfW02": "pZlzUWts", "z62RtaOf": "adgwWN3o"}, "statCode": "PpgaPGam", "tags": ["P9t3ButZ", "wEbugiQs", "lxPm3gJQ"], "unlockedIcons": [{"slug": "hksT1jBU", "url": "45uVpdmo"}, {"slug": "KOabVsSF", "url": "oFGaRNCm"}, {"slug": "OrrBhYod", "url": "FaLROwR1"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["Nkhdczk7", "HQOwORNz", "z62hXadB"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'RHudJ54a' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'OgDzuiRK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'KXvLLVWg' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "vB0XHnY7", "description": {"G6BVTCEP": "EviuhvHJ", "sF22A7Ws": "XeL7sU1z", "2oTUl6gx": "QX1JWXZH"}, "goalValue": 0.4070359243102909, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "wMwFoWSd", "url": "TqoVKW93"}, {"slug": "rZjo54Qv", "url": "zfrCOsMW"}, {"slug": "KYlE8SUu", "url": "LhHq9Q3Q"}], "name": {"7oIInUjZ": "3hUDTM5X", "AD6gXOAO": "2cXu9hMV", "4bYRUDJg": "dzx5kXjw"}, "statCode": "cBZpcH9P", "tags": ["ljaaTiml", "Bx5Luu9c", "jqD65L6x"], "unlockedIcons": [{"slug": "f0PyoOR2", "url": "yc6KBAho"}, {"slug": "WAdxJRgH", "url": "2BkjkELd"}, {"slug": "18Y0lp56", "url": "RkLgOb99"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'j489bE38' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'bc5oFZXT' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 21}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --name 'zehHLsVU' \
    --offset '45' \
    --sortBy 'WEYqgDTo' \
    > test.out 2>&1
eval_tap $? 10 'AdminListTags' test.out

#- 11 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Rusfu4Tg' \
    --limit '87' \
    --offset '23' \
    --preferUnlocked 'false' \
    --sortBy 'FPQhENz0' \
    --tags '["IThGqrWh", "VXCHwqb2", "sjey7NVD"]' \
    > test.out 2>&1
eval_tap $? 11 'AdminListUserAchievements' test.out

#- 12 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'I4HvDomw' \
    --namespace $AB_NAMESPACE \
    --userId 'eZufcGtm' \
    > test.out 2>&1
eval_tap $? 12 'AdminResetAchievement' test.out

#- 13 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'WYtsEIO3' \
    --namespace $AB_NAMESPACE \
    --userId 'lCyQNmeF' \
    > test.out 2>&1
eval_tap $? 13 'AdminUnlockAchievement' test.out

#- 14 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'owzZAVVf' \
    > test.out 2>&1
eval_tap $? 14 'AdminAnonymizeUserAchievement' test.out

#- 15 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '99' \
    --sortBy 'createdAt' \
    --tags '["bOOhnm8p", "HNuer5PC", "JDeaX3Kg"]' \
    --language 'vcHFUqkx' \
    > test.out 2>&1
eval_tap $? 15 'PublicListAchievements' test.out

#- 16 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'hiA6J4NR' \
    --namespace $AB_NAMESPACE \
    --language 'blkWDomr' \
    > test.out 2>&1
eval_tap $? 16 'PublicGetAchievement' test.out

#- 17 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --name 'rjxUpLWP' \
    --offset '74' \
    --sortBy 'eHhRP24s' \
    > test.out 2>&1
eval_tap $? 17 'PublicListTags' test.out

#- 18 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'xpvnrb8X' \
    --limit '91' \
    --offset '8' \
    --preferUnlocked 'true' \
    --sortBy 'EdD2LRY6' \
    --tags '["lG6BEZSz", "p0SAHW8o", "wvELo6xf"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicListUserAchievements' test.out

#- 19 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'UiLF7jh3' \
    --namespace $AB_NAMESPACE \
    --userId 'ZngKDgIH' \
    > test.out 2>&1
eval_tap $? 19 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE