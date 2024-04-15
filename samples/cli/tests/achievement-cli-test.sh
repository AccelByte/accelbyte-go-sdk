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
    --limit '19' \
    --offset '62' \
    --sortBy 'createdAt:desc' \
    --tags '["aMfpP4AppIW5mT5p", "sQNpiKfQ7lkXIYgp", "EnAmfTgyG2JBntUA"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "yCYw5ds3ds7b75M6", "customAttributes": {"EhT4lH4ZuztiQBP2": {}, "I9uUy8c1SVJQqQud": {}, "LXci8i2nAvvill28": {}}, "defaultLanguage": "N191E0I226tBIsoU", "description": {"zbu6Bvb0pyFzarqE": "hJ4q6GY5wxqVDbIh", "JgfmxmIbsCQLMdXI": "HNuqrWmRX1gWMjWw", "ccPc3ZD6H19ff28p": "llnrD6uj84QsbjWj"}, "global": false, "goalValue": 0.4503901531729879, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "5pZPBqaUCa6AVbLn", "url": "shZDfaQhoAvxGljx"}, {"slug": "DNRKsV0ImKHcjwXx", "url": "AgJAvypfFFIVTc3s"}, {"slug": "C71xg5aMv9ZWxxTE", "url": "1zq4H7vJdERSYzhz"}], "name": {"gLSXR3Yje9ZvLs7e": "chOWUFpSW1zCP83e", "TAQp3WIyUjT3hLvZ": "omcv09MAFowOTtpo", "T6IJSADQbplpOhrf": "7OIG1BlfAN0opgez"}, "statCode": "rl4HyFMKcwQzb3vg", "tags": ["zL5oZT1D4GiOHloL", "BGam43BAmKx1fQsq", "YE5eMHsby5FK8xRD"], "unlockedIcons": [{"slug": "apUmXSfvQHZhxPMn", "url": "bfXIlfO1EumAuGDz"}, {"slug": "CttMaDiM7EQQ54C1", "url": "cXH8fltH7ufTKZrV"}, {"slug": "T7J2N2WD8jF3wRb4", "url": "Sx34b6RQbp0XOq5P"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["DhKiJdxBYpXN8Doe", "vBNEIq7ezncxFsQM", "HSUzTK5E2bIS3mP7"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'sYuwEHtAi1aGc3qY' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'yqLRPq4kkZDnhElH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'UqSobg3drclysr4V' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"rkjRGJa9mnv0Y7Od": {}, "5HSRAXzqC4SVzN0c": {}, "hA9KANl3E4jio2wr": {}}, "defaultLanguage": "lm64RiQ5iCRk33p0", "description": {"9F5b46yk8GloywIr": "IFRYpvyFXdyRO5UD", "gsKU92wVyQRkHtJl": "aguE5f1sW2dECBcn", "p4GszCl0IJHAA6sZ": "Dpb2CjY2Na2HB4ZF"}, "global": false, "goalValue": 0.3914345986650061, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "KFYnFghITNV1gwog", "url": "o9jRe3ZLnuIyICOC"}, {"slug": "ml1j0swXHXB5SSvg", "url": "cD1M1ALqjn4PuUFg"}, {"slug": "IRaMNHKlMvJu6TY1", "url": "n5lnxghPbBYjSWjK"}], "name": {"D5C5hvdnesBZ2Ml8": "fqlqpLrdONfTINNN", "xZ3TxAd3Etz7N5fw": "QKBW6Pix8pyzWcOX", "PBL4LHK6FuJnvEcQ": "qnS1FwAKjfqLEcDg"}, "statCode": "Atvmx3TZVFiwKblI", "tags": ["XCxQaBIAl07ZXLYJ", "UCaToRb70PuTMpYC", "G3CTU0tddyOycaOt"], "unlockedIcons": [{"slug": "aciDInkTZz9VD3aD", "url": "fv0fnTLyWy11cNSF"}, {"slug": "5hkGJQvEHVHvtBJQ", "url": "pjFNjb0LPccgOelO"}, {"slug": "GBAcec0JjFdT4qPr", "url": "50eYNbLjrrwF2c4v"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'rTEKLym3J41DiAY6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'tC5PQu745l8IVgSI' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 7}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '5uodTchAfY5WpZHj' \
    --limit '82' \
    --offset '96' \
    --sortBy 'BRiHZ4DXuj7OQa0I' \
    --status '3jLXEDtj0drzS7GB' \
    --tags '["GaUaNHUWE5PhycyL", "bRwsTc6p66wfXnXq", "tRFOdrWMnyPkgW77"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'xZ9GFWTYGLIRNv54' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '17' \
    --sortBy '8vAtMlYuXo4O76Wt' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '2DplRLmbGgPPQ9Y0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --name 'UyzhAob1LD4BrOCX' \
    --offset '19' \
    --sortBy 'cz6GViK7lUfEJoHF' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'apr9xTNgkEeaaZjL' \
    --limit '100' \
    --offset '98' \
    --preferUnlocked 'true' \
    --sortBy 'iT1QhwVggsF2pMa1' \
    --tags '["Z5ryHCuKOEs7gAYG", "WFkQZVZc7LuWaQMS", "Ssb5XyvDorpwGVrr"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '6LHfsBDB2DnWwbKM' \
    --namespace $AB_NAMESPACE \
    --userId 'QoxFOei4JpEfyb7P' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'hS5oksmZdxAtxmlT' \
    --namespace $AB_NAMESPACE \
    --userId 'oO6HSls51yNkhLWR' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Rxt4E3Sn2YHGuKED' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'FH6F7WWbx9XA2XYC' \
    --achievementCodes 'ccysIAp1LwXMubX8' \
    --limit '100' \
    --offset '34' \
    --sortBy 'kP3DB9SjRj7u9RQ9' \
    --tags '["GBcHT80AfwKIkGBO", "oCG52o55an4X6JCe", "YKMuZBTlFGOaA9DC"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '57' \
    --offset '37' \
    --sortBy 'listOrder:desc' \
    --tags '["SOvG1Xe4LnVz0YTn", "aKWQtojOXamlbnd8", "7JK4GroHf0JRTOEK"]' \
    --language 'aRS7oLh0PAzE9UiM' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'gw3nnuA3Klq9lOmv' \
    --namespace $AB_NAMESPACE \
    --language 'GRfx7wi5oycbdDbV' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'Si6ApGaPYG8MJm1K' \
    --limit '69' \
    --offset '73' \
    --sortBy 'aeT0KwM49iiLKpTq' \
    --status 's0beUpaVNX274bcG' \
    --tags '["shHmXsipVIoOnrOd", "QxMjR4ycYso0rnqT", "7e7VpPu1Kd0dxcv3"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'vCPtCQZ6t2cVIfw5' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '97' \
    --sortBy '42HJkx16ZoTqxpIZ' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --name 'fsdjCFoLNPBsulra' \
    --offset '84' \
    --sortBy 'LCAa5ARxyeCnF53L' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'DbRuMWMrO3li3sFn' \
    --limit '60' \
    --offset '47' \
    --preferUnlocked 'false' \
    --sortBy 'P1IoizLkynjs3v3t' \
    --tags '["uRZVRrWv2VVrGRex", "HSpcxHfBbZXNsH2b", "dwT74YSJh6bBrzN8"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'D3LIugwueZhy99SN' \
    --namespace $AB_NAMESPACE \
    --userId 'pK1xq07Dmm7R4fm9' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '4wmnROvZpW4mc1OS' \
    --achievementCodes 'RFgBL4dHuHlYT1w1' \
    --limit '91' \
    --offset '25' \
    --sortBy 'iCsVkvAS0718sH01' \
    --tags '["5TpylXShVF0lQVsh", "1xF0wT1p4uJ2aHgC", "KdLJOSXji0vjJtW5"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'ZITzNO5itDd4ciYX' \
    --namespace $AB_NAMESPACE \
    --userId '3rllTUPWEKGchcac' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE