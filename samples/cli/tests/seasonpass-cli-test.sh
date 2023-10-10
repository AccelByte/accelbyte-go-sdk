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
echo "1..45"

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

#- 2 ExportSeason
samples/cli/sample-apps Seasonpass exportSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'ExportSeason' test.out

#- 3 QuerySeasons
samples/cli/sample-apps Seasonpass querySeasons \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '17' \
    --status '["RETIRED", "RETIRED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "HdGZfADNfVzelajS", "defaultRequiredExp": 48, "draftStoreId": "mdjNYoZkydZ452mT", "end": "1997-10-30T00:00:00Z", "excessStrategy": {"currency": "UtvdbW2odsJEiABj", "method": "NONE", "percentPerExp": 66}, "images": [{"as": "sCERRevqbuWkqIOg", "caption": "N2HyJij4jdoX6vy2", "height": 66, "imageUrl": "AZ2qc3t1LDXGJaV8", "smallImageUrl": "83Sc0mjRFV6BF4YD", "width": 35}, {"as": "3DyeBUMUTGmkHA4J", "caption": "PClfq0JnHRLXc43O", "height": 68, "imageUrl": "6VMAcH9EG7of7HZk", "smallImageUrl": "nI0srN7fuaGChfFY", "width": 82}, {"as": "YMcJLIybJcquJ82o", "caption": "KwsaVuzii7cymPfX", "height": 68, "imageUrl": "DrTU1Vx0oCeYDrf5", "smallImageUrl": "xAWX6EdxFkw1f3ly", "width": 98}], "localizations": {"b5iLtqlON5v1fia2": {"description": "9WYxOPzIKIuK0o27", "title": "oekBfG6BBDqbg4kL"}, "KJ8EdWOqjHvyIT5m": {"description": "mZ4Jj8vWiLKSRDfe", "title": "sDUN4kI0MVJscQ38"}, "mAWL8eDDSZ7UGvxi": {"description": "58wVTkgMPErhtKjC", "title": "qvUzgGYC64Kg2Yy7"}}, "name": "BbyZDwy2NR4A7k0Q", "start": "1979-04-03T00:00:00Z", "tierItemId": "U1FXWFKfNGxAvuAS"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateSeason' test.out

#- 5 GetCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetCurrentSeason' test.out

#- 6 BulkGetUserSeasonProgression
samples/cli/sample-apps Seasonpass bulkGetUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["3HzczK6rYGfEWRnU", "LXBFvWh7pGdsfnPH", "DKuORQeFYRK8BfiP"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'LFEGvGFhcSERHAwB' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xUD65hG99zjvoUcu' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mCKy3L6SKiBEVCtZ' \
    --body '{"autoClaim": false, "defaultLanguage": "UzyMX1UwmjWhYhNT", "defaultRequiredExp": 26, "draftStoreId": "D9mj10PTQs2P7qmk", "end": "1975-09-20T00:00:00Z", "excessStrategy": {"currency": "dgHl2eT3F6uEbwDa", "method": "CURRENCY", "percentPerExp": 85}, "images": [{"as": "v0SwrsKjKDkWPrT6", "caption": "6RjCYWCQ37XbmnZ4", "height": 42, "imageUrl": "P9pYTSzDrGhf0ZEY", "smallImageUrl": "DUYjiaGdT1CNuTtv", "width": 22}, {"as": "oL3noGdzBzA2cZfy", "caption": "VRHVd2Gf0vFqDX7f", "height": 34, "imageUrl": "miUIRH2WwtzyiLqe", "smallImageUrl": "HrnWfJVr44Yr5qYy", "width": 85}, {"as": "6QRKLZlJKu1ejtRa", "caption": "Ox3eEalSLWXGX4NZ", "height": 8, "imageUrl": "KCsGVZPeelEJ9RRz", "smallImageUrl": "kNMwNM7TNcr2Nu5c", "width": 52}], "localizations": {"4unoochUN18mr3XU": {"description": "l96SkDaY94NtVOiw", "title": "9rg8xdPIgzdnEH4H"}, "9VfilwddF982SgY4": {"description": "WlzIjOW45q7047ya", "title": "eu8iekNIqDHu3QaT"}, "Y1IBT6DC4o7y3hjy": {"description": "ApPR89MKzUDktLvU", "title": "HPSYI6UFU5Bl8Tlc"}}, "name": "iA5efc4k9PBJz9MX", "start": "1992-08-08T00:00:00Z", "tierItemId": "O9VedSfB15synu1s"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9KXpdbGucl7pe6gh' \
    --body '{"end": "1995-07-29T00:00:00Z", "name": "VJCRqwMvPhaVGQHG", "start": "1996-06-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9qMlgY0m25FPut1u' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'qllISeIMELSkmQ0w' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'N1QDoL0Z7LfcwaoL' \
    --body '{"autoEnroll": true, "code": "fhKp6ZI9PZwqyoEG", "displayOrder": 58, "images": [{"as": "BUeM20DbKRnGZmWV", "caption": "0yxIPq2FfrHdBRRt", "height": 39, "imageUrl": "58lEeqjMMQiLTwqv", "smallImageUrl": "skoeHL4Hx3xXvM4v", "width": 53}, {"as": "gWXBRzWXh1gZG3Ek", "caption": "H7K0aUXRaLchWjzV", "height": 94, "imageUrl": "5NOfUuaYrpqpipcU", "smallImageUrl": "Fa15Sdz5p3V2OVkv", "width": 98}, {"as": "gcZUXq9W9DX7PgNe", "caption": "zUhkpiLUBXfwIudE", "height": 87, "imageUrl": "KAnp1i2ttx1V6IX3", "smallImageUrl": "yuBLtydlK5FgCnh8", "width": 37}], "localizations": {"0LeZ2tnHsSmDga5x": {"description": "Lh21OvfUqeL4CWcU", "title": "WQR3XF1dMFu5e6h9"}, "iTMSBOEpbDp0MD0l": {"description": "I9n2DQGaQBI5H4zD", "title": "fDIrypxn2au8iCQM"}, "6NlGCwhWTSvZbpnF": {"description": "Xlw9mAmTsr3bZUvb", "title": "UGFcsO5zzBHxfBSu"}}, "passItemId": "8m1icT7TaborGX4x"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '07SuRFENGnHcvzjU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'tKtygnci9L0SSgWO' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'VKp3HZ6MyexIxvAz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'L2XPly6DqXrUHxg8' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'teGW2cr1ga6v09BT' \
    --namespace $AB_NAMESPACE \
    --seasonId 'o17A3e083QP6HdnK' \
    --body '{"autoEnroll": true, "displayOrder": 75, "images": [{"as": "ahE2mvfS3kHb847z", "caption": "DEjBFEj7Fldu0nAV", "height": 63, "imageUrl": "P86efSTr0DnSz02p", "smallImageUrl": "UQ99vdvsrEVXsjVJ", "width": 81}, {"as": "TFafnAnXW5CioqTE", "caption": "aVMQIEu6H3EtWK6N", "height": 64, "imageUrl": "iVOUcddTd5I4veIk", "smallImageUrl": "1zipT6Ks6bCNI7FZ", "width": 10}, {"as": "eZIGxKDKcE1OQOpL", "caption": "Bqrtk7TO9zqfIVkI", "height": 93, "imageUrl": "q9ne8uhfpMWTdQoF", "smallImageUrl": "N4tXUMHyz5Vr3NgD", "width": 96}], "localizations": {"GRD4HSfYDfjMvM9u": {"description": "MZMhjiPZNci9utHM", "title": "RV0S7uJHpPteZ07e"}, "0DnjfiZiYKjiQljP": {"description": "gKNgEls3msRCV14A", "title": "wA0CQrGNfFG2kYQS"}, "B6pLM58TTEPZAfug": {"description": "UcEvJTiJif5IjdoW", "title": "INW5tnqIxMypBrqs"}}, "passItemId": "7t86tHtYGWGHplm2"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'gK0kNsTFUAsDIHkB' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8OMIkJiyh7s84Cau' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'VpeN8sTu9eL0JbAA' \
    --q 'uiW8jzX6Jl05Be8x' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'uaqGOToNak3m3IpZ' \
    --body '{"code": "mPHM8Y5r5UDwkAgn", "currency": {"currencyCode": "ni63NvP7JPcB788g", "namespace": "fneApKgY3Erji78o"}, "image": {"as": "H6ElrkG2z3tv6H34", "caption": "I0XQGfMUaLBrRQfh", "height": 8, "imageUrl": "8FtJh6EDQPdUc8kF", "smallImageUrl": "ZhESbvkBHrb7mg1O", "width": 77}, "itemId": "kBu0BLdrSf5RfmSl", "quantity": 45, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'jFoN1W3DveMZfhWK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EhNwSFWL2f6ylDzv' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '4VDP4PU1jfyTgVH8' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ceXfSbylrvJ05745' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'PnfuZlk2kn4PizcS' \
    --namespace $AB_NAMESPACE \
    --seasonId 'euINlV4DOccESpZp' \
    --body '{"currency": {"currencyCode": "1pazU7oxGcJTaS28", "namespace": "019uu1m8MzLVsbev"}, "image": {"as": "HJha1xozL2EyMsRs", "caption": "sf3jLWn9as4UBxMc", "height": 82, "imageUrl": "OUt21CbzJ8SC5y67", "smallImageUrl": "3zWSrwAMnVanDMAa", "width": 1}, "itemId": "YmYgzlj9o4LqCtvr", "nullFields": ["M8NnA52abXcDGtah", "3KfFinNKQNeHjvrj", "P7ByXOWeSihaRfjJ"], "quantity": 71, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'kE6vWY9PomYD2sah' \
    --limit '5' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'dYxUKwF2gIWW3xWa' \
    --body '{"index": 59, "quantity": 62, "tier": {"requiredExp": 12, "rewards": {"72tV7IRaVz156ETO": ["b03KZ7gcuNFrmy0p", "leMQgOlwOzvINwn9", "XSSEfhESk1oe8mKZ"], "24SfEwQOmySe1OI2": ["xDn5TIZcwrOLTs6Y", "PoITjdXVHIFstkQn", "iXJddakJU5x7Whic"], "1vp7uGvXck3KFpYu": ["pIqEKgvUGlvOkSb1", "s0mX7ZggWOVHhVC3", "KEkDDvQL5Xm6AWaE"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'GBsrKpm7sRdrGVKp' \
    --namespace $AB_NAMESPACE \
    --seasonId '8EUcRO2uPjJcibkx' \
    --body '{"requiredExp": 36, "rewards": {"xoI9byUvmaKYM1ej": ["oDaTr3XIPfI3q1rp", "YmA3GVvWm06SNL7r", "fEqxLjIJWlyMCHu1"], "2gY7RKaXZ2WA3MPY": ["dHmxve91gqHJcfH4", "5jmwDQF6mH5DUsMf", "GzioG7qQR6Tgcov0"], "OVXVrDbDQSPcUbwf": ["zW3eFBTBIwavUeVt", "uwDuAxOAHRcOHSR2", "L8m7qAUZQU6O7NvO"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'ifyr25o61bigLBFG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'cIMW3R2iBAA94zkb' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'mWmvPOk3xlJ4BiAe' \
    --namespace $AB_NAMESPACE \
    --seasonId 'qQLaHhOp6u9szymO' \
    --body '{"newIndex": 48}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uMi1UiU8Ht5AibtQ' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'D2ApyIQMYinoTDwM' \
    --limit '40' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'lwzmYyJHaHGssc2l' \
    --body '{"exp": 14, "source": "PAID_FOR", "tags": ["IXe7Lm6WgD2S8DNr", "gwms4BHOLdWOdQf7", "d7B3efvh0I0jvJIi"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'OeiWFI4PuEqCy66S' \
    --body '{"passCode": "3fIwkYdDrXwmMWby", "passItemId": "6hNjOyqu7svMex1R"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'kw2Bmx0KzHVCpHit' \
    --passCodes '["fXWz8O1BqchCk0wi", "EoOsOqLcCLgHrc2t", "jD29t6vwKeexAgV7"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'FRWyZh0gvfGhwWnb' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'wWFwGxKjC8qdQiNg' \
    --body '{"passItemId": "b1BXJ86OWGDt0A15", "tierItemCount": 49, "tierItemId": "Hez71vJLBj1EZPe9"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'SXiFPWD17wEBxrPZ' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'WQfsOJsyFCqlLcXR' \
    --body '{"count": 22, "source": "PAID_FOR", "tags": ["5E8UroECbjBsL9Ce", "qVRSvabOVvGOzoVm", "eqgHJgIMnc1u6ahv"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'AeSPmCTBi6wUK0pN' \
    --from 'pzmsGBebPGPI9U50' \
    --limit '84' \
    --offset '34' \
    --seasonId 'ak7FwQfSVFHhNuRn' \
    --source 'SWEAT' \
    --tags '["Q7TNQbw7vUC4wene", "abfm0jHO0BBVrIqd", "ezyVvK8R17drz4Zj"]' \
    --to 'eUDnWURqwaaI5lLf' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'B7twGzxgTjkRNdFU' \
    --seasonId '82p75JjcnyWQ71yw' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'oiPLgfF4x4fUawuo' \
    --userId '0JNSbdqUL6ZTpRgQ' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'esWuzFiZZWqt8Wdw' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'CyTAW42GwcEdvsoO' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'GDCjp8l1ta16NtXo' \
    --body '{"passCode": "KFYX3fTnX7bVAxqn", "rewardCode": "CMfd4fb0rYaEU70L", "tierIndex": 99}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '4wKx4z3Ez7tuLRkk' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kWV9f24f8P0FVr4o' \
    --userId 'OuNmac34qLWvNSBn' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE