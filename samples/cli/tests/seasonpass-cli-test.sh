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
    --limit '97' \
    --offset '16' \
    --status '["RETIRED", "DRAFT", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "GTISsBWE9D4cIKbs", "defaultRequiredExp": 50, "draftStoreId": "KDFL84LFtnpfStMY", "end": "1976-08-12T00:00:00Z", "excessStrategy": {"currency": "Qjtd4AE9IeE6rYIL", "method": "CURRENCY", "percentPerExp": 59}, "images": [{"as": "wYDjl4mPujQcXvSy", "caption": "jqJMGAJBqeraRDYO", "height": 57, "imageUrl": "lN4TXRg7Vli2okcn", "smallImageUrl": "WmtpQs1dG0PRC9md", "width": 39}, {"as": "4J0LTYC85vdn5oXE", "caption": "LTH6Yx1hEzReB09R", "height": 82, "imageUrl": "B6kyH045uPCuTFoY", "smallImageUrl": "xP2UWoNTPFJqd2WZ", "width": 25}, {"as": "zAqjL7cGJgua6gWB", "caption": "uzIm7hZkvVwtnhTp", "height": 85, "imageUrl": "So6yaJV3u7kwJRju", "smallImageUrl": "1qmv645bkhher4TC", "width": 35}], "localizations": {"Dc60YrUHX0RNuA4C": {"description": "pQfM7UqS7HrNaMVN", "title": "KVVpWret5cPAN32R"}, "HgdAYvtqNojszSaG": {"description": "1BJN1PqZlF9dcfMC", "title": "SMATlx4hFoUa7Dfk"}, "DwQ0AzXMEFzstZYn": {"description": "rNRMFFQfbeUC9Sws", "title": "E3VIjjJ33sQ3FC88"}}, "name": "drtmpc8pdHtrIQ5B", "start": "1980-05-02T00:00:00Z", "tierItemId": "DHCvtQi9tL6cfhjc"}' \
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
    --body '{"userIds": ["wjz9Hdfdsr8CxhJV", "JUvNwX4wzL1hRQ9s", "Clicwg7qXB7NHqzR"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lL7G30oky5hsdfGA' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YSLVPRHleW6Qa5DX' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IjkyoJUakVqAKb8L' \
    --body '{"autoClaim": false, "defaultLanguage": "Zy3Py94rV5ra3OAt", "defaultRequiredExp": 64, "draftStoreId": "V1VqykFfWtYPtnuu", "end": "1971-04-14T00:00:00Z", "excessStrategy": {"currency": "TE7W2JLH09dhBoZJ", "method": "NONE", "percentPerExp": 81}, "images": [{"as": "kGEr9BKgRNbPblI6", "caption": "tyoYa4XdALvvwX5l", "height": 11, "imageUrl": "2vlYeFdkrZmItus0", "smallImageUrl": "3AiHtX3zYgj96q7f", "width": 99}, {"as": "OmfwqqYabJI7mg4W", "caption": "ZhrAn9krrTcFbKQi", "height": 14, "imageUrl": "yGNUKOcf8bgAucGt", "smallImageUrl": "3PYgJIZtfZreUaFM", "width": 96}, {"as": "1NdjroI64Zj13WTl", "caption": "Aboyar3ervA12ZCP", "height": 73, "imageUrl": "vXca3FMGYgsPXCH7", "smallImageUrl": "55RZHpqipWvtmhKb", "width": 63}], "localizations": {"tirXEuFdb2gDwojk": {"description": "gYr4wRm9O4FtVSv6", "title": "qnUsoSw4TstN01uh"}, "z6kFhUnGmTVz5l2K": {"description": "8PamQGS5vmKrkkLf", "title": "jFCfwQrCYno0tcC2"}, "wkGb6GcTwtuA59qv": {"description": "YmqigZuGM6LcWEK5", "title": "C1DMFg0oMS2Jm1AV"}}, "name": "c3YdNaxzOcIejDWM", "start": "1987-02-11T00:00:00Z", "tierItemId": "pXJFRMLurmH8AsdK"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nOBxKati3h2Wdfo1' \
    --body '{"end": "1996-01-27T00:00:00Z", "name": "jAT7yOg2KPiokPxG", "start": "1993-09-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4lmYJU6tCXAhQFW6' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'tWt7AHizBhsHgUtb' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'XAVxjkLtH7XfEtZ7' \
    --body '{"autoEnroll": true, "code": "Ibl9yoxsHI21UFk6", "displayOrder": 65, "images": [{"as": "4Dp4yV4JxBobkeMv", "caption": "IByEKbQGMC7Se1sa", "height": 100, "imageUrl": "co7EGJ7ehNo7wT3V", "smallImageUrl": "t7xmDNcGM4X2kcD1", "width": 58}, {"as": "OFd1wvVGFAXjdIwc", "caption": "u1P052HTJ1tFs3SV", "height": 1, "imageUrl": "zOEmrO920x6mvZee", "smallImageUrl": "6mkw13zX8osAXOtQ", "width": 9}, {"as": "LaLjg70ffV4cKdoJ", "caption": "B9fgkBd0Iz0gtHen", "height": 80, "imageUrl": "gggqKDmedujAywXD", "smallImageUrl": "G0x1dRK8YdsfK6i0", "width": 97}], "localizations": {"0x0smv2dJZINCsFt": {"description": "Dy4Bwkis8AoWMLln", "title": "4Ne5qVNDDaXKqQhN"}, "iMpvm63cA0rxHRnw": {"description": "MvIKzCD5z2YKr6sx", "title": "RxxXj3AwVoPmdmSu"}, "4PUd7DVxiYeFwrI4": {"description": "xpdIStAG7p9ucDuX", "title": "3BVAmYtzIwCxL67D"}}, "passItemId": "KJWcB5AAVg0KVUCx"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'kdBQQjaSKcMnD029' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DSU19711Xm2vgdsV' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'fnuFCkQ9wbf2OGZY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'NdOZcjky79ciFi7M' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '2FW4CJ2gs7bQsn15' \
    --namespace $AB_NAMESPACE \
    --seasonId 'QlZnASkSiVYhPTZw' \
    --body '{"autoEnroll": true, "displayOrder": 93, "images": [{"as": "TMLmsQpFMS4eg0jB", "caption": "fWtGnrDKgD1eJIKM", "height": 83, "imageUrl": "W8tUg4wfdTJOE7A2", "smallImageUrl": "TARHVy62yRWXGvth", "width": 21}, {"as": "4Lm1o59CiStBSa2C", "caption": "nddAapI20bjtkfeA", "height": 58, "imageUrl": "a5t3SjjKzCYlSPTU", "smallImageUrl": "aCVVm2qPpdKnE8ji", "width": 56}, {"as": "Y5mGCM8whXhubfc5", "caption": "e7XED3G1Srk95j8a", "height": 67, "imageUrl": "aOe72hKGmaj8jX2N", "smallImageUrl": "oSYkPViJ2N7gdsIT", "width": 20}], "localizations": {"TyT5btDoybVrfq6x": {"description": "mFYCEj057cwbPVmQ", "title": "OLpxLifMkMqTl7dy"}, "9PjQH4vwnwUQA0Bs": {"description": "BWOkkqOVmzheN8sx", "title": "7f3W5kZ1vqrgj1X8"}, "VSWGt6RV0MK2yjDD": {"description": "l8BHyictZhjO4lgw", "title": "qbZE8gjUDWgvpOTf"}}, "passItemId": "nhPxhpya6dtD35f2"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ayiyle8A2DX2pyJE' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'tnXCGgbjU2TCHU4O' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'UVewjcvM2nK0QKAt' \
    --q 'WDO3MjzT8zwASg3M' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'jexAf1Dodl8akR44' \
    --body '{"code": "rQHnItqSMJy1PtXQ", "currency": {"currencyCode": "nbbC9qIDZkBBELj5", "namespace": "zLrv2cosGZfl9Akk"}, "image": {"as": "4Uh5Bn0aUfeTI0yj", "caption": "w77tQGO65JGuwr1X", "height": 30, "imageUrl": "hLIp0XkTpkT0VEZ5", "smallImageUrl": "0CMuDarMZSf8uKIm", "width": 59}, "itemId": "pC3g9cgiiux9AQRG", "quantity": 77, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '0WvpBjMtUKroZhEc' \
    --namespace $AB_NAMESPACE \
    --seasonId 'UHpuzwO6nyMfWrlj' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'B4rDWF7hEwWNvcx0' \
    --namespace $AB_NAMESPACE \
    --seasonId 'AaLvUFIgi4s7X67S' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'wm6TGqhxtqbPhB2p' \
    --namespace $AB_NAMESPACE \
    --seasonId '9XH3KDUbRHzzwZA0' \
    --body '{"currency": {"currencyCode": "cjQmHjdipiaC1Jpu", "namespace": "JlWhWrtz4KgB0WDy"}, "image": {"as": "f86v2ClQ354SgmNQ", "caption": "XhgjhCqkdbyavvk7", "height": 55, "imageUrl": "opyeFMKad4Nq1WyI", "smallImageUrl": "a3kwGtbzmpKvbGst", "width": 35}, "itemId": "CM6oWolPgUdTyBly", "nullFields": ["IZuQHhZfn0C6HDbQ", "LoY9AXZXR08hLxSS", "aQR7zFjJNhxTPoiE"], "quantity": 43, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'pZ00LrVFXJEdS03v' \
    --limit '83' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '2aDTZWrOo9It9N9y' \
    --body '{"index": 10, "quantity": 33, "tier": {"requiredExp": 75, "rewards": {"5wFlXsJLA0UQSWus": ["stgK5HLVNPo6EN6Y", "6wRkBjMaIGrpqFOK", "b8lGYtX6koG5jk4Z"], "nlf0yko7jCO0jkdD": ["obfdKcMzi1VCdC63", "PFBzldEUvjFxqtzf", "GzYG8x8YJX2QD367"], "5JBUTbKMmrXTr0rB": ["eCm5q3kalVWxma0V", "6TW7UU0l3zLWE7uo", "WtxXZEb830XFCB5M"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'xOmlhOXtthCuoIqP' \
    --namespace $AB_NAMESPACE \
    --seasonId 'w9bR9dmBfKgFZkiq' \
    --body '{"requiredExp": 40, "rewards": {"BYopFL4u55swvMSR": ["z2eUapXWTZpboW89", "rSfSyHpSAXvL7XNE", "N7VGBWGgACFrwEB2"], "iF9nfpLQ5LAMdT6w": ["yqkdqji4yl9ft9cQ", "QzLXynacv7Z1XLLy", "cVxKxT9Txa4JCG7l"], "DAv3VyRBkxROpr01": ["HHa3r2ftITrdghca", "EikF6Y0hbR1FGWU3", "FudX9gyGyzFWCHBs"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'uuZ4qwcjFqfSVsN6' \
    --namespace $AB_NAMESPACE \
    --seasonId '3FEcht7bLMqloHZH' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'PzwYUWHqcKVTN8KH' \
    --namespace $AB_NAMESPACE \
    --seasonId 'zVRDaRgU7M7MafeQ' \
    --body '{"newIndex": 8}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'TlofauQuNgTKtHhb' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'hxp9i2YeQZlIstUY' \
    --limit '74' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'sw4p5513zuOLFLqZ' \
    --body '{"exp": 74, "source": "PAID_FOR", "tags": ["BLdTKv1ri5Z3ZgCD", "BamIqIdA88wxwYry", "nFqMvJpcZKNJnVFR"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'Q2aT8jlbYjmiJ4MN' \
    --body '{"passCode": "ww9c4fXACs4KKOxg", "passItemId": "C6ALhFoE6iwxihuT"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'rFqeQ0w7isHrxxg7' \
    --passCodes '["T6VXuzKrbWgWgmi8", "Rdqmwuqi1x5uWD2i", "atOxfgtgRmw8kBGN"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'ZjjCHIbiHaEOQRQw' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '00vpsGRYN1qOKHyU' \
    --body '{"passItemId": "S8pGlT2QdiSw936K", "tierItemCount": 57, "tierItemId": "LbUGP0Ud3BoCqIXC"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'CjcLhtG6BFzxsEOC' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'Dnsy9VOI2f6QTrCi' \
    --body '{"count": 37, "source": "PAID_FOR", "tags": ["RQlIAGdlBiuVYebr", "Gl6RhTEn1XWHfA8u", "Pk8RwCUwUH4yCnUg"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'TFyPBZpx18ExBsll' \
    --from 'aiDGEEA9BlguE9D3' \
    --limit '74' \
    --offset '91' \
    --seasonId 'xOg2d9JNnC5N7VUS' \
    --source 'SWEAT' \
    --tags '["x9sXyD5AJvKd7pdh", "CUEiGy5wdOUdQYah", "7xXiNKa8F6GNIrAM"]' \
    --to '3gwcYKFuNdZqGB23' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'ZOE9JoDcjmh1z5OH' \
    --seasonId 'HcG5y6QsJhNvReUe' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'yawrp3eWQo4CyKIc' \
    --userId 'cEcIkaZ6MbLOqtFB' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'aa1g6JoUzamVoRAy' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'd5f2TmrR8N2kQ1W9' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'Gce96vf3mzwITw7L' \
    --body '{"passCode": "BYOMdudISN6xJrx4", "rewardCode": "YKKxZmDx6jNv2Ot8", "tierIndex": 73}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'dKv8gPfj5peYqB51' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ISUcZ7DroXObZ19k' \
    --userId 'jQpEpDz8L9mrcUbE' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE