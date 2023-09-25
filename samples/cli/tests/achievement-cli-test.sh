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
    --limit '72' \
    --offset '99' \
    --sortBy 'listOrder:asc' \
    --tags '["a9jqKhnsUXLdytaA", "hha4tx04SO7G8WEn", "BOKihuMJz9gbqeRA"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "1nwTi3iaNk95qaU3", "customAttributes": {"4xDdiqxqlkFoFQR0": {}, "VrdkggquXpYg8LhB": {}, "fpEmQI8jW88JiPlf": {}}, "defaultLanguage": "KHqQOHq6BlWHbHoE", "description": {"3u1bg8itbwk4ccqX": "VLaQcIBpBXKhDOBG", "wXuN28uSnqgfh68R": "xnLPSibzd4ct78XA", "bmzGvPQzTUhBt6iH": "4VX0CWqZSrz7Rawc"}, "global": false, "goalValue": 0.580377895296531, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "gEmigsWT0ef9NfnZ", "url": "N6SE6geHPjZhvYhB"}, {"slug": "5XoU3L6r3Y0eFYNT", "url": "mUFnc2FiIVLjFOFL"}, {"slug": "CGJxM8bOJ41QJvuV", "url": "KCpHx3wzGZg4jkUd"}], "name": {"URAenQJv5bl29lqX": "PR7eAKZRskUNyM90", "kwOWJrowokLwye40": "Dz1Wv5mFTvHinSbY", "8Ks5ST2QABYXDkU9": "NWzV29eHRRMGV9Hp"}, "statCode": "UYt1f9llm9vVv0Bi", "tags": ["mezcfuX70jCmUcxR", "UCosrdpLNWNTlLcd", "1HD2K8FWSKLv88kj"], "unlockedIcons": [{"slug": "dMlnSjdj7FvheagC", "url": "M06Ooqrn1zFYxvLX"}, {"slug": "E6ZSj9yN5XzUDFGx", "url": "CHtlLCjZhFYsqxy7"}, {"slug": "MUd1UlZZj8MURrWm", "url": "vW8oq8EwelTUfyCd"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["l05FOcv4BIF0xmI5", "gx90KA8EGMFmIMsU", "Grk1hbXX7Zy2G5r2"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'XzYqcrzFYa3YJL1w' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'i1vxjRpe4s8otIDC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'tOVcvsKyMI0Y9rtd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"x8d5RsTJbkFhap5d": {}, "UAruA4Nxdu1XFFV6": {}, "mMeHGRczPtmmzeTy": {}}, "defaultLanguage": "uuujFVLnyuPY0OjX", "description": {"JS2I5Puy005MxEur": "A0Vq9GKTYxUUC3Q5", "Bb6bO6GlBlwQcgxo": "Fou7p3LZ43YlvWTV", "OgkZpHyDBaOAFeL3": "BZ7gdhhcfWTLpOgc"}, "global": false, "goalValue": 0.19971016541764064, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "3EOSotVKV9pl5SVA", "url": "lFCIrbl4ieuKQ1WJ"}, {"slug": "883ibG8c6Xu1Sz6y", "url": "XSaMafckRITEcbjF"}, {"slug": "7ZuctL8otTahFAKe", "url": "bCY7glczRaz9USpX"}], "name": {"zVSjGjf2yiAHU0NO": "Pnf7JOCKV2ULWmtD", "sjAOjOEaVSRDZ0LP": "QjxUxfgcq5OQErNv", "zR6ojaV7GUxLLLwp": "G7AdoOst3Sp1lCDb"}, "statCode": "tHELfFssl8Wk7mOo", "tags": ["YQxxZf668Qzg7a7c", "kxeUHCaFPVXnZ1QV", "F0oMPbOsbaBLZDOK"], "unlockedIcons": [{"slug": "LP8w4qU8ANX6EbZS", "url": "7WfQkiBd1s6oh3GO"}, {"slug": "W0WRfZeIkmXEYTfL", "url": "Ewn7lnhAEn3SRHvq"}, {"slug": "qWC4HrW6i5lF5bAM", "url": "7y5Yywek3XnmhnW8"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'c48AHoeZtbuhMkvn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'RxW0tZTWPsJFgsUc' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 32}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'zwKFheWSgnPpgN9b' \
    --limit '48' \
    --offset '41' \
    --sortBy '1BSy1bWT15QMDgOw' \
    --status '2a5zS2YcpSpLmCJR' \
    --tags '["8V1gz2LUQBgkTLC9", "zabXXcIIYmhBsTdK", "xMGpW5uFobcOGONS"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'HfNFOh85tpqX12dJ' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '98' \
    --sortBy 'o1AdDANMlfD2lMkL' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'rDcbUnrWJPaLHNhm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --name '0RHZ9YDuTm1bbWoa' \
    --offset '99' \
    --sortBy 'qRUI6BeaIsd62bhs' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'J4LxdJC7QQIJCyO3' \
    --limit '33' \
    --offset '96' \
    --preferUnlocked 'true' \
    --sortBy 'eWQERnyhgC8nwqjI' \
    --tags '["auqyLfCutM3hiIO8", "fWeo7w3iNcPZ2qfT", "1boS3vCNs2cUECr1"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'tAseGDKCIsICbGbV' \
    --namespace $AB_NAMESPACE \
    --userId '7vrcpxNOD0zS9fz1' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'R9urmZw4mCvC8u90' \
    --namespace $AB_NAMESPACE \
    --userId 'uG5Utigy03fbFkuk' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'MZWVle8e7hnY10PT' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'ohik5yAWFRMp0xmx' \
    --achievementCodes 'jxkmSGvkGEuWEvvp' \
    --limit '21' \
    --offset '0' \
    --sortBy 'vM4uZ2C2emkIyWnZ' \
    --tags '["IiBhPYfUZqxlXkPs", "yFA1jAehBjJYySsu", "qXyfhJNUZIyDWtx2"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '92' \
    --offset '58' \
    --sortBy 'createdAt:desc' \
    --tags '["VabHMkSpTir6GA6k", "pc3PEMLioJ6QCEWs", "pmyS1foZ7TYZS6FZ"]' \
    --language 'N2EEfeFNEMVeYBWr' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'Fv4aikdiDgWz71BR' \
    --namespace $AB_NAMESPACE \
    --language 'DC6Dp0eUnZHAcmMS' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '2DcmUUSbuVMxaG1b' \
    --limit '32' \
    --offset '1' \
    --sortBy 'qqNj8V8L5XW9Ki6U' \
    --status 'Wq4GpSXkWRlOPwf3' \
    --tags '["lM5YKpczBVmiACzJ", "SjN3j47oqOElv7Pb", "PssCwXy3dlaOYUDM"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 't5dI3t4WoSMTFGcX' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '13' \
    --sortBy 'lVaJqnj1J5ZWWAta' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --name 'zX5tqdr9BtCqDis0' \
    --offset '58' \
    --sortBy 'IFQggXqwTB3lktie' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'GKmD1yWRoX2VRs70' \
    --limit '95' \
    --offset '96' \
    --preferUnlocked 'false' \
    --sortBy 'x9ZV937SiqMwI9Qz' \
    --tags '["L4JcpeOAY9yeZbZx", "PCB72lZSUOqZXk4w", "4FMXOgGHA2v0LgrR"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '8VvMIvzQtFSNuGpn' \
    --namespace $AB_NAMESPACE \
    --userId 'Nqj2O0cszcZ4mmfg' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'Ma3U56fsc3RgVBVU' \
    --achievementCodes 'uGM3D3dIkXA4iXPx' \
    --limit '31' \
    --offset '58' \
    --sortBy 'nr37knMiGJCsRqW7' \
    --tags '["qU6Dk8Y0AlbylUaI", "izIQr03tc63NUPr9", "hRBtbnGazSDHsled"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'iV9d8KZOhSHMJCwE' \
    --namespace $AB_NAMESPACE \
    --userId 'oG2E8KQj0hKgL32r' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE