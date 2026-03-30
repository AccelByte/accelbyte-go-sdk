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
echo "1..30"

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
    --limit '100' \
    --offset '79' \
    --sortBy 'createdAt' \
    --tags '["qeBGdAG2KaHvrZTJ", "hwxODqjCUkOfLYUB", "t9wGHLjTokRdQXFX"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "pkW7pkpuFLliE6Rg", "customAttributes": {"PBNGidRNti7zeclY": {}, "L2t3NbMpSlTk0LrU": {}, "qYwJ0pP8VDLBzf1M": {}}, "defaultLanguage": "jAab4U0jKW5CQ3Lq", "description": {"6msa4lTyuyUCrkCX": "t7VLWaKgkQEReDJj", "zcJb8i9xIWLfuFPz": "NgamUBMOe1AYI4Tg", "dU7wLlcOC6ERSKbI": "LJ4YUoGBF7arE8Zt"}, "global": false, "goalValue": 0.91736511322215, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "W4A8T76mtYId37Gu", "url": "hot4pefuBakDDFLM"}, {"slug": "iT47f85Sl59i0Hl5", "url": "Nfg0mN2ndMUIimxd"}, {"slug": "5isTjXFicYtHHT5D", "url": "LJzHHWtWgv45T0DF"}], "name": {"J8dTyk6p5klZzOzl": "5pzgXLts1c6Xs3sQ", "tb5eWScoCerwd66A": "0yxgguSdEhRyAO27", "XcmRlqpVOQcx6wje": "DfG0xrI184M6SCXl"}, "statCode": "Zo8G6pUQEIGIxXfB", "tags": ["Y1c6Gmol75MFTWVt", "5MzyhmlfLwU0kaEO", "fRYA4jDsZ1BdIVWx"], "unlockedIcons": [{"slug": "MdMpuDrIZf1wR9bC", "url": "6cb0tmS7eaKYNaCQ"}, {"slug": "r4f4IrZ0FvibLaSZ", "url": "Kx9c1aa9m0iYsRdc"}, {"slug": "o0bKrXXFUwmDa2nX", "url": "UOvKai1yYcUe92Qf"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["R29mE44CDaECOLKw", "AqMEgeLwvDFuZZv5", "hQwTet8VLSIxYdne"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '8YCk2CCBrEZsIlxy' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'EA5ZidoxX19dX0Xh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'u7259KQGsihEXtDD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"HKoW7Vt4QPWjET3M": {}, "hnJlGmxh8Tfif4LZ": {}, "JpOH1TeJVggFY5Jo": {}}, "defaultLanguage": "tJwkFyNzJfv5P8W6", "description": {"obPvasm1G4Mn5S4L": "AxCn6XfJJ5ETsQov", "ZmWPbfpuPKbwtWrI": "yN9eGmJxoTDMfDa4", "dzuYzqzJruOi43Yt": "VRgoba7zHAuCpydN"}, "global": false, "goalValue": 0.24859141148038033, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "BteejZqDvYR2mX1N", "url": "O9Osa4XPQSCpgrEd"}, {"slug": "0UDSF8tlPHlhRX6H", "url": "29C9FrjcYsWsWT2G"}, {"slug": "CMGXALbgNAMBS4t1", "url": "BFLnKfiJilbvvIH7"}], "name": {"EFT0QTuS2M2s6hYD": "x6AxJIybgkk4abQO", "eLJBTC9xg1GrySmL": "Tc1Fh69tMw7ujCNQ", "hNFbRAKalACy3b24": "fzYYGIkoR2Gcpvr7"}, "statCode": "GlGJ2Xv3GebefKZG", "tags": ["Y78B8okbCl7zfXNM", "oNLKPAmVOoUlUe7T", "iYHhJMRd3dveQjIy"], "unlockedIcons": [{"slug": "3aFQpGnKrX5XdVdX", "url": "hw5jL3sDiO4tdQ6p"}, {"slug": "eKW79tvMDKfY8HJb", "url": "4Bls3wZbOKIKRpfq"}, {"slug": "IlnLvR6NlVgwwIvn", "url": "qMjkZ1ZrGsivkcpT"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'TG2kJ5pWe65BXJ5M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'uyBTasBtyz9u9zYz' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 39}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ynv0gMTX4fLSjgMh' \
    --limit '95' \
    --offset '96' \
    --sortBy 'createdAt:asc' \
    --status 'wQHuwo4zJAslzNEk' \
    --tags '["ZBQ2moAArFuYEHii", "Fg4JrsgM9ITI2Vtb", "pYimEt0Fa2wjaH2q"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'rXHvwqTkVWc1Tk7s' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '14' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'jJK1XOr5cu5fFgzo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "beV6bA7BTEWid1rX", "eventData": {"eventName": "wKYqSiUCClxHPHi8", "properties": {"ZSkA7ouwlqshCXD5": {}, "eyfzE0Hn68gT5Akh": {}, "uUMQFWn9sNkrcKxa": {}}}, "eventId": "DKx3rpVyWKnbuuNW", "version": "ryJoCR5C4fcyosVd"}, {"dateTime": "k1uCIsWRnXnZlfmv", "eventData": {"eventName": "55Nox6Ly8dOAbdpn", "properties": {"1hcSHXCF46n0FxYM": {}, "sOFcmEZq6XkmZvYi": {}, "SE27tbPzHtldJVB4": {}}}, "eventId": "RzhpucxOadydPCm2", "version": "56ae1YgJOVjD49Vw"}, {"dateTime": "eJmznHzKqxNlaAF0", "eventData": {"eventName": "d6sk9o2bvKrWK1EV", "properties": {"Em13jxQdNBjM8SJ1": {}, "aPn4xX9QmxkAGpET": {}, "xyKK8wvGCVHn2q5Z": {}}}, "eventId": "z0ongXxmdAq41vrt", "version": "LOMcnYPS11RfrTZJ"}], "thirdPartyUserId": "9zopsF1WhMBv382n", "userId": "PLTxNsHyGwwBzQYL"}, {"events": [{"dateTime": "FGezkxhj9SXoGCLq", "eventData": {"eventName": "tLHQTwuqmEKVrnpR", "properties": {"nC6Hu8EKY7swMCdK": {}, "APAkHLUnOV9gyzKU": {}, "ijFShCDZGmTGtPO9": {}}}, "eventId": "lqw7BHR026ItfQSx", "version": "bxLItDva1Eg6W1vh"}, {"dateTime": "r6ZeGn8wxnaYqlzm", "eventData": {"eventName": "6jhdGBKfvr2QY0ub", "properties": {"dBSq81tdLebMXgmq": {}, "ASc4TvXb134QJUwL": {}, "mJtoc6YuNBirCgIl": {}}}, "eventId": "zFoyToElL6rk5lfe", "version": "d35bVGqCfR708vck"}, {"dateTime": "h3wuulcHnMJe45vX", "eventData": {"eventName": "Ps2UdufVrAvhzoKW", "properties": {"wbGnhg8OnwNm7ReW": {}, "DgfiEXBpEKpsIS8D": {}, "JqT1I3pSaZKSC1I4": {}}}, "eventId": "OKFTrGS6nFgK90um", "version": "ZxyrvcKyQiXMx6Nf"}], "thirdPartyUserId": "Z7tFTU2Ts9OztDYh", "userId": "T690YAc5t71QFCGd"}, {"events": [{"dateTime": "qgdN60cGwtZJEBmX", "eventData": {"eventName": "NVTDQHtukcisZtEx", "properties": {"lKRjmAblt8qBYdbm": {}, "YYFCejyCr3dR5XPD": {}, "bT9fkaLBfCh9KXSL": {}}}, "eventId": "m0olf0DHr2ERThPx", "version": "YB8JSHq1YoGpt66M"}, {"dateTime": "PmYspr9di0hx34Cr", "eventData": {"eventName": "3EH8p7tjGpP5XNez", "properties": {"lHRWivhYFc1p1vkh": {}, "N4PpdKoZfcrVdDDl": {}, "XHaXQT2omQSPCqUX": {}}}, "eventId": "cJYtJ3TKKTwb3nWq", "version": "SR5XMjV9rt7vSiwd"}, {"dateTime": "OuQfmrfSvQTlZLii", "eventData": {"eventName": "VE5EYwBGrOHRBo5a", "properties": {"oPgj956kICtJfr9j": {}, "3puHPIovQjC7QaIO": {}, "e1FWAHEsjURVka16": {}}}, "eventId": "BtRwLfsEeqJkXbqK", "version": "ZChFbgKbUo26PuZG"}], "thirdPartyUserId": "IMzaY8rjq6GJS5G9", "userId": "08GjJLtNvffTAKX3"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --name 'ilZlqcKNWDLVHRMW' \
    --offset '2' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'IEkTmgcf8qntMUUp' \
    --limit '15' \
    --offset '37' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt' \
    --tags '["Ws42vJzqAeKFmNP1", "0zcSy5LXM1m90GCm", "V0iGq0aigsCmftaa"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'qRisFSflsEfqueuL' \
    --body '{"achievementCodes": ["69RBaNQ1wg5RIVrc", "DnH8uynTwMTDGStI", "dnzfdosZYgyyzpqE"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'IN7E5ttbtJjkQtxG' \
    --namespace $AB_NAMESPACE \
    --userId 'WK7Cmmhe66pprnaU' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'E3al2DgnmkovPobm' \
    --namespace $AB_NAMESPACE \
    --userId '2pHRJ013xgIRvaAS' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'hKfgKUzsgW8LglbT' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'B7kK8pxfMgJCRnUC' \
    --achievementCodes 'fapKrvTEj0fN6Pe5' \
    --limit '88' \
    --offset '2' \
    --sortBy 'contributedValue' \
    --tags '["oM8vqQStUTusd28w", "H5ARJJtHfh8fnKlR", "6GHdMOpLcyWl6Tjr"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '5' \
    --offset '52' \
    --sortBy 'updatedAt:asc' \
    --tags '["murBBQCHfguF4jJE", "My5gR7D3MXkq5nww", "mpYCuSWpXRyajUCg"]' \
    --language '1eQ32FYtFJjpiNzJ' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'K3f8S9dD9DgLkRD5' \
    --namespace $AB_NAMESPACE \
    --language 'UaMEQ87VRF09WaUz' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'kaICenEwQHhdbUcM' \
    --limit '100' \
    --offset '85' \
    --sortBy 'createdAt' \
    --status 'hsBSP0Or00ddbI8G' \
    --tags '["5oiWH5h1RU49suJh", "bNt9y7GpECTAVhJv", "Ybb8VJOGQtSKbCGP"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'Om7pDjcXHDirXjjv' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '59' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --name 'cXzjkHKua4L2cdsC' \
    --offset '17' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'gK2aJmFeIK5rjFVi' \
    --limit '63' \
    --offset '96' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt:asc' \
    --tags '["j1L30rRQviSSe2zR", "MxNrFF6HuBT9fEdN", "uo9w0TEcYwl9CaFh"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'kWKLfOq3xcNMJNkE' \
    --body '{"achievementCodes": ["dbkML6SPiqLQurfp", "LTKhgyLdZYbcXX7O", "1pSYlAY7vFz3j7c7"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'k4jdGYjWAB1cZv1P' \
    --namespace $AB_NAMESPACE \
    --userId 'XAbV73s7oqXsAwzd' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'QAdCQOiyIGs25KSg' \
    --achievementCodes 'UofDnz6yIh9k6oxx' \
    --limit '86' \
    --offset '91' \
    --sortBy 'contributedValue:asc' \
    --tags '["wtDQKaRA2blVt5UC", "kTpbXWZZYFTDMZwP", "ik78BKGVWbEPSLC6"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '7EYC6Q8Ssrr19LNE' \
    --namespace $AB_NAMESPACE \
    --userId 'XxPj3f5vfrbvxVAc' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE