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
    --limit '86' \
    --offset '74' \
    --status '["PUBLISHED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "89T5Pajo", "defaultRequiredExp": 20, "draftStoreId": "GTQak1SS", "end": "1998-06-02T00:00:00Z", "excessStrategy": {"currency": "vN5gvBi3", "method": "NONE", "percentPerExp": 52}, "images": [{"as": "YbEt3XTk", "caption": "N8SdeMWv", "height": 22, "imageUrl": "SxTijf9z", "smallImageUrl": "6Jscv33E", "width": 50}, {"as": "2gSx6wX2", "caption": "zRin0DBt", "height": 3, "imageUrl": "G0GcQZmV", "smallImageUrl": "cg2AXCn5", "width": 3}, {"as": "dk1YFO2N", "caption": "c9nuOrZl", "height": 5, "imageUrl": "4IxUTGhB", "smallImageUrl": "4nAc3fsi", "width": 54}], "localizations": {"IBFiWAEi": {"description": "dOOJA8kj", "title": "iJ1L5xfl"}, "gb2Mte3Q": {"description": "NGQZlEFq", "title": "iVqxtnxH"}, "zBCQ5UNa": {"description": "k7VeJ0hV", "title": "5KMyK70F"}}, "name": "33eJTuIk", "start": "1996-12-21T00:00:00Z", "tierItemId": "o9ASObye"}' \
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
    --body '{"userIds": ["uB4hza2H", "mPw20N8e", "0pRaFZ5o"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YjCq0O0l' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'oPUvtE6f' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'LTkjEQ6d' \
    --body '{"autoClaim": true, "defaultLanguage": "noFVWxeO", "defaultRequiredExp": 33, "draftStoreId": "x1VjTadF", "end": "1988-10-30T00:00:00Z", "excessStrategy": {"currency": "HfJTXZCL", "method": "CURRENCY", "percentPerExp": 68}, "images": [{"as": "ti9cno7L", "caption": "Jmfl2wkc", "height": 27, "imageUrl": "mp89W91A", "smallImageUrl": "GvgAuN0B", "width": 68}, {"as": "PzVo6jAO", "caption": "6GNcYwlj", "height": 22, "imageUrl": "CEuBhdvc", "smallImageUrl": "uWUSqIbS", "width": 30}, {"as": "95RuquVQ", "caption": "cuBUSJTP", "height": 34, "imageUrl": "OA3ZmALC", "smallImageUrl": "rHXX7p28", "width": 37}], "localizations": {"gzbf5lEI": {"description": "Cg6nyn4r", "title": "n0Ux6Rob"}, "G4wXlZf4": {"description": "QCOpRcOW", "title": "CAccpHe1"}, "F2O8LrzV": {"description": "O2xW3zx9", "title": "qQbCjemj"}}, "name": "OVA2nq1O", "start": "1975-06-12T00:00:00Z", "tierItemId": "x1FS89dd"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'TVjALtQQ' \
    --body '{"end": "1988-04-07T00:00:00Z", "name": "Yn9MkKz3", "start": "1991-11-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'z0E2g1sO' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'G6iHxS5Q' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'zVUtyEZF' \
    --body '{"autoEnroll": false, "code": "NROjcccT", "displayOrder": 77, "images": [{"as": "MjkkbQBI", "caption": "ACA5hIhW", "height": 1, "imageUrl": "XDA45py1", "smallImageUrl": "wflAORbW", "width": 99}, {"as": "wFJNTVBW", "caption": "HHMxl0dg", "height": 27, "imageUrl": "xzop7DE7", "smallImageUrl": "moEoEhft", "width": 39}, {"as": "qhOxciwf", "caption": "cLaNjrKS", "height": 89, "imageUrl": "bb7zkIzy", "smallImageUrl": "1NGkXsAj", "width": 42}], "localizations": {"5eEF05cP": {"description": "ZbmLQs3w", "title": "5KMqSbA8"}, "qdS0lbZj": {"description": "dgtGAy8l", "title": "JNQvYhn3"}, "F9ZU7pwB": {"description": "kBbwB3jc", "title": "We3E40PF"}}, "passItemId": "5lZy1c5e"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'mhCnfoMv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'N9HNAgWV' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'UA8KfL8Y' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Wjct0Ojk' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '6HOutqyT' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EQ9A9Oui' \
    --body '{"autoEnroll": true, "displayOrder": 11, "images": [{"as": "Km1mXnrJ", "caption": "x4M7OKpy", "height": 43, "imageUrl": "8rYPlYNn", "smallImageUrl": "94zEthXN", "width": 92}, {"as": "HYjkJZRJ", "caption": "XwWnTlQl", "height": 45, "imageUrl": "yc7fyOND", "smallImageUrl": "ysInk2G5", "width": 27}, {"as": "3ogpJ31M", "caption": "0hggRKW1", "height": 54, "imageUrl": "f5lHKRhP", "smallImageUrl": "1LNACDF7", "width": 43}], "localizations": {"bqX7ilnI": {"description": "F7MxCOLt", "title": "eUGhCj8S"}, "tTcgbRw2": {"description": "DqC6C9jo", "title": "2LK4wfH9"}, "dne5aORb": {"description": "1RBCMZgT", "title": "W2tDDSln"}}, "passItemId": "py9PUww9"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 't67DF4IY' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uUtdBb78' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '42j34yIR' \
    --q 'FRlvT71B' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'vTo63szT' \
    --body '{"code": "YHuwzJ6o", "currency": {"currencyCode": "EvKS5dsz", "namespace": "L5hs2vX2"}, "image": {"as": "zXqzUa3M", "caption": "6fog4Vzx", "height": 69, "imageUrl": "EL4ngfYR", "smallImageUrl": "B40Yya47", "width": 71}, "itemId": "6xOpP9C9", "quantity": 9, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'hVhYKlsI' \
    --namespace $AB_NAMESPACE \
    --seasonId 'n9PmPwog' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '3ww4Jtey' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XgspiiHS' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'sGy6eyIt' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rMsVUjZM' \
    --body '{"currency": {"currencyCode": "kRlhGTPm", "namespace": "2D1Tmy3Z"}, "image": {"as": "P6r6X7bL", "caption": "SJ0jFNj9", "height": 46, "imageUrl": "R7PmZMIF", "smallImageUrl": "UnZg1WkO", "width": 25}, "itemId": "TmRlJ6Tk", "nullFields": ["Ks5uJ4Su", "28VIq4fg", "LXRzhCLy"], "quantity": 3, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'jryucWiQ' \
    --limit '3' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'czrFfUxS' \
    --body '{"index": 4, "quantity": 98, "tier": {"requiredExp": 82, "rewards": {"o0oKyrU2": ["sxtsjSOv", "WfdiVLFq", "tvHmdVYg"], "3aucBO7u": ["7W1M41V8", "K7Fc93Cp", "AOs566mI"], "qclPSKtd": ["IZBaHzr4", "KGJTmjFV", "NJswfSsr"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'mAhDT4Ng' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rhtHiNLC' \
    --body '{"requiredExp": 44, "rewards": {"SGJMW96U": ["gBplFrV9", "oryGINnz", "GEpqxmE8"], "rg32Z5XK": ["EovbDqVH", "dAoCReaH", "N9P9adCI"], "hw0aaWaL": ["calu9MIv", "s1lVOtaV", "xw7OOO1H"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '9bTJ17LP' \
    --namespace $AB_NAMESPACE \
    --seasonId 'OUkHuph2' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'J0xkcu8d' \
    --namespace $AB_NAMESPACE \
    --seasonId 'yNVZEUTK' \
    --body '{"newIndex": 54}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ld3RL5SV' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'Vb87bkBM' \
    --limit '88' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'tQpieH95' \
    --body '{"exp": 65, "source": "SWEAT", "tags": ["PdeowcDQ", "OTn6QkAI", "HYHESXlR"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'OPjZT4p0' \
    --body '{"passCode": "UXFtokQO", "passItemId": "HDW5d5re"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'U1blRzar' \
    --passCodes '["Lymq9tfl", "a5zRqRg6", "JKnBoUgY"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'p9IwD3nQ' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'rZaF1Wj6' \
    --body '{"passItemId": "lybQW8KT", "tierItemCount": 33, "tierItemId": "doRGV4Rp"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'icJTMxRK' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'mcdyMdSq' \
    --body '{"count": 54, "source": "PAID_FOR", "tags": ["WBwKlhkM", "0aSaRa0Q", "JT7nBZUj"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '3Z40jyU0' \
    --from 'sfh3223N' \
    --limit '63' \
    --offset '85' \
    --seasonId 'sPYBBOcV' \
    --source 'PAID_FOR' \
    --tags '["CP3APkL2", "6mv8IP7t", "VuRwmCqJ"]' \
    --to 'eJvdpQhg' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'U95CBn5L' \
    --seasonId '1gricEGQ' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FrmAk02c' \
    --userId 'P5yUeKJI' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'MPGSsVPS' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'lHwOJbon' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'swIzb4P7' \
    --body '{"passCode": "tLPQFVf1", "rewardCode": "MNOn337B", "tierIndex": 16}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ueJCVNET' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZTJuhMHi' \
    --userId 'Xke3OAQf' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE