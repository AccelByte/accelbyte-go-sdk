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
    --limit '16' \
    --offset '24' \
    --sortBy 'listOrder:desc' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "KoxnrUPm", "defaultLanguage": "lxh3xDNc", "description": {"N2xYuGKn": "C7YTl4QD", "hiCJr2bc": "aTkVdOx1", "qn7Wk4tN": "VJeM0m3e"}, "goalValue": 0.5937233503638137, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "eubXBFWG", "url": "52Td5flV"}, {"slug": "NFBeQnkb", "url": "eOCLhC8j"}, {"slug": "p5eluQ4f", "url": "lBedYagl"}], "name": {"4ogIjnkv": "6r2hwroS", "S594Tsdk": "9E2UNmPJ", "syV9yanc": "ZkZfjAz1"}, "statCode": "L0RIDmjm", "tags": ["22UsuStY", "5evVSuBu", "yXh3dKGV"], "unlockedIcons": [{"slug": "mxtSeqqq", "url": "66ynYcXT"}, {"slug": "phLT33oc", "url": "9Gv6NTAE"}, {"slug": "WxuRec0U", "url": "qU9ZFy5O"}]}' \
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
    --strategy 'FdOfq2Iy' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'IbInMeoO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '7z71Hojh' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "408btkz8", "description": {"XC5z6NRj": "59lCsEQB", "9u28DPcs": "yXKNbKpG", "o5WMb4GM": "z0fWFxRT"}, "goalValue": 0.4844185621177517, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "9d37wk0F", "url": "ck4P9rUc"}, {"slug": "pwCpsRVH", "url": "rDznv2TQ"}, {"slug": "WujGV4JW", "url": "xwqYgu1X"}], "name": {"wjl2ueZQ": "zIiykwZ9", "c8VBpxkc": "0WTtRKsh", "Y9OgiCkE": "0Wx5DenZ"}, "statCode": "9J7632Kp", "tags": ["yjwEXKCz", "afMdbU9z", "Rotawuw4"], "unlockedIcons": [{"slug": "OKf6aKkC", "url": "w5UpA9lh"}, {"slug": "ZsOX3kZs", "url": "Zo5bZoLq"}, {"slug": "RAuwQhUu", "url": "jv50XSy8"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'UyBd4OvQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '2TegNV6d' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 61}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '462oU6aK' \
    --limit '49' \
    --offset '35' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'tLBLMNtR' \
    --namespace $AB_NAMESPACE \
    --userId 'qGrK1wHV' \
    > test.out 2>&1
eval_tap $? 11 'AdminUnlockAchievement' test.out

#- 12 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '24' \
    --sortBy 'listOrder' \
    --language 'z4mVICts' \
    > test.out 2>&1
eval_tap $? 12 'PublicListAchievements' test.out

#- 13 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'MQ1EVfTx' \
    --namespace $AB_NAMESPACE \
    --language 'zbzqNJY6' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetAchievement' test.out

#- 14 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Qt4vjx3Y' \
    --limit '23' \
    --offset '83' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 14 'PublicListUserAchievements' test.out

#- 15 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '8uvU6JVw' \
    --namespace $AB_NAMESPACE \
    --userId 'O6yONH21' \
    > test.out 2>&1
eval_tap $? 15 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE