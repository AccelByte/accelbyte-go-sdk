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
    --limit '4' \
    --offset '72' \
    --status '["PUBLISHED", "DRAFT", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "hSJr8RHTBge7nBO8", "defaultRequiredExp": 59, "draftStoreId": "S3uOjTTfJg4L6aV4", "end": "1990-08-07T00:00:00Z", "excessStrategy": {"currency": "zO2d4RvLftYABtNP", "method": "NONE", "percentPerExp": 28}, "images": [{"as": "ZNYApIwpBmEHaNhH", "caption": "Yc3LlVIFsi3MUhDf", "height": 67, "imageUrl": "4kAjPWPaWF2yY29n", "smallImageUrl": "JfQhbFzAeTqPTht8", "width": 38}, {"as": "lCK8TXFWpEeBJ91c", "caption": "YgXF9zYGf8PcIT17", "height": 48, "imageUrl": "lBuKygAgYwbzLFjH", "smallImageUrl": "FT2EBtgiIQmWBDqD", "width": 16}, {"as": "BJ4oeoD5VaOD4awl", "caption": "ygaEfGSrRL3tmv9n", "height": 100, "imageUrl": "ZXOaPBRJmk7cDcgg", "smallImageUrl": "65qy6H0VIB8BaBYZ", "width": 55}], "localizations": {"qx9OqyRHCBzoMlfH": {"description": "GHXs8eFKaVsvZCsh", "title": "tYERKfGo5IjkIgvf"}, "WnX5E7iciLTiZAEC": {"description": "avYBHvqgZib5p0In", "title": "gVucTzo8PG7t5jsh"}, "LpdKkJG8fZKS13gy": {"description": "iVN10qmivZ93gm4V", "title": "G7hSy1KYapu7Tf9M"}}, "name": "ZNM2lTcBOMDhvHz3", "start": "1997-07-30T00:00:00Z", "tierItemId": "5dCYoFu76j0wxomI"}' \
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
    --body '{"userIds": ["CQdiqyxRTk0mQv8t", "9DTHbn7RicExh9kT", "83amRAkLWYW5EpJE"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'j9CUOmBOTB9tIojU' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1smEtEXfIiTQRsHu' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9LFHg4j44rwJC8yM' \
    --body '{"autoClaim": false, "defaultLanguage": "HoJ87pVQ7eJlT2jN", "defaultRequiredExp": 19, "draftStoreId": "hlxoix9BOtrm6yto", "end": "1992-01-13T00:00:00Z", "excessStrategy": {"currency": "uQllej9mdL61ykVf", "method": "CURRENCY", "percentPerExp": 38}, "images": [{"as": "mbTdlKztQWJ4eLte", "caption": "KqSOvLyIOtjmivaU", "height": 54, "imageUrl": "kLi9HTNvO0ZMNyyE", "smallImageUrl": "OyUwYABGZx5npEnM", "width": 70}, {"as": "ftmAiopDKaLOMhTh", "caption": "VvU4PiH436jIzAXa", "height": 45, "imageUrl": "d8asMdoxZPBJSM8Z", "smallImageUrl": "CSGhEspdoU25QSgJ", "width": 51}, {"as": "2Im8TnmJtKJZZIfO", "caption": "83Pq9nIEljmXdeZk", "height": 8, "imageUrl": "Vlqe12NQdNfVRHfs", "smallImageUrl": "pg2znFeH643uXdp7", "width": 52}], "localizations": {"ri9isH9pQpKP2WRN": {"description": "3J052Qyh7lk7Mcnu", "title": "9Sooq26IHiMY6q2w"}, "FBasJwy3gOKTvpo3": {"description": "YZrFkP6Q5i5QQDDF", "title": "pxux254edKXMMAoK"}, "ZDoFEq303HfXKR4S": {"description": "TuYE0410nzDu25lw", "title": "3qL4mBJPYXtas6VF"}}, "name": "OdX7fBnLnhroe53X", "start": "1997-06-29T00:00:00Z", "tierItemId": "A8dgJfJ9ZkCRVpIG"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jmhjLDT2B7w8MVOd' \
    --body '{"end": "1987-04-25T00:00:00Z", "name": "iudWk1eecMICU43z", "start": "1982-12-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fsSfoZy5JqvDRN8e' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '0xrfs2EjUmPQYwfs' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'v5CLI939qpcohbe7' \
    --body '{"autoEnroll": true, "code": "JGoiv0Azp1a8iSr6", "displayOrder": 41, "images": [{"as": "KIapFDsiQIvAbFsw", "caption": "VSyqCY7HuDMAmqqI", "height": 51, "imageUrl": "4Iutt6WXL2k0duPQ", "smallImageUrl": "CEPgEpqaB1ikk0OQ", "width": 6}, {"as": "nRRw6oHZSvTZlmHH", "caption": "PmGpoHlIElqTxxfn", "height": 69, "imageUrl": "PW4ApKiP5BSI9Dug", "smallImageUrl": "xAK0fGXtul5nPkpg", "width": 53}, {"as": "9Cufn5FJaCNkdZDj", "caption": "gAb92rDeP9lYIMO8", "height": 53, "imageUrl": "0BiWxdrpyvs0PejH", "smallImageUrl": "9jzHnygpeeMcR8oH", "width": 64}], "localizations": {"nEMzBe32A7qHsNsB": {"description": "7iuuvC0Tl9hgKzz3", "title": "tuNNXfP0OZmNSTDc"}, "pRoF1YZUfZZJ3LqM": {"description": "9Y6VAGN6GnXP3uUh", "title": "xuNSSpUDkFh41NzK"}, "EwjsvNQIXlv2Nbf3": {"description": "u2iKlYUCJOjJJspJ", "title": "odd3oyNSkpAB9VNE"}}, "passItemId": "s3Xf2rXalOPHhqdk"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '5MRdYncUJbqfrhNE' \
    --namespace $AB_NAMESPACE \
    --seasonId 'emybBWufO3l4wNEm' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'Fc2jgFsUvgM6H9we' \
    --namespace $AB_NAMESPACE \
    --seasonId 'q2gLT6KjCqWpSTQU' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '7vOSjrsPzAunNoTd' \
    --namespace $AB_NAMESPACE \
    --seasonId 'sKLiCTcQjTFopRQO' \
    --body '{"autoEnroll": true, "displayOrder": 8, "images": [{"as": "L8v3zKC42iO5YSfp", "caption": "bdmPZZj7Hi1um4Ma", "height": 81, "imageUrl": "hS6v9fuvzXLrwgCn", "smallImageUrl": "YrRjCnV7X2v0daWR", "width": 38}, {"as": "g1t6eqMQAw9h4vst", "caption": "ICOLsUn3Hh4CaSxt", "height": 46, "imageUrl": "0OpM0khkxRp6ef6V", "smallImageUrl": "S8JriXfql8rDQTZp", "width": 3}, {"as": "LUshGgtvKpWGvB0o", "caption": "2EKE0euQp2qGCC1E", "height": 44, "imageUrl": "GdZRgwldKWHMddIA", "smallImageUrl": "mALa2mZtPSxlSdyy", "width": 0}], "localizations": {"foj11HTKM0oGgsQo": {"description": "3ZXd3EnK2O4y1Y0U", "title": "B0aMVdgfl6JIK4W8"}, "VN0qtKlrWTO7NC2Q": {"description": "POIaD0bi7XrnQz0r", "title": "AuZLYFgHsEUw0k6M"}, "xQXJH018DgI5v4dm": {"description": "4vBZDX3qJke1nYW9", "title": "jfz9LoMRCRO65KA8"}}, "passItemId": "1Pmf8SFJZaJP5seJ"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YQk4kCWLTUYdY95S' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vUfmahaZICkU7kn6' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'ompsKHrEFS60HaLi' \
    --q 'KizAOSztVL31J4xo' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'g3VKjM7olzqIgzMG' \
    --body '{"code": "cA3BEcRRTazCZE5O", "currency": {"currencyCode": "SrWVukkSmp2WRZ7j", "namespace": "E00ZxipX8hhwVxCT"}, "image": {"as": "PxSfWFQxeVk4wUP7", "caption": "o4YZMXGixS1nKbuq", "height": 17, "imageUrl": "dLsBV6mOLm1MLXBA", "smallImageUrl": "JAqoBazN2rgYXvng", "width": 13}, "itemId": "w7CnJeSntmSwnSWi", "quantity": 24, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'yWyDRX6lEXXFOmn2' \
    --namespace $AB_NAMESPACE \
    --seasonId '1CPBCumV2mELBrq5' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '5qnbSRgVhCKPdmDK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gp5Ffxx19AgOIlup' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code '42f5yaG07MvEoudg' \
    --namespace $AB_NAMESPACE \
    --seasonId '8cG0fSDuL863luCa' \
    --body '{"currency": {"currencyCode": "mlDsFjSIu6EPoX0P", "namespace": "iwYDKSurrOsUCRb8"}, "image": {"as": "rmJv8bY69CFPm049", "caption": "DYCyQ2YLeWVOJztL", "height": 68, "imageUrl": "QBAKgeO6yBTeo4CU", "smallImageUrl": "q0r0n5RpqIbCJv0U", "width": 32}, "itemId": "rP2AA70cwlpmRmWc", "nullFields": ["IZypi5MfTodqLdyG", "PavFq7zm1A7t8aYx", "FATwsW2FNFlnTV5t"], "quantity": 31, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'XW5Kw7AO9mfymOp7' \
    --limit '47' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZYWTntxwtY3pnaNr' \
    --body '{"index": 43, "quantity": 13, "tier": {"requiredExp": 88, "rewards": {"Tmrhg14VMOhws6NT": ["Bth6c1ApJAZCf8dV", "gzqoVsMzgFLMa0Fb", "XSMJSfZBzi34u8gh"], "oPJPM5SViniwcocu": ["zqILEphJyx6px04Y", "O8nO5Nl8PYNflQUV", "gyipZBFZHJPeFY7o"], "0Ms74mSDaQX0p8Ta": ["Grl0yayF81RMNYWq", "oW8w4Td7VygJWohu", "aiCu4Xo0pht9eUbO"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'XKUhE0KEqbKyvTdg' \
    --namespace $AB_NAMESPACE \
    --seasonId 'leFjJyHkSYxUzIBc' \
    --body '{"requiredExp": 29, "rewards": {"PRrNjc84646vnmS2": ["43XIUupFKlb5FJHn", "uBHIb1hbb8zwgE2j", "Tu3YHydExYlyBa5J"], "O2aKkRTAmmRdmRqg": ["xpcfBmI0osonQita", "Sv6cEjxYQqRn6Ntx", "2zdpiJbKYniooTrf"], "PZoMRAxOtVDxfzbj": ["W1GEl5En0PrVsGo3", "Uo9jYodqjBd6QLY7", "mU2c1ldzPLQ5uNj0"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'vK9oylWlxGHGvSBJ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Qk7yDvvmW4mVWwUZ' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'DrtcQac1bkXmi5Ih' \
    --namespace $AB_NAMESPACE \
    --seasonId '5envrR5gjVINvVo5' \
    --body '{"newIndex": 100}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sLAQl2ZMSijGuAoW' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'BteKkI8PFt9vXN81' \
    --limit '66' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'a7Wpckew5MI5DHOo' \
    --body '{"exp": 65, "source": "PAID_FOR", "tags": ["JqOS4ERtPQhR3P4O", "gOpxxQsunwA2dR6Q", "Y0ui5OeC2KFNXhtV"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'qGI1qXgMpDKHCv6Z' \
    --body '{"passCode": "08qzdtxU5u6EjEvg", "passItemId": "rgYms76dd4vyxtwD"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId '1ep9pNMO7pkr3N0B' \
    --passCodes '["LB12AZmy0ovDFRpR", "GzASgwfxn0IAx31z", "SLEdxNYpe7GYC9Cq"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'IgOK6a1aY9Y7O7Ev' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'Ym5hxHQZ7k9kCkaO' \
    --body '{"passItemId": "R0hRZxtBG6eo3ywa", "tierItemCount": 87, "tierItemId": "GGKziDTPAQ3yVEqn"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'RDYMPSYvP2ygXbhm' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'KarU1rMBMpLqJtP3' \
    --body '{"count": 36, "source": "PAID_FOR", "tags": ["zpRSMNfeE1nYaIyz", "ttoFm6j1pq77Oe7p", "0Lsa6cn4yW7NPAGv"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Ap5kJebQRqzbp13H' \
    --from 'yPrrd8wIf5HeFZ8R' \
    --limit '40' \
    --offset '21' \
    --seasonId '2isBVNrsYCNMLH6o' \
    --source 'PAID_FOR' \
    --tags '["N8sV5ONcjSPtHpgr", "qgCqaXn0kmTgRDCf", "ulAQpe36T5guybLv"]' \
    --to 'bdrZ5J1B3mGlk8ap' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'zBNAoHCX5xvs1YUY' \
    --seasonId '5LsdpJYzFzJu065K' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'tHYGeKQ5f07bsDxP' \
    --userId 'ki8Cs7ltzteBidiS' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'rOEJ0G0q1ZUkg3CB' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'Lq6kSmIePku6Xjmp' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'hLMiuUZtBDumLX5i' \
    --body '{"passCode": "al2vnUCF2bS3cJyQ", "rewardCode": "DSjaislbW7W1GZqR", "tierIndex": 80}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'sln5MXB7G8Qy0Xiw' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'wjotohUtd1HSf6i7' \
    --userId 'PopEyUtSyvAzM7cC' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE