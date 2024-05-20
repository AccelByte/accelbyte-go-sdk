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
    --limit '29' \
    --offset '9' \
    --status '["RETIRED", "RETIRED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "Kx4C3lU4KmdId2z4", "defaultRequiredExp": 65, "draftStoreId": "kSxcspe3xh55edBd", "end": "1991-10-03T00:00:00Z", "excessStrategy": {"currency": "Yz9xdJ98lx5aFxnZ", "method": "CURRENCY", "percentPerExp": 92}, "images": [{"as": "HbYQpSQ8RRMDcnBR", "caption": "xsJyHrnEWkllnmRv", "height": 2, "imageUrl": "iVvrrbO2NztURlOd", "smallImageUrl": "XH922FQD6Xss8Np8", "width": 39}, {"as": "nxChnKM3PIZde9o4", "caption": "zoCal1RQKb2V3GBC", "height": 92, "imageUrl": "eR7dpgiMQDvXEVnw", "smallImageUrl": "PL6dEvXPFvoSw4zP", "width": 40}, {"as": "5McBhpM8M9cFq2bG", "caption": "uPbLKfMuCLp7KjP9", "height": 53, "imageUrl": "cf5IEFI1T8fCzUXU", "smallImageUrl": "bU2n6fdFHEU9Iaf7", "width": 64}], "localizations": {"hHurH10yZXSOeCRb": {"description": "HRv7lTHJQLKpYMyA", "title": "gh4ptsb8axCYzeZc"}, "uPMno2M91YSO0YwH": {"description": "xOOtcILiAziTTzYu", "title": "D9HqEV9pOaiA67he"}, "Acr0ktJFYgMzoDrO": {"description": "zU7h0uTVXYhdNWnL", "title": "6PK7y2lPjGIYKcgB"}}, "name": "sWBs0Va1yG5xSuIv", "start": "1983-07-01T00:00:00Z", "tierItemId": "bTaMs2lKaCcnJ1Iu"}' \
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
    --body '{"userIds": ["qeFUfucY6KNkr6Ow", "8jzYGXlnFQ9Manrg", "KVrrgfohZGExZUsd"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0ddBOsGnkrJihBug' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DbDI5lBykNTxKwib' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FuMeuW254Zn6UlgA' \
    --body '{"autoClaim": true, "defaultLanguage": "kaqnGQUu4Sddq1r6", "defaultRequiredExp": 48, "draftStoreId": "ZyvDwzTrOY6zfPpP", "end": "1977-08-06T00:00:00Z", "excessStrategy": {"currency": "jmeetySK6LmGDRXF", "method": "NONE", "percentPerExp": 26}, "images": [{"as": "YPB2fapZRUB5FRCa", "caption": "rOaAzZvVdmESjplz", "height": 80, "imageUrl": "jenKBpq0qMeFbQgI", "smallImageUrl": "eDJOtZlZil2PJft6", "width": 64}, {"as": "PuRu4vfkKBal2yyv", "caption": "XRnXDc1cjw5mvz8r", "height": 97, "imageUrl": "GFz8sGqriXf7otVK", "smallImageUrl": "2feWX2cmDnobwpQ7", "width": 72}, {"as": "BJ4RxIIIGlyjsade", "caption": "MMRXPinx4foseDAj", "height": 2, "imageUrl": "xYugRKLGqJs2OGIo", "smallImageUrl": "dBTUepsEDsw7Y9TC", "width": 94}], "localizations": {"qRlohiNqSMqmTvEI": {"description": "RZozDS7igC7p33Pk", "title": "eUpCOVWcindDDtZR"}, "rtGxeelnX6rvteNd": {"description": "TI2jELzLk6ylTNuK", "title": "dYOU8BRaQjx5vNFz"}, "GooHYBsO3qELiUEl": {"description": "ipKkVGpEOMaD8XTJ", "title": "kvpqwFRZQ7PacVWg"}}, "name": "KZjg8T1W745bQZvB", "start": "1983-04-27T00:00:00Z", "tierItemId": "dLs9TINAnvCJmXTz"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'StXEidfGeEDHARnF' \
    --body '{"end": "1990-05-14T00:00:00Z", "name": "0Ap9dZYLJeWltVyW", "start": "1983-05-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CJA4VKtSzeSnE56Y' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'aJRwexNX39wmIo7U' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId '32FkpbY9Y8Pucz5w' \
    --body '{"autoEnroll": false, "code": "YCwfUpJrjm2IcCfj", "displayOrder": 6, "images": [{"as": "vZNEeMGGPLphA1SY", "caption": "4cLSBFr7cIj5SDHP", "height": 55, "imageUrl": "8ZvUODt3uuIMxIA6", "smallImageUrl": "dy1oSvqwJnYCr4It", "width": 76}, {"as": "AiPn0bRZWaTKWZIZ", "caption": "nNICdol3mdpcQEOc", "height": 30, "imageUrl": "42hleZpQsBX6RSQA", "smallImageUrl": "MZnbVi7jEl8PomcX", "width": 29}, {"as": "Qw9MAkdTCkLSfPzN", "caption": "mGosaycBb5isoGb9", "height": 71, "imageUrl": "CEsBzQ16oIuhILjk", "smallImageUrl": "lkdScXIaqVHRdPFO", "width": 69}], "localizations": {"jlYg7THqiPpJv7Or": {"description": "rfNLHgcCfA3dxy4L", "title": "y0sJCFCxPDWqZR71"}, "a9sMbEYXzm7bb9k6": {"description": "W4ywcXPVYNznzIGM", "title": "u1Ybrl5GrYXnBBE9"}, "4JKZquHqZSaQsPfa": {"description": "yxEoEsTMb7I5wBLh", "title": "BemvI85DjoylmGJj"}}, "passItemId": "YQdFEeeHoSdN56tL"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'iidEeT0qSrwROIi8' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DGYro6KZqVUqMwcp' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'mQNGX1t4RBlEGkNE' \
    --namespace $AB_NAMESPACE \
    --seasonId 'fmBaUXyHuaC3HLQ5' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'kJscdU2RSYtQDB3c' \
    --namespace $AB_NAMESPACE \
    --seasonId '6xpEDDQKslkIpXeN' \
    --body '{"autoEnroll": true, "displayOrder": 4, "images": [{"as": "rXLFsHYcHxF8AoH4", "caption": "TfDj7Jjd8Tt9mJVK", "height": 17, "imageUrl": "ch6EcNRPpTSEcrRN", "smallImageUrl": "jbMOKtR3dTGu7jbV", "width": 86}, {"as": "mMoeJOIsjLTFNwaI", "caption": "1lND4jqq3RvVrpka", "height": 19, "imageUrl": "tOFv1A8UGxf2pORK", "smallImageUrl": "RTO6vIlNhydhOPRE", "width": 86}, {"as": "B6yZp9npV1NuVveH", "caption": "naYkvdJjpMs1VSpu", "height": 17, "imageUrl": "N7xxsnoWFKfdsYG5", "smallImageUrl": "lZvY5EvLYgRpEsYg", "width": 13}], "localizations": {"dXILg4CjRvRJtFbU": {"description": "GIL4Uv36nkTcR8dH", "title": "QyVlOfwCXT6X0tDq"}, "RUwO5XIgLsamQZGn": {"description": "TXCbvRo7eM41bJZb", "title": "POpvUmfeeWXB9mC4"}, "r2L77d0leTHAsq69": {"description": "2XHTFzx9SmoBRLAV", "title": "jlEc9T8tx2jEBqPK"}}, "passItemId": "zQdZKcmx1akvmQnw"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5oJQ3KKkFreOWYja' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4KoDJMgEMx0MqHyd' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '69VmsqSRRFSkgrzL' \
    --q 'ioTD8oezB4RWjeJe' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'AUDl47TDfJEf91xm' \
    --body '{"code": "mfF0i43THEnQnE8x", "currency": {"currencyCode": "UJoS41vZIWNON97x", "namespace": "Z0iHsGTgGPFG8YUb"}, "image": {"as": "gIqj3EKCaTofh2Uk", "caption": "VAV0tayeu4n80ot1", "height": 55, "imageUrl": "Yc16JzQVHbzbz9nH", "smallImageUrl": "9nAkP8r4FUo4bzhs", "width": 3}, "itemId": "T6oX2giJUwuREdnT", "quantity": 81, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'EvLD2poSdKMtVn0T' \
    --namespace $AB_NAMESPACE \
    --seasonId 'flmm0u6re97Md6v1' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'K7ngCVe8j3JAkDKA' \
    --namespace $AB_NAMESPACE \
    --seasonId 'CGJPkRAGPrXG4gOT' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code '9mpUV1tNwWElriDG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ez2lrAeCuLnsqwY7' \
    --body '{"currency": {"currencyCode": "peuoMOjAjmrFCihy", "namespace": "eqb7sTYaNtccuuko"}, "image": {"as": "0H5f6zxVI1Ycca5r", "caption": "9ebjLtqUrv50lKK5", "height": 29, "imageUrl": "0T9R9c5niapIOiGo", "smallImageUrl": "IHGCVkafdwM8R7TP", "width": 35}, "itemId": "tOmHvqs7F9KMREx3", "nullFields": ["TyHoYvUw7p51lu8z", "BbnKD7pwiqdoWLXh", "NnbpnCSwZhhabKuw"], "quantity": 90, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'EBZ03tTTYLMLeGzO' \
    --limit '76' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'RzyRxmnB8QjoDk8l' \
    --body '{"index": 54, "quantity": 14, "tier": {"requiredExp": 92, "rewards": {"R1pXVawTAdotkSW0": ["0GQveWk8BBrDniak", "SCqaFuiBU1676i5d", "XTvPZ83BSOjDwlHP"], "spwhDS6jBxtsaU6M": ["w9IPKze4vpjp3U9p", "NmMeN6MAHoDmwerR", "OIRACLjvOLJKoZn1"], "FuWLu8TVY7S4UtbA": ["HOMrFE1Z3fGlTnW2", "HKpKrVHBoQcq0Jby", "usQtJODKDl4RLgpL"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'lIrKqTT7HAj9nCaW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'asew0KPm1NoIJrXN' \
    --body '{"requiredExp": 43, "rewards": {"lY3GIRHBKmkbfk11": ["9gWlqwscjbF6n6ga", "Oy0ReRIIrQIIxsLR", "Qi44ibXRWc7UXGIl"], "XwyP3e75mz9RlFPv": ["aD4wZyubrttUI2mK", "pHvYo4Ck86DAOC08", "RVegTGDAde32QwVS"], "Hs6hn5jzBZGo84qU": ["Li5z8m3vLwKAaddm", "hL9yqEx4oFZcZjWc", "3PWFiH696rl0XK07"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'CyngOShlmzl7ulB4' \
    --namespace $AB_NAMESPACE \
    --seasonId '9f8PA9KXjlOI2v7a' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'N729mNk8wL90JkAt' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rbYuN6XXSxQwXrpN' \
    --body '{"newIndex": 59}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1WEhAnVSeJAjjXfH' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'PMiormKbq7IOw88p' \
    --limit '73' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'n8693PDNIX7uxJTG' \
    --body '{"exp": 86, "source": "PAID_FOR", "tags": ["MPdpUEISTThtCoju", "NAVjbvCUvEL4hU1X", "Ch6oZw54XrspXqUS"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '2OkKM0S3mRjkCHYS' \
    --body '{"passCode": "DWtZWQakqJebJ9gg", "passItemId": "vntyD0RF3lifHKyo"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'oLw3aqQ6WuUaQxGd' \
    --passCodes '["95CLRew98vCTQbFx", "wvJJYTVMXxhw0O3t", "fVHLbHPwTevJflRq"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'IN0rBsun6CEydUIQ' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'mCuRBzOfZIwRc9zV' \
    --body '{"passItemId": "yjlMWWcw8HAXpqTk", "tierItemCount": 14, "tierItemId": "5AeMB12KYZJVga3q"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'yjXofGH6DX78zMlu' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'GrFnMcJeuBK3GC3d' \
    --body '{"count": 25, "source": "SWEAT", "tags": ["pPrjSose5hUh69fl", "hUHGT6eImCydBruV", "gTYAl58exDtVXBZy"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Tti7diBUTuU3QyPw' \
    --from '8NtqqzBUGoiiFFrr' \
    --limit '87' \
    --offset '24' \
    --seasonId 'rwK8Z6Ld0L7Jxycj' \
    --source 'SWEAT' \
    --tags '["pB1NZx3BHS6lW0XU", "SfLW6dWizHmvP1i6", "kkt96Z8qRAqU3EEM"]' \
    --to '3deBPssC2AwFcuP8' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'RMwtaTPzGsdm0HMe' \
    --seasonId 'JiFF9BKc50zcYs3h' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GVSFyeXlXDkAcUof' \
    --userId 'nhhW7yMmxza7BAnM' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'D6prKAqhTJHd9UFu' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'onvTAqNXWvgtR2f5' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'fkew7QZ5yidRuiRG' \
    --body '{"passCode": "8IaKylI486s1PhFt", "rewardCode": "1DPxL1mumexrAcm4", "tierIndex": 69}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ZPZvlpQdrcMKvqzW' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'zq32Kf19B0AaiSWK' \
    --userId 'Z9rOcl4UTI69O3Fl' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE