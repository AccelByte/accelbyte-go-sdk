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
    --limit '99' \
    --offset '30' \
    --status '["RETIRED", "PUBLISHED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "DmX1LNR3kPBf1QG0", "defaultRequiredExp": 46, "draftStoreId": "Vf29u996ExGKbges", "end": "1976-09-16T00:00:00Z", "excessStrategy": {"currency": "On1AUv9tZHn0FiBO", "method": "CURRENCY", "percentPerExp": 51}, "images": [{"as": "MJJqbo8ijfCDATr8", "caption": "qixtS8Zlwxgd1BG9", "height": 29, "imageUrl": "PldMpjZwHjgzfSZY", "smallImageUrl": "9mgbKPNw45JL8djo", "width": 88}, {"as": "OZj3xYSsvgJJ0yv4", "caption": "4fCZFP2C9lFB9WHj", "height": 28, "imageUrl": "urcsJMOiNTFd2gBB", "smallImageUrl": "TDSdu3hFJNR10KEk", "width": 48}, {"as": "GDGbhV6mm1mW9Jh2", "caption": "pw9QC7uXFLxTF04j", "height": 10, "imageUrl": "k5opCeUA2mOjDJXZ", "smallImageUrl": "9lW9piWmb9CfXOfe", "width": 57}], "localizations": {"nznzAqyl6L0V7c5w": {"description": "onD2TmW1cNFOTZPv", "title": "5IP35FwxKrWPfwBH"}, "vRtpxbquFNaGobgJ": {"description": "W9z1psT35GtxzGCo", "title": "NJzZlHrY0CAIfvQh"}, "cKOkBFJEZbWE4ZZK": {"description": "j8UGf0J5kAdCtEFI", "title": "1ZsCegpBJ23VT36i"}}, "name": "RuuA68cTsjwD6tyU", "start": "1983-02-09T00:00:00Z", "tierItemId": "yQcyOEBajSsfCP5N"}' \
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
    --body '{"userIds": ["PjL8Dg6kWkUzX6dI", "Zg3McCzhUiWDKGqO", "SFhfUxGlYwfkU5Te"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'zsYfL9jX6nejAqFB' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'feRqDTIfGCAHLmQW' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'tU51uhccOmpafeJT' \
    --body '{"autoClaim": true, "defaultLanguage": "v0NIPye25zucvE9H", "defaultRequiredExp": 8, "draftStoreId": "7GbAMvHSpvaCz4JI", "end": "1980-04-29T00:00:00Z", "excessStrategy": {"currency": "L5siNfDaiGlIQivT", "method": "CURRENCY", "percentPerExp": 8}, "images": [{"as": "aNTu8jDblE8RNFOb", "caption": "pyUDFXSPxn1QqqyR", "height": 36, "imageUrl": "vFdKP7u9mtTOmnsb", "smallImageUrl": "HvM1eKuUtAGUjTFT", "width": 83}, {"as": "9PGQNEKGUAVvklu2", "caption": "1ozd2gmFfuEjoz6g", "height": 37, "imageUrl": "p79zuZIuk4xzBl1i", "smallImageUrl": "h7vPTkPmo43l37Tj", "width": 34}, {"as": "tyFNdjLU83v7XtfM", "caption": "vpgEnCouXFfIoorG", "height": 48, "imageUrl": "PkBTD44SdwyWfneT", "smallImageUrl": "PI17nbu0rTwtXjaJ", "width": 39}], "localizations": {"9bKRsvT89fotxpQq": {"description": "90jl9NFwFEksXzKm", "title": "aKK3UOmAvEtjfkv3"}, "veJTpE0Vrwg5HDBy": {"description": "EOVJCK9Aa5FROuCm", "title": "AywjQK6vqGo1NLbs"}, "yoepfVOPxwDKfOi0": {"description": "HlNz23sQ6Eb7qkrG", "title": "KbNsbGOnuhbwqFXJ"}}, "name": "K1EXlx6Dwlv7oDwi", "start": "1989-11-21T00:00:00Z", "tierItemId": "fS6t4nGSDjHwYAZg"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0evxDLTzwhI1ef9G' \
    --body '{"end": "1978-07-23T00:00:00Z", "name": "GyXfOTDQ2w5mdNNJ", "start": "1975-09-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6xrTHK46Ek0rZRXd' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'NyLRhlpNqgcV8oab' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'Pw7m15udBcKqnHQ4' \
    --body '{"autoEnroll": true, "code": "eMrk9Pn8NyWGG5zn", "displayOrder": 96, "images": [{"as": "9NhbLoVXzwX2gSBv", "caption": "2r5TTDHZOjUzkEtb", "height": 81, "imageUrl": "fhgKam7tn6zhqRt8", "smallImageUrl": "ZZeirtBtWFV91FSL", "width": 34}, {"as": "WHWVMhd3O77xBeHt", "caption": "qX4GZhMNT6cQnOJI", "height": 27, "imageUrl": "pgsAJz5czO7KYO0K", "smallImageUrl": "jjgLrWUbC28qALuZ", "width": 62}, {"as": "wujjnkKUeHLHQPrX", "caption": "jILdeq5MbPGGxh3J", "height": 29, "imageUrl": "DLHg1za2AIOEZpvV", "smallImageUrl": "G8IB6ZCPD507aX8O", "width": 10}], "localizations": {"2H8ILH63SgDSbuUl": {"description": "A6jcTp1GC40Hqa2X", "title": "N2OFnmGMPxuls1hE"}, "YlEkYvlatu4BC1jh": {"description": "7Ugt2KgeiWB2GhPC", "title": "RTf4tsMtv24zL161"}, "gvUwdlfjtVUHxLIx": {"description": "FEh5J4N6wHZWkJ3k", "title": "XYiRlXgzPVkt4bPq"}}, "passItemId": "mfwCJbephVKY3PL9"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'aLqluwvPmL3Dwa01' \
    --namespace $AB_NAMESPACE \
    --seasonId 'uwOd6USxYGGPEyLk' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'iSXs0lKHt8XyiPdY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'B3EmeMZQ7L7YqpJd' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'zGAUizAt6As82CJW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rrNGJdAxphsqdZu3' \
    --body '{"autoEnroll": false, "displayOrder": 78, "images": [{"as": "oLCRGrSKcmkCAvHW", "caption": "hPyDRJs240qy1baK", "height": 8, "imageUrl": "sGt9QV9ZeAXca0t6", "smallImageUrl": "JwyWXHFqAQg2THAN", "width": 99}, {"as": "ABj4aNKbgcvS0RXr", "caption": "afks74eVXmycNYgN", "height": 34, "imageUrl": "f0k2ODOAwt9ZpIVm", "smallImageUrl": "QV8l1F1ymC8d9pdd", "width": 73}, {"as": "hF4UJGIa1Pwk679G", "caption": "2taTgMZH44KQRd3G", "height": 8, "imageUrl": "ffqB5cDzm5RA87yN", "smallImageUrl": "IzJ4GGsPpwC8j2QI", "width": 92}], "localizations": {"soO72uNaCCiuF9nf": {"description": "0cgTxGlLaVPq0rEO", "title": "OUusTyNtef8JQtIu"}, "hcXFNUmYd6fLOqBs": {"description": "DZiFR7Ozcfb6jV89", "title": "q5tpPn5FgRScbIeS"}, "qpi13wiuYnRod5T8": {"description": "GHJCPlzDSf7T8ZwD", "title": "jSxdPIzFIraZYXuZ"}}, "passItemId": "AlMcExjxXZ0Xzc7d"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'cNupC9z0AOrHpdKa' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pZ7xKVc0XgFLje7d' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'V2nYieSqfLhQPy1V' \
    --q 'zFvnBKfxKKJwBpWX' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'Fj4eDaekASZjyJjI' \
    --body '{"code": "naZUTgRCWjC6Uke8", "currency": {"currencyCode": "XBEy5G4u0QvC5Hul", "namespace": "G5IHPjJNhsBZyzcd"}, "image": {"as": "3tupdIG8rOw0JbSL", "caption": "U3yQzunQyRGQ6c5b", "height": 14, "imageUrl": "QQSRpWxb8uSzPlxF", "smallImageUrl": "5pyRHkmirJhvKRqX", "width": 79}, "itemId": "GEVJuIbOHZREyh9H", "quantity": 86, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'gcKfDO4dqQiLn0TA' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DRKh0DO8pv5UqIKI' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '1WkFOvswUAHjzz1C' \
    --namespace $AB_NAMESPACE \
    --seasonId 'mmpLGBAL4J3zhMXx' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'gf3wQxGnCrwiCyev' \
    --namespace $AB_NAMESPACE \
    --seasonId 'y3EnleabIl2uK9Z0' \
    --body '{"currency": {"currencyCode": "loEFMlYjzLo8V1rE", "namespace": "vh3C5a0rq2TKzDEO"}, "image": {"as": "GNqAy8JXT2Zlx3Wp", "caption": "DeNG50Ihid1F0ZGM", "height": 74, "imageUrl": "vsMu70ofEmGAPaZG", "smallImageUrl": "8fwTfF0ZkCHgnnj7", "width": 78}, "itemId": "qZwgkomZ3kOGOukE", "nullFields": ["BO97vg6aZKyy6sJb", "IUoSxn5Cee77HIrI", "smtrdWwqe2muiruh"], "quantity": 74, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'tp9e8xH8E8sh3Guk' \
    --limit '70' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'JpQNtKoax1It3Vkk' \
    --body '{"index": 50, "quantity": 33, "tier": {"requiredExp": 34, "rewards": {"qj234UWWHpgm4Qdk": ["TgVKSWDq7iTte6a3", "83KckLW34mEsCCFk", "Y9EOB3Z7ldmMpiYL"], "vAJEK1wVukmVzf8t": ["fp1aavxRH1SXxRmZ", "rmyJ4cYfTSTis6T5", "z9Ldc7r7gxRl0ajR"], "XMDDVaHUsw5YucLJ": ["cKFbCFI1LUf0C8jl", "jOkhBNyX1iZWje0q", "XHhGgnNhV1taD6Z0"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'TjF5hiKMrfEOyFO8' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Dhh9RYrVNj7pnXsG' \
    --body '{"requiredExp": 63, "rewards": {"VxOEE5U4XelhmruM": ["6AVXro7fngAWDvpZ", "k5EB8HLNOMvWu7JZ", "Y1BmHjqCzoItVRVm"], "N4pqqd59ENcvfVtR": ["CVW7DX1gSY5WprJj", "bRVJvFv3GfV61eYW", "7ClRvCkIvzDNpGKv"], "xdabzBM533jaHmh1": ["af4vC0TFxq3vq86O", "4csDIbWfBKlmGGIT", "XJSjpcSoAtmcitzp"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'fAGrSHhtaI7BYeXg' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SpNmVX5B1HGYslKl' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'wWKAP6SB3VpEvXlp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'comqQWT4iutdHMzf' \
    --body '{"newIndex": 31}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fViaqpzdTAVMdLr5' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'xF2WqLdjJsru6kvG' \
    --limit '65' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'Qy9Gv8kymTzGKqyK' \
    --body '{"exp": 63, "source": "PAID_FOR", "tags": ["ZHsooEZaTwsHU02X", "n933LqZ9q66FIbQf", "WkS49rnp45qvtZAH"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'ycAQicbaWLBtHgkY' \
    --body '{"passCode": "pJi0Xi2PL46WwMLp", "passItemId": "yoD331ZOpYCGN8J0"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'v7gw6Gpiwg2JxnLl' \
    --passCodes '["OZPwRytEKT007QsJ", "NWAM7bppcHDEmIhE", "QrCHkjbQXLJlxxO7"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'zLtGyOFajUYVcllo' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'Sr0z2lkCdESQw7mB' \
    --body '{"passItemId": "I6XPqIL0ZfHbzlBQ", "tierItemCount": 20, "tierItemId": "2uijOh4sznQc6eJC"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'DU2yabXLtNKCKyvC' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'B8PKj0ML58OvbJFD' \
    --body '{"count": 45, "source": "SWEAT", "tags": ["cWYsjpc8w2OKFiKi", "GRthtrC7FDq9UDhr", "Aci3CgJrayWpAiUm"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'TkXYOnOdKdwxWemj' \
    --from '4vDfd6RyqwYxw7cE' \
    --limit '7' \
    --offset '1' \
    --seasonId 'ZXpFri5gr57Va3Ga' \
    --source 'SWEAT' \
    --tags '["uv6FYtTFAwTbIfPE", "DOKOvD7Nywmo12D2", "Xu2UFBB4GcqaXcwF"]' \
    --to 'p9ch2oXG3XaR6emx' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'LNwRHEpzsebFqCNS' \
    --seasonId 'LxZPxXCp7lFLnjsF' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'UGvikCAPEXyUi5aW' \
    --userId '0wuD4zxo9B4AvcWB' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'JEecV371sJV8CAjE' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'qgK5VwPqn3YyTHPW' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'MrhZoFPp1zAlCaJV' \
    --body '{"passCode": "0U15d2QId1sDzMo0", "rewardCode": "wEyIceF1k2brpLEL", "tierIndex": 54}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '4oSxj5ny97UnFqVR' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nzHGBpDlhKdi8Bce' \
    --userId 'i2jjNfFVfv9v9huu' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE