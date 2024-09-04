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
    --limit '46' \
    --offset '66' \
    --status '["RETIRED", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "0YYdwzImapaKC0GP", "defaultRequiredExp": 33, "draftStoreId": "8bWxs59lBSPxgX0H", "end": "1987-06-01T00:00:00Z", "excessStrategy": {"currency": "ZHwNudApa1ErfaU2", "method": "CURRENCY", "percentPerExp": 64}, "images": [{"as": "LlcSwQgzxBF87H87", "caption": "nqmWIzTwDl772OE3", "height": 17, "imageUrl": "pZVXEZI2J1qqOYKt", "smallImageUrl": "Pkxz5OKp0hUI3x1S", "width": 18}, {"as": "F4z5WDrojMItVoja", "caption": "siYFBY3Vt2By17OM", "height": 55, "imageUrl": "KLge0SHJioOJZ0Uh", "smallImageUrl": "zr66nxtKAiES0D8c", "width": 60}, {"as": "aSjNiIrRhUiO7vC6", "caption": "RGCfCtn0EIjjJE24", "height": 14, "imageUrl": "nPhM7bv1Pfgl6489", "smallImageUrl": "5vjPNzdQcQc1Kwob", "width": 55}], "localizations": {"Ts7zD6y6iOKcfglP": {"description": "rDQekU4EgwJA6XPR", "title": "4YlY6ihCaNPB4IDk"}, "htI5CwyOIkvEf6kO": {"description": "dDWGnUDUoTBCKOC9", "title": "JTkCfELWaVh2tUjE"}, "4nQnMi8yaVI0QXCB": {"description": "9tKfDUAp4wEHLERz", "title": "QZgsCXKftU9n1BCr"}}, "name": "KpOuVlEJF8lwL2mS", "start": "1994-10-16T00:00:00Z", "tierItemId": "vGcKcmD0NXA3xUU6"}' \
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
    --body '{"userIds": ["Bv62zxRhYQ0n1a2V", "GXa47u7qNdvZPDMf", "hKJ6idXp4wQyHzoH"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '17zJW1FLHmMt3hgz' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'eRqTakdbgixiaezB' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1vfL0atlD0SERb6S' \
    --body '{"autoClaim": false, "defaultLanguage": "E4T1ZQjVF4bz7kGR", "defaultRequiredExp": 78, "draftStoreId": "kts6XK9VZJSk9fOw", "end": "1976-09-24T00:00:00Z", "excessStrategy": {"currency": "hPRr8puMyRAq2NXN", "method": "NONE", "percentPerExp": 58}, "images": [{"as": "go1GuMpblyuJpwcE", "caption": "FVL8UlUMf4F8Wa0q", "height": 21, "imageUrl": "4voGtwOh1NyViXQs", "smallImageUrl": "StQGVf1KrD9vYj6r", "width": 86}, {"as": "BqObgE75EI1dyabm", "caption": "hBhq8Y8A87h2Kzqv", "height": 54, "imageUrl": "WLyJWEJru8mqgTA5", "smallImageUrl": "8xozWDvLWR2r1f56", "width": 23}, {"as": "Eb0E4IDXDrvZYdhD", "caption": "ZHmlEEZwpimxxmuT", "height": 82, "imageUrl": "JsM4fVpQqGFmXxpl", "smallImageUrl": "VhUxikRVp7HbntHY", "width": 77}], "localizations": {"MgQflrsRmGf1lfwm": {"description": "xhM8BuAiYPuYMNEY", "title": "pH2sn10EI2yiVC4G"}, "x0ybs9je2izN6pTy": {"description": "9YKlS6PJfceJmzgu", "title": "Yx4OKf3ckBQLxKvT"}, "oYcFkHYdXYGPN9nw": {"description": "7iBdCRvV6cVzHA6L", "title": "mmNvFEjvn7Nx994b"}}, "name": "LcGucY6LeCCYVXmw", "start": "1976-12-01T00:00:00Z", "tierItemId": "HFf3ByRhR8wUURoL"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'SfqDVmCCDi9ltFLZ' \
    --body '{"end": "1971-05-30T00:00:00Z", "name": "aIHnX4e7O38IRRDY", "start": "1998-12-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AhjcWHSDwJTG4utg' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'AgtxWOHOLKxaF7nt' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'zEucq4opVMyvRpWt' \
    --body '{"autoEnroll": false, "code": "BpyuM2WLzHdVsxCf", "displayOrder": 46, "images": [{"as": "Wvojddwxo731MfIW", "caption": "sn3Q0izQzJJqcqm8", "height": 45, "imageUrl": "jOFAGwFrq7MlSdYm", "smallImageUrl": "y03gAgJMst3rjvXe", "width": 51}, {"as": "WyI2bFyBWKy2IeAH", "caption": "4x384KugaKsuIObu", "height": 64, "imageUrl": "mTVaWGbd58BnN9NK", "smallImageUrl": "zH3czXkZqC3C5JW0", "width": 62}, {"as": "nqrTNup6Ne8WUKU5", "caption": "NeMM2UpiocLvLdqC", "height": 66, "imageUrl": "sksY8e17sdSWNN1t", "smallImageUrl": "ihrrlMq5plyYh0Iy", "width": 43}], "localizations": {"GQXDxJLKBFssjELL": {"description": "FWDDGdZqOIwWhZBx", "title": "FKGjnV9wkrsan3hM"}, "xkjOSDFo3mC394Sf": {"description": "ekDZWQmQxU87InVw", "title": "nDvAAEwo72xWyAQQ"}, "COrcr38FtNBfz139": {"description": "tAOIMZgpqn1gkZrp", "title": "p9wqyfjWRj0KSkgN"}}, "passItemId": "eIsxmJoe2gKSTbXP"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 't0SgD37X6CbakFxH' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ix76q9T2OLtCTkOk' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '35rftt4ETNJqUHTo' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ie1WfOE0CA7LDFur' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '14PUpY61AHRhINSk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'tkuUzbJEHI8hJqBz' \
    --body '{"autoEnroll": true, "displayOrder": 75, "images": [{"as": "nd9KeMCOU9oBquFq", "caption": "8qpBeZ9YRtd8S1i1", "height": 91, "imageUrl": "88O6u4H5EPGLdphL", "smallImageUrl": "xyF0XX01HQb5nuWf", "width": 56}, {"as": "yas9MQf2sT2MUFa5", "caption": "Strhni0DV5jNhuWC", "height": 86, "imageUrl": "6aqAdKjcXeemZJ6a", "smallImageUrl": "6KwyTg1cefALdJii", "width": 8}, {"as": "RxF3YFFnmAkOKUJA", "caption": "MweDukCL1TSINKaQ", "height": 76, "imageUrl": "cX5T8F4iafuO2yU0", "smallImageUrl": "MXSxMZospauLCpnE", "width": 73}], "localizations": {"jaPNYMlKLrcBNXnZ": {"description": "mo4U4qvMF0kHwhPt", "title": "S83QwgYNSme5wnTU"}, "0UqWCPM1o2mJYhyf": {"description": "XuYTTz8x1XpdvSM9", "title": "ysk0iOGlhou83X8P"}, "BS0vvOT5ArFWqU9v": {"description": "Hpyg1ZXYWbSBQTAx", "title": "WEfrSZn1PiAxy6CT"}}, "passItemId": "JdNDhVs3NLifUHwQ"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IBpkPsfYJ1HthklQ' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'J0DiT0aMqKDGuCQh' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '4Tv9xyZgYxPaqFUs' \
    --q 'QhDUqPm3zdisEYrB' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'Kj83gzXEoz9vBMCO' \
    --body '{"code": "EmkMSs07LK8bDnMn", "currency": {"currencyCode": "lKfHXX6NHfmBpKK0", "namespace": "PQjUbAZ0SxYqaS7f"}, "image": {"as": "OboYpkryBrb5RqnI", "caption": "xzeg95kY4zSTiATv", "height": 44, "imageUrl": "n8eSNAUeiMqoAFgF", "smallImageUrl": "suLzT0U69Ztf0VP0", "width": 46}, "itemId": "R86w9OZyy2OLdfib", "quantity": 78, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'n0b1HYSuo33OVppN' \
    --namespace $AB_NAMESPACE \
    --seasonId 'A2uaaid4gSecwmas' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'ESLZcuvCjkbO1yCL' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SYKTQCmvIooZus2E' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code '5dS2A8Nq6vpW2h4k' \
    --namespace $AB_NAMESPACE \
    --seasonId '8mkUkXj2hjZCwhBL' \
    --body '{"currency": {"currencyCode": "nHwKvOstyLmFirFL", "namespace": "SV3iusV8yJWVzLLW"}, "image": {"as": "0oXUhthsJSqs1ZEt", "caption": "6gSm0Yk7CZFMBBaM", "height": 24, "imageUrl": "M5MCXZYamQnO6hyt", "smallImageUrl": "Fy6TivxWFa96grPB", "width": 22}, "itemId": "6jVwLr4VFqxBvpRX", "nullFields": ["s4yG5cwJ3OR8hDh7", "wrClT8ERXmNgYxpF", "tFNCWElbLg8zvSsY"], "quantity": 72, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'gms0lUJnwC65Os65' \
    --limit '16' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'dLtQzIbBYYrDGVzE' \
    --body '{"index": 66, "quantity": 83, "tier": {"requiredExp": 25, "rewards": {"Um4C6llCoSGZPUeM": ["f4adltVr2zU1x8lW", "SzHqIVRj6gUmiM5N", "vDhOmTuMKbC2Vg3X"], "aCJANWmbjhiICJMK": ["yaaceK6whCsEreuG", "DvfoAZXa0AdJsQkl", "qvnVNCKxvFTbrGfV"], "PKELPPi4kiEICrQD": ["z3FKvEFC1hCaGEbD", "EvLpHUl5yE9GfDRi", "WsL5Jux7fTeFLVsq"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'xz6krc6upMG3zHRw' \
    --namespace $AB_NAMESPACE \
    --seasonId 'd5eyygSEZqoCPFrI' \
    --body '{"requiredExp": 92, "rewards": {"dH5CvGKf1FAgCWPq": ["8tpdUkR2DVMoo0Ss", "2LdxMPxwj5J02RHh", "M9iCJO5kWBaOVSIQ"], "DafIJZLrCir0WRJF": ["xBE6eBfW3BOjfGW5", "HSXiK7gWbeqFgOs8", "jmqEY3ZzlkUVX0Tu"], "M3vsgDDE2KVBR6uX": ["sp1Ab0jT3YcH6O8M", "37c3P2XJPBjyLFFx", "SCcpqcMb65WmaIK2"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '2QByAwAm4XXawvp4' \
    --namespace $AB_NAMESPACE \
    --seasonId 'O8Zh9c4kqGsOwMcc' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'oefsjmA9NTTPRcWU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SbjhBWc7cHoKXPjK' \
    --body '{"newIndex": 62}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '3p74kRdWzmXei6BF' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId '9FFYcmcfmMeO8Vt7' \
    --limit '55' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'fALIHziQDtQE2s53' \
    --body '{"exp": 33, "source": "PAID_FOR", "tags": ["Dj4MtM6PfhsYbJZP", "C8RRcLJyHESG657P", "CjX5RzhTpVigsze5"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'pR0DsLDeRYQ5KUmx' \
    --body '{"passCode": "qrtcBn3LkvKCTIW7", "passItemId": "JTLeVqoBkYVF9C43"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'HtRfEKc1QvMnc7F6' \
    --passCodes '["bzX1ffSAZQV9UwHm", "P5CiE68zF3tNVlN5", "Qv73ROJC19eKgbQY"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'UhNjIL06d937hHD4' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '0uSvT5HY2nlSbEgy' \
    --body '{"passItemId": "FfiHgRiCaEVMUreQ", "tierItemCount": 89, "tierItemId": "SyZoMsoDma85TkZ3"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'PDZDQkxj0jfWLuBN' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'T9R1WB4ozKBcylk2' \
    --body '{"count": 80, "source": "PAID_FOR", "tags": ["feJmg1cFxjtFR4rt", "8qXSI00QttHmbgh5", "EauUsVj1ZJdivjDe"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'eKWLqL4Nn2DowJhQ' \
    --from 'q8L4sZGgfmE6fZ8X' \
    --limit '56' \
    --offset '91' \
    --seasonId 'xoUUuqCxvK6ziy8j' \
    --source 'PAID_FOR' \
    --tags '["htCjxFFajViAsolI", "37E2Ua6aLMpjwu2P", "oQ80UQVsiqh0GuWe"]' \
    --to 'xigMHJlYLfr2HrEi' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'D2p7QqR8RqaxO94D' \
    --seasonId 'XIocSL2AKyvI1vAh' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '45EYpA8RVIvnu0gl' \
    --userId '5zSvusW1HzWBQb56' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'Gm3qfV6X5ggYgEAk' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'aJB23EhTU9mtnMN7' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '2FSPaNMtXsQ8UOoK' \
    --body '{"passCode": "OHfNxhsofU7gdptF", "rewardCode": "qBxpp6HWyFmabOYL", "tierIndex": 42}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'InChB6ULFfH3oSV2' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'R3pk3saTWVryIyOy' \
    --userId 'Yj8Ez6Y8x8UKAhFq' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE