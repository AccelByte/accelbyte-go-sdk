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
    --limit '41' \
    --offset '29' \
    --status '["PUBLISHED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "TvGpeS4s", "defaultRequiredExp": 31, "draftStoreId": "WZuyvqP6", "end": "1971-09-13T00:00:00Z", "excessStrategy": {"currency": "tXPi53UY", "method": "CURRENCY", "percentPerExp": 1}, "images": [{"as": "4oYwKon6", "caption": "KjBSoPwn", "height": 29, "imageUrl": "mCiIFr5s", "smallImageUrl": "elpmUxoL", "width": 35}, {"as": "VMU03dyp", "caption": "aHzaULaU", "height": 81, "imageUrl": "fXPBXQvl", "smallImageUrl": "IrAx6Jyq", "width": 44}, {"as": "vIo58uJE", "caption": "qcf37a0d", "height": 85, "imageUrl": "sHYZs3Az", "smallImageUrl": "ieBJYRBP", "width": 16}], "localizations": {"rIqSXSCa": {"description": "omDxknaW", "title": "jOGitr3L"}, "i5IOeh3X": {"description": "6hAnrQgy", "title": "8J75WC34"}, "AVg2S4lQ": {"description": "UdXLqikL", "title": "cgWJRnF2"}}, "name": "Ce0BRg7K", "start": "1999-09-22T00:00:00Z", "tierItemId": "tfhGvJhq"}' \
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
    --seasonId 'TL0IKkJm' \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6UJP27mH' \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YcVAWqAq' \
    --body '{"autoClaim": false, "defaultLanguage": "YoRoRw3R", "defaultRequiredExp": 10, "draftStoreId": "lTppEHjP", "end": "1995-07-08T00:00:00Z", "excessStrategy": {"currency": "oLhLlIoM", "method": "NONE", "percentPerExp": 99}, "images": [{"as": "Xh2xOvCW", "caption": "aSPNsgzx", "height": 65, "imageUrl": "WP7n2BhZ", "smallImageUrl": "46toiJjl", "width": 64}, {"as": "Ev3ebxDo", "caption": "zkWJSDsS", "height": 1, "imageUrl": "WtHNM2UG", "smallImageUrl": "ErJss9I0", "width": 58}, {"as": "fVxAaWup", "caption": "5u5vtYPi", "height": 4, "imageUrl": "sP9ahG6z", "smallImageUrl": "RrgdQECm", "width": 25}], "localizations": {"4yLbn0mE": {"description": "FNC3mV3Q", "title": "scqaFN6F"}, "7cHXRwfK": {"description": "4oKFlFV6", "title": "yaWkazCH"}, "18J58Zzz": {"description": "rDNcbNTp", "title": "edb83FUl"}}, "name": "iVGroB0W", "start": "1990-03-17T00:00:00Z", "tierItemId": "YR0KTrEs"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'G5bBjjJk' \
    --body '{"end": "1991-10-17T00:00:00Z", "name": "LjVOtfBR", "start": "1996-12-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Cad275Ao' \
    > test.out 2>&1
eval_tap $? 9 'QueryPasses' test.out

#- 10 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'Z1SLIXFD' \
    --body '{"autoEnroll": true, "code": "HyO4ioMD", "displayOrder": 99, "images": [{"as": "Xe8DtoDf", "caption": "03BIOBK7", "height": 20, "imageUrl": "1MEmtEk0", "smallImageUrl": "lMb111X1", "width": 39}, {"as": "CsCH2jRA", "caption": "37XEPWQs", "height": 13, "imageUrl": "4zuBGMhO", "smallImageUrl": "gPIThK4u", "width": 77}, {"as": "nApC7y2x", "caption": "QEU0sNzt", "height": 88, "imageUrl": "RDwiAOvd", "smallImageUrl": "r9B1YqKo", "width": 31}], "localizations": {"BpcqM2Jx": {"description": "yQwR2F5b", "title": "MMBseZHB"}, "GcEQ1J7u": {"description": "g2PIcMVe", "title": "T3oNBdlo"}, "mcn1hZJ6": {"description": "g1T66Jzd", "title": "byGl45Bf"}}, "passItemId": "rwJ7dZmB"}' \
    > test.out 2>&1
eval_tap $? 10 'CreatePass' test.out

#- 11 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'CtlUHwMK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'scxZwLwI' \
    > test.out 2>&1
eval_tap $? 11 'GetPass' test.out

#- 12 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'ZIymGqa6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'CBCKmA4Q' \
    > test.out 2>&1
eval_tap $? 12 'DeletePass' test.out

#- 13 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'xS9fLVTi' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Kb7g6kZm' \
    --body '{"autoEnroll": false, "displayOrder": 86, "images": [{"as": "I768RBfW", "caption": "jdt2fmkY", "height": 28, "imageUrl": "Mzg4onTT", "smallImageUrl": "hiGtgVl1", "width": 45}, {"as": "UsKvquz0", "caption": "ua3V0IAu", "height": 75, "imageUrl": "c1mjaC4U", "smallImageUrl": "gzjxXHSI", "width": 79}, {"as": "jpAHSmV1", "caption": "isH5DrhV", "height": 11, "imageUrl": "br66i9TG", "smallImageUrl": "6hEdMgAV", "width": 69}], "localizations": {"KTcCNnOj": {"description": "5RfaFUs7", "title": "UL9bH9uW"}, "drID55iR": {"description": "PfTlF7t1", "title": "O0H5p8XN"}, "2dXbBT3s": {"description": "EQRCCOm2", "title": "s7V2vZ5M"}}, "passItemId": "Q0brqMvy"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdatePass' test.out

#- 14 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4oM9eYOe' \
    > test.out 2>&1
eval_tap $? 14 'PublishSeason' test.out

#- 15 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kdTGz62M' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 15 'RetireSeason' test.out

#- 16 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'fYgXH4su' \
    --q 'kzEHvoBp' \
    > test.out 2>&1
eval_tap $? 16 'QueryRewards' test.out

#- 17 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'l1eTzydi' \
    --body '{"code": "v0cFfH4T", "currency": {"currencyCode": "k4YBoGt7", "namespace": "DwQcyfAn"}, "image": {"as": "OWkdJKD9", "caption": "kvZ10oF6", "height": 33, "imageUrl": "iS4PuREL", "smallImageUrl": "fS22QUYI", "width": 85}, "itemId": "W3f5Jgp5", "quantity": 13, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateReward' test.out

#- 18 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'v6hxG8S9' \
    --namespace $AB_NAMESPACE \
    --seasonId 'q7u2TK5p' \
    > test.out 2>&1
eval_tap $? 18 'GetReward' test.out

#- 19 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'uEFuNN1j' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Pg7dzB6i' \
    > test.out 2>&1
eval_tap $? 19 'DeleteReward' test.out

#- 20 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'T9LaTpOp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Tbnli3m5' \
    --body '{"currency": {"currencyCode": "F90HuDmx", "namespace": "fgrfMvzt"}, "image": {"as": "2eGVX4Q8", "caption": "olEGWrWE", "height": 65, "imageUrl": "7MNWOoug", "smallImageUrl": "PdtuLpj8", "width": 10}, "itemId": "EJJbV3Zp", "nullFields": ["3QoiiIVe", "2g0CyqRl", "x8tPMK8Z"], "quantity": 88, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateReward' test.out

#- 21 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'fTTit0gt' \
    --limit '93' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 21 'QueryTiers' test.out

#- 22 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '911AWx91' \
    --body '{"index": 49, "quantity": 35, "tier": {"requiredExp": 98, "rewards": {"jVCf5Aom": ["CheOXC08", "O81QKE8I", "NuzaAKzM"], "TQLALZlB": ["VBihZnAG", "cAIt3T74", "dFt5L98d"], "7YSufMEV": ["vMbAhobk", "LR8fhtB8", "YPp5iqqe"]}}}' \
    > test.out 2>&1
eval_tap $? 22 'CreateTier' test.out

#- 23 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '1GcNEPhR' \
    --namespace $AB_NAMESPACE \
    --seasonId 'yDEgZmqw' \
    --body '{"requiredExp": 100, "rewards": {"in00LiNQ": ["0bjgosy3", "2gtrKKsh", "oeoB1Nxr"], "RXEeHI71": ["bVAaKOPb", "n8jBtvcY", "FFp5Qyzd"], "Qze6mr4u": ["TEYneo2B", "Emo3xtvf", "Zfd0YZtm"]}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateTier' test.out

#- 24 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 's997cHlJ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'MRbeozd0' \
    > test.out 2>&1
eval_tap $? 24 'DeleteTier' test.out

#- 25 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '3iLLeRSU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'nNmxfc1J' \
    --body '{"newIndex": 88}' \
    > test.out 2>&1
eval_tap $? 25 'ReorderTier' test.out

#- 26 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bEsIsxvS' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 26 'UnpublishSeason' test.out

#- 27 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'jGkFvYFm' \
    --limit '24' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 27 'GetUserParticipatedSeasons' test.out

#- 28 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'N7mW5XVW' \
    --body '{"exp": 0, "source": "PAID_FOR", "tags": ["zLwpIWdB", "ZWyhf30e", "SgI7C4rg"]}' \
    > test.out 2>&1
eval_tap $? 28 'GrantUserExp' test.out

#- 29 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'n4L9XpEJ' \
    --body '{"passCode": "Gf8isJ8h", "passItemId": "DqhJ4Voi"}' \
    > test.out 2>&1
eval_tap $? 29 'GrantUserPass' test.out

#- 30 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'md2Srkep' \
    --passCodes '["BU5UrBMC", "PWXeWZSN", "GQYkqfHu"]' \
    > test.out 2>&1
eval_tap $? 30 'ExistsAnyPassByPassCodes' test.out

#- 31 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '1pKPcQQV' \
    > test.out 2>&1
eval_tap $? 31 'GetCurrentUserSeasonProgression' test.out

#- 32 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'ocBBbNEd' \
    --body '{"passItemId": "f1x6Fgbx", "tierItemCount": 21, "tierItemId": "1hwNzmwB"}' \
    > test.out 2>&1
eval_tap $? 32 'CheckSeasonPurchasable' test.out

#- 33 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'QXYT5D2p' \
    > test.out 2>&1
eval_tap $? 33 'ResetUserSeason' test.out

#- 34 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'lpQcebpX' \
    --body '{"count": 21, "source": "PAID_FOR", "tags": ["dF4xEXV1", "KQ9xFHN9", "zEb6mDmy"]}' \
    > test.out 2>&1
eval_tap $? 34 'GrantUserTier' test.out

#- 35 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Cz3s3jei' \
    --from 'n8zZKhr7' \
    --limit '78' \
    --offset '27' \
    --seasonId 'W0HHxZt7' \
    --source 'PAID_FOR' \
    --tags '["0NiJZEaF", "vz6hGF0N", "vqgZV3UT"]' \
    --to 'W1SZQSed' \
    > test.out 2>&1
eval_tap $? 35 'QueryUserExpGrantHistory' test.out

#- 36 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'RSuWEdnF' \
    --seasonId 'EJ3VlOMN' \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistoryTag' test.out

#- 37 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'tZtYJ3st' \
    --userId 'xhR7KHqt' \
    > test.out 2>&1
eval_tap $? 37 'GetUserSeason' test.out

#- 38 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '96l4zxpn' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetCurrentSeason' test.out

#- 39 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'NH9kFxQY' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentUserSeason' test.out

#- 40 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'ulHC6NX9' \
    --body '{"passCode": "EmHKLHiU", "rewardCode": "MoyWP3wU", "tierIndex": 34}' \
    > test.out 2>&1
eval_tap $? 40 'PublicClaimUserReward' test.out

#- 41 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Mozz8pZ6' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkClaimUserRewards' test.out

#- 42 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uBtyhr3M' \
    --userId 'lqdVL8fg' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE