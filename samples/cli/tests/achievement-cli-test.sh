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
    --limit '40' \
    --offset '54' \
    --sortBy 'updatedAt' \
    --tags '["fg5JwRyX", "wy3M6BUu", "nHXRSpAA"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "6a2d0OCL", "defaultLanguage": "WyAPLmU9", "description": {"assPWxN1": "OCB6fJxB", "tNeEmzol": "QV5AKyD4", "4y7uU22r": "LxWleuHl"}, "goalValue": 0.434681936488142, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "ERIbyvy7", "url": "JDOXcKBj"}, {"slug": "DcvmDYH5", "url": "VnZ9PaUQ"}, {"slug": "1AN5aDC4", "url": "74nAwQAn"}], "name": {"12m5a5tx": "kUgnFoZH", "zgHsufKy": "PyV5HJ8m", "gX2L8B2R": "Te93Gsmt"}, "statCode": "ZrI9k3Ks", "tags": ["YM0m2I53", "sVgEE8QV", "9Icl5gmR"], "unlockedIcons": [{"slug": "Bs2q3HFJ", "url": "iQ4bkRnU"}, {"slug": "laTLXMIW", "url": "lGPmGNsU"}, {"slug": "6xr7VOGw", "url": "FHygqgA8"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["DrQAsBOP", "MW7QB7Dk", "fenPexjb"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'iTehjr8c' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'Sr18Augz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'rhWKHWr7' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "HF4Gq8Kg", "description": {"9hs1JBZB": "cMbGA3WM", "51nrpDYQ": "HG1gvnaH", "POwtczsa": "fNsYA0pe"}, "goalValue": 0.14221489197704873, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "D0W5RqwZ", "url": "wfvCjlGc"}, {"slug": "texFcFV9", "url": "vVagIMVa"}, {"slug": "lfy3yww2", "url": "QGLmrmAS"}], "name": {"u9yiwdf4": "RUoSPNDK", "AHgIPVIv": "XvrMJbtW", "S1WKSU72": "YULZjNIb"}, "statCode": "94FTfhKb", "tags": ["LDLendr5", "c7riU8Pa", "vXuvXVQu"], "unlockedIcons": [{"slug": "lcITCFJW", "url": "t1yFXxBJ"}, {"slug": "VvUreJGo", "url": "PIhdFWI9"}, {"slug": "LUYCEMdI", "url": "XvUk8KLU"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '84e5mTcp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'WgXH2h6M' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 95}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --name 'aGwrARHR' \
    --offset '63' \
    --sortBy 'E07jZP3V' \
    > test.out 2>&1
eval_tap $? 10 'AdminListTags' test.out

#- 11 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'r9gKnL0F' \
    --limit '45' \
    --offset '68' \
    --preferUnlocked 'true' \
    --sortBy 'vlkmOkAL' \
    --tags '["OcErjQxk", "CMi4iL7Q", "w76IKhNF"]' \
    > test.out 2>&1
eval_tap $? 11 'AdminListUserAchievements' test.out

#- 12 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'rPbq74iw' \
    --namespace $AB_NAMESPACE \
    --userId 'h5U8cGVH' \
    > test.out 2>&1
eval_tap $? 12 'AdminResetAchievement' test.out

#- 13 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'Lduq5dF2' \
    --namespace $AB_NAMESPACE \
    --userId '0liMMgrr' \
    > test.out 2>&1
eval_tap $? 13 'AdminUnlockAchievement' test.out

#- 14 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'sScpDoRJ' \
    > test.out 2>&1
eval_tap $? 14 'AdminAnonymizeUserAchievement' test.out

#- 15 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '37' \
    --sortBy 'createdAt:asc' \
    --tags '["Kheu7yWv", "VE8i5FDL", "Vk4wY9cV"]' \
    --language 'FURIJv3g' \
    > test.out 2>&1
eval_tap $? 15 'PublicListAchievements' test.out

#- 16 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'IYcfq1oJ' \
    --namespace $AB_NAMESPACE \
    --language 'sDWofoiG' \
    > test.out 2>&1
eval_tap $? 16 'PublicGetAchievement' test.out

#- 17 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --name 'vXi2viNC' \
    --offset '5' \
    --sortBy 'vfwToFUm' \
    > test.out 2>&1
eval_tap $? 17 'PublicListTags' test.out

#- 18 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'pdmVs01m' \
    --limit '91' \
    --offset '48' \
    --preferUnlocked 'false' \
    --sortBy 'gkvim9RN' \
    --tags '["v0XUHC6U", "AFAXAXCc", "kYPamkOk"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicListUserAchievements' test.out

#- 19 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'Tk0nWU0Z' \
    --namespace $AB_NAMESPACE \
    --userId 'zdtx3wPb' \
    > test.out 2>&1
eval_tap $? 19 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE