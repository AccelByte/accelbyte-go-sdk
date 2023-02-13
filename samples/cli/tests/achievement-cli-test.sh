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
echo "1..21"

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
    --limit '27' \
    --offset '71' \
    --sortBy 'updatedAt' \
    --tags '["CcWLeaw4", "lUtg4l0G", "TeYfndbs"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "0F2Ksbfc", "defaultLanguage": "dcJR1P7n", "description": {"21BoLrov": "cPkJBO0a", "QTnBdJfp": "UpYyUSat", "eZW6E67A": "6fUAtD2z"}, "global": false, "goalValue": 0.58942645175282, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "4XghSpne", "url": "4D4yT2mK"}, {"slug": "3FwR5AMl", "url": "FPGi2qpC"}, {"slug": "U5DQ9GNY", "url": "ghpEpt9F"}], "name": {"FGbZlbdH": "CKbGG72u", "B5p2O9dt": "igkQfHkO", "ixm1LRfn": "jQP3ANEL"}, "statCode": "FTJmPMez", "tags": ["Q9DCqVP4", "DDuFmig0", "VFPCEocP"], "unlockedIcons": [{"slug": "4fhVoDfI", "url": "ggNUqhTy"}, {"slug": "d7LBcMXq", "url": "TCDkxnLX"}, {"slug": "aa9hjskX", "url": "b4S2G6Zy"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["1QtkBTHI", "gYr4FH8b", "eaDzJsZT"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'GHQMFDT1' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'CfwQcsRL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'uQop88vL' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "cQIrRyIo", "description": {"YYtrhxk5": "8LflYNI9", "xrqfl3E2": "pTtj0OZ6", "IpMYp7mM": "FbSTieWF"}, "goalValue": 0.6084479184086814, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "hBiOrcQz", "url": "3iRvxn58"}, {"slug": "R4iLDw4W", "url": "zyrLbjzP"}, {"slug": "jh0bcail", "url": "2gvJfO0X"}], "name": {"siLS8i6y": "7h3LQtBw", "HJfrps3v": "1T2yrsAb", "Jyql2A3b": "WnShsHsM"}, "statCode": "59QagEpv", "tags": ["aopm7ksy", "fnYYIjTf", "BAtS15Tr"], "unlockedIcons": [{"slug": "4MfGaSVt", "url": "Ijto83lf"}, {"slug": "Bcg9bwzY", "url": "t5vm8Zfn"}, {"slug": "ff5mIn0C", "url": "pTfYmKJI"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'eghTU281' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'hAuPQeEt' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 53}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --name 'v8iz34Cp' \
    --offset '33' \
    --sortBy 'kBaV4aOg' \
    > test.out 2>&1
eval_tap $? 10 'AdminListTags' test.out

#- 11 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'hjqXfkMS' \
    --limit '72' \
    --offset '2' \
    --preferUnlocked 'true' \
    --sortBy 'anISKK9H' \
    --tags '["VxRdv3rl", "PKqARDcf", "k7cN459z"]' \
    > test.out 2>&1
eval_tap $? 11 'AdminListUserAchievements' test.out

#- 12 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'OidcGtA5' \
    --namespace $AB_NAMESPACE \
    --userId 'R3DKCLP2' \
    > test.out 2>&1
eval_tap $? 12 'AdminResetAchievement' test.out

#- 13 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'zyc3oTU4' \
    --namespace $AB_NAMESPACE \
    --userId 'DlInpKM2' \
    > test.out 2>&1
eval_tap $? 13 'AdminUnlockAchievement' test.out

#- 14 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'NFGyTeKz' \
    > test.out 2>&1
eval_tap $? 14 'AdminAnonymizeUserAchievement' test.out

#- 15 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '20' \
    --offset '77' \
    --sortBy 'listOrder:desc' \
    --tags '["ueu9gA3l", "gZyTsTNf", "d0f1Dagu"]' \
    --language 'bHwBjU1D' \
    > test.out 2>&1
eval_tap $? 15 'PublicListAchievements' test.out

#- 16 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'zJnDNZLu' \
    --namespace $AB_NAMESPACE \
    --language 'JMmUiaNH' \
    > test.out 2>&1
eval_tap $? 16 'PublicGetAchievement' test.out

#- 17 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCode 'yUZEoWVG' \
    --limit '87' \
    --offset '76' \
    --sortBy 'cvgX5F48' \
    --status 'FNKp185H' \
    > test.out 2>&1
eval_tap $? 17 'PublicListGlobalAchievements' test.out

#- 18 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --name 'XU7yAZHe' \
    --offset '71' \
    --sortBy 'Dn1FZBik' \
    > test.out 2>&1
eval_tap $? 18 'PublicListTags' test.out

#- 19 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'iSv9TWyw' \
    --limit '15' \
    --offset '76' \
    --preferUnlocked 'false' \
    --sortBy '4cKklaFN' \
    --tags '["aL4hfGBx", "sgktBeyx", "mjgz6mpO"]' \
    > test.out 2>&1
eval_tap $? 19 'PublicListUserAchievements' test.out

#- 20 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '7rRd8l1q' \
    --namespace $AB_NAMESPACE \
    --userId 'K4uYtiGf' \
    > test.out 2>&1
eval_tap $? 20 'PublicUnlockAchievement' test.out

#- 21 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'ca9qrcO8' \
    --namespace $AB_NAMESPACE \
    --userId 'pvMWtiWQ' \
    > test.out 2>&1
eval_tap $? 21 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE