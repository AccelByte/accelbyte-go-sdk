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
    --limit '89' \
    --offset '20' \
    --sortBy 'createdAt' \
    --tags '["8czUFY9u", "ThpKIdqo", "Lmw8sJ1U"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "wu2uf3Jc", "defaultLanguage": "m6k7EU0N", "description": {"R0eTRKGb": "mG9new2T", "ZsmX5TG8": "MAVRSCov", "MEaHkGQJ": "TiyzVMXa"}, "goalValue": 0.7314100855800029, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "LQAUr6LW", "url": "8BF1jSZb"}, {"slug": "HBZvgpJu", "url": "vKihWSBr"}, {"slug": "379YoK11", "url": "x1UiLLdH"}], "name": {"tSn1go5c": "AEkl825U", "Vy6wH4BI": "ukJOZfGB", "4yqORNW8": "6ZSSlYdi"}, "statCode": "AG4vxdWv", "tags": ["ygEfJQhQ", "3SV5MIYf", "adewuI4q"], "unlockedIcons": [{"slug": "Tq0KvIPC", "url": "lQaH3JVB"}, {"slug": "ArPjo1i5", "url": "lbIze0eW"}, {"slug": "Q9j24Et4", "url": "XdvLnt3g"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["hU3E4NoO", "QqdMeZNf", "xAkfly52"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'SA9rDr9i' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'TE6G3bct' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'qqPu5bsg' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "6yLS5497", "description": {"yXxeiD8G": "Un9BsXde", "llsmG1Wa": "iDSmMFLR", "8XhIL4AB": "yuSRhYix"}, "goalValue": 0.7878704468904683, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "lWU4DkNZ", "url": "VeZqyOIF"}, {"slug": "r15rvRSL", "url": "VmIRogTN"}, {"slug": "jRSGfYz3", "url": "u06mch8X"}], "name": {"ytA5ub8y": "o5lT5GAt", "OAMQVpg0": "bUHsdYPM", "BejRp1j7": "mGyUdR2L"}, "statCode": "VrSOz13o", "tags": ["5yGZPOUw", "FDArb5Xw", "VSgRuRRa"], "unlockedIcons": [{"slug": "gVYIPFya", "url": "F3rlLbZg"}, {"slug": "rZOxO3p3", "url": "ixRjvGUp"}, {"slug": "XzZOnLLc", "url": "cuiQjpD3"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'FT5QsL6h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'nfLOlayc' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 76}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --name 'RUlx3GfX' \
    --offset '6' \
    --sortBy 'jTxPbNSc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListTags' test.out

#- 11 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '62Rdf4mv' \
    --limit '73' \
    --offset '62' \
    --preferUnlocked 'true' \
    --tags '["QupsYkQS", "qCa4DVpM", "jIoAjpd3"]' \
    > test.out 2>&1
eval_tap $? 11 'AdminListUserAchievements' test.out

#- 12 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '7KVGvXkp' \
    --namespace $AB_NAMESPACE \
    --userId 'h5wKEfOp' \
    > test.out 2>&1
eval_tap $? 12 'AdminResetAchievement' test.out

#- 13 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'zsRSilXt' \
    --namespace $AB_NAMESPACE \
    --userId 'ABXl3gir' \
    > test.out 2>&1
eval_tap $? 13 'AdminUnlockAchievement' test.out

#- 14 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '7iXfrGdo' \
    > test.out 2>&1
eval_tap $? 14 'AdminAnonymizeUserAchievement' test.out

#- 15 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '58' \
    --sortBy 'createdAt:asc' \
    --tags '["LZ42OoB7", "crmXbx6d", "3HIFDtt3"]' \
    --language 'FDZ2Xabp' \
    > test.out 2>&1
eval_tap $? 15 'PublicListAchievements' test.out

#- 16 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '1fEQw2Hd' \
    --namespace $AB_NAMESPACE \
    --language 'klZhhxyg' \
    > test.out 2>&1
eval_tap $? 16 'PublicGetAchievement' test.out

#- 17 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --name 'lVNCkFPZ' \
    --offset '81' \
    --sortBy 'YFx2VJbz' \
    > test.out 2>&1
eval_tap $? 17 'PublicListTags' test.out

#- 18 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'lVq4qhVm' \
    --limit '74' \
    --offset '97' \
    --preferUnlocked 'true' \
    --tags '["M0JwzfiH", "ahS5eVX8", "G9M7MCXI"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicListUserAchievements' test.out

#- 19 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'Kmj8D688' \
    --namespace $AB_NAMESPACE \
    --userId 'Kq7TsSRx' \
    > test.out 2>&1
eval_tap $? 19 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE