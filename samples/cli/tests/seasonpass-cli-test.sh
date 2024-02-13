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
    --limit '19' \
    --offset '76' \
    --status '["RETIRED", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "AFxRDYwMZk1nnMC6", "defaultRequiredExp": 24, "draftStoreId": "pPcjteTjhASkf4OD", "end": "1990-08-22T00:00:00Z", "excessStrategy": {"currency": "SrOeQ61wYJwrbeSs", "method": "NONE", "percentPerExp": 39}, "images": [{"as": "a18cqNhvJ6Bqs38Q", "caption": "uHVFGdKNzJJqSrpv", "height": 75, "imageUrl": "tYIG68jkoMewKCkF", "smallImageUrl": "sfYh5uEm8eBm6zna", "width": 2}, {"as": "gmQMdHWyZypMljWb", "caption": "t1kzQ8HebeTayfer", "height": 3, "imageUrl": "r3Dmy9GnMH1as9ZM", "smallImageUrl": "q4db2ftsAe9hC6z4", "width": 60}, {"as": "UC3pcxcpRoK4j9Df", "caption": "vOs9VjtIr0ozWTFL", "height": 29, "imageUrl": "VC9jBY6aWu63Vjru", "smallImageUrl": "ORXFooR87xAworGe", "width": 89}], "localizations": {"I6Rhx3ZNQYLGz3X8": {"description": "oUHS47iqPJh7TXcM", "title": "GBqTJTVmcPkjyNhA"}, "OUN1b5eNAMcz0438": {"description": "kSXOKvX6SVOUcFvX", "title": "JtdBf3D3WIkX8eTl"}, "DfNNekt0N1zAMXPR": {"description": "tPaI8eXY9vtKpGts", "title": "gyFRZXvU7AQbAxbr"}}, "name": "IFk5bmT1EgEXDv7y", "start": "1991-05-24T00:00:00Z", "tierItemId": "w1r3uVJgTGF12Ufj"}' \
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
    --body '{"userIds": ["HNOwpmvQWShfx4RT", "85OsQeqYFYePPbcE", "fDUQmxVA8apkJ4de"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'gqRT62EVfvRkCoQ4' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ynlKMwpRgEieKqz3' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'C4XNd1CThNTReQRg' \
    --body '{"autoClaim": true, "defaultLanguage": "Y19mPgV20JjPZQeJ", "defaultRequiredExp": 74, "draftStoreId": "azWD9VhGzD5da4Sv", "end": "1972-11-04T00:00:00Z", "excessStrategy": {"currency": "2ewfTaIuVfOt9gKD", "method": "NONE", "percentPerExp": 84}, "images": [{"as": "lastVVJ6olIAK8ap", "caption": "WOKZ4Itrd1WxDNDh", "height": 82, "imageUrl": "xjCQMw2xDAJh1YFf", "smallImageUrl": "OI5cSbodmYTMXsCc", "width": 50}, {"as": "c2dNj0im0h9NDjM8", "caption": "CssqdHktKLh5HyqI", "height": 94, "imageUrl": "wSCEMeD5juGPwx3c", "smallImageUrl": "9SshpvHGNgIRJhRJ", "width": 84}, {"as": "cG4zv5r3RMCpVjPR", "caption": "6vGSd26Jw5eALJFg", "height": 3, "imageUrl": "PqCZMvv7EXyrngEh", "smallImageUrl": "HmOvV1AYWRU7UeN0", "width": 79}], "localizations": {"1XJv2vQ1qsqxvTc9": {"description": "s3fq27IDy9kFAlZU", "title": "unpDkEagEnAggFZP"}, "TJ4dAng5VIY10xxh": {"description": "1KoTiaE1Kqzf9tNY", "title": "823RzI8wFdq8jucM"}, "0GtTiu0809LXm5GZ": {"description": "zizoZEanVrj4Cs9q", "title": "UY6Gm0UYLMdVxgHR"}}, "name": "526gzMxmEBum6ZVi", "start": "1981-03-16T00:00:00Z", "tierItemId": "wxHkqC2gYr0YnJCe"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Fmkq45ZmXfWvxG4m' \
    --body '{"end": "1997-12-30T00:00:00Z", "name": "HEzJwBKt33u87PqF", "start": "1989-04-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '194UbAy8gjCWE21B' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ch3avbV4opR3zg6m' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'cdNjqQZAUe3a5nUV' \
    --body '{"autoEnroll": true, "code": "tYUv1ON0KkoLTjny", "displayOrder": 5, "images": [{"as": "07UQ5g4o4EA4ntnt", "caption": "7GXHvYz669iIUO0k", "height": 75, "imageUrl": "StX6cpeir9Cc3E2m", "smallImageUrl": "CwI0DNs8wNNxUd47", "width": 99}, {"as": "KZTqfseCqSMD1STP", "caption": "xjk5DF3dTUpLqi5V", "height": 64, "imageUrl": "twkfl49OtCPAZHj6", "smallImageUrl": "3SLrvw7FabrTg0Xp", "width": 15}, {"as": "HfRarfBNNfYLAxfE", "caption": "Gg55oWWGVXYKkeO1", "height": 9, "imageUrl": "XOKClGoYZKk6v01M", "smallImageUrl": "aawCqGz0ZZTz8nGK", "width": 75}], "localizations": {"bH7nTjDp9Y2jBrxq": {"description": "PZxKa763W4heAp7A", "title": "8wAzCMFm9KAkZrBm"}, "dMMSumX0ZpX6yBi7": {"description": "LSo2I0ef09udouoE", "title": "gIlIdmBHN8tmxydC"}, "eATBv0vYPXX6oDSf": {"description": "uCXXLYb7XXBH5CUl", "title": "jXoshyw5tOM61SXB"}}, "passItemId": "KTRrpEFYFTU3k9RI"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'NsIeQ6UdsCPh8u3Z' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Zf3s8GdKlJm2ZoeF' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'PdxRtuqyepepDKE0' \
    --namespace $AB_NAMESPACE \
    --seasonId 'E2Owz5dnoK3HvcHe' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'NvhIr9TjaBznLDKF' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DWzNF7b3zJ7unZNV' \
    --body '{"autoEnroll": false, "displayOrder": 45, "images": [{"as": "PP8ze3uFKUWubFxt", "caption": "zdhljwUgDBkPDqsP", "height": 7, "imageUrl": "RQJc0cS00wQFH4Vy", "smallImageUrl": "plVSA1ezbReMLs6B", "width": 16}, {"as": "sHQLRnPSSJchKLOb", "caption": "I5xiJBmU0qYgUo2e", "height": 44, "imageUrl": "L7pUyWPhNt0hqvBd", "smallImageUrl": "bZ5vTUdfu7zL0HLE", "width": 29}, {"as": "8n55KYztMUhpF8Ac", "caption": "5gNFijLTuFXrHoMH", "height": 32, "imageUrl": "vlXAb55WGiGcLzDW", "smallImageUrl": "d3dnUeohc3yqwwP0", "width": 82}], "localizations": {"37CLMPoSAZmwzkIO": {"description": "MsEtCguxoFneEpwf", "title": "yWyIRzIdjz2EDiT2"}, "hNmoWJiJIz1irU5U": {"description": "489WR30Lcu7VE5uM", "title": "7YQsQ5H8nv7K88bh"}, "OG6yJLRBkRhRzg2h": {"description": "vR4nCXQ7dWTE1QKs", "title": "PUu2R4sTfy4JnW7Q"}}, "passItemId": "PP18JSyz6vMas1IV"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hObfQKVOUSNu0iER' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Q5Er3clBVuDGT7Jq' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'L8vv5LCYzzurdZ1c' \
    --q 'lbnnv6SQ7QbM5IjJ' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZauJdBKk0jNpHNoh' \
    --body '{"code": "lh3Cor4klKNR8nHN", "currency": {"currencyCode": "ejjMLIrzs7QKXz26", "namespace": "e9X1hzZ1yWRLmFBJ"}, "image": {"as": "IJ9G8te1sapPj9gh", "caption": "BDEWPesKrhhk4jsM", "height": 49, "imageUrl": "5YDyBDwIQDzoaEri", "smallImageUrl": "jUoUPJCpKqLmLKCn", "width": 77}, "itemId": "4gxIcIAc8dlgtdyT", "quantity": 88, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'aYCKg5lY5RGJ9TYO' \
    --namespace $AB_NAMESPACE \
    --seasonId '33ggApIjCUhpkERF' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '1UCjWZekBt4RDyVk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ME5fUvAldKzP3OCq' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'iImTLLBbwgKVmjGD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'WP8kTpuoSh1W7hub' \
    --body '{"currency": {"currencyCode": "o2yYwoEFJsOQHTBg", "namespace": "5qFfUzuQD8h20vAT"}, "image": {"as": "snr296kkOZnUUN2p", "caption": "sQ02urR4xVMf2cDy", "height": 93, "imageUrl": "gKTF33hAPkYq3Rot", "smallImageUrl": "hL0rPldMIP9twM5P", "width": 69}, "itemId": "iymy7Uu68Rh0Uwsm", "nullFields": ["o1A9NXeQstwx2bVt", "mThFa8YCc3nsiUyn", "RWA6ZnpydB9vYuGM"], "quantity": 48, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'dbnxbJfLbBp6mbL1' \
    --limit '11' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'Xnh5U5qGiosmKA58' \
    --body '{"index": 81, "quantity": 25, "tier": {"requiredExp": 72, "rewards": {"xUPtbOOrn35lBc9c": ["TIG20m2A6orGZDC6", "xMbf5hGfVXE6PwS0", "A611wuJZCRjIzHX5"], "El6ONS2iXAei6LWM": ["yJfpAEnfm6i68PDs", "wfiZeJ61cXEgLAco", "85SVWgWDeM39WBpm"], "UlnjpAA056ucMZK3": ["tWGGPRTmq46jZawE", "N4US9CROmC99FpdW", "vMm8Kqa2xz6AsrKR"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'bhrK2i8aFrVUqGOg' \
    --namespace $AB_NAMESPACE \
    --seasonId '5pYGMGmB4IbT5k3c' \
    --body '{"requiredExp": 75, "rewards": {"J3cgCK2kKWHoXEMt": ["yoFcyQUCMj5T5g6l", "FyzG4OBqoeAqsQFv", "8he0vyUmyjLDvR8k"], "m5tjW7zT7maebyqc": ["7uc7TGrgoxlew7kN", "uMieJyKRcs6Se2sE", "maxZnkz8UFvY8QTL"], "K5hanq5SBBtWrz7D": ["qmacoUZmuGMdx5fZ", "gUP8lti5xtPvqOrH", "UpE13Ua5ljwi7xkj"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'fMA389hP3itiXB4f' \
    --namespace $AB_NAMESPACE \
    --seasonId 'A0UNDR9syVcSL8np' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'Yr94g57uisoInwmp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'CwVfdZib5RLxomY4' \
    --body '{"newIndex": 2}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dEYxE8h549iC7xrL' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'gyIa4wqIcub10INT' \
    --limit '70' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'PJlas9kvT4I7aMma' \
    --body '{"exp": 32, "source": "PAID_FOR", "tags": ["PzEdvcaF0Kmo48hV", "yE2QxCo2AyAzc038", "9HhjUZuFQruL22pF"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'SeXgwA38VpfayR78' \
    --body '{"passCode": "cd7DlihjgalfeRMP", "passItemId": "joendBegppAPa84L"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'mBrZ7RTn7CF3A423' \
    --passCodes '["FtjbZ4ONKbBGhCsw", "AszmfGrF9kHJEFyx", "FuonqWldj05uxaIs"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'qVIhPdtB5Yan5meS' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'yGns4XwfDsmwuqYF' \
    --body '{"passItemId": "RQb346IgyfkKW0Pr", "tierItemCount": 76, "tierItemId": "VvRiDuebCJcGdtsc"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '81hwLkK9j4zTQQE7' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '6Maf1X9MgmkWzt2c' \
    --body '{"count": 64, "source": "SWEAT", "tags": ["RKHR6JWBYqlFZSCm", "dzKgVefQO5C2ciAL", "00AVo094QyeLVMsX"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '8hHtWqn1apHn3XvR' \
    --from 'YR5eORk48wpxT61w' \
    --limit '2' \
    --offset '12' \
    --seasonId 'LYONB7ebE3vchB6Y' \
    --source 'SWEAT' \
    --tags '["o45secqPlDV7OPPn", "uh488SxJ0DwJLxVS", "gHObwRzCoUt1VYYS"]' \
    --to '9jTWVoDM9n85khQH' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'g0uGJQOE8DGmBkG5' \
    --seasonId 'Y2WS2BorEQsWGCMT' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YA0ywbdG6z4i8aCS' \
    --userId 'GL22pFySrdvkPZ5a' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'EfXApF0cD3c0iVk8' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'u45mHNUVswkkEiy2' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'AnJ0EY5dkgFgaUlh' \
    --body '{"passCode": "FERVixqODJ0ojCOc", "rewardCode": "R0LvSDMlq3cjsOyI", "tierIndex": 60}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Aya3udY1EtibZaI4' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OP3JTmQGv0SQxfDN' \
    --userId '2FdeyKX5yXIZAqky' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE