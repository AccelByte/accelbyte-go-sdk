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
echo "1..46"

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
    --limit '64' \
    --offset '11' \
    --status '["PUBLISHED", "DRAFT", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "azWGIhMjhoZS5TKS", "defaultRequiredExp": 3, "draftStoreId": "aGRukPmOG7wp7xn1", "end": "1984-03-20T00:00:00Z", "excessStrategy": {"currency": "PD3bAtmoXwcroTTS", "method": "NONE", "percentPerExp": 46}, "images": [{"as": "FwoeWSJoLgUMM0UD", "caption": "N5XW5rYzecukapUs", "height": 80, "imageUrl": "jrwCjqVfsv49S0EM", "smallImageUrl": "TwfsgmiE1ksx0WMl", "width": 5}, {"as": "ggSLpN5Ytq6FirjV", "caption": "fbUcG3FNCscHLd6K", "height": 10, "imageUrl": "Mzd27cOqhZ4hYjId", "smallImageUrl": "M7bF43dMP57XbGMG", "width": 81}, {"as": "m7s88xrwaPDV0Gix", "caption": "tVPM9BKK9QBFIjJd", "height": 58, "imageUrl": "sj2kSkt2wFNf7Zv7", "smallImageUrl": "jaRwxa2J0jYkvlhP", "width": 38}], "localizations": {"KDTU3WQuNYCFe8Qt": {"description": "XtaC1zqqgRaMLl7i", "title": "9z1lbJYv7tPgbPB2"}, "AzbgGiWSYPhdqlSc": {"description": "3dae4Yt2wurlCcpa", "title": "8NoyIVI6zfIlpoos"}, "3bCxngpd9Qnrgp5X": {"description": "XJ8ylSQje43vtwWg", "title": "lWQ6PIUuXEeQm5yF"}}, "name": "ftMict4XLdATy3sX", "start": "1981-03-19T00:00:00Z", "tierItemId": "ovCxcJzjPwmpAwcg"}' \
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
    --body '{"userIds": ["ApAoAO64077srsuo", "YKFx2BwgEW3BK3WD", "ZX5P9ftnNo7Oedln"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId '2iVgTyVixuqRG1sA' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xB2JNzAZiIehZnVh' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QKEHUpFbdfWJOTzf' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ny8u48GkT1WzjZ5O' \
    --body '{"autoClaim": true, "defaultLanguage": "lw6I2l4ZTx2lbxOa", "defaultRequiredExp": 36, "draftStoreId": "35rrEUydvVppf1Cr", "end": "1997-02-18T00:00:00Z", "excessStrategy": {"currency": "zm8IZJ6SJwjQQErP", "method": "CURRENCY", "percentPerExp": 93}, "images": [{"as": "H3uT8wzSv3uemf6r", "caption": "xn7HIUXMAoUpIWn7", "height": 10, "imageUrl": "fKibqLB58Cii1OMA", "smallImageUrl": "wxy9l2IlsxGYQ3xe", "width": 99}, {"as": "u3fSUNimTMXkxAJZ", "caption": "SijZtZ2rsr6yyWuT", "height": 58, "imageUrl": "6aviaERHGy4JqTgY", "smallImageUrl": "wbccVzqJWRZg5kVN", "width": 44}, {"as": "LmuZ30mu01WlpwVH", "caption": "bQEReWf9sCTG1o1z", "height": 20, "imageUrl": "ISuzNlfNl4gruW2s", "smallImageUrl": "IXlQQgDO5GcrxQfS", "width": 31}], "localizations": {"IIpMUwcrzt3xaVJU": {"description": "KtAblDLmM3EmGGLM", "title": "JerM52bVlUwhcRpI"}, "RJtOVsuRrjeCg5Ry": {"description": "WOIHGmZbs2wg2cAo", "title": "gwof6bTGws8OL9MN"}, "A2Zm4PkWqVctWntt": {"description": "UAm4UUzyl7uDcENN", "title": "riVm5BKRszETO7LK"}}, "name": "zlnz1zuSc7Y28nst", "start": "1994-03-11T00:00:00Z", "tierItemId": "8bEl1R34TWLAqi9r"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2YsBaoXaGcsWWVQq' \
    --body '{"end": "1982-12-28T00:00:00Z", "name": "DvU4GJdVjnnK0FrF", "start": "1972-09-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '64z38pK9PILYxtyv' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'AUHvpVVDclOyitts' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId '7W67VaKsvAsx5YXL' \
    --body '{"autoEnroll": true, "code": "VdOuXAYxHSWLExNZ", "displayOrder": 31, "images": [{"as": "R3JLjKado2ybDPSw", "caption": "87zo6j8fDLcOrl4U", "height": 95, "imageUrl": "U3koAHgwDGC5URJT", "smallImageUrl": "9Pw8Y6G3O2inkUoj", "width": 0}, {"as": "UUc4ZyqxIOuw3mTO", "caption": "xmYoLpb0a64ne2pZ", "height": 86, "imageUrl": "YZQXl1W1b446ufN8", "smallImageUrl": "YNvc5cUxBRNPMG2j", "width": 27}, {"as": "2EVTMyi5GFD63dlO", "caption": "NVvoY5sPPYIGpXrW", "height": 61, "imageUrl": "udAznleAG83DtPEp", "smallImageUrl": "97G5Bk78a2b1MOzL", "width": 84}], "localizations": {"zYi8jnGgd48NkKqF": {"description": "qi1h6Mg96Ha5jWrZ", "title": "1zvaBzXFASW85q5I"}, "MLOcJUgrCMYTa3uu": {"description": "fmwn54jlNNXHxlFS", "title": "49WCKzrkBBOQ1kAy"}, "nLv3kkpN5LV8TKln": {"description": "x22gLwNp3MSHcoqz", "title": "WUM1fs1NOI6qcoAf"}}, "passItemId": "uNsLNIHLA62378Kt"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'FcMkbEaEM2DXrhAi' \
    --namespace $AB_NAMESPACE \
    --seasonId 'fKodgN9VeiablvCe' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'Lp1i6JYY5K1hoXvO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kZ95S6Nu9E42KMH1' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'iRWiwyPYu4C3R5fU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'IeaVyaztYMNPIqFf' \
    --body '{"autoEnroll": true, "displayOrder": 93, "images": [{"as": "eDOtoZJmUUJHsUpa", "caption": "bxavrELidDK0eF66", "height": 57, "imageUrl": "8ppwBgssK1YJiEsa", "smallImageUrl": "73X1vdS1woPu4ehi", "width": 83}, {"as": "P9cmvemKlmo9bH8l", "caption": "JcSZvwTyPBRG073p", "height": 95, "imageUrl": "Q4Xg2zHblUSuiRRo", "smallImageUrl": "xleR3SDtolyVJRWH", "width": 46}, {"as": "hrRQ5DtRJ1B5scFS", "caption": "QKyCJPtfK1GzMMXX", "height": 93, "imageUrl": "7d71Po5SWhlzYO47", "smallImageUrl": "0DXJcfeFOXz4YZWM", "width": 46}], "localizations": {"2y49JJxNsDu07ST8": {"description": "823izCP4aSIkQXka", "title": "r2NTVRaJVXDPza1z"}, "D7pDVy7eyr2I9f7l": {"description": "kUig2KIWAtV2pLeN", "title": "86UnPsbKw3G0NcTY"}, "d8k0Lmulx3hWSPuS": {"description": "6gFJzEZzkQz4v5NH", "title": "BeEty6lgGFdOxqBV"}}, "passItemId": "vrWRI8fdQauS8jQk"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6uLSWGhGnzyf1A47' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dWjSSidpCRqV2GVB' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'cKBtgmGFShPzH7h7' \
    --q '1GaZJ7s7Jv294MAQ' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'dC2Wm7GkCusSFjaS' \
    --body '{"code": "FtXIECGk6D9Nsiwz", "currency": {"currencyCode": "JMJKOUaO3247wYuv", "namespace": "rP8ELD0zslCAxv3d"}, "image": {"as": "46scFeFkh1as7rUv", "caption": "DSZStXLpAv95sDUy", "height": 82, "imageUrl": "e3vXIK07SSIxsSSm", "smallImageUrl": "M9pGhO11kmUc8miM", "width": 16}, "itemId": "k9OLA5PfZh1aUSRs", "quantity": 71, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'TvF4a8v5d3mbhJxM' \
    --namespace $AB_NAMESPACE \
    --seasonId '9xPJ9XWXCmO91fjK' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '8sffjxSPsLqa3pH0' \
    --namespace $AB_NAMESPACE \
    --seasonId 'W9PNqyCbxcqfhqr7' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'BcXKXymz7C0lqhp9' \
    --namespace $AB_NAMESPACE \
    --seasonId 'JgP99rGu05PCeFYX' \
    --body '{"currency": {"currencyCode": "Tn0B59FHQ1WMcLwO", "namespace": "JncHrjnmcjIgfafY"}, "image": {"as": "C3QfM4ySkri1k3Gl", "caption": "pQC6DOpOzaE6UGCt", "height": 62, "imageUrl": "UCgKWOG1ztfcEpXd", "smallImageUrl": "Wc5clxunGA50cbys", "width": 99}, "itemId": "9ZAErqa74ukqZtsL", "nullFields": ["FpLOlQGLCx3nUIst", "hFmojYsZdiQvkxom", "fxnyi3oFmKgg6Axc"], "quantity": 59, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'Zo0kAIJN799sgck1' \
    --limit '7' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'MK8NhOUSoF9cmyOn' \
    --body '{"index": 54, "quantity": 96, "tier": {"requiredExp": 9, "rewards": {"pwKzVOEu11CCIFOI": ["1lYoWChOhqGPlCdw", "FM4p9Q4SMuXfSm9T", "tqQNSqhMQQxqTET2"], "HfurFFUv9BZb1BKg": ["o5oc7spZCbbuOIqx", "zqbuC8Zj1x7ApZFE", "wPI9VvlYR4mpSW3x"], "Mtfe68355EVErake": ["7SpvtE3ENI0gbnQk", "gGbI26IhxAXt95gu", "AD1QyWpt8Nr8UjZk"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'ZXa6tSZnGlEpgm6t' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ke0HcfcIeKsyvVAl' \
    --body '{"requiredExp": 32, "rewards": {"j2SJS6llsRiKgC1O": ["iuXOv8OjLl3Yjch8", "99eXAd4Y6osVOksU", "cQajVTdpSacbfmnc"], "bdLtGzyRkgM6MXlY": ["zelEVk5vYXjVkX26", "gPpLTrtZeBnE2eVD", "nL0LYgXueMiFpOeP"], "Dx5APNq0eiyMi3zI": ["b6I6YTvESTPuilSy", "eTaW5r96EgiPlibV", "6xJQEYTheJWcQKcT"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'R5rds0W5fPjgo11o' \
    --namespace $AB_NAMESPACE \
    --seasonId 'n8lSoxWTanQhnXUx' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'FOIhIOQrbVZlvVt3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'dmADp0HGxBRBpSTB' \
    --body '{"newIndex": 79}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'LYyWormJDiuL07DQ' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'rxeoxeboRJH2X75D' \
    --limit '8' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'x9gtu0XmiFd49Vk2' \
    --body '{"exp": 22, "source": "PAID_FOR", "tags": ["yDa7NjLBF5qn19OR", "hzkN5AoEDkCB5Uyh", "hECSURZgwRv7X1Vw"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'D9cDNkCuppt6XmqN' \
    --body '{"passCode": "t8RgsHp89vuxsAfa", "passItemId": "lMcFn8hj3mBJ4IrZ"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'r9bTDhL3Vup59Lcg' \
    --passCodes '["UdWpEzIfwQqHj4V6", "HGPa0YgdLcBaMQLS", "UYolFJFxfP7LFQDZ"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'kg7cpKqhTXxtBNAP' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '4scQJI7eFJJ1L5lP' \
    --body '{"passItemId": "njBZ0xWMtWjBlUGb", "tierItemCount": 60, "tierItemId": "zFXWrMHitQvlPvxa"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'ECe1kHV4dprt1Svp' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'CWZG2uG5IVWna4sy' \
    --body '{"count": 11, "source": "PAID_FOR", "tags": ["sIAwE5lsknw90L7m", "df8AeanI2XJRhgiP", "qqpU4opvOsViOapM"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'A54DO9wePkJmNWKV' \
    --from 'RfQaWbgmJ6ogFIyQ' \
    --limit '72' \
    --offset '48' \
    --seasonId 'Ney36CaxuNrPCHgw' \
    --source 'SWEAT' \
    --tags '["7iiMpQvOxsTzNbLz", "ZAfBTcJjJbYxpYJX", "R8MK84NDbIhXKQsQ"]' \
    --to 'WSmOnzSZXw29s64o' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'wUukCTNnXTDKtcPH' \
    --seasonId 't01t2RLBWJ2nN9Xt' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MiARIujq3RxPOaBy' \
    --userId 'qu9EM7gusRZRlQyu' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '9ISZczejCHW8IgGr' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'WAuYfCQJD1MPdxBS' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'PIBrnVOEGIK9AFk1' \
    --body '{"passCode": "b3D1dH8vAJbYHEeb", "rewardCode": "ZHGEWQ0AuGMFjjNS", "tierIndex": 57}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'SCE7u81uzE89a1d3' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'm8N2GEVnd2Iss0nu' \
    --userId '9hP4pGVWvW896hNu' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE