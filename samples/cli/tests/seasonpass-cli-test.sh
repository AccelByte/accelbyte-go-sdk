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
    --limit '63' \
    --offset '100' \
    --status '["PUBLISHED", "RETIRED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "FNQU88Cq", "defaultRequiredExp": 27, "draftStoreId": "eiemngZN", "end": "1981-12-13T00:00:00Z", "excessStrategy": {"currency": "XOndcBD3", "method": "CURRENCY", "percentPerExp": 12}, "images": [{"as": "BDQN4WJ7", "caption": "5M8oQWsH", "height": 68, "imageUrl": "1c4yQ7ZS", "smallImageUrl": "7kyvITIC", "width": 26}, {"as": "8r9k9YpI", "caption": "8ZCf2pjj", "height": 38, "imageUrl": "cZZvqOfT", "smallImageUrl": "jt2NyXQQ", "width": 39}, {"as": "lCZpy7C8", "caption": "hjWe2jeZ", "height": 7, "imageUrl": "KiMdGsCr", "smallImageUrl": "uDzwsd68", "width": 75}], "localizations": {"ltU6OXuO": {"description": "9uhY6710", "title": "ynJqTkp1"}, "qWgzEbL7": {"description": "R5yPFe2w", "title": "tqJFoVci"}, "ITX2R4YV": {"description": "PD7EQCWg", "title": "vJ8GFL9l"}}, "name": "NBX9wy9S", "start": "1984-06-02T00:00:00Z", "tierItemId": "j56opE60"}' \
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
    --body '{"userIds": ["RyONR5LS", "tJpf7ax1", "9TePKvwV"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uiZyjE3F' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rA7Ksiw1' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xrHAjEvc' \
    --body '{"autoClaim": false, "defaultLanguage": "KtQRc7hC", "defaultRequiredExp": 7, "draftStoreId": "bXXy2nra", "end": "1979-11-08T00:00:00Z", "excessStrategy": {"currency": "ZnwjX62i", "method": "CURRENCY", "percentPerExp": 93}, "images": [{"as": "nVCYBVzA", "caption": "PFdSh30A", "height": 80, "imageUrl": "jikcbQOk", "smallImageUrl": "9E5M8ZYd", "width": 100}, {"as": "4xAdhnPp", "caption": "Ypfxbo9J", "height": 46, "imageUrl": "0FYH39x8", "smallImageUrl": "f3gmWHci", "width": 49}, {"as": "U4XGOZPh", "caption": "XFOCjyeY", "height": 56, "imageUrl": "Y5SxKzBQ", "smallImageUrl": "QG7zBnxU", "width": 28}], "localizations": {"RDV4OYLR": {"description": "rrhAcxH9", "title": "nqJldbfG"}, "CST3TKAg": {"description": "zyKG2Jvo", "title": "MazoNnMu"}, "DUfHCGRq": {"description": "p0kmTtJ3", "title": "rFFIK26K"}}, "name": "fY6Do3p3", "start": "1977-09-08T00:00:00Z", "tierItemId": "Rkk9Kti6"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uKY2Phy3' \
    --body '{"end": "1980-09-05T00:00:00Z", "name": "HL5Etfw3", "start": "1978-12-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'wxRYCS7L' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'iOnuARdC' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId '1vxiwseQ' \
    --body '{"autoEnroll": true, "code": "O6aU0aLm", "displayOrder": 8, "images": [{"as": "weQhYX7W", "caption": "2KTdz78t", "height": 91, "imageUrl": "1Y9gVbf8", "smallImageUrl": "m6KQNvGp", "width": 13}, {"as": "hVx5b6Rj", "caption": "ULX0OBL4", "height": 44, "imageUrl": "bJxJ07PU", "smallImageUrl": "CUG7Kvkg", "width": 64}, {"as": "wMP7vYb6", "caption": "emvjuleA", "height": 96, "imageUrl": "HG6kgZ3k", "smallImageUrl": "7W81Wg8f", "width": 72}], "localizations": {"YcUR7h39": {"description": "PZP3dM7D", "title": "VagshsJM"}, "ZwO4YOpV": {"description": "xT0g9MuK", "title": "Zdd3lJc2"}, "oKJ060bC": {"description": "30GyIz6f", "title": "JgbYssk0"}}, "passItemId": "uyfYug2f"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '9A71kqZb' \
    --namespace $AB_NAMESPACE \
    --seasonId 'N9ggexkX' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'Wh26ZqkH' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XXO9cfBx' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'BTysd59O' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pQVT5xvo' \
    --body '{"autoEnroll": true, "displayOrder": 3, "images": [{"as": "C5il1gbx", "caption": "znJ3s6rI", "height": 37, "imageUrl": "gLly8SL2", "smallImageUrl": "yYO6dwJm", "width": 82}, {"as": "JTQX1H2S", "caption": "nDMUqP0L", "height": 51, "imageUrl": "pAN5ql3g", "smallImageUrl": "1Q4pzJSf", "width": 67}, {"as": "dCKcPlcr", "caption": "6DNKiVI6", "height": 0, "imageUrl": "HD7U94ej", "smallImageUrl": "qr3tRUmY", "width": 86}], "localizations": {"xptztOpm": {"description": "OjWAvvZl", "title": "KN5TrSg4"}, "wY197oIn": {"description": "ZaCqDdCI", "title": "BwyYYy1Y"}, "a8chvA0c": {"description": "q0Fu12au", "title": "C5AWR5lc"}}, "passItemId": "OqmN8hh5"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '3Rj2YZ4l' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'L5Sr3Tkc' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'ca0atbtA' \
    --q 'K7UTRP2k' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '0NWJwaSW' \
    --body '{"code": "7VnyuF08", "currency": {"currencyCode": "3kDKAjfK", "namespace": "bSqkHrOA"}, "image": {"as": "ceKbZh87", "caption": "98R1uLYi", "height": 79, "imageUrl": "y4onFcXF", "smallImageUrl": "ujyh68dQ", "width": 92}, "itemId": "CNPNSG8Q", "quantity": 28, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'MsZBSYMt' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TtZDwb7e' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'DZupJ3zF' \
    --namespace $AB_NAMESPACE \
    --seasonId '9V0F9GPL' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'J4pyUjZ0' \
    --namespace $AB_NAMESPACE \
    --seasonId '4f630lja' \
    --body '{"currency": {"currencyCode": "6idGmrav", "namespace": "SgPGu46A"}, "image": {"as": "zX5xSEEb", "caption": "ijk6hz7V", "height": 46, "imageUrl": "arbLMqTC", "smallImageUrl": "FYJIGfl1", "width": 100}, "itemId": "saJSkH0p", "nullFields": ["nxnHaozN", "rBsAtZi7", "nBUQe7Dd"], "quantity": 90, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'uL6hjw6Y' \
    --limit '39' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'BNYSLHbM' \
    --body '{"index": 10, "quantity": 77, "tier": {"requiredExp": 73, "rewards": {"iTctgB87": ["Q6XqWzTI", "KAYbnwLo", "RR90eCF6"], "qfe5oNZ1": ["Gep0zW69", "fPTUAWlY", "IuDpIu58"], "4Jkrji3g": ["J7RHHrut", "KvbzZQtG", "4uKerktY"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'Oq9WMYlo' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wPlhbaEY' \
    --body '{"requiredExp": 36, "rewards": {"1aUwiylV": ["KiJbNNEx", "IDWqswKH", "RAbZNXve"], "j9jwGgrC": ["M3lvwuZ8", "KOMcE6DP", "YFvDGaGm"], "08zrXdP3": ["qsJguwcX", "p69TYpWC", "m0cSMIB9"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'PRB8KF0z' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KEkJO0LY' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'JeQ21jt7' \
    --namespace $AB_NAMESPACE \
    --seasonId '9qtE8WXN' \
    --body '{"newIndex": 96}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FuZkMXVa' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'Ax4vfa6Y' \
    --limit '90' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '9E9XWRgD' \
    --body '{"exp": 9, "source": "SWEAT", "tags": ["R9P4IjDs", "R8D5Ta6A", "kVsfNBbC"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'ys54gmge' \
    --body '{"passCode": "QqyyePSZ", "passItemId": "DJHtNMkr"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'k6zwWiWf' \
    --passCodes '["gHHeCWcv", "OR9Nnjn1", "gNXjSMq9"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '7sxctBEB' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'PLupqQjB' \
    --body '{"passItemId": "gUmkrDSI", "tierItemCount": 25, "tierItemId": "R5vGdZ2U"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'B0XEEhkp' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '8MCdBUfg' \
    --body '{"count": 78, "source": "SWEAT", "tags": ["6ALMLQMN", "lBM3wq7M", "bM7Mw2s5"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'r6vbLvwA' \
    --from '5Ogb6yqC' \
    --limit '58' \
    --offset '40' \
    --seasonId 'VBIN7LHi' \
    --source 'SWEAT' \
    --tags '["mCYojuJA", "AbMhZ8Ny", "UxnCeTGL"]' \
    --to '4ufJoSGy' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'pheLowxP' \
    --seasonId 'tRLDmY9s' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'wlgYk5b8' \
    --userId '80NJl5WM' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'Q2DXN33O' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'qQwYQ2xo' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'Stb9iU9v' \
    --body '{"passCode": "8SVNwKOl", "rewardCode": "9OUS6Vy0", "tierIndex": 20}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '7pGR3b4M' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KMcRbWD7' \
    --userId 'l7D5a64c' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE