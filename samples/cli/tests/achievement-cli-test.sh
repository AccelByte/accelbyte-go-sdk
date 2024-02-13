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
    --limit '21' \
    --offset '93' \
    --sortBy 'updatedAt:asc' \
    --tags '["QM66Az8ek7aXAwiw", "08nDpFoOcTfvTGh8", "etqRFclbtrQ3FUnL"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "3lFdBdQFTaylsC9S", "customAttributes": {"cmLz2ODHI8d5K297": {}, "M5Pr9yGxXwexo5VC": {}, "Rh2DUjorJzNOQFoI": {}}, "defaultLanguage": "1wVjqBDVsLOxA9WX", "description": {"WSESEnXIRSxUbQxG": "zE0MtZwAZIljKtKO", "a7V87ZjieiLCQafU": "03u3DJKm1Vy62XHU", "yF1G8wvKTuaKKAaO": "DHxaux2cFcMpGA8W"}, "global": true, "goalValue": 0.8961465841900308, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "vvJlyRo6Fl6BuUtk", "url": "20KPfbYOYaeZIdy8"}, {"slug": "rOuuUL1xXT3oK6XH", "url": "ys2PQrSJ02lpYctm"}, {"slug": "S8IAHFrOd9kqWeNm", "url": "QVSpc2BRmfqbCMQ4"}], "name": {"OM1sFmCL6BgNJOpo": "0MK2NbxzhtWuOmVk", "VORGmBXOsYR9kyJA": "ZI31GqYxv855R2OI", "Nc1Ol4Wlg3aPHyPt": "hHdmcD39Ci3A9fMw"}, "statCode": "JmoezNcr3PUEIsXd", "tags": ["h9559aS9fIcZ39Al", "SVMn5gkN3FOiTbiH", "931QTqmXGZFhszMD"], "unlockedIcons": [{"slug": "ZV4BPSINoWcqacWZ", "url": "IPgBNnpLWUOSu0LZ"}, {"slug": "CICqwQdc1Xnn7epI", "url": "zjKFyHJOELolYSmQ"}, {"slug": "eJFwkUBetKirjYh6", "url": "8sSdbtbmJDQTk9xg"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["RHPsDmBZxm1FGvPu", "PariE60NxRMTRYjR", "ueY3oD8Rvk50UKBy"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'gbALKIQR7VE2yAxf' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '0bqyiOwRDIWmoiRC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'tYMo4Vv8kCTBAZsa' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"OSGElFGU6eEJVR59": {}, "EgIVSwaq63skTjti": {}, "5YSUjyMW7Fr8EHC8": {}}, "defaultLanguage": "LqovA5npjPFCykmT", "description": {"lmH830XtubiFI5Mj": "MjD8WEaCNNWCbjSu", "5ZVs7Sk1TN9xRZlo": "pq7sw55eMRYIlQRC", "eJEXi9La10IFqPQ6": "qH6MFkm6ofhKK7mN"}, "global": true, "goalValue": 0.31505431803826256, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "L06StIp9ir1PKYV2", "url": "VOFgoaN78IqWrpwU"}, {"slug": "bJ4xzlNJ4L0RyUUR", "url": "KfLaeBuo4Fq9mr4c"}, {"slug": "mTKffKxIBJGl7NqS", "url": "HiHgExlcQ2cpKcWY"}], "name": {"uRdaElp4WYsm7c4z": "JDmcky7XuorEl98H", "6TbZac0tm2A3WzLo": "NmRCAXpEdX7iT5M5", "HcadlQHEHjivWkk0": "OQzffNTq7BBGsxoe"}, "statCode": "jb2zADTov5hWLyM2", "tags": ["ZL0XLqWh6eyIGAgb", "AVaVeTIoKiueQUtI", "bLI1p2u3Gy8hm3vy"], "unlockedIcons": [{"slug": "YYhQwCBV5VbniA6q", "url": "ok6e4YNrJlHS23LM"}, {"slug": "sCbh6vJEhxqyasPJ", "url": "hsppoN2P05UEUaPJ"}, {"slug": "FWXrlaPd9dxvBwKA", "url": "OeGJKM1Si6BiqUe0"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '74GB2vE91s7KChdV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'sv9xpDtdhZCZC2su' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 40}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '4fItaMfJABKqP9WB' \
    --limit '47' \
    --offset '49' \
    --sortBy 'XQzrgQff62mmvmFD' \
    --status 'VndHTw859OnoCbHI' \
    --tags '["y8qzCdhkmWl5p4ga", "rW1Lj4RrLbSOtRcx", "iSK4gOvkGPiylOzN"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'seWRws8TDayxkTsf' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '100' \
    --sortBy '9RReATCxJVr2pX9a' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'VUiqX4T0r4ejFESz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --name '3R5TAzFi37WEXHaw' \
    --offset '83' \
    --sortBy 'WTaUU9b6aAmXb80i' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'liGmNZPot6QRpx5Y' \
    --limit '26' \
    --offset '19' \
    --preferUnlocked 'false' \
    --sortBy '1P4OyiCYWMPw6vTY' \
    --tags '["XX7JLX77HwOtRPSe", "Q4W3JkM9kbXcUwH1", "uk59pgKHdjeDZ5NI"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'KejLB1uWVjMNdYCx' \
    --namespace $AB_NAMESPACE \
    --userId 'akKw6N64MOnvNG6s' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'yvz3EBETTDsYmpFE' \
    --namespace $AB_NAMESPACE \
    --userId 'VbDlmuRpXFX2dvLJ' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'SvLUoVsQ3tS9kxXh' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'RKJWxI7P4LRkW7VN' \
    --achievementCodes 'GS2OyBJhCiXzOkYF' \
    --limit '89' \
    --offset '40' \
    --sortBy 'pHI6l8CEoZLpJWK8' \
    --tags '["fHBR1dnVlx3QHeXk", "xpsdKbo12qAr04U8", "JriXofTYqkRZmOQS"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '59' \
    --offset '6' \
    --sortBy 'updatedAt:desc' \
    --tags '["f4AvmHXBkQsJ8OtL", "vrg1vXAU7jpEKdOv", "crx5jVhkvsWIHa5t"]' \
    --language 'LvrzFo7eBdrZwlr1' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'VfL1FKxU2FKUdIMi' \
    --namespace $AB_NAMESPACE \
    --language '4sZPkj8YMGkX5VD9' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'm74RGWxgDIaSYQwO' \
    --limit '32' \
    --offset '97' \
    --sortBy 'jMUmcVon240TMWwi' \
    --status 'z28vxn1LXQHDUHPu' \
    --tags '["rjn2wsg3dtFMLZ09", "c0W88rB57OQIocqW", "OVDxqKnEIRSlBwUo"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'BRqZO4tArxZEDgP9' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '18' \
    --sortBy '4SpCq7xHTiKddX5x' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'DiBmzfp7UTezkoNU' \
    --offset '82' \
    --sortBy '7pK0qm4ChnU1iz7z' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'a0gyWe3O645cN7Om' \
    --limit '55' \
    --offset '16' \
    --preferUnlocked 'false' \
    --sortBy 'pmdEjJM7bV2VO9lz' \
    --tags '["u99igo4fLiDMOFRo", "tWHOqKH9YpIg9Qv0", "ByfcDr0hb2SlCKnF"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'p9AzE4WzxFHQRgqk' \
    --namespace $AB_NAMESPACE \
    --userId 'Sb0FbWDb7OnBAJXA' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'a0MtpPyGqbBz7XEk' \
    --achievementCodes 'cNLIfZF5cUR11ZbI' \
    --limit '67' \
    --offset '43' \
    --sortBy 'Xu1twKbe6aCQm175' \
    --tags '["BNxojE8LzERgDKb8", "bY4yjmUn0R0YUtEF", "6LKxh7Ru4w294phz"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'q1seVKVa9OhpdAZ4' \
    --namespace $AB_NAMESPACE \
    --userId 'CU6NnA8nBGhSp1KG' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE