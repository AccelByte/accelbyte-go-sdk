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
    --limit '45' \
    --offset '80' \
    --sortBy 'listOrder' \
    --tags '["9JI7mr2GssuTq8yh", "6E08DXV7KbG1egzb", "V6tp2gN7d7zZdqtu"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "0Bw2iZ6PvR0yubzY", "customAttributes": {"04D12AKEjZYxTy3b": {}, "iSAo5M6a1E3Igeni": {}, "qVHb7WjbykL4RmKk": {}}, "defaultLanguage": "6n8QTrIHsXmn5u93", "description": {"N64CdR6Wwkb3pytA": "kW7rzTrpP83PU0Q8", "aCUXZ80kkkwh7E7K": "GLqqwsbfBfkAOMwr", "TsMTWnnAI9y7PZPY": "ge7O1eGIJIm81cU1"}, "global": true, "goalValue": 0.3089238823987337, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "uYJOP3adpumnfrLz", "url": "J1FyRq5dlBVs1LJg"}, {"slug": "IwrXAlwU6p2Gqb36", "url": "unJEham2VW13jtvq"}, {"slug": "rEKP05x5M6vOnmB6", "url": "uFfgmY2Mo81b9oDZ"}], "name": {"aqwaDVIZivtkxAOy": "RoYjcGysxDMdTqxD", "HHcVC90maLKsPMvc": "YfNVvgbpcYPRAyHF", "NXLhH48zLfhPv3N6": "dWJLIuUrLkrzhlWg"}, "statCode": "J79Ofs3loZ2gk3xo", "tags": ["h9kF4FvqxFy913jf", "x5ZE47ssNpvtyYLn", "H5clINWCg7R3MWui"], "unlockedIcons": [{"slug": "yQf6YEqvJFAGKEQX", "url": "31GVOSc0nXr4xFgx"}, {"slug": "P16l2FbxxbbwHyOr", "url": "MZkwe0S8lBnJwo5E"}, {"slug": "QccALiEI49m0FgD2", "url": "Q6FYJM1ZCbQNTyTx"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["N5bSR4eGrO4CghdT", "rOwzn4Uz6IIRAUST", "MZc5gTGf94VEDyua"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'Hqd0P5DxS2CgEVq2' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '8xVNK3fqhnkuYWoE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'GTYtDk2DAdUEGlEa' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"5bPBIgKZGa1p8HfB": {}, "DsCVl7t2FUSrDjKU": {}, "aFsqjb7aZulDV8G2": {}}, "defaultLanguage": "dmjq2nQLIC3OJHHz", "description": {"6YDZdUGzhkWiU57O": "7PMB75fXxUqzKpIY", "41SOm4o4eIZx7psI": "DnI1eu795z1rD9MV", "hSyKX4MVhzsP2QHm": "aovTE84fsjJ3iiOu"}, "global": true, "goalValue": 0.6761031547470927, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "m9YLTmaOPKQUMHWy", "url": "yDtNAgZKzsEbi1ku"}, {"slug": "xoZi6kIyP8UksGNG", "url": "kRLXufFRM2ua39zH"}, {"slug": "vTtEYNzk6S1JEY05", "url": "m75tDbc3ViLpSGrS"}], "name": {"iXlx0JqKRTQFgcAR": "akISiiMXsoExtzMD", "dMnZo962uyfhQruj": "pz65rHSwTTC4Sl6C", "Gct4Tv6TnbmD8lOy": "0k2RB96gvP8Lrcf3"}, "statCode": "baMFTEvzqjxmPGWO", "tags": ["hF8UdeFMsmorZt4Q", "PyCxmNI75071DdeP", "zp3n1qJSIygbjV4O"], "unlockedIcons": [{"slug": "4bsDqBAj6YBfuAuD", "url": "xh6ZHbJPPnKt4hER"}, {"slug": "Rvyh1xfOt6KaTlsj", "url": "sKiD4GOSMpDHpMRe"}, {"slug": "WEWYoWX4W3yopXhC", "url": "nQhN5FxRnz6PLUfh"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'wDS484HuKUsPDP8F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'Qcfb3sOxiUc930oz' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 81}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'iGyxky54iSsXW2oX' \
    --limit '5' \
    --offset '52' \
    --sortBy 'OKlm2gxfUIBcmJjK' \
    --status '2m379YMDQxZmZqDN' \
    --tags '["ACCLPnLhlQOHE7UX", "QR25ZL27iJRyRsBH", "INZ4ZZFhHCbxWWlm"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'wpfHHzhOvyvxEkQp' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '11' \
    --sortBy 'iAVX6TnZ2zATUeTR' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'miWExkmqFBjWS8RV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --name 'xfljL9yq7wn5Ecpo' \
    --offset '76' \
    --sortBy 't2FP9cC8F8cwZMtu' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'PdW2Rh0usWwESyGV' \
    --limit '77' \
    --offset '29' \
    --preferUnlocked 'true' \
    --sortBy 'pZv0VoV65yKOPNcy' \
    --tags '["5Iqaih9LluAvyTur", "OdAtE4XX4KRrhp1y", "t0i54lEc6d8LsGLH"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '3BrsX0Cb3k6lr1hn' \
    --namespace $AB_NAMESPACE \
    --userId '30larq21nGZZEbQT' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'IbopknhWxf53pZBR' \
    --namespace $AB_NAMESPACE \
    --userId 'ZKINNjmJGdGoIvTF' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'TbIfBGIOYIFmC765' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'eQGzi4vbyXKcYiuM' \
    --achievementCodes 'PSSrevRzWpY5Q8b9' \
    --limit '61' \
    --offset '73' \
    --sortBy 'jajRMtYrjfqUQrAh' \
    --tags '["vugPWeIMhCo92pvi", "mID5MfYz3c6tsBOF", "uKF4TUFBqRHgyFtN"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '52' \
    --offset '35' \
    --sortBy 'updatedAt' \
    --tags '["wcUdb53s4OY3Gdv2", "CZgCpaR6ndebmdge", "L849h8H6XY49GcGP"]' \
    --language '4MShreCrQS3EFs0b' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'RqajFbru5zMCHeHA' \
    --namespace $AB_NAMESPACE \
    --language 'jLYy58TCEqMNZu9l' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '9BRpQtMDTA60jF5G' \
    --limit '80' \
    --offset '100' \
    --sortBy 'fj0xUZqEsgWayL8k' \
    --status 'V4jY4REqOP9YpJD5' \
    --tags '["RkEgNauhEFxHeRLE", "sc96ZRdcEf5DcFfs", "BXLw6T6cfSNaXZce"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode '680QcOxaDvJPT9i8' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '99' \
    --sortBy 'FKZ6IjIZJuMVMNe0' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --name 'iKxB2fm8wqDMXyao' \
    --offset '72' \
    --sortBy 'zmX7lFbqQRyfUGZS' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'vEhR4kqmafMyunTr' \
    --limit '59' \
    --offset '38' \
    --preferUnlocked 'false' \
    --sortBy 'fIxUANQxax2vG6TN' \
    --tags '["41wGCH8cCRlp8gZD", "sO7y9gfnJ0pLaRjQ", "mcYCrK8Z7PR1khEM"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'TF16PnHwer6QbRFr' \
    --namespace $AB_NAMESPACE \
    --userId 'P21NO2dr8fxWBYU9' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'nlibenZbeGiSVrfl' \
    --achievementCodes 'srbooqvDjUjLBNDu' \
    --limit '71' \
    --offset '6' \
    --sortBy 'LMZfvYXBX9B8VJwg' \
    --tags '["gK3WubAcApTbiypM", "zZOeJVIQkhsbSViR", "CFOoTFmpczu4Tkra"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '8RrjU1QHPZnxXHAd' \
    --namespace $AB_NAMESPACE \
    --userId 'IMxNFQFF5QGPjHLo' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE