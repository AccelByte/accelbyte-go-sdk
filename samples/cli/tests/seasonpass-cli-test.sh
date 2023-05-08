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
    --limit '57' \
    --offset '40' \
    --status '["DRAFT", "DRAFT", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "LBoTAjrF9eR1rfUT", "defaultRequiredExp": 87, "draftStoreId": "SG1Fwn041E8rMgU5", "end": "1990-04-17T00:00:00Z", "excessStrategy": {"currency": "qdHYMI5GTgavLxZ1", "method": "CURRENCY", "percentPerExp": 37}, "images": [{"as": "rGCDd6cRooBoxRhC", "caption": "la4eUHmAGlkfkSld", "height": 36, "imageUrl": "m4Y2GCS4hJrxOP4k", "smallImageUrl": "yU7yDCfR1RSG7Irp", "width": 46}, {"as": "FpdBwR06kTCFAnci", "caption": "yetqa0FoZlrLHnqx", "height": 35, "imageUrl": "rvuFMR7XZgVR9xqo", "smallImageUrl": "wtMdlQsCGhzEEZs7", "width": 46}, {"as": "WnqHeKlEPRG61SN2", "caption": "WT5lUAQfKEeVlf4L", "height": 91, "imageUrl": "kDCmCXhXu5o7VtwN", "smallImageUrl": "DudMqXJ3RNeVAwhC", "width": 29}], "localizations": {"bzVzdbXrdoW8O72c": {"description": "AwJkcg5YnUZJHLUw", "title": "gycgraeuvZi1Cn2y"}, "FWFfmCaeqACwz0XZ": {"description": "tx6y1UX7M1E0ntu3", "title": "oAxS66vbl8bPh8uc"}, "FLDCcV6Va2gysqsA": {"description": "1r4WNolUh5TfO07z", "title": "lUEdGFnBDAKmMXJB"}}, "name": "83OVup8DJUMsnGQa", "start": "1981-10-30T00:00:00Z", "tierItemId": "gZVksoq0MMMAHI0v"}' \
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
    --body '{"userIds": ["YRvVq7QHZhjY16as", "Mqn0VTjb2JkMKp6i", "dToOVExMpbgUHP4i"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jOCZnO5N5ZOIOi8f' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QLaMUdhmoqjZHC8S' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 't9IVorOsNWPtr6SW' \
    --body '{"autoClaim": true, "defaultLanguage": "rH8cyxMfD5ExlQ5v", "defaultRequiredExp": 24, "draftStoreId": "uxF4oGc4hj99G2s6", "end": "1991-01-17T00:00:00Z", "excessStrategy": {"currency": "CsDzwhO7lyqank65", "method": "NONE", "percentPerExp": 32}, "images": [{"as": "toY57EUg0e6QX36S", "caption": "6nYvSusFXSjtiktX", "height": 54, "imageUrl": "glB9a5DLeU0qjOqe", "smallImageUrl": "e7ThrdeaTmfXev5r", "width": 14}, {"as": "maCk3d9XNb1IhuGR", "caption": "InSkeqbt5aZU1W5f", "height": 85, "imageUrl": "NAvPWpB0w83kCda8", "smallImageUrl": "nqVq40ZAThqBLiPI", "width": 51}, {"as": "eZpxkCVArIdZOVvA", "caption": "D5ddR0TzomTw75Ve", "height": 79, "imageUrl": "kmoBShncmRfqgcwn", "smallImageUrl": "cLdpSzDCrJ5nkJnw", "width": 77}], "localizations": {"YbZNIfrOUhoCD6uJ": {"description": "EXi6TEDbxF6ckLZ7", "title": "UzWhx5TeY6QRsPnZ"}, "2xwcZ8XMYweSGSTH": {"description": "lYVMXNnAOVt9zg6e", "title": "lZsJGJncToABWfjI"}, "6hZXUlsplz4A5Z21": {"description": "55UhVoVjgHTLLO7u", "title": "Am8FySdpU1MzTr1c"}}, "name": "23X8RahOhGIR416v", "start": "1991-08-26T00:00:00Z", "tierItemId": "VyCw8bWyNAfRPMAL"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'q6YGTjXNsN8IRxgf' \
    --body '{"end": "1993-12-09T00:00:00Z", "name": "i6HzYbWCoVCrXx4j", "start": "1988-05-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GSNY6rq2k1n8LNV0' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'kfkUTs8NV6SDHdmt' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'JcIlwOOyaNzMjvcs' \
    --body '{"autoEnroll": true, "code": "cgIiP0SQGOXtqIRt", "displayOrder": 71, "images": [{"as": "rRbxFDTx9QA45zWt", "caption": "wqK8BB010cL1TX8X", "height": 7, "imageUrl": "6mbraB1CkvYrftOX", "smallImageUrl": "6EANdBh759whieas", "width": 83}, {"as": "lLwKtVqUthvaJMNF", "caption": "RVdUVogMVg5H7oTI", "height": 8, "imageUrl": "IAOQ9RbwslVQBZcg", "smallImageUrl": "YrAxGwKDMhoxEg6o", "width": 99}, {"as": "IpwnPZhDxP532IJ1", "caption": "ULUGTFTjk6P97iFa", "height": 3, "imageUrl": "DkKdQqgaavq7Ik60", "smallImageUrl": "LADhwqWZxHxJ3kfy", "width": 10}], "localizations": {"KHrFdajT9jtzGQEG": {"description": "Ig25zPsLGRg5RgcB", "title": "PJqb8kFuziFrSmrh"}, "MVUWXcm1SbdDwaau": {"description": "QmHkV7tygQl2RPN1", "title": "Eywn06GlwLiNI38Y"}, "ltrNQ4kQ83Z71rLo": {"description": "NTkRrG9ICrIaJsgn", "title": "IBqpPMv39ll3ZRuE"}}, "passItemId": "4VEmhsDKaYo2f0Fj"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '0VRJxXNy2X9CshJN' \
    --namespace $AB_NAMESPACE \
    --seasonId 'aMYl13HASUVHlBbW' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'FaMH62gWD3zKA0FG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'qVY73pHeSEFC01qi' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'vwQOHMIS5rCIgPc7' \
    --namespace $AB_NAMESPACE \
    --seasonId 'IZ3sZt4NTdxuUPmJ' \
    --body '{"autoEnroll": false, "displayOrder": 28, "images": [{"as": "Siffc6SD90h7qCIZ", "caption": "2me0rSQk9kj5X4nE", "height": 7, "imageUrl": "9eviKIGO4YKu7L6e", "smallImageUrl": "q9DWYVJA0vPSFp5A", "width": 48}, {"as": "zZvrQ8C3O2giYVDe", "caption": "sN5EgGNNt5R9Sf7H", "height": 30, "imageUrl": "eUguc6xyAEczKVar", "smallImageUrl": "FJv3US8pkpIw3MBV", "width": 40}, {"as": "VzFNrHX00OMMopuy", "caption": "Ix2nMg9rgNftfNdn", "height": 14, "imageUrl": "vaKZfaYGt4A3dGKm", "smallImageUrl": "AvNQq5o8PTUEQrEm", "width": 97}], "localizations": {"YyCfKkUHPaajoOf6": {"description": "ZaGVknuUN8hG0JaH", "title": "DxeIacuLws0PILWW"}, "iXMbGSZ9JfNXPjjS": {"description": "14wbaX9Oq96bOgo3", "title": "KpMECGuNZE6O6OOM"}, "oGmPh8teQU3bNq8R": {"description": "RyOlowNYHJ6lHooi", "title": "hrP9AhpU0o8MpRqD"}}, "passItemId": "UUJ6cII1sBKzph0e"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Jm0aNM40RFHJEVh5' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AjjrDkOkJlmBcc5B' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'k657ukaLZrjnR56U' \
    --q '8Rj76pVdgIr0N9pp' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'giBlqkWZixZ3Am7Y' \
    --body '{"code": "dhkZGBlDa36M2Mu9", "currency": {"currencyCode": "lBY3mDheKnIQJoOn", "namespace": "3cS1ZH6ARrnPmG6D"}, "image": {"as": "rW0di4dtsBDjNqkk", "caption": "TyMAzOZgKb6l4xdg", "height": 27, "imageUrl": "IGwNl4DwVkfOhR7a", "smallImageUrl": "alI7DRfJYdPNQ3cJ", "width": 7}, "itemId": "1RPEpGwqOa0NC9hv", "quantity": 7, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'wHjdoeEAkA0c5IfD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'A9npATzd2YObxfJ5' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'K0XntkaS7zQYWu35' \
    --namespace $AB_NAMESPACE \
    --seasonId 'u7m2n5aeOZgr4vAz' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'jICIwDxTn7tp7anJ' \
    --namespace $AB_NAMESPACE \
    --seasonId '8eUNtsRQYanmM3gI' \
    --body '{"currency": {"currencyCode": "4HjkCjDuCgYKCqTF", "namespace": "DwgEDRQm1NxkCNV4"}, "image": {"as": "dCpYl3Jq1yLOgDOH", "caption": "fI3ewl3YYoO0v2oA", "height": 30, "imageUrl": "rEM5AhHpY41X8ls2", "smallImageUrl": "1H6Hv0VsJFfUyepP", "width": 56}, "itemId": "kDwv0MhYCk12fEbB", "nullFields": ["9VVVLBc8UgBSMPAi", "G5qXCanDqS4IJ0n0", "XB5iiJkkcctmiGWa"], "quantity": 4, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'QhUaNFfpkNq949o7' \
    --limit '21' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'WO8BqZpH3kbqgE8x' \
    --body '{"index": 1, "quantity": 96, "tier": {"requiredExp": 14, "rewards": {"h6f24fM9vIyGota6": ["bDkQZaTo5Z8NuInN", "8WgGMVJqgRjDIDbG", "KAEVcltG0kLvzd0T"], "n1RQx09Bwjec3chZ": ["NYWN00XkUHuTrR9w", "NKl0yhdIGmFoHRNU", "SekP0jjf9tZng1Yb"], "3CegRhwaevLW349W": ["pQ2jmqDJIPnHTrRc", "UnqrqFqFv9ot9OD5", "gQBcDPO2cny8lmSB"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'dVZOLiZyCcfyqTI9' \
    --namespace $AB_NAMESPACE \
    --seasonId 'OK7r9IAFJXTQtyzl' \
    --body '{"requiredExp": 35, "rewards": {"QszOCBLIUE7ljbaS": ["rV1bOBPbSF8VXaNI", "c6m6kpJOqKdOIRUz", "c1fcbkoi11MxKlJt"], "C6rTNrOYH7LODoPv": ["pGDxgoOeiCC3PQqU", "jICF5nwY0faui2Pi", "Y2ymllaz0IqeNksz"], "qfRZh5DutHdFxzJa": ["F0Wy6Yq4BN10TBAv", "PcNepDlx0hKrWrsV", "3RxpalMt2w3q2krM"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'xmefkQLsTpkIy57p' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LxBB9l7yarFaXA2u' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'VoVQ33l28PZLGAUA' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Hew7nYeZSXXoUQI4' \
    --body '{"newIndex": 24}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MusVJTL9ugkNHo4n' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'ANPbPKV2BSjYJ4Gd' \
    --limit '73' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'gVCggIzIskI1ekst' \
    --body '{"exp": 95, "source": "SWEAT", "tags": ["UyDgOrKFgK13pEBZ", "xhlEOspIXVjDmL10", "obm6CEEhWEWk5ibs"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'Zz5VeoaCAMRx5a9E' \
    --body '{"passCode": "k1S8709jbYwJjkQh", "passItemId": "wqCXomwcp1pJ8ECk"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'Y6Gw2TaQFstlClCZ' \
    --passCodes '["giRq3QNcn0A36bDr", "yJqw68HqgsQmcfYs", "fTugyaPUWzEye5v4"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'aMWbAFt02eyRwIss' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'bJbDCvtYhZOtxV8H' \
    --body '{"passItemId": "el3XglLU5WlhPTQp", "tierItemCount": 36, "tierItemId": "zWASmob1LuMKRNcl"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'PFClDjqT00cIlyP6' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'FdraO5lRsrvGpJFy' \
    --body '{"count": 92, "source": "SWEAT", "tags": ["1v3FmRRn9cR5tZcw", "K9MwLeURepn9EDiZ", "jLkuamYQQowh22Zi"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'xk0W36RpWkpPDVif' \
    --from '3XTMpLXp4kirPOff' \
    --limit '28' \
    --offset '54' \
    --seasonId 'ZIe1oAtQ0uk6gzt5' \
    --source 'SWEAT' \
    --tags '["8YVBwQfxrSvJEV5w", "zGLlbdWn2LOa5qhO", "5rThFnrRDtyPytDQ"]' \
    --to 'hRQUmmblggt53Nfn' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'cOvlCPg8ZYIYbWLc' \
    --seasonId '3UzwgQWZIYY0JjEH' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'RbDTE9pin4S2ivXK' \
    --userId 'sgyA6udvB6mGyFrl' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'pEhN0COrjprAFQEm' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '5Igfs3lcCBgr1vdV' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'iVsJW2I3DzRwA0ge' \
    --body '{"passCode": "BDPJzTi4mhY0miZu", "rewardCode": "6G0JWcRAFkj3GpbR", "tierIndex": 44}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'AXnCgpBMYMxcyTMN' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Q0DDOMKrRQM0fvyT' \
    --userId 'TAP926MuLmtQBMSE' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE