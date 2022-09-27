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
    --limit '0' \
    --offset '41' \
    --status '["DRAFT", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "xjJsC2tm", "defaultRequiredExp": 48, "draftStoreId": "FLlHblkj", "end": "1980-08-17T00:00:00Z", "excessStrategy": {"currency": "x9gaPbun", "method": "NONE", "percentPerExp": 2}, "images": [{"as": "J50g0DcZ", "caption": "F0pj7eu0", "height": 98, "imageUrl": "f1G4oqVX", "smallImageUrl": "eC9ZUW5P", "width": 68}, {"as": "wA0hYwWo", "caption": "UIvMm5kU", "height": 27, "imageUrl": "6r02t1XF", "smallImageUrl": "AAvvqROb", "width": 38}, {"as": "taU9F61h", "caption": "pagIovV0", "height": 65, "imageUrl": "aiZt1xhJ", "smallImageUrl": "4E40ln2u", "width": 64}], "localizations": {"q2ORo7a7": {"description": "Hnp9uphF", "title": "ee66MXOK"}, "Ccz0n7j3": {"description": "s2YuaqCQ", "title": "biBbB61i"}, "6kqi1dP5": {"description": "bzt4LelJ", "title": "XDXdOZJA"}}, "name": "XPLNkHxR", "start": "1999-02-02T00:00:00Z", "tierItemId": "YX2Lx7ls"}' \
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
    --seasonId 'bXppO7jK' \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xO1DHdRx' \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dCL3uBts' \
    --body '{"autoClaim": false, "defaultLanguage": "ZoFulfKA", "defaultRequiredExp": 13, "draftStoreId": "cdNoaQrb", "end": "1973-04-02T00:00:00Z", "excessStrategy": {"currency": "RyTpyE2m", "method": "CURRENCY", "percentPerExp": 95}, "images": [{"as": "J7bwt0BL", "caption": "8ZzTGnRN", "height": 92, "imageUrl": "p8d78Iqj", "smallImageUrl": "cXS62s1y", "width": 6}, {"as": "Phxhafw8", "caption": "YfhudDOc", "height": 78, "imageUrl": "dqQ8bQzn", "smallImageUrl": "E6BVEAUE", "width": 43}, {"as": "202trVvg", "caption": "JopduAl2", "height": 52, "imageUrl": "1nz5pDuE", "smallImageUrl": "6ZrY2y0C", "width": 92}], "localizations": {"6tRYyOsw": {"description": "LNwRK9tQ", "title": "Y1JCdOCz"}, "oF726hex": {"description": "FbEYIFdL", "title": "R7T1K0Ns"}, "2SD7Y8Gm": {"description": "sl1MaG9O", "title": "POcD14iz"}}, "name": "ugNBLJmH", "start": "1996-07-22T00:00:00Z", "tierItemId": "NewoWhxL"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IpfQqKRH' \
    --body '{"end": "1996-10-27T00:00:00Z", "name": "zNEhP20g", "start": "1986-07-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'SjoFoP1s' \
    > test.out 2>&1
eval_tap $? 9 'GetFullSeason' test.out

#- 10 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'gFhrPFDW' \
    > test.out 2>&1
eval_tap $? 10 'QueryPasses' test.out

#- 11 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'x31ecmj5' \
    --body '{"autoEnroll": true, "code": "6LztoiES", "displayOrder": 65, "images": [{"as": "9FznU1gr", "caption": "KvjW2B8W", "height": 2, "imageUrl": "n98jHtXG", "smallImageUrl": "lMRE9lPK", "width": 90}, {"as": "HkbEiiFX", "caption": "u8Nh5kg8", "height": 41, "imageUrl": "9VJE5EQF", "smallImageUrl": "kiiai4mB", "width": 29}, {"as": "O1FiUZxs", "caption": "B0VzXQSA", "height": 70, "imageUrl": "aOv5lPNC", "smallImageUrl": "CM4bf93x", "width": 68}], "localizations": {"LWCXIqCA": {"description": "cGuEIHYS", "title": "iYYCZ9Gn"}, "Pn2mCz9k": {"description": "LnlSqZF1", "title": "yTDvTQik"}, "Avaly5Gy": {"description": "J3oFvLvR", "title": "exuqUqGQ"}}, "passItemId": "bUnJy8Cx"}' \
    > test.out 2>&1
eval_tap $? 11 'CreatePass' test.out

#- 12 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'On18Sw7B' \
    --namespace $AB_NAMESPACE \
    --seasonId '4h3CC9Hr' \
    > test.out 2>&1
eval_tap $? 12 'GetPass' test.out

#- 13 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'HxCDfweP' \
    --namespace $AB_NAMESPACE \
    --seasonId 'yvzBCv2T' \
    > test.out 2>&1
eval_tap $? 13 'DeletePass' test.out

#- 14 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'nreReIMf' \
    --namespace $AB_NAMESPACE \
    --seasonId 'JVQN4qLc' \
    --body '{"autoEnroll": true, "displayOrder": 78, "images": [{"as": "TwFmClOC", "caption": "CaqPdpQF", "height": 81, "imageUrl": "EIc7EQ1o", "smallImageUrl": "E6vi9KUn", "width": 37}, {"as": "db6hWv7U", "caption": "4afILDla", "height": 13, "imageUrl": "jD5OrdLP", "smallImageUrl": "hMnL16GT", "width": 52}, {"as": "iyHiJjzT", "caption": "xwNp8Tl4", "height": 48, "imageUrl": "hXmbZIlv", "smallImageUrl": "Csqn8Fvi", "width": 89}], "localizations": {"UfLWkMIh": {"description": "NpfkUktx", "title": "tfsTXUNX"}, "gff3qnx1": {"description": "RsVn7Mpu", "title": "bEDoaEO1"}, "GMgpSycQ": {"description": "oz235p0U", "title": "2JREPHxG"}}, "passItemId": "I3CmNdg4"}' \
    > test.out 2>&1
eval_tap $? 14 'UpdatePass' test.out

#- 15 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KDzSpdeW' \
    > test.out 2>&1
eval_tap $? 15 'PublishSeason' test.out

#- 16 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'o8eVI91X' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 16 'RetireSeason' test.out

#- 17 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'tEhKrJc2' \
    --q 'ilqr6hkB' \
    > test.out 2>&1
eval_tap $? 17 'QueryRewards' test.out

#- 18 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'NPkL5FTb' \
    --body '{"code": "2owsVOZv", "currency": {"currencyCode": "3cZhgbQn", "namespace": "lH8XTrJL"}, "image": {"as": "Em9tvd30", "caption": "x0uc8Tqm", "height": 57, "imageUrl": "15gx9UAp", "smallImageUrl": "EjpTg5eF", "width": 26}, "itemId": "wa0Pk6G9", "quantity": 40, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateReward' test.out

#- 19 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'nr0c68Xf' \
    --namespace $AB_NAMESPACE \
    --seasonId 'eofy1vHB' \
    > test.out 2>&1
eval_tap $? 19 'GetReward' test.out

#- 20 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'BwrZqO31' \
    --namespace $AB_NAMESPACE \
    --seasonId 'D8TTraot' \
    > test.out 2>&1
eval_tap $? 20 'DeleteReward' test.out

#- 21 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'eNl4OjlU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'S2OSy2JX' \
    --body '{"currency": {"currencyCode": "VRYt1H8x", "namespace": "dUBb41Ea"}, "image": {"as": "vw1HNTrM", "caption": "KAk88KRs", "height": 40, "imageUrl": "JAVoRyAs", "smallImageUrl": "9yBj9F3g", "width": 15}, "itemId": "IpH1RkAg", "nullFields": ["bnZBsHqy", "PjQZlFsD", "MhWXMYNm"], "quantity": 90, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateReward' test.out

#- 22 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '0egWr19W' \
    --limit '13' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 22 'QueryTiers' test.out

#- 23 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'q5vyKBC6' \
    --body '{"index": 42, "quantity": 58, "tier": {"requiredExp": 99, "rewards": {"UJOvJe9d": ["7hRuubj2", "P8A7z9qb", "zoApfUsL"], "nWiMkCzj": ["FiTnzZPz", "lJ1Xm2oe", "4BrE8A3r"], "OLUiqMSk": ["I81AFzPF", "ZOmBlfLF", "ADCt7Nyj"]}}}' \
    > test.out 2>&1
eval_tap $? 23 'CreateTier' test.out

#- 24 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '3PgqyWzk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'mmKu3R3s' \
    --body '{"requiredExp": 61, "rewards": {"s4vaPozJ": ["UVyNtRkd", "8MblH6fd", "wFOPDcDE"], "uQ1NAWoV": ["OynGY8XB", "uhGGxEYE", "MDz5nLRh"], "wN7B4mKY": ["GqitGpah", "Jc7hwRIR", "zMQpRxRs"]}}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateTier' test.out

#- 25 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'sUNq7arG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'S1WyH6ge' \
    > test.out 2>&1
eval_tap $? 25 'DeleteTier' test.out

#- 26 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'XKvBTswY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ssMbI9Y1' \
    --body '{"newIndex": 66}' \
    > test.out 2>&1
eval_tap $? 26 'ReorderTier' test.out

#- 27 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qwDM6L0A' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 27 'UnpublishSeason' test.out

#- 28 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'cwUh17mQ' \
    --limit '36' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 28 'GetUserParticipatedSeasons' test.out

#- 29 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'bNUO5dxS' \
    --body '{"exp": 95, "source": "PAID_FOR", "tags": ["lwUdDBUy", "781YsYUl", "Trp8hT2T"]}' \
    > test.out 2>&1
eval_tap $? 29 'GrantUserExp' test.out

#- 30 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'pS9btToH' \
    --body '{"passCode": "nG4s6FaC", "passItemId": "pwVXGUSC"}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserPass' test.out

#- 31 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 't62yYnJK' \
    --passCodes '["Jk4h7JFZ", "tbeNs4LW", "pmUNUGVC"]' \
    > test.out 2>&1
eval_tap $? 31 'ExistsAnyPassByPassCodes' test.out

#- 32 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'wPD2ZqBG' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentUserSeasonProgression' test.out

#- 33 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'sOT2ZfT1' \
    --body '{"passItemId": "vG2pUfVz", "tierItemCount": 33, "tierItemId": "5QEC5o3i"}' \
    > test.out 2>&1
eval_tap $? 33 'CheckSeasonPurchasable' test.out

#- 34 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'UlSnGE2I' \
    > test.out 2>&1
eval_tap $? 34 'ResetUserSeason' test.out

#- 35 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'q7SllgPh' \
    --body '{"count": 5, "source": "PAID_FOR", "tags": ["h3cezFgH", "mgabUyVK", "qewZWf6n"]}' \
    > test.out 2>&1
eval_tap $? 35 'GrantUserTier' test.out

#- 36 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'yZIIxDoE' \
    --from 'asjMKdxq' \
    --limit '35' \
    --offset '47' \
    --seasonId '9UBmBcd7' \
    --source 'PAID_FOR' \
    --tags '["bTRcE1HP", "XshSz32N", "VeIewBxU"]' \
    --to 'gczY5bD5' \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistory' test.out

#- 37 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'XevyzhVd' \
    --seasonId '8BSjIARZ' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistoryTag' test.out

#- 38 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6hL2uP5J' \
    --userId 'BbPRyPdb' \
    > test.out 2>&1
eval_tap $? 38 'GetUserSeason' test.out

#- 39 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'YETUildq' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentSeason' test.out

#- 40 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'fLZrM8yu' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentUserSeason' test.out

#- 41 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'L6EBY6ys' \
    --body '{"passCode": "RDVNg4H9", "rewardCode": "DH9e4EwV", "tierIndex": 24}' \
    > test.out 2>&1
eval_tap $? 41 'PublicClaimUserReward' test.out

#- 42 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'vLwU7G6j' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkClaimUserRewards' test.out

#- 43 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ae2DCYhN' \
    --userId 'd1pg3qvq' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE