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
    --limit '38' \
    --offset '52' \
    --status '["RETIRED", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "P0L007sq0MVB6Kxc", "defaultRequiredExp": 35, "draftStoreId": "6aHtaTOUG5BdbwaA", "end": "1999-09-02T00:00:00Z", "excessStrategy": {"currency": "H8z6X2J45FWkctky", "method": "NONE", "percentPerExp": 92}, "images": [{"as": "C3hhQ4d303H0Q2ae", "caption": "ix1xpVGFAerp2xux", "height": 81, "imageUrl": "OMhjxNtATAO9kebK", "smallImageUrl": "aIpiDgcPKzLQmL5X", "width": 99}, {"as": "CW2764uJVwGl2DZr", "caption": "nBJCBMqB7yLSyoTq", "height": 15, "imageUrl": "5OK52pIKSeUFpPqB", "smallImageUrl": "t0Oon061eaVcvN0K", "width": 36}, {"as": "Ym6hRcWY1xC1bnWv", "caption": "DaGBzmETRY1wckOd", "height": 72, "imageUrl": "ykCzq2I4acdEfuGb", "smallImageUrl": "kfESRpiVjiexXpcC", "width": 47}], "localizations": {"tMRPbLfuTmeKRqVv": {"description": "gPfC0bkqgh0kqtvE", "title": "gpwD4FHJS9T6eoD5"}, "k2Axdkm1tP1ivHzE": {"description": "v8hAqoJpdGJ0mHpE", "title": "H9qWPiTisvSP0xGE"}, "cVtmx1qimgIdCTV9": {"description": "PzOT6V6OqTFaeoq7", "title": "2O6vhiITkNDCn67X"}}, "name": "LEhPA2qwo0Bhb2W5", "start": "1980-01-02T00:00:00Z", "tierItemId": "yTDqCFJ55b52nUJx"}' \
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
    --body '{"userIds": ["o3BmUNZ2e0azTApR", "Zu7fj7FH3WI2b6iz", "dWPfrRfY7LHJOxXf"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GRxXtpSSHqd9zRxg' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'e65RsW4woOxOZh8e' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AdQbfZl7DTk87vEu' \
    --body '{"autoClaim": true, "defaultLanguage": "Y6S9kdRRFk7iBOLi", "defaultRequiredExp": 16, "draftStoreId": "eN1vqMsDG2VYHpz7", "end": "1999-11-28T00:00:00Z", "excessStrategy": {"currency": "GKlvUWbhvXB6uPfl", "method": "NONE", "percentPerExp": 89}, "images": [{"as": "5gM6eg44DyLONKSH", "caption": "GMeTy1x8R40apfMx", "height": 88, "imageUrl": "qwDRuw1tKshe9X74", "smallImageUrl": "rz84BJLd2Slbd1hX", "width": 11}, {"as": "72G1j6ff1Yxu1HPL", "caption": "VwmxGTTWBxs6ApZJ", "height": 53, "imageUrl": "ASZD5sYrSXWG292q", "smallImageUrl": "OoPjkTflFhVQpAs0", "width": 22}, {"as": "HsrzYmXthbtHRPRM", "caption": "QpWFxqvDawhCoMiv", "height": 59, "imageUrl": "0jfQd9b1oVDu0rml", "smallImageUrl": "pkC5kAHmxxuIA0x7", "width": 58}], "localizations": {"bO8VqemPA5ybEw2I": {"description": "b0OyvI4hnEa1CHbk", "title": "tjYP2e4ae41qVsLd"}, "xtpZFoCrI2JbXPoE": {"description": "7w6TWPsKYb8DJksa", "title": "DXHNpXlcgk4JZWlR"}, "x1Expd6HaHMirypS": {"description": "I4ejWmWgDXrxURKu", "title": "jj8avGVdoIK7xoeh"}}, "name": "6gI5wkNsD7brZ1ZA", "start": "1987-02-11T00:00:00Z", "tierItemId": "0CtbEZqzsgwTm6tn"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9TANcT03fGTutHCB' \
    --body '{"end": "1986-07-20T00:00:00Z", "name": "rrJ3hmsgYJlTFT2U", "start": "1980-07-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'x81CX1Wosg8kDkLj' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'DJ6Yw6t6mY6LlKzT' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'PSRmG3RRKgKnK5Xv' \
    --body '{"autoEnroll": false, "code": "BAax6Av46z7kngIV", "displayOrder": 5, "images": [{"as": "gt00xPPLBYGq37TT", "caption": "CYpUbN5v5RpSbEBj", "height": 24, "imageUrl": "iK3t2m0KBvE6r4eY", "smallImageUrl": "Kwhzgn3XqGMgjZDd", "width": 42}, {"as": "gnhvMyBWbqfVRjIa", "caption": "EFughAl34WMRBT9R", "height": 9, "imageUrl": "Z9aTeny2R8Ro5dJS", "smallImageUrl": "UO91MiYVT9y0g5lk", "width": 28}, {"as": "gVDmzmcVBMcFmHZC", "caption": "gdrOOMeXrl4UPF1t", "height": 84, "imageUrl": "HMlJjbnXR4hqUgXi", "smallImageUrl": "IVCng7dh54KMI17h", "width": 56}], "localizations": {"JymRLX6eHM7rR3Fr": {"description": "un6dPtKFup35fDLO", "title": "565Ej9wcuC8Kqgiv"}, "JPidTnL5G0E5MBzx": {"description": "RU68ggOnf4f4FwTu", "title": "Tj1eMH5uYnuPyJMv"}, "ztedx6YTOhx0TLuY": {"description": "nvrmNfVYpWfQ5orK", "title": "fMuYKrVFyowc9yIg"}}, "passItemId": "iBEPJ1LrlfVnJ5O4"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '0EYnfA1yddpFIkSt' \
    --namespace $AB_NAMESPACE \
    --seasonId 'JII06T8RtzzkMr9h' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '3SdNznk8Rs8X6BXH' \
    --namespace $AB_NAMESPACE \
    --seasonId 'V11DGVDVxZ8xXjDG' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'Na5NJxu9tN7eUtog' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PUv90xWN85QkfqUd' \
    --body '{"autoEnroll": true, "displayOrder": 92, "images": [{"as": "DN6QTUNPdopumLVu", "caption": "AbkDAY7l177iS1ux", "height": 1, "imageUrl": "u8wSRdXhbEHoBXtL", "smallImageUrl": "s4tCRq0t7D43GAYR", "width": 80}, {"as": "vBvybDjvFARTcStq", "caption": "ijF0M4QhajnCCgl8", "height": 57, "imageUrl": "QQrI3DGnyaY7l8tO", "smallImageUrl": "eyIrLk8LL63Rz9hf", "width": 100}, {"as": "Bes0kwLmlA9ScTbC", "caption": "BKV21BFhcuovcZ9j", "height": 46, "imageUrl": "lbRj90T9h7lyLFoh", "smallImageUrl": "7ikxN96BbZpPDcEa", "width": 6}], "localizations": {"5Wys7O1iO48SdRcL": {"description": "QUQuuOOraD5CvUMK", "title": "SD5fZfEYHxS1IH7u"}, "3ZIXIrn3IZ17f3nd": {"description": "qjfKSXzyV4G1DHfj", "title": "bphZ37VpS5fGnKZZ"}, "HO27ynvIM5giUHcD": {"description": "v8j2NDceuOh0BkKN", "title": "yIAwYHR5q34OTS06"}}, "passItemId": "Nmnu9DGif2qlOWbH"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OFrwymVzNNdhM70B' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'WRoDHMOzwMp5DgEp' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'Dit5uGYYSUgnWuWz' \
    --q 'hFIpQePQyREcwY6t' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'XE7LWNhi5YYhNjMZ' \
    --body '{"code": "icnqCuucn5O2JHnW", "currency": {"currencyCode": "6NOOudOVPGX2hEjs", "namespace": "74uc9jCmqscGVXXp"}, "image": {"as": "XT0bc2emPX3xuYmM", "caption": "XOovKNyDkaTye1TG", "height": 99, "imageUrl": "vl2J0N5xhise25zF", "smallImageUrl": "V1eXnFHH1ERWj5ZG", "width": 56}, "itemId": "1uN5Qlcwvlu0hktk", "quantity": 92, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'HoB4nFGg0c7JpViJ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'xLe0H8vwUs7L7EFt' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'iYZlE1y14HjEvAYE' \
    --namespace $AB_NAMESPACE \
    --seasonId '9U0zKX1TuhFLnbDc' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'gpIioYS1uWfF3EVV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jlhcFZDpKhgfX4St' \
    --body '{"currency": {"currencyCode": "rQOJRoWy3QUFqphL", "namespace": "BXKWYHYMAwaspmqX"}, "image": {"as": "pvmf2wVhDA5OZulE", "caption": "anYUqRUJhr15lOxT", "height": 84, "imageUrl": "bIgIi56ZeyBAxsq4", "smallImageUrl": "GSCkSevf71cgBf9L", "width": 99}, "itemId": "73dixvLXYPuzYBfC", "nullFields": ["zglH7vc1U5F995wT", "AxETBk0XAghlOW23", "bpxoVhqFzgKi6aFq"], "quantity": 30, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '99GzH2VA7ZvX7sKs' \
    --limit '78' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'dYtrMuunMo2r6nxE' \
    --body '{"index": 73, "quantity": 69, "tier": {"requiredExp": 14, "rewards": {"MYBTfQGuPDzCEqy4": ["IMaxFDkTlXVmcW2a", "0Gw2NJAoXRDTfDm9", "eOpRtN3r0YadPjJC"], "LLH5ZXemyFN4bGnM": ["DP1OsZFKApI3RAVe", "uQ4xSYZeVGkJDxie", "aejsY9lfSKxL0JQg"], "WeOBEURoaPFUvG6k": ["wkTP8LrWMJ6HRMSe", "qLLq6rUWXqswtRvO", "wSHpWHq54LAk291V"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'PbIC5myEf2xy6b9I' \
    --namespace $AB_NAMESPACE \
    --seasonId 'NGHafOSXgrFXstcK' \
    --body '{"requiredExp": 13, "rewards": {"S58HkZLnhrhn9wYE": ["atEZQwqaOFw59YYX", "xE2j8Ti0XB2Kv8vk", "uTCWCDlXE0KFEubu"], "OR8BNZjWnjzOqijr": ["3B6vCObvpqYsrqOu", "zAYca27vNtUPPU9Q", "1FbFSeXrIXKiLuXR"], "2ZaFw9fQRxrSoPCH": ["Zzmy7pPCwGXkgcWr", "wCFCSt8A65KR76Zq", "KPTtwKkHUXgkfgj9"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'oFAAYdXZlMbUznhW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'yvG1WmIT7C4asnOP' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'LsZe6jYA6lsWhygY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'QDA8E6Ef3VcAtPiV' \
    --body '{"newIndex": 27}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HSfnTKCWknqnCa7M' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'rfzzrL1yAy12goQC' \
    --limit '5' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'OyWb8Uqg6uqT2SKy' \
    --body '{"exp": 9, "source": "PAID_FOR", "tags": ["JIltL7X049lMVFVW", "RB86GJD0LakY4b2m", "Us8ZbMzbvKappCT0"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '0n2vs9zXHLrVOMNL' \
    --body '{"passCode": "gOjlGvbnwmuoba8p", "passItemId": "2cqKlhgIKKVGRx6I"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'Z5LHmQYrEvo0Fo1h' \
    --passCodes '["9We3VOJLC1fA2rYu", "z9md2t7RkBY4HbfR", "L5pETJtZFwmzjTB7"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'IlFz1b4wJVUgxb8W' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'ZFzqCrLmL8VV5KNX' \
    --body '{"passItemId": "Aynxsq0deTgdkfNI", "tierItemCount": 84, "tierItemId": "Rv0VFMehtSivyfeP"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'l7sBMNg5SWuIhqBD' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'ftier6IdJncQ6FPp' \
    --body '{"count": 54, "source": "SWEAT", "tags": ["UMNoGickNmVj5sqL", "87N7YVC6hPaGnFB1", "Viyf3pSQaEppmwrV"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '4rhOF8KeIJJq6KK4' \
    --from 'fkPcwUx5IqveShbE' \
    --limit '58' \
    --offset '55' \
    --seasonId 'ypcQp8dUbE9bVMPT' \
    --source 'SWEAT' \
    --tags '["LBBudDsPGtd9WOnQ", "4bKaaDX9uqc231Po", "umOHtj5jaTtJUDmC"]' \
    --to 'obgPUOLnZP5UAT6u' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'sb2Y4ncCQFy0ezue' \
    --seasonId 'lymlsYJdkcNF0yCn' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'REUdm5UWkX5BHvCU' \
    --userId 'tqm3inKbpzHQOTDq' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'wxpNaF7X5bLu491L' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'USyBQOKBdXbSI5q4' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'aLIp1fQpaTGnXcV3' \
    --body '{"passCode": "tMzgSrrG0bqsvGUm", "rewardCode": "JlsgyrES6kje5GDH", "tierIndex": 59}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'duoZPzpJXYaD0vMX' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hC4mQcKLFynssUDr' \
    --userId '6cMQ1CGxt0WxA777' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE