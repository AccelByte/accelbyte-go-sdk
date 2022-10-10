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
    --limit '48' \
    --offset '99' \
    --status '["PUBLISHED", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "yhRdlh7y", "defaultRequiredExp": 12, "draftStoreId": "rruXF4JV", "end": "1980-07-01T00:00:00Z", "excessStrategy": {"currency": "SeZP8oYn", "method": "NONE", "percentPerExp": 40}, "images": [{"as": "TWAtFzmE", "caption": "F12DmF7B", "height": 80, "imageUrl": "pIJ78uSZ", "smallImageUrl": "PkkG58fV", "width": 42}, {"as": "xMOKzyDS", "caption": "KriOUJj7", "height": 7, "imageUrl": "pqk9UvAN", "smallImageUrl": "WZXPvMlL", "width": 100}, {"as": "GF9g9Dfs", "caption": "OezRgtkJ", "height": 72, "imageUrl": "l1zbTzRh", "smallImageUrl": "8hxQHnlc", "width": 99}], "localizations": {"1VRxeSO5": {"description": "2zHjdda5", "title": "tj3uTztO"}, "UJHQscYO": {"description": "Ja38f3F3", "title": "AyKCXNFS"}, "smDWryfd": {"description": "PZrO6ctb", "title": "apGlZGSo"}}, "name": "lJF93e7l", "start": "1984-03-20T00:00:00Z", "tierItemId": "KK3t2hwT"}' \
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
    --seasonId 'Q4F1d2HZ' \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CffRf87K' \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vguTVu53' \
    --body '{"autoClaim": true, "defaultLanguage": "wJnpN0iO", "defaultRequiredExp": 78, "draftStoreId": "nQ1AYDEo", "end": "1988-12-21T00:00:00Z", "excessStrategy": {"currency": "uFxtLa3S", "method": "NONE", "percentPerExp": 42}, "images": [{"as": "gjHfNZF6", "caption": "F6dcRNo3", "height": 81, "imageUrl": "ESujmcd7", "smallImageUrl": "fTdKqFPF", "width": 36}, {"as": "zdZnr0Hd", "caption": "bm2fa09w", "height": 12, "imageUrl": "OPVQX8Km", "smallImageUrl": "Ryy77r7i", "width": 83}, {"as": "m78obFwc", "caption": "GSg9Z2HX", "height": 79, "imageUrl": "393ayVLW", "smallImageUrl": "ZXJwRqX0", "width": 89}], "localizations": {"RAjt3HWz": {"description": "yWjgNmv2", "title": "AiMbXWXo"}, "Fzfk9cAt": {"description": "s87H2EyJ", "title": "y1bpsLpM"}, "MuAaqthE": {"description": "HWTTQ7yx", "title": "juhidiQw"}}, "name": "18WEV9pb", "start": "1987-01-27T00:00:00Z", "tierItemId": "DVpMvWxm"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HNvJsrc5' \
    --body '{"end": "1991-08-22T00:00:00Z", "name": "7EeQwGkw", "start": "1996-12-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0NbQe3es' \
    > test.out 2>&1
eval_tap $? 9 'GetFullSeason' test.out

#- 10 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'w47gjzh0' \
    > test.out 2>&1
eval_tap $? 10 'QueryPasses' test.out

#- 11 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'KBC8ZUs8' \
    --body '{"autoEnroll": true, "code": "sEztYp1l", "displayOrder": 37, "images": [{"as": "nHlBvw4J", "caption": "1oCNaaXF", "height": 48, "imageUrl": "BafF7CMH", "smallImageUrl": "W6HuK17J", "width": 41}, {"as": "oyEfoaPU", "caption": "5n06wtUf", "height": 60, "imageUrl": "bM2TJfO9", "smallImageUrl": "YeIt2z90", "width": 22}, {"as": "He0Oy6Pe", "caption": "A4di0utf", "height": 70, "imageUrl": "ThADkkiO", "smallImageUrl": "Y99lDPBQ", "width": 43}], "localizations": {"mGleBYeO": {"description": "vry7pn5T", "title": "bwGyQ8p7"}, "dg9ZOPJa": {"description": "g8D3vIZZ", "title": "nXTDMlno"}, "OgtRqrV6": {"description": "oFCjjAvI", "title": "Q3fIxTxJ"}}, "passItemId": "0OafG1fh"}' \
    > test.out 2>&1
eval_tap $? 11 'CreatePass' test.out

#- 12 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'H5pxlWt7' \
    --namespace $AB_NAMESPACE \
    --seasonId 'QIxQRSQb' \
    > test.out 2>&1
eval_tap $? 12 'GetPass' test.out

#- 13 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'I1LTnTNx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'AVaBwqin' \
    > test.out 2>&1
eval_tap $? 13 'DeletePass' test.out

#- 14 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'u1ncyCOk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'tMW3HTl5' \
    --body '{"autoEnroll": true, "displayOrder": 90, "images": [{"as": "lRFA28Dn", "caption": "qexVNx0V", "height": 35, "imageUrl": "gwHhxETX", "smallImageUrl": "KKp2tATi", "width": 94}, {"as": "xwXwfaUl", "caption": "fFZrHQZs", "height": 98, "imageUrl": "YdmBkuPL", "smallImageUrl": "Y8DsRqy3", "width": 87}, {"as": "mmsfrdsK", "caption": "27K4oDOU", "height": 56, "imageUrl": "zcI3hqy4", "smallImageUrl": "Xy2YB2Fo", "width": 62}], "localizations": {"tQtYkzwA": {"description": "uC6oKb8v", "title": "t8Es3rRx"}, "qa5F8qws": {"description": "oBOJJ8fy", "title": "JGM37EXF"}, "J1gHTuMc": {"description": "ZovEVt0V", "title": "Z6Z21Mx1"}}, "passItemId": "KNFL1yNt"}' \
    > test.out 2>&1
eval_tap $? 14 'UpdatePass' test.out

#- 15 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '53jLsH30' \
    > test.out 2>&1
eval_tap $? 15 'PublishSeason' test.out

#- 16 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FHuwVv16' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 16 'RetireSeason' test.out

#- 17 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'HXfusPHt' \
    --q 'BOg5pz1m' \
    > test.out 2>&1
eval_tap $? 17 'QueryRewards' test.out

#- 18 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'wkTbP2l8' \
    --body '{"code": "1F4SsUPK", "currency": {"currencyCode": "5hKsu9i7", "namespace": "Rupf71Uk"}, "image": {"as": "GHp2yeh7", "caption": "U3urrOnT", "height": 94, "imageUrl": "WbGcq3IO", "smallImageUrl": "ULbkTTG2", "width": 69}, "itemId": "rYkSy8nB", "quantity": 1, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateReward' test.out

#- 19 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '7hueJARp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TO7lql0B' \
    > test.out 2>&1
eval_tap $? 19 'GetReward' test.out

#- 20 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'H6Xu1eas' \
    --namespace $AB_NAMESPACE \
    --seasonId '6JCu2NOm' \
    > test.out 2>&1
eval_tap $? 20 'DeleteReward' test.out

#- 21 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'ABmEgsFg' \
    --namespace $AB_NAMESPACE \
    --seasonId 'St4gHoNs' \
    --body '{"currency": {"currencyCode": "vXdZ0M98", "namespace": "PPzg2HzA"}, "image": {"as": "wwsMBFhq", "caption": "rvZsBlJW", "height": 9, "imageUrl": "t6YBtCDZ", "smallImageUrl": "S6pkwYcn", "width": 77}, "itemId": "ls61Z4OX", "nullFields": ["TWxDSpIg", "Gq9LiyYy", "f0c9vFcY"], "quantity": 30, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateReward' test.out

#- 22 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '6Uycwhnz' \
    --limit '83' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 22 'QueryTiers' test.out

#- 23 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '9S6VaZYL' \
    --body '{"index": 32, "quantity": 35, "tier": {"requiredExp": 64, "rewards": {"MKKY9Ags": ["GIwKlfLs", "2VM2u8XP", "gWeOw1Hl"], "7s1xWuUi": ["zKJzvIJQ", "qIDJdNHN", "MTpsLO3B"], "cldp6eqB": ["nuHSVJ2n", "5T8deV8U", "PgfMSb92"]}}}' \
    > test.out 2>&1
eval_tap $? 23 'CreateTier' test.out

#- 24 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '5UXVsJo8' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Tr68vDu4' \
    --body '{"requiredExp": 17, "rewards": {"B5DVGlsd": ["PJVceEdJ", "OLFFJBEN", "85180int"], "C3U0iTFE": ["GE6Fxqd7", "OZ5SCdwj", "PmIvwGdU"], "BX3sgufK": ["5Y1ZkHIF", "WDHUTi9H", "i8TeEQSe"]}}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateTier' test.out

#- 25 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'Ud3U8LMu' \
    --namespace $AB_NAMESPACE \
    --seasonId '3O0Bpysl' \
    > test.out 2>&1
eval_tap $? 25 'DeleteTier' test.out

#- 26 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'FagWi7cJ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'T2UR1soh' \
    --body '{"newIndex": 82}' \
    > test.out 2>&1
eval_tap $? 26 'ReorderTier' test.out

#- 27 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xtbtlwV4' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 27 'UnpublishSeason' test.out

#- 28 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'lgv4kaMB' \
    --limit '81' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 28 'GetUserParticipatedSeasons' test.out

#- 29 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'uYyqnKP9' \
    --body '{"exp": 3, "source": "PAID_FOR", "tags": ["gS9rHWfo", "3mD3frm3", "CnQmaeN9"]}' \
    > test.out 2>&1
eval_tap $? 29 'GrantUserExp' test.out

#- 30 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '6t8x2vse' \
    --body '{"passCode": "o2kCfWWN", "passItemId": "O62ZM3S2"}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserPass' test.out

#- 31 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'CnRerynV' \
    --passCodes '["ZA5SDY2x", "R8ur71DO", "z8aoknlT"]' \
    > test.out 2>&1
eval_tap $? 31 'ExistsAnyPassByPassCodes' test.out

#- 32 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'xiW4EL3x' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentUserSeasonProgression' test.out

#- 33 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'xTkvXcKx' \
    --body '{"passItemId": "OpdZhrTn", "tierItemCount": 55, "tierItemId": "KxfDcfhd"}' \
    > test.out 2>&1
eval_tap $? 33 'CheckSeasonPurchasable' test.out

#- 34 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'LduuxOkX' \
    > test.out 2>&1
eval_tap $? 34 'ResetUserSeason' test.out

#- 35 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'ES8WBUvB' \
    --body '{"count": 77, "source": "SWEAT", "tags": ["ddE6xmPR", "RKFgcvRZ", "oSrWpG5Q"]}' \
    > test.out 2>&1
eval_tap $? 35 'GrantUserTier' test.out

#- 36 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'wlDnZlwg' \
    --from 'tRDCUvCP' \
    --limit '23' \
    --offset '14' \
    --seasonId '9DZoeeSX' \
    --source 'SWEAT' \
    --tags '["UD1wuX9V", "FTwbklde", "dY2gF4HQ"]' \
    --to 'Orexs8Do' \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistory' test.out

#- 37 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'SVGCUZCa' \
    --seasonId 'elCK24ZA' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistoryTag' test.out

#- 38 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'WoRqaY6O' \
    --userId 'ARgntWCN' \
    > test.out 2>&1
eval_tap $? 38 'GetUserSeason' test.out

#- 39 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'X3ZhMK3d' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentSeason' test.out

#- 40 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'AoPTsXDO' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentUserSeason' test.out

#- 41 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'eu8EqgKG' \
    --body '{"passCode": "2HJvDWYh", "rewardCode": "WBT9m6zc", "tierIndex": 20}' \
    > test.out 2>&1
eval_tap $? 41 'PublicClaimUserReward' test.out

#- 42 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'JxIO93dI' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkClaimUserRewards' test.out

#- 43 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lWvuihQf' \
    --userId 'fuGqEh6m' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE