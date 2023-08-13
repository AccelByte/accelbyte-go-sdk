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
    --limit '89' \
    --offset '60' \
    --status '["RETIRED", "RETIRED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "3Z2bisyfbdjN2pM3", "defaultRequiredExp": 51, "draftStoreId": "0hwasTihXJBZ0OGy", "end": "1979-01-06T00:00:00Z", "excessStrategy": {"currency": "0I5kjsrh8LdKRRVm", "method": "CURRENCY", "percentPerExp": 50}, "images": [{"as": "XC7B59jQmGuc5Wsb", "caption": "kTczWtvR9ZMKqczd", "height": 46, "imageUrl": "H9OwvN2Nz0Y0pEAV", "smallImageUrl": "6jxXbdr9WdGiBDMJ", "width": 10}, {"as": "tQh9kAXNzaSb7Uyb", "caption": "chdVWuwyHn8kvnG3", "height": 93, "imageUrl": "rmvphA60V1DAvf3b", "smallImageUrl": "QaBD9U6hkRIqpJau", "width": 50}, {"as": "QY16E5DbGRrcjMtf", "caption": "rAVXJuNMN9lvwIiH", "height": 56, "imageUrl": "VwhwgSeJk2rdaEtS", "smallImageUrl": "5CYiUdajaPSwY5kw", "width": 46}], "localizations": {"9NTnGWxQ05UXk5lZ": {"description": "XTg171yeUe8lRNJB", "title": "4T2Wyss0Wrx81teu"}, "oYXyzCHubqpepxXp": {"description": "IulpLUIOdDZhkzUX", "title": "atp0H8ftr7JI7KhZ"}, "MjEdfx2t664CwPuS": {"description": "Js5w72lrkFPUTrP8", "title": "eM3GctRTq8eIOQTm"}}, "name": "LO2zmiDiYlYK66UT", "start": "1992-07-16T00:00:00Z", "tierItemId": "v17x7VfQScNKYyws"}' \
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
    --body '{"userIds": ["SjBVaQ1eCaUSRC4Q", "XnHA7G0zMsaHblz7", "4B5Q6xLrR0BjCCJx"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rfeF3KbB04EHG0PV' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NBP5zYnKcrgUefvz' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6Eg8YQis3b2uo4GQ' \
    --body '{"autoClaim": false, "defaultLanguage": "sjPaZ3drp0PDnITq", "defaultRequiredExp": 89, "draftStoreId": "g5N4liLErJNAcM9Z", "end": "1979-06-10T00:00:00Z", "excessStrategy": {"currency": "oXb8JwLqbwR4Tru9", "method": "NONE", "percentPerExp": 50}, "images": [{"as": "gVVXJJleQox76m0K", "caption": "hL3fFOPEbClV0nRw", "height": 57, "imageUrl": "OYJOnvetwZoQhpEa", "smallImageUrl": "PYY4q1VwI0yBxsbt", "width": 31}, {"as": "uySjsq8bPFzkPCRE", "caption": "xGIL2I4s5mRdobeP", "height": 52, "imageUrl": "RvnwqGFpRDhYitZQ", "smallImageUrl": "Fr8ALRCEbfPBV9ly", "width": 17}, {"as": "yV4RipXUjr7w1okZ", "caption": "Oo1VJklEtTlPyGu1", "height": 21, "imageUrl": "681asIrE1jJkFPbE", "smallImageUrl": "YKPZccT564Yen1Xd", "width": 30}], "localizations": {"D6svEjHsHDxsXZBw": {"description": "ebTNB4hl4CACl8s2", "title": "wt8DOwQgXbiQdwWZ"}, "ZQqcUJsyac1dx41I": {"description": "qANxGYfNbGC7UHZo", "title": "atqT7OPElJ78lU4s"}, "023WbzSly5vgo8kQ": {"description": "D9beDsioUnfhuDfj", "title": "O7fG72ef88Vcf7Te"}}, "name": "xeOBIWFhLBkhrer8", "start": "1975-03-07T00:00:00Z", "tierItemId": "wkbGQ373aBuzVvIS"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'U0MQlIr7GeuUV4Ux' \
    --body '{"end": "1974-02-01T00:00:00Z", "name": "QUgTfrR4ZDGrKAXJ", "start": "1975-07-05T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'm0uPh2RimEKizgrz' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'CfBUqiRJgzoQS9sm' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'M79W3noOjtHuznRn' \
    --body '{"autoEnroll": true, "code": "5kD7p0KAHEokQ8WI", "displayOrder": 38, "images": [{"as": "BhMLDFvtwDhNJUdH", "caption": "MqqQceIiykibkH6B", "height": 64, "imageUrl": "VXhRdXu732c8a9rz", "smallImageUrl": "mvS5LUTNUjmZdCnc", "width": 66}, {"as": "uB1s1uEVH651iVFE", "caption": "BxX3suoIFoftLLe3", "height": 52, "imageUrl": "7fDKNMdlowh5Bjrw", "smallImageUrl": "2SXXfOfadT6Z5Lk0", "width": 62}, {"as": "ygZejpkK9FELKgtX", "caption": "gNjsOgwHtvJepr8h", "height": 97, "imageUrl": "7JVQKy17rs1gqxdO", "smallImageUrl": "HR8BujcZVkNzJuy7", "width": 95}], "localizations": {"g63wsXzf6G5073cw": {"description": "5M4uqQaDIQ9ICZld", "title": "PGvYKVI6SCeIQSVd"}, "yuA9bmF5HAEq8OhO": {"description": "u8Km93ByWXK8QcPq", "title": "lyBwfcbmCeR9ouYn"}, "KGq2QoqhCEgKMpXP": {"description": "MimMmXA4d31PALIx", "title": "vUVNta8hSaG7HO3k"}}, "passItemId": "kKIjS7rpadLa4c6k"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'vgbMJEgKe2vJ3GEi' \
    --namespace $AB_NAMESPACE \
    --seasonId 'voPKZwJHO2A0Dpqr' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 't7JOurzzgEF6cu7j' \
    --namespace $AB_NAMESPACE \
    --seasonId 'anFFhykFQOhVnDyL' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'Lg65pz8ok2qpmicc' \
    --namespace $AB_NAMESPACE \
    --seasonId 'BN6lyg90VH8UPE6Z' \
    --body '{"autoEnroll": true, "displayOrder": 8, "images": [{"as": "sBzjiFncA0daEtJR", "caption": "f4ShYcPdD41NE8au", "height": 66, "imageUrl": "QMI3qQpg4pFDizsN", "smallImageUrl": "cdHzuNEx6Sj91p9g", "width": 100}, {"as": "bUkY6nlglpyXc5YJ", "caption": "tABmrTIl3cRniSy7", "height": 100, "imageUrl": "qRaNtSIPKoDAyTEx", "smallImageUrl": "q0deMdH4hSAPt70L", "width": 33}, {"as": "AHiCNGSP2iPxji9u", "caption": "G76hyTu7IDmUW9LT", "height": 64, "imageUrl": "bGel7ZWC8vqZlISN", "smallImageUrl": "7iJYkaMtJI6APE0y", "width": 57}], "localizations": {"VAzrAmbcmKO4iEhQ": {"description": "zdkVrENQgeTZ6I8S", "title": "9Kfjxk3qu6o9z6uV"}, "OjAWcYlPg6pBux6w": {"description": "ORtkqAvhJjUJGrs2", "title": "vC3KIcX7EdcVqJCt"}, "Er60jlcUeFRqnoYP": {"description": "zy5Y1J2Grdr8NF8G", "title": "Xzd0TH9SwYq6pH0p"}}, "passItemId": "YVT0SuAhYeC8U2b6"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0uofWF4MvaLfRFk1' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JjsdLIhygpLEHf7v' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'FuP74wlNhj34dumb' \
    --q '8qFjivToUx9nnb6p' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '0NK4lhNzhvlQ6SFB' \
    --body '{"code": "18QllT1AKQcCY5d9", "currency": {"currencyCode": "6yMSGUFgx3xPqPyU", "namespace": "vlHlusAvqqPHkrOr"}, "image": {"as": "jinLeBQvoweyMay0", "caption": "PtYfokJw61R0T7Lj", "height": 75, "imageUrl": "RtNvF07VqyxkGjyF", "smallImageUrl": "SQPQYuvVR7vbzMZL", "width": 34}, "itemId": "ehVREqd22kdlXEtE", "quantity": 40, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'pLeHdeHVZViZfvze' \
    --namespace $AB_NAMESPACE \
    --seasonId 'eufZ7YUmMLcY0m3f' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '124JUVFSwAuWXlHY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'VHTgLqDS5a1vJMjd' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'C41bZTINOcCr1vai' \
    --namespace $AB_NAMESPACE \
    --seasonId '7NQWXyNMjVxiS9Ta' \
    --body '{"currency": {"currencyCode": "AS0p1AsaqRLI17lp", "namespace": "FA4irdkvpVigNZ3L"}, "image": {"as": "r7yj34ysdhK9trgy", "caption": "eSnqGihEHqTqosGf", "height": 44, "imageUrl": "NaDKTWCyOyLKkp6u", "smallImageUrl": "nBATYg5KLtA3BKK8", "width": 0}, "itemId": "PjbpwUDCMfBz10Hg", "nullFields": ["YWQaUN44xdo4gpSD", "2qUnx3tABBE1hEdw", "7ighyGHLhdJngA2n"], "quantity": 83, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'rUG0m6rFjrJyejPo' \
    --limit '93' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'NgKGm0JQtNTJP88b' \
    --body '{"index": 77, "quantity": 41, "tier": {"requiredExp": 84, "rewards": {"TmNhJVJG8cCg1fSk": ["lHyAVTpLWouYGs8M", "zgJUyQJFcxDK50NP", "ITKtqocKTAeFpPkr"], "M9as3CCAeRhtPntV": ["KMbVafWihWxaTl19", "RtOm1HR0hflbfhiT", "TXL1HIKSfysTNYzq"], "l98TMOgVQa3FS6P6": ["x5ZjqfDb2UaY07Vi", "Cccrazw565JoZ5SC", "33FARwi2lBTDhYXi"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'W8b0NDLciLbpNTiM' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XFxGaKZFsr8okAUe' \
    --body '{"requiredExp": 32, "rewards": {"yKihEwzGVXMoEMyp": ["KNPHlw2gpWptxT2v", "Sfexd4YUAaoeZYZE", "U25PGiHcKWh5aMPg"], "UjMZ9XFXZ0vVt235": ["t3fqw2Ovh4sEReYA", "U13r3gdWgxWcCUSD", "vOBw5AhorxBgtpxR"], "31mz7ad0mDD76UCQ": ["BI7nM5Hp8QpKW5zB", "7XuBie9cfoAACKwq", "j9ERc920ffqz475p"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'GU0QpJggLdaDJOoZ' \
    --namespace $AB_NAMESPACE \
    --seasonId '8sH04c7qMgTY28Zu' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'H1Tzhrm78pDe1z4a' \
    --namespace $AB_NAMESPACE \
    --seasonId '9kQci3P4eiEeJQWo' \
    --body '{"newIndex": 38}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Gt2Y1m4FGdOHxdvM' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'i3VSoB0Ovrdqwn2o' \
    --limit '19' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'UKvWbF6KFdVgVr3T' \
    --body '{"exp": 51, "source": "PAID_FOR", "tags": ["F8fQ9s9IYmvkgGYq", "43Qvr1IzdiIgpmd9", "emEF1UznGze1cFQO"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'U07NSOtm05prTZGM' \
    --body '{"passCode": "QlEdF9sUglezgDbz", "passItemId": "oQVqfn0XFPc1ZWNt"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'u0H4WEWVavcYf9iD' \
    --passCodes '["UHZ8Nk8T3swhzZxm", "vsyNJX26x7SqvltW", "Q1nuaMSIiNNRW4lw"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'CqqapVR9gwn5hDOt' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'Zno91kLHUlYaQkBZ' \
    --body '{"passItemId": "56bGTPWqDIFOEMxP", "tierItemCount": 71, "tierItemId": "uSboRoIwrwzOQwXt"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'lNup1nB5mt5SumR1' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'NjDF6LJ9d7HH5tFQ' \
    --body '{"count": 23, "source": "SWEAT", "tags": ["EJvMHfQqJCTbo8FZ", "SmaiVe8aIbbiVTAh", "qhVkrdGCp6lG2PYs"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'w6dWtosAjenORqE8' \
    --from 'PYObnrY9B1VyhXUJ' \
    --limit '29' \
    --offset '62' \
    --seasonId '4vn8AkiNoAPLasx6' \
    --source 'SWEAT' \
    --tags '["O4EQC2rxPT2YYfcY", "DqJKS0ZYA4JLQLpO", "Of7cgKd83FQZmTgJ"]' \
    --to 'hJMJwWnNFbVm5tfA' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '9ZLUgvgtTHtzWfFR' \
    --seasonId '63kYkVe91unlvsDA' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1SMfPNyLgiBm7FNA' \
    --userId 'ugMFYfPRrhjFJUVB' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'hoUXMFjaAirru4Qg' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'JfsIjLG3A5lsT4gL' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '6SUZWkbhrOaZzKCM' \
    --body '{"passCode": "zfyJqaG3Dq3tJqiF", "rewardCode": "UWYwF1GYnBsyIyhd", "tierIndex": 13}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'POXKMS4nMX0dc2qX' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pxiR5L7xwEDtvGXu' \
    --userId 'lCEcgiZPCiTBboWS' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE