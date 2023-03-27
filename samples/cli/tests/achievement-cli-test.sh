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
    --limit '15' \
    --offset '12' \
    --sortBy 'listOrder' \
    --tags '["wasnliAn", "8dmVlGrW", "YlhOGLrA"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "ANS4gpHB", "defaultLanguage": "RB5o0uqK", "description": {"l3RALM1b": "ozf4c1kv", "8Pjy8aih": "nsPT45b9", "0ZMr5AxI": "J7zUy2QP"}, "global": true, "goalValue": 0.3873098467714744, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "ueHSe7vR", "url": "DyECnDpw"}, {"slug": "QCj0GKf5", "url": "Wkss6m37"}, {"slug": "8mLc74oj", "url": "5Tb55yF1"}], "name": {"I6FxmWNB": "watoB355", "jqcpVnS5": "PRyk68zZ", "ssyfBtoY": "sEinbdvE"}, "statCode": "PZAhp7zn", "tags": ["ETWraBb0", "7LpFpcGN", "wvRYwcww"], "unlockedIcons": [{"slug": "T8M98Dn0", "url": "SNlUF1TI"}, {"slug": "0IuIgI3Y", "url": "agDHKriP"}, {"slug": "gH7oOWVY", "url": "xVxoJIzw"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["w8kNio9y", "GnpXv0Pu", "QeTQWZdA"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'PZ5FS4yg' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'ZktCoBqc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '59J1jXdz' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "3Di19LFh", "description": {"r3rjixMU": "LcEmnx12", "w3L9IG0E": "6v9tDhP6", "qFlVX4gd": "sibqzVzn"}, "global": false, "goalValue": 0.773064215597899, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "ve8mir6n", "url": "cYRwzXRm"}, {"slug": "VAdshepo", "url": "lYpKLxAU"}, {"slug": "YX8onDo6", "url": "ZguOzFmB"}], "name": {"iFpkcnFQ": "9a2FU4Wb", "S3tFUXlX": "5EBMsUkw", "PA7hoQs4": "jEaFNa1F"}, "statCode": "IhzZJLIK", "tags": ["XiIq0MT7", "CcagSAyw", "EyC8lzYF"], "unlockedIcons": [{"slug": "ofzLucIM", "url": "HRueczkt"}, {"slug": "tGhp6K87", "url": "5f6GWDyt"}, {"slug": "94b6wNIB", "url": "vfjlZ9m6"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'f1B5ELNM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '5LOjBMva' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 2}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'NVN50VpK' \
    --limit '28' \
    --offset '78' \
    --sortBy 'bf5UaKNq' \
    --status 'EVmLJdB9' \
    --tags '["drbRNVRg", "7slWuKvG", "QjjSZBDk"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'XAZP5PoU' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '68' \
    --sortBy 'kAgKp0TH' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'hyven3QN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --name 'yKNZVmCt' \
    --offset '61' \
    --sortBy 'IYPRQx50' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '1ShI98EJ' \
    --limit '90' \
    --offset '78' \
    --preferUnlocked 'false' \
    --sortBy '7wC06gCv' \
    --tags '["b7r50H5S", "XKJnWghD", "dumcjQ67"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'ojrGkJzO' \
    --namespace $AB_NAMESPACE \
    --userId 'Llb4zBHX' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'GvyicE94' \
    --namespace $AB_NAMESPACE \
    --userId 'WmSCSDla' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Ahwax6CA' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'ChsQvCDn' \
    --achievementCodes 'ZlqtEocC' \
    --limit '3' \
    --offset '99' \
    --sortBy 'dW5DQMZI' \
    --tags '["jZMYIx9I", "HNXM6BAm", "gtSwonR5"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '52' \
    --offset '78' \
    --sortBy 'listOrder:asc' \
    --tags '["zZ7uTliC", "Oxy2nxYA", "yvx77Zv2"]' \
    --language 'xD6eDCCW' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'tmsIlEOv' \
    --namespace $AB_NAMESPACE \
    --language 'ZfqWbDjk' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'rESytvDv' \
    --limit '88' \
    --offset '59' \
    --sortBy 'RyycuMcb' \
    --status '8zNyRuzw' \
    --tags '["ZForoSNa", "cVvwEgmB", "237dz9N3"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'j7Yx1yPM' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '75' \
    --sortBy 'EtW7zBlz' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --name 'mvJxvLiD' \
    --offset '39' \
    --sortBy 'cjRXhqiP' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '3enanJuH' \
    --limit '47' \
    --offset '66' \
    --preferUnlocked 'false' \
    --sortBy 'xR9dUNyd' \
    --tags '["KCfUMnr9", "gcC1FVuI", "wg2uesX1"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'wUBbqHV9' \
    --namespace $AB_NAMESPACE \
    --userId 'Kp9CVNQW' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'A3THPmBw' \
    --achievementCodes 'scS3Hbh2' \
    --limit '71' \
    --offset '14' \
    --sortBy 'FCBFeJJt' \
    --tags '["csuPlwTA", "0spvqvPh", "1FyPSKWk"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'liEprCYq' \
    --namespace $AB_NAMESPACE \
    --userId '6JCwOE0E' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE