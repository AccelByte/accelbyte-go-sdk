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
    --limit '86' \
    --offset '75' \
    --status '["RETIRED", "DRAFT", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "6RyFvAdCZikyBDcJ", "defaultRequiredExp": 58, "draftStoreId": "lKovi2grns7H2sgv", "end": "1999-08-22T00:00:00Z", "excessStrategy": {"currency": "30p5B2QPjxuXKRyh", "method": "NONE", "percentPerExp": 71}, "images": [{"as": "Kioe2B9hH54TiqGj", "caption": "HXuENtrXo7WiHMH9", "height": 54, "imageUrl": "e332hDAQhDGrkO2S", "smallImageUrl": "M9LvpQuPmNk9tgmL", "width": 36}, {"as": "VB31WqdVImIvJOOK", "caption": "ivjrveGCIdTziknn", "height": 50, "imageUrl": "KAtXrq8zPN1Nek81", "smallImageUrl": "sR24RV4gWT0QpOJl", "width": 59}, {"as": "jNYbHSI5De0nzJ3n", "caption": "drKe5nAO3XoJqWav", "height": 91, "imageUrl": "VhPHyU8bgTBwJchb", "smallImageUrl": "eJbEpzOXXcOGnJQk", "width": 19}], "localizations": {"3quih3CFPJRsFaXj": {"description": "uHyGTsp4JqG9hox6", "title": "5ylm89Q1Bi3lUgzj"}, "eTHIXVsBMEfEfT1M": {"description": "gfhmuVanf05nFYyy", "title": "lIRsaxg0lE9XStHr"}, "8dDq06JET0Bx1Jhw": {"description": "1fTxy0YE9ybX1Kh0", "title": "5G0A4eabSXgK7ntz"}}, "name": "bhbOxInXqysENOud", "start": "1975-07-24T00:00:00Z", "tierItemId": "3Zba9S2sRdclrXTk"}' \
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
    --body '{"userIds": ["O4MK2gmxU6G2jItW", "QjuqbAMOeqyydWPz", "Lbahgsg5AN69BnIX"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'loUrcuHxJzsTBSk3' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bm4DTbGpmoe2Dggs' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '227SXu8sTl1iGqWX' \
    --body '{"autoClaim": true, "defaultLanguage": "NAXvyILq7HGiwT0z", "defaultRequiredExp": 95, "draftStoreId": "3IXGEhjPAW32D1CN", "end": "1988-11-02T00:00:00Z", "excessStrategy": {"currency": "A4c3GzLFK9aGVhGJ", "method": "NONE", "percentPerExp": 74}, "images": [{"as": "OWI4QnCpo8dIRYA4", "caption": "gbcILgIMNFWVZq06", "height": 98, "imageUrl": "ElDUK9giHSnCF1by", "smallImageUrl": "Ycob2hWr9YMv3KO7", "width": 55}, {"as": "7VQQeSyRAaTWfkX4", "caption": "LfPJEv6QwcNpbU7c", "height": 46, "imageUrl": "kg6Kzx6OZvB85DrS", "smallImageUrl": "NFkaOEVjiDqotjtV", "width": 40}, {"as": "EpoRNkx08iDKDLnc", "caption": "I1ipzfyiiWILtcMc", "height": 24, "imageUrl": "sURlwvScv2H6MIpQ", "smallImageUrl": "UPiiWfpA200s3wX2", "width": 11}], "localizations": {"Dh4t9FG6PuDTO9KB": {"description": "7KopMdzsHUCQq6iH", "title": "M2FIAnDQFWiLRfiT"}, "PwAlrM2mznA1Jlc4": {"description": "RLdMhW01OUzZWK7s", "title": "PUEV5nBXYVLx4CdG"}, "bq1uCzqbP08yorDA": {"description": "zFp0PJYgh1aOWrfM", "title": "s41D9Pj724ITe9Jh"}}, "name": "ZYLRubXcig0pYHUd", "start": "1997-10-06T00:00:00Z", "tierItemId": "GbeKbCRfiQuhPwui"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'L2Rk3srvCdVISTeU' \
    --body '{"end": "1998-03-17T00:00:00Z", "name": "O69jg9BRa2C54bho", "start": "1990-03-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '29Nara9NlbrGCXDk' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'gnHOZnBVkZs7Ca8p' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'XWtrYDl3bw6eElLr' \
    --body '{"autoEnroll": true, "code": "uixhSojJOMIRNvzq", "displayOrder": 49, "images": [{"as": "PQIZR7b6VYBHaCmh", "caption": "XGxsFgrcmdMUNief", "height": 22, "imageUrl": "6dvgYgmLSuHPY3jX", "smallImageUrl": "8x0H72XYAaamGgTQ", "width": 65}, {"as": "8myyMigT1YlFCtAJ", "caption": "HllkKSdCr6adZoWz", "height": 92, "imageUrl": "QVD4dcSlBhDjwiDM", "smallImageUrl": "QSv2h9Ogrt6VREVL", "width": 67}, {"as": "IR2bl9yIFrEqmqVX", "caption": "v9aQVdScSXB0zQBg", "height": 26, "imageUrl": "efzqVfkqolWqrgdo", "smallImageUrl": "0RHdnYAhSCHtjHno", "width": 72}], "localizations": {"EqtQBEhhVZ571FTg": {"description": "h6K0ntSjGyLf8uBx", "title": "conR4oBKT77MvmlT"}, "zqcGZwvnnjhk0aEj": {"description": "v49GOhIEAs1gzmZD", "title": "fMp5cAvfh0H6vr5v"}, "PCPsQHE7OeTgEB4n": {"description": "fnTnC3yUNhWmSKoO", "title": "YVu5YsLRwDHk0l7j"}}, "passItemId": "tUeX5AQnTANxG3hf"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'mRhbtqy3IvWchTGY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TRuByrSg7pdUp2pm' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'IAGnAJRl4OwaGweH' \
    --namespace $AB_NAMESPACE \
    --seasonId '8FegECduoindgi6n' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'nx8JwmnIlbJaLcOj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'fQlzrrpa7zssQifi' \
    --body '{"autoEnroll": true, "displayOrder": 49, "images": [{"as": "v6bawnVLhiJfrgj5", "caption": "E3z797V8GIae4kUd", "height": 42, "imageUrl": "wZualMj9OBDYxcZU", "smallImageUrl": "5Fkgptcr5U82PJ2E", "width": 49}, {"as": "2H6GANBxayDT1gx7", "caption": "pDi3yL1jXO5ltTj0", "height": 70, "imageUrl": "JWSSq9B84PdlHngW", "smallImageUrl": "cbiuVrEd1suXPJnJ", "width": 86}, {"as": "fgvx3GkQNFvdbMV5", "caption": "3grHVsmeLhlKru7J", "height": 55, "imageUrl": "P0I7yfYGCF0luKuC", "smallImageUrl": "O0y9vw8OkSk8Ru8e", "width": 68}], "localizations": {"3x16STSyrHTM5WZJ": {"description": "krzzIy1burAdHpb9", "title": "x5bPamkEuF6hRBm7"}, "T1t4ur5htDHCzKcs": {"description": "zBpFgZF6kDTUZwuS", "title": "GZnOTjg3GYcnveO1"}, "IVcJViMtqhcMTyTT": {"description": "XAHErs1F5QvUsuBG", "title": "FIOHNRvrlx56VReh"}}, "passItemId": "BV8LtpXFAHtru11T"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Q8DhMMyEoChlGj6V' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0xFe6gYjbcT9ANCY' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'pEBTvfsWvIDY7KK3' \
    --q 'vPsK07Ijuzkl2Nkh' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'gdzGTyFmTGKAyPrx' \
    --body '{"code": "3IFPW2wbmmouYALz", "currency": {"currencyCode": "0MWLznt5qvQ9B4Jk", "namespace": "82kBGJ1J6GtyiOSK"}, "image": {"as": "G5xKRZJ2RIgwY2p3", "caption": "5DGlgDgIDXMNn97j", "height": 72, "imageUrl": "U6kPdP76ZbCMFy1H", "smallImageUrl": "2TrFsvkTq9VJutdN", "width": 87}, "itemId": "ANBmqR9kBge75Jgs", "quantity": 12, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'qN8kL12JXHoeidPI' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jHsqz6V0evTe1FIm' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'YtGjtE7sXnN3q1sz' \
    --namespace $AB_NAMESPACE \
    --seasonId '7qgzvPoHsacBZB9p' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'm9pnbjUaQhzQZrA0' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XBUI5xRYYFSy7Och' \
    --body '{"currency": {"currencyCode": "775Z6lU7ZFNvsTAV", "namespace": "i2kSgnHA4ojQU9JO"}, "image": {"as": "dWau6sSJTT9V7uOa", "caption": "V7Of8VGPfWuiIgDP", "height": 32, "imageUrl": "NjE0cynH5t9KGPN4", "smallImageUrl": "7I84HDFzmn0WKPrY", "width": 38}, "itemId": "TdkBWYJWC95yBW6A", "nullFields": ["NbeTdhKAdVPSZ1sr", "fnzBpkXqeGpEnnau", "JnKuqDX2Li9MQWcm"], "quantity": 49, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '68lgUlNqItuNzVjj' \
    --limit '36' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'hT7itsLWWsuynfhv' \
    --body '{"index": 80, "quantity": 85, "tier": {"requiredExp": 66, "rewards": {"DlVec3zBKzlDFFIY": ["wUUjUfhOGmpI3I1k", "jMw4FCGjeiHVIESi", "qLEwB0iFCCNcAmXE"], "hpb5fbdlcyDrvDyz": ["xUoKWWDrifExIOHK", "vyvnPpl4H3U8AtYD", "qgMVTNlFv5ngCb1f"], "RnGkQwBXQmSsCfLW": ["9OZbO2mNqPRXzrUn", "Mg2bu399xxB5WoZl", "8VMATzpVzHoZhuMC"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'Wh8uEbrUu4QATwpV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'p6YA9FPo3FiiyMUs' \
    --body '{"requiredExp": 4, "rewards": {"6iTtt2VNpWmhVExS": ["9RywCxnPAmXqVrb9", "mUkm5Zz92jOlMeHi", "EK5awRLThoF0jx3Y"], "oghwGFF01eUapqh0": ["EsTrbMMLSI3h92K7", "NroqpqDMtL1783uZ", "IpVQ1AHIU11GnJoz"], "uqKJFZtX3Yyb4tWv": ["GmF0GcQl83dURgU8", "QNbjp01VTIvThpXz", "BfkZ4aM8zJ2Y91MT"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '2A3UVvLtUg59dmYM' \
    --namespace $AB_NAMESPACE \
    --seasonId 'dsG7kzP7Oy5RKehP' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'DxKEBOO37jV56HAm' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LdBkK7Fa5OUiYw8F' \
    --body '{"newIndex": 25}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1oZP5ivywOkxioOO' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'inqkI4jCz1qWo5AB' \
    --limit '78' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'ux56WuGo8BODc1Rw' \
    --body '{"exp": 86, "source": "PAID_FOR", "tags": ["DVbzIKtBxMoyd20A", "AWZQKoalQGcVyq50", "ouXqSiaWvdXZFtCR"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'WuDufodx9pG9LDIP' \
    --body '{"passCode": "QAWW8h0HFReuwjjc", "passItemId": "wgND725D8WHdGjEX"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'LG4YtseBdTyEMCz1' \
    --passCodes '["8OJabZmTXSkT5ZuQ", "RX41mw6491UR4y6D", "bAKcbgnyJpWVZNq9"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'vtr6RATtLfHqKldU' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'dsl5FsriA4mWst3u' \
    --body '{"passItemId": "7fXpQjDQ8HPQOeWK", "tierItemCount": 15, "tierItemId": "Ay6q96CF2nRHhvK0"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'VlG3Mdqcyi5Lua1y' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'cmXDwPvqjVEiqCbd' \
    --body '{"count": 89, "source": "PAID_FOR", "tags": ["Ez11HiizaebOJczo", "ViPyCCQrqR56ogys", "kgu9WVIJVjdtQVuC"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'cD4iCjET5Y6eSKRt' \
    --from 'j2lyYfQQHt7tGPUL' \
    --limit '17' \
    --offset '25' \
    --seasonId 'FTLWqp1tVjT1FA79' \
    --source 'SWEAT' \
    --tags '["AKJ9mwTCuHWLc32d", "avhSXGQNpEqON48U", "JAFkfTgrGxyP9fbN"]' \
    --to 'qMakFcHSs83hrMPg' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'vYyqfHYy8zGjHIwP' \
    --seasonId 'c1ktbRTi5zwSQEjs' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Xi68n5qDEmQUCOUb' \
    --userId 'WTPFIZzsY18Ylcii' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'ApiYXoZAlXaQejLs' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'zUt5xoyydgs7F7nd' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'BMNPg4il1upZqhR3' \
    --body '{"passCode": "upbAlldWPpy0EyFG", "rewardCode": "4mRqQOBQ11bGFvoJ", "tierIndex": 4}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'm56xD7DQxC5lLrlU' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'byFz0yAannhTBCe5' \
    --userId '00r5XCiNqdsDXLW4' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE