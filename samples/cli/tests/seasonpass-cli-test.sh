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
    --limit '22' \
    --offset '48' \
    --status '["RETIRED", "DRAFT", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "rFOAykepZR4mGi5p", "defaultRequiredExp": 48, "draftStoreId": "hN2yM9Crz9uymoKB", "end": "1989-12-13T00:00:00Z", "excessStrategy": {"currency": "97E60vEYW2fgW56z", "method": "CURRENCY", "percentPerExp": 40}, "images": [{"as": "68hKu18gDzj9JUbI", "caption": "zNBcqBsbyw11LPUZ", "height": 5, "imageUrl": "Jv0CEgE1guwrSO6a", "smallImageUrl": "FTlEJEnw1R4VZ5Mh", "width": 3}, {"as": "upPAByMF86QPr0c8", "caption": "zjiBcv0jL2TDP3X7", "height": 50, "imageUrl": "C7R0l9pquKjKRjRI", "smallImageUrl": "IdC318ZPpzajAgS0", "width": 81}, {"as": "8UEAaam0bB0yBCki", "caption": "crezJNjAs2Kg0ETA", "height": 88, "imageUrl": "3hbmkrxyYQ9gqhWn", "smallImageUrl": "EQ8GVXI6TNuZ9sD7", "width": 79}], "localizations": {"KHNYorEwYT8cDxNy": {"description": "sZVRjpJzoE0GBmHk", "title": "xHwKTRLcNAckmx4e"}, "oYb2hWGbg0tJRTWk": {"description": "pS6z2GSKm7qHUmrs", "title": "v8O874aTbQ57jj3a"}, "ZvgovohLMk0GYD3H": {"description": "JPDl1mRuDfwX1FkF", "title": "3M0Et2Tfnqchhhi8"}}, "name": "6lNfaV3SssMMEjcH", "start": "1989-05-17T00:00:00Z", "tierItemId": "NUVthY21tLQGJYcC"}' \
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
    --body '{"userIds": ["DjpLiSS9EABLgxTw", "AGa2o9M8xqO8QQwK", "RecIP6oXKhE5j4wJ"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dYcIA3lN6amJUpsj' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FWB7gjNmrQcMCG6m' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GK2rMVcE19WF2EZ4' \
    --body '{"autoClaim": true, "defaultLanguage": "ACO1XkHG2oyD96mG", "defaultRequiredExp": 3, "draftStoreId": "nY91LcatDX4ngPGG", "end": "1990-10-02T00:00:00Z", "excessStrategy": {"currency": "REIDLxYyv0RxQQBh", "method": "NONE", "percentPerExp": 52}, "images": [{"as": "G10kCZWei3TtYoaT", "caption": "BU9BSGTpkmfXmbMS", "height": 27, "imageUrl": "xls6Oln7nnNdJVFn", "smallImageUrl": "22EulFSyPtcbudiP", "width": 51}, {"as": "sD8ZxwJm1LESt1El", "caption": "UIsTfM8G76HU68Xl", "height": 55, "imageUrl": "AykNlgRj0j3tX2nG", "smallImageUrl": "safbONgxoxSzeyA5", "width": 21}, {"as": "0TTBWxEIPRregRbH", "caption": "2h5fmj79uqdA1HVC", "height": 54, "imageUrl": "fBopiZXpstFeJC5U", "smallImageUrl": "gAiB24PmJug71gRk", "width": 47}], "localizations": {"ECL0R0jj2xrJsrWs": {"description": "UhKZZzjyRtaTwXgy", "title": "OIsOS53qtry9v1b5"}, "4eBzZANA5uvbCApM": {"description": "i4xbqNskIVNZvV1k", "title": "XwHkLhq4pZ73gfDc"}, "BKZxMtViYRQ2xw2X": {"description": "V1om85ErIklfE7f7", "title": "Td5dOUVEd8aaPhAo"}}, "name": "bICZxsF2LpfT32Gu", "start": "1988-02-04T00:00:00Z", "tierItemId": "PXOkb4MMugJQaTWZ"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AZbeGU6rcjSbgg5R' \
    --body '{"end": "1971-09-19T00:00:00Z", "name": "UOInifAKrhKxiFNO", "start": "1984-12-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'seP9aNtnPAsYvjjx' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'ms2QCIaQ3wCIYyYO' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'GYq5tmSIuW86eRrL' \
    --body '{"autoEnroll": true, "code": "DNfzN1oG50ScJURb", "displayOrder": 31, "images": [{"as": "0NyjwZrglkaBw8sJ", "caption": "OXjIzXJFuiW2XT87", "height": 32, "imageUrl": "QGO0u6qqJbU3ycW8", "smallImageUrl": "EHIWghXedzecQWnm", "width": 38}, {"as": "tuxGtVtOfWOczBd2", "caption": "7EXOyCUQ1HMgXO1c", "height": 62, "imageUrl": "lVMMsKrmFlaZKSVt", "smallImageUrl": "rAdMyYPEDxNfI7wh", "width": 6}, {"as": "q7qBgXqBpuNwyt5k", "caption": "g5wMxz2p26Crv9dZ", "height": 48, "imageUrl": "64mVdZqEuet1fPy1", "smallImageUrl": "pqT0bBPKaK57GwCU", "width": 59}], "localizations": {"u8LKJZrSuqkf8DpO": {"description": "aiRoBTkd1WfXoDpM", "title": "xkWGajJylQ8yFK2l"}, "Vrm00yRxSwsqC4cd": {"description": "tSf99rStIMHHMQk0", "title": "jSVoSPzqbsKgiW8B"}, "a3t8wpcxvi9gw2C7": {"description": "XzCaXAaPhCaJR1ot", "title": "vV9grNL86xVw328k"}}, "passItemId": "V0n5vv7eM5K7780D"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '6tGOmvKiqVenNvBH' \
    --namespace $AB_NAMESPACE \
    --seasonId 'mTe3J0AHDLkNzojP' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'yIdXjs8CvBu9b2Ng' \
    --namespace $AB_NAMESPACE \
    --seasonId '06ocVxu2vzzc2Rtu' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'i82WVSUeA5YCNLwn' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EB10OrghmNa1EYBa' \
    --body '{"autoEnroll": true, "displayOrder": 13, "images": [{"as": "JqvIPbGLotVe0ElA", "caption": "2lK0taaQpEvMwRir", "height": 10, "imageUrl": "ZTsD0CBUGr5nT31Y", "smallImageUrl": "gzFPoZ1yk7LXnbr5", "width": 60}, {"as": "3G1heuPmPYL5kg2D", "caption": "YSCHiUWiLvKraIn7", "height": 60, "imageUrl": "vgB9tBAjJdgkBVvh", "smallImageUrl": "eYdVweQYalgsOhXr", "width": 14}, {"as": "jgcIpNZn809ZvqNP", "caption": "X0cOXaNVPto4Lbzx", "height": 14, "imageUrl": "5wLWa8T5IhgKlinT", "smallImageUrl": "BNgbuvfvvNtKLvvg", "width": 54}], "localizations": {"H3Q93OI6P7QiIzvs": {"description": "48SWqG6clLZOObk6", "title": "KsF3qN6Q3bjYY6Az"}, "AenQXDhz7V5UuXgB": {"description": "gTSwAQ8r1Y3LB6Zk", "title": "XVsr9qeI5trzCW53"}, "FbmU65H110nPGp6S": {"description": "SSql1WlUWZtryD9q", "title": "OjwUeFXRZ3iOPDtk"}}, "passItemId": "iyH12ZLPmCEGHeuK"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '098Mg4eev0uTX110' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OPwHaXV4lterm5Ef' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'qMlneNnGMJnsn4Cl' \
    --q 'o6IV17MqWCkvY1Lu' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'DWWVOhKf5JeFfZn3' \
    --body '{"code": "GxJVfgYOFc3RUebD", "currency": {"currencyCode": "AUvqfMmASeqUbvuy", "namespace": "Xfo0hz0TvZs0MNRj"}, "image": {"as": "UmILA1ZLq9JVqOZn", "caption": "jQ125OE6R8gSIXwz", "height": 95, "imageUrl": "RnXOXx3OoKw09dna", "smallImageUrl": "UTd1sJq6YfEEUINb", "width": 14}, "itemId": "3UL4M54AxgmBU5bv", "quantity": 77, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'SP52oHyuOqYTZv0N' \
    --namespace $AB_NAMESPACE \
    --seasonId 'WanmtuOeDjIeg2Nh' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'i9nJuQMBGHeVUgcI' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wiBYumfjqNoH2gGo' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'tulcsNW9oW0AGcTx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'b9IXzaOGNSVTL7yH' \
    --body '{"currency": {"currencyCode": "kmumFtA7Vz167PS8", "namespace": "Qm6pd4vCiMkUCAtr"}, "image": {"as": "vADieVWdxzajD0rY", "caption": "yc65Ho0ttAKyJvjA", "height": 15, "imageUrl": "bBht5NKKuLVA5jhu", "smallImageUrl": "IPuwmX9o1A1pku4u", "width": 80}, "itemId": "WPJtynQuT9RILBhX", "nullFields": ["wnoN2UEg2HE9LcyD", "Z82gJ2hrjkdo1qfx", "1dGIPStTuW4RmBVE"], "quantity": 99, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'axfYt1HHTBcRLWME' \
    --limit '45' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'B90IwtfJfEr1cWtP' \
    --body '{"index": 14, "quantity": 57, "tier": {"requiredExp": 68, "rewards": {"cg1rVV3syuet10mf": ["JVnbC1PRMvCjqjwh", "LhEDEkyeh9efgNUx", "zRE15RNq7vYX0lVj"], "DhWWZ5LpKU4K5jFo": ["FPug1zt2AAKMeIGg", "Ms4FzCQTcwTY3woc", "BEV596OVhO2PsghH"], "AWV5lvkm26k9d9kT": ["PRU5VWExLWsytsIv", "jeJKoia1HdOIZdX8", "KMBoBXZmIZRHm0iA"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'A2FEAiKvBEW0RHc0' \
    --namespace $AB_NAMESPACE \
    --seasonId '8rgf7Zze1ojxEFGY' \
    --body '{"requiredExp": 36, "rewards": {"Zhie0soMH0VrQOSw": ["AONvjwahqXixJTIG", "MN6g9YbgF6NSzHOs", "iBR7UXkvL8VFYznl"], "8GdLhPe4Cm6i7w85": ["svoMKNR3fvmULjN3", "73DE4mtA30H2q0Yg", "9CEh5kbvkLZkdUE2"], "a5IrVagBhezbP209": ["9W1529nXtGHJ2XPd", "60peTLaGEOF3OH0i", "XJTKpOqGzHHWhjIM"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '2Z5yqOFHvbMtuXDD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'UNtkNy3g30yljUDc' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'DSFRPzTuj3D1IDJ7' \
    --namespace $AB_NAMESPACE \
    --seasonId '6PJAiIXcuYbX7wsh' \
    --body '{"newIndex": 32}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QWMXvDda7nJ9uu4b' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'ahrI8yopmcQJSzWX' \
    --limit '46' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'ZQy97fRL9yDAEU9P' \
    --body '{"exp": 34, "source": "PAID_FOR", "tags": ["UtiFT1JEkR6hD9Yh", "7ek2hj9NvcBjSxAP", "4W9SuyCd4b8Ytl9J"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'bW6oi9HICum2Bio6' \
    --body '{"passCode": "uuoXSELjOzvGp09F", "passItemId": "DSkdQscS4wfKoVt0"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'n3UiRHTBU87f7qiG' \
    --passCodes '["Y89Oxbun5NbJ414w", "RfKUIGFxdaILK1Es", "DFOO5T4jeyvw93Qb"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'RAodXc80TJn7e3dX' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'GeNR4ic9R41PkFQG' \
    --body '{"passItemId": "7HsENEGan8OaTD0Z", "tierItemCount": 95, "tierItemId": "nonsJIQYIhlUTgSk"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'IsfVnQIQOrvftkf7' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'tp7tmv0Xrrsittss' \
    --body '{"count": 56, "source": "PAID_FOR", "tags": ["ba605A05ReDfRQZk", "EPDVwrSHNOcIzjxH", "Kk4253FscFF3fYGC"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'NWrft3djJy0FeZMu' \
    --from 'nI7XvXEGOlmtbcC9' \
    --limit '26' \
    --offset '13' \
    --seasonId 'zPUQXm8M96VGAC9z' \
    --source 'SWEAT' \
    --tags '["Edmi1TLzL0qeWqwN", "vfZAcYQMw2RDbR6T", "GrjX0YyOTyw5QfTi"]' \
    --to '43el7WOxWHezZmuP' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'p4BkbCnMsIvqMMUx' \
    --seasonId 'LSYDt5gfODeEKxTS' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jJqiYO57kBJllVFn' \
    --userId 'LaiKQwGYTew0ZKkC' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'fXgThAzjdsWFGXYt' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'zwqAjkhBWFwK7Dvo' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'YiZSN0GoHccwshat' \
    --body '{"passCode": "FtxJtCH7Fd30v3qH", "rewardCode": "A9r9VwWOh0p441vM", "tierIndex": 22}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'z4hPwCsHhhkl6d7P' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'tO087P2rTYUFXkLI' \
    --userId 'LXzTxUSRutLXina1' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE