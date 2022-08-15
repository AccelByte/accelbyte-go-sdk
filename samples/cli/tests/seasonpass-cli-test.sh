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
echo "1..42"

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
    --limit '68' \
    --offset '34' \
    --status '["DRAFT", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "Gy6S8TKm", "defaultRequiredExp": 1, "draftStoreId": "EDaw49XO", "end": "1980-11-12T00:00:00Z", "excessStrategy": {"currency": "VwukBr3Q", "method": "NONE", "percentPerExp": 26}, "images": [{"as": "Le1jApWI", "caption": "MrKX5YAs", "height": 36, "imageUrl": "hXuFy5qx", "smallImageUrl": "lwtLE2sA", "width": 38}, {"as": "ScVlTtm0", "caption": "u9WUP7Lo", "height": 89, "imageUrl": "UNUQk95M", "smallImageUrl": "2xkOMfIt", "width": 88}, {"as": "z9mTtgos", "caption": "IBwNrKoo", "height": 98, "imageUrl": "y1tjuNue", "smallImageUrl": "EaSwPsrA", "width": 76}], "localizations": {"IU4Ul1s1": {"description": "QyUwU0tQ", "title": "s5KO1vvq"}, "1RjXqLiZ": {"description": "hE4bv0cx", "title": "xmpZxMBu"}, "DNwdcQOP": {"description": "rFJGJCln", "title": "SaDkENMu"}}, "name": "3Lr5aWCk", "start": "1999-07-07T00:00:00Z", "tierItemId": "Gsl0kLWX"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateSeason' test.out

#- 4 GetCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'GetCurrentSeason' test.out

#- 5 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CV1tUfPG' \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dcQKcmKF' \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '27Fe3q6C' \
    --body '{"autoClaim": true, "defaultLanguage": "PpyQIpya", "defaultRequiredExp": 80, "draftStoreId": "Xl2Qfdow", "end": "1997-04-15T00:00:00Z", "excessStrategy": {"currency": "Nwf1Ri0k", "method": "NONE", "percentPerExp": 27}, "images": [{"as": "jT1bszIf", "caption": "424Q2rxR", "height": 91, "imageUrl": "kwNhC4N9", "smallImageUrl": "1eZ61n1C", "width": 15}, {"as": "t6NpCuIN", "caption": "aKqlalYn", "height": 1, "imageUrl": "79l2Q9C0", "smallImageUrl": "IzqXMKNO", "width": 94}, {"as": "TxvYOOQ5", "caption": "Dv67Z1uS", "height": 72, "imageUrl": "ZEbVuvmo", "smallImageUrl": "gxYJQyMW", "width": 45}], "localizations": {"z4bKIo5R": {"description": "KIH5SA6t", "title": "5TxK5Iz6"}, "zwOuvaP2": {"description": "ezdyETIs", "title": "KaMTjObG"}, "jo0rTWri": {"description": "8Wz6B48b", "title": "SNvIHWve"}}, "name": "g4SPTmgE", "start": "1993-12-04T00:00:00Z", "tierItemId": "HUdBXk9G"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QcEDsfOG' \
    --body '{"end": "1974-02-25T00:00:00Z", "name": "MmWc7xO8", "start": "1979-05-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'fsrfVcC1' \
    > test.out 2>&1
eval_tap $? 9 'QueryPasses' test.out

#- 10 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'sIh9rjBR' \
    --body '{"autoEnroll": true, "code": "CRUgxnVE", "displayOrder": 81, "images": [{"as": "TSdFaJqD", "caption": "3uEUQxui", "height": 34, "imageUrl": "nfgyoe31", "smallImageUrl": "9j4OhVHS", "width": 100}, {"as": "VfUtVCsV", "caption": "yFv4pZJs", "height": 100, "imageUrl": "ta4dMz1k", "smallImageUrl": "mDmAddff", "width": 89}, {"as": "TIkkrrDy", "caption": "ki82NhOc", "height": 11, "imageUrl": "VpCEeBje", "smallImageUrl": "QiIkhiJT", "width": 65}], "localizations": {"Vnthrc2k": {"description": "ZW7C5kfK", "title": "0btRWn6p"}, "Vs0CCak3": {"description": "y36EstkW", "title": "ztf8LX1j"}, "48mh2aFy": {"description": "8gq0QYKf", "title": "2rP9gGuj"}}, "passItemId": "dft75wvA"}' \
    > test.out 2>&1
eval_tap $? 10 'CreatePass' test.out

#- 11 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '84dM1SRk' \
    --namespace $AB_NAMESPACE \
    --seasonId '01wscHjm' \
    > test.out 2>&1
eval_tap $? 11 'GetPass' test.out

#- 12 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'mrHXQaoq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'BBTgX6Rk' \
    > test.out 2>&1
eval_tap $? 12 'DeletePass' test.out

#- 13 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'pVpPYYqI' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Svo7E9kS' \
    --body '{"autoEnroll": false, "displayOrder": 13, "images": [{"as": "LFPzU2w1", "caption": "O9eE4bqh", "height": 27, "imageUrl": "vvzsOPmj", "smallImageUrl": "lfgkVnl9", "width": 39}, {"as": "4PASrAZ7", "caption": "zOjFj1qt", "height": 50, "imageUrl": "uCBW8EG8", "smallImageUrl": "9zMiIikL", "width": 63}, {"as": "bcVP8lc2", "caption": "FB4jPVbG", "height": 85, "imageUrl": "7iICbcMG", "smallImageUrl": "SD2IreFb", "width": 88}], "localizations": {"SLmh7cYb": {"description": "PCPpPt3f", "title": "8RBkeNLq"}, "cpQImKR5": {"description": "Wi7N7jUG", "title": "GBnFtKxE"}, "NqU7izhX": {"description": "Ay91WOL4", "title": "FbPIAPQh"}}, "passItemId": "HwPSnjeH"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdatePass' test.out

#- 14 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ECIKm5kS' \
    > test.out 2>&1
eval_tap $? 14 'PublishSeason' test.out

#- 15 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lhyC2VOc' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 15 'RetireSeason' test.out

#- 16 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '3tBu9xsZ' \
    --q 'rHt2lqC8' \
    > test.out 2>&1
eval_tap $? 16 'QueryRewards' test.out

#- 17 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '2CipXQaW' \
    --body '{"code": "QtZxoBwe", "currency": {"currencyCode": "OBg0evK7", "namespace": "W42X3YiH"}, "image": {"as": "5NOa935w", "caption": "VyZQDnSZ", "height": 72, "imageUrl": "RQfKKwgu", "smallImageUrl": "bcjA6Fs7", "width": 93}, "itemId": "Yg9FjTLY", "quantity": 16, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateReward' test.out

#- 18 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'cli5efwF' \
    --namespace $AB_NAMESPACE \
    --seasonId '3ZQwn4OW' \
    > test.out 2>&1
eval_tap $? 18 'GetReward' test.out

#- 19 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'wJYbSms3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PiH8L7xb' \
    > test.out 2>&1
eval_tap $? 19 'DeleteReward' test.out

#- 20 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'fs6g4wBW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'lp4m2qWo' \
    --body '{"currency": {"currencyCode": "W1xG8jxa", "namespace": "lCZKND8t"}, "image": {"as": "OEnt1vB7", "caption": "ULDxUtNK", "height": 7, "imageUrl": "rB8dYaTj", "smallImageUrl": "xR9MB9hh", "width": 10}, "itemId": "Ql27eCPG", "nullFields": ["X6iWL6Er", "RBHRyTDP", "iM6864IO"], "quantity": 74, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateReward' test.out

#- 21 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'rJK0gPSo' \
    --limit '27' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 21 'QueryTiers' test.out

#- 22 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'jut7GmiG' \
    --body '{"index": 49, "quantity": 26, "tier": {"requiredExp": 51, "rewards": {"atCXBNXv": ["Rk76EZg1", "q9uYae6U", "4cZRYrMB"], "Drf15TCI": ["Orfb5SMQ", "vAiiVzpC", "JH7yXSDs"], "isbkIMhH": ["glbgmroA", "DUtIVr9E", "fdew7iGZ"]}}}' \
    > test.out 2>&1
eval_tap $? 22 'CreateTier' test.out

#- 23 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'j3jra8Qe' \
    --namespace $AB_NAMESPACE \
    --seasonId 'xvSRJ7Yg' \
    --body '{"requiredExp": 16, "rewards": {"FDQFQX5s": ["Gt4HoGpy", "Dd8tcN7p", "DI6nhs2T"], "46bYNI1n": ["c3Y4qVBT", "VPny6dhc", "T4k8di6b"], "Tp4PczsI": ["R4cfkAs5", "p4mKA83L", "bhNGHP0n"]}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateTier' test.out

#- 24 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'yvjnMTjw' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XZiMIuvJ' \
    > test.out 2>&1
eval_tap $? 24 'DeleteTier' test.out

#- 25 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'bOWsoPpm' \
    --namespace $AB_NAMESPACE \
    --seasonId '39bse7qo' \
    --body '{"newIndex": 10}' \
    > test.out 2>&1
eval_tap $? 25 'ReorderTier' test.out

#- 26 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AMO5ZCDA' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 26 'UnpublishSeason' test.out

#- 27 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'Jqv2ItOW' \
    --limit '27' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 27 'GetUserParticipatedSeasons' test.out

#- 28 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'aaBA3JMX' \
    --body '{"exp": 3, "source": "SWEAT", "tags": ["hI7IGi9S", "Pz6doNgw", "nAbylqIQ"]}' \
    > test.out 2>&1
eval_tap $? 28 'GrantUserExp' test.out

#- 29 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'V1vaL0oI' \
    --body '{"passCode": "zpiATrXi", "passItemId": "HfFQJT6b"}' \
    > test.out 2>&1
eval_tap $? 29 'GrantUserPass' test.out

#- 30 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'hIJXoXX6' \
    --passCodes '["MgB3EiWi", "dHnGPMq7", "GJFskTQv"]' \
    > test.out 2>&1
eval_tap $? 30 'ExistsAnyPassByPassCodes' test.out

#- 31 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Vaxw3Z10' \
    > test.out 2>&1
eval_tap $? 31 'GetCurrentUserSeasonProgression' test.out

#- 32 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'bNzrnwCr' \
    --body '{"passItemId": "QvIBwtdp", "tierItemCount": 80, "tierItemId": "4xOWdTGR"}' \
    > test.out 2>&1
eval_tap $? 32 'CheckSeasonPurchasable' test.out

#- 33 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '2wwJTm6k' \
    > test.out 2>&1
eval_tap $? 33 'ResetUserSeason' test.out

#- 34 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'jie3TrlR' \
    --body '{"count": 4, "source": "PAID_FOR", "tags": ["17sGggMs", "lE1eD6VI", "q4XnPGvy"]}' \
    > test.out 2>&1
eval_tap $? 34 'GrantUserTier' test.out

#- 35 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'dV3BC7kQ' \
    --from 'bROEFDeY' \
    --limit '93' \
    --offset '64' \
    --seasonId 'xMAAl71r' \
    --source 'SWEAT' \
    --tags '["qaDJMICD", "Git2gSAd", "JEJKBhYm"]' \
    --to '2AcZ1Swi' \
    > test.out 2>&1
eval_tap $? 35 'QueryUserExpGrantHistory' test.out

#- 36 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'xl4aa1TG' \
    --seasonId 'mPLGGF2w' \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistoryTag' test.out

#- 37 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'tO4ePKek' \
    --userId 'PFUy5WWc' \
    > test.out 2>&1
eval_tap $? 37 'GetUserSeason' test.out

#- 38 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'pxSqi2DN' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetCurrentSeason' test.out

#- 39 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '2XkQrl1G' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentUserSeason' test.out

#- 40 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'HNelHuYu' \
    --body '{"passCode": "35kdbm8l", "rewardCode": "fFhGvBR1", "tierIndex": 65}' \
    > test.out 2>&1
eval_tap $? 40 'PublicClaimUserReward' test.out

#- 41 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'JD8ZJ0tq' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkClaimUserRewards' test.out

#- 42 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'aC7pKasz' \
    --userId 'swWInI7J' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE