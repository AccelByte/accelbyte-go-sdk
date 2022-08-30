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
echo "1..43"

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
    --limit '37' \
    --offset '89' \
    --status '["PUBLISHED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "YWcVlxfO", "defaultRequiredExp": 54, "draftStoreId": "pCCnKCP2", "end": "1995-11-09T00:00:00Z", "excessStrategy": {"currency": "koD89kVu", "method": "CURRENCY", "percentPerExp": 63}, "images": [{"as": "O7Uv7X3i", "caption": "7JBsgpts", "height": 76, "imageUrl": "zqV04ij9", "smallImageUrl": "lrFMspzb", "width": 78}, {"as": "5UdAJakt", "caption": "0DINdIAs", "height": 39, "imageUrl": "3HYMbRbj", "smallImageUrl": "v22tjPdN", "width": 28}, {"as": "v7I2oIUb", "caption": "qaRCQYon", "height": 92, "imageUrl": "K2DqD7Cb", "smallImageUrl": "7TtFCkBF", "width": 20}], "localizations": {"bpVB5Hnh": {"description": "bKPp8zkX", "title": "8agoL0yg"}, "sKplsSJa": {"description": "uG8n2Zt4", "title": "GA4ctGbk"}, "IaEjN3ms": {"description": "Npt77mXr", "title": "U1YWNKmp"}}, "name": "SXST4yfZ", "start": "1972-11-28T00:00:00Z", "tierItemId": "yhJU0DPe"}' \
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
    --seasonId 'wTeq8Oo5' \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1UMJpfs3' \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PugYSNEe' \
    --body '{"autoClaim": true, "defaultLanguage": "Q8fIZtRZ", "defaultRequiredExp": 22, "draftStoreId": "nfDnNUjQ", "end": "1995-01-22T00:00:00Z", "excessStrategy": {"currency": "9yaaVSwb", "method": "CURRENCY", "percentPerExp": 77}, "images": [{"as": "hTqaqffd", "caption": "z7ZzuYQw", "height": 14, "imageUrl": "aqERSWpB", "smallImageUrl": "vvx9gGq7", "width": 36}, {"as": "qu6po5lA", "caption": "BNWD9qSD", "height": 25, "imageUrl": "lNqc1OF4", "smallImageUrl": "L1lqZmCh", "width": 18}, {"as": "NiPdTphU", "caption": "pXKE67C1", "height": 20, "imageUrl": "L8x4WdWZ", "smallImageUrl": "9Fwk3jAX", "width": 91}], "localizations": {"61cszgJf": {"description": "qIsWMhhI", "title": "XUYxP06d"}, "JceCljvC": {"description": "cBvTpZ6D", "title": "Z8evRily"}, "1XarJQkr": {"description": "q0yFhUvY", "title": "POYeW5x1"}}, "name": "WXUWOwtS", "start": "1980-04-28T00:00:00Z", "tierItemId": "VWDc3mU1"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PKsO5tXQ' \
    --body '{"end": "1988-05-11T00:00:00Z", "name": "lPspbyMA", "start": "1985-03-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'zsLHWdsB' \
    > test.out 2>&1
eval_tap $? 9 'GetFullSeason' test.out

#- 10 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'nekE82I9' \
    > test.out 2>&1
eval_tap $? 10 'QueryPasses' test.out

#- 11 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'x2ChHIRn' \
    --body '{"autoEnroll": false, "code": "nka5PzDR", "displayOrder": 23, "images": [{"as": "8yr5zRSi", "caption": "UaIZkKwE", "height": 44, "imageUrl": "KJOFZyVy", "smallImageUrl": "X4vNI9sE", "width": 33}, {"as": "KNRxiO39", "caption": "17ry1YkD", "height": 32, "imageUrl": "y4BY0cYC", "smallImageUrl": "3cQqeBar", "width": 2}, {"as": "v5WhlGSg", "caption": "T0X3ZvNc", "height": 8, "imageUrl": "1RRPZpHN", "smallImageUrl": "qEFkT8Lz", "width": 94}], "localizations": {"1aXm4aYn": {"description": "t38hQFwu", "title": "SW2wirjL"}, "dsWplOku": {"description": "jHd3Ot10", "title": "IiniGBnx"}, "aAvXdvcW": {"description": "hKcObpSd", "title": "r7r2jq83"}}, "passItemId": "YveBWuUp"}' \
    > test.out 2>&1
eval_tap $? 11 'CreatePass' test.out

#- 12 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'eDqi0UDB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'piYUEc1g' \
    > test.out 2>&1
eval_tap $? 12 'GetPass' test.out

#- 13 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '6rmhrTA9' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ee4izKD1' \
    > test.out 2>&1
eval_tap $? 13 'DeletePass' test.out

#- 14 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'G4uacCKj' \
    --namespace $AB_NAMESPACE \
    --seasonId '49QqibRa' \
    --body '{"autoEnroll": true, "displayOrder": 36, "images": [{"as": "TYoZpN94", "caption": "IQo5ICE1", "height": 4, "imageUrl": "RsLKHPmo", "smallImageUrl": "6o5Bpjdy", "width": 86}, {"as": "wM1eOauo", "caption": "SgQiksAi", "height": 63, "imageUrl": "yRe4pV4I", "smallImageUrl": "hProLaCj", "width": 16}, {"as": "k6PedKCe", "caption": "LRC80WGY", "height": 24, "imageUrl": "ZZOgpntt", "smallImageUrl": "ZwQExhwW", "width": 68}], "localizations": {"RJApSulp": {"description": "tWFCKh24", "title": "XMdb4wg6"}, "HVWm6uby": {"description": "hEpCw0eE", "title": "XJmP7i3B"}, "08z6YxNG": {"description": "qIUMF58I", "title": "7mnb9yo2"}}, "passItemId": "HaJ8w2bb"}' \
    > test.out 2>&1
eval_tap $? 14 'UpdatePass' test.out

#- 15 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6Wm5rQ2n' \
    > test.out 2>&1
eval_tap $? 15 'PublishSeason' test.out

#- 16 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QayYsoTq' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 16 'RetireSeason' test.out

#- 17 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'r4FLw2M7' \
    --q 'hKLlfHGS' \
    > test.out 2>&1
eval_tap $? 17 'QueryRewards' test.out

#- 18 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'kJA3BVSF' \
    --body '{"code": "zQOJ7RmI", "currency": {"currencyCode": "HPi5Oi1y", "namespace": "FmUy8FLD"}, "image": {"as": "dwyZu19r", "caption": "gF73Ui6m", "height": 32, "imageUrl": "aLAZrw4O", "smallImageUrl": "yQpi5XhD", "width": 15}, "itemId": "vv6kLfUa", "quantity": 8, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateReward' test.out

#- 19 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'hABIn1Yy' \
    --namespace $AB_NAMESPACE \
    --seasonId 'lSbsUEnR' \
    > test.out 2>&1
eval_tap $? 19 'GetReward' test.out

#- 20 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'kBsiabQa' \
    --namespace $AB_NAMESPACE \
    --seasonId 'yIDVB3UD' \
    > test.out 2>&1
eval_tap $? 20 'DeleteReward' test.out

#- 21 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'OwCoFC3x' \
    --namespace $AB_NAMESPACE \
    --seasonId 'mWP5V8gr' \
    --body '{"currency": {"currencyCode": "9XJGLZ1b", "namespace": "dAM2ApFs"}, "image": {"as": "rau5m8pC", "caption": "ZkF90h8o", "height": 33, "imageUrl": "mZeJyNbw", "smallImageUrl": "SwOxiHd1", "width": 89}, "itemId": "DwHgnsEj", "nullFields": ["AvSCgtij", "aW1zlngh", "2CJR6t8D"], "quantity": 13, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateReward' test.out

#- 22 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '1HugqOi1' \
    --limit '52' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 22 'QueryTiers' test.out

#- 23 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '2rd3VOq8' \
    --body '{"index": 53, "quantity": 19, "tier": {"requiredExp": 93, "rewards": {"LvKB04vy": ["rD9gDigZ", "cddjgWKf", "YY1Qw9yu"], "LvagcAWT": ["9rZRNEgT", "CW04WbrB", "cZoIC6Zw"], "HXt6Hlhj": ["oV6ywsrx", "CdabUPZ9", "nK0e6kU4"]}}}' \
    > test.out 2>&1
eval_tap $? 23 'CreateTier' test.out

#- 24 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'V6p805x2' \
    --namespace $AB_NAMESPACE \
    --seasonId 'khK9wYjJ' \
    --body '{"requiredExp": 35, "rewards": {"642zqFCQ": ["Flrg12Vf", "70XbtF85", "aqvgYY6o"], "5tzGeg2z": ["PEHKjbdJ", "s8fN8Nes", "XZEu5BMb"], "UGnt34ZT": ["dqeUSgTj", "rlRPIlde", "AUcTr96G"]}}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateTier' test.out

#- 25 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'YBdoXHgI' \
    --namespace $AB_NAMESPACE \
    --seasonId '9E3JberS' \
    > test.out 2>&1
eval_tap $? 25 'DeleteTier' test.out

#- 26 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'j9fH9Crx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jXIETwoT' \
    --body '{"newIndex": 78}' \
    > test.out 2>&1
eval_tap $? 26 'ReorderTier' test.out

#- 27 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KCt0T1Xg' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 27 'UnpublishSeason' test.out

#- 28 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'tRUtUmqs' \
    --limit '23' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 28 'GetUserParticipatedSeasons' test.out

#- 29 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'IKalkShG' \
    --body '{"exp": 29, "source": "SWEAT", "tags": ["ckWRaHJW", "Iacdo2Pe", "UUlAfnfa"]}' \
    > test.out 2>&1
eval_tap $? 29 'GrantUserExp' test.out

#- 30 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'bOACxkGJ' \
    --body '{"passCode": "ZQCPYJz2", "passItemId": "eAgsS9T9"}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserPass' test.out

#- 31 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'Bil0DsYz' \
    --passCodes '["KRZdCfr6", "L0zHS0cl", "0cvPs9oV"]' \
    > test.out 2>&1
eval_tap $? 31 'ExistsAnyPassByPassCodes' test.out

#- 32 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '2xOuzWzX' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentUserSeasonProgression' test.out

#- 33 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'aHHD6WQH' \
    --body '{"passItemId": "cFaEtArq", "tierItemCount": 86, "tierItemId": "XoLlbQbz"}' \
    > test.out 2>&1
eval_tap $? 33 'CheckSeasonPurchasable' test.out

#- 34 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'KJXcxSfn' \
    > test.out 2>&1
eval_tap $? 34 'ResetUserSeason' test.out

#- 35 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'bGU2UORU' \
    --body '{"count": 83, "source": "SWEAT", "tags": ["7w11yHwM", "c5dquDkJ", "cP1N2MxP"]}' \
    > test.out 2>&1
eval_tap $? 35 'GrantUserTier' test.out

#- 36 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'fVxqiLIn' \
    --from 'wL2SK3Uk' \
    --limit '47' \
    --offset '9' \
    --seasonId 'SpTO9L2J' \
    --source 'PAID_FOR' \
    --tags '["pwOmocvz", "a1iBz4Oo", "xbenqsXA"]' \
    --to 'Nl8LfDQt' \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistory' test.out

#- 37 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'zBnLZmH3' \
    --seasonId 'X62TqjVb' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistoryTag' test.out

#- 38 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KBDBWWFE' \
    --userId 'ogz4iulY' \
    > test.out 2>&1
eval_tap $? 38 'GetUserSeason' test.out

#- 39 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'H9z5Mmic' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentSeason' test.out

#- 40 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '1gJpPrFL' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentUserSeason' test.out

#- 41 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'ggaWgk4C' \
    --body '{"passCode": "efATTRi8", "rewardCode": "F3fV3VyP", "tierIndex": 21}' \
    > test.out 2>&1
eval_tap $? 41 'PublicClaimUserReward' test.out

#- 42 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'OlYhu4XR' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkClaimUserRewards' test.out

#- 43 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9pPdHTpI' \
    --userId 'sR5Hff18' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE