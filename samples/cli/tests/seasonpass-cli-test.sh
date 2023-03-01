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
    --limit '66' \
    --offset '59' \
    --status '["RETIRED", "DRAFT", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "AiWQvGi9", "defaultRequiredExp": 37, "draftStoreId": "YCjPUgTa", "end": "1975-05-13T00:00:00Z", "excessStrategy": {"currency": "LOUrccsd", "method": "NONE", "percentPerExp": 93}, "images": [{"as": "caGjLYC7", "caption": "uitc2ckh", "height": 83, "imageUrl": "V4wwAAZg", "smallImageUrl": "zeqNhvIZ", "width": 15}, {"as": "AeABDWME", "caption": "YBifqbw6", "height": 95, "imageUrl": "RIgsIfbr", "smallImageUrl": "UnJFAdUr", "width": 86}, {"as": "BUqoT4AG", "caption": "DJL3A8MI", "height": 64, "imageUrl": "1RXOQI5r", "smallImageUrl": "or6HHzT7", "width": 92}], "localizations": {"lSHBg4kF": {"description": "VpyGQFiB", "title": "m4IXO7Z4"}, "FN2pGQEP": {"description": "wNO3in2R", "title": "6ckA96g8"}, "1UFFysUz": {"description": "2vYejL4B", "title": "8NNlnxqc"}}, "name": "42bpyBLK", "start": "1974-08-09T00:00:00Z", "tierItemId": "R402ynBQ"}' \
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
    --body '{"userIds": ["D2aWDag7", "6glRcRiZ", "iS2lPkdb"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'TuVHmits' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qCTq42N4' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mR0SlMGn' \
    --body '{"autoClaim": true, "defaultLanguage": "wUYWneCw", "defaultRequiredExp": 77, "draftStoreId": "1REYGpyT", "end": "1990-02-01T00:00:00Z", "excessStrategy": {"currency": "PNFo6joK", "method": "CURRENCY", "percentPerExp": 29}, "images": [{"as": "WlNcN1Ar", "caption": "TY9uZ0zF", "height": 17, "imageUrl": "EnYDRdDc", "smallImageUrl": "JQXij0Yr", "width": 47}, {"as": "ZiR4zC3i", "caption": "EPw9ODLD", "height": 15, "imageUrl": "P05qrf1J", "smallImageUrl": "7UL7nbO9", "width": 64}, {"as": "XvWQjwZw", "caption": "CiWwJ6d2", "height": 21, "imageUrl": "6jZWApJN", "smallImageUrl": "VzR8rgcK", "width": 23}], "localizations": {"HZ4XFULN": {"description": "xIvUifoa", "title": "iqSnFD5J"}, "iRWNyMxS": {"description": "oi40Wwme", "title": "2zXtPWzG"}, "DHoHh41R": {"description": "Nyvf6PJi", "title": "jIEOhMJO"}}, "name": "CITCJxJD", "start": "1975-01-17T00:00:00Z", "tierItemId": "1oYhp7TN"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OwVasaTn' \
    --body '{"end": "1974-11-20T00:00:00Z", "name": "NnClyrH7", "start": "1981-06-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YQvPsJaC' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'WVrWgmLR' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'iuLKAgJb' \
    --body '{"autoEnroll": false, "code": "INQH2zUm", "displayOrder": 14, "images": [{"as": "zenGhI83", "caption": "6iLKn2t1", "height": 10, "imageUrl": "Iob6lB44", "smallImageUrl": "slxQm6hn", "width": 84}, {"as": "L3WnMrqk", "caption": "5FzOrnzk", "height": 38, "imageUrl": "Pr5Ejm8U", "smallImageUrl": "Fw1EAlir", "width": 2}, {"as": "2BvxgJaz", "caption": "GRuwbihh", "height": 18, "imageUrl": "uKsjAhTA", "smallImageUrl": "d4JXwo8d", "width": 4}], "localizations": {"EhLGTKZR": {"description": "aN7JzQVy", "title": "A40DKjMN"}, "tXpkQX3U": {"description": "gZDapRy1", "title": "TLN4k3Wk"}, "N3kgwNFQ": {"description": "OMabQkcJ", "title": "ZLP4RCq0"}}, "passItemId": "M5Hz2qzQ"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'gnicWoqW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'MXXkMq5N' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'iMVvVxkv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'HRXAvFOz' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'tz2u2pJN' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wmMz1cWK' \
    --body '{"autoEnroll": false, "displayOrder": 33, "images": [{"as": "5hBPJgKT", "caption": "teQGeuXm", "height": 59, "imageUrl": "Q9nTuXwi", "smallImageUrl": "kwarIZtb", "width": 76}, {"as": "d4x0svcb", "caption": "CsPd2gMJ", "height": 11, "imageUrl": "bTOm6wND", "smallImageUrl": "3Tj5mJA1", "width": 15}, {"as": "E0v9Fjbv", "caption": "a0nKP5f8", "height": 97, "imageUrl": "WnYIve1X", "smallImageUrl": "vyeEx8yZ", "width": 37}], "localizations": {"aajW13nl": {"description": "yhR1xGOF", "title": "BCzqxEwZ"}, "9JWZitF4": {"description": "M1UONrl4", "title": "q9yUuhYr"}, "sRhcw5cM": {"description": "13TopY4D", "title": "9JAavCjZ"}}, "passItemId": "ZPWmxDcJ"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '56foMBNR' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'APC1kag6' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'saCneiCM' \
    --q 'r4MLNAaT' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '3juvxPhT' \
    --body '{"code": "NCPhSgRa", "currency": {"currencyCode": "ONIy20G6", "namespace": "VSQrlgTS"}, "image": {"as": "e6pIdTRp", "caption": "ScoiFMYd", "height": 5, "imageUrl": "uhe0UQCy", "smallImageUrl": "l2agUCgI", "width": 65}, "itemId": "gSrZ1sry", "quantity": 62, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'JLMcHzhO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'BuM8jDam' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '08NSNIKH' \
    --namespace $AB_NAMESPACE \
    --seasonId '54PjWLDL' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'nAazeQBN' \
    --namespace $AB_NAMESPACE \
    --seasonId 'f3w9RPov' \
    --body '{"currency": {"currencyCode": "wMAnINUM", "namespace": "YRipDnEw"}, "image": {"as": "h1P8LU16", "caption": "v3n5tzsd", "height": 76, "imageUrl": "IIpXiruD", "smallImageUrl": "h5QE5fL4", "width": 54}, "itemId": "vILnLASx", "nullFields": ["RJcFlOdJ", "L4fJM7cp", "eGTQ8Wob"], "quantity": 56, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'XOXJPuSI' \
    --limit '96' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '18x41XSO' \
    --body '{"index": 59, "quantity": 5, "tier": {"requiredExp": 64, "rewards": {"mQYLOG8v": ["0uJz1UZJ", "3xzS8ZMk", "muHZJIgA"], "wAgeRGWo": ["KQWRU0JL", "pKRrZ7gv", "qeMpt1df"], "o5bAVSoO": ["AsEztV8w", "Qta1iXrV", "ss0EvYso"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'fjES8iVk' \
    --namespace $AB_NAMESPACE \
    --seasonId '34GNBpL0' \
    --body '{"requiredExp": 58, "rewards": {"l8tXkc2b": ["UDMyuPLG", "VJP7tI09", "umWAO50L"], "tDp0KZBq": ["hnL4WPoA", "bFtsZ2Xa", "mxPnTbjC"], "JugQVzBl": ["oAPMe64R", "2dbXH2tU", "kXXG2Euz"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'CIbzj6iK' \
    --namespace $AB_NAMESPACE \
    --seasonId '2Gmr3Yvq' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'IIZpq91A' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TL1oWJ5T' \
    --body '{"newIndex": 6}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'suIqbByw' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'pk9erp9X' \
    --limit '64' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'hCXSZQLc' \
    --body '{"exp": 55, "source": "SWEAT", "tags": ["p3rzYfl7", "CRg3vYBm", "x0eaZmwV"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'sitg3VNL' \
    --body '{"passCode": "Fa8DVGNf", "passItemId": "P3fE0lVn"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'jKLGp6ux' \
    --passCodes '["i1fek6kK", "apgpcWZo", "mU0AWr2x"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'reEIa2hc' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'RYZVyepL' \
    --body '{"passItemId": "T4wJGuVO", "tierItemCount": 10, "tierItemId": "0Y8Baik7"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'eZekYptG' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '1uuY9wIt' \
    --body '{"count": 34, "source": "SWEAT", "tags": ["BMgumuLh", "VE37QYa2", "4t1NgIzB"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '5nT8Sr4W' \
    --from 'oUPiBSz6' \
    --limit '51' \
    --offset '32' \
    --seasonId 'wMiMXIju' \
    --source 'SWEAT' \
    --tags '["0y9XAhsW", "yXjCSRVL", "ARq0Tu4k"]' \
    --to 'P9D4swf6' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'Y17JNNla' \
    --seasonId 'WLSt5neD' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xEIHARKu' \
    --userId 'jv7iX8oe' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'g9o86t8B' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'FwSiHVhb' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'tkC6lt1Y' \
    --body '{"passCode": "tSxNLB3h", "rewardCode": "aFbg8ja0", "tierIndex": 17}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'SwTvcHPq' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IB6x42rK' \
    --userId 'TK7s7TUp' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE