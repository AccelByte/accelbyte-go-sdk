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
    --global 'true' \
    --limit '39' \
    --offset '55' \
    --sortBy 'createdAt:desc' \
    --tags '["xcVpFrtt", "ufHIRdH9", "UzVRiXbq"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "lAw7r6W2", "defaultLanguage": "ktQG0h5J", "description": {"Aav5kRa6": "2WopBJHP", "tcDs8bBZ": "LCXLx8bb", "gorQeFbQ": "1g7qbPng"}, "global": false, "goalValue": 0.6437922712244237, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "1vRodwpz", "url": "S6DaDpv8"}, {"slug": "N7ZQVqGj", "url": "6oDLjWjk"}, {"slug": "Y1aXlFcD", "url": "tgOjchIu"}], "name": {"a5tWEIC3": "2ogW7olv", "bTgrhRTc": "PiSuL0Sl", "y6XM4OI1": "8mAQLnzj"}, "statCode": "Mf8GZ2WB", "tags": ["ZqxYG3aR", "EAu2D6QV", "KNCWP75T"], "unlockedIcons": [{"slug": "B0i7pKxR", "url": "8dl0zRVW"}, {"slug": "4EZG9m0X", "url": "cgGVbMqS"}, {"slug": "szE8GHav", "url": "j7AorKsx"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["wkosAVer", "Xpc1C8Xf", "wHuKeb9l"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '3rGN9A3s' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'Nm84hddS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'pHt0P7MI' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "IR7CkyF6", "description": {"C7duuyZ0": "GhDogqrh", "BRd8lDR6": "qVNPRZYd", "FLIAjGGJ": "ddVCvu9v"}, "global": true, "goalValue": 0.7110037500722197, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "Q7KYnIuM", "url": "BvaO35ll"}, {"slug": "zQRaT5kP", "url": "xUfofvnn"}, {"slug": "SuB0y5WU", "url": "lrMdI4sN"}], "name": {"veabntBS": "xTeIv53H", "GCiljvjK": "oyD6SCwG", "rncqmLtj": "QHAf8Tgo"}, "statCode": "Nm03VLis", "tags": ["V6zwPuo3", "td6TC6I3", "lMjGSWN2"], "unlockedIcons": [{"slug": "laRlxfcj", "url": "HfYakUCT"}, {"slug": "qGkE7wcW", "url": "fDslpJSq"}, {"slug": "GAXQ0yYo", "url": "NRKd3IL5"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'TAQ6iiPl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'SC2uE4o5' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 97}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '1ZBm3MqH' \
    --limit '4' \
    --offset '70' \
    --sortBy 'UmLZZbSq' \
    --status 'b8RwNmn9' \
    --tags '["HrNQy4uZ", "AAiE0mit", "9RGCCHYz"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'UOcEdscK' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '13' \
    --sortBy 'PEqgA8yu' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '7Vk6Jt4Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'hZv15T7q' \
    --offset '42' \
    --sortBy '4fYcTVU6' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'RBt0zYoM' \
    --limit '4' \
    --offset '54' \
    --preferUnlocked 'false' \
    --sortBy 'yCUEXlAv' \
    --tags '["xJMdalwS", "yliWMNW5", "NyLu0M3V"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'Hh2EI8Jl' \
    --namespace $AB_NAMESPACE \
    --userId 'DbPWbQ6Q' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '9lNmqRBa' \
    --namespace $AB_NAMESPACE \
    --userId 'AkLnvxkT' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '1X68cmDc' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '3fxU8MyK' \
    --achievementCodes 'rQpM4hkk' \
    --limit '74' \
    --offset '25' \
    --sortBy '6KKXNB3G' \
    --tags '["v0IqmF51", "TkhjYnaq", "6foWvXa3"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '44' \
    --offset '78' \
    --sortBy 'createdAt' \
    --tags '["rXsDr6kI", "LsSSyDdm", "ykmoPYgc"]' \
    --language '2L4jk4Lo' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '0LSP0pf4' \
    --namespace $AB_NAMESPACE \
    --language 'IxjUkl53' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '5X3ateEK' \
    --limit '60' \
    --offset '95' \
    --sortBy 'pADz1x3p' \
    --status 'oD3Qgb3b' \
    --tags '["oLQQ1MzH", "7Qm8bwbm", "XgdAPh1E"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'ThG96gAF' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '11' \
    --sortBy 'K2WDgCcx' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --name 'rvqAThuw' \
    --offset '19' \
    --sortBy 'RmDnyeFo' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'F7VSZ6pf' \
    --limit '89' \
    --offset '44' \
    --preferUnlocked 'false' \
    --sortBy 'QSKVPHbn' \
    --tags '["4Xxtu7LQ", "RENjEEzt", "x1WsYSiZ"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'qan0nSBJ' \
    --namespace $AB_NAMESPACE \
    --userId 'roav91GX' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'lvPG6bFY' \
    --achievementCodes 'ReVHQipc' \
    --limit '59' \
    --offset '30' \
    --sortBy 'x9Zw5D2L' \
    --tags '["7vIYhGGS", "yEW4ZJJ4", "2d3PBddN"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '8S48l9ly' \
    --namespace $AB_NAMESPACE \
    --userId 'NApflxqM' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE