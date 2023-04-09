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
    --limit '9' \
    --offset '91' \
    --status '["DRAFT", "RETIRED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "P6o5l9IK", "defaultRequiredExp": 10, "draftStoreId": "eegkSFlj", "end": "1992-06-19T00:00:00Z", "excessStrategy": {"currency": "w3qkIZay", "method": "NONE", "percentPerExp": 80}, "images": [{"as": "nIuMiuwg", "caption": "xMq9t9ej", "height": 72, "imageUrl": "sGezQggE", "smallImageUrl": "r6bX9ys0", "width": 44}, {"as": "fZKvQKTy", "caption": "k1sjeHNe", "height": 32, "imageUrl": "mqQPQP7W", "smallImageUrl": "wHukxOjX", "width": 91}, {"as": "wUWrUy9u", "caption": "QP0yPgQI", "height": 65, "imageUrl": "5TmkZ1O9", "smallImageUrl": "lFOe9vGr", "width": 37}], "localizations": {"gd9AWPGX": {"description": "jIVfaLkB", "title": "3F675pUu"}, "PFKKdJix": {"description": "f5C67ZoB", "title": "bzB2P4Tw"}, "ZfaYTWuK": {"description": "AvCVed54", "title": "0X3iagB8"}}, "name": "6ue8dgwi", "start": "1977-03-22T00:00:00Z", "tierItemId": "ehEVByj5"}' \
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
    --body '{"userIds": ["NpfOe4H2", "FvkuQgUB", "tU2MKlsp"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'WCBloKko' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '3Z0BIyOL' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sKuFtc43' \
    --body '{"autoClaim": false, "defaultLanguage": "NxfXL2Eb", "defaultRequiredExp": 43, "draftStoreId": "0TBm9S8B", "end": "1994-02-16T00:00:00Z", "excessStrategy": {"currency": "GfkfOCV7", "method": "CURRENCY", "percentPerExp": 78}, "images": [{"as": "YDWYbrO2", "caption": "CeXUG1K2", "height": 63, "imageUrl": "w7ApkSWi", "smallImageUrl": "J89jo6hg", "width": 98}, {"as": "IaYKvpUq", "caption": "nRIC3ext", "height": 32, "imageUrl": "wWaRmXi2", "smallImageUrl": "wmtuxhU6", "width": 91}, {"as": "pNKDSwge", "caption": "UOMirdHg", "height": 93, "imageUrl": "dv0D7fYw", "smallImageUrl": "BTgGhTuR", "width": 55}], "localizations": {"Y47E3lLr": {"description": "5mQ8FqCg", "title": "lH5jVgHK"}, "6MeEj9XH": {"description": "jkxMrKZE", "title": "FophV0QF"}, "FKbf9Rco": {"description": "j1uGMTPd", "title": "i1KxSGMw"}}, "name": "LpEOoQPp", "start": "1985-03-18T00:00:00Z", "tierItemId": "RpGlj1yb"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uQ2OAKPa' \
    --body '{"end": "1997-01-06T00:00:00Z", "name": "m7UrI602", "start": "1977-07-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'eak58ilO' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'kPskVcbJ' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'Sy2uRWqa' \
    --body '{"autoEnroll": false, "code": "0FNawuKJ", "displayOrder": 84, "images": [{"as": "n7bzS5zZ", "caption": "pZrbVAAr", "height": 58, "imageUrl": "2AJNrBFV", "smallImageUrl": "1tH4PTxw", "width": 21}, {"as": "Gmt3YvFI", "caption": "SYvdgRnb", "height": 55, "imageUrl": "fYJPLav6", "smallImageUrl": "9XrTI4JH", "width": 39}, {"as": "4xlglgvP", "caption": "2CtsUMhB", "height": 81, "imageUrl": "yyIHpYPB", "smallImageUrl": "usrwWisx", "width": 62}], "localizations": {"GThOHa9Z": {"description": "JFLzhRRV", "title": "mItXUhmh"}, "9jaHS6xI": {"description": "5Ug4uS4P", "title": "XzgcTMC4"}, "jeQGBHek": {"description": "KI8RXLjj", "title": "71pu5K9V"}}, "passItemId": "U0PTMbjH"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'W7hzLzCV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'dyPIjVKE' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'zYz7ZlFz' \
    --namespace $AB_NAMESPACE \
    --seasonId '7PIKVOlQ' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'VMh3adZj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'a4t4R65E' \
    --body '{"autoEnroll": true, "displayOrder": 72, "images": [{"as": "DVaiqOT9", "caption": "8USlqNrd", "height": 78, "imageUrl": "jrwzp1Gv", "smallImageUrl": "LB30GZAR", "width": 67}, {"as": "B3U5bXqh", "caption": "ZmmFnPni", "height": 22, "imageUrl": "DdzDXIna", "smallImageUrl": "KsmGvPr6", "width": 6}, {"as": "6FaB6XY2", "caption": "LeWeAlUf", "height": 49, "imageUrl": "RukjPxI0", "smallImageUrl": "7Ii8l6ji", "width": 95}], "localizations": {"WprDG3FH": {"description": "B10BQcTI", "title": "LVWHnZhh"}, "yWOsOiSB": {"description": "13dfJ327", "title": "KRcYsvck"}, "i3WYHm2e": {"description": "berqP0yb", "title": "pUzQ8936"}}, "passItemId": "coIiiuJO"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'G9ysOhIi' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FZl7UX8k' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'Wl71FkTr' \
    --q 'c3Pt0IhC' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'TOmN0ShL' \
    --body '{"code": "VUnSIsxe", "currency": {"currencyCode": "58ZBi1jk", "namespace": "tMulDURS"}, "image": {"as": "wolbkNwH", "caption": "h01QF32P", "height": 95, "imageUrl": "JgpsTP5E", "smallImageUrl": "AeTOVqdb", "width": 87}, "itemId": "4LQrhvzR", "quantity": 61, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'Y2Mx8A9o' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pOcS9gzE' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'iseY4Hwr' \
    --namespace $AB_NAMESPACE \
    --seasonId 'P1wIvYoF' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'ZcHdKzWB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Z2uR45qc' \
    --body '{"currency": {"currencyCode": "pVvidFhI", "namespace": "i4etychw"}, "image": {"as": "JPFyFSCF", "caption": "TZKiwdBW", "height": 31, "imageUrl": "Z1PZyUCc", "smallImageUrl": "8UFZg1iq", "width": 55}, "itemId": "pniIqtvA", "nullFields": ["fP8TdDlb", "KVHkQWwX", "R1GJXma5"], "quantity": 86, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'QSpnNpeO' \
    --limit '69' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'g7gGog6T' \
    --body '{"index": 98, "quantity": 60, "tier": {"requiredExp": 34, "rewards": {"zxwQ8h0u": ["F4v06oN7", "5e75IF9H", "oNMKOmna"], "q9jPAItr": ["5p9jxvET", "xcYpCTTk", "V4zBy3te"], "kEl8mTZL": ["A7xXjhJX", "zSt4LkIV", "LKfiF2Kq"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'XLfp9Vxc' \
    --namespace $AB_NAMESPACE \
    --seasonId 'W8DLDd8g' \
    --body '{"requiredExp": 15, "rewards": {"PAnLOLcH": ["Dk2L81YQ", "CS7sNCWO", "Jn5RSvBE"], "PgdhFmtr": ["JZ1dUF4V", "XA3e90vI", "76eT5kTM"], "uuf3HGG2": ["LZ0VPFzX", "oPXJrQv9", "m21xNrt3"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'ILDh1FTd' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wP5VNDSq' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '1Ebs02Cn' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ly6AjE3x' \
    --body '{"newIndex": 64}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'scH7EFN7' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'j5AguJNZ' \
    --limit '29' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'eQemUYMS' \
    --body '{"exp": 95, "source": "SWEAT", "tags": ["lRuq7bqT", "o57zcCie", "w3lgXXxK"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'r7M35Ogx' \
    --body '{"passCode": "L5MeT7CZ", "passItemId": "3nVf3JDt"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'sOtpJza9' \
    --passCodes '["sSQOq2Ew", "XuUnWHwL", "QmsUJIg3"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '52j2mdtV' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'kGpuUy9R' \
    --body '{"passItemId": "ub2tRIw1", "tierItemCount": 65, "tierItemId": "lnHG36jC"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'XldG5wIb' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'zGzIG4aD' \
    --body '{"count": 99, "source": "PAID_FOR", "tags": ["VJH0CUTs", "vOW6kUHI", "s1sWk9Nz"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'PZBTHuot' \
    --from 'unVhWQEd' \
    --limit '65' \
    --offset '13' \
    --seasonId 'm6acIDeW' \
    --source 'SWEAT' \
    --tags '["Hshkcpe2", "Xvvx0CSb", "pc05Tlzo"]' \
    --to 'KgeFUkmy' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'KpZC0c2B' \
    --seasonId 'vRV0uw6T' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mqJEl4u9' \
    --userId 'EGeaRiHg' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'mGpKtPNS' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '2LaXVUKY' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'Kyp0tHXR' \
    --body '{"passCode": "7WX2GfbE", "rewardCode": "vxJFU0jC", "tierIndex": 36}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'OWjKPr6M' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'x3DqOO21' \
    --userId 'cnjAPMfc' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE