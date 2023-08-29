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
    --limit '15' \
    --offset '97' \
    --status '["PUBLISHED", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "85n0gTT8MueVVssR", "defaultRequiredExp": 56, "draftStoreId": "nAPbGirxzC7SYOkr", "end": "1971-03-30T00:00:00Z", "excessStrategy": {"currency": "XIF2XKQf1hI46DIe", "method": "CURRENCY", "percentPerExp": 59}, "images": [{"as": "BCTj58U9qtkGZ7Zq", "caption": "bHDn1JVCBg1U4UuH", "height": 100, "imageUrl": "W0oR9QZhT8En0hkT", "smallImageUrl": "thsj8fjiTNJhHKmT", "width": 17}, {"as": "DrYJxZ8hSKYWKDOD", "caption": "1u8eE5SGaABjrrm7", "height": 67, "imageUrl": "u3PO6FeEemrM9IhI", "smallImageUrl": "2wVMt4lnqanZHfkx", "width": 15}, {"as": "iKSKuaeKbAA5KE4w", "caption": "w7Gs9pzTlqm8W56v", "height": 74, "imageUrl": "qNiBY57wvH7Z4Ajf", "smallImageUrl": "Bba6LhuolUe8wM8Y", "width": 56}], "localizations": {"aKa2ilgsFlh0UmEY": {"description": "4VUJ3tuQ7zHNr4b6", "title": "zcXqJQ0UjcxV5GtQ"}, "g4gpn70JcWgJbvi2": {"description": "TIIshtfY1SSZSxUe", "title": "NWjpBrLL34b0dMSc"}, "aocTCoIGGog9iZfu": {"description": "gUmRaRlyY8kOSdZv", "title": "UxOMYYM4BUMeXOGc"}}, "name": "QpojgLcm3GEeoeSU", "start": "1985-04-29T00:00:00Z", "tierItemId": "NVBhJCqAtMuAH4nw"}' \
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
    --body '{"userIds": ["KkuZD7CQmgBFocUQ", "aDqQZJZzq2xWJeJE", "aNsSdYfHpucRqUhr"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1MYby8xc89i46kAM' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qxX1OaLztbVsOzM5' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KCqXHWoCobrtVGtF' \
    --body '{"autoClaim": false, "defaultLanguage": "aAuHuuW5hOImg9yG", "defaultRequiredExp": 61, "draftStoreId": "WTJlC1TQTuUA8EIH", "end": "1993-10-03T00:00:00Z", "excessStrategy": {"currency": "1t68cB0stbfqijdw", "method": "NONE", "percentPerExp": 84}, "images": [{"as": "QFdpYpnbGmQh0bFc", "caption": "zI757fvNbVHr0EJ7", "height": 41, "imageUrl": "ax9lIjjPVwdt5B3C", "smallImageUrl": "ePOixEPXMm4XQAsK", "width": 61}, {"as": "zeoGlaV1ORkb3JOC", "caption": "D2Htlosigqwazd7H", "height": 96, "imageUrl": "lqT0wdSrN99lUkcS", "smallImageUrl": "iEQKeF4XTp9qxX5s", "width": 88}, {"as": "RHgGmo6qBbjtoKcT", "caption": "4bte7FOF8kXgQawu", "height": 70, "imageUrl": "gowzw7zumfxHk4Ml", "smallImageUrl": "uWP2eWB4e4N8WeFX", "width": 70}], "localizations": {"32mOdBOVdrZpMChY": {"description": "H9lkwLNqJH6tuXQ2", "title": "XbsAa2Kgw5LrVxhI"}, "GK4uBTdaMq8Vjyf8": {"description": "dAMtDbD73MSnrvT4", "title": "QsyBdfLnZ9cvBBed"}, "2ttbaokYdU7xMOgM": {"description": "Kuuxk2dcTrvusBAS", "title": "VaGezys5RqDKvmxD"}}, "name": "478daXj1Cx1jb3Dv", "start": "1990-05-17T00:00:00Z", "tierItemId": "2GGglGnT8ncdt266"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'LVRqq2YELs0rZJRo' \
    --body '{"end": "1990-09-29T00:00:00Z", "name": "uewK4UgfZlo3mFpP", "start": "1979-05-10T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5OJpf1MvdO0gUZVi' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Oys45A7HBcBGe4WZ' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'KalQbKDPboaVlFEm' \
    --body '{"autoEnroll": false, "code": "8uGHJLBEsI1KegCw", "displayOrder": 88, "images": [{"as": "jcOnSzeytsUYioHh", "caption": "FIMAiQxZTdndsKkL", "height": 46, "imageUrl": "k22cRukEG0lSFVt8", "smallImageUrl": "RL66pvaekYrNSPQb", "width": 93}, {"as": "9ji9Puh3vbUfWNf1", "caption": "sVewMgtmpfi8v39r", "height": 47, "imageUrl": "PG50WcsYu5qqX9fb", "smallImageUrl": "bggoHzxs3MQIAXZ9", "width": 62}, {"as": "vfctvsYHpTLUCTxF", "caption": "shO4pscUaZjuurZQ", "height": 9, "imageUrl": "QsqbnI5q6YxpXExP", "smallImageUrl": "MHgtigponLH4x4L8", "width": 40}], "localizations": {"YBkrotlpmfWBK6j6": {"description": "jnn9afFxjSp7LO7F", "title": "Rv3TrK4NVinh9BVb"}, "unANucakfLUjJc0l": {"description": "fhWiMh0JeUCsxR4l", "title": "11pI5nn07SY4hMjT"}, "DB9RJh3oJxVPKnvM": {"description": "nCs9fuYwStSDihkQ", "title": "ZFAfd8gqVpohk7vt"}}, "passItemId": "N61bQettm3aMjZb6"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '8BbXW1agpmZGlnnq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'haEbJcuncDUZEHow' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'ThyAc21wuwnffO0I' \
    --namespace $AB_NAMESPACE \
    --seasonId 'A5M3oAXBNI2jUdN7' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'zbsg5iJIO8eqsL7J' \
    --namespace $AB_NAMESPACE \
    --seasonId 'YO3usT8ab4dGW6NF' \
    --body '{"autoEnroll": true, "displayOrder": 74, "images": [{"as": "DKq5YW0bUQFl9K9G", "caption": "Bk9JuGT39Z2HF8sd", "height": 16, "imageUrl": "B414CFiquG8rtLvR", "smallImageUrl": "hIV65zIyQS1VVQSd", "width": 4}, {"as": "W9yXgfbiemRqkO6A", "caption": "eFdCsGsIsCrpxsTo", "height": 2, "imageUrl": "iSnn3rTJdWYJOSoC", "smallImageUrl": "hKHSi0UWzkA21nOk", "width": 86}, {"as": "9oYoDcwHsxsaagXI", "caption": "kaJ6aZrt08oURdQ6", "height": 50, "imageUrl": "wPydZU621oc3Mc47", "smallImageUrl": "vbCR5Uf3SpAZt1Cg", "width": 11}], "localizations": {"70bNyUPC5BRuwYPs": {"description": "11Nx3kCWjbRV6m8y", "title": "OMmHWqSEzBBpOZZc"}, "aisPRmaIClP7ALle": {"description": "H9bGAxku8QlglYUq", "title": "no5q5oC2KyGtcaDs"}, "zzhmbJDqlGofGnL2": {"description": "TeTWhyw8LcipluK6", "title": "xqNkwLTK6lqdoIir"}}, "passItemId": "tayXhiS2Ru2gczUs"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'smgFstBtsr3nMToL' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MWKYy14RYhMVd3Ah' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'ORXrnohENUq4cmwi' \
    --q 'qJKaM5UTGgSBhlO9' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'eXTg3oPBIThUhP0y' \
    --body '{"code": "5E089djZvLyYOJF2", "currency": {"currencyCode": "2y2SH8lbGWSEC7Up", "namespace": "lu3Ty6Fr0SE14uav"}, "image": {"as": "YQNFqtLZcJiHwDFO", "caption": "1d4PJ6t7UgEA5b1E", "height": 39, "imageUrl": "okpuO1xnXuLrsoet", "smallImageUrl": "7684mvyXhYT4KN1d", "width": 86}, "itemId": "dNoQhUHtKSqVUgaD", "quantity": 39, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '0jPGkhZRKui7iwUp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'FPjfcfHOocCVi9Co' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '4NZsJIVhH3gdJJcr' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EIQJN6e750jxnYXW' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'YojzWxQeNGF4Sl7v' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pNSIHE4YQlvs5nTa' \
    --body '{"currency": {"currencyCode": "5Mw1eDIO3ftbZDuS", "namespace": "ofIDKMUO6eLe9U3w"}, "image": {"as": "ie77LnhBcFCQxBrI", "caption": "TwFMCbg2dj3KP6EF", "height": 10, "imageUrl": "OZY0pRZuwetcqfH4", "smallImageUrl": "dRUa0Bn5TxOeNTSo", "width": 34}, "itemId": "zfVx4t3eJPgQ8dyU", "nullFields": ["AGiY8KfwYM4qLXqV", "RHuRzgaYIey3abnT", "d58ZFFUsdvWU1sSb"], "quantity": 0, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'ktLdylwFjmvURdAI' \
    --limit '30' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'PuxW1oSmZlifdvCQ' \
    --body '{"index": 13, "quantity": 41, "tier": {"requiredExp": 5, "rewards": {"5rSEHjOZZX9sgHIR": ["eGNdUPY6Uioxczk1", "dTyyZgA0odFpHiKu", "I12XcGgGmEfVK10J"], "lsGplrlbDevooNCP": ["F6uzH5DeZMFigaK1", "0dTbh6ntEnbgDWzv", "0j6YT8A4YtXDvnNK"], "XB7Sps4z0TYC0BM4": ["OKTKJhuWyrqbWwiO", "j76McMOcIEc119cn", "7SFCYeKqUumauF0f"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'EDmKftmRDhgTthqi' \
    --namespace $AB_NAMESPACE \
    --seasonId 'IDHWL3tM2AP1pver' \
    --body '{"requiredExp": 67, "rewards": {"ZmInMGKTlg2f7r8r": ["EDVM75gDTdpFWucB", "N92Nkhbezxz1IHTS", "SjmaBPlYejzXVGdA"], "u6ISsbDOzZo8JbNa": ["2Q5c2i2SEiV55qiU", "laFO1ym72sxLKuSJ", "VixgAj46ZR7Xavan"], "InT3PLtytl054VEq": ["EDC34UAEgUnWwsaY", "opv5fMV9bguHsatE", "RVuLVHq06wx54d97"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'V4K4wia12Z0SxWap' \
    --namespace $AB_NAMESPACE \
    --seasonId 'JP96k8hzFCoOT0rO' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'o1mrSoV0DUk1v5WU' \
    --namespace $AB_NAMESPACE \
    --seasonId '7k48T9QaM46Je4oI' \
    --body '{"newIndex": 5}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Mzav2gXV55r8YiBc' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'ftifwdO4FqDFxfA6' \
    --limit '44' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'XLgP8qyDRRQbs1e4' \
    --body '{"exp": 76, "source": "PAID_FOR", "tags": ["QuG1dcj3iFcYxWGF", "Zci21FZuwOyi2LWD", "HUwILajsqbTlzeQU"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'RKx1xOq80lTqAWFW' \
    --body '{"passCode": "4qHHfrN9Rgs6lUjz", "passItemId": "lj5UfpEayaqE4Lrv"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'Ir30PWLYenQaS5RF' \
    --passCodes '["kMkuL9QGZoqJ7cin", "EtzPjNg6e4tlCBnO", "ksN4LDYGD8nLkqwp"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'ZjiAqLiQpfxEkJhi' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'hOa6tSBLj19DdXzV' \
    --body '{"passItemId": "NtimF0WIWIJcjpdg", "tierItemCount": 5, "tierItemId": "bscSrjvmb60wE5LX"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'uoA4BKeAxuKcXBLj' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'rTIp0qzXyy8ygcN8' \
    --body '{"count": 73, "source": "PAID_FOR", "tags": ["8I7L7IlHOY5ut9YE", "Hha1JBO1l4QZ487s", "2kmej5kzRxToRHe2"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'RLogwIY8djhX3vVV' \
    --from 'OPjYXEn66pPolqfb' \
    --limit '22' \
    --offset '31' \
    --seasonId 'HPumxM7jYnas6rim' \
    --source 'SWEAT' \
    --tags '["FRnwN1UGAobFAhtO", "hbLlqk7ULyzSCePh", "hHbWzFiy0QyiwoaF"]' \
    --to 'sWLj905CQe41do49' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'qugwyiSv1qkh0Mm0' \
    --seasonId 'R4fpBNDWUiLH1QWE' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'SExLPGuVaaWoH5eo' \
    --userId 'fVEgYj80QXHpSso0' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'AV40Y3qUDG3HXwwm' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'W7OXijxXGRgq5dof' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'QCETfCvsr37AYCT1' \
    --body '{"passCode": "CrHb7cPevGMQqCgF", "rewardCode": "FPk5lyf7PNm07mvR", "tierIndex": 44}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'x1nBu6UqXlfVSvGF' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'h0uzE2o40tzd34W5' \
    --userId 'KXvTWaFy1HpfAXbc' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE