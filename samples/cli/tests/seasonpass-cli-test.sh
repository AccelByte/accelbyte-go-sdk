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
    --limit '60' \
    --offset '55' \
    --status '["RETIRED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "khOhJrRc", "defaultRequiredExp": 85, "draftStoreId": "WcmHZGNB", "end": "1996-06-02T00:00:00Z", "excessStrategy": {"currency": "wHsDOttR", "method": "NONE", "percentPerExp": 50}, "images": [{"as": "zgPvXp01", "caption": "XAInhknC", "height": 30, "imageUrl": "VwLftjty", "smallImageUrl": "xPVy6oZi", "width": 76}, {"as": "vDOHQsoT", "caption": "n4DoZSSl", "height": 34, "imageUrl": "JlAEjsMS", "smallImageUrl": "7ozf5Bm2", "width": 33}, {"as": "hUoiEjAZ", "caption": "Y2hpvPjN", "height": 6, "imageUrl": "63ZOCLYO", "smallImageUrl": "uGovKcbI", "width": 33}], "localizations": {"4ny9h4HV": {"description": "GQuUKTLY", "title": "Mi6GKgYz"}, "w34wFkax": {"description": "8zmkXgua", "title": "c4zyjGcf"}, "QyThWU6e": {"description": "ObaLp1Ek", "title": "GTD0rsbB"}}, "name": "OowUbafI", "start": "1978-08-29T00:00:00Z", "tierItemId": "HmegULKk"}' \
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
    --body '{"userIds": ["Ama8LJj8", "jK079uCK", "JAW8bY73"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'cSJL0a8L' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GpvgOLJg' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vKXKLuhR' \
    --body '{"autoClaim": false, "defaultLanguage": "vyiYIZNC", "defaultRequiredExp": 71, "draftStoreId": "P6xViyBm", "end": "1985-01-19T00:00:00Z", "excessStrategy": {"currency": "rqjqyHIC", "method": "NONE", "percentPerExp": 53}, "images": [{"as": "nKE3ryue", "caption": "WOhQlYVn", "height": 59, "imageUrl": "djH219zC", "smallImageUrl": "Cmj20Mpp", "width": 35}, {"as": "nxng6Lsm", "caption": "eDopgdYY", "height": 97, "imageUrl": "TuAcxnJC", "smallImageUrl": "PLlwC96P", "width": 30}, {"as": "E8mNBaDD", "caption": "7NYpcFLb", "height": 82, "imageUrl": "7f6SD0tm", "smallImageUrl": "DqRVePG0", "width": 31}], "localizations": {"bBDXtgPo": {"description": "uf1EsI62", "title": "WbbhKwL3"}, "PwVsZcLG": {"description": "dgmyKO0s", "title": "o9btGv7r"}, "W0Lkg9hV": {"description": "57mwJfSF", "title": "plAvQ5Fs"}}, "name": "uCPSXhJ1", "start": "1978-04-23T00:00:00Z", "tierItemId": "pAbjveb3"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'e3FEQaL6' \
    --body '{"end": "1990-10-22T00:00:00Z", "name": "ssWRR6HV", "start": "1985-10-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ipWFNFlt' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ks2Jy7eE' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'gEKe61oC' \
    --body '{"autoEnroll": false, "code": "mYL1fopW", "displayOrder": 59, "images": [{"as": "4aIMat4d", "caption": "81ixJbBW", "height": 40, "imageUrl": "qOzFhwV4", "smallImageUrl": "0f4zi8VX", "width": 53}, {"as": "sDLFd0Vl", "caption": "mxmc543P", "height": 19, "imageUrl": "1isHgfOq", "smallImageUrl": "AaCsfNIs", "width": 84}, {"as": "DFROiLIs", "caption": "EMTbv5kQ", "height": 59, "imageUrl": "jP4z5x8l", "smallImageUrl": "m5GFrAwv", "width": 44}], "localizations": {"u2IHT4sb": {"description": "1bQl51vr", "title": "90w7LX8t"}, "gaTIcbGG": {"description": "NM4NwJt2", "title": "utCpRRfD"}, "d1HuoHtG": {"description": "Dz9eixxP", "title": "Rvp9Tzjo"}}, "passItemId": "oApgHos6"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'UJS1KiNM' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gZxICFch' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'E04nrsoE' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Jnf4wBlF' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'XEy9hkw8' \
    --namespace $AB_NAMESPACE \
    --seasonId '9WKXDNiz' \
    --body '{"autoEnroll": false, "displayOrder": 52, "images": [{"as": "mvDseKUd", "caption": "MPNxECr2", "height": 95, "imageUrl": "eAYbAnLn", "smallImageUrl": "708B48NY", "width": 30}, {"as": "057SNDSY", "caption": "xxN6i8e2", "height": 25, "imageUrl": "2SaNC1Ub", "smallImageUrl": "W4b8HFuy", "width": 45}, {"as": "ld03PXcU", "caption": "fOpCUE3r", "height": 19, "imageUrl": "VJO9BG5A", "smallImageUrl": "HUsHGgRn", "width": 90}], "localizations": {"9LL6hoRu": {"description": "JipBGvtW", "title": "5ASZ7xDy"}, "JOfg1k6p": {"description": "KEBPi2cH", "title": "JtBa4ZKw"}, "GOQPYT4C": {"description": "yhGRIDti", "title": "H9uAPztS"}}, "passItemId": "94xBED1B"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'USQS2hd9' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1La881XW' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'vqQjrRpb' \
    --q 'RJKuWD42' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'JQTlmvae' \
    --body '{"code": "Yw8AX1XN", "currency": {"currencyCode": "sKJuEC06", "namespace": "gvaXkiP3"}, "image": {"as": "JeUOvS1c", "caption": "E5Dxffnq", "height": 11, "imageUrl": "dOGFscED", "smallImageUrl": "ADmEj54V", "width": 67}, "itemId": "K1uOQoEb", "quantity": 1, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '5CNdzPki' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DhquUrtz' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'S3QDhSgQ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rERbsCQb' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'vTd3mX0q' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kpCXL9lj' \
    --body '{"currency": {"currencyCode": "bKsAZnLa", "namespace": "NeMnlnWc"}, "image": {"as": "s5cbKYcr", "caption": "25lpSgj2", "height": 76, "imageUrl": "hjRI8lnd", "smallImageUrl": "OtryTVxq", "width": 1}, "itemId": "mjpbmomI", "nullFields": ["n8k1ZOjF", "IKApqKM4", "Y519c3TW"], "quantity": 6, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'BMuDJWuZ' \
    --limit '53' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'Bx3mtaM7' \
    --body '{"index": 60, "quantity": 20, "tier": {"requiredExp": 4, "rewards": {"6wIB8Jkd": ["L2yqRn8Z", "7x8aSfmm", "p6jFovoD"], "9v5haHjd": ["LKP4Po0O", "i3Vi7jej", "ePDzgNdR"], "rpNUARGt": ["WJCnvwMz", "bY6bi2ug", "gwlelc8C"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'p0UXjoJW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wsJPwoRz' \
    --body '{"requiredExp": 62, "rewards": {"LCnh5xi0": ["RyUyG86v", "iqZrCtby", "unbTEkVU"], "pUEx8iPN": ["AMNgEKRW", "aSMGzAKE", "gZ8iRrZb"], "qqHqu9Qw": ["uuS25gFl", "2rdad3hg", "eTKQuhrF"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '6h3oo4Eh' \
    --namespace $AB_NAMESPACE \
    --seasonId '9isqmnvF' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'yXy5wO2H' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Xr9DoOax' \
    --body '{"newIndex": 45}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'wz3u66mz' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'tMzPsVVT' \
    --limit '23' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'izuedcPS' \
    --body '{"exp": 99, "source": "PAID_FOR", "tags": ["6g8xEXLW", "Ulo1v7Gv", "AlhFPRW4"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'wa6A9E1l' \
    --body '{"passCode": "5bcWNUrH", "passItemId": "aN3TKmXg"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'mOQGQvcC' \
    --passCodes '["rZZBgHVl", "axAdEC1i", "KJymfhvF"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'IPc0gWMz' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'zxCu3lmw' \
    --body '{"passItemId": "bBSDtYb0", "tierItemCount": 7, "tierItemId": "g4mwI24R"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'kgVOjCXe' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'GoN1Q17L' \
    --body '{"count": 9, "source": "PAID_FOR", "tags": ["bRQoMGme", "I4Rq0jgj", "rxMv7tqF"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'AltLRhy3' \
    --from '0FlgjXGv' \
    --limit '87' \
    --offset '95' \
    --seasonId 'zvcmOQZp' \
    --source 'PAID_FOR' \
    --tags '["P6YCnKDm", "rIJvxnWB", "ePCWpOit"]' \
    --to 'tTJfnxuD' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'gVJNfbUZ' \
    --seasonId 'MYraHVPG' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YSu1N1gU' \
    --userId 'mZfbI5z2' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '4h9iMiJM' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'aJEbsGq3' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'd7mi74Rl' \
    --body '{"passCode": "xAfxzDHK", "rewardCode": "DtApk2Dd", "tierIndex": 99}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'BDevZ0Tp' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '05j9xJvE' \
    --userId 'Unp76wfn' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE