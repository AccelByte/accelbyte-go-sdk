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
echo "1..44"

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

#- 2 QuerySeasons
samples/cli/sample-apps Seasonpass querySeasons \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '39' \
    --status '["PUBLISHED", "PUBLISHED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "CA9kPI6L", "defaultRequiredExp": 69, "draftStoreId": "rkq6Dc09", "end": "1977-12-28T00:00:00Z", "excessStrategy": {"currency": "IW0Oaiw9", "method": "NONE", "percentPerExp": 36}, "images": [{"as": "0D7eHpzS", "caption": "n3ZPUdc0", "height": 35, "imageUrl": "Ra62WopB", "smallImageUrl": "JHPtcDs8", "width": 2}, {"as": "6I56IaRD", "caption": "BXxyaNoM", "height": 89, "imageUrl": "bQ1g7qbP", "smallImageUrl": "ngUNB1vR", "width": 29}, {"as": "xwElFHHd", "caption": "gs21Jub7", "height": 98, "imageUrl": "CUkNmKJf", "smallImageUrl": "h5pUkHOD", "width": 32}], "localizations": {"FcDtgOjc": {"description": "hIua5tWE", "title": "IC32ogW7"}, "olvbTgrh": {"description": "RTcPiSuL", "title": "0Sly6XM4"}, "OI18mAQL": {"description": "nzjMf8GZ", "title": "2WBZqxYG"}}, "name": "3aREAu2D", "start": "1974-12-17T00:00:00Z", "tierItemId": "T5FvdiRi"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateSeason' test.out

#- 4 GetCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'GetCurrentSeason' test.out

#- 5 BulkGetUserSeasonProgression
samples/cli/sample-apps Seasonpass bulkGetUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lZ7oFgx4", "c8OumKtP", "DKJDXn7Z"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4U68su8X' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fqlqNiTv' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'B6SdAdIh' \
    --body '{"autoClaim": true, "defaultLanguage": "DrwoZ5Me", "defaultRequiredExp": 4, "draftStoreId": "Xpc1C8Xf", "end": "1982-01-03T00:00:00Z", "excessStrategy": {"currency": "HuKeb9l3", "method": "NONE", "percentPerExp": 67}, "images": [{"as": "mXhzkzWk", "caption": "FeZSoEAc", "height": 57, "imageUrl": "0P7MIIR7", "smallImageUrl": "CkyF6C7d", "width": 41}, {"as": "miTqpyhP", "caption": "FdxLzFQN", "height": 23, "imageUrl": "5MYzYiKW", "smallImageUrl": "e5dNRljv", "width": 66}, {"as": "IPrDQQRg", "caption": "at0SevkL", "height": 66, "imageUrl": "YnIuMBva", "smallImageUrl": "O35llzQR", "width": 0}], "localizations": {"bsx5w8hq": {"description": "UI06UpOX", "title": "GSLmCVuH"}, "OPlLlkvR": {"description": "8sKgnuRk", "title": "gghGoYup"}, "D391C2qt": {"description": "PYokahFj", "title": "kQsfCaTm"}}, "name": "t1d67FXG", "start": "1976-11-07T00:00:00Z", "tierItemId": "s9Q0mPVo"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '3twu0Mes' \
    --body '{"end": "1994-10-10T00:00:00Z", "name": "Cf9x4rt6", "start": "1998-03-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'laRlxfcj' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'HfYakUCT' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'qGkE7wcW' \
    --body '{"autoEnroll": false, "code": "aLqYSYWy", "displayOrder": 40, "images": [{"as": "AXQ0yYoN", "caption": "RKd3IL5T", "height": 54, "imageUrl": "GiHPllG4", "smallImageUrl": "cYEzfTD1", "width": 6}, {"as": "Bm3MqHcU", "caption": "mLZZbSqb", "height": 41, "imageUrl": "RwNmn9Hr", "smallImageUrl": "NQy4uZAA", "width": 18}, {"as": "tIuS5S5X", "caption": "UdjsoqwG", "height": 49, "imageUrl": "EdscKHPE", "smallImageUrl": "qgA8yu7V", "width": 22}], "localizations": {"Tr1DmrhZ": {"description": "v15T7quI", "title": "OvBMcaYm"}, "vCkGZ5dA": {"description": "gqxpBFma", "title": "Loxozr6w"}, "fNPX2bOI": {"description": "tRMvqtlB", "title": "2jJCSQT2"}}, "passItemId": "79ZZPYGu"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '0rdlgdWy' \
    --namespace $AB_NAMESPACE \
    --seasonId 'OtXi3cho' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'QrpOsDBU' \
    --namespace $AB_NAMESPACE \
    --seasonId '5SepjChB' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '3V0v52Dl' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ym6puQ23' \
    --body '{"autoEnroll": true, "displayOrder": 66, "images": [{"as": "oJ8aeCna", "caption": "LpUKp44Y", "height": 96, "imageUrl": "6foWvXa3", "smallImageUrl": "bMrXsDr6", "width": 22}, {"as": "oyIPa8ZR", "caption": "rvjj7il3", "height": 4, "imageUrl": "MXbN9oCM", "smallImageUrl": "Nqq98SjT", "width": 45}, {"as": "IxjUkl53", "caption": "5X3ateEK", "height": 60, "imageUrl": "UC9b6i5l", "smallImageUrl": "ZC9xv32e", "width": 30}], "localizations": {"c5csSovo": {"description": "qsZNBdte", "title": "9NDUPVJf"}, "6c2Z0QZx": {"description": "fgPubTDI", "title": "HrvqAThu"}, "wjRHpKKT": {"description": "lmVr9Xuo", "title": "JbRFQSKV"}}, "passItemId": "PHbn4Xxt"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'u7LQRENj' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'EEztx1Ws' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'SiZqan0n' \
    --q 'SBJroav9' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '1GXlvPG6' \
    --body '{"code": "bFYReVHQ", "currency": {"currencyCode": "ipcCx9Zw", "namespace": "5D2L7vIY"}, "image": {"as": "hGGSyEW4", "caption": "ZJJ42d3P", "height": 57, "imageUrl": "hgo5QB65", "smallImageUrl": "lSAiYnNj", "width": 22}, "itemId": "xqMrj3oZ", "quantity": 22, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '3QXcKMDY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DDxHSZjt' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'qXyJ58f7' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Gc26SaiG' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'VkydwYWQ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'G26yUZNm' \
    --body '{"currency": {"currencyCode": "TBcvrbYC", "namespace": "wZtxFHyP"}, "image": {"as": "LtI8ilby", "caption": "DPUIj88c", "height": 10, "imageUrl": "L4pp2ncY", "smallImageUrl": "AHdNzDme", "width": 70}, "itemId": "v9gsR5cJ", "nullFields": ["oRDFuuuy", "Sj29a9LJ", "cHm3SZLx"], "quantity": 63, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'oVk8T3Gp' \
    --limit '53' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'nkCmBUqg' \
    --body '{"index": 96, "quantity": 91, "tier": {"requiredExp": 38, "rewards": {"CnqntX9y": ["1aZSWMiV", "i10sG6vx", "kfUcmqRR"], "bceJ5i0E": ["eDxOgBnh", "hqElIaDm", "l48wdNFL"], "Tm5T50x9": ["WT0GfH2r", "tOa4EXsX", "zOXQAk4m"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'qrxzTtuL' \
    --namespace $AB_NAMESPACE \
    --seasonId 'l4XlbGL8' \
    --body '{"requiredExp": 87, "rewards": {"iDandpGT": ["2t24aOMh", "5eC3IHeH", "SKLCa3xr"], "eNDUWehw": ["H3q31A80", "6DJgas4b", "6z3LNUj7"], "fdgLA84Z": ["8YYk6QEg", "JjBbEDoN", "f3n0hEoR"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'CAcf80zf' \
    --namespace $AB_NAMESPACE \
    --seasonId 'FyabWAgI' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'UXiI07A6' \
    --namespace $AB_NAMESPACE \
    --seasonId '8eaqC2J9' \
    --body '{"newIndex": 18}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'y9XzjjI5' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'NaKDUL3s' \
    --limit '0' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '13lk1dQB' \
    --body '{"exp": 68, "source": "PAID_FOR", "tags": ["O86IlBhn", "etU4RwTq", "UXlTDBzO"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'uYsaZA2y' \
    --body '{"passCode": "yd4mbqoO", "passItemId": "fADMMAXF"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'aY9eKa69' \
    --passCodes '["9bRVhyaK", "wwrAP2aM", "lu7WtjCt"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'oYetOO84' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '7g8OudOf' \
    --body '{"passItemId": "jnCuHZ3c", "tierItemCount": 50, "tierItemId": "6IjGa23Y"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'vYmmDg7V' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'YPXIuvUY' \
    --body '{"count": 93, "source": "SWEAT", "tags": ["ereSvf96", "99mCEHTh", "UJkETAsS"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'p7gh4TeU' \
    --from 'TkOkAYfJ' \
    --limit '56' \
    --offset '38' \
    --seasonId '8AT9t4Tv' \
    --source 'SWEAT' \
    --tags '["QD3oD5fL", "Cr3OOlXV", "v8ZGF7uY"]' \
    --to 'nGzpipND' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'igNJma1M' \
    --seasonId 'bqqZtfNW' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ql4nmwAf' \
    --userId 't4gqkNNl' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'WkD9eOzi' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'YRFOn0jJ' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'LHC9Lxhv' \
    --body '{"passCode": "NXTwGBCt", "rewardCode": "ohLtl9Zu", "tierIndex": 15}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'G7qtPu64' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'yAtURKLR' \
    --userId 'kb738HGS' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE