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
echo "1..46"

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
    --limit '41' \
    --offset '16' \
    --status '["PUBLISHED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "vqdgkJgfJxxjFhfd", "defaultRequiredExp": 48, "draftStoreId": "7LzJ2FTnXRxoGobd", "end": "1979-11-30T00:00:00Z", "excessStrategy": {"currency": "yrvA0YPlla7VSYYf", "method": "CURRENCY", "percentPerExp": 100}, "images": [{"as": "fpVFn1IfdnGkyRHh", "caption": "rQ33BECtcUov4754", "height": 29, "imageUrl": "0drs68EQUtWM0MBj", "smallImageUrl": "9tifW60AnVLMKQ4k", "width": 22}, {"as": "X5MCfdy3kW6yMtPx", "caption": "33Sa65HodQ0390hq", "height": 80, "imageUrl": "Cw5nE1n311LInPUA", "smallImageUrl": "6Vedvm41Nh6jXVID", "width": 94}, {"as": "Cg5fVVlufZ0SJ93t", "caption": "T7ilvY97a6LEwl4X", "height": 74, "imageUrl": "Jd13VNoHm34WD2dr", "smallImageUrl": "evzgEEZ1nxvRfWVI", "width": 58}], "localizations": {"7eWX0u6sPD0Xf0V0": {"description": "lYKyfMjTnlYBqsie", "title": "Ek8UbrBSrfaaaz6f"}, "clDIstAz12ToTUpK": {"description": "2YbMKrk4g9yr96yh", "title": "85RfovX3QUvNlfvD"}, "djn4q1ZoHaQSTpns": {"description": "M9FcNoj1viHxJJdT", "title": "vjnyiS4gxt4fKkGH"}}, "name": "vQerUQDYszyxSUFz", "start": "1996-12-23T00:00:00Z", "tierItemId": "e8Q5rK0kypJtDhFP"}' \
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
    --body '{"userIds": ["1zjjXMpuA3TadPyt", "ECG7rSxpxXR5DBA0", "GqHmxiL8ZFUcUSLP"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'm49ak5rvNS2yP7SI' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pRZ3SFRMSX6KRMCL' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qOdoUT7nmfKpxHVf' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GYrdZ4cdLfWLTCPE' \
    --body '{"autoClaim": true, "defaultLanguage": "ztGYOMMp0TcaOe6G", "defaultRequiredExp": 42, "draftStoreId": "9IcQyHWDFrwUFEEr", "end": "1990-12-08T00:00:00Z", "excessStrategy": {"currency": "qv0a0LdH15lOaRqQ", "method": "NONE", "percentPerExp": 71}, "images": [{"as": "GJ9JqKQFalUk1tOm", "caption": "GmRKMJ1sXgysXn3U", "height": 93, "imageUrl": "dFoQXwpXDKKvMFBd", "smallImageUrl": "iMJllYMA64d9rV2D", "width": 24}, {"as": "es1uTLa10MNwLTqq", "caption": "ELIHL1SlQ6z5yiFt", "height": 53, "imageUrl": "18kqK6OKicNT1kPL", "smallImageUrl": "b170nOMKZVrTPv3d", "width": 7}, {"as": "SSpXVxWNtbawplIx", "caption": "sh5Yt4gsRO6WOGI4", "height": 9, "imageUrl": "lp0P8aRW75STpCDn", "smallImageUrl": "eb9R17JHxn38fA0Z", "width": 19}], "localizations": {"gxZtFLC94i3dSKk5": {"description": "HxxrwBRPrWHyVD2B", "title": "tohJnHmvTV0qSCml"}, "ijD3DCOl3kzQL1ZZ": {"description": "7maKnAGLtzVBsO5h", "title": "AOj6pasQZylQpgLP"}, "bGqcPndTazJJJIDm": {"description": "7ZVun9AYusGezOEL", "title": "olG3ZMTxv8W8h9kR"}}, "name": "yxsUxNeYNBoZIf6z", "start": "1999-11-25T00:00:00Z", "tierItemId": "mUMKLdYszN1rcQuv"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mzNhITp3lpfz9EfJ' \
    --body '{"end": "1974-05-09T00:00:00Z", "name": "YFyaZQwtExxw1piW", "start": "1997-08-05T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9wWxKHLaNL9OZkFn' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'wTCNGZlr6hYLJ6yM' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'YOlkAveuezj9v6kj' \
    --body '{"autoEnroll": true, "code": "aHPf3aGAVD0MMzlx", "displayOrder": 1, "images": [{"as": "V28avZgi07zs2ihx", "caption": "fLjAHzM7T0S0G3v2", "height": 62, "imageUrl": "zkH1DxC6zHm4o7UH", "smallImageUrl": "ewoNEQisWv5hGvn3", "width": 21}, {"as": "auyZrcSpkiJDciN0", "caption": "1usnQYjMNTYOzs7r", "height": 33, "imageUrl": "GVXV6r4qhv61aPWH", "smallImageUrl": "grs1hvd5BEg8PAsI", "width": 94}, {"as": "bbSpNMTFMqA6uEtb", "caption": "6bCpGmQMWZBqBZT2", "height": 58, "imageUrl": "JjYtr91Wh4DsdCBW", "smallImageUrl": "NCTI91l1UDEp5gWD", "width": 65}], "localizations": {"XK4nZOAim4PoNpyT": {"description": "yKg8O0op2kNUoOp7", "title": "tsXyNvYlbHYuPh1I"}, "HbkHdWZ2I99swQx0": {"description": "QfD68kgoLivwzona", "title": "xKNkj7IcC355guSi"}, "RYpF1fS486soBi9r": {"description": "FhbwOyKQkrFNUAgW", "title": "MFqB7MNzwT1lFf9M"}}, "passItemId": "GD127UZzW45ZR7k1"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '0jgGP58YIE4RKH7e' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wt0UGJyFzFyqq2uS' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'sezRCJVodU0VFTtg' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pJKR3Ll5BUjMepiW' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'JXg0pi2vF0OIdxR5' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rOZkRUmIAjrCQLis' \
    --body '{"autoEnroll": true, "displayOrder": 55, "images": [{"as": "C0zVz9hMZA5XfuwO", "caption": "TcFjynyk6H7224Pl", "height": 95, "imageUrl": "5uynsfHvnKrAEFio", "smallImageUrl": "FwtrxB0uV8B6YX4o", "width": 4}, {"as": "G9QFFqohhwYWCKVy", "caption": "XZM4eaiF1N8Q4uZU", "height": 88, "imageUrl": "F7Q9wB0NehsSJm78", "smallImageUrl": "McyRMkFkGoP5kG4h", "width": 9}, {"as": "ZaIiXwRBQo8v5Som", "caption": "cmDgkyiKkrXD47xL", "height": 92, "imageUrl": "VDrLWV2tzI83iGTP", "smallImageUrl": "UxS4ai2AGpF3VNV0", "width": 2}], "localizations": {"Kd7QTXrTTmnQakhu": {"description": "YEXfoPBEV98Mn5tJ", "title": "d07Uhz1XsgurIOcZ"}, "pamTErjgOlZFhoA5": {"description": "o4GQEpfh3pHcalqh", "title": "9ND2lm7RF5OM9Wmn"}, "WyLJHDumx3HgzH27": {"description": "EFRFXOJ1LzCqqx5i", "title": "hruUgDdHfRiwV0ip"}}, "passItemId": "YXxn9IbHsVKA4q2U"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YIapzTiwi1qJMxx1' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mnh0TFMgTbCBDLRI' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'pS2XRTSny8Uj61LH' \
    --q 'tFekBQSG2C4CsQwp' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'BosuowrOe5EABEt9' \
    --body '{"code": "Srsb0I8fRN9ApSdO", "currency": {"currencyCode": "wovANjuANEnUUnRx", "namespace": "eSfW71d8rKSZedah"}, "image": {"as": "f2DTFxCTJc1PUn1E", "caption": "FjGFTaUUl8GPlCb7", "height": 2, "imageUrl": "z0CcS6bvsAQScvX6", "smallImageUrl": "me5MKBPyH5kEwNvG", "width": 43}, "itemId": "TuAwhP8EF4zBaarJ", "quantity": 34, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'k4szuWKrpp0iEAqZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Yff7DBmPTgrUYTaR' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'HaaTujmC0bkFoCmp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'hqTb3XrwJNfzXgGs' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'E7PXVBKbAIlp79lL' \
    --namespace $AB_NAMESPACE \
    --seasonId '4BdV83h3npDhtwFw' \
    --body '{"currency": {"currencyCode": "sYsxeZd4uUegKxSD", "namespace": "K67ltGtCtgJC86QX"}, "image": {"as": "0ymA2cwIItf4lCuD", "caption": "S1QQhmHBZqrpZ5mm", "height": 62, "imageUrl": "JzTlZvDEmcpoAFkS", "smallImageUrl": "x7xjUfL0Yt4zZyVn", "width": 62}, "itemId": "uTMS1EhJmSucb3n8", "nullFields": ["97W8SErJVt6SYS1A", "9Wv8oSIE5zGN8NzW", "EwFoF2WNbw7vqosW"], "quantity": 42, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '6ZFXV5aOLK5XopTl' \
    --limit '31' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'aKbpPTzYvnKe9I3q' \
    --body '{"index": 80, "quantity": 78, "tier": {"requiredExp": 94, "rewards": {"TaR2C9Cim43pVdI1": ["5XksyfMcZjFXVp9e", "QmjZbHduQ3sPn5HM", "KGjGbwYUxEstAyj4"], "3O7ELoRXc2nmYMnL": ["sRBWgzrSstMUVLWG", "RGlOgCS9PanFzuDv", "Ihsu2stIxJNTdg7Q"], "rdyAg1JfhBXrFmVt": ["nkCWWYbjq26DmnA7", "9HVvvGxjXc6sJDRS", "V2aGYY86DIXS6EtM"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'yuKYUsyED5qywG64' \
    --namespace $AB_NAMESPACE \
    --seasonId 'uxdr0duV6k806aac' \
    --body '{"requiredExp": 42, "rewards": {"tAVEwHXwB4BgbGzK": ["9RXtCNcu6n7nTl6t", "d3XVq76190RgD217", "3QdK4Yk4io48zuwR"], "cD1Pb9GNNUIJPnwz": ["22CIWAwUkG5FQJq4", "RGMhryqruw8LEsYM", "bwXCGPAsbjnjg42K"], "5ZqJbkL7lntfFqEo": ["XfX7IzkRipi6gdXz", "1DJUEsqTDyHb3l9k", "l6zFtweRMnASVuPn"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'CMxwUDeUHtq12eLy' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wYeIQ3r1s074ei8s' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'T9sLicWqHqFNfEni' \
    --namespace $AB_NAMESPACE \
    --seasonId '64RHFIVXsfZqGHiV' \
    --body '{"newIndex": 91}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qzn6ZZw5STnD45Li' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'sdHdnXul3Gz3FsCe' \
    --limit '66' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '5whCLCp7ZIf8WprN' \
    --body '{"exp": 65, "source": "PAID_FOR", "tags": ["PgMHuuTr7kAq7zwh", "Ls7byTxoQzoYsIu6", "QuG5xjuKD1XYxcTt"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'Gtv2xc7eEHVCXm5c' \
    --body '{"passCode": "EE6kPf4WOFAVBjhH", "passItemId": "FibR6DVuclo2Loa8"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'HbH46SQhaGdS2Ztd' \
    --passCodes '["W0lqRK7PE9N75yst", "Ysfkiik0cGXTGS9d", "HaH4r5jDUCm05lp5"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'WBDKyD5wLxOHPLNH' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'bbbmjt6tnHkwRvvY' \
    --body '{"passItemId": "fQUhLT3kvFjXhVo9", "tierItemCount": 84, "tierItemId": "U5gotM1LwXfRfjdy"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'Q0eiVQxl5YGdwgbA' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'Y0i5QZPnko1TZvK5' \
    --body '{"count": 28, "source": "PAID_FOR", "tags": ["F3LpHbp5cWDssFFQ", "95iXn4b5pgoAS7gp", "v6N5cwEzuTs7FI5H"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '1yTCLwgtqCN3pTxM' \
    --from 'YXp1dMtbuBcrpUD4' \
    --limit '41' \
    --offset '58' \
    --seasonId 'i62ycGMlSmJXS9vb' \
    --source 'PAID_FOR' \
    --tags '["AkwEqmUn2Y9HNYBt", "uCsto3hKBfGe0Hm0", "dRRX3MfWZeavZ5qw"]' \
    --to 'cIUaiOt5uuTJVrCg' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'k3urTdGLjCilHBWA' \
    --seasonId 'bikPnYuCNmCnz149' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uAJqH3VZwMJAdIXA' \
    --userId 'xydfkB6iPGZ06taI' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'bKrlkhEE2k6yCjek' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'Ee6XzfwopWNR12Ll' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '0M3Z14Sebn1sm2N6' \
    --body '{"passCode": "JvQNmcFXDcnvuOof", "rewardCode": "mJYjb77NNACRS0A1", "tierIndex": 6}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'GicQF9ZMnw0ZqoCc' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'U8iE67RMhAK1Zmwj' \
    --userId 'XZPmaVPwBB3CIrWQ' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE