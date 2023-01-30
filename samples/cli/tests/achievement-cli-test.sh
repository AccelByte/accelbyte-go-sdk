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
    --limit '46' \
    --offset '34' \
    --sortBy 'updatedAt:desc' \
    --tags '["NgXsYwB3", "4qx8ugE6", "cBTOIcz7"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "tKrBjBQn", "defaultLanguage": "I9CKogUK", "description": {"ZjOID68c": "n4UvWId3", "1bJx9gnx": "Fk72eo2d", "vjffqvBw": "CcY0uefT"}, "goalValue": 0.02502757196225136, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "EhzXZOfB", "url": "jH68yeJ1"}, {"slug": "4WGM7H3o", "url": "7xvky2NM"}, {"slug": "y2cxakcs", "url": "8kyO7ZYy"}], "name": {"L8kExEnQ": "UOOGmpur", "kK5YAOir": "ACQHRtU7", "JbjQnKJz": "aiWwMQ1L"}, "statCode": "uD8w9Dcj", "tags": ["jaNjWgVN", "6d2UOGgr", "XzHCtuJN"], "unlockedIcons": [{"slug": "T4rRLx57", "url": "gCoAf1vY"}, {"slug": "fvN0tH8U", "url": "5QPkLqol"}, {"slug": "RoZDDlj7", "url": "ucZnZ2CD"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["GARgLY08", "Bp0DOXuC", "DQbf6A88"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'DKn7BfoX' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '41sEVSKA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'p5Lhem46' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "rIgvdpNF", "description": {"rsVBCGgk": "qEDzcACd", "HbNt502g": "rwYpMnSz", "87h3dD0R": "DVrSnztz"}, "goalValue": 0.2795164656885648, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "YmT1gzoh", "url": "PUl6FmCG"}, {"slug": "V7txdw3i", "url": "Ui8RmmST"}, {"slug": "tZJ1Gnkv", "url": "ZzevnPQZ"}], "name": {"5FGwszYs": "2gHozndL", "Jtg8aEMV": "vKmX49uO", "HqFA6MDn": "tqpF3Wc3"}, "statCode": "H2PSxQTE", "tags": ["KiRTVFQw", "f6lJ3qYN", "GcgvcYlX"], "unlockedIcons": [{"slug": "czRqOBy9", "url": "PnyK9pSW"}, {"slug": "N4XvaO0k", "url": "qWSoeGQe"}, {"slug": "0hXkt1ZD", "url": "C66Vupgm"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '8bV7xa8v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '8lI5PeQw' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 1}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --name 'rShlfLmB' \
    --offset '28' \
    --sortBy 'YdiUkAlT' \
    > test.out 2>&1
eval_tap $? 10 'AdminListTags' test.out

#- 11 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'wWQhIPJh' \
    --limit '77' \
    --offset '3' \
    --preferUnlocked 'false' \
    --sortBy '0g08jp5b' \
    --tags '["TGwQu39T", "9cUyB2ub", "8kdB3nNu"]' \
    > test.out 2>&1
eval_tap $? 11 'AdminListUserAchievements' test.out

#- 12 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'YrJ1wuPD' \
    --namespace $AB_NAMESPACE \
    --userId 'AoGoSzdf' \
    > test.out 2>&1
eval_tap $? 12 'AdminResetAchievement' test.out

#- 13 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'J10mHgXv' \
    --namespace $AB_NAMESPACE \
    --userId 'B1vTbV5D' \
    > test.out 2>&1
eval_tap $? 13 'AdminUnlockAchievement' test.out

#- 14 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'NwyNZ0n2' \
    > test.out 2>&1
eval_tap $? 14 'AdminAnonymizeUserAchievement' test.out

#- 15 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '23' \
    --sortBy 'listOrder' \
    --tags '["ZEH8uyMS", "th3M9zcJ", "ErQ3CKTe"]' \
    --language 'k82ZLBqJ' \
    > test.out 2>&1
eval_tap $? 15 'PublicListAchievements' test.out

#- 16 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'OrEgpzyt' \
    --namespace $AB_NAMESPACE \
    --language 'XiJtMWR8' \
    > test.out 2>&1
eval_tap $? 16 'PublicGetAchievement' test.out

#- 17 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --name 'NB28bcPT' \
    --offset '2' \
    --sortBy 'Xx7JmnL2' \
    > test.out 2>&1
eval_tap $? 17 'PublicListTags' test.out

#- 18 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '4hef0Fbe' \
    --limit '43' \
    --offset '79' \
    --preferUnlocked 'true' \
    --sortBy 'GsLlPg6N' \
    --tags '["CtW1XlNy", "5ItCX1Sh", "5NwEkzSH"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicListUserAchievements' test.out

#- 19 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'FhmYIhXX' \
    --namespace $AB_NAMESPACE \
    --userId 'XZzaYLQz' \
    > test.out 2>&1
eval_tap $? 19 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE