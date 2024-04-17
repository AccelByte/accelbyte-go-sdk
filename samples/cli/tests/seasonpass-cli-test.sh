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
    --limit '26' \
    --offset '8' \
    --status '["DRAFT", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "luacE1ikVNKQWUri", "defaultRequiredExp": 64, "draftStoreId": "Avg388I5SCp7tgij", "end": "1979-06-22T00:00:00Z", "excessStrategy": {"currency": "lvC8NdELgc0Rb87f", "method": "NONE", "percentPerExp": 83}, "images": [{"as": "TLw5QAx56BwZ3qwJ", "caption": "FJkF5jtlz4W50lk0", "height": 61, "imageUrl": "Ph3IayDu7a0Bnq1f", "smallImageUrl": "WEOHcDx5VgwMck7u", "width": 36}, {"as": "H36jh0HNeTkGENR7", "caption": "HebvTdvfQdpgJERT", "height": 86, "imageUrl": "4UtM2hQ9VT4cjODJ", "smallImageUrl": "XpGnjVDuq28DDuX9", "width": 2}, {"as": "PiKYoSpiY0TZQP2n", "caption": "BEFaMjEKxpxm6033", "height": 48, "imageUrl": "ge6U9E48YPNIUrFx", "smallImageUrl": "r6cyFveTTkR7H2LI", "width": 4}], "localizations": {"4AmZ4uCS5o7aa7dV": {"description": "P9ESbwj9s3eefC0v", "title": "kP8kOxSozVH7g7t4"}, "0I7TZj7DZbNVbQK9": {"description": "sMRRnfD3kYQON1uy", "title": "98nX2yNcsCBZis7B"}, "Cj5muxzXIPjPCo2Z": {"description": "MG3fgluzimtViDWQ", "title": "b9UIXlXJ7z6qbLfD"}}, "name": "q7NaiYXLhgV1Yvqk", "start": "1985-06-03T00:00:00Z", "tierItemId": "f7utDtWjBM45OGcv"}' \
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
    --body '{"userIds": ["0d8x4mfmtSHmo4jE", "5M7AOPJ6c2xX5tyv", "rqMrkQVWAzJPxLWp"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'zZo9GhHEe9ZdBAam' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PD2eAQ3RXv7n77MS' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'SxIeCXOsQACF5c6F' \
    --body '{"autoClaim": true, "defaultLanguage": "StVJJ83CHSctBiyn", "defaultRequiredExp": 2, "draftStoreId": "bLgnpMhodNFsFjo9", "end": "1977-08-26T00:00:00Z", "excessStrategy": {"currency": "g4df0Rdawmx5Etsv", "method": "CURRENCY", "percentPerExp": 77}, "images": [{"as": "wohevSYwgtDaTm2Y", "caption": "OJPMIhYHjSDiNhMU", "height": 66, "imageUrl": "kLioqbGvIQydixZh", "smallImageUrl": "1blp5dLE1gZTUcaM", "width": 32}, {"as": "Xgsi4dHWbbGd6OAQ", "caption": "PXgmVqpVAjPa9MC6", "height": 72, "imageUrl": "IM56rsX0L3XwOBdX", "smallImageUrl": "K7FiQUwfweeal6xU", "width": 59}, {"as": "XYwf2oCgAq39epvD", "caption": "JrkGKKyohKhbcIq4", "height": 27, "imageUrl": "cWRAJ7X7qHwo93P9", "smallImageUrl": "ULwOMANSuvUVjeLu", "width": 15}], "localizations": {"Hx00R04Dx3K8XHja": {"description": "v6FRduWLKvvTSfhf", "title": "MIbojeGBCJ4wZRsx"}, "dgS1zWIhyVrgKd7o": {"description": "fhfp03lGTmJbTF2M", "title": "9RDhd0naBytwaajT"}, "Ew5J9LBfHKwMVzRu": {"description": "lNDKy8WH7NnLTx8s", "title": "lGXwtJ7kLED3LccU"}}, "name": "rxqZ509sxmOOLIYp", "start": "1991-03-20T00:00:00Z", "tierItemId": "dg8ORNzguhdgMxLq"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DAsv5vcxpmqHfkmN' \
    --body '{"end": "1972-05-13T00:00:00Z", "name": "BUrVC1rcaMWoJMfl", "start": "1983-04-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'UifVxv3ndrBGqrJR' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'H0VctGDEE9hRtYOV' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'DGHk8G4lqOzcYgrW' \
    --body '{"autoEnroll": false, "code": "cjbhkUQqBgtaFW0x", "displayOrder": 48, "images": [{"as": "ohVb21bdI8bupuTC", "caption": "rpGtxGeKZbLXz799", "height": 67, "imageUrl": "BU1EmeVBlImx66YZ", "smallImageUrl": "EiqRA0DX4Zzc7kAh", "width": 37}, {"as": "Tq3uEpgOyo5OjvSt", "caption": "mYXaybjWlewEhnTG", "height": 98, "imageUrl": "dSo1x5EocAubiEvz", "smallImageUrl": "hHxtUKoTLYnMOCvh", "width": 18}, {"as": "YtsQMZ3tFeUt26ua", "caption": "EHDyNGBTwIu40rqJ", "height": 41, "imageUrl": "hMqNyzTSHnsDUX2C", "smallImageUrl": "gJtsklBmgnbrN87x", "width": 70}], "localizations": {"zt3SAgJOASnz6Yse": {"description": "ZJItb3K1m6GoknUc", "title": "UMa2mSdNfyJ66sYL"}, "xslxhENyZ91CEaWk": {"description": "ftzc1ysjCqFPLeQq", "title": "Y9wbTPIGg89IpQea"}, "eosQyVh53ujtcPdh": {"description": "E4xbsZ0N86pi5SHQ", "title": "m3sKJcAuwm0iPi7V"}}, "passItemId": "xULHWAzOeDvrJn7k"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'oFL1G3Q5nOtEpERX' \
    --namespace $AB_NAMESPACE \
    --seasonId 'nX0qd6s205jJ45BG' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'uesbSaZQ5QdTiZ5Z' \
    --namespace $AB_NAMESPACE \
    --seasonId 'n4GBK2Y9h8j3GdOF' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'l0m5C6sTj7wJH976' \
    --namespace $AB_NAMESPACE \
    --seasonId 'vWEvZI43pDIl4NG9' \
    --body '{"autoEnroll": true, "displayOrder": 90, "images": [{"as": "sCMl4KoBHhNDa3GU", "caption": "dAbxLtSy8weID84L", "height": 93, "imageUrl": "1HHTMXl45kHxt9Ff", "smallImageUrl": "4hFRyyC9n8N6jLHy", "width": 30}, {"as": "izOOSFkZn2hQ35Zl", "caption": "3fslFwWYf9OCPQ3P", "height": 32, "imageUrl": "nRqYgnIUmTB9by82", "smallImageUrl": "JxUNtSmn1qLxgt1Z", "width": 55}, {"as": "GVBlCPI41YTRIB2P", "caption": "ypq8DVMFm6p1jCTf", "height": 38, "imageUrl": "AuR26Ma5wIQwecTu", "smallImageUrl": "HsJGoUrGI0t3epCB", "width": 55}], "localizations": {"htCZXVkGwxvh7dxC": {"description": "6ZlHTkKVB9Nueyyr", "title": "OX1dtywPAaeh6Up9"}, "vG58omxuuXpOnSpp": {"description": "P2FHpyhl6YUNDxI0", "title": "8qSCsVbsgPvWbRHj"}, "GMhXIHi00TgImNsv": {"description": "JlPYE3PvNohDO4vD", "title": "K3ZfBKMY3KM7nj3j"}}, "passItemId": "RF6BmVDq1ILAhYzd"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FmfCyzCDK2MuvBPr' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'VlA9JOkGuM6X9840' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '1OeewZjI4Hl5GDL2' \
    --q 'AIdmPzbMVJjxbHjt' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'ScQ0WK4UVFEKhzmU' \
    --body '{"code": "fi6eaehOVKe1ZuXE", "currency": {"currencyCode": "2J61ZCUKfSwqL9Rj", "namespace": "Ir5wOiz7dEjxmlKW"}, "image": {"as": "OH5Y6eIzf1GHdfLK", "caption": "54tNsuLGjetaF9Z4", "height": 44, "imageUrl": "GJVGDemuOaGklzQ2", "smallImageUrl": "Xp0vjcO0Iiwe5F55", "width": 61}, "itemId": "nmv5qsRXT36fPcyt", "quantity": 86, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '9e51EejxxME0RxFD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'WnyunehpiiZYBzkr' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'CYyLTFx8Ubx6PQdz' \
    --namespace $AB_NAMESPACE \
    --seasonId '9JX6djzdxA94TAsi' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'kz18VIlsKvly0VP0' \
    --namespace $AB_NAMESPACE \
    --seasonId 'y7iwRfUmMvOW7wZ8' \
    --body '{"currency": {"currencyCode": "SQwZfRP4uAA2XSGQ", "namespace": "OoBic1RolfMaglrg"}, "image": {"as": "carrhZpQejuJlm4m", "caption": "coeg1xhxNRMXjMiK", "height": 77, "imageUrl": "3lPJAZwfPxWcubJC", "smallImageUrl": "HMrsJiU9Xhkyfdiy", "width": 26}, "itemId": "Dl5T43Na1jQUIOsa", "nullFields": ["wQ22Q4IpkeWyMaaj", "Aenc1sGFoA6peEse", "mHAuteAwOCdIsI5D"], "quantity": 29, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'XpCwLZ07ZnGSsgbu' \
    --limit '36' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'v8XCgkwnpWWTVZP5' \
    --body '{"index": 99, "quantity": 3, "tier": {"requiredExp": 7, "rewards": {"Q7vTrmAOx0LmMsBm": ["udGbUzYZyjyGc3gy", "JnM6Fe5BNG9Ac0UO", "pWoUcZ0ktgtM7GP6"], "uYDQ3KT2wmpvbI62": ["gRrvyofu3H8ftB8i", "qWi5hGRMy9wjLzJB", "3KYWbZLTAgOMT54P"], "rbJGWN2wIsAE5gVt": ["RwdDptHZsJUVR2hS", "VS5R9Qw8QecXDnmv", "f6pB1yFrhoFXZ5eX"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'FtHMoWsB2TZZapzG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pNTOVQ8UXpYovohX' \
    --body '{"requiredExp": 18, "rewards": {"OdL4T2tlzUK3YR6j": ["oSL6u0iqlEf79zEB", "BI1bG6EY1HK3aQqI", "XStAUAcqbWcGoK7q"], "ny2ME6Rc94HJyIpX": ["pP5g2kXqrPDnEjX1", "LsZUtRnxqZSivflr", "gIpKoJF2RdDn1xm9"], "f8DTiaY5vHMYlOkr": ["PKRPiEqqXfnf2Gtc", "5RoQZPde84YQo9CG", "qvGySDKhz3JhVN8E"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '7NMMjwapLOOdYiDz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gqphC7MB9LaxuY0r' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'xS5y121B8hjf7EDo' \
    --namespace $AB_NAMESPACE \
    --seasonId 'miExWYV40qfrSJjx' \
    --body '{"newIndex": 85}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XXvMxLkMJcrKABp6' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'c7GiUgTrHLEH0KaO' \
    --limit '7' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'ec4kZntFy603wrv4' \
    --body '{"exp": 96, "source": "PAID_FOR", "tags": ["YZdlsGfkes78KVFg", "5mb6OxHAu1a4n1pl", "pTVD3O732D7nubc0"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'CE7nMgz93PnJ4Ljp' \
    --body '{"passCode": "cff4tO2MqSprqT0Y", "passItemId": "TcbGj0u0XddSLEIs"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'tdCLyLi0OM5MDFNh' \
    --passCodes '["h3s6G0YwjJczFy8G", "qeVnX7O9kp0Y85CZ", "ST2TB93Buji0J9B8"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '9nsr3Fm8qu9RFP1w' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '0M8SDgJtX82GBlQd' \
    --body '{"passItemId": "sPkZAJejKVe185vD", "tierItemCount": 93, "tierItemId": "RWOyQxl8t6qw3TKt"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'nJNV4ZK9QcSvZQYq' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'sKM0on5rnsKI5rMh' \
    --body '{"count": 52, "source": "PAID_FOR", "tags": ["0aP4Uy8rXF6VY6tc", "WknAA4CQ0GXXTo5W", "eTsxt3yfQiRMkquz"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Vhlsez8wo1o3uJtx' \
    --from 'cO4f4ZR1Bc4jmn6c' \
    --limit '17' \
    --offset '20' \
    --seasonId 'lN4P0IuuMiM1oaaC' \
    --source 'SWEAT' \
    --tags '["5a6J4cAYHCqY4tbk", "FMBwVkIzjCGOuSlh", "XbrdCRTOeRudPA8o"]' \
    --to 'FcFUqsovZx97TOcm' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'Xy0qzs0qdv1aErK6' \
    --seasonId 'OrDWrWCDUjIoJLaN' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'WJZP9j0lHS5jz4Xx' \
    --userId 'c2kMhmnhYN0gyGTr' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '3wOpnIsTpKkXvvQR' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'WlqY2fNX9wsnYxHH' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'MPDrdf0gi7k2oFCs' \
    --body '{"passCode": "WgFPg7t2szY8QNkn", "rewardCode": "N6FQL7mpVO8n1dZD", "tierIndex": 17}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'eB20WIB2RsVH8vfo' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'VxTR0mvvKqRWGsh6' \
    --userId 'UyYspYqPEC4sECWE' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE