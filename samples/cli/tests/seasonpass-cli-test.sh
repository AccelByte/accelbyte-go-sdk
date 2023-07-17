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
    --limit '61' \
    --offset '10' \
    --status '["PUBLISHED", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "ViXn3JCSTd0pUo6S", "defaultRequiredExp": 3, "draftStoreId": "5sPvtygiRiIZLQ9r", "end": "1997-08-20T00:00:00Z", "excessStrategy": {"currency": "qCZLbjaJ0qZ97uXu", "method": "NONE", "percentPerExp": 78}, "images": [{"as": "qUg9xqVusBGmYYgd", "caption": "AwJpoPHYwrtQskXI", "height": 80, "imageUrl": "07brBcyrehgkvoeF", "smallImageUrl": "W841p42YM4nKyrqt", "width": 42}, {"as": "w9U6EYx3ILuNcVoF", "caption": "4kbdnJ18bHdMZlfM", "height": 52, "imageUrl": "ej21KI8QYIVFaia8", "smallImageUrl": "gkFPwt5lmwTJLH9D", "width": 26}, {"as": "5R2LliJas03WVZum", "caption": "SPGOJS2NtxAXog2O", "height": 0, "imageUrl": "xoxJLJD3cjWqMdaw", "smallImageUrl": "sCvxcpOF2PzlmaMq", "width": 40}], "localizations": {"8IbbiNLxSzsbdHVP": {"description": "p3Y8pHNXdavv8Xxh", "title": "aozgCFmwLfytO4dQ"}, "1Mu2SoizG3Cle5sX": {"description": "X2h5LASxegC5Y9uw", "title": "RZjrtYmvByTzvNuh"}, "BmLcGxV9fsLXsDG8": {"description": "KEArsi58iLo2M8TE", "title": "bFXjffXdkgESgpnB"}}, "name": "hZKUzfDuShcwSPER", "start": "1994-07-15T00:00:00Z", "tierItemId": "hxOIa5p6ssYORrzQ"}' \
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
    --body '{"userIds": ["kuv4bXwmcnQLpZBr", "NBuqBOtBjUcjh7U9", "90JvRmfIUZjGTJB3"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ppEOJ946VL7zoEY8' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hOFSGvEvLwhAv0eJ' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HKXGn66euDMwoL2M' \
    --body '{"autoClaim": true, "defaultLanguage": "y9TRSkNjggvZN5g7", "defaultRequiredExp": 8, "draftStoreId": "HLqHWGhQuV71ydlI", "end": "1997-12-22T00:00:00Z", "excessStrategy": {"currency": "VmIvDTLA103rHwD4", "method": "CURRENCY", "percentPerExp": 55}, "images": [{"as": "HXLLR6c2nEciCj70", "caption": "qe27opQ4U29bQ8i9", "height": 9, "imageUrl": "w8rpd8KtJCtKb7FC", "smallImageUrl": "9EB3mfHObIIX2v4w", "width": 42}, {"as": "eWD9rHqjmxAeJOlQ", "caption": "VVMvnLpFaQClJAsc", "height": 97, "imageUrl": "zodOlWIEvFTFUdMk", "smallImageUrl": "0RGM6pII7DRZ2iwr", "width": 32}, {"as": "3lrUwrOSFSt6bIwF", "caption": "eQKN2Dx9H8kfXyT3", "height": 96, "imageUrl": "p8OZRX19bnFU1RHa", "smallImageUrl": "ctIkcSlHpEID073a", "width": 16}], "localizations": {"qd3ThCzE3l96NBeM": {"description": "T2wRUuk6qOROMx2W", "title": "28CYDOtLcWRyxlqq"}, "ZnGoWPEhU9tLVTpi": {"description": "oYAKZesPp1nEioXC", "title": "u6dEsINsrE7IJJUP"}, "Lb5urL35mRDZn59w": {"description": "olzPNSFSCyFwF756", "title": "sl4KzSs5kHgye7Ln"}}, "name": "V6F3r0PsvaPAecQV", "start": "1992-04-18T00:00:00Z", "tierItemId": "DQdBXip3H6nejFhj"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nugjfMtE52z43Z0O' \
    --body '{"end": "1973-01-24T00:00:00Z", "name": "dMOuRFvYuGhyGfAT", "start": "1971-05-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'grNjg575xh7Xt5o7' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'A875AYyzbW4Crwpn' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'fTDmSMN9QbxTsEt7' \
    --body '{"autoEnroll": false, "code": "ell0nEX34wJB2rU0", "displayOrder": 44, "images": [{"as": "YTQ7hnszTum6P68n", "caption": "gPMAbyDZexDUTAsq", "height": 7, "imageUrl": "hvBqlpCCru5je4qr", "smallImageUrl": "dVMil5HZh8cyNndV", "width": 12}, {"as": "m0yeqckELQkZXQHY", "caption": "VexRCtcpwv3uL335", "height": 18, "imageUrl": "zUjqDqmDnA1N3Kle", "smallImageUrl": "eIKFNuHG9aanUKVI", "width": 30}, {"as": "EcZruXYB93SgBdYr", "caption": "n6BboFaCafgHQUKI", "height": 93, "imageUrl": "UZZfBCv06q5U2hdC", "smallImageUrl": "t9gg05yFFo3BgMn9", "width": 33}], "localizations": {"ETGXIef9E5L4fAM0": {"description": "kVglv5ERX9EKjihW", "title": "SWmrGxZ600ymYzfH"}, "Cjrs7zDQObWMnzSi": {"description": "ZEYy1r7BdhYobSwr", "title": "ylmRraakBd07PuuB"}, "8Gt15K7xyMlwvGhu": {"description": "mUYPjLMajN2xJ3KF", "title": "pPg2yu93GCwt24KB"}}, "passItemId": "hpL1y2E7mkxj1Cci"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'AgFX7BCGBxqTg5yZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'BaONRwYzlNx3DGiD' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'VX2hIgqWnGuAgVTJ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'VABSnyt3Woo7Nbve' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'GmtTiEAgSeWGuqwt' \
    --namespace $AB_NAMESPACE \
    --seasonId '16Dvrnh3m5JiNek2' \
    --body '{"autoEnroll": false, "displayOrder": 91, "images": [{"as": "aWeIEdx74UcLBAMZ", "caption": "m0xJsVrMRoT9JpiX", "height": 78, "imageUrl": "F6PmtQpLVIR7hjAS", "smallImageUrl": "EcbRMwVXXLGZdApe", "width": 11}, {"as": "TOJPAxQvAGpkkIGj", "caption": "QtDOsXrZ101uE1mS", "height": 85, "imageUrl": "6y9HerwYA140wfDO", "smallImageUrl": "AabRmBvwozhcT0Js", "width": 62}, {"as": "WDVXrfeM0rBHhfS2", "caption": "Pn0ayIjapIk9VFcw", "height": 34, "imageUrl": "mI5Kv4qsC1eHlBAK", "smallImageUrl": "EzIQLV5N4TVHwIlN", "width": 23}], "localizations": {"puywhjvQDV2FTcRh": {"description": "8MKnzR50R3etLoLV", "title": "GgiikQkHj8BLv2Vo"}, "0NGbeOAmqXiD4Jsm": {"description": "kJjNCuceHXTzd4Cu", "title": "RuTysXFTLSpGDVmi"}, "IBjvtb9i6HmfDLYA": {"description": "N48pxFusrcwytbtD", "title": "ntlCWMGBjj1BLQjj"}}, "passItemId": "vj1xr2c1ioLcfln6"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'BUbtdD4dowUEsB2I' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DYZjjH7EmWzI9w6U' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '7MunwwARY7MVD9Ay' \
    --q 'tP7AxzqVsuInmjJI' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'M1NXA7dGNDGTQ4NK' \
    --body '{"code": "IJQ8eFpnKqBOBjov", "currency": {"currencyCode": "2sWcIDxeMiDdAZVb", "namespace": "pYEJGd2qeNcOA7As"}, "image": {"as": "KMi1mKQr9BLhvw3c", "caption": "MM5nyhK04b1xZCF5", "height": 58, "imageUrl": "hEbg8PhwZdLMDAiz", "smallImageUrl": "Qg4bPWXYrOWxlHtb", "width": 4}, "itemId": "9HSb2MatH5Rm1yPf", "quantity": 50, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'maPUrKJZxKKMGicC' \
    --namespace $AB_NAMESPACE \
    --seasonId 'sqnZtXFCkUg5WJzW' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'rauDISF1ImL16rIX' \
    --namespace $AB_NAMESPACE \
    --seasonId 'R6zcS3Tqg5XnE1rF' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'YK4EbyUs5CsuYRCI' \
    --namespace $AB_NAMESPACE \
    --seasonId '89Mhz2LEn7xE6U1n' \
    --body '{"currency": {"currencyCode": "WXo9WaQmiTN4lhqy", "namespace": "NerusIp6nbajhGqK"}, "image": {"as": "ooATBcUjhCJYfcXG", "caption": "HMsTbkxTmUIJ6yzt", "height": 100, "imageUrl": "cga1yMPL4ZOz0IEg", "smallImageUrl": "380UB2q8w2NQiS9N", "width": 21}, "itemId": "heW0g2gdl5h05sIG", "nullFields": ["5gHB3q5Tf09dTaXd", "aC3wfDydclV6QSgG", "pJUd1DWQbOerFU0o"], "quantity": 22, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'PuUBw7ZRfqDnA5wU' \
    --limit '93' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'uavPb8smqfBsYPWQ' \
    --body '{"index": 90, "quantity": 77, "tier": {"requiredExp": 67, "rewards": {"Grh903LUmulNOpQE": ["sQaoxrn0g6Bc5abE", "6hFVFECgYCrM0ALE", "CgqDm0HbMD3LBpjW"], "F2g2Ggq1P8iYbieO": ["pzLMNsjHGJWZ08Ng", "VrBbGfCitwBDYjEO", "ZVTvJlF2Y6O3I5nw"], "etHqRlkL9yzsJ6Oz": ["oMdsBYeDpJMRYuaE", "zTdpB1uuL1GLqjaM", "GRSaIoMcxTWdHI4D"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'YTCW1cAaVDk2mPRO' \
    --namespace $AB_NAMESPACE \
    --seasonId '5GO2cQHcIKkU3fCp' \
    --body '{"requiredExp": 17, "rewards": {"HJc54CHYSTn3VApl": ["I9XT740xWknNiOUk", "NKxKMwEh3zuTqnCX", "E3B1szXtey7tTNzb"], "9Fplg3hA9J7qVhfN": ["h7C5iSpBDUn1mo3N", "vjajt3hFZ0HfzJVc", "Pb57jeLW1f0apFHJ"], "JW73sUXyPTLy47aw": ["NyAs9BzS0rJQjs3t", "wtaGWZqTGrHZ3koT", "cOr6AUHgbXD89Hwt"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '2TeJzaqrDUNmSGTA' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Jr7VrF6XK08Xl81D' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'D96wtDn5KxdWkaLE' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gpWEwY9h4RLIdllw' \
    --body '{"newIndex": 72}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'N3LPOQRpOVDSp6th' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId '3RNjJa16XGBkZd4a' \
    --limit '40' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'V05eDJsxmVi9BFDI' \
    --body '{"exp": 57, "source": "SWEAT", "tags": ["g4M97VyI6AEtLnmv", "rTjYWhcWtnFqx5cP", "DuxmkUkf2JEyhfMl"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'mS6m8M5tsI73d3PV' \
    --body '{"passCode": "UcYxNqK5p1Pa2XRR", "passItemId": "8nAHom72eBy80FHV"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'PHojmpGG5v1QL5KT' \
    --passCodes '["wOOzesHlgLtT8Kar", "2almwweJbyW6uInz", "Cz7PnxRJkPmTgImc"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'MHehfbHvF6kuV7RM' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'lqbThIl00NR57KPp' \
    --body '{"passItemId": "hXRq1iLYD58vzIoM", "tierItemCount": 13, "tierItemId": "Mv39o8fOIFyvHU2V"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'CUv2mVNNv56lWb4U' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '0kDWXuEw95i7Xtj7' \
    --body '{"count": 70, "source": "SWEAT", "tags": ["wFvgxMBg5uuK6hmz", "6yXU5JRRBtJGzopt", "5hCLnPnXquiCtqde"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'dhjv0PacYZoCBRrq' \
    --from 'kqPsrwVuR3OhI7dI' \
    --limit '90' \
    --offset '87' \
    --seasonId 'qKaJYDarmMBJoOgy' \
    --source 'SWEAT' \
    --tags '["noYTk4rLkY0vbTaD", "NwrO0uxj1VMGUCaq", "tAtFmB8S9KjZeQuD"]' \
    --to 'PVEciC1VO1v0Srfl' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'C3YmBdaMLiT7x1Nq' \
    --seasonId 'L5Wo0eSjftvwDKJH' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AEZNlWiP3oMIWMPu' \
    --userId '4V4ppcsO1KNvt2Wd' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'LNZdqALgkRXxJ0EM' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'GuOsCEhpqDxYquBc' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'WlASUQziDDmFXtSs' \
    --body '{"passCode": "dI8CDMMNUkLlJ4a4", "rewardCode": "XsaUCwLu2cKit2ZH", "tierIndex": 20}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'aigEesOjngy6Ictn' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'tuM354Ouxq7pM5od' \
    --userId 'RkLVEgXVXHtjDvT4' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE