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
    --limit '72' \
    --offset '95' \
    --status '["DRAFT", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "2cc56Ab9", "defaultRequiredExp": 62, "draftStoreId": "A7ZV4sFy", "end": "1982-10-28T00:00:00Z", "excessStrategy": {"currency": "w2E8wEMy", "method": "NONE", "percentPerExp": 61}, "images": [{"as": "RM7DiooU", "caption": "9OxhY1I6", "height": 46, "imageUrl": "AOUWdT29", "smallImageUrl": "c6BVF2B7", "width": 55}, {"as": "8UHELGHa", "caption": "9LRJRw45", "height": 3, "imageUrl": "ogYD7Yng", "smallImageUrl": "3fi8uzPs", "width": 39}, {"as": "nNrMKI2B", "caption": "zWtvevod", "height": 5, "imageUrl": "frv1nsqC", "smallImageUrl": "EoiwfycE", "width": 41}], "localizations": {"soSH9ZAb": {"description": "NhYMZO7O", "title": "vfKgC73a"}, "xw035C4R": {"description": "AaeJc0Kx", "title": "U06jviy7"}, "Gp4LYZO9": {"description": "PsPnOdw9", "title": "x05JrFDu"}}, "name": "M0zj8ooW", "start": "1973-12-24T00:00:00Z", "tierItemId": "42JKHqYJ"}' \
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
    --body '{"userIds": ["W64p4xO4", "kkDJkoFS", "xoDeHw03"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CmwiOM4d' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2l48Rv7J' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZrsyDDo3' \
    --body '{"autoClaim": false, "defaultLanguage": "5yXu3fuw", "defaultRequiredExp": 8, "draftStoreId": "FvueMgJ6", "end": "1976-05-16T00:00:00Z", "excessStrategy": {"currency": "jhWj4LMB", "method": "NONE", "percentPerExp": 24}, "images": [{"as": "RW6wB9Q0", "caption": "FLQ91ZGT", "height": 32, "imageUrl": "9WGzpVBy", "smallImageUrl": "O3DnK4K0", "width": 21}, {"as": "U0mlxuRW", "caption": "FD6z6wTR", "height": 71, "imageUrl": "vZkwrjF8", "smallImageUrl": "eoSQzhIJ", "width": 76}, {"as": "hvt9mqzs", "caption": "9ovQHSlQ", "height": 30, "imageUrl": "8XdQurYi", "smallImageUrl": "Zc0qpZ0R", "width": 87}], "localizations": {"RxCQDGow": {"description": "csOj01vQ", "title": "hNukgrYU"}, "WSshJ46l": {"description": "66eiz84E", "title": "rhEmENEW"}, "qbdS7XpW": {"description": "WdHQ2RjK", "title": "tpSCky9N"}}, "name": "q8BBveRR", "start": "1997-06-25T00:00:00Z", "tierItemId": "dyxT99fn"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 's8soT51e' \
    --body '{"end": "1986-01-23T00:00:00Z", "name": "ukly7seS", "start": "1982-07-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fX1CyCBY' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Spgy48ZJ' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'bmRdnxT3' \
    --body '{"autoEnroll": false, "code": "cCQQUW3w", "displayOrder": 25, "images": [{"as": "tppa6Sxr", "caption": "kqs0NKSG", "height": 86, "imageUrl": "42zgp36m", "smallImageUrl": "t8MHMr0g", "width": 99}, {"as": "GqS2zxLT", "caption": "VIMPOev2", "height": 8, "imageUrl": "ghCiR83j", "smallImageUrl": "C3BSx2ja", "width": 85}, {"as": "EXwQxxx9", "caption": "rHLE4G5f", "height": 81, "imageUrl": "TfvkoJiS", "smallImageUrl": "biwwOJbA", "width": 13}], "localizations": {"c5MiApFn": {"description": "5pZOIQbx", "title": "BeMxs24f"}, "KjmKlow4": {"description": "ehkWP5ot", "title": "3WUZ7QBz"}, "ZFRrCzqj": {"description": "fTUkSi4a", "title": "BaL5Fyp2"}}, "passItemId": "wfrN0XrQ"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'HSnPxgzq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ye75GINj' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'uzs1vWcQ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'NoveEmmG' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '7sBc5hUk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Mt9HIrqQ' \
    --body '{"autoEnroll": false, "displayOrder": 4, "images": [{"as": "Dk6Hg9S7", "caption": "usOgiOoo", "height": 53, "imageUrl": "z8Bmk2UZ", "smallImageUrl": "yF64P7Ad", "width": 74}, {"as": "5LwxKXnd", "caption": "vOUKlWpy", "height": 63, "imageUrl": "pt1aeOFD", "smallImageUrl": "RTRShdze", "width": 100}, {"as": "jQ55HcKG", "caption": "nrQRD81a", "height": 42, "imageUrl": "b3Gi5Cqy", "smallImageUrl": "Zw9QuimM", "width": 0}], "localizations": {"7vnqmAlG": {"description": "VJrQFUX4", "title": "sXuWZJYc"}, "8xOWhaJe": {"description": "GDIbJnR1", "title": "L0wWwGgR"}, "Vif5ixqc": {"description": "EHdCYOFD", "title": "5jDQjyRB"}}, "passItemId": "4UpV4i6z"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'F69wALFH' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4XSzQtMU' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'WB7RO58j' \
    --q 'pxHjV3W2' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'lOeL5Egu' \
    --body '{"code": "s394cerF", "currency": {"currencyCode": "JQ9kkh0z", "namespace": "JBEs0nuO"}, "image": {"as": "ugRNf2zv", "caption": "iHqgYCSN", "height": 56, "imageUrl": "MJwehltA", "smallImageUrl": "s4Lk8U3h", "width": 7}, "itemId": "Ju9jRTpp", "quantity": 3, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'J2PKb65K' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DhGGmvJ3' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '3QrTfODF' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XYYt6k4X' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'jcBKJASt' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EWGWWD6X' \
    --body '{"currency": {"currencyCode": "Fc5xXPWT", "namespace": "m8ZHakbi"}, "image": {"as": "KscdFKko", "caption": "cY9bMbz1", "height": 82, "imageUrl": "4NH07YQo", "smallImageUrl": "ltrDNrL6", "width": 76}, "itemId": "JaCaeDMf", "nullFields": ["iJNz8rYX", "TP0nSE4V", "9DMRPnOU"], "quantity": 57, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '1z5vkmNW' \
    --limit '37' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'tSXjqQtF' \
    --body '{"index": 100, "quantity": 73, "tier": {"requiredExp": 87, "rewards": {"cMzYa5Je": ["4suWNFjU", "dbdsVObT", "sIlxBF8t"], "NokZW6zC": ["EsXuqkGK", "r12NAVqQ", "KSbJxwzL"], "X7qmQgWC": ["qYbtRfGE", "yl2H4iFG", "98yHn4Rq"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '7CFZczD5' \
    --namespace $AB_NAMESPACE \
    --seasonId 'lD1o3mXR' \
    --body '{"requiredExp": 57, "rewards": {"RkxauBGJ": ["asT8jIUq", "t5W5Sinx", "IzYoyJVO"], "4EAxRe28": ["bwU203Pc", "9wrqDrLC", "OFp4MFVL"], "xsnXrnM1": ["P3UzGLk1", "ex1x1M07", "QexH7gMG"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'MwNYbxKD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EGFfF8uE' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'sZLb1uyj' \
    --namespace $AB_NAMESPACE \
    --seasonId '7hSnj5Pz' \
    --body '{"newIndex": 48}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'S9KwJv2K' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'kwqVbgg1' \
    --limit '63' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'yeGXStHV' \
    --body '{"exp": 43, "source": "SWEAT", "tags": ["0eWorOdi", "MaDSTNE0", "LQiv5BrI"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'SqZdJBYq' \
    --body '{"passCode": "cqIGYGx4", "passItemId": "PfAhZu83"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'GLH3llsp' \
    --passCodes '["krlSZiQI", "i5XVbJdv", "BpgGao80"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Z3edVnDC' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'RtGpk32Y' \
    --body '{"passItemId": "k9Def0bJ", "tierItemCount": 35, "tierItemId": "kn7lIJFQ"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'nhXsX8SU' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'bB1ZWDe3' \
    --body '{"count": 0, "source": "PAID_FOR", "tags": ["8ZZ0Xy2P", "AhMccicm", "vSf1ja1k"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '8O8H52I6' \
    --from 'WsKnLNfu' \
    --limit '36' \
    --offset '85' \
    --seasonId 'TJWVSJto' \
    --source 'PAID_FOR' \
    --tags '["NeIsegcE", "T1QuZYzj", "OgLbJvUn"]' \
    --to 'HORRbHAW' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'XcQz8tSh' \
    --seasonId 'EhGEB5j5' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'BD5aJOwN' \
    --userId 'mLboo38p' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'WZgzZCUg' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'yILepbSs' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'rNe4lMoG' \
    --body '{"passCode": "ijLaoOlO", "rewardCode": "t0rgNgfD", "tierIndex": 17}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'A99yOfma' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fRHGFqNS' \
    --userId 'fJg0BVu9' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE