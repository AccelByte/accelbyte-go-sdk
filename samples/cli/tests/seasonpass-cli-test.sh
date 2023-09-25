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
    --limit '10' \
    --offset '99' \
    --status '["RETIRED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "y9NLIQHhiuDfEm8e", "defaultRequiredExp": 42, "draftStoreId": "GdlwaFDgyxUdjL8V", "end": "1982-01-06T00:00:00Z", "excessStrategy": {"currency": "1CEXFw51mYI2At4v", "method": "NONE", "percentPerExp": 25}, "images": [{"as": "ToOVh7fR60gsw64S", "caption": "lbvkfxC4TDrLdOmA", "height": 48, "imageUrl": "fcwUo6BdJjJj9D2E", "smallImageUrl": "pFl9M9WJyGlf18pm", "width": 28}, {"as": "IktafEuBodiPdgaF", "caption": "qLH40wiAiwdirWRi", "height": 6, "imageUrl": "DBaz2uYtJzAncPpl", "smallImageUrl": "ALvSvkBCmBpH4lwV", "width": 32}, {"as": "uAk84yIW5e5Z45s0", "caption": "8kNpg7XzQfbWgkjk", "height": 82, "imageUrl": "T73Jj6Il3m8eBH76", "smallImageUrl": "lcGyK9v6MKDcdbCB", "width": 68}], "localizations": {"QNn1sK5WGZWMMyIv": {"description": "WCpajDY6NYlX17zb", "title": "oEeT09Q8f2jqyuK0"}, "2Jd9cYd9g0NbYKDO": {"description": "mvz97ieKAd6dxSaa", "title": "E81XxYCwwhNqvO6B"}, "gEiONZPP0XWf1gbx": {"description": "4mAzhWfBHuwyCnxe", "title": "BLaTbmkZgRTLBhgL"}}, "name": "zOWps8SlZWBUHEi4", "start": "1993-07-27T00:00:00Z", "tierItemId": "hv7BoUY8GFei6anO"}' \
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
    --body '{"userIds": ["8j5QNPjY6OO2fdBR", "cZIRMVny9dvMNpIm", "JMjkfVTbhAhtPlZd"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5Q67QrNHi5k4lXmg' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Qcf44XG6RZM5qjJm' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8PhhPplKN8JiEM10' \
    --body '{"autoClaim": true, "defaultLanguage": "wnQAPndJ4eBtWUix", "defaultRequiredExp": 93, "draftStoreId": "T3CHM1wSOSQZU7GX", "end": "1999-02-21T00:00:00Z", "excessStrategy": {"currency": "vsmjSdVosQW6hCbK", "method": "NONE", "percentPerExp": 31}, "images": [{"as": "xOiTVzfk0EpGoMJj", "caption": "eAoOv0oAKyJ3Jrw9", "height": 73, "imageUrl": "pAybDh9Ku6mpCZhQ", "smallImageUrl": "v02RQh8B9YTDsAsJ", "width": 19}, {"as": "b6LpyjDc9hfBB82B", "caption": "MaE9efJTBim2Dckm", "height": 35, "imageUrl": "LMP8CENkd2dsfl9Z", "smallImageUrl": "DMCw4ynT30VwzpHa", "width": 71}, {"as": "SlNRwwXso4FYlSyf", "caption": "rCTb7rkFJxwLRf5b", "height": 57, "imageUrl": "qL1D5PFS25ZFScMo", "smallImageUrl": "k1EwJk9cjveD7Awi", "width": 87}], "localizations": {"QqR59GnbwqH5Pqfd": {"description": "5DUw81aKBgH7cZtJ", "title": "EbbzvxWcbn1pqoQj"}, "0qKgYDGmGyGh4nB8": {"description": "RXMoCOP7RlNLvg1T", "title": "Zruf2tVLxNoWyxvT"}, "Bb3P3WXgPiTFVwrS": {"description": "nLWYJkCf4smx80oJ", "title": "6RrQTMZ7pxi6GsDR"}}, "name": "tUnvaWm6rdxAZXv0", "start": "1985-03-21T00:00:00Z", "tierItemId": "ZWhzJWgmexiEL3VH"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fin2TTsTrnnBKBBi' \
    --body '{"end": "1984-07-07T00:00:00Z", "name": "HHy00AAFRnbAecWB", "start": "1991-04-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZC7Jo4CHg1jUkXgv' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'm66yZOWjK4hl9cZY' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'vu2CvqliRuwYi1nV' \
    --body '{"autoEnroll": true, "code": "dwSLo2u9KAMZ8LlQ", "displayOrder": 15, "images": [{"as": "eKUEP9YUsEY0o5D4", "caption": "Myt3OFYaE615gQEK", "height": 2, "imageUrl": "jPSL5lF4E2i0fxYs", "smallImageUrl": "2NVZeC2Vv2ErPEkN", "width": 94}, {"as": "W56p2BezFPyDGEVv", "caption": "UdZYC13tnoqxvl8z", "height": 17, "imageUrl": "1G2s8zxk82g3qeO3", "smallImageUrl": "1R27TaUkyZzTCteR", "width": 74}, {"as": "ZN4mxFS1Y2roXoic", "caption": "3zSbIAhm5RiMNCbP", "height": 76, "imageUrl": "G6P5F0amTK33wxbR", "smallImageUrl": "tXGNOAqeloD90LXP", "width": 30}], "localizations": {"0QMSj0lgHip9SY8F": {"description": "Tl9zQabCGt0aqygP", "title": "4IU8UOToWQ1jJPly"}, "RF0CBHev13MUp7iL": {"description": "2ruacVp5pGNGwE4w", "title": "H83Y2nXOQVtlCaBU"}, "Au67m1LjZJpP3mTx": {"description": "MAKZZBCqC0k1X87e", "title": "s2KopjympkvmLXWL"}}, "passItemId": "Op7DySL4QF3pXN6Y"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'tysWRIAqpwxoz9u9' \
    --namespace $AB_NAMESPACE \
    --seasonId 'eUdfV3FTGv3IIUG0' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'YM1Olrz1m513jdb2' \
    --namespace $AB_NAMESPACE \
    --seasonId 'g3iOrhrVeKX8BcwF' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'x98p2BGu3bGPB2EA' \
    --namespace $AB_NAMESPACE \
    --seasonId 'dpVIYmPO4BBFqzYd' \
    --body '{"autoEnroll": true, "displayOrder": 80, "images": [{"as": "bK9vxWcdKR9lLFkM", "caption": "regC9eQc78cQUChv", "height": 86, "imageUrl": "zx3hE5FPdUZAoeUe", "smallImageUrl": "c9rQaaOKVyEIxLiL", "width": 91}, {"as": "vYqYQ4c8S2l99aNf", "caption": "c4ql5Tlq2n3p7l70", "height": 57, "imageUrl": "lvE4S0bW6DAL0NIh", "smallImageUrl": "8FxlXi5YxCfCraId", "width": 23}, {"as": "1LLiQaDPMcXpnquk", "caption": "LiESMZyAWCkNOgCB", "height": 58, "imageUrl": "pLczu2U5klulVsl0", "smallImageUrl": "uzWLp5hXyFSl74eh", "width": 20}], "localizations": {"klStHTBQNV1glyNp": {"description": "moJr5NYV0Xl8iZVv", "title": "r1dExgvOaEhuw2wb"}, "tvGZh0H7SuGr2wvH": {"description": "YuitaDPULG2bOEaF", "title": "QnI71WV75Jz2bQbp"}, "ilV40bYwOxEahCHL": {"description": "gXbzCT1BOX3u7Ufv", "title": "FP74wWlbtsRABecm"}}, "passItemId": "xN4ovYG1p4Dwv1kv"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'REQVJTXfLV4b7B9U' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'T6dCN5X2ZmZ28FLN' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'CWKzI7trAFGSsk7F' \
    --q 'ZyZGLw3vonZzTWGi' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'ioNVMbE4ZsfHa0Gm' \
    --body '{"code": "Do6X8Z17h2y0S3Oa", "currency": {"currencyCode": "hLcusat3Sm1kyG7l", "namespace": "T3KaieOVBzGCPJBs"}, "image": {"as": "dmheqTQ7V4CPp5Pj", "caption": "rO9NlrGrT9xFHE7F", "height": 84, "imageUrl": "O0Aj79aFrIitYMxL", "smallImageUrl": "xjpH8cXXavXOIc44", "width": 31}, "itemId": "x3BEG4vJdOjmrQUv", "quantity": 43, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'Wud2hlMTvtprv9N4' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kWvjP0emxrSpWmIb' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'bKIPQT14f9ZNtoVU' \
    --namespace $AB_NAMESPACE \
    --seasonId '8RTejqSNMLsXG6sM' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'Vs3oz8APItZ6hgcw' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Oj7HfydaBlj3WtCS' \
    --body '{"currency": {"currencyCode": "9GvAyzDqLY9qB5HM", "namespace": "4RuGFm10T45GeiZK"}, "image": {"as": "7kyNxarvp6389BeM", "caption": "ItbqPvjEAueSLQSW", "height": 17, "imageUrl": "e8leXQHPs691wfOn", "smallImageUrl": "rFn9Vu46N7JxHIWE", "width": 56}, "itemId": "2uAs3WNxnddIFZ8c", "nullFields": ["ia0x7GobubxedVMh", "BMoVAEXI1PXVGFU3", "PVXk4deUQrDmWwTj"], "quantity": 86, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'MM6QkhkqV4XxL1zI' \
    --limit '61' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'OrSdBwaiGT0y21Uy' \
    --body '{"index": 23, "quantity": 93, "tier": {"requiredExp": 49, "rewards": {"4l2pFUqSeYk8dJi5": ["lSDtge9wIdr6IBd8", "MB0BacWSRohQL7YB", "pUFLauOmcSo4yjEW"], "QVg2l7duJKeArCPE": ["GRKOJdYyFZFsT0S8", "XrbpTa22tk60FnNr", "oqbbxxMdyDwLVMcu"], "4vZeWPq2dv3H0nOO": ["JDu5sMtZPGbMyMDV", "mCdetKk5NA9SfrqY", "ZqCxQQU8XXcbtbq3"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'YuneP0WVbRoIDKAc' \
    --namespace $AB_NAMESPACE \
    --seasonId '8QGI9wHQRNDemOGJ' \
    --body '{"requiredExp": 97, "rewards": {"rSkfvN0fZ9P3mBVB": ["F3kHY1UKopqyKdmc", "A5bT7RwfvaLHsT1B", "vacGEqTEEui0jVOy"], "sMFeONxyYKzN8GSH": ["4pLcxCvDP77ShLuO", "LckAV1b3R9YGYRSP", "8pN4Yjfz2jbkKpGP"], "o0upAdQE2sgRudLA": ["QUwUsfyiZCazzJfv", "AjGOQfmGZw8ZnHn1", "GdvqEHebtRp4zKff"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'WP2YCXbZ6L2kd5dQ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EDUD3YWrMfI18PO0' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '2KpHjgd96YZylrXI' \
    --namespace $AB_NAMESPACE \
    --seasonId 'iZdNjb8SalEesK93' \
    --body '{"newIndex": 83}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MTVDKyEgiv1paC3V' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'RRHwinC7DURTrwOu' \
    --limit '56' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'YV6dtWZmkTQU9QK9' \
    --body '{"exp": 86, "source": "SWEAT", "tags": ["gFePf08gm0sPGZmn", "9BfA8iabi8CFgc5f", "9Hcdx2uAbartTPKr"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'lFUKZ2CnxU0V1oqu' \
    --body '{"passCode": "TLl1INUkTLczynE7", "passItemId": "hLeye0Dzytg6ySrb"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'il4GoTkg9dTO75Nj' \
    --passCodes '["vZhDJdw4tNct02x2", "AF7ShaMidPVZ1QkQ", "jlFomSKH7wRwYJqk"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'gW7gxaYtUM73i82e' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'SERUujAgzCmAGtpn' \
    --body '{"passItemId": "CIu2ecgABQSwxudB", "tierItemCount": 38, "tierItemId": "9avhLTz3b0fZZCHh"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'ZEUdWErfWNv43HhQ' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'MJLREyCAuWiJJ0X4' \
    --body '{"count": 35, "source": "SWEAT", "tags": ["9sauPsIq1coKdbU1", "WaiKR7q3ZPfe19ba", "UDGpzASogotPS65z"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Mt8gxOjKEFF7eePj' \
    --from 'W5ksoC3K2oj6B2vA' \
    --limit '41' \
    --offset '73' \
    --seasonId 'zxp0ZRdtWOQcy8xh' \
    --source 'PAID_FOR' \
    --tags '["XkhATS4FMXvMyrkI", "nJUPPQ9pNdZfRjfi", "YKFeelrcsfmJtGlq"]' \
    --to 'cnDvV0lvNdBhrkki' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'c0ejxtsqar5O1pD5' \
    --seasonId 'IAy3sVNMp3pb4sDF' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CgjM5U3CZ5OVImgj' \
    --userId 'YE8zYJUkJNdaRzFK' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'peqkIsUaQ2SDDdUj' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'HzvEq6Q8LnOWaDMV' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'oKIqyQhPW4U3TC5D' \
    --body '{"passCode": "GofmeBDrYFAK1dtM", "rewardCode": "dPlISPKiZICkqjqI", "tierIndex": 69}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'kAJemT9PCygKkPbh' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '07JRePzE0J7xLjzW' \
    --userId 'L5wYfqb0k8jqlvwh' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE