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
    --limit '83' \
    --offset '66' \
    --status '["PUBLISHED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "7sX45eUZxCTkg1Gi", "defaultRequiredExp": 79, "draftStoreId": "2xWRrFRyW8kyB37C", "end": "1997-12-31T00:00:00Z", "excessStrategy": {"currency": "XJI941IImIYJzs1I", "method": "CURRENCY", "percentPerExp": 51}, "images": [{"as": "8WS3qHA5YoSQfHSo", "caption": "GYwWjWRCwyElWCRx", "height": 39, "imageUrl": "CfE3FxCjg55oSsXx", "smallImageUrl": "IC9CGScMH40vKdf8", "width": 21}, {"as": "bIvcqgDq4hzwU2jE", "caption": "WI8xT9THvA7iz2ek", "height": 95, "imageUrl": "C5kOKVggoSb6f8AV", "smallImageUrl": "q9PZ8KKtofzY0WlM", "width": 10}, {"as": "CFM2QLLrDnMhDyuY", "caption": "KgPdn9RGXJ9VsupB", "height": 4, "imageUrl": "BZJ5NEPunlACF2iB", "smallImageUrl": "ZJYnbQHLBmpldhkv", "width": 51}], "localizations": {"CmwFku4sv0YX9I6R": {"description": "8sj5PR4a6PPDTOEI", "title": "UEQjptFNqP2wBQnX"}, "lxHruoOx7yNicvt7": {"description": "5PmR9BdFkxYeq8EE", "title": "zhZIjZjI4UGjoG1t"}, "WgPIOA9eFdf4Cbw0": {"description": "3KQ5nCVuwSrBJi5T", "title": "2Pv1njRNSYr6bBlc"}}, "name": "oBkUcWJmGcX6UhPk", "start": "1996-05-05T00:00:00Z", "tierItemId": "apmG4hqiMSeHQkE0"}' \
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
    --body '{"userIds": ["5WXEeBAYqkJHlVyX", "9uJnAl3wAuvOldCI", "kY1jE2aZk2KkdxnM"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Mvgrrwrmfhick4oU' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '35H3dqntgZMmCRFJ' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FxNBcSwaWQRFOhPA' \
    --body '{"autoClaim": false, "defaultLanguage": "zH76dHyj9wWcvzpa", "defaultRequiredExp": 64, "draftStoreId": "lwV04EsW89onqsNX", "end": "1985-02-21T00:00:00Z", "excessStrategy": {"currency": "BL6veKiX2pWZjhQy", "method": "NONE", "percentPerExp": 82}, "images": [{"as": "dscgpz9YluDQi8xr", "caption": "0rEExbpxtGIJWTAS", "height": 35, "imageUrl": "QrsKwFdIVu6qPPFv", "smallImageUrl": "Uyyc8HR1YhKEXixC", "width": 77}, {"as": "3e9PtBNekWZ2Vdh6", "caption": "b32o896ddAfK0Z0r", "height": 23, "imageUrl": "M84N8rTuGxpIwD7x", "smallImageUrl": "msYzowsTacoqv3rr", "width": 96}, {"as": "yiEFn1VXozK1dyao", "caption": "w9kz2T3owyvrEMyu", "height": 51, "imageUrl": "L8pzMTAYtv3Wk7K9", "smallImageUrl": "kGfEPQ5vcVtNeC76", "width": 31}], "localizations": {"vZOV1qJdqF97ydf0": {"description": "hjDd4r6wWCrhHuJG", "title": "IaPxM1BM3YsnLhxd"}, "TjH2xoMwZQxNdKJk": {"description": "5WPHwJFAQAJHwqQx", "title": "UIFVbd3OMkXOkXcu"}, "vMhsQLTnpsKK3FKZ": {"description": "egHDXezWUfOFawHC", "title": "16dwKUxVoegIbg1u"}}, "name": "RQ2WNiPTtdaEVmsc", "start": "1997-12-11T00:00:00Z", "tierItemId": "455xJ4wPW4UKRC5D"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'VRW6DLGlGgYyWOIe' \
    --body '{"end": "1993-08-16T00:00:00Z", "name": "Ntlafj4Iwp8O4Dlj", "start": "1988-11-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'WAzXjysrzStRQvl1' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'akbXY9asdhkVccM2' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'aH5AyI4K5NVqNF9r' \
    --body '{"autoEnroll": true, "code": "7nDuniW6kWRkwszL", "displayOrder": 3, "images": [{"as": "KB116EKx8BXk234q", "caption": "J82YZ3p05UjBDKIa", "height": 34, "imageUrl": "vLFGuCqrZvqJwgHA", "smallImageUrl": "qp5pO8m5GYFLtoUt", "width": 41}, {"as": "bMpDComm7S1xxG3t", "caption": "ioBClGOyGvcqK6rN", "height": 18, "imageUrl": "qiEF4LH9gWoMPdWV", "smallImageUrl": "kfyd2SlrzUiCE9fC", "width": 11}, {"as": "U0fSj00BFxnxHBpi", "caption": "B9ro6chlV5dNisPe", "height": 12, "imageUrl": "7DP9SPvaK0murI7u", "smallImageUrl": "rZHZdGTIEsyNdWfU", "width": 74}], "localizations": {"naSrZtuZniFUuf0y": {"description": "7Zy7dmewwV7XDhwD", "title": "oCNrJsUxO31v3v4o"}, "m8D9wWsd7FF22csE": {"description": "DrRLbve3Fg7vQebr", "title": "aPhkZjaE8JAFal98"}, "ZLb3GMaJVXP5v1lR": {"description": "4Zg0UPvVURZpnwZ1", "title": "THLes9esMvXlxYOZ"}}, "passItemId": "9lmrfu05HwPknnDg"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'EYT6CjbwyN4Ablcg' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wTx0mCPBeTSLU3aA' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 've9PQIOzYC8IbNeF' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SQhwHhMFsgDUf8Qb' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'xTsrP4CfNfCS7CWl' \
    --namespace $AB_NAMESPACE \
    --seasonId 'eon1rsP08IY1VxLg' \
    --body '{"autoEnroll": false, "displayOrder": 67, "images": [{"as": "j42PsSlyTGQKB6fg", "caption": "uDCNqOvLn9ufqjgD", "height": 46, "imageUrl": "y04DaWcYrJPs65fY", "smallImageUrl": "IEjpP2DY8gSIM51d", "width": 57}, {"as": "rshVDoIBhvUAeKkJ", "caption": "QgRffqrbMDa03WXi", "height": 66, "imageUrl": "mJ68yv53ONDecJLa", "smallImageUrl": "jexckm019V3hMlus", "width": 95}, {"as": "ksCEsacwH87qBajV", "caption": "pRqmMVwtmLZL9tos", "height": 87, "imageUrl": "2wCzeK0nEeMtc7ok", "smallImageUrl": "fpxI4KJRWmHsPrAl", "width": 36}], "localizations": {"hNhM9Az9yDkmpqNV": {"description": "e0TABj3CdkYOXnLY", "title": "xwRwSqqvNarj1aJd"}, "LcNwGugI9YI2y649": {"description": "2pDwzXVLSCKbVrIs", "title": "PBqDk6xClGAw2kYZ"}, "MTNRQzrBrLjOk5KB": {"description": "T9WwK5akuXF2sM5w", "title": "vqnwbUQRaQOtohph"}}, "passItemId": "aqrqwkV7n72fZHwE"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KOBIrPXZRpkvr1Qv' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AVBXMXGsavEKwWf1' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'BUq4grYanL5OMtyj' \
    --q 'W1hKlEfEYft6mp62' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'Oi5poZIlEbSI2H0Q' \
    --body '{"code": "hfYjqc44hZKVwfKS", "currency": {"currencyCode": "BLZh5h26xSE9q0vO", "namespace": "KGXnsxBQ8Dw0LQmg"}, "image": {"as": "FR43sne7FUcb3X7y", "caption": "0Cdc3bjYud5EWEBY", "height": 71, "imageUrl": "itgoTXRDDyBjnfjc", "smallImageUrl": "g3owCD0iQwwV2zO1", "width": 17}, "itemId": "P8b44Qq7ofgghPLd", "quantity": 87, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'EbOy9LmpnGmhHKot' \
    --namespace $AB_NAMESPACE \
    --seasonId 'suoNibFnW0m5HgiK' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'sbkbal21R2bzWzrY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kdM0VlSsCTcnDddj' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'fhszvlCOXtsybV31' \
    --namespace $AB_NAMESPACE \
    --seasonId 'NIzUXlEAnPUS3PyM' \
    --body '{"currency": {"currencyCode": "RcdlHAl8bm78XomV", "namespace": "1VIzDv9Y4tyHyRhl"}, "image": {"as": "YAKSoSqrhtx5TvgT", "caption": "CzdsGh8qqwNE23Zh", "height": 44, "imageUrl": "97VmFh2a5ZLkBbeg", "smallImageUrl": "sfznj8iPabPhm9xV", "width": 46}, "itemId": "9SyVOKS27vt2MXRg", "nullFields": ["jI3tgfbF29tJQZAZ", "rgj4Ez8PwKv2ZLqa", "tTOmfXJdcWs9gURi"], "quantity": 27, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'hlMl549RqAhPMV4T' \
    --limit '72' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '3ZBOTM1tYxVyaEZM' \
    --body '{"index": 100, "quantity": 38, "tier": {"requiredExp": 97, "rewards": {"MsbOch6Dz3cNBten": ["ogPLDYmOQLida23j", "fhGcLjrR3O7kaJWS", "ZFzovwwsDpMRp2iq"], "wnddtwbfXRxewmdC": ["KZaMKQ1IWVSWmbma", "z6iRfoVw6HSyiSi7", "6Kc8jrT8lKaU5IXE"], "HwW5uTj5kpzODYUQ": ["gZk3nAYEV8Zgy2vZ", "dEoTAQu0r3tICzpM", "7jH66el7y55dwgZ5"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'AHNULq1rcvh6aQho' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KcnKkVsUQNTFOXry' \
    --body '{"requiredExp": 17, "rewards": {"wOdQ5aH4Vu0LdDpR": ["R3u4TEwaVEviw4ht", "X62nepPq2iH3NCc5", "ed8L39T5IB2TVBIq"], "e716uc7XAoqBCqlE": ["RvkBr6zN6L0E6IuO", "Xz20zMLlBh28IcDF", "16V3kfqL8sCLvxHb"], "7nlgbexcKcgPA4H6": ["qJ7Ipl7VhO9kRy2R", "I9lEuSD9UaxV6j9X", "wDIqFFIllx4ykC4r"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'PeWzmOfRakjnAuuP' \
    --namespace $AB_NAMESPACE \
    --seasonId 'cdHzPwYlO4nRb52K' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'RiItmMLNgzFYxpJl' \
    --namespace $AB_NAMESPACE \
    --seasonId 'iSgUdrraAhJ5bTTb' \
    --body '{"newIndex": 65}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8YcbWxhtqJSvKUF5' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'bRLwmZkX2Zf4WjX1' \
    --limit '16' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'eWYIefu7bS2yA8d8' \
    --body '{"exp": 4, "source": "SWEAT", "tags": ["bm9MCBGZklcOBTcc", "JypgMB1fmypH9cla", "jV9bVgmH3ke0AU0P"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '0vdv6ZD9b6FVGkeK' \
    --body '{"passCode": "0A6rDNGl8tN3H5TK", "passItemId": "OJBofleR6eqOzghh"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId '0hLM6M5TbNTZK65i' \
    --passCodes '["ChzHFp5W8lCsxhPD", "jWJdH4RgbuL7eFy9", "A6zLD6AmVv6YFDu7"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'CT4YQC7opQiXz3bw' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'NI64FpAyhxAQS92P' \
    --body '{"passItemId": "K4WxjDldqKxgI8x8", "tierItemCount": 18, "tierItemId": "qkx6g6lmdZFrginR"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '8yJBXBBMW2i6PzGZ' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'ae5dbCSceh4iOv3G' \
    --body '{"count": 20, "source": "SWEAT", "tags": ["Becy3DF6EGwiWsvQ", "Y7SX0wmNSK4rtiwj", "ookHGdF0tF6QVIll"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'FjbDYAaVAEm9ZZWn' \
    --from '3wEaeadZ8eRHq9pa' \
    --limit '9' \
    --offset '44' \
    --seasonId '6KerREyQ0MrMJ3qf' \
    --source 'SWEAT' \
    --tags '["trJiLUQzqrFvdKpF", "pgM1NvoNZ1KYXh05", "QU5PdNKoy8GFA5lv"]' \
    --to '47GmYEftyVqnMzFI' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'yVlenN5jqQ7MtJ4i' \
    --seasonId 'yRoyAxjilVGtRdsQ' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1WLh7MNYKGvvD6Lf' \
    --userId 'tVkYcaU7JvkYvpYp' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'yYjdENxonY0ZHsi4' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'BbyEDzUiP8lIkgVv' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'frBcjpL3BF8tyKdB' \
    --body '{"passCode": "ReR40maWs0LSUz9T", "rewardCode": "WV4ewTaTC7weeAus", "tierIndex": 80}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'U3uCNQvX8ApsxXVL' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZBRmz8dUmx7JedzJ' \
    --userId 'V8TeXhFXmONdM3dh' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE