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
echo "1..42"

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
    --limit '74' \
    --offset '64' \
    --status '["RETIRED", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "vdM9zg2Y", "defaultRequiredExp": 39, "draftStoreId": "Lr6I2lH6", "end": "1975-08-17T00:00:00Z", "excessStrategy": {"currency": "mQqLaiM7", "method": "CURRENCY", "percentPerExp": 49}, "images": [{"as": "LZqWrAp3", "caption": "P5qY6HmL", "height": 62, "imageUrl": "AdqdQbiH", "smallImageUrl": "EZr65RLP", "width": 55}, {"as": "V2jLtSm7", "caption": "sdmVvoBi", "height": 62, "imageUrl": "TXYvYOzF", "smallImageUrl": "yJcHqTiL", "width": 52}, {"as": "o4s1ENS4", "caption": "v8f8BPHf", "height": 72, "imageUrl": "D1NcIXz6", "smallImageUrl": "UiHMTzEl", "width": 22}], "localizations": {"XUtm7ugu": {"description": "PTmxyt1A", "title": "Jc2apXT3"}, "FXqeP8pq": {"description": "jzTxT9VN", "title": "zc7dy2Yo"}, "8Q3KemXT": {"description": "9rVf0lfs", "title": "dlid4h2l"}}, "name": "WuRd8iTh", "start": "1998-10-11T00:00:00Z", "tierItemId": "gcz7xdsM"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateSeason' test.out

#- 4 GetCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'GetCurrentSeason' test.out

#- 5 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '337gTjFA' \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bbTCgkC6' \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'f0uvysYp' \
    --body '{"autoClaim": true, "defaultLanguage": "jBDGyRYF", "defaultRequiredExp": 67, "draftStoreId": "PppJOkN0", "end": "1981-10-31T00:00:00Z", "excessStrategy": {"currency": "5gt0APpQ", "method": "NONE", "percentPerExp": 63}, "images": [{"as": "eLgmJ8rH", "caption": "svdw9XAH", "height": 73, "imageUrl": "TsfBoGlI", "smallImageUrl": "CKTpfUXD", "width": 79}, {"as": "WFowkjlf", "caption": "KgGEkq1q", "height": 43, "imageUrl": "ZLo3ZQ8r", "smallImageUrl": "RIyoi9bK", "width": 43}, {"as": "ha6Bo2q9", "caption": "zic1ztt5", "height": 8, "imageUrl": "ANkyJ2Yn", "smallImageUrl": "vyj1uca7", "width": 59}], "localizations": {"Om7z7Bao": {"description": "hOwTfa31", "title": "VLCuMaLU"}, "vqPdr1Ve": {"description": "SYvCUVT7", "title": "5vZ4qri8"}, "ssHO2DuX": {"description": "pEch15cl", "title": "oQtEw8nF"}}, "name": "i2Lfddyd", "start": "1986-04-20T00:00:00Z", "tierItemId": "3dAvx20b"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PDpoScLq' \
    --body '{"end": "1984-12-25T00:00:00Z", "name": "a9E8SyRp", "start": "1989-09-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'bxi4nCYm' \
    > test.out 2>&1
eval_tap $? 9 'QueryPasses' test.out

#- 10 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId '4dnUfQss' \
    --body '{"autoEnroll": true, "code": "RgOdnZkM", "displayOrder": 67, "images": [{"as": "trKdnIER", "caption": "TCAjioR2", "height": 82, "imageUrl": "jux6E25X", "smallImageUrl": "vYET4s12", "width": 86}, {"as": "4j4LYI3P", "caption": "cpTVf2d3", "height": 76, "imageUrl": "hFIDJ48w", "smallImageUrl": "Bm5wAdZ6", "width": 96}, {"as": "l7QhHOle", "caption": "nxuTnwpX", "height": 23, "imageUrl": "xlkkBtqx", "smallImageUrl": "bw3uKv54", "width": 43}], "localizations": {"kIbrFZgC": {"description": "KTnZqZiq", "title": "Fgkr9Cuf"}, "k4ZMnegd": {"description": "PzVirUj0", "title": "vBDOMRnf"}, "pQRm05C0": {"description": "9Mpq2Gwm", "title": "dnZ9Ls7H"}}, "passItemId": "9dHGRQIt"}' \
    > test.out 2>&1
eval_tap $? 10 'CreatePass' test.out

#- 11 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'dYFPFJla' \
    --namespace $AB_NAMESPACE \
    --seasonId 'z2IzY50T' \
    > test.out 2>&1
eval_tap $? 11 'GetPass' test.out

#- 12 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'VTZQQm76' \
    --namespace $AB_NAMESPACE \
    --seasonId 'iIe4DszS' \
    > test.out 2>&1
eval_tap $? 12 'DeletePass' test.out

#- 13 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '2IHkiH3q' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pEk3wug9' \
    --body '{"autoEnroll": true, "displayOrder": 88, "images": [{"as": "r7XwTxju", "caption": "uld2eAHl", "height": 77, "imageUrl": "NKZzzGoH", "smallImageUrl": "igs7p3XX", "width": 61}, {"as": "qLqaUC50", "caption": "IrHkEcQX", "height": 3, "imageUrl": "qUubo5vT", "smallImageUrl": "hG26WU8z", "width": 9}, {"as": "XfrBtQ9u", "caption": "QGPqtls3", "height": 80, "imageUrl": "x2LaFIdN", "smallImageUrl": "brMgZllJ", "width": 49}], "localizations": {"NAEihUXl": {"description": "Aj7acmhW", "title": "LWRDwm6x"}, "iapad8uw": {"description": "ZtpVSthc", "title": "zFYzSgOl"}, "MqDXUHr9": {"description": "TyUMWSH1", "title": "OLqOpWuR"}}, "passItemId": "NDVo03HG"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdatePass' test.out

#- 14 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0nxqaQv6' \
    > test.out 2>&1
eval_tap $? 14 'PublishSeason' test.out

#- 15 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uZZIGvmu' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 15 'RetireSeason' test.out

#- 16 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZwAxklBX' \
    --q 'hEaqgnra' \
    > test.out 2>&1
eval_tap $? 16 'QueryRewards' test.out

#- 17 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '5cfqJpv2' \
    --body '{"code": "E7rSWIHw", "currency": {"currencyCode": "S5OPKEFn", "namespace": "FvqjVy5Y"}, "image": {"as": "hAU62ECn", "caption": "1roKiM4X", "height": 46, "imageUrl": "6IYzuTYf", "smallImageUrl": "jDbel9s8", "width": 58}, "itemId": "aUAlTzUb", "quantity": 60, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateReward' test.out

#- 18 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'aHfYeIY8' \
    --namespace $AB_NAMESPACE \
    --seasonId 't4Jbh0Pv' \
    > test.out 2>&1
eval_tap $? 18 'GetReward' test.out

#- 19 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'rsWluyhx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'oxxfmHOw' \
    > test.out 2>&1
eval_tap $? 19 'DeleteReward' test.out

#- 20 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'RtJS3w32' \
    --namespace $AB_NAMESPACE \
    --seasonId 'eCkzxlrr' \
    --body '{"currency": {"currencyCode": "edylSUNf", "namespace": "1jejfGDS"}, "image": {"as": "AeedWQ2O", "caption": "Dph3b00C", "height": 26, "imageUrl": "tWuscNkT", "smallImageUrl": "T4dBiUUU", "width": 85}, "itemId": "xJWwrd6Z", "nullFields": ["qO0GZBzv", "Qq7bihfz", "VymfaiAI"], "quantity": 41, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateReward' test.out

#- 21 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'rt5jM6a7' \
    --limit '80' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 21 'QueryTiers' test.out

#- 22 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'N0DP2ISC' \
    --body '{"index": 72, "quantity": 3, "tier": {"requiredExp": 65, "rewards": {"RJCeHkLH": ["DwbCJFLg", "TnJrql4g", "0Cl91buV"], "S0YwZ1oF": ["ZteW0CFX", "Cp9QeRzT", "gtC7UZWJ"], "lERc78tO": ["NkAavQXx", "o7HJH0IQ", "uRo520iT"]}}}' \
    > test.out 2>&1
eval_tap $? 22 'CreateTier' test.out

#- 23 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'MYIzda1J' \
    --namespace $AB_NAMESPACE \
    --seasonId 'qRokVzgL' \
    --body '{"requiredExp": 35, "rewards": {"aQRTkJZc": ["fXezipab", "8rRY2VX3", "tnfHJAtb"], "xjB0Svkq": ["DBCQoquZ", "gjp9WsUU", "f0ViJXB1"], "EUqTHxiJ": ["tberWSHp", "IiGabC1U", "ICHiF8wH"]}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateTier' test.out

#- 24 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'fTwKVXDG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'GxeKblzq' \
    > test.out 2>&1
eval_tap $? 24 'DeleteTier' test.out

#- 25 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '4rQKoy4M' \
    --namespace $AB_NAMESPACE \
    --seasonId 'dYBy2mc4' \
    --body '{"newIndex": 12}' \
    > test.out 2>&1
eval_tap $? 25 'ReorderTier' test.out

#- 26 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JPfjoaM0' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 26 'UnpublishSeason' test.out

#- 27 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'ql8Utoxf' \
    --limit '77' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 27 'GetUserParticipatedSeasons' test.out

#- 28 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '8YloJJM2' \
    --body '{"exp": 4, "source": "SWEAT", "tags": ["9R6VlG8r", "0GyolTn1", "glZHU7JS"]}' \
    > test.out 2>&1
eval_tap $? 28 'GrantUserExp' test.out

#- 29 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'KfY6ZViT' \
    --body '{"passCode": "ecdDnvij", "passItemId": "w4rItDwi"}' \
    > test.out 2>&1
eval_tap $? 29 'GrantUserPass' test.out

#- 30 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'hNuGHDPg' \
    --passCodes '["XOTcK59c", "fuDe8ZR2", "jBQuumeZ"]' \
    > test.out 2>&1
eval_tap $? 30 'ExistsAnyPassByPassCodes' test.out

#- 31 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'wihwphzi' \
    > test.out 2>&1
eval_tap $? 31 'GetCurrentUserSeasonProgression' test.out

#- 32 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'ggedbVly' \
    --body '{"passItemId": "Yh8UPMiS", "tierItemCount": 69, "tierItemId": "J96TOAve"}' \
    > test.out 2>&1
eval_tap $? 32 'CheckSeasonPurchasable' test.out

#- 33 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'lNkqFpdy' \
    > test.out 2>&1
eval_tap $? 33 'ResetUserSeason' test.out

#- 34 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'pxf6k64V' \
    --body '{"count": 83, "source": "PAID_FOR", "tags": ["3qglp8lb", "aPgNFzC8", "umfEdjBw"]}' \
    > test.out 2>&1
eval_tap $? 34 'GrantUserTier' test.out

#- 35 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'gxKQA46g' \
    --from '42qPNp5p' \
    --limit '90' \
    --offset '84' \
    --seasonId 'SMEP1BOg' \
    --source 'PAID_FOR' \
    --tags '["2Uo4DPpI", "ozs5XW8i", "YywWjxbZ"]' \
    --to 'ZRCTKt85' \
    > test.out 2>&1
eval_tap $? 35 'QueryUserExpGrantHistory' test.out

#- 36 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'WlOx6OBh' \
    --seasonId 'IlfZXNsm' \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistoryTag' test.out

#- 37 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6YzcmCki' \
    --userId 'oEIxiWT4' \
    > test.out 2>&1
eval_tap $? 37 'GetUserSeason' test.out

#- 38 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'ABtnUD8K' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetCurrentSeason' test.out

#- 39 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'segRcvk3' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentUserSeason' test.out

#- 40 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'ssFmM2QV' \
    --body '{"passCode": "apmYsmUB", "rewardCode": "elzd0pA3", "tierIndex": 44}' \
    > test.out 2>&1
eval_tap $? 40 'PublicClaimUserReward' test.out

#- 41 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'LMSNuQ8D' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkClaimUserRewards' test.out

#- 42 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sVrvBIW9' \
    --userId 'Z6Ko618e' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE