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
echo "1..43"

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
    --limit '43' \
    --offset '45' \
    --status '["PUBLISHED", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "3HQBI22f", "defaultRequiredExp": 33, "draftStoreId": "jGnUrp82", "end": "1976-10-01T00:00:00Z", "excessStrategy": {"currency": "YyVtL89c", "method": "NONE", "percentPerExp": 42}, "images": [{"as": "VHAuOANG", "caption": "owVRjQSF", "height": 95, "imageUrl": "vHGWyjx4", "smallImageUrl": "Y4j1CENI", "width": 23}, {"as": "SG2z6pUg", "caption": "DTOfI7tt", "height": 74, "imageUrl": "yxhhaZQz", "smallImageUrl": "Hv03eyr9", "width": 55}, {"as": "T6cRhdFJ", "caption": "GDxCeEmD", "height": 47, "imageUrl": "bw6X8zih", "smallImageUrl": "DnrweVqr", "width": 86}], "localizations": {"fSGEq1xF": {"description": "owETVXMO", "title": "NVdlS9AU"}, "Ef5B9r8P": {"description": "7GcfDh1i", "title": "kj6CzRI5"}, "gLS80DVh": {"description": "lADyZibn", "title": "LGxZToUK"}}, "name": "KPMeokyA", "start": "1988-11-28T00:00:00Z", "tierItemId": "0QPXgsyb"}' \
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
    --seasonId 'tzkUQSwa' \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IwlgmpOG' \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'B37f1sZE' \
    --body '{"autoClaim": false, "defaultLanguage": "SHywzfcW", "defaultRequiredExp": 70, "draftStoreId": "bnms18Wu", "end": "1994-03-23T00:00:00Z", "excessStrategy": {"currency": "xmBw9a6c", "method": "NONE", "percentPerExp": 30}, "images": [{"as": "iLLX9a2P", "caption": "MqVVyOUx", "height": 51, "imageUrl": "ShFhbmdI", "smallImageUrl": "xAK7rIjh", "width": 1}, {"as": "JP7IlJvN", "caption": "0VU7n2zv", "height": 17, "imageUrl": "9wkZS0E7", "smallImageUrl": "8oqwvNl1", "width": 7}, {"as": "8jc3qYsH", "caption": "DljLgBdy", "height": 66, "imageUrl": "zBoKSEnU", "smallImageUrl": "9ihVWRE0", "width": 42}], "localizations": {"8AfDy9J2": {"description": "wDoVRXNM", "title": "5K7ZL99G"}, "Idz07zvC": {"description": "8GZLUGzT", "title": "XdQV3zI3"}, "skci2ChJ": {"description": "xZhk9SxD", "title": "mfI36X5X"}}, "name": "MBEyInEF", "start": "1987-03-27T00:00:00Z", "tierItemId": "LkHi37Dz"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pafaC0gC' \
    --body '{"end": "1972-04-21T00:00:00Z", "name": "p7NAmYo5", "start": "1999-09-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5XUdIPCZ' \
    > test.out 2>&1
eval_tap $? 9 'GetFullSeason' test.out

#- 10 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Zm9nYxI0' \
    > test.out 2>&1
eval_tap $? 10 'QueryPasses' test.out

#- 11 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'eSMpyPhe' \
    --body '{"autoEnroll": false, "code": "BxUNwq5y", "displayOrder": 48, "images": [{"as": "ylv7egDA", "caption": "cVdlm67u", "height": 86, "imageUrl": "cFLShXIC", "smallImageUrl": "DfNevZbT", "width": 30}, {"as": "RUHvY6S7", "caption": "YvcCoOxT", "height": 37, "imageUrl": "kVWKCGTE", "smallImageUrl": "N3Gh5Jtd", "width": 55}, {"as": "cyCvW4ec", "caption": "15Ax6K74", "height": 37, "imageUrl": "IlP4O40h", "smallImageUrl": "cv0XbVYX", "width": 89}], "localizations": {"10C4phiD": {"description": "f0ky8MKN", "title": "UrR3pKK0"}, "zm437HtZ": {"description": "NQ3EpiTQ", "title": "OAwM2l1s"}, "8bXtsodE": {"description": "TsIoM89P", "title": "OStL34tC"}}, "passItemId": "FwVgv8Bj"}' \
    > test.out 2>&1
eval_tap $? 11 'CreatePass' test.out

#- 12 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'o1gmxICe' \
    --namespace $AB_NAMESPACE \
    --seasonId 'VmWvuph8' \
    > test.out 2>&1
eval_tap $? 12 'GetPass' test.out

#- 13 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'RKgJyZOB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'vkekx9hB' \
    > test.out 2>&1
eval_tap $? 13 'DeletePass' test.out

#- 14 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'jplBpmSd' \
    --namespace $AB_NAMESPACE \
    --seasonId 'd7gmemZO' \
    --body '{"autoEnroll": true, "displayOrder": 24, "images": [{"as": "ZoPb0rZu", "caption": "ROvTTOq6", "height": 22, "imageUrl": "yPZ2UlLb", "smallImageUrl": "ThBkasok", "width": 55}, {"as": "tDhZx9ZK", "caption": "wXqWi10H", "height": 49, "imageUrl": "1Ewcm9MP", "smallImageUrl": "sM7lCi82", "width": 62}, {"as": "3djO9D4w", "caption": "R2FInaOS", "height": 61, "imageUrl": "1hGGfvLZ", "smallImageUrl": "gM6O721w", "width": 82}], "localizations": {"JxXeSAlH": {"description": "hc2SDeAL", "title": "QNsBETlL"}, "skeYLvz2": {"description": "1YJnE0v7", "title": "04AHOQrh"}, "RneWaeo1": {"description": "F2EQ07rx", "title": "dDCYxFTx"}}, "passItemId": "ZjAaJr7j"}' \
    > test.out 2>&1
eval_tap $? 14 'UpdatePass' test.out

#- 15 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'etWfdrhk' \
    > test.out 2>&1
eval_tap $? 15 'PublishSeason' test.out

#- 16 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'diKQYWEJ' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 16 'RetireSeason' test.out

#- 17 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'oPOfOxkP' \
    --q 'oXvW9h3S' \
    > test.out 2>&1
eval_tap $? 17 'QueryRewards' test.out

#- 18 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '9P5sgyqC' \
    --body '{"code": "YOfBPbHm", "currency": {"currencyCode": "OWbtjhKv", "namespace": "bNDhFiMr"}, "image": {"as": "okB1SNF5", "caption": "qLFwuNMp", "height": 71, "imageUrl": "G633pvBr", "smallImageUrl": "gpMWPaCh", "width": 71}, "itemId": "1q5QuNCU", "quantity": 38, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateReward' test.out

#- 19 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'gjky4cQm' \
    --namespace $AB_NAMESPACE \
    --seasonId 'CmLBgpt4' \
    > test.out 2>&1
eval_tap $? 19 'GetReward' test.out

#- 20 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'oRk1Nspy' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rbl8qJgH' \
    > test.out 2>&1
eval_tap $? 20 'DeleteReward' test.out

#- 21 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'M723VIhk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LZGJV30P' \
    --body '{"currency": {"currencyCode": "2MY0nlEm", "namespace": "jLtOdOWf"}, "image": {"as": "gmKeqTKo", "caption": "yE4NCGOP", "height": 58, "imageUrl": "Co8o8nrU", "smallImageUrl": "p0MQ6ElL", "width": 15}, "itemId": "j8ueOHpc", "nullFields": ["u25Ao92X", "lu4rnd02", "mxg4MBs5"], "quantity": 96, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateReward' test.out

#- 22 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'i5E8yJ1e' \
    --limit '66' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 22 'QueryTiers' test.out

#- 23 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'H4rYaWPG' \
    --body '{"index": 20, "quantity": 51, "tier": {"requiredExp": 39, "rewards": {"it68ofUP": ["gYJkWg2K", "VASmXeT0", "5Xyn3zed"], "X0BTVmve": ["rmcQAA6m", "k1vseR7O", "Cod612Qh"], "vyePuvKn": ["zyDvqec5", "BxGPov8C", "ryWKa3Wf"]}}}' \
    > test.out 2>&1
eval_tap $? 23 'CreateTier' test.out

#- 24 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'silMG2Ky' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jbl1JEdL' \
    --body '{"requiredExp": 32, "rewards": {"2tSurLMy": ["rgfd8GKT", "tW4ixlXq", "CGSVMiBW"], "z67MuYnM": ["GE0ly4Gh", "mXa3IBj5", "9omR1hIp"], "Jt8In21n": ["kjnAGb5Z", "U3FZ7kBx", "8socRyEy"]}}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateTier' test.out

#- 25 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'frMIUpl2' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ws1GlNAN' \
    > test.out 2>&1
eval_tap $? 25 'DeleteTier' test.out

#- 26 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'l7L6vm3I' \
    --namespace $AB_NAMESPACE \
    --seasonId '5uUgjAbM' \
    --body '{"newIndex": 42}' \
    > test.out 2>&1
eval_tap $? 26 'ReorderTier' test.out

#- 27 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bjhPPzCl' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 27 'UnpublishSeason' test.out

#- 28 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId '7kq5yDzj' \
    --limit '79' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 28 'GetUserParticipatedSeasons' test.out

#- 29 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'FYmp5qsr' \
    --body '{"exp": 79, "source": "SWEAT", "tags": ["i3LLX3U1", "bwiLWeVc", "QlFfcRUv"]}' \
    > test.out 2>&1
eval_tap $? 29 'GrantUserExp' test.out

#- 30 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '2TBx9oPU' \
    --body '{"passCode": "NoLoltDz", "passItemId": "MwloKbB7"}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserPass' test.out

#- 31 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'cUWHUhkf' \
    --passCodes '["cXtMarGs", "NaybL2H4", "PrqlWgYf"]' \
    > test.out 2>&1
eval_tap $? 31 'ExistsAnyPassByPassCodes' test.out

#- 32 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'ByeZXoJ1' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentUserSeasonProgression' test.out

#- 33 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'F2YPJ7i5' \
    --body '{"passItemId": "D6M659Ox", "tierItemCount": 20, "tierItemId": "7QsVEaz7"}' \
    > test.out 2>&1
eval_tap $? 33 'CheckSeasonPurchasable' test.out

#- 34 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'lmH63pcN' \
    > test.out 2>&1
eval_tap $? 34 'ResetUserSeason' test.out

#- 35 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '5XPsiTeQ' \
    --body '{"count": 71, "source": "PAID_FOR", "tags": ["TS8dxtbu", "1OQi0kNA", "z9IDbgGm"]}' \
    > test.out 2>&1
eval_tap $? 35 'GrantUserTier' test.out

#- 36 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'JZsC9Acg' \
    --from 'XmERax55' \
    --limit '38' \
    --offset '50' \
    --seasonId '8OxK0XpP' \
    --source 'SWEAT' \
    --tags '["gjAGcQm7", "CNZpRb1Z", "pwGv592z"]' \
    --to 'xpFOiaDH' \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistory' test.out

#- 37 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'WuqF6q3W' \
    --seasonId '4nYi3hDl' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistoryTag' test.out

#- 38 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JxGvKzh4' \
    --userId 'xZAJNmhc' \
    > test.out 2>&1
eval_tap $? 38 'GetUserSeason' test.out

#- 39 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'q2qkESVd' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentSeason' test.out

#- 40 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'f7hxvsjC' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentUserSeason' test.out

#- 41 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'T9JKq2TC' \
    --body '{"passCode": "mcgMf2G5", "rewardCode": "LXEfVKeX", "tierIndex": 98}' \
    > test.out 2>&1
eval_tap $? 41 'PublicClaimUserReward' test.out

#- 42 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'tU1eZr7D' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkClaimUserRewards' test.out

#- 43 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NtxkYHaK' \
    --userId '36rgibV1' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE