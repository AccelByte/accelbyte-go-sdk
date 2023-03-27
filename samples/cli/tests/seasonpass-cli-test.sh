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
    --limit '21' \
    --offset '61' \
    --status '["DRAFT", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "BwCQ4BV7", "defaultRequiredExp": 94, "draftStoreId": "fWP5xOzd", "end": "1981-03-18T00:00:00Z", "excessStrategy": {"currency": "95sXHRQ0", "method": "CURRENCY", "percentPerExp": 63}, "images": [{"as": "Ck2zkmNb", "caption": "vXaP2xcH", "height": 41, "imageUrl": "rpAvFqvU", "smallImageUrl": "fXtRWXEG", "width": 15}, {"as": "swbNAM8l", "caption": "TDPnKD5f", "height": 3, "imageUrl": "Xh1UFXzD", "smallImageUrl": "35Py29W7", "width": 100}, {"as": "qTCASrHH", "caption": "RueKz2Mr", "height": 52, "imageUrl": "sqgPsmb7", "smallImageUrl": "WI8AwaeN", "width": 48}], "localizations": {"Vr7o66t5": {"description": "JXiCQJjB", "title": "AB7qMPA7"}, "ic9mZYld": {"description": "ZtBEuWaX", "title": "BxiC7xzM"}, "2Y1D4KHw": {"description": "CClmKoE3", "title": "h1ekCJ4o"}}, "name": "xc9We7Oa", "start": "1986-02-03T00:00:00Z", "tierItemId": "MWvC6yto"}' \
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
    --body '{"userIds": ["N8sVdSEU", "Sy0n2JCI", "fesMUPIo"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ajfawYQ4' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'itUX6XJ8' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jc8iLbiY' \
    --body '{"autoClaim": true, "defaultLanguage": "tf56oIH6", "defaultRequiredExp": 8, "draftStoreId": "ho61mCgI", "end": "1977-02-19T00:00:00Z", "excessStrategy": {"currency": "YyQKswjc", "method": "NONE", "percentPerExp": 83}, "images": [{"as": "YJENIbQx", "caption": "p1y91aKe", "height": 59, "imageUrl": "BAdtb7ba", "smallImageUrl": "CliHeL2H", "width": 5}, {"as": "D174AABd", "caption": "clHwqf3B", "height": 39, "imageUrl": "XDF88s21", "smallImageUrl": "SJrzl5et", "width": 23}, {"as": "t1b4Q3ub", "caption": "hpVktdpA", "height": 64, "imageUrl": "F46wImZH", "smallImageUrl": "UZR87wo1", "width": 45}], "localizations": {"daFBZxFe": {"description": "prSAzorw", "title": "p4tBHDNp"}, "KLr1JXLx": {"description": "eRVPN5yz", "title": "Qyn8m0gp"}, "lVcJJXbP": {"description": "WkAqVTn2", "title": "48yE0L2f"}}, "name": "lbHx6Tk0", "start": "1994-04-18T00:00:00Z", "tierItemId": "oUgm8Jra"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FocPXPFH' \
    --body '{"end": "1974-12-24T00:00:00Z", "name": "1eMJajdv", "start": "1986-07-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vzT30ylQ' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'cEmu7zYC' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'jWHtsjJz' \
    --body '{"autoEnroll": false, "code": "Dkh6aEM0", "displayOrder": 90, "images": [{"as": "nomOifDR", "caption": "vzP28HcU", "height": 8, "imageUrl": "hUnrG3J9", "smallImageUrl": "AWssWDxn", "width": 57}, {"as": "B9rcnoay", "caption": "Pw4CQkq0", "height": 31, "imageUrl": "Doxbce1r", "smallImageUrl": "Ofb1Bab3", "width": 94}, {"as": "mmLON7JE", "caption": "rYBtR8Ab", "height": 21, "imageUrl": "V1x1TsS9", "smallImageUrl": "tlR969bL", "width": 54}], "localizations": {"prQRiWu4": {"description": "MKGxtTI8", "title": "jNzNzrGB"}, "AOrzPgPx": {"description": "89UxVeFx", "title": "UzVP9u79"}, "JMcublEx": {"description": "6wuw1Af4", "title": "XXQI1vJw"}}, "passItemId": "VNUAkDdn"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'iOoxp0M6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'UCqklmMt' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'N5jfraUz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'fe9v4Jqh' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'nwVpphBW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'fodaYROk' \
    --body '{"autoEnroll": false, "displayOrder": 77, "images": [{"as": "np83FmsE", "caption": "uBoUXrvR", "height": 6, "imageUrl": "x0MOOTIk", "smallImageUrl": "Oibc97Vr", "width": 49}, {"as": "woTVE9XO", "caption": "Pu6ejXNA", "height": 56, "imageUrl": "fA9mACg6", "smallImageUrl": "dlKNdkOI", "width": 89}, {"as": "HYoAF9GI", "caption": "JxmulSRK", "height": 100, "imageUrl": "hhshR65W", "smallImageUrl": "T1ULqg98", "width": 8}], "localizations": {"sODnFL7M": {"description": "AxIWlHpx", "title": "97ZgRh0X"}, "SY1fUp3v": {"description": "2uDcf20f", "title": "i5ic1QRj"}, "Wvfwq7Y6": {"description": "twbOi7aF", "title": "vLd5pY9r"}}, "passItemId": "DS2TrHBy"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ISZHdcmF' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'onBGyPdc' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'S3QJkGXT' \
    --q 'EGIZE7hf' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'ocShSwhh' \
    --body '{"code": "9T86EZ4b", "currency": {"currencyCode": "lsT1FbuT", "namespace": "3CcSadFi"}, "image": {"as": "OuyyRV4Q", "caption": "DegFff3O", "height": 55, "imageUrl": "21j2INRG", "smallImageUrl": "PnJ5AKWP", "width": 91}, "itemId": "IJgcIkjU", "quantity": 50, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'g55qTBcu' \
    --namespace $AB_NAMESPACE \
    --seasonId 'MSGkYFyv' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'yLo5Nkdp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'vBqaQOqp' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'jd0di6s3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XXnjkbbP' \
    --body '{"currency": {"currencyCode": "O3chVsoJ", "namespace": "1WJxtG2J"}, "image": {"as": "JfwzbO7g", "caption": "TNVYoOPt", "height": 10, "imageUrl": "w5pfF33U", "smallImageUrl": "rFdjitla", "width": 27}, "itemId": "9s3vjiiq", "nullFields": ["k4RZhLJQ", "kx1SkYKl", "pK5M6l54"], "quantity": 79, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '3z8ovHpE' \
    --limit '53' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'jWgXX1mv' \
    --body '{"index": 40, "quantity": 3, "tier": {"requiredExp": 23, "rewards": {"2GotiXyr": ["rJHlVT3w", "xbicS7bp", "kLxnDe0K"], "tZ6kx1hl": ["mp5V7YbL", "tUJlX1A2", "UZXjff9A"], "TBF8h7Dk": ["SPTVki1B", "L547fRZZ", "4WdoAYDh"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'fbCf1TFe' \
    --namespace $AB_NAMESPACE \
    --seasonId 'd29su0UJ' \
    --body '{"requiredExp": 59, "rewards": {"UDFsyb1K": ["PNurGLVO", "z9mWW7O2", "3vSy8qBb"], "tyR1FFxE": ["JR6Zvfdl", "Z0Jz0pq6", "VnDFe661"], "gV6rkT4w": ["3sP88hPj", "EbwF1l20", "HU4JCL6g"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'jTqU0kFP' \
    --namespace $AB_NAMESPACE \
    --seasonId 'hRT42Aso' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '0wuURiSw' \
    --namespace $AB_NAMESPACE \
    --seasonId 'cpcUyeIN' \
    --body '{"newIndex": 98}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YqwmPuML' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'xcKLWrvU' \
    --limit '49' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'M9nu89V1' \
    --body '{"exp": 6, "source": "SWEAT", "tags": ["hm2nynVS", "NNgbhJb2", "IjIOmiPB"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'g2bQtaUN' \
    --body '{"passCode": "T7APF9Bi", "passItemId": "WyMyZokR"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId '0V5Dj4Ml' \
    --passCodes '["PWD8lutS", "uqxgDnYv", "QtOvFnWi"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'lCEozTA2' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'tgL3frvK' \
    --body '{"passItemId": "OVwwi0t4", "tierItemCount": 4, "tierItemId": "jsI0dwMo"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '6rFEFLgn' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'CBHiWDJr' \
    --body '{"count": 74, "source": "PAID_FOR", "tags": ["NCCm0J7a", "6ZNMKIP3", "YCQeRPpr"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '4UpVaRTa' \
    --from '9SDLzNW8' \
    --limit '24' \
    --offset '82' \
    --seasonId 'kXI6P0T0' \
    --source 'PAID_FOR' \
    --tags '["HuggFaD5", "z5XEwOeI", "2EtdGpAj"]' \
    --to 'FGuPalHo' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'A7GFJfrR' \
    --seasonId '1AlCXLtS' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'abiuReKj' \
    --userId 'FWYnHWfw' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'hKOFRfL9' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'f63iDo6S' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'hKPLvxJ4' \
    --body '{"passCode": "LntHOM2r", "rewardCode": "a0pR385L", "tierIndex": 16}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'EG5aUpgl' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lxat3SGr' \
    --userId 'K4rfccDs' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE