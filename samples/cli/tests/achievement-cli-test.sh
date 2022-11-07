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
    --limit '52' \
    --offset '85' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "BazhM6Os", "defaultLanguage": "8zphwrw3", "description": {"qJIf2uOg": "1cuTLjPn", "UHWim7SI": "g1Nw8Gky", "m47SnrDe": "pNrcyz19"}, "goalValue": 0.38502594184940997, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "EFiXB3ez", "url": "KFdrbINp"}, {"slug": "AW04fjjz", "url": "P7hpvvi9"}, {"slug": "1rC4HtCt", "url": "Z866z1Rq"}], "name": {"NNgGrKZA": "06ol3ku3", "Np8FZP6W": "M8nlox2s", "8H4xakOn": "wi1i1Y2s"}, "statCode": "2rKBqZlv", "tags": ["fwgNxhVZ", "cRNsAaxc", "qQ82tGdG"], "unlockedIcons": [{"slug": "RPDONH5F", "url": "EZ4cjfxp"}, {"slug": "dHCd8daL", "url": "WY9EUNes"}, {"slug": "6bkAiZf9", "url": "7vRNebZA"}]}' \
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
    --strategy 'TMGHkDbt' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'YZCW7gep' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'VJ1uIAkW' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "uBUnYFVZ", "description": {"ItSeYsTt": "6I6aW929", "hVaHF60E": "mjxw3g8b", "CfsHKuF5": "rCgmDYZg"}, "goalValue": 0.37777691355302523, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "hoXh0EZE", "url": "8HS5Oi7v"}, {"slug": "CedFoT00", "url": "kvq3WQ28"}, {"slug": "kvgVku9B", "url": "t6PXf383"}], "name": {"ayRWwIEj": "SnIuHlEF", "yhEjxbSJ": "aJsH9l2E", "VJs9ox2H": "qPhhV3vv"}, "statCode": "6JdDQtLc", "tags": ["v18ooogy", "ERExQ4hD", "fRtyNi6P"], "unlockedIcons": [{"slug": "M5q8Y8b4", "url": "lk9zZJ5s"}, {"slug": "p1d6PlnO", "url": "E6lOgbpF"}, {"slug": "ToRM8Pv9", "url": "dOlr8pzL"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Ot6D1pes' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'IKHOZlBY' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 21}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'EquaVHIZ' \
    --limit '16' \
    --offset '73' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'S6qxgEZr' \
    --namespace $AB_NAMESPACE \
    --userId 'E9RN0fyv' \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'OSBRz4LG' \
    --namespace $AB_NAMESPACE \
    --userId 'kWcZAqDr' \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '93' \
    --sortBy 'updatedAt' \
    --language 'AxsBq4TV' \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'JWWWLAhO' \
    --namespace $AB_NAMESPACE \
    --language 't5fIslea' \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '0OjqlzAP' \
    --limit '47' \
    --offset '87' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '57Wj8CM7' \
    --namespace $AB_NAMESPACE \
    --userId 'PIbxNHI6' \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE