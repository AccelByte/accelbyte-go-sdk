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
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    --status '["DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --body '{"autoClaim": false, "defaultLanguage": "sQuJu8vM", "defaultRequiredExp": 10, "draftStoreId": "0IsJkTrd", "end": "1988-08-24T00:00:00Z", "excessStrategy": {"currency": "cV2zXnTK", "method": "NONE", "percentPerExp": 99}, "images": [{"as": "Y1bPqami", "caption": "Bxx9Cs18", "height": 61, "imageUrl": "Y84ekItq", "smallImageUrl": "RzHU1oh5", "width": 72}], "localizations": {"QBVaewc7": {"description": "2krSha68", "title": "n3Ynozp1"}}, "name": "C2KmIQTu", "start": "1984-01-23T00:00:00Z", "tierItemId": "NEUsxFb8"}' \
    --namespace 'CJ17M7DJ' \
    > test.out 2>&1
eval_tap $? 3 'CreateSeason' test.out

#- 4 GetCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace 'ZaMSxECb' \
    > test.out 2>&1
eval_tap $? 4 'GetCurrentSeason' test.out

#- 5 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace 'Zbygyoar' \
    --seasonId 'ORoeNHSb' \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace '8Rh3kgs9' \
    --seasonId 'qqJbnQso' \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --body '{"autoClaim": true, "defaultLanguage": "giVpP8Cm", "defaultRequiredExp": 49, "draftStoreId": "vASUoxdx", "end": "1982-09-09T00:00:00Z", "excessStrategy": {"currency": "qmAGTJ8I", "method": "CURRENCY", "percentPerExp": 6}, "images": [{"as": "agEtp4w2", "caption": "9KOu9c19", "height": 87, "imageUrl": "6XDqWHkk", "smallImageUrl": "P8npLEKM", "width": 11}], "localizations": {"jiX7jpkV": {"description": "Zk3IaQYE", "title": "mqGodOEG"}}, "name": "t9gPOj0c", "start": "1975-10-10T00:00:00Z", "tierItemId": "kvIas73u"}' \
    --namespace 'cYnFAJ3D' \
    --seasonId 'K5T4Eogg' \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --body '{"end": "1997-04-22T00:00:00Z", "name": "Ylpv5bVA", "start": "1974-06-05T00:00:00Z"}' \
    --namespace 'sDhUTDUs' \
    --seasonId 'cbQDjbTQ' \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace 'uPMz2PTR' \
    --seasonId 'lkyU89ZP' \
    > test.out 2>&1
eval_tap $? 9 'QueryPasses' test.out

#- 10 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --body '{"autoEnroll": true, "code": "6zPFJ42c", "displayOrder": 45, "images": [{"as": "mzBBSMNc", "caption": "oAAOjKNj", "height": 11, "imageUrl": "cYHm093a", "smallImageUrl": "YgBU1sqj", "width": 49}], "localizations": {"K0XH45Pa": {"description": "RSOFQBtu", "title": "23REZ8hR"}}, "passItemId": "VX7LGOvD"}' \
    --namespace 'dYiQS9i7' \
    --seasonId 'mV1C91pj' \
    > test.out 2>&1
eval_tap $? 10 'CreatePass' test.out

#- 11 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'G9gpxL6y' \
    --namespace 'cTQdvln2' \
    --seasonId 'LAuSQWEX' \
    > test.out 2>&1
eval_tap $? 11 'GetPass' test.out

#- 12 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'L6LFE1YH' \
    --namespace 'o9m126ZW' \
    --seasonId 'c8hHtWvb' \
    > test.out 2>&1
eval_tap $? 12 'DeletePass' test.out

#- 13 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --body '{"autoEnroll": true, "displayOrder": 12, "images": [{"as": "UqslArFP", "caption": "iHUIvaCv", "height": 20, "imageUrl": "U9dBBpds", "smallImageUrl": "JLhsVyEx", "width": 35}], "localizations": {"kxoot0B7": {"description": "WOfercZd", "title": "pMci37Ds"}}, "passItemId": "7YSfExaI"}' \
    --code '3uzLteMb' \
    --namespace 'FAlt4hr7' \
    --seasonId 'HmOYiBA5' \
    > test.out 2>&1
eval_tap $? 13 'UpdatePass' test.out

#- 14 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace 'ltAOXmlG' \
    --seasonId '6eh1dTdo' \
    > test.out 2>&1
eval_tap $? 14 'PublishSeason' test.out

#- 15 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace 'TFpBIcuC' \
    --seasonId '1dQY93OJ' \
    --force 'False' \
    > test.out 2>&1
eval_tap $? 15 'RetireSeason' test.out

#- 16 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace 'J6Te9vD8' \
    --seasonId 'ldz7Hu8A' \
    --q 'D79kdWun' \
    > test.out 2>&1
eval_tap $? 16 'QueryRewards' test.out

#- 17 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --body '{"code": "vizU0q1p", "currency": {"currencyCode": "HyhhERoG", "namespace": "gdrysMiz"}, "image": {"as": "BGSRdP2l", "caption": "7DNSZ8Aq", "height": 98, "imageUrl": "iPLQXSe0", "smallImageUrl": "7ZddOGTM", "width": 23}, "itemId": "JjBwj9HJ", "quantity": 66, "type": "CURRENCY"}' \
    --namespace 'eEdSXRDS' \
    --seasonId 'vguauw1x' \
    > test.out 2>&1
eval_tap $? 17 'CreateReward' test.out

#- 18 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'T7eMwSl9' \
    --namespace 'MLH0NnTJ' \
    --seasonId '2ulNzBvw' \
    > test.out 2>&1
eval_tap $? 18 'GetReward' test.out

#- 19 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'JaQa547J' \
    --namespace 'llvA8RWS' \
    --seasonId 'pabUt7xk' \
    > test.out 2>&1
eval_tap $? 19 'DeleteReward' test.out

#- 20 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --body '{"currency": {"currencyCode": "6QxyWhfq", "namespace": "oWfJw2o8"}, "image": {"as": "oWUqvPCZ", "caption": "2HzT7NXm", "height": 96, "imageUrl": "DlXsuNId", "smallImageUrl": "QJR5lsNO", "width": 23}, "itemId": "vkfwaSbn", "nullFields": ["suLCgTox"], "quantity": 41, "type": "ITEM"}' \
    --code 'kJgvg6h5' \
    --namespace 'HIpH0Dvi' \
    --seasonId 'plEk4vj3' \
    > test.out 2>&1
eval_tap $? 20 'UpdateReward' test.out

#- 21 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace 'LDp4yqDt' \
    --seasonId '8QUZDpxl' \
    --limit '67' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 21 'QueryTiers' test.out

#- 22 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --body '{"index": 36, "quantity": 16, "tier": {"requiredExp": 27, "rewards": {"GcjrkmRM": ["ttgjDSaI"]}}}' \
    --namespace 'VBmft3Ud' \
    --seasonId 'g7p9PGmY' \
    > test.out 2>&1
eval_tap $? 22 'CreateTier' test.out

#- 23 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --body '{"requiredExp": 67, "rewards": {"5kX4Msis": ["SX28nARx"]}}' \
    --id 'WRpv5ou5' \
    --namespace 'xtvd28OU' \
    --seasonId 'fCt8UJC5' \
    > test.out 2>&1
eval_tap $? 23 'UpdateTier' test.out

#- 24 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'flNyj6Hs' \
    --namespace 'TtX8P3ll' \
    --seasonId 'naaS9lqy' \
    > test.out 2>&1
eval_tap $? 24 'DeleteTier' test.out

#- 25 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --body '{"newIndex": 48}' \
    --id 'gPcfkJIx' \
    --namespace 'fQZza8kN' \
    --seasonId 'VbDxVMq7' \
    > test.out 2>&1
eval_tap $? 25 'ReorderTier' test.out

#- 26 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace 'HJk0F89x' \
    --seasonId 'Ac3YVfaE' \
    --force 'True' \
    > test.out 2>&1
eval_tap $? 26 'UnpublishSeason' test.out

#- 27 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace 'rl0pTKZT' \
    --userId 'XqzHuBMY' \
    --limit '85' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 27 'GetUserParticipatedSeasons' test.out

#- 28 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --body '{"exp": 52, "source": "PAID_FOR", "tags": ["z1ZOpdOj"]}' \
    --namespace 'SyMddB41' \
    --userId 'JuMf7RUy' \
    > test.out 2>&1
eval_tap $? 28 'GrantUserExp' test.out

#- 29 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --body '{"passCode": "BHRj8IiR", "passItemId": "imRllHT6"}' \
    --namespace 'Dc40vFFA' \
    --userId '6gpU7EW3' \
    > test.out 2>&1
eval_tap $? 29 'GrantUserPass' test.out

#- 30 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace 'x1dCpm55' \
    --userId 'gOeqQIqc' \
    --passCodes '["JVKmBM1J"]' \
    > test.out 2>&1
eval_tap $? 30 'ExistsAnyPassByPassCodes' test.out

#- 31 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace '1IbuTrrk' \
    --userId 'bmuT1whO' \
    > test.out 2>&1
eval_tap $? 31 'GetCurrentUserSeasonProgression' test.out

#- 32 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --body '{"passItemId": "qmEnDXIW", "tierItemCount": 35, "tierItemId": "BPlSay46"}' \
    --namespace 'mv71BAZA' \
    --userId 'OjtFJ2vm' \
    > test.out 2>&1
eval_tap $? 32 'CheckSeasonPurchasable' test.out

#- 33 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace 'Tj7tT7TZ' \
    --userId 'HWDdCkIs' \
    > test.out 2>&1
eval_tap $? 33 'ResetUserSeason' test.out

#- 34 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --body '{"count": 29, "source": "SWEAT", "tags": ["rWwPHcyF"]}' \
    --namespace 'AdAtYciL' \
    --userId 'IgRwFRr0' \
    > test.out 2>&1
eval_tap $? 34 'GrantUserTier' test.out

#- 35 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace 'gwB9tz3v' \
    --userId 'p99XVlV8' \
    --from 'rK3tE6n0' \
    --limit '36' \
    --offset '25' \
    --seasonId 'ip1tw3L7' \
    --source 'PAID_FOR' \
    --tags '["Ud9pqtv6"]' \
    --to 'JfPZwcCV' \
    > test.out 2>&1
eval_tap $? 35 'QueryUserExpGrantHistory' test.out

#- 36 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace 'OXcVa80T' \
    --userId 'mCwtD2lA' \
    --seasonId 'H01o6Ndc' \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistoryTag' test.out

#- 37 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace 'BIgzrDyW' \
    --seasonId 'pFBYGmmB' \
    --userId 'awMyoKyN' \
    > test.out 2>&1
eval_tap $? 37 'GetUserSeason' test.out

#- 38 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace 'pdAasm8x' \
    --language 'wUfzOlQi' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetCurrentSeason' test.out

#- 39 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace 'ZY4NbOQX' \
    --userId 'J7uOTzNM' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentUserSeason' test.out

#- 40 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --body '{"passCode": "vuq2tNl4", "rewardCode": "CX4IjiK4", "tierIndex": 58}' \
    --namespace 'EUJRVK3l' \
    --userId '9Eb0R1XR' \
    > test.out 2>&1
eval_tap $? 40 'PublicClaimUserReward' test.out

#- 41 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace 'b0RH8vS1' \
    --userId 'smeOlngr' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkClaimUserRewards' test.out

#- 42 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace 'dTXCzaPB' \
    --seasonId 'tkZMio4w' \
    --userId 'cyhloVS3' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE