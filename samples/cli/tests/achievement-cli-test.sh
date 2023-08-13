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
    --limit '3' \
    --offset '7' \
    --sortBy 'createdAt:desc' \
    --tags '["tFJz50LCSDBDzNl5", "uZZ8PIwG5vTEuUu3", "WPYxHRnG705VHFsR"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "3VfCS8NTFp2nifEm", "customAttributes": {"Icd5iaR74zDC2Yvj": {}, "3eyeo3kFBqkujV5i": {}, "1DxnLtDjz4pr0Qjo": {}}, "defaultLanguage": "regvgKg8XQ8nAH0s", "description": {"2oSYkl2Mz8tuGoMw": "DsEz2axpjBOuSqfm", "LtvdNvuURcgv6tPB": "sp17rtZ840oS7VRk", "sUdLgRaiB3mOnYeD": "HiIChdfPDW3CZss8"}, "global": true, "goalValue": 0.6084475618866736, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "31l7QPdEYTTr8U3H", "url": "4RVw6aLkNpVekGj5"}, {"slug": "BbN9PEC31DbHh8bn", "url": "D4KVLaWxd3WvK9dY"}, {"slug": "whyvAF90Pnsbh0SX", "url": "mAdlaQmF0jfmqDGU"}], "name": {"ZSJy1ZweVBpZISxm": "Clv8oyO2FNdrWAmB", "QfaveneDMMym0MPY": "oz7ulyTR6QPy2C29", "9dDIvCN953q6yQtR": "oLKJ7lTQ8vuj807z"}, "statCode": "8eDjaqw0Ygi8cEE7", "tags": ["4zV4prgjISf00ia9", "AVhclIu1wjwtGHbl", "v1L0VDfPawfNs52O"], "unlockedIcons": [{"slug": "bZHsOq6bDfQA5Acg", "url": "hxHjrnCw4Sq1WZvi"}, {"slug": "gJIzUDERQwRrhxSQ", "url": "NxK00P5RNWnI35Ex"}, {"slug": "cmPb40Smr6pH0xbF", "url": "B12yGC746wu8Vk0r"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["9KdJ4HKwRwdr8jWm", "QFmGu2k4qfdne9K4", "rS3bBrCG4SKViUj1"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '6PmdMMGauw9Q43ww' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'ASCmOYGYGlxkBG9i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'AYY4XiwnEFRLc5Nq' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"EAGJof53MB6JsEgg": {}, "uH3QvXr5v7ruoag4": {}, "KjiuD03FJRRR1DXF": {}}, "defaultLanguage": "EXFTklbVQkD0Mthd", "description": {"Fgpnsc5ZZGuvyznD": "NIhK4n4dn9h4W28X", "61zOd9OhETN3QdiN": "TCfnO0EIUYzznC3n", "wdTMq8gGLNwyFHGv": "j3UPhpQEgOLn2Ajh"}, "global": false, "goalValue": 0.2739914600997284, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "uYHRbqnrbd0uTYEl", "url": "nOxJUtnVJ9djbRmt"}, {"slug": "KrysRBYfOR6bfAh1", "url": "XBDjoP6MTLKoDFf3"}, {"slug": "YFeHSxNjXhte5WQx", "url": "p7vj7MXM89odVkEq"}], "name": {"VU30ebzv1CPj9PUA": "irqYuB2wPNttQiUg", "xTo9AkFbQX9nz2AH": "0NsO83ECmQIFVDwE", "zWSMWtxEXsfpyy0j": "1gN7GmzdUSqPRqc9"}, "statCode": "N5Q6QkkGq9fXHSYb", "tags": ["JqucGnDH9XZcREgH", "dAsVZuskMD4YtACn", "bMEPqJORPnubtWp0"], "unlockedIcons": [{"slug": "j7mUdE06fMdcyqHN", "url": "RoG85dV4VANwy4pa"}, {"slug": "jNtmunXRDzjA2wkE", "url": "VWZZCSB2PR4AnrhY"}, {"slug": "thgUygdH0QeLFtQ2", "url": "nKvGUWuroY3uybTD"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'S7h69jftkWcslmeU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'cQQoKGQZwGbNSpPx' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 56}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'PrQonrDuOxsG2Ewb' \
    --limit '1' \
    --offset '35' \
    --sortBy 'EH4F8kUlGJmeiS3l' \
    --status 'DtCeflXQ00jy85CF' \
    --tags '["OlZwXtpBUY16o3YJ", "fj9l9vlBN4lfRvXO", "zOB8PLoWOS5WXfO4"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode '4zq9n64mr6ZLGsX2' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '75' \
    --sortBy 'ykknfMJax6KRWx9Z' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'u8IhqajJTIApjxMY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --name 'Ly8ViMKPiSifncj5' \
    --offset '31' \
    --sortBy 'V1ui4NOY8b3Q4kot' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '4LH0gwTPfiwCVd6L' \
    --limit '49' \
    --offset '76' \
    --preferUnlocked 'true' \
    --sortBy 'EmqWit7WoQPKxDgS' \
    --tags '["bwciH7Y70l6NCriP", "QfMcPK8htsOjiJym", "x2UJYiWjWEMwL5Ra"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'IThXQaxvQWxwtGHv' \
    --namespace $AB_NAMESPACE \
    --userId 'NM3RgfR4qTSzupUK' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'qpz9MMETbzOorvZ5' \
    --namespace $AB_NAMESPACE \
    --userId 'ApxaRsvYH4jI5PJL' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'mnxvQUuVSqwZ4jA6' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'kN1uE2QUYWtY39e2' \
    --achievementCodes '9KQx8aqLaUiGeePU' \
    --limit '52' \
    --offset '31' \
    --sortBy 'ZDVvPC04n9UMDk7E' \
    --tags '["yHqfWUitCyxJJf6h", "gwf71E9ZH11aqdxV", "KEcbRVowsfftgQXl"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '25' \
    --offset '61' \
    --sortBy 'updatedAt:asc' \
    --tags '["6hA7KeLj9JFOTpxD", "8eACKX4YtRpSZFE3", "2BN0RF8MZ6SspoG5"]' \
    --language 'JECt2P7ZhrEvAuir' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'LtBHxVQkpjv2FDGo' \
    --namespace $AB_NAMESPACE \
    --language 'JkYQfdmSU9HQZuTI' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '6ScyyRqWYdXSw145' \
    --limit '77' \
    --offset '71' \
    --sortBy 'oaovsFsusHw9cwJO' \
    --status 'UsCp6ODltQ5inoUK' \
    --tags '["PSm40bBFJsswXC4v", "evOfLTFcdd2XnQ5t", "tjA2Cb6f1uEJY4CX"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode '61XCrdnfy9g6tpU4' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '95' \
    --sortBy 'KtKyFHBoAfyvRQbZ' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --name 'NorfZpMCzSav2sz5' \
    --offset '91' \
    --sortBy 'okygsEb2995syQ6j' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '9vgyMaIs8j5XJKnv' \
    --limit '13' \
    --offset '82' \
    --preferUnlocked 'false' \
    --sortBy 'PhFlt86nPFX8JxOJ' \
    --tags '["LuYV9xxfFzJfkzRb", "JpkzgfPPaZqH38Ck", "C3QkjVhRMvUvpL6A"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'Vi1ODLJcSHICzkvX' \
    --namespace $AB_NAMESPACE \
    --userId 'shImb6mMyUdf7sKK' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'yC2KJOdWVC3Nu0jV' \
    --achievementCodes 'zDpf6VCx13KyN2KE' \
    --limit '32' \
    --offset '12' \
    --sortBy 'ITHJuJOjfoqj24KY' \
    --tags '["lcv61OaNiU6pkI37", "eUCKu7fLp34GvqYY", "6654pK1AlHKtk6ia"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'A8RlsIXAnqFFfHnF' \
    --namespace $AB_NAMESPACE \
    --userId 'YtU27HgyNtiYjXAL' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE