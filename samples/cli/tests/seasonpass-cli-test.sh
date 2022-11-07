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
    --limit '44' \
    --offset '56' \
    --status '["RETIRED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "p43kUqVa", "defaultRequiredExp": 83, "draftStoreId": "j3XSgVLS", "end": "1972-10-13T00:00:00Z", "excessStrategy": {"currency": "a8D9SSnu", "method": "CURRENCY", "percentPerExp": 76}, "images": [{"as": "Re1HyO3A", "caption": "5RTVdMAP", "height": 84, "imageUrl": "WyCiXEnl", "smallImageUrl": "2YHwTWDA", "width": 46}, {"as": "SIP6WDsQ", "caption": "FBviAqdt", "height": 34, "imageUrl": "IvTEYSTR", "smallImageUrl": "0sGKAaDv", "width": 20}, {"as": "aNTF6ba2", "caption": "exyi6E2u", "height": 92, "imageUrl": "1ahLuhkx", "smallImageUrl": "xbZuMe0O", "width": 29}], "localizations": {"mpq2ojbL": {"description": "V7XZKGMI", "title": "N5KRWc1k"}, "xVdBIIeq": {"description": "10T2YLbh", "title": "XTaD09hr"}, "u5OXwHuX": {"description": "SPllXBUh", "title": "aw3LO1re"}}, "name": "VDMivu4s", "start": "1987-12-29T00:00:00Z", "tierItemId": "SBXAokSs"}' \
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
    --body '{"userIds": ["QStc26Pl", "sNzuAu9U", "DviMuGcN"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jFMCtoqE' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jH0SSRfD' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'w6Qa7dWs' \
    --body '{"autoClaim": true, "defaultLanguage": "C8IcsPQh", "defaultRequiredExp": 32, "draftStoreId": "nC2IdCBa", "end": "1981-08-10T00:00:00Z", "excessStrategy": {"currency": "ZpB7pXRl", "method": "CURRENCY", "percentPerExp": 25}, "images": [{"as": "vciGOBhB", "caption": "hvv2IbHC", "height": 36, "imageUrl": "PPFWxDhC", "smallImageUrl": "lTBYqQcn", "width": 15}, {"as": "mHzc8PWD", "caption": "UlmXbAkn", "height": 51, "imageUrl": "nZuvHoSV", "smallImageUrl": "L1XzvSA1", "width": 100}, {"as": "FcUCB2V9", "caption": "2OpKlBgI", "height": 64, "imageUrl": "Z4ZQ8Oam", "smallImageUrl": "Ve1dVJ5n", "width": 13}], "localizations": {"ghGeqAuA": {"description": "Iu0I2blT", "title": "xVJtIuwl"}, "kQMi2Mb1": {"description": "U2IINWqg", "title": "zGpy9cOa"}, "92ZWcRvW": {"description": "Lz5ZylPi", "title": "cakS6ysx"}}, "name": "wng2tBe4", "start": "1971-02-08T00:00:00Z", "tierItemId": "anvyVAPN"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YDUQL5oZ' \
    --body '{"end": "1981-10-24T00:00:00Z", "name": "HqnKqEyw", "start": "1998-03-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pE9QtHYN' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'MZnN7rVs' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'applgbvT' \
    --body '{"autoEnroll": false, "code": "GP6SwoOV", "displayOrder": 79, "images": [{"as": "9muIPCKR", "caption": "umq4bHbK", "height": 42, "imageUrl": "xF5AEQD6", "smallImageUrl": "Z5TSrTFX", "width": 88}, {"as": "pZ2kdrxt", "caption": "OlJqxNFq", "height": 99, "imageUrl": "YDOFdqS0", "smallImageUrl": "JeFSCkuv", "width": 14}, {"as": "GME7rKkf", "caption": "10Lio7S1", "height": 96, "imageUrl": "Q4bjJHYE", "smallImageUrl": "Z5PxVlkY", "width": 79}], "localizations": {"GUDYcnM7": {"description": "L5Zu0lcR", "title": "e7KSUfGp"}, "4PIHkEbl": {"description": "hQS89qPs", "title": "qEIhE124"}, "OQpINYE2": {"description": "mb3eDsP2", "title": "qOJgH2Pi"}}, "passItemId": "9pDCmNNK"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'IXkEqGgv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KduQ1Vam' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'NME7wfPV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'WrXMAE8w' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'W6Eu1rHD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'IRTB7I7r' \
    --body '{"autoEnroll": false, "displayOrder": 20, "images": [{"as": "7GauqnCb", "caption": "gHcF8gNb", "height": 35, "imageUrl": "GcDBCeVe", "smallImageUrl": "8suzWgzv", "width": 41}, {"as": "nxD3Hpet", "caption": "EltwNOtX", "height": 12, "imageUrl": "RRJoPFnM", "smallImageUrl": "Zok5E3T5", "width": 65}, {"as": "Co2adOKG", "caption": "oqDMnWFx", "height": 67, "imageUrl": "FqFSwZqY", "smallImageUrl": "zRelR0vf", "width": 77}], "localizations": {"jrzniJ9X": {"description": "cwjdLRnU", "title": "fnryRJS1"}, "7jajOioZ": {"description": "4uxrBH4T", "title": "boUqk8Wq"}, "bFzhGj91": {"description": "XNkPRpfB", "title": "ax1OQzu7"}}, "passItemId": "NT9qzCtO"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HLS5ljLE' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Mjpklz8B' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'quJDC5sO' \
    --q 'e6SY8Zhl' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'az3EzoBI' \
    --body '{"code": "MMO451sC", "currency": {"currencyCode": "GgpcfJpc", "namespace": "Vf8Sp0y9"}, "image": {"as": "7MdqLh0D", "caption": "La6ATvPB", "height": 40, "imageUrl": "xuAuPxi2", "smallImageUrl": "Kk7RNZuF", "width": 93}, "itemId": "JGAkXFUX", "quantity": 23, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'YWgMhGqR' \
    --namespace $AB_NAMESPACE \
    --seasonId 'QyZ9RYtn' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'tW4X6YQB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'STobJldF' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'N8KHd9TN' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Uj98yeFX' \
    --body '{"currency": {"currencyCode": "IJIIAsez", "namespace": "MTGJhY0O"}, "image": {"as": "4Ul7YRcn", "caption": "i5AhJgVN", "height": 17, "imageUrl": "WPaduaaN", "smallImageUrl": "rySqgljk", "width": 11}, "itemId": "V3GS1Ryr", "nullFields": ["NUdna9VE", "wUdBCSJI", "jwG53Tqy"], "quantity": 89, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'kcl8Mtjj' \
    --limit '47' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'Qo9q7itr' \
    --body '{"index": 94, "quantity": 7, "tier": {"requiredExp": 80, "rewards": {"5wmvhq17": ["GoBjxun3", "Gyk9Fdqk", "ocaLNrX2"], "D7duUxDo": ["XoOloUQQ", "LkkJe434", "Ea4mJpp0"], "ntZZMztt": ["c7DnqOUw", "5Q7Cu9C6", "u1qiQ1hS"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'Px5ZwwwS' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KotclZMh' \
    --body '{"requiredExp": 43, "rewards": {"wyXqhQ50": ["ifHetawu", "wQVdwz2T", "toVIJ9Q7"], "fwG0mLIH": ["6XgpdvFC", "JLAeLfcx", "4VcozkEy"], "1sjWbtwj": ["TPuJVlGm", "mC45BZZT", "xENPSh5Q"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'bLdw2boQ' \
    --namespace $AB_NAMESPACE \
    --seasonId '1btPIF2b' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'vn07pVM5' \
    --namespace $AB_NAMESPACE \
    --seasonId 'qo4oESIC' \
    --body '{"newIndex": 30}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'EVcEIAO0' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'sfzlaJHb' \
    --limit '90' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '6Em018Xv' \
    --body '{"exp": 46, "source": "PAID_FOR", "tags": ["mPnqkP6Q", "jedGrZq8", "gEzq03Fx"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'eqCTwcwe' \
    --body '{"passCode": "IpTVVadE", "passItemId": "oGdOLOAw"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId '0QNuavO4' \
    --passCodes '["CYGUNDs3", "mi7zX6KC", "iVHwarBa"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'zrDWj769' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'lu7aYhAA' \
    --body '{"passItemId": "fv8BqpwD", "tierItemCount": 73, "tierItemId": "yQkQGQyJ"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'B0vrxFMQ' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'YRIWsmRe' \
    --body '{"count": 32, "source": "PAID_FOR", "tags": ["laV1OCUp", "AvgwLlts", "CvxVu6yc"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '7mqc9EU1' \
    --from 'mnCc8r1h' \
    --limit '40' \
    --offset '53' \
    --seasonId 'wvN7vSv3' \
    --source 'SWEAT' \
    --tags '["xXiotZtA", "ww8rUFS4", "oIw3QFsd"]' \
    --to 'RuamP1PA' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'KWAAWm2r' \
    --seasonId 'L3NZg4Rq' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'iJV8jYxL' \
    --userId '4UbRLPyB' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'ZirMyTI5' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'OURe4I7M' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'LNuiU5mS' \
    --body '{"passCode": "KHwPxrlp", "rewardCode": "S1gUbkcA", "tierIndex": 72}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Fl0RwCsc' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lOkSOsfa' \
    --userId 'N1SJDMYX' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE