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
    --limit '3' \
    --offset '2' \
    --status '["RETIRED", "RETIRED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "RgtckLpN", "defaultRequiredExp": 11, "draftStoreId": "gnBkJO0K", "end": "1974-09-13T00:00:00Z", "excessStrategy": {"currency": "dGFMoabf", "method": "NONE", "percentPerExp": 74}, "images": [{"as": "EjwlWOHk", "caption": "ObzEauGY", "height": 32, "imageUrl": "50uXmoqh", "smallImageUrl": "Nd7Ew6Bp", "width": 68}, {"as": "S9HD0aMX", "caption": "dlxE1M0S", "height": 59, "imageUrl": "KtrGBWsT", "smallImageUrl": "bgNSWrFP", "width": 39}, {"as": "3EsgSE1e", "caption": "LA3EVBu7", "height": 12, "imageUrl": "VwdznHZh", "smallImageUrl": "OW7xcZxC", "width": 36}], "localizations": {"cchiOEqn": {"description": "qWMtTGhi", "title": "aYtFgs31"}, "bEZDyxMZ": {"description": "8ckn0k3V", "title": "oR2yGVlc"}, "i7omIEKs": {"description": "jT9Px5e2", "title": "9dfYdoke"}}, "name": "5pfPSA5R", "start": "1975-08-18T00:00:00Z", "tierItemId": "ARpco3XP"}' \
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
    --body '{"userIds": ["kehu9FaV", "v6u7K1vv", "LNPJxuum"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ly7QBASk' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'V29whdn7' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'liyTnM1Y' \
    --body '{"autoClaim": false, "defaultLanguage": "tdbSEHF3", "defaultRequiredExp": 28, "draftStoreId": "7wdSqMmx", "end": "1991-01-10T00:00:00Z", "excessStrategy": {"currency": "dtNdHWJi", "method": "CURRENCY", "percentPerExp": 18}, "images": [{"as": "KQ52CjAr", "caption": "cW3hMFEB", "height": 17, "imageUrl": "sABnoC5N", "smallImageUrl": "C0gg2XI1", "width": 38}, {"as": "slp9v7Df", "caption": "95HZ9DqE", "height": 79, "imageUrl": "SSbwXcbS", "smallImageUrl": "wyQygpLq", "width": 79}, {"as": "3JvWmv8f", "caption": "2zlKErcr", "height": 70, "imageUrl": "HIPTQi4c", "smallImageUrl": "CLY2lLhQ", "width": 21}], "localizations": {"Flv1ePoA": {"description": "8rAzeKrc", "title": "JzHzTq35"}, "8HvShigo": {"description": "y4sNYCbG", "title": "MU5U1DdO"}, "DdIYmkEa": {"description": "5fD1ETTX", "title": "o45Z1Sfl"}}, "name": "4TOXgVCw", "start": "1989-07-14T00:00:00Z", "tierItemId": "2ayxvMST"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sZJ55m2z' \
    --body '{"end": "1995-01-17T00:00:00Z", "name": "5vbFGYlT", "start": "1982-06-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'VzzSBu7p' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'zfX0BDGS' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId '95qwiG6B' \
    --body '{"autoEnroll": false, "code": "VkvRHyyJ", "displayOrder": 72, "images": [{"as": "9vCdZ7tt", "caption": "I7ycuOD9", "height": 99, "imageUrl": "8uih5qI3", "smallImageUrl": "19suYc37", "width": 40}, {"as": "6M1a28rP", "caption": "JA8qbUnY", "height": 48, "imageUrl": "3c8VZTDE", "smallImageUrl": "GIvJER8y", "width": 44}, {"as": "vYdHxxo9", "caption": "BI4AkRGa", "height": 57, "imageUrl": "TIIWMcED", "smallImageUrl": "r8KMIS9V", "width": 34}], "localizations": {"xFxBci9r": {"description": "SKiymzpZ", "title": "GxmhirCK"}, "RhMvMPfe": {"description": "b8Oop2Wo", "title": "h3uc8Gmr"}, "ch9fVba7": {"description": "IteYPbby", "title": "pq5iwkbg"}}, "passItemId": "3rKBIaKD"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'VpgDwcfQ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'lIghENQO' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'UNt2ngsO' \
    --namespace $AB_NAMESPACE \
    --seasonId '4k0CaZY1' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'uFUcrLXJ' \
    --namespace $AB_NAMESPACE \
    --seasonId '8e3dMRr2' \
    --body '{"autoEnroll": true, "displayOrder": 77, "images": [{"as": "skbrkqdj", "caption": "yNEn13VK", "height": 2, "imageUrl": "Wbu2eYSc", "smallImageUrl": "F7xzNAB8", "width": 84}, {"as": "Q0LsMeoq", "caption": "0aVA4ZVj", "height": 36, "imageUrl": "UNzPpijs", "smallImageUrl": "BbJHuayU", "width": 40}, {"as": "7OwbaqoN", "caption": "wgkDz4E3", "height": 50, "imageUrl": "No7z2RuQ", "smallImageUrl": "XZ9u0ODF", "width": 66}], "localizations": {"wKt1MxMh": {"description": "iOAOItzF", "title": "g8raAmup"}, "9RVzuDZM": {"description": "TO6AaGcg", "title": "MerFRo4q"}, "phNJHkk0": {"description": "KPmwfTkz", "title": "wryTY2QU"}}, "passItemId": "64v79oEg"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5focz24S' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'x5IVuIJe' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'sOmo7Lmx' \
    --q 'JKAwHvDh' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'HscCh2qn' \
    --body '{"code": "BkDxIUyh", "currency": {"currencyCode": "ExrdgUHT", "namespace": "Vwy079SZ"}, "image": {"as": "F7GbIMR5", "caption": "VkoOejwr", "height": 88, "imageUrl": "yLqULDKU", "smallImageUrl": "pbRt2re5", "width": 34}, "itemId": "3D8WmZXR", "quantity": 68, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'kbHcwx3F' \
    --namespace $AB_NAMESPACE \
    --seasonId 'tN4V7Rik' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'fUwP7S4S' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SUtMZ1de' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'RNiIa4ic' \
    --namespace $AB_NAMESPACE \
    --seasonId 'FFfROk8s' \
    --body '{"currency": {"currencyCode": "M9OEPNrN", "namespace": "VSbMxV4t"}, "image": {"as": "nMRWifKm", "caption": "5qEIlKkw", "height": 36, "imageUrl": "q96H4YF7", "smallImageUrl": "2TDnnK8r", "width": 87}, "itemId": "XnyEKoKB", "nullFields": ["vnnhKoQ8", "pHj7OhJo", "B9TN8cnk"], "quantity": 29, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'c0QNUn2p' \
    --limit '64' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'kKk97Z5n' \
    --body '{"index": 98, "quantity": 75, "tier": {"requiredExp": 41, "rewards": {"ywx68LXu": ["ICk0xdE1", "o2rxZUb7", "G1EBLxfz"], "XmDz81fy": ["K4O4jBmc", "WWHo0cA5", "dVfWrMHv"], "hp8mWkB9": ["G6W1K6hX", "inDXUlXb", "YV2ZzDfD"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'XmIJ7hLl' \
    --namespace $AB_NAMESPACE \
    --seasonId 'IPfArx2a' \
    --body '{"requiredExp": 19, "rewards": {"wmGUZJlZ": ["qC3jpiCJ", "RdAK1LG7", "lBzfwScr"], "2GVBPwHx": ["PqVEin9f", "mdU0Sv5C", "pwDdxrD1"], "6TwnC9L6": ["YXJs98Rc", "o5A2ZfiK", "eLy2fYQR"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '8PhCk9c3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'E22zB7Wf' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'jpIcuejq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'X0aPkXT2' \
    --body '{"newIndex": 39}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jXu8XwQ7' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'uhDcfC0x' \
    --limit '2' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'yXQQTaAr' \
    --body '{"exp": 3, "source": "SWEAT", "tags": ["bfRKEkQP", "WwKNRA3v", "5TGL2UD4"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'EJa1vVl4' \
    --body '{"passCode": "woOu0ZHN", "passItemId": "AqCZ7p4Y"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId '1dzcSeb9' \
    --passCodes '["wm3SqlKV", "8enwUXXa", "P9cpy8zY"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'x5sFOwPG' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '2X9rgwgb' \
    --body '{"passItemId": "AcBb63gJ", "tierItemCount": 56, "tierItemId": "VdwfdMJf"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'vE1Tz6Ar' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'o4ATAWgM' \
    --body '{"count": 34, "source": "SWEAT", "tags": ["zbtYREbE", "OUm3rPcF", "ziXEFBlR"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'gbFOnXX9' \
    --from 'bXgWpyGr' \
    --limit '47' \
    --offset '28' \
    --seasonId '9Eno5R0E' \
    --source 'PAID_FOR' \
    --tags '["fA5RmX0f", "WjG5SGpl", "c5G1fd4f"]' \
    --to 'fIueiGXq' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'uQQR3XxC' \
    --seasonId 'CiFfww7U' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ak5ANVcS' \
    --userId 'KcfMujVk' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'TbYpN5Qv' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'Wr8BLAMn' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'TiNmFVkF' \
    --body '{"passCode": "SqMPWZIt", "rewardCode": "eDC8pgjY", "tierIndex": 97}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'MOCzRugF' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CRF8LBnJ' \
    --userId 'qF0mNdLL' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE