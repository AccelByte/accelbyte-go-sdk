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
echo "1..21"

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
    --limit '95' \
    --offset '30' \
    --sortBy 'listOrder' \
    --tags '["UsJGcvwK", "BTVinLTJ", "W2Jx4UHY"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "fwktdaMI", "defaultLanguage": "BcdK7GcD", "description": {"Lxi3wYVD": "8rlHMuVC", "94HvdS9x": "b1NCkYtz", "gf701BNC": "nVnaL4uY"}, "global": true, "goalValue": 0.5912077079537245, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "Pf3fE4JP", "url": "bM7wg5sT"}, {"slug": "uVtjlbTo", "url": "POphgoyP"}, {"slug": "7T7YX6ul", "url": "S6Ykmw41"}], "name": {"wgxb1qcy": "NiSya66m", "MJWYTtPh": "ck2mFE5z", "aDjR76UD": "MuWfGZsb"}, "statCode": "8g4wdxZ5", "tags": ["vpHsTehD", "Hzn2nTaN", "B2Q7BVgD"], "unlockedIcons": [{"slug": "mlJX4soo", "url": "eUxImUEU"}, {"slug": "Atjsz180", "url": "dZHf6b44"}, {"slug": "x7LV7FHK", "url": "V7OjkkTd"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["7JwaC3G9", "NLuAei2J", "LzBYowTL"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '1TXNEzkx' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'rI2hNYuL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '46Jd5W9E' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "Zo2rS86p", "description": {"YeHNU5GB": "SZ5Ldw9b", "rIZZuQ9K": "0lRUVBeB", "I7rAdcLQ": "kLuhlHM6"}, "goalValue": 0.8677217879026751, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "Vxx4KxHR", "url": "bFHnhcnI"}, {"slug": "5heR4P5N", "url": "6TB7iPj9"}, {"slug": "r96rnsqh", "url": "dZfHs9ji"}], "name": {"182IC6MA": "cVTUtnUD", "hXkZvu75": "6p3cV9m1", "y7PFI9P5": "bm20cHFH"}, "statCode": "N7r4uIcC", "tags": ["moBVSCvw", "5SGbL0mT", "jdsEifbh"], "unlockedIcons": [{"slug": "E9WXLmgz", "url": "PDbzClNF"}, {"slug": "CwkNmTnJ", "url": "9JhBaTke"}, {"slug": "gdvINKrr", "url": "LUsD3VqR"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'XDi2Qug1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '0NMpZjKh' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 59}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --name 'nKSomZiB' \
    --offset '13' \
    --sortBy 'AZcIH5pt' \
    > test.out 2>&1
eval_tap $? 10 'AdminListTags' test.out

#- 11 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '2BfzlWBV' \
    --limit '49' \
    --offset '72' \
    --preferUnlocked 'true' \
    --sortBy 'eCvCRvIo' \
    --tags '["0VXXq5Rk", "zTmBKhDe", "pwzGtQbS"]' \
    > test.out 2>&1
eval_tap $? 11 'AdminListUserAchievements' test.out

#- 12 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'jw4eVn7s' \
    --namespace $AB_NAMESPACE \
    --userId '4aKwssmU' \
    > test.out 2>&1
eval_tap $? 12 'AdminResetAchievement' test.out

#- 13 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'r8IVYxwr' \
    --namespace $AB_NAMESPACE \
    --userId 'AUYLhDsE' \
    > test.out 2>&1
eval_tap $? 13 'AdminUnlockAchievement' test.out

#- 14 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'oH4zWhdL' \
    > test.out 2>&1
eval_tap $? 14 'AdminAnonymizeUserAchievement' test.out

#- 15 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '77' \
    --offset '8' \
    --sortBy 'updatedAt' \
    --tags '["X8AIZZ1r", "4jYtmval", "PZi3dSr5"]' \
    --language 'EZfmci6a' \
    > test.out 2>&1
eval_tap $? 15 'PublicListAchievements' test.out

#- 16 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'aGr6QYaE' \
    --namespace $AB_NAMESPACE \
    --language '1BcAP2i7' \
    > test.out 2>&1
eval_tap $? 16 'PublicGetAchievement' test.out

#- 17 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCode 'a20nBGg9' \
    --limit '36' \
    --offset '67' \
    --sortBy 'ImkUimQp' \
    --status 'lFy6I6M5' \
    > test.out 2>&1
eval_tap $? 17 'PublicListGlobalAchievements' test.out

#- 18 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --name '8Te7QiUk' \
    --offset '60' \
    --sortBy '3oGddsKR' \
    > test.out 2>&1
eval_tap $? 18 'PublicListTags' test.out

#- 19 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'jfPcnUgT' \
    --limit '51' \
    --offset '20' \
    --preferUnlocked 'false' \
    --sortBy '1aBKWhuc' \
    --tags '["Y1Py17z8", "7iTgRO56", "WKvETEHO"]' \
    > test.out 2>&1
eval_tap $? 19 'PublicListUserAchievements' test.out

#- 20 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'RzEScoy4' \
    --namespace $AB_NAMESPACE \
    --userId 'LK3UMIT0' \
    > test.out 2>&1
eval_tap $? 20 'PublicUnlockAchievement' test.out

#- 21 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'IVjOtBNX' \
    --namespace $AB_NAMESPACE \
    --userId '3UC7Rip0' \
    > test.out 2>&1
eval_tap $? 21 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE