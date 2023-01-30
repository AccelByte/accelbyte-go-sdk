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
    --limit '94' \
    --offset '65' \
    --status '["RETIRED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "JNzOKDMt", "defaultRequiredExp": 7, "draftStoreId": "CV124kMF", "end": "1973-10-02T00:00:00Z", "excessStrategy": {"currency": "v29uf8Nd", "method": "CURRENCY", "percentPerExp": 36}, "images": [{"as": "y9mXFeDu", "caption": "C4kSsXjq", "height": 67, "imageUrl": "gkbGoi0H", "smallImageUrl": "if6boWwd", "width": 35}, {"as": "Yhut7WqC", "caption": "mqiyFlXe", "height": 42, "imageUrl": "1IobGOjE", "smallImageUrl": "qkRnrTHV", "width": 78}, {"as": "ugMTeqLy", "caption": "ZpIIYw5M", "height": 90, "imageUrl": "74viMttu", "smallImageUrl": "TUyGHirT", "width": 89}], "localizations": {"kcs0btBo": {"description": "6GXyLRvD", "title": "swBuD7sq"}, "fiZkXhjj": {"description": "AdPBLSLn", "title": "8xCX5LVA"}, "Y4NZ6hgL": {"description": "cDyjmAji", "title": "GND8fSUs"}}, "name": "plwNBxNR", "start": "1984-04-17T00:00:00Z", "tierItemId": "nxLcDOtt"}' \
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
    --body '{"userIds": ["98hyeaN0", "I5GZrzQk", "SSOj9yqY"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ve13CmuR' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'O1FGE8Ef' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4DwIMftc' \
    --body '{"autoClaim": true, "defaultLanguage": "aHHcrxOZ", "defaultRequiredExp": 15, "draftStoreId": "Tbxlz00m", "end": "1980-08-16T00:00:00Z", "excessStrategy": {"currency": "fhV5hP7R", "method": "NONE", "percentPerExp": 12}, "images": [{"as": "2x3LVKjX", "caption": "uWJFOeLI", "height": 20, "imageUrl": "krMzyXra", "smallImageUrl": "nqxe7rPg", "width": 55}, {"as": "UmbhnTgO", "caption": "XbYLaCyq", "height": 27, "imageUrl": "MzzuHjeH", "smallImageUrl": "SBmPk0jb", "width": 93}, {"as": "zi3Ss6tn", "caption": "cCC6Vwth", "height": 32, "imageUrl": "9psRyZfW", "smallImageUrl": "G2Idjhga", "width": 86}], "localizations": {"tORUxJvm": {"description": "PjBH1TAP", "title": "xWsryXmz"}, "L8DOkWvT": {"description": "hzrxANGz", "title": "IuCZhcBr"}, "sl6kHPxa": {"description": "X1zADtdm", "title": "6UWpvKfj"}}, "name": "3926y7fw", "start": "1977-07-05T00:00:00Z", "tierItemId": "sbGUwQIZ"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'E76jnCA0' \
    --body '{"end": "1977-01-01T00:00:00Z", "name": "u4gcUy3X", "start": "1984-07-21T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5eqUScnp' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'g04fvvbM' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'RszXTAQV' \
    --body '{"autoEnroll": false, "code": "BQ6xOtTh", "displayOrder": 48, "images": [{"as": "R9Jy77bj", "caption": "mSgxOkmh", "height": 33, "imageUrl": "B381tu2l", "smallImageUrl": "cuiA4osX", "width": 3}, {"as": "CNP5hgNh", "caption": "E3bGQJM7", "height": 45, "imageUrl": "fuN8Gj22", "smallImageUrl": "SARXtc4b", "width": 22}, {"as": "xK3EDSBh", "caption": "7vYNJpxm", "height": 76, "imageUrl": "OqpNNUiT", "smallImageUrl": "P5xwRe6h", "width": 14}], "localizations": {"VQcESfyl": {"description": "RZIz84ne", "title": "ctrHbcLD"}, "cCmPysyM": {"description": "T8l4OGPR", "title": "ds53QVqr"}, "nZOoYmlW": {"description": "xz9wzeyA", "title": "fTeowpnQ"}}, "passItemId": "tS8hjKkx"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '6ZWcrqNE' \
    --namespace $AB_NAMESPACE \
    --seasonId 'fe4N7itX' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '4GKLF5bc' \
    --namespace $AB_NAMESPACE \
    --seasonId 'O3se0ReK' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '1BQQ3oJ2' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wHTvTNl2' \
    --body '{"autoEnroll": false, "displayOrder": 85, "images": [{"as": "AAQp74Ep", "caption": "SQXSqe6C", "height": 99, "imageUrl": "0uSsfwgf", "smallImageUrl": "2iWCbhuR", "width": 80}, {"as": "owXRnEjT", "caption": "HtSFi2St", "height": 95, "imageUrl": "4hhB82nh", "smallImageUrl": "veVh06tA", "width": 15}, {"as": "mQyZabZi", "caption": "fuqkneye", "height": 11, "imageUrl": "bzAuMpvV", "smallImageUrl": "r64TRbEl", "width": 42}], "localizations": {"4aFRUO50": {"description": "wpP6q2La", "title": "tacB01CY"}, "Y2e39m80": {"description": "UZitp2Ep", "title": "tCdKbMFI"}, "963KxQB7": {"description": "6AOMWwum", "title": "sf6BUmiV"}}, "passItemId": "EFFqTZ9J"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'yyBuxaPT' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZsklHYjC' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'VHxqJjb1' \
    --q 'HPPD7LmL' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'w6aluIWE' \
    --body '{"code": "ARSkyTaZ", "currency": {"currencyCode": "4HmamAWm", "namespace": "CIZGc43v"}, "image": {"as": "6ljtg2eq", "caption": "g8Ca2OyZ", "height": 97, "imageUrl": "8fDeym6N", "smallImageUrl": "xilAkgwu", "width": 97}, "itemId": "I5PY1P3V", "quantity": 94, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'dJYqF7lI' \
    --namespace $AB_NAMESPACE \
    --seasonId 'aysuEtya' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'tMXYbhan' \
    --namespace $AB_NAMESPACE \
    --seasonId '5Xbaj9n0' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'OlIBMDuX' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LrgNn31o' \
    --body '{"currency": {"currencyCode": "qZ2RS0ES", "namespace": "akFNwhjf"}, "image": {"as": "7XPk0Gjv", "caption": "l7xTO61G", "height": 57, "imageUrl": "p7EEi8af", "smallImageUrl": "niJxq0oZ", "width": 4}, "itemId": "a12z3IIQ", "nullFields": ["sWDhC1YF", "mcngGt0W", "OME8TvmT"], "quantity": 3, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'sCwELXxp' \
    --limit '54' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'qqh40Kee' \
    --body '{"index": 8, "quantity": 34, "tier": {"requiredExp": 83, "rewards": {"RZkx1Eq9": ["G2KnvsRe", "46G08MVC", "9Z3pJlqG"], "tRqUwl6T": ["Ix9iguLq", "rLtiyvBW", "wEhPtpAt"], "9PgevO6o": ["5SAKdX71", "Uc9HHub1", "zCF0UWeQ"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'htmUtx6R' \
    --namespace $AB_NAMESPACE \
    --seasonId 'qw08eKC0' \
    --body '{"requiredExp": 37, "rewards": {"Sy4Pt42g": ["NAsIbJRg", "pK8ThtVB", "0YDLZIyS"], "bRrVVSao": ["hekOwN2p", "NY48Yx79", "bsJkqOfB"], "najEYeAP": ["5qe5dCJL", "hs6OYlfu", "hdHXKjWg"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'JDkXaYTk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'amDy2tL8' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'VWC5r2uz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'RjAc99Ji' \
    --body '{"newIndex": 90}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kYSz9NeZ' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'AmzYJV6i' \
    --limit '52' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '6yhwv0vk' \
    --body '{"exp": 26, "source": "PAID_FOR", "tags": ["jkESOuJc", "QSv1m7JX", "WVPCT2pw"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'mNmzKmrV' \
    --body '{"passCode": "qiDPzBIl", "passItemId": "I8OW5RY7"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'I8Zywt5j' \
    --passCodes '["nLlHFfHT", "Xy8CI2Ta", "YHggMlNl"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'YHBOH0v3' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'vAHqw8cj' \
    --body '{"passItemId": "yfvVMIM5", "tierItemCount": 41, "tierItemId": "BT9LMpjD"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'PTpQBBUg' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'UJC4zRVC' \
    --body '{"count": 60, "source": "SWEAT", "tags": ["Yve7Vskd", "qRWI2LY4", "yLRRLdt1"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '6mmkqs96' \
    --from 'GxASYY8L' \
    --limit '37' \
    --offset '77' \
    --seasonId 'yOS7Vz5x' \
    --source 'SWEAT' \
    --tags '["XxZ7x8xH", "bmhI2J1N", "pZrzN2fC"]' \
    --to 'Heg9KnNf' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '0LHNi7d5' \
    --seasonId 'PGNnlbPz' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lCgxYZrF' \
    --userId 'TN4Osftu' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'IiBJfmm7' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'Wsb4LRIO' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'LaGp25tM' \
    --body '{"passCode": "z0ucdPkT", "rewardCode": "L2fKdgUe", "tierIndex": 44}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'KSNuOpxT' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hd3WriFE' \
    --userId 'BKMKMdpN' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE