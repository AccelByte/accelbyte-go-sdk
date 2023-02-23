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
    --limit '29' \
    --offset '87' \
    --status '["DRAFT", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "drqSstGx", "defaultRequiredExp": 75, "draftStoreId": "LWovTzQI", "end": "1982-09-08T00:00:00Z", "excessStrategy": {"currency": "iIw45Sui", "method": "NONE", "percentPerExp": 54}, "images": [{"as": "hImCrX17", "caption": "s2TfxbVW", "height": 50, "imageUrl": "hZkXtnHg", "smallImageUrl": "TBy2dHbd", "width": 5}, {"as": "TIg0LzGz", "caption": "kD8qKHW4", "height": 15, "imageUrl": "089F0cgn", "smallImageUrl": "4zjem6Dk", "width": 71}, {"as": "7l8BBiA2", "caption": "JH4XLHGK", "height": 34, "imageUrl": "bzCQcWoT", "smallImageUrl": "IHrCfDGU", "width": 99}], "localizations": {"U9TwlRp8": {"description": "RD6Pz9lG", "title": "vBW3qu0T"}, "BMQinOR6": {"description": "kJevxq2j", "title": "sg6syDdC"}, "7WLolUxz": {"description": "obgZP1gv", "title": "v5HaLFK9"}}, "name": "Wt4sa7bn", "start": "1976-08-02T00:00:00Z", "tierItemId": "CEDTpc6J"}' \
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
    --body '{"userIds": ["axgBkFO7", "twXMPZx2", "64nvLQR3"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'VFL5AZu2' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'zazrpZLK' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'gR3CpYwd' \
    --body '{"autoClaim": false, "defaultLanguage": "bSIyNYF5", "defaultRequiredExp": 70, "draftStoreId": "PjchpH7A", "end": "1996-09-04T00:00:00Z", "excessStrategy": {"currency": "muzBITPG", "method": "NONE", "percentPerExp": 34}, "images": [{"as": "84ehfJ7E", "caption": "b8RdTacB", "height": 83, "imageUrl": "XK0uvNuc", "smallImageUrl": "qqXSALpQ", "width": 52}, {"as": "FzjDfnwq", "caption": "fed12ynC", "height": 100, "imageUrl": "AvTwXX5l", "smallImageUrl": "WS7tXBlT", "width": 30}, {"as": "mf6HFXhQ", "caption": "CSJcf4Jo", "height": 34, "imageUrl": "AzXxFJvE", "smallImageUrl": "PfnA4Bhg", "width": 21}], "localizations": {"ppPU9AbH": {"description": "hNG5wTpB", "title": "tScLNmzR"}, "tGA1pktl": {"description": "59vwfH1D", "title": "Y4JKAq3E"}, "rQytykai": {"description": "5kvvGNEY", "title": "dVlXFSeB"}}, "name": "rkCdje1K", "start": "1973-03-31T00:00:00Z", "tierItemId": "XXOfwJcP"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'w7mc3Y4M' \
    --body '{"end": "1988-03-31T00:00:00Z", "name": "11jFkQEy", "start": "1986-01-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Aodk58Sk' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'YiGzKfQz' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'sMvplFf9' \
    --body '{"autoEnroll": false, "code": "JHAoVTLM", "displayOrder": 31, "images": [{"as": "NKyUZvFH", "caption": "j88WZ2v5", "height": 47, "imageUrl": "ZeCrYBHT", "smallImageUrl": "6mNheJuW", "width": 59}, {"as": "nymm2aCt", "caption": "iUJBzQNG", "height": 11, "imageUrl": "1cnvoL0J", "smallImageUrl": "i2DmflyM", "width": 9}, {"as": "JY9sOoKr", "caption": "IXQmzspB", "height": 6, "imageUrl": "Q5IlPkpz", "smallImageUrl": "CA4Xtwor", "width": 81}], "localizations": {"EkCFzxgT": {"description": "l3BxAicH", "title": "7EaNGFVx"}, "2WWJ0Yes": {"description": "VwdZB5aM", "title": "LkcnqKrc"}, "47L9KTix": {"description": "2TIN5g4A", "title": "EtSB5qwn"}}, "passItemId": "LxbiqrSy"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'iXqZR1Gg' \
    --namespace $AB_NAMESPACE \
    --seasonId '3mZZfCiA' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '3lERaPxB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'E11et5uJ' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'Qzq8Ewkn' \
    --namespace $AB_NAMESPACE \
    --seasonId 'sQ9DsSuX' \
    --body '{"autoEnroll": true, "displayOrder": 85, "images": [{"as": "gf9xMEbb", "caption": "VvE6JDql", "height": 100, "imageUrl": "5NVBDh7I", "smallImageUrl": "crwWE9cW", "width": 75}, {"as": "XTOfG4c8", "caption": "xw2e8aH1", "height": 12, "imageUrl": "MaqU2rTO", "smallImageUrl": "5fAvBe5h", "width": 12}, {"as": "S4P7kWXL", "caption": "GfM4UjzC", "height": 14, "imageUrl": "pr46UYHY", "smallImageUrl": "XdPp26Tv", "width": 66}], "localizations": {"Hr8hhmXy": {"description": "5awgaceq", "title": "MY6LIGWK"}, "mWgj5mOA": {"description": "UEJQlPHi", "title": "QTn0mAOi"}, "cH0yQ93S": {"description": "Ojqswuea", "title": "DRrTgYO2"}}, "passItemId": "1aLKE2bw"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '24IpRni7' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'aLz1vs5v' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'dvNPNfxF' \
    --q 'rRWuKYVf' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '6OzGwLlh' \
    --body '{"code": "yKU8SKth", "currency": {"currencyCode": "AKVzxrlO", "namespace": "0BPxQe9q"}, "image": {"as": "zj5Juv0t", "caption": "Oj1pE4Dr", "height": 13, "imageUrl": "fm1AAfDD", "smallImageUrl": "TTwbRxpg", "width": 19}, "itemId": "AuBqbhm8", "quantity": 41, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'gqjaipnv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'fAWHXSjA' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'PGWKzVlO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'uMDFo0xC' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'BDgyxPlW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bIC0neHo' \
    --body '{"currency": {"currencyCode": "0xUCSk5Y", "namespace": "jrY0HNeL"}, "image": {"as": "fiNRG2n6", "caption": "XBkF0fJe", "height": 91, "imageUrl": "8rdUUJbz", "smallImageUrl": "UDny7F2w", "width": 58}, "itemId": "TF7a3mN9", "nullFields": ["E0JaY1KV", "AurNZebX", "7UJgsAAG"], "quantity": 46, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'g0seli5A' \
    --limit '44' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'NGWEqVwH' \
    --body '{"index": 70, "quantity": 35, "tier": {"requiredExp": 41, "rewards": {"pDbDtAkr": ["kC5wbioE", "JGdrHkoP", "7dOnonCz"], "sLNgQNfE": ["R4vOabwB", "urSjZX0r", "mqg7Cp9i"], "7F4T1CTx": ["Qii1M340", "ysZYFCM7", "CMCvcsQD"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'ccNkIThv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'p3cnBsKK' \
    --body '{"requiredExp": 90, "rewards": {"CTrrV0YD": ["mQm05r5z", "rdtPz5Sy", "tvnmks5U"], "Iy9H89nE": ["zNxQjRic", "JeQVL1Js", "nk0VOzTJ"], "UBNtFM6E": ["Xa16NbhP", "sKc4vN1M", "ig99ZpiL"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '41MxQSqY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'L6ftGCim' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'dcv09sar' \
    --namespace $AB_NAMESPACE \
    --seasonId 'qeHOzUhI' \
    --body '{"newIndex": 33}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'etIcFula' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'jc6MqwLE' \
    --limit '90' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'XV42hWJq' \
    --body '{"exp": 10, "source": "SWEAT", "tags": ["r9to9TI1", "Wgktxp6n", "ea15VwUj"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'UPHNXPJV' \
    --body '{"passCode": "Ef3pBrJi", "passItemId": "guMDLAgI"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'dmWrYwze' \
    --passCodes '["UZgj3Y1L", "6JstXzXr", "tddrKgcX"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'BPOAIsY6' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'oQ2ft4tV' \
    --body '{"passItemId": "FpxSgkKu", "tierItemCount": 80, "tierItemId": "HvfGeKdz"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'QcNHUvXn' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'Oc3Mabjg' \
    --body '{"count": 60, "source": "SWEAT", "tags": ["Z0fGAkQ5", "0IV7pgYz", "I5pqF9d0"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'n2XubcJM' \
    --from 'uf4HyWfT' \
    --limit '16' \
    --offset '29' \
    --seasonId 'hyCUfdvn' \
    --source 'SWEAT' \
    --tags '["Er4J0ScG", "Lu5FNDfu", "wXC4IntK"]' \
    --to '8BwOpsOc' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'RtQ28Dpy' \
    --seasonId 'LoexDNoD' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ycYOqea4' \
    --userId 'haPg2Y4C' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'po7xoU0N' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'CKpiXKCo' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'PunmI1wI' \
    --body '{"passCode": "iPDjf5Fc", "rewardCode": "Bdg9WMRC", "tierIndex": 99}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'AQ1i3RDq' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CDT9liqx' \
    --userId 'kqEuhjwf' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE