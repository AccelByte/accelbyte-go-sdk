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
    --limit '6' \
    --offset '42' \
    --status '["RETIRED", "DRAFT", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "Fa2VzcyJFfqltwhk", "defaultRequiredExp": 72, "draftStoreId": "uXWKTWcQkqjuXrsR", "end": "1988-08-03T00:00:00Z", "excessStrategy": {"currency": "Of5sstPDtiYlQwQK", "method": "CURRENCY", "percentPerExp": 38}, "images": [{"as": "XBnTsVIc8eTjnEBc", "caption": "30vIWPmORCD5h3Zt", "height": 52, "imageUrl": "QuEhHQVWrJYcH84X", "smallImageUrl": "LAQrvggczKkQxjC8", "width": 60}, {"as": "C0mbacdoNo7niPo0", "caption": "ecB1YUi0wDsKEMFy", "height": 71, "imageUrl": "XzyMWFshy7eCJZYD", "smallImageUrl": "XSVBY3d8Vc74b21m", "width": 97}, {"as": "0shJpoblNhSmwC2p", "caption": "0XZ34YOy0L2XnQMU", "height": 0, "imageUrl": "IN0f5vFetw4N5M6h", "smallImageUrl": "Lt2R5eKt7dmrxrs5", "width": 57}], "localizations": {"6UWJwSN5OHMgYYce": {"description": "ne9q6Imvy4yfsK5U", "title": "OWeEkjT165NsjfHw"}, "KSmtWDFHxT7sdb7G": {"description": "kr8GEVDq1hPvxRXx", "title": "HoZKY2oVmvea5a5R"}, "m8vXGpq6d7dEzYWD": {"description": "c9XeL4H3D8jID0xI", "title": "L1ySMvIEkgTOioRh"}}, "name": "ObuKaP4zRqGWEugI", "start": "1981-12-18T00:00:00Z", "tierItemId": "zFIvnTzdwJwRNDyg"}' \
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
    --body '{"userIds": ["vgQ2GsjWv6WpaapX", "ReQowvbI1r1athTB", "rPjUvEb85zqXNsxZ"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'Sb3ng08OAzSPnRWX' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Tg9AHNmFbRaf0d5W' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0InVal116bF6NSpX' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'tIW0dGxuAiCIBxgk' \
    --body '{"autoClaim": false, "defaultLanguage": "6acno5CCKy863oZc", "defaultRequiredExp": 67, "draftStoreId": "2F6yhcWJ9wac1X9k", "end": "1975-04-07T00:00:00Z", "excessStrategy": {"currency": "XZovPkYM9JhxezH7", "method": "CURRENCY", "percentPerExp": 78}, "images": [{"as": "trFbXZ7rMSwZ8R73", "caption": "EXlBki1MNDPgne1I", "height": 15, "imageUrl": "SHocg2q5Am5iUaui", "smallImageUrl": "1Xd5AIKeQTTWZO0R", "width": 47}, {"as": "JBacgUXugRn1Z0Cx", "caption": "jdMY6GqLnC99t2IJ", "height": 82, "imageUrl": "EI3eZRAdhK1Uh4tM", "smallImageUrl": "qhhmTcEgko5bYEie", "width": 23}, {"as": "nDfXWkRpcxChbzIn", "caption": "7e3V1kYPiZnGJGWl", "height": 30, "imageUrl": "8qOCXEfwdDYuRv0p", "smallImageUrl": "OcmjIz6KIMi8w1eL", "width": 2}], "localizations": {"wgei294mvPMUOUF7": {"description": "FgoTiLiDK5OAWyCA", "title": "wps1IV5jpzYTEel5"}, "DDMxXduu2cwwLtsu": {"description": "FLqRVrq3VxPJT3Ms", "title": "tqkMggfoGVs9JoE8"}, "QDnyfeYtRDpELUNJ": {"description": "8GkD3gGz14ZxnI5y", "title": "NFJxgNxg6uJ4uBO4"}}, "name": "bdrNoUPMQ7SMubef", "start": "1989-07-28T00:00:00Z", "tierItemId": "C2FE0WXQPSCSVElF"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2rKJGy2yrHswqGtz' \
    --body '{"end": "1973-04-09T00:00:00Z", "name": "QxAqagudpitF1wd1", "start": "1977-12-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YlMIDWno0HFNvEx3' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Lzcp79tzdmCHdnxl' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'pV9FRhdeJsFXOBhz' \
    --body '{"autoEnroll": false, "code": "8Z7kJmZQjoCKaVQz", "displayOrder": 42, "images": [{"as": "GHwsxpIYq7G16EYE", "caption": "yhjtWAlQNuld5uyV", "height": 47, "imageUrl": "W1IoKj1MQnA79f84", "smallImageUrl": "ZRgNVbEdjMecLPVq", "width": 78}, {"as": "nMnTUPACN0zrk04q", "caption": "IZeEaHaFhqEDR1UC", "height": 2, "imageUrl": "yDvDrJYXOhKx5ELl", "smallImageUrl": "xJSuF2l9HZl7bLDB", "width": 41}, {"as": "70mIa19CPHdTOgC8", "caption": "rccXhWMM0o1GjE1H", "height": 70, "imageUrl": "63052EI7H4uOF98v", "smallImageUrl": "aJFjF3ZPbrv4WXTJ", "width": 26}], "localizations": {"2WWS2h1Gt4MJykEn": {"description": "XBZbbzjSSMZAtbsB", "title": "jKPiQRTrcbvjnCZh"}, "VOLm10eTVfjyS2Qy": {"description": "3bcqX6qSHq3hqj51", "title": "SwWJHeXgJSjfqRJR"}, "1vbgzug7kBBPb1yG": {"description": "SdpfZazGbnqnChlJ", "title": "O8co32moSxKKEXf3"}}, "passItemId": "qtjtQjRAvQ9wOE9R"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'wr3CFbAohbBQ7rcR' \
    --namespace $AB_NAMESPACE \
    --seasonId 'WCXpl519povl0NlO' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'I2RlAYIzVUncOu6b' \
    --namespace $AB_NAMESPACE \
    --seasonId '7dUUSmkbcXpCtyrR' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '40o322izGnTo3xun' \
    --namespace $AB_NAMESPACE \
    --seasonId 'xXgQjNCNzHHvwbli' \
    --body '{"autoEnroll": true, "displayOrder": 66, "images": [{"as": "ipkcktm7Z4OVYHQu", "caption": "cVsG5VtAgk0vu9Bd", "height": 30, "imageUrl": "Gi09FVWJkUfJYrGj", "smallImageUrl": "H6Z9y567kxXnARj1", "width": 35}, {"as": "Aqdy9ZLmrr2ixFOB", "caption": "cWdR7eIillsQsDC6", "height": 63, "imageUrl": "M0nL1qOC4FYtKmEP", "smallImageUrl": "7mVSlL9TTYgCHlS6", "width": 31}, {"as": "lmZT6PCaaTYOqTui", "caption": "mfyNTeWFf1vh3Ydf", "height": 40, "imageUrl": "S4uqVtitU7094qN5", "smallImageUrl": "4X7ihig7VPzTt5di", "width": 67}], "localizations": {"xJksGYbmvQcGhSVh": {"description": "S7bOBcPfO5v1xVwV", "title": "p0i3OO0CYtAJ6uva"}, "8r0DXu1stt1xoknA": {"description": "5aGZdfFH4dKkGypW", "title": "T1CACKSuq4d4Weok"}, "F4Cb7UDxdN4Jw8P3": {"description": "ySpMyaDkyV1OfMpo", "title": "BIzgLKvfUtbLLPJV"}}, "passItemId": "tSB9ctTyhQTj7JRb"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YFiRbCoCEJkxmLPq' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xgIWpUqcfrkjdQpm' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'ktGCkgEo8wHFTycg' \
    --q 'QWWV0GxcEUYWGcot' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'PF8LoioR5gZW7XjG' \
    --body '{"code": "PwOA7MpFMqkWuCwh", "currency": {"currencyCode": "xEQlGGXM6xXXtJ0M", "namespace": "g8Pt1jhJMPL9Ie7r"}, "image": {"as": "sZSJl0p3MABc74Z0", "caption": "v4qoLUs0olMlRynU", "height": 36, "imageUrl": "2tP0lkeruIllv2Kx", "smallImageUrl": "ivSOlf9qLGDdyDBe", "width": 59}, "itemId": "8LNr8Wf1BbjrWPoD", "quantity": 19, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'rEeWWdPXTqlXSqFm' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Mc5ngo8xPZJp3jGJ' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'hmGfLVyF8wpkv4fx' \
    --namespace $AB_NAMESPACE \
    --seasonId '0ACBgv53pdMdT8Ia' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'YCcA9m2kqyB2nErH' \
    --namespace $AB_NAMESPACE \
    --seasonId 'G2C4hrz7RyrrlAXi' \
    --body '{"currency": {"currencyCode": "QBQRwEeK4UY2Vzfu", "namespace": "ti58CCcJHM8c6RoK"}, "image": {"as": "gcj6vn84ZXzdkZk5", "caption": "ycntkxxVQDs9mVgu", "height": 22, "imageUrl": "2GcnHkyj5zoM2wyQ", "smallImageUrl": "8RGFA6uaQYEwbY79", "width": 32}, "itemId": "GFpFRpaEw8lSZonl", "nullFields": ["LUSQns8DPFuAvXzX", "hoJsds3HrM1X3g06", "tdlsRK2aq1Khcq1L"], "quantity": 87, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '9UQS325fsXX5gFXS' \
    --limit '79' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'DWYPSFTYShknBpNc' \
    --body '{"index": 74, "quantity": 98, "tier": {"requiredExp": 55, "rewards": {"EmR92crms3pSNYOF": ["bKQ7aR94htxvHGpp", "J5QyKuPBvK2cLHmh", "9dFlPqDWxMvUf6hn"], "TjsJRDiBFQuntsXE": ["O89CPR08HqWUR3u6", "eVqym8IDeNNd2YHN", "yVnIN4xAsjwhi9D8"], "j3UKc9nzhivV77MT": ["BU3KHiNsQDad0JpE", "Aztkl9LyVmZXyxNQ", "K2vt9oUlaTIoSxPO"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '9TUONadJLL8DnWur' \
    --namespace $AB_NAMESPACE \
    --seasonId '5hdVvuc1fqLwO8dW' \
    --body '{"requiredExp": 63, "rewards": {"5GjEyTsQs454QzRn": ["ddU9pueOBBw4qan2", "pRWiK3aEIbbmBe0L", "cvlOg4u0rdHAUr9v"], "oHQnONubuJ3ixMT6": ["LopTvisnsgORnzqY", "CY8Wt9RU6nbD1ov8", "4CBwbDuNZwkOC3no"], "saZcV3DioYYwfc1x": ["B2NKC87obd0DeZwj", "rchyJnt4V4FnuoyX", "7aT83MagpfuMIFua"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'ViJUxnShijwQeQvx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'lC8XvcX87r8NzFTq' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'QQYhT4zAcMSJj5Ut' \
    --namespace $AB_NAMESPACE \
    --seasonId 'JBop4IabiWozN4JB' \
    --body '{"newIndex": 83}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'UJRdRqrU8xwaAszq' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId '7knKO0cfMzJIoM0d' \
    --limit '70' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'U8Wt8nuFPpHIrRkD' \
    --body '{"exp": 11, "source": "SWEAT", "tags": ["kWuobWdBeZmwQOas", "mLyYiYbH2pcDa1pK", "3OSR1TEoDBZLtQzd"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'XMOYwJkhogEvQY5R' \
    --body '{"passCode": "VTLkrsFHK7pLTmGY", "passItemId": "vPg6rWKwwoTxMkut"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'bKy8vCFfOJw5OHAS' \
    --passCodes '["vgyUg4vWUApHjNyB", "NkOxuna45R1ii1iI", "uQZ8QXv8Ci1MTfal"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'siUl8DzHtbsNNhfy' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'TCR64jCY3F59OtCS' \
    --body '{"passItemId": "LfUQDqcrWSJan0Hc", "tierItemCount": 70, "tierItemId": "jcge3T25OeDzH7m7"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'smkyyCb93vCHcSgN' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'iDPfUEKzZmfXEKlb' \
    --body '{"count": 18, "source": "SWEAT", "tags": ["T19FeOvvS8Iz67Zm", "0GPzZrSTAxSiKw0B", "LRfMT9VlTquopG4I"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'HZuliLaQHbfciQBe' \
    --from 'UUSh8M5ycjXZfqIH' \
    --limit '28' \
    --offset '71' \
    --seasonId 'MsIkFX8MSqLphsQj' \
    --source 'SWEAT' \
    --tags '["bB9yrbA3QNCgwORs", "jmhIcKfSYlTumAuF", "zG4plwu0JMtUbHyn"]' \
    --to 'zavLxda5toJGemeT' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '7CwcjJ3rRaCmMDNY' \
    --seasonId 'KvJ2XNyOmBjb60x9' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'UfPRnvGazFx2mMbH' \
    --userId 'IgSRNs2LenLd3XPZ' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'XuQf1WaLA1cm6jD2' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'E30hMSd6004CLFma' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'OR6hwFPmjtOrjDSh' \
    --body '{"passCode": "TcOXwxZUtob6TIwL", "rewardCode": "We7FPqlAJOfqOHeo", "tierIndex": 47}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'x3yUVJstHknjjlbW' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Zcvdm3sHebkUMq8u' \
    --userId 'wXsYGJIagqnnFND5' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE