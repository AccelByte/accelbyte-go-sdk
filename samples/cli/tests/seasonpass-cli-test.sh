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
    --limit '44' \
    --offset '81' \
    --status '["RETIRED", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "abhyNB7T", "defaultRequiredExp": 69, "draftStoreId": "kZjBOy4r", "end": "1975-11-11T00:00:00Z", "excessStrategy": {"currency": "ILGaypI5", "method": "CURRENCY", "percentPerExp": 39}, "images": [{"as": "6HO0GcKQ", "caption": "hGNEUd27", "height": 40, "imageUrl": "6zlWy4Id", "smallImageUrl": "TYw4Ikkl", "width": 88}, {"as": "Sh3CqA0X", "caption": "FkAWB4vv", "height": 19, "imageUrl": "8Av7YX00", "smallImageUrl": "mububRiM", "width": 51}, {"as": "YnZuEq9b", "caption": "0IXGeVmV", "height": 86, "imageUrl": "dZPqv1TN", "smallImageUrl": "OB1JobPb", "width": 84}], "localizations": {"kHDmrVax": {"description": "lQL1y3Qc", "title": "VJPlVM1L"}, "1yJUbRof": {"description": "HUq60CRv", "title": "XM00ejiz"}, "bCe1xbBw": {"description": "WuwWrdYn", "title": "AUqStp1J"}}, "name": "xfN6O12B", "start": "1978-08-10T00:00:00Z", "tierItemId": "pvoc1YKq"}' \
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
    --body '{"userIds": ["y1woNIDS", "GoPvg5Ex", "kPMX3nXN"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NGw1Fciy' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Lszz1nwO' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'K0rfazqT' \
    --body '{"autoClaim": false, "defaultLanguage": "a5l1e0iu", "defaultRequiredExp": 90, "draftStoreId": "YPkZcjNm", "end": "1983-10-30T00:00:00Z", "excessStrategy": {"currency": "n44MjyIJ", "method": "CURRENCY", "percentPerExp": 13}, "images": [{"as": "l3ZmOGnP", "caption": "nqAoYHfv", "height": 30, "imageUrl": "Vld0lnk4", "smallImageUrl": "P1R7oD4o", "width": 5}, {"as": "Adaai5XO", "caption": "sO8NcDtP", "height": 5, "imageUrl": "VFl249bD", "smallImageUrl": "u23bRVDU", "width": 23}, {"as": "HkHLrtvM", "caption": "itnJUJfA", "height": 90, "imageUrl": "T13kBf3N", "smallImageUrl": "WQY8Vyy5", "width": 22}], "localizations": {"NKQI8mbE": {"description": "E7z9yw7n", "title": "s6D65rC7"}, "37SC4EOK": {"description": "RMEwUJe0", "title": "FPbVfktJ"}, "RWkT4PDU": {"description": "Qnt8b42Q", "title": "Y9WXi77x"}}, "name": "cmL1lZ13", "start": "1977-04-22T00:00:00Z", "tierItemId": "k3VBeWPg"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'SezeX73k' \
    --body '{"end": "1999-06-26T00:00:00Z", "name": "hZ4JLerS", "start": "1983-04-21T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rWWeJoAT' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'CaraOR4i' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'UQgV3FAz' \
    --body '{"autoEnroll": false, "code": "wDLmr8pb", "displayOrder": 12, "images": [{"as": "yx3CdPm2", "caption": "t3o038IO", "height": 18, "imageUrl": "gz86StuS", "smallImageUrl": "G1H0Jj83", "width": 32}, {"as": "ItApRt3e", "caption": "C6vk7OWu", "height": 70, "imageUrl": "RopWdP18", "smallImageUrl": "qFG61LeA", "width": 73}, {"as": "dhfsxqyC", "caption": "2hLPoDdy", "height": 44, "imageUrl": "v04PyrFI", "smallImageUrl": "ujq8gjVK", "width": 52}], "localizations": {"7h9tVfYQ": {"description": "8X5rwcZV", "title": "h02ZM6O9"}, "Omsen2v8": {"description": "b9wmENvz", "title": "izYjUKdm"}, "2Cbt9MLr": {"description": "bP89nd66", "title": "QA4OzsRh"}}, "passItemId": "g05TGnEc"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'aRQvU2V3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kGlh02d8' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'bYyWnGp5' \
    --namespace $AB_NAMESPACE \
    --seasonId 'FyZMKxaR' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'OTi8g42c' \
    --namespace $AB_NAMESPACE \
    --seasonId 'vh3pwyDB' \
    --body '{"autoEnroll": false, "displayOrder": 64, "images": [{"as": "jySpKxHD", "caption": "3gsIZAfy", "height": 77, "imageUrl": "eIQzDIHB", "smallImageUrl": "XsQS9i20", "width": 12}, {"as": "pn9w0idj", "caption": "KXzdNRDq", "height": 22, "imageUrl": "sE369xFl", "smallImageUrl": "u8aR2kBD", "width": 52}, {"as": "vbdLrYC6", "caption": "Sm7KRufy", "height": 0, "imageUrl": "HMZuteyK", "smallImageUrl": "kxbm0Lxz", "width": 59}], "localizations": {"w68n58nC": {"description": "LUIDxCBV", "title": "bqbYsrq0"}, "oUfQAgIB": {"description": "UbJAmtf6", "title": "iK0rpVC6"}, "PfnNwlIi": {"description": "lfwrXoS3", "title": "amst3Gvm"}}, "passItemId": "pPLaCMLJ"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '81yEyWJw' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PiH2VBTL' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'yOWKop1T' \
    --q 'kyYfPCZU' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'KNyJH9KA' \
    --body '{"code": "k9twkLdF", "currency": {"currencyCode": "UZGBOSqy", "namespace": "75atRG6h"}, "image": {"as": "oNcbcaZ4", "caption": "KeibKYtf", "height": 72, "imageUrl": "cxD5oG6C", "smallImageUrl": "eZJEy6rU", "width": 18}, "itemId": "4sB1ruTP", "quantity": 62, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'V7GF5cwK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LTz4kOZh' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'w7elLnRh' \
    --namespace $AB_NAMESPACE \
    --seasonId 'GwQ1icfe' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'ih2eQAhB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kaY0askm' \
    --body '{"currency": {"currencyCode": "BiXpIOD4", "namespace": "oD3Q8Vz0"}, "image": {"as": "dAmWpOca", "caption": "ouIteU4x", "height": 94, "imageUrl": "qxiQ0yqr", "smallImageUrl": "SouFpUIX", "width": 57}, "itemId": "sKwJwJ9B", "nullFields": ["sJyhVs4m", "SzedACOS", "OhuRx0cc"], "quantity": 29, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'I3dvqzXI' \
    --limit '86' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'apqP68WX' \
    --body '{"index": 32, "quantity": 49, "tier": {"requiredExp": 99, "rewards": {"CDUWaD8Q": ["YlRnBCFO", "0zoK6xwx", "O9JSbHx0"], "yQx6bRQE": ["4IdeEXuw", "qzPCOKf8", "rq9wihvQ"], "qH5igKfJ": ["LP44tp18", "infYEkmE", "yBUchpcA"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'rhCcNxFy' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TLjedEp5' \
    --body '{"requiredExp": 92, "rewards": {"CaXWtCk7": ["8D0Ume3Y", "rAE9xSo4", "04kiM1KZ"], "dKszcFGp": ["cCMDHdG6", "uSAtCHvi", "egmPorMN"], "9JalSxqb": ["bA7u6VbR", "FBLZ3ub8", "cvmo7TiL"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'zalm8gug' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pPEtxZ2y' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'FfjDuTTp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'axXlMGXN' \
    --body '{"newIndex": 13}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AUcyyOJn' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'uAg3bmgJ' \
    --limit '20' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'ukRo1oNs' \
    --body '{"exp": 21, "source": "SWEAT", "tags": ["OykT0jgb", "AC0xiUgF", "GRCKXa3Z"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'AzmlzCgn' \
    --body '{"passCode": "zRyyyvs4", "passItemId": "YUoULgnV"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'ahiGKDx3' \
    --passCodes '["intJKnUU", "k7Cerp7w", "7X8a3N2t"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'vmK0I0uI' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'uTNYuKPS' \
    --body '{"passItemId": "cPTgpYzC", "tierItemCount": 26, "tierItemId": "hEoXrSfO"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'ivDZ4bHU' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'TN68k639' \
    --body '{"count": 45, "source": "PAID_FOR", "tags": ["BwTYJZef", "OE14Mgto", "NxPGOCh3"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'gfWDqhnd' \
    --from 'e15RVjHh' \
    --limit '64' \
    --offset '89' \
    --seasonId 'fHGuE09f' \
    --source 'PAID_FOR' \
    --tags '["X05LLNRm", "irFwkxhf", "Y3BUEG9p"]' \
    --to 'uOQF1i5V' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'FvpdXBCh' \
    --seasonId 'I4Y5dKz7' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FWVZYBCQ' \
    --userId 'Hh53eR3B' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'Blrqu3u0' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'HUkGqFc6' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'WUFUWPui' \
    --body '{"passCode": "idFCCZ87", "rewardCode": "niAPsbsc", "tierIndex": 30}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'YJAwjdCH' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9OALGPMV' \
    --userId 'ajGk9t89' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE