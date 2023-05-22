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
    --limit '66' \
    --offset '60' \
    --sortBy 'createdAt:desc' \
    --tags '["DeENIwHn8dT9ySCm", "ldLjyUU4yprJBTdV", "2wHMGlJScwTIVkkQ"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "csFojD1wVNCCy4Pj", "customAttributes": {"QdEKADuRTYVOIbYc": {}, "6X08ajS52Lsqxgs0": {}, "NiKtTGXbhRznjiXG": {}}, "defaultLanguage": "eX25d7ETq8aUqUdg", "description": {"VXGuUqngOgIbgwcw": "C6mUJs7m8pURUy9M", "yFIz3o30jOzicDD7": "giGoAj5FRZd9HwqB", "qMK315dJUsBN3Aey": "HQb39CwvxWIvgJtU"}, "global": false, "goalValue": 0.8753378240050534, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "eqixCojqbePT71re", "url": "XqtEIFHswttTBYiF"}, {"slug": "FWei8qLLQXIOsMnO", "url": "3P5qhwY4lKE8m21Y"}, {"slug": "wurxGy5zfO15DvHM", "url": "c7qsm8vccabMkFCb"}], "name": {"gB1hgR2HpJD7MuQ1": "o0BCNUDlQf5rtQMB", "bnWzVvvWtk1mtZDB": "ulhmnDiLxBwTO9NS", "xvBIrIP8N9dciIlc": "OByJsUDyOfeIaP3J"}, "statCode": "9vGWeqKy3kEMg8KG", "tags": ["uF32QpjEOuIDWXlf", "IpxuZXkEEcVUjr1B", "ufgDfEKKG5kgdnXN"], "unlockedIcons": [{"slug": "cr7QTmtNyxNlIFs4", "url": "8JtuSQxRYxDeup22"}, {"slug": "zZLHirkz31Fth4HT", "url": "k2TXlsGh1SlaloUV"}, {"slug": "xl2TECgH0kBVd5fe", "url": "WVKVCPRzvG8OrPYb"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["3u7swCe8IPEtZMZu", "qvltteYbnBwXR4LQ", "6ZpZHisM6uQDQxH0"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'b35DPEQTUcexgHSh' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'RSTnud8d25qNC16c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'Zs3UqfH9lIYhPIgr' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Q5Xt5J5VNUpm9vtm": {}, "0vWHmZ5WbC3K7xAj": {}, "Ds3VP4qvXTdZSFZq": {}}, "defaultLanguage": "Ooc13xfI6fYMkHvK", "description": {"YE6cOw83x7YzqztR": "dIWqxt1TXpDN7fPv", "HXYFiQbsuYrYWgF8": "MpweA9BAPfcazUvp", "b4L308gIV7eWggRZ": "SZ3EYiZSjAxxgCNh"}, "global": false, "goalValue": 0.9061761927730771, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "TP0mvlKl9CxBJbr2", "url": "2dNilKK3wqBDVvpt"}, {"slug": "jKWLObWGjtiI8eDh", "url": "aKQGntUulRZN2e3m"}, {"slug": "bBR2cyDZvSrzqFBW", "url": "brqiQjhLfZttCvOO"}], "name": {"9zwqw7V6TowVNEbZ": "GryOkrbilqlf6G6r", "uA4q89kDX0ICJBED": "iYgx3Onz7pI7JfCo", "UBCRTT7jN2DCl2Dn": "4FrDrGYacaLJT35s"}, "statCode": "mXIsEtREyw6Cxt0G", "tags": ["TwzAYQJ7gqVquOjV", "z6xdsxlRIc7o4fM3", "kd7VTmVrBOscgp18"], "unlockedIcons": [{"slug": "pXQP6dAeO5UNELIo", "url": "uXUbtPzpa1q0UY6q"}, {"slug": "LkC6M8zzsYXttJO2", "url": "j3g34WELmGmazbSu"}, {"slug": "o5txM0dWLXZLVZF4", "url": "aqZOFBHlzQLQ89v1"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'bsDbx1wcp4pdq7XP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '1uNV0iVenl7gQ57Q' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 45}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'm470ywkUvTaGmPDk' \
    --limit '91' \
    --offset '20' \
    --sortBy 'mznnx6k6Widop6mF' \
    --status 'nqVL43m7VuLqigWj' \
    --tags '["JHXz28v7xlrY5YSA", "JrAzWNTBJWsUgupK", "OJ7Ffnca0kQGZZwH"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'dEoAyHJjrZpPdRDQ' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '2' \
    --sortBy 'P1iOUDBVdBZsUyYe' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'E8bZOdj7TKsZySNN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --name 'eiAL35DBbhK02xqg' \
    --offset '42' \
    --sortBy 'i7awmSeNiCxrJYox' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'NcuNC9TyKKWIZk0B' \
    --limit '68' \
    --offset '79' \
    --preferUnlocked 'false' \
    --sortBy 'xXGhxVFkZjl0G1oV' \
    --tags '["vzLjyIzBMFXWeQxh", "4FiQGVo7QGmuKciy", "RwWVshvXeWLbxwvl"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'reg2iPZVjLuh0XLA' \
    --namespace $AB_NAMESPACE \
    --userId 'bjcF38pe8qEzql9O' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'nVaRhewEl1lA1Ob0' \
    --namespace $AB_NAMESPACE \
    --userId 'nbJGvvlUsS3SAIx2' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'mprrlgIsb3T84oG2' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'Yi7w8gb03Z2ddKSW' \
    --achievementCodes 'KjfTcxd5acRD21qg' \
    --limit '0' \
    --offset '42' \
    --sortBy 'Akpj7Ho1LwYH9aU7' \
    --tags '["7rzqcX5ZUYSe8WUc", "fWwD39pvh5hd7aHA", "Iqh67JJmjMimR7JB"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '64' \
    --offset '26' \
    --sortBy 'listOrder' \
    --tags '["g7JkJLsBNYebpJyd", "pa4b0MrorWpFzEgx", "ULGJOYJM8Mdv7p5T"]' \
    --language 'fkRZvWV4VN3QuBt3' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'vYkqEtjDhDcpPGdc' \
    --namespace $AB_NAMESPACE \
    --language 'jDk6xutOZZsPNIir' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'Pc3naFfCHhj92l1X' \
    --limit '42' \
    --offset '13' \
    --sortBy 'kITb6FIzIqmD5UzC' \
    --status 'QwtzVqIe1EBRP1io' \
    --tags '["bRh27dWJiAK640sv", "gTmBVpGsVQEL5WZ7", "WyWW6WVrgE4mPdQQ"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'fUIr3Zsa9kY2CMtY' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '1' \
    --sortBy 'iyF3WNhoV9e3Xzjm' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name '0SFItAHPc7cuhJFJ' \
    --offset '6' \
    --sortBy 'IrcKZ62vEUCs1iFU' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'NPFaRkxtqunD1dRB' \
    --limit '54' \
    --offset '55' \
    --preferUnlocked 'true' \
    --sortBy 'Q5OIWXl0RJPsznk2' \
    --tags '["V2ejUzz0BGvwiAI9", "sxaJ7X0puI57Oqsc", "wv9R1dDFMiiYks45"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'aLnCr8gfzMFfcEbi' \
    --namespace $AB_NAMESPACE \
    --userId 'zyeZx65rRqyhkEBY' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'NdAMyv6LZwifQNDp' \
    --achievementCodes 'yMBQklOFLSr1imgQ' \
    --limit '70' \
    --offset '45' \
    --sortBy 'e888qvyNg2dgbQyk' \
    --tags '["5yxViPZbjq7GZcYW", "3OI3CbNTfk3DuyPR", "xxCej16d7offKGyh"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'DEzD7d7QO7uPjRdt' \
    --namespace $AB_NAMESPACE \
    --userId 'SpI8Kk5t3iyMMuS4' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE