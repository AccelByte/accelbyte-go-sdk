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
    --limit '80' \
    --offset '86' \
    --sortBy 'updatedAt:desc' \
    --tags '["ZrTXyk8YTtsfXWxr", "OATGmQvyHktRDcNY", "ve7lHJsqFJd7JKyV"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "m9YfamZD9SiCrEvl", "customAttributes": {"qCbxnlbTvUWmaaHK": {}, "tuP8HMwSpYlfV48T": {}, "3CCZFfut6fldx1jz": {}}, "defaultLanguage": "ObQqAmsYF3wFA9dU", "description": {"VT3dv933Ypfv3hZp": "uc7mtsreGY0rPWSa", "SkWqGvyEymH3u0NE": "7iuO1Lc3ThHYnyWA", "pQ0FINRHwgb4IFC8": "GCAJaFHzR0VLckBR"}, "global": false, "goalValue": 0.24964498276920732, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "8aeJgVIUdPW0P9lM", "url": "inugROMkREXvVjVg"}, {"slug": "v7XyUIlQc83Khrk5", "url": "nVUk67qCc9VdSsL4"}, {"slug": "zrjpqkhPVlxtEL3w", "url": "LOvLab6tAai1iHMX"}], "name": {"8HeheqB0lX50Y6vi": "S6xr0q5i0zOBTnwK", "WJ6FS2s99Fg4MHUH": "xm8PdD1FmSJAtrCC", "dZzMwN75kJ7mDeJG": "qylff0NqoTG60fno"}, "statCode": "cyMpOtdvUKYFapsr", "tags": ["3Wl3cFVscI60e8Wd", "hpfIQS0ey3dxWrMH", "9hL9IJ2G6KI6Yipc"], "unlockedIcons": [{"slug": "XH3NLZqWM2gnFJFY", "url": "sNFGbWZpdtl0dwFM"}, {"slug": "wQiy7BsE7qtdPasS", "url": "l3qem3EPuAemoGHK"}, {"slug": "aUMZptcCNR8QcAHQ", "url": "SI10GPp3AQ69PaIc"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["n2YIg3vomGcefNfr", "08f3TUKzRoGiOU2e", "mQii0xJGpmqXRnsw"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'zewN6gQvjjGN4dS0' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '17SPJx5CXsaEKi7q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'EIaX0G19Ng4xNYrg' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ohxVDzLNBpk9zJYA": {}, "RYhTxjq4HGII0F9d": {}, "pHBeF0D12LoiGd4k": {}}, "defaultLanguage": "ay2Rz5sPvojpemYR", "description": {"X2w2NJPAcU3pd78n": "MMDqMtA21ppdNqAz", "1vEwaxcolt3Qzn6N": "N6JZdWTwpQ5j92Cx", "rBsAnLvBVGuaQuMu": "HKbImFtGkbhfDJtM"}, "global": false, "goalValue": 0.5043106915133998, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "AaxmFhjt3ZeIc7Jw", "url": "Mz5vDkpKqAi0BDQr"}, {"slug": "4r06udCHmX9AHqoQ", "url": "kBBrPNMm4MEn1A1y"}, {"slug": "tBhfFNzzZS5AzOe7", "url": "5LdTsN8x0vukvZje"}], "name": {"zBeEEPy6vlKbzk82": "5ZxOcNiH3fdtlGnf", "HzGTmBrQqSdNzl3q": "KyoxJGgbkCle5FwN", "lWzAunQCKGd2Gddx": "jggGxO9YYs41Xdet"}, "statCode": "B58izXCj7NHE0sXf", "tags": ["A3GcQfrGhb8T4Meb", "iOOWk7wNvL22kA45", "BvSX8NReofN1tY7t"], "unlockedIcons": [{"slug": "rI3YmePot1T0Lo6o", "url": "wRByFzmFdIzFWBc4"}, {"slug": "5Jtgkj5695EON4xO", "url": "FjxIr58rRGYJJ4KL"}, {"slug": "OAFBtObN3aK7CyUJ", "url": "K2OWKTYCogsUFzZ2"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'nPNqaapxXpN9rpk1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'fsASvqpUKGdOjPYn' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 26}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '8DwrMxKVjheSS2eK' \
    --limit '58' \
    --offset '87' \
    --sortBy 'tSz8zYI13jOhz4JP' \
    --status 'EzjkcrBZpHn8hcIg' \
    --tags '["SH8YRPWa94bcTrxB", "6Crmt6ICAzlJotV8", "duzgpVjV0JtT0CNd"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'ROhVnbtqqy0zSI31' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '94' \
    --sortBy 'ZRSBlbDiTBmghToO' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'QMMjRsScdsziVyWI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --name 'CKphYQwe7YwbH0KC' \
    --offset '76' \
    --sortBy 'GRIfznQadRmZSLi6' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'S5Ft7OY07ASOJsG6' \
    --limit '66' \
    --offset '56' \
    --preferUnlocked 'true' \
    --sortBy 'DAoO1ZBSt2IiWohP' \
    --tags '["sFRMLuCfOuTpOYU9", "ZeRpWyL2428mJu3v", "5p72gd3yQBSm6Jlv"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'PbSvK4PqbGppMVo9' \
    --namespace $AB_NAMESPACE \
    --userId '8EL0d98KIXElRfqn' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '5VzzErBsJmozejyP' \
    --namespace $AB_NAMESPACE \
    --userId '0Rcf1NWuUUPrIoe8' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'XGcJXJ9vq67wJv0M' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'yo2LidqhXQpyMLr2' \
    --achievementCodes 'lECjM8qoAmPe1sRz' \
    --limit '22' \
    --offset '52' \
    --sortBy 'mKs9RsaMfeckfgPl' \
    --tags '["iwHFIr31A47KM60J", "BkzmoEjW7HXPmDBg", "ht6OLVvdlvpiIxuR"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '85' \
    --offset '26' \
    --sortBy 'createdAt' \
    --tags '["N4rVDG9R6Dt41tcv", "QYO2PrLGO47CeOHX", "0HNXn6rayQ1H4riz"]' \
    --language 'JSiKS8sWNy7pXiFE' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'QYaBdqzCXjXcQFKP' \
    --namespace $AB_NAMESPACE \
    --language '7iLesKiZq4FHI287' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ZpWhKAcT6bnkG0vq' \
    --limit '51' \
    --offset '6' \
    --sortBy '3TcOFKwHWJOaTDL1' \
    --status '7pM9A2PhJYQ8QdmX' \
    --tags '["I3CgGzuSByZ8bsjM", "HdMuJTuzAAs9Ts2J", "5ur2xSNmP6ea9voi"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'OFTNi1NUwkPblKj9' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '18' \
    --sortBy 'RpVmZtEN7lL3nZXG' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --name 'wilCvSNOLG7TnNlx' \
    --offset '74' \
    --sortBy 'AmojSfxIjyowCW6X' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'nXPDwRZ0842cWgxC' \
    --limit '11' \
    --offset '39' \
    --preferUnlocked 'false' \
    --sortBy 'MAZAUrWEkxY86Qlr' \
    --tags '["npmQ0KCEdErJTiuV", "0Mo0pow09IQzgToz", "yDckLDxLud1D6vcr"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'XkHYW2hYtIA2WCiY' \
    --namespace $AB_NAMESPACE \
    --userId 'nkxQjlYX1oWpvmHU' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'JgcOGKZAKI3fCUT0' \
    --achievementCodes '5OtpseDbuO7wMKpP' \
    --limit '57' \
    --offset '78' \
    --sortBy 'tOEjbFKekLfTB8PQ' \
    --tags '["GFfbL5CXSqi0wBa5", "OnounOVvD3WOasAw", "tfe896ZhEcj0QvOH"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'EyirOXc4WagmYOov' \
    --namespace $AB_NAMESPACE \
    --userId '5NzCqpYAeQRqiLKi' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE