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
    --limit '94' \
    --offset '10' \
    --sortBy 'listOrder:desc' \
    --tags '["a8gEt6elHs51lbht", "LJcmBmw047rlvial", "HJL5i9D3u16oTTPl"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "c5IOiAmirAUvS6UW", "customAttributes": {"UEGdMqkCSkD0jaPp": {}, "0qltJaxvQ68GnyoE": {}, "nbLQMFiOvCJMw3Bw": {}}, "defaultLanguage": "66fSt1oep3Tfl3BG", "description": {"ZyYP6y0oKErNKY42": "SgvOSJvagr4AtRAF", "RalGAJMnslx5V1vE": "Rz5Cd9JmJlgzB3pD", "1AcdTMYl3OmqCZ1X": "bsRuil1FNQVBFp8i"}, "global": false, "goalValue": 0.49033797623011866, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "I6RAOLtOHKGf8Fgu", "url": "lQj6i6tGGkXrassQ"}, {"slug": "5cbFlokwkwfHc7gT", "url": "GkvVDltCwZcZBfcO"}, {"slug": "wGWW1dt98xijE143", "url": "hMkZXvxej5ijprP5"}], "name": {"2Ks8tZSUPK0X9RUi": "opYPFQetNGapHbqR", "bq2ZlS4fhCHNYRub": "XxBFDr0NR1UmC8ZY", "nA3xrDwUfHkXoKR6": "FFxtTShmny8Femd1"}, "statCode": "00SUqSUa2F80nhn8", "tags": ["RtKoXv0FCFfr8IA2", "5Yx8ePdEGLHgAUGF", "WBy1PoNFc2foyLiS"], "unlockedIcons": [{"slug": "LqXMUiPFJRLoXj2O", "url": "MqxkrTjESw9GYCph"}, {"slug": "oFJvrE8CsxCBLcgy", "url": "xB94oIGmuRvuugIo"}, {"slug": "DdtA3pu4dDidXvWq", "url": "bn0raC69lsFRh9vw"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["h16fiplthfT6aAQB", "oGhDYhEoefbNfqei", "CZxZAYs2qFZCQVz2"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '5I09TAE1kPEgg9PM' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'qpUMhxSXEvxFE0tL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'TcnZeykGzZytx9ow' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"L45PHk5ajwvvu4hM": {}, "qggEUjHXxbKR1NNr": {}, "gY2MW1MqzRT9QRAO": {}}, "defaultLanguage": "2jvEOe11KcxfTjen", "description": {"dHy6ZWgY35tO61l6": "OTbJkoASr61PW62k", "u69P6t18m0mYWZK6": "GRQmOMKU2ZcPOwTO", "BLQLcbDfu1iHH2kL": "p499W07lLjDj33uI"}, "global": true, "goalValue": 0.8948141470364136, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "EksEiShW0AJrH4XU", "url": "T0NkQrDjXPLgVgl6"}, {"slug": "Yi62K1sSWVthCUrW", "url": "oNUQjlBnFxs0m4vh"}, {"slug": "LSjjY0QMhn8jiqZ6", "url": "V4lt6svQP3f8nyak"}], "name": {"iYaMs70AAmvpZAhq": "Hj825TImPEMEM1Eg", "ySf7QPdsknPsoclO": "g3J6PwflkO39lkqp", "5qDf9iYzkg0dSwW4": "zVYTY6PLd8Px0geg"}, "statCode": "xVZlmB3xDTKl5bbZ", "tags": ["ZqMuPeVgvYKOuCi9", "il3hYwPXIcx3A9cM", "vrRTYU0Q51mw3VaB"], "unlockedIcons": [{"slug": "DI1NzWpjI9caY6S6", "url": "okmOUoOMLUPyqR3J"}, {"slug": "wkNXjD1mJ4sISIKS", "url": "ZL84MMPK0VI1GFpJ"}, {"slug": "t7oGsEk3C5ZGHPmF", "url": "bf3y2PslTaeq8ZWi"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'LT34JfzckAmCSwrU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'jnWG5g2d6PvmwiuJ' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 20}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '7NByZd7hnrEqVLJb' \
    --limit '82' \
    --offset '58' \
    --sortBy 'pZ5vhHdulkOSokvR' \
    --status 'PYiTTnlhZmggYBQl' \
    --tags '["FCiPpS379P7BdhUZ", "RPll1FQEITbTpUmY", "ARd8wwukttpL0izS"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'qkoIaskmr7L8FbcD' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '41' \
    --sortBy 'c6uFYkhDl3imvMF9' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'noinGEXWch8yRptf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --name 'OODpN8wC35GMXINw' \
    --offset '89' \
    --sortBy 'uWQE06T22y2GcmgM' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'z3G4AVDj39BE9xMu' \
    --limit '56' \
    --offset '57' \
    --preferUnlocked 'true' \
    --sortBy 'uTEhZ1fkQFoqciOT' \
    --tags '["kt8Q3adprQGzWNlR", "gb9WzI8xqM0QpbcM", "MT4CKbzqME42Qxi4"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'KhTVJZl5e7BW0hoa' \
    --namespace $AB_NAMESPACE \
    --userId 'fLDYa4MrBHYFpHx4' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'NgIwQl1CikDe1IqC' \
    --namespace $AB_NAMESPACE \
    --userId 'bdB18IVGr0ctElPO' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'QtQTjilWRJer518d' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'viZdu7i7yKWz3AH3' \
    --achievementCodes 'rzT24OBYXprnZ9Mz' \
    --limit '18' \
    --offset '84' \
    --sortBy '8nEi3irR0msfQjFL' \
    --tags '["zyj7SXy0IaHfSGO6", "V4JZbNwIsCpPmBz1", "psXp1QdAZHvb9LMU"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '87' \
    --offset '4' \
    --sortBy 'listOrder' \
    --tags '["dIirunewMYDbyZt2", "vDAbEMbmrnsEh9wv", "LLRoNrVruIIi7rHz"]' \
    --language 'gBEiOFUdAzrLjhet' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'hF9Ot53L1g5zjQMn' \
    --namespace $AB_NAMESPACE \
    --language 'xpiV2WYnwZjPKlme' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'EliEMxamsYOcMusI' \
    --limit '62' \
    --offset '18' \
    --sortBy 'RlkP4Xo9FVtoiPyf' \
    --status 'wtXAiATyZ6iJR0C3' \
    --tags '["flvk2ltcKP23lMIX", "sqDNqypk8CyALkej", "TuTK65zNf8jOOtLB"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode '6oKMb0kgWcQsTpHc' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '50' \
    --sortBy 'DyjXTqIHM1YLBGYF' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name 'vmntKBnTqbIVf2hT' \
    --offset '76' \
    --sortBy '5K1xAvxepLsHbeku' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'iGiStpmn0eMUaXQN' \
    --limit '84' \
    --offset '86' \
    --preferUnlocked 'true' \
    --sortBy 'FcJwKLdWp26o11rW' \
    --tags '["WrJ0kSVaeODAz20R", "fhZLzo7LMGEJwubK", "MxVB4xH8WK0fLok3"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'PCtQhIG7WghvnF8a' \
    --namespace $AB_NAMESPACE \
    --userId 'wbUzCTL3ejzqcGum' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'dopRqLHm3DdHjqBs' \
    --achievementCodes 'CzrCCbd4Tve2EYdF' \
    --limit '51' \
    --offset '28' \
    --sortBy 'UWxXxieB28pBBxps' \
    --tags '["s0PITlXCVseUCGkx", "o1I0NOlFoYB02wbx", "4a6xy7FC1EjAcF3B"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'r5WnxFRO4lIsVye2' \
    --namespace $AB_NAMESPACE \
    --userId 'iubhvqJwUaqFUhYw' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE