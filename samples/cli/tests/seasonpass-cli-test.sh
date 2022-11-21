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
    --limit '80' \
    --offset '54' \
    --status '["RETIRED", "DRAFT", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "XbmK0McA", "defaultRequiredExp": 43, "draftStoreId": "BW7rZC8e", "end": "1994-05-27T00:00:00Z", "excessStrategy": {"currency": "s6oNe5em", "method": "NONE", "percentPerExp": 74}, "images": [{"as": "UbV94D4X", "caption": "MrvnJ8P8", "height": 36, "imageUrl": "q0AVLvkp", "smallImageUrl": "bi0I5NM1", "width": 19}, {"as": "FVT1zDi0", "caption": "mfGn4cGP", "height": 31, "imageUrl": "D70Msfd1", "smallImageUrl": "iEUqH5AK", "width": 55}, {"as": "yB5ashBt", "caption": "O6JRDAaL", "height": 39, "imageUrl": "ezUrETyw", "smallImageUrl": "jvcHJ1Yb", "width": 55}], "localizations": {"glHkhFN5": {"description": "KSgxlaF9", "title": "qxaczsL1"}, "s5dugvBG": {"description": "bpjSF2w5", "title": "amhWVKXE"}, "pFlppP0n": {"description": "hKvdDA5x", "title": "OFXyQrFD"}}, "name": "s1qJPhKN", "start": "1971-11-07T00:00:00Z", "tierItemId": "kYtbp38R"}' \
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
    --body '{"userIds": ["F1nqLi6v", "bScknMkN", "UBAkKw8R"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fdxy4RXx' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PHYRTPSU' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '3JBaWDiY' \
    --body '{"autoClaim": false, "defaultLanguage": "DfBd4FIa", "defaultRequiredExp": 56, "draftStoreId": "rrH7uTOO", "end": "1995-04-28T00:00:00Z", "excessStrategy": {"currency": "V8LMc2yG", "method": "CURRENCY", "percentPerExp": 5}, "images": [{"as": "kdgBTR8q", "caption": "S3Zu34nm", "height": 66, "imageUrl": "dJbgMrpV", "smallImageUrl": "jZwLtGPU", "width": 38}, {"as": "IOd4DsoY", "caption": "ed567trJ", "height": 27, "imageUrl": "DjYNOgwW", "smallImageUrl": "5BRjkaBh", "width": 50}, {"as": "72LXaefb", "caption": "Afq72HbY", "height": 38, "imageUrl": "Y1LUi3k8", "smallImageUrl": "2Laa10hN", "width": 90}], "localizations": {"kGBkGzHS": {"description": "yeYalP9H", "title": "5YqbitJ6"}, "rRNQFBp4": {"description": "57QXIYIo", "title": "Yds77Cre"}, "nFIPlFdf": {"description": "ga2Y2UT2", "title": "7hXPVQIf"}}, "name": "7Fs0R6mc", "start": "1998-11-20T00:00:00Z", "tierItemId": "rdsjtcdR"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'wh8jygrm' \
    --body '{"end": "1999-03-12T00:00:00Z", "name": "YU8rHKng", "start": "1988-05-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nGyc1m3m' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Xupo0dSI' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'EOc02A1H' \
    --body '{"autoEnroll": true, "code": "Nx7GaGhM", "displayOrder": 76, "images": [{"as": "ZGBf6CFS", "caption": "9xI63JWG", "height": 97, "imageUrl": "W6YYtLiw", "smallImageUrl": "C4kcARfj", "width": 74}, {"as": "CNbk4QMw", "caption": "jETpCl0z", "height": 21, "imageUrl": "Q3eVEJwx", "smallImageUrl": "W3gtcBvJ", "width": 17}, {"as": "MmuOfAv1", "caption": "x9x4nPb5", "height": 88, "imageUrl": "LtbMCGNj", "smallImageUrl": "bma3I6MQ", "width": 5}], "localizations": {"X0o0b5Ek": {"description": "CjfZBEz7", "title": "Mc3aNlCv"}, "OmSwzUBp": {"description": "OHPtQKNf", "title": "SdQtgzDL"}, "i68297xo": {"description": "BHVrghIt", "title": "80jTYXsd"}}, "passItemId": "StzG3Hsy"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '8BMgM8Yo' \
    --namespace $AB_NAMESPACE \
    --seasonId 'BYfBMAyC' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'MWhpDwI9' \
    --namespace $AB_NAMESPACE \
    --seasonId 'dsQjG5Ma' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'lJuSOQdp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'WAX2dzGc' \
    --body '{"autoEnroll": true, "displayOrder": 31, "images": [{"as": "PAcqEfeB", "caption": "rrStCJJK", "height": 25, "imageUrl": "1ZMZSYLt", "smallImageUrl": "W9KkTKru", "width": 82}, {"as": "ucKC9pRs", "caption": "XLo3oZsW", "height": 71, "imageUrl": "q6GJ6ajS", "smallImageUrl": "Rh9Z8Sdb", "width": 85}, {"as": "hcvCF2tu", "caption": "Sq1HkMuV", "height": 84, "imageUrl": "na4faurt", "smallImageUrl": "2Kwu9JOd", "width": 95}], "localizations": {"87t1oBvo": {"description": "8vYZzOXA", "title": "QwKzV5yd"}, "x2jZ9VW6": {"description": "WuabbQsr", "title": "UEvvGpNr"}, "TyPrBeEN": {"description": "cS4jxHc0", "title": "Zt9VTF7X"}}, "passItemId": "sLVwmW1s"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'wNIoTSZU' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rWqGMHeV' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'toE0OlLR' \
    --q 'TXxmpltp' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'IIogk50U' \
    --body '{"code": "JEhM1J1N", "currency": {"currencyCode": "fvWd8ECb", "namespace": "DXYsYhkK"}, "image": {"as": "DqmLx5Qj", "caption": "W0URC5lW", "height": 80, "imageUrl": "LLUQ1RZ8", "smallImageUrl": "RJPtYfR6", "width": 39}, "itemId": "nwTbvMMc", "quantity": 15, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'YeYpJQK7' \
    --namespace $AB_NAMESPACE \
    --seasonId 'oT06KylR' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'jRyweGqq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Sv8abLAN' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'AG3SEBqB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ty6v3zjz' \
    --body '{"currency": {"currencyCode": "lGKWqHdA", "namespace": "ZRjHNPvV"}, "image": {"as": "YoO4FpKc", "caption": "iHtd6E3O", "height": 83, "imageUrl": "6UaI5a0K", "smallImageUrl": "zjlY9tKE", "width": 58}, "itemId": "K88f9Ilg", "nullFields": ["O3kk6Szd", "FHVN6aJF", "2zQ9PFiw"], "quantity": 86, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'aIcM7zb3' \
    --limit '28' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '56HTWA6W' \
    --body '{"index": 55, "quantity": 48, "tier": {"requiredExp": 97, "rewards": {"erhRyS5Y": ["SRpmANt1", "yP694YmO", "Z6RVXO9y"], "1VqTsMe5": ["VUwgzD5C", "MKIqw7p6", "ICTdjmJv"], "PU67IKb6": ["aRZ4ZWRX", "kNinW8Pu", "xL32j66Y"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'CYcQgMmW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'GUxrLH8K' \
    --body '{"requiredExp": 36, "rewards": {"7etiXLbE": ["nv3XAL1I", "Pqn77wYf", "TDA5uEKQ"], "7yLTNGS8": ["5K7Xpau9", "FLbJ0C7b", "8QhSv1Nn"], "XLriHa2s": ["U4AV3OeO", "vBSbspyy", "KJ1lSE20"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'vgD5PdvR' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jLZ8GQWQ' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'bhFlhL6z' \
    --namespace $AB_NAMESPACE \
    --seasonId 'l6g9IRBv' \
    --body '{"newIndex": 13}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ng38eLcW' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'wvdUa7MA' \
    --limit '86' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '9mH5e6cj' \
    --body '{"exp": 1, "source": "PAID_FOR", "tags": ["pbaOw6wE", "PbgyBvZj", "dRmsaDIy"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'x6f5VxFH' \
    --body '{"passCode": "SqWk1Sf9", "passItemId": "vpYm2igS"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'EsPorajN' \
    --passCodes '["hCo55qEf", "wiLX5Dm2", "n44DbkYr"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'GSkcYsCb' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'n8gVaSEx' \
    --body '{"passItemId": "BXIqY8Lp", "tierItemCount": 4, "tierItemId": "UVkuODLL"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'o0SB9ZXV' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '6CbXp8C7' \
    --body '{"count": 79, "source": "SWEAT", "tags": ["FFnZ2tyR", "alhSDY6G", "ch5JKH4P"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ZGFyDT9Z' \
    --from '4dhPGy0A' \
    --limit '38' \
    --offset '99' \
    --seasonId 'wFylVVyE' \
    --source 'SWEAT' \
    --tags '["Uujh5nBS", "YZHDoSM0", "rnLPDx2T"]' \
    --to 'iVMlYeBO' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'gPCLc9z2' \
    --seasonId 'IcizQkcV' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QQkLI2Rs' \
    --userId 'GRVCgZt6' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'aalyYfg7' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'DVpRH8fa' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'azkYuShA' \
    --body '{"passCode": "44mAvsdS", "rewardCode": "TL7z0Bor", "tierIndex": 77}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ZVrhdrip' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ScbWLMKH' \
    --userId 'Yus8yJ3j' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE