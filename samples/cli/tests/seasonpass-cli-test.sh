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
    --limit '48' \
    --offset '96' \
    --status '["RETIRED", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "HMqBDgmGu3NwFZSv", "defaultRequiredExp": 83, "draftStoreId": "w4kuWYvY8gMnPC5o", "end": "1995-04-23T00:00:00Z", "excessStrategy": {"currency": "KQ9zJ47IqFkJAfZ3", "method": "NONE", "percentPerExp": 59}, "images": [{"as": "evHWwWvRcWa5LKDg", "caption": "8p7hg37KdGhAXPWi", "height": 87, "imageUrl": "jSu9BXqhgNMC5yZ9", "smallImageUrl": "xG35n9KbYqHlsac1", "width": 45}, {"as": "QFpQnKr4B2NOb4z7", "caption": "E0ir7hLtxUEL8bQP", "height": 72, "imageUrl": "y64Le7x5DWc8qX2u", "smallImageUrl": "2XQ5OdVrUM3j7K6f", "width": 15}, {"as": "MJ6l3z1PCh7U8VFG", "caption": "QowunqLRIwqguPSE", "height": 18, "imageUrl": "tVqeDZ0dE1pfRDbp", "smallImageUrl": "WIh3XwIGFDN24KRG", "width": 62}], "localizations": {"JcoiDvx01GMIxInt": {"description": "HnX8a6tAgu0mV0Jc", "title": "FXWXsvPEBcVINaEs"}, "DPt353yL6gEjCqzA": {"description": "jZCT6fU08c4U3MpM", "title": "lKWdyDKsqXFh5WZK"}, "i2l9rVfPme8PRJ06": {"description": "EVohugacNRbsIuGt", "title": "bPX6X2OhdbMzQHtL"}}, "name": "M4wrWEPvrSMqCKZU", "start": "1976-05-23T00:00:00Z", "tierItemId": "oOoUmy95mdLl8SrR"}' \
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
    --body '{"userIds": ["17c0ixU1nlSqNCEY", "mBKduertrh8zyI8t", "GiUeJ1ASlwgxR266"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'SSalgzTr5G9PMviL' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '48SQDTDdMa9Jr8oX' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'e3WEBMxy9GyMX65P' \
    --body '{"autoClaim": false, "defaultLanguage": "VW2mPhOzzQ1uSNJ3", "defaultRequiredExp": 13, "draftStoreId": "wV3gumI1DUMYspM8", "end": "1991-07-06T00:00:00Z", "excessStrategy": {"currency": "6BDQQ9uiOq18NMJW", "method": "NONE", "percentPerExp": 12}, "images": [{"as": "EtJWrt39clnq24Yj", "caption": "Nt1HUAZUfGnQrqgp", "height": 4, "imageUrl": "cxtiQNsOiEHzkcA2", "smallImageUrl": "Oe3cRtyp2jvRIsjq", "width": 40}, {"as": "O5pEcNKBG8DeLZ3C", "caption": "Ot1Ez2D3HSfAVKAj", "height": 41, "imageUrl": "19zMuwBUDjlE7fUQ", "smallImageUrl": "9harZzHR2ytnDXn3", "width": 78}, {"as": "UqnyA0bXKcV8Igvp", "caption": "bgZHdotNICMWFZrJ", "height": 46, "imageUrl": "xW2KWLgh8ydQ56Hf", "smallImageUrl": "YGyNcfm2ErRaPhDh", "width": 51}], "localizations": {"xeEXUEwEggVPD6By": {"description": "bPDTrc5nmDNle9st", "title": "ldBLwqGwSO5c1ozN"}, "YfI2BEkXCya24Hkf": {"description": "mAQzmE0sqRJzHx5z", "title": "Qkd97ca2Wuyu679i"}, "c6tKtIg3JW8rmsnd": {"description": "3e5wezcqejnd4V13", "title": "z3HZBhLOFyQD7nyJ"}}, "name": "ndj65gAKy2kN0Vbw", "start": "1973-03-17T00:00:00Z", "tierItemId": "ZJ0DyRoTT4xg9OzT"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'D3jtC4qDk44yNBVx' \
    --body '{"end": "1971-12-08T00:00:00Z", "name": "920p43jBUXzP1Gwt", "start": "1981-07-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mlzDisy5nsBBOoTg' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '1yHif8o9O0nLb9Fc' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'pxgfVh1NC6wVeipk' \
    --body '{"autoEnroll": false, "code": "crBcRP480Bcu28JL", "displayOrder": 63, "images": [{"as": "2YdqyBjV38m7Hu2A", "caption": "vD7fZR0iCaAY7DxK", "height": 65, "imageUrl": "jIwQNxwJ7IVywdGM", "smallImageUrl": "9NGPEFudDxFNLPBp", "width": 24}, {"as": "PSTZKCd33xlr2caL", "caption": "XucUyGW8DP7vItQy", "height": 78, "imageUrl": "KT6YiyAuTATAjUgi", "smallImageUrl": "rpvUKCf3tyj8hsE8", "width": 18}, {"as": "Ke50wKCu3p33sjNQ", "caption": "oQ2aOrqg3GCZ8rFT", "height": 9, "imageUrl": "uvUvuP4NT2DezhPS", "smallImageUrl": "5gnL21VJ05YOCVCH", "width": 41}], "localizations": {"805QakW6qrIfY9Dr": {"description": "D3Ytl0KNK2VgIrdA", "title": "mqhnB698DfXPsOeB"}, "3YQTxmbzN37bqW8c": {"description": "NAUpXSIK818FNVpC", "title": "yoJnJ133Qghrug7X"}, "6n7I53tZCN8OXEaI": {"description": "2ZgtISsCBa52z4ko", "title": "p1byzSX2YRnnypNZ"}}, "passItemId": "GaFKKsIEVW0xlmdb"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'ubMT9id6I32lmNwG' \
    --namespace $AB_NAMESPACE \
    --seasonId '4j4qZVSyNPbEHgXI' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'iSP29kdgBIXoL9xY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'vJuvsBrhOm0aGgrC' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'ofWT6W46RhIL5JEz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZB9oYKHHNGuGO8Qx' \
    --body '{"autoEnroll": true, "displayOrder": 40, "images": [{"as": "fTexzAnoWVzpTyn7", "caption": "RXcYijYnFxpjzkfo", "height": 21, "imageUrl": "spOOqiAiUPif4ABi", "smallImageUrl": "kfs1AuM2sfBw651i", "width": 88}, {"as": "i8mhaX9gb3AELgZc", "caption": "COsfP8zwTp01pbMq", "height": 84, "imageUrl": "88HTOOuRkG0fEpOW", "smallImageUrl": "tr5Yxr1eig8Gvbx3", "width": 47}, {"as": "6wNhaSlWVDyXVkJB", "caption": "vG9ps20NfAvW2cwa", "height": 95, "imageUrl": "jSKLaB8Wqhb0xxVd", "smallImageUrl": "bH7tCtjiXpHQhP5X", "width": 52}], "localizations": {"Vsbz3iUARUqcbtf6": {"description": "xKQ9PUCqlFHMr1Tk", "title": "1HuqdYZwT3QDUHGy"}, "XInoISnFdNqt7mKa": {"description": "lKsvfPxF0ldi2UY7", "title": "iakJEIwmmYjxR2jN"}, "APHOycGZ3cni5AeC": {"description": "V9GF1H0GtCGN3qPv", "title": "pTyYwAUiCsaK4bNp"}}, "passItemId": "SOshRSvOEmNceBvD"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MRJaasjOTTHApKRH' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'BzJvuvXGfF4D1bLR' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '5ErcLaf7znGpNTJe' \
    --q 'XkjJyrMmCeVgY9RW' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'H1teSUDqNthJrs92' \
    --body '{"code": "YC9BuMQCXCmv9mLw", "currency": {"currencyCode": "v5PEXcZiTInIziGG", "namespace": "evHlb2MuHdkgOnjd"}, "image": {"as": "xYQNLamLGWOZefSt", "caption": "AYjIuKVFSYJ9EmcS", "height": 50, "imageUrl": "6G1hmokccEcf1C7u", "smallImageUrl": "aKy9lnWsP11Q2WTs", "width": 22}, "itemId": "8oN3OvGb8A0r96EH", "quantity": 100, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'FTAHBExAa41nC0pV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'vN5F0Z9IiK1zS4Ro' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'rWAHFVTW4rQpsFR7' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pRNDT2TDvfZboWEV' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'tpQYvNWPlG7MmtqH' \
    --namespace $AB_NAMESPACE \
    --seasonId 'IbdNhlD34MP9VjF2' \
    --body '{"currency": {"currencyCode": "k3JzmGP2Ol4p7EOz", "namespace": "dxLYqtnuhv29vIKx"}, "image": {"as": "E2nbOnXf9buk8Lrz", "caption": "3YTa6NDmerDH5D72", "height": 66, "imageUrl": "guzXeag1FceX6ju6", "smallImageUrl": "0376Jc1qwAEkX9sP", "width": 29}, "itemId": "8nLFPDGDruatOBxq", "nullFields": ["8gH3H3kJYvG8ljgR", "x27Sq6x8Z2wHAIQ8", "2sy5n9H9EKgrbkwS"], "quantity": 39, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'HkwgQHrwKSLwn7YC' \
    --limit '49' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'QkyRRDBLxRhti8zR' \
    --body '{"index": 66, "quantity": 85, "tier": {"requiredExp": 73, "rewards": {"hlRz4t71yI75JsJp": ["NgyIYH2Q2n9W86Aa", "tOA8Yc340CvRZ1oW", "mfqU5wQ0w90lxif9"], "DBLceruBdRn2jeCT": ["krLMBXHKv58tgObi", "qkh31GhuA5Bs9Cxt", "qe8vAoWPymuZwr7C"], "HjT8D4U3hlOcpBHh": ["Ed0jH2c4GxmcfhEO", "9IaAIynS8AXESZ2L", "NcLCHgWIKN43EO2A"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'Nb3huJI7SZDArNFt' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TRCSblkcJubTDhIm' \
    --body '{"requiredExp": 14, "rewards": {"nk3yGzQ6xPhr3Pox": ["4MGRShMrI7oAUdvn", "7ScwO7ODgvFJUDXM", "td6Bd40SN2p5UW1m"], "cSoEnibF8DBTsSh5": ["MPD5zo48urW038o0", "xq5BfVK16POD3dGk", "8nJIJWeP2vGm352j"], "Q35hy7NNbuMaLUWp": ["CcHy9ZabKHOTHvwm", "snmoXD7JRah42blr", "ixxi3bEjCamP4UYV"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'gFkZH188LFr4POH4' \
    --namespace $AB_NAMESPACE \
    --seasonId 'HmzZebtTUoNwYl8d' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'gJfEL6NVV8GueNDe' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PfPy7d6mlNDojM9g' \
    --body '{"newIndex": 57}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dmyO171QkGH2huPG' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId '22RhRA825F8yZ1xx' \
    --limit '71' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'whr19nxysFKxpDIS' \
    --body '{"exp": 64, "source": "PAID_FOR", "tags": ["xDYFDf8zFggljj6C", "PWiHRMWEXcTyoKDF", "xyN6X6m4SMBTOwuz"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'hS5yOMspwGKaEt6I' \
    --body '{"passCode": "RiVNNGRQ1v3nSRhM", "passItemId": "iQS3zjv5txudtw5H"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'RrTXnMzVzYuAo9kI' \
    --passCodes '["ipkldK3otzdC0Z8l", "Ly2Lhxv58vOrV7w1", "YssujsNH1XYHuYug"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'kvEPHu8QH3dNffjP' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'X6NF55x28VvWyXwz' \
    --body '{"passItemId": "TTwXERQwYK8QTIH4", "tierItemCount": 99, "tierItemId": "2O1bvwdhgVQHsg2L"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'zQfbySP94I1n2CH6' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'JhkXPJhPnLfKaUoP' \
    --body '{"count": 73, "source": "SWEAT", "tags": ["2UUIKk4UlSbctFf5", "M0YcBmFHrKKet3LX", "qrvWJ9Q64cbVcIzv"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '4VuO63PW2QXuF8pJ' \
    --from 'haZIvDsyAjrH0aNC' \
    --limit '64' \
    --offset '63' \
    --seasonId 'vW1b4BzkstOPpNJT' \
    --source 'PAID_FOR' \
    --tags '["qffzx6GLnLUZ3e4k", "dX40F3eHUEJ8V8lm", "NBTkHhqmRh69IAqu"]' \
    --to 'N6M1xQu0igXAFaNr' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'xugxAeh4NEs2u3rJ' \
    --seasonId 'L68z3UC89HDUlBwf' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0ZmGqh7mvFI2fMG3' \
    --userId 'b3bAwPiXgMtwfl1r' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'JmG3nnvJyggtjrMe' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'RoNkPwZnvYa4BUMP' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '7U9ipW48Hr7YLRRt' \
    --body '{"passCode": "t7QvOY0NojMweETQ", "rewardCode": "lnAQJWe1PCKImz0I", "tierIndex": 8}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'fRRjEJXplynowjTS' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'n58nuL84S4uAT0En' \
    --userId '7JW05OC5PXbWnRIo' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE