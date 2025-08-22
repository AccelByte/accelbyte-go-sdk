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
    --limit '52' \
    --offset '63' \
    --status '["DRAFT", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "zE88k61rrgqHADjY", "defaultRequiredExp": 92, "draftStoreId": "6JEivim2xmsTolrx", "end": "1977-07-27T00:00:00Z", "excessStrategy": {"currency": "9SWxqUIUXxn2hSXI", "method": "CURRENCY", "percentPerExp": 69}, "images": [{"as": "i5iMqloFJXbfiNpU", "caption": "T3KTxssymmRjSBHD", "height": 86, "imageUrl": "u1HfwiEwIhcTIhnY", "smallImageUrl": "0oPxCeoQAACqbkwz", "width": 21}, {"as": "8zXV4xCm6olDEWvI", "caption": "ye1MxnmlMep7BTHf", "height": 69, "imageUrl": "U7cKCouuTFQBQcMv", "smallImageUrl": "02FjmWZ9YOfkUzZy", "width": 100}, {"as": "QEhZ2E2l3L7QQXUM", "caption": "55WtaMiLUEFHaudS", "height": 15, "imageUrl": "72k4ZUhZM1Ui9zMO", "smallImageUrl": "KaQAtfoR0d6Jdvyr", "width": 89}], "localizations": {"rY58g6ObjTOJHbzX": {"description": "kPE9mA0V9e0xdDiq", "title": "gCRFSCcEBn178a1F"}, "45jQwMWvW09xiD1F": {"description": "ddBCzEKz1tm79Wcc", "title": "ww5TbDah21NtZ0fH"}, "HThx7EgQDT0bUTaT": {"description": "5GZOBEKPFyV6TyNC", "title": "aRgmLrIZ5uj5Isv9"}}, "name": "kdXf8RH7aae2hiwj", "start": "1971-01-16T00:00:00Z", "tierItemId": "Dpz70TGjkC0srTA2"}' \
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
    --body '{"userIds": ["LD0jEYNsovoxRM4T", "EEaQpi22BhNaPRA0", "yZJkVjtaktjmoz6y"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'shwdgC32R1YI3OE5' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jik0YO4lh2txABRj' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'O0kOcLGov9Y4rnti' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KzTyFe0NxyzraWN7' \
    --body '{"autoClaim": false, "defaultLanguage": "wnSZQkmDiy5nHQ4S", "defaultRequiredExp": 90, "draftStoreId": "sXdeGWXeUvJm2MFa", "end": "1998-09-10T00:00:00Z", "excessStrategy": {"currency": "tE9ACIhfLd2qSTLF", "method": "CURRENCY", "percentPerExp": 99}, "images": [{"as": "o0HzoHt8yKKXF38e", "caption": "977E1NFQqnsqrQNJ", "height": 34, "imageUrl": "E7TUNhgDmQj8pJUy", "smallImageUrl": "FYoDI8NrQwbd6rgG", "width": 87}, {"as": "fQ6iP4QM7hq8fnut", "caption": "gDjM6odwyo4JSHJy", "height": 55, "imageUrl": "Bs7fdQXkUFm1OhG9", "smallImageUrl": "c63YwPAljEvYIhyp", "width": 46}, {"as": "v303Mrk3Ms1zDjFv", "caption": "jfSKyOxR17QMXLeO", "height": 79, "imageUrl": "9pnnP2sR8Rk3xZNn", "smallImageUrl": "NNczAeupanTSCmhm", "width": 9}], "localizations": {"5cXifIIKdeMj3xlc": {"description": "OfXPD9solIqGUn5J", "title": "q9tDKoQUb3uYbHYu"}, "fQ0dGChpBMxqan7x": {"description": "Jk0z6HUGuh3rJ3Ke", "title": "2WFNzUOQNooRYlaS"}, "xL3D2wtOgTs4ghgm": {"description": "8GBCj8PCHQCR8hd7", "title": "sMFozNJR5VgrmWPp"}}, "name": "SMEOGblV6Te3Fguq", "start": "1986-08-03T00:00:00Z", "tierItemId": "QwleKBfkgotGbmBx"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MmBia955eo4hLJrE' \
    --body '{"end": "1972-08-15T00:00:00Z", "name": "MBa8Luxwo9dXhFeW", "start": "1998-03-05T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NsGaLzImefjOl898' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'vtRMr3KAJM9c12r8' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'Fjobd86Lnm7qLwtz' \
    --body '{"autoEnroll": false, "code": "TQ0KMr7cyrd8DeSm", "displayOrder": 29, "images": [{"as": "YzbVgZeOQgjiDVWb", "caption": "qaycyFI4yLZPcbGj", "height": 27, "imageUrl": "AUTjOKVRg17TJzQk", "smallImageUrl": "OEm4PGJAcEdlv0aY", "width": 75}, {"as": "5BwCKluP3yW0lj2U", "caption": "90oXjX7o0pHBikPJ", "height": 79, "imageUrl": "wlq9e9HQDvI88Hfe", "smallImageUrl": "aQPMDizFyjeVkwXy", "width": 78}, {"as": "eRYg0k2w5aI2ra1f", "caption": "2lIaFwzOmLyoGFB9", "height": 37, "imageUrl": "Z5gcujW2KFpvMqX4", "smallImageUrl": "Q3bDLCmwNtFJKWtX", "width": 72}], "localizations": {"70p3VRfWGF5Y9xub": {"description": "jhTNoODsHRA9SS1T", "title": "E10pntjR88HhuUT8"}, "8yAPb3ZYezLpyWhI": {"description": "MgbSquGLS1nn2mAS", "title": "YzYzQK1qEkmt0rsT"}, "ZU54hoAidJh5hMLz": {"description": "7FfZojEHah3TD75V", "title": "UweTrpb7b5BlhCKB"}}, "passItemId": "SpFSeKbNUHFX0tvx"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'vEXkcqckJrkKcI0S' \
    --namespace $AB_NAMESPACE \
    --seasonId 'tNickiyWPs6DG4Fs' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'IJjoIJixJFYM7SIm' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SY4pb0HTL62xYS6f' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'c1LcRBVjAdnIpOnz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LiZ2jb713URaocX8' \
    --body '{"autoEnroll": true, "displayOrder": 38, "images": [{"as": "ATODuYwTHvYU9Hdh", "caption": "HfthY5ZhOL05T7PO", "height": 18, "imageUrl": "3aB3cqtO9zj8rIyq", "smallImageUrl": "P1F7lC1wDXRSLffG", "width": 33}, {"as": "hNYFak9JJh0UDEhG", "caption": "CA7uZ8lmd8EZTPAX", "height": 42, "imageUrl": "9zFDL2B1xG5423QA", "smallImageUrl": "NnUwg1CAOBSJ3iIo", "width": 11}, {"as": "2tizwzCTa6ItNeU2", "caption": "guXGfYMrz4OjyKuH", "height": 91, "imageUrl": "xxyTkWWJpkJRVk1H", "smallImageUrl": "GHQQyGtho1K4Paqv", "width": 76}], "localizations": {"q2w18n6Xg4tI3erI": {"description": "lC9qA4EslciBHP9C", "title": "V5vQJv13n5ifPl38"}, "mtk0vV4o9F1qEdgY": {"description": "J34NAeFSHwq4zgoc", "title": "nQhSr3K7IbsCd8Sv"}, "id1TYPkxwljWR4Vq": {"description": "WsUjEj0Reymwjktk", "title": "rimIFAsCxoYKpOt0"}}, "passItemId": "9uNiJCiYZsfgZv0F"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XXKy29KwheCjolIC' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1OMNjmDEIkByiBws' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'IEkEnTlN5uvhcUvX' \
    --q 'zSge3NJ2gwKKYdD1' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'Yqtn20ulk9cMXTZI' \
    --body '{"code": "tSK8O3XDjWofJFp4", "currency": {"currencyCode": "7Zbzjj8Uehti3VTv", "namespace": "qykYaBMPxTyVKLSe"}, "image": {"as": "497wRuzezi8zLbdB", "caption": "s8Tbmm64cYOkUB1M", "height": 51, "imageUrl": "4mjoZXzZrAizakHn", "smallImageUrl": "uBoIPteUSBGp9GNz", "width": 66}, "itemId": "rcpG1ZqB0ycwiatj", "quantity": 78, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'hgW6oaawx0Xmgss8' \
    --namespace $AB_NAMESPACE \
    --seasonId 'YVrk5t9N0VY9MxVR' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'diMfWBAoX3I7xj0q' \
    --namespace $AB_NAMESPACE \
    --seasonId '6i0YKLlYJnyU7CvG' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code '8hBIXAdenrwHfBqA' \
    --namespace $AB_NAMESPACE \
    --seasonId 'IJTlLZC5dPXLW1Eb' \
    --body '{"currency": {"currencyCode": "sl2OGg00TWgEpSZP", "namespace": "qRnzxvOaWXhf0PBo"}, "image": {"as": "rGsMo6X62FGXKCAX", "caption": "EKhINwv031v7KB77", "height": 0, "imageUrl": "WKjb2uhWLs2AmBV4", "smallImageUrl": "TO4JkYx5UcZpOFSg", "width": 55}, "itemId": "hqdRaMg1s9sV0GxY", "nullFields": ["2WmLNzc0ScrM0n8L", "femSCeNZzTNdxTTc", "kTxxAK6mc749u06X"], "quantity": 92, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '1dE8lejg9uTAAMMV' \
    --limit '90' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'rYtFUbjAkbbn4okd' \
    --body '{"index": 10, "quantity": 98, "tier": {"requiredExp": 82, "rewards": {"bonIk7Gdt9gsnf7j": ["Kh8rlkMbTQ1jZQyA", "gibHAII7l0wvOuzA", "3MPULpiEWlpnsVYY"], "7nsfMDwjMxltUoQK": ["8U02hSuouTqi73mP", "DLHqdn3XDpy7lqMC", "AN0kVn5c9HQV82uD"], "nHWHhyuTofT0WsJO": ["ZPAPfjosHp1fLL2n", "vxhAYUz8Sc7dBsbc", "kq5VC0jvjnx1KudJ"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'UeAywjBRJLphPojz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'HGpXCatILRK6yhGC' \
    --body '{"requiredExp": 5, "rewards": {"2TB51d72Rukfnf67": ["gn2geBLhRiP6SH12", "thNRqHo3tbcFUk8D", "0Wk6qiAAuHLdSEIv"], "gIOlXYh5J93RktmX": ["qmUuQnbpRBkJqJBG", "mOCNZxgrjvOttiRU", "jr4Y53wfFpGSdWZF"], "DpAULGY9yzABOxzi": ["RzEPAWQLJZzAXUoV", "QRLIPz1QMHjOGHob", "9QgSMlmjXOw8PFl9"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'itaKlXBOcGvJxkf2' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EYJtwNrK1izavswO' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '4BViHvHvy0X1xwoG' \
    --namespace $AB_NAMESPACE \
    --seasonId '0tpUmT8b3i4GKrvf' \
    --body '{"newIndex": 82}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fyEZ73b5tGaxUOXT' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'F0AlGHklAoOGbRd6' \
    --limit '19' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'PfkJC5NiM9Gz5v9J' \
    --body '{"exp": 76, "source": "PAID_FOR", "tags": ["xXnrsysnNUPh9qmV", "IzG8ianoGHGaA1Q6", "YE5mEk4HrYfsp6P2"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'qoSQbrESpvFFGFWs' \
    --body '{"passCode": "OHCCIYOdWZC6TY94", "passItemId": "LyecDTvZRD7iNy5a"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'ZoDE0FGivCgKHIdW' \
    --passCodes '["oHtIu6dIyPRns5JV", "c3thThtMvkDespJ6", "mWHXT84uwi8Lvu4d"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '84T5sMcOAGdWjldx' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'GF1cg2Gf3tHSKmZ6' \
    --body '{"passItemId": "fHYoYL3OyHC9PISe", "tierItemCount": 30, "tierItemId": "I6vSRP5CrrT2HCGs"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'wpHcA4P2p8x33HP2' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'k96f95te0du3xqKm' \
    --body '{"count": 2, "source": "SWEAT", "tags": ["zsT69tZ2sXgYvOYr", "SPrVhigObOl7kKpC", "VgduFTehaSn9zgom"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '07u67YJANHXIcPKW' \
    --from 'OGUVSR2DzK6DbVS5' \
    --limit '38' \
    --offset '8' \
    --seasonId 'dfUbGNpZiXFoS5cB' \
    --source 'SWEAT' \
    --tags '["qYGddZJNPhOzRfXc", "xcQ17MyGHkMoYGJr", "kdMTtGBX6mbN4bPI"]' \
    --to 'pDfViSkzIvnHrCkk' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '9D2z7XchJMJQLDd6' \
    --seasonId 'W6CchAIc79WLYz4k' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'andNhXPs66NfQBYR' \
    --userId 'lvOXOAuTqJ7KvB7J' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '74PfGZvjwl9jfSgA' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'FhBZdSNwnMnfQyL9' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'ghEEDb8IaKww2PDP' \
    --body '{"passCode": "GPZyn4RSROiFLnlh", "rewardCode": "KvLSpTHB2F4aLpSu", "tierIndex": 89}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'QtpaVgchZMn7uphg' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nhxkYaCKWYUsIQvZ' \
    --userId '92wzbGn4ZOYjxRjf' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE