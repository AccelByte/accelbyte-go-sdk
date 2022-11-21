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
    --limit '90' \
    --offset '54' \
    --sortBy 'listOrder:desc' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "juCAPfHp", "defaultLanguage": "ykuemJuo", "description": {"TNF09Nt7": "pFWEY1c6", "dZ0BQeqX": "UWGa3YeU", "HkFUBND1": "eGeR8rNs"}, "goalValue": 0.1350655964629166, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "yD9gN0Dq", "url": "wLtrhseJ"}, {"slug": "CYfqTBBJ", "url": "tLYlDxlF"}, {"slug": "krU3AZ3a", "url": "UGG8rXp0"}], "name": {"bzL6S3sS": "UESS4vWB", "eSSYHgvD": "NkuJNiVt", "LG4qp3RI": "YlHkYaRS"}, "statCode": "GpykIQEA", "tags": ["GMDkOHCu", "GBafipWB", "Tv8yZnhP"], "unlockedIcons": [{"slug": "WPZO9kbF", "url": "4pOzl0FC"}, {"slug": "RVHj5bxo", "url": "lH7IajKM"}, {"slug": "lahu2c51", "url": "GcddH85k"}]}' \
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
    --strategy 'FUCHC4AD' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'ScrVleX3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '8UBJQ3C4' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "LyKlR0bf", "description": {"DpTh9utF": "q56GqCjc", "Dp6SpscV": "D3iP4TOU", "h5p0TYTy": "ih5fE9op"}, "goalValue": 0.4754679414027134, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "lyZK4cNH", "url": "bpzOXtlK"}, {"slug": "wMIOJr8A", "url": "CKCwH2S5"}, {"slug": "uwpqkPxi", "url": "iCtoDw5i"}], "name": {"iJl5OJlj": "4enPOE6P", "6jvAgksL": "ZKPFY5YA", "HylkWgbK": "zw1Lhr5H"}, "statCode": "6pTqjpJa", "tags": ["15yVeQXD", "EapXyIvf", "QrLHXVN9"], "unlockedIcons": [{"slug": "O4irUC2w", "url": "soQm8CPU"}, {"slug": "nCjgeZcv", "url": "wkCgGUqx"}, {"slug": "tYcxobPi", "url": "z2XHFoDA"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'rPFlaEEZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'j6CtKa5n' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 45}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'FVCDu7jj' \
    --limit '21' \
    --offset '23' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'p3Py3skA' \
    --namespace $AB_NAMESPACE \
    --userId 'Bf71e3O2' \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'PZ3O4dMk' \
    --namespace $AB_NAMESPACE \
    --userId 'DLBAED3G' \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '69' \
    --sortBy 'listOrder:asc' \
    --language 'Yg3cDaVG' \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'I7Ny62nl' \
    --namespace $AB_NAMESPACE \
    --language '58TkuOtY' \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'T7fT1PW3' \
    --limit '72' \
    --offset '31' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'cQIwhxLt' \
    --namespace $AB_NAMESPACE \
    --userId 'agTDuAaJ' \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE