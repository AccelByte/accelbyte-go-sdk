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
    --namespace 'KLMuuXzd' \
    --limit '89' \
    --offset '33' \
    --status '["DRAFT", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --body '{"autoClaim": false, "defaultLanguage": "K978nJHe", "defaultRequiredExp": 9, "draftStoreId": "WUg8bCq9", "end": "1996-07-30T00:00:00Z", "excessStrategy": {"currency": "IlJzlHo5", "method": "CURRENCY", "percentPerExp": 22}, "images": [{"as": "NE0aK1zQ", "caption": "ukDuma1S", "height": 58, "imageUrl": "k5MUY49r", "smallImageUrl": "pauoyPqr", "width": 29}, {"as": "fX3Cim2E", "caption": "TKDRoHip", "height": 60, "imageUrl": "GYyk2T9p", "smallImageUrl": "sgNTijny", "width": 25}, {"as": "1lybZRSR", "caption": "ieE6E26Q", "height": 18, "imageUrl": "Gn5BidTF", "smallImageUrl": "owOaxm07", "width": 89}], "localizations": {"N7uj7R5G": {"description": "jXOAWXj4", "title": "bPB0upAp"}, "ipTzxYgo": {"description": "BLpYjcTs", "title": "3FqjQa5W"}, "mdLySixq": {"description": "muXwQrut", "title": "WCL8ta71"}}, "name": "1bKBe65S", "start": "1975-12-27T00:00:00Z", "tierItemId": "2HRVFOed"}' \
    --namespace 'Owr41Xg0' \
    > test.out 2>&1
eval_tap $? 3 'CreateSeason' test.out

#- 4 GetCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace 'RQ4yC49o' \
    > test.out 2>&1
eval_tap $? 4 'GetCurrentSeason' test.out

#- 5 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace 'GQqYHHQz' \
    --seasonId 'faVoyQ09' \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace 'iYErOo3N' \
    --seasonId 'SvGEBPze' \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --body '{"autoClaim": false, "defaultLanguage": "cZiPHu4y", "defaultRequiredExp": 41, "draftStoreId": "vIEafWZN", "end": "1998-05-19T00:00:00Z", "excessStrategy": {"currency": "R8pAcLaq", "method": "CURRENCY", "percentPerExp": 22}, "images": [{"as": "FHbN0Gu8", "caption": "HOneq6S7", "height": 72, "imageUrl": "FV51g8pE", "smallImageUrl": "oelylric", "width": 85}, {"as": "6LsoEwAS", "caption": "cwh3hkz1", "height": 57, "imageUrl": "JXfZ8EGn", "smallImageUrl": "fo48uSig", "width": 59}, {"as": "aNQaLGea", "caption": "2dBBldnv", "height": 74, "imageUrl": "s8wTXslE", "smallImageUrl": "eNBSu0Cw", "width": 83}], "localizations": {"aTez4MnI": {"description": "WCAKwQZm", "title": "A2QQdXv8"}, "ldoBAOCO": {"description": "OzoCpqph", "title": "rkjJigXw"}, "k7Hb83Bt": {"description": "pcn2dZsK", "title": "bLmxF0t4"}}, "name": "VU9iMphf", "start": "1987-07-27T00:00:00Z", "tierItemId": "LmHc1USo"}' \
    --namespace 'RzLnNfqa' \
    --seasonId 'w4cznJRp' \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --body '{"end": "1976-04-20T00:00:00Z", "name": "ZUTn68YO", "start": "1982-09-21T00:00:00Z"}' \
    --namespace 'qXP2dVVy' \
    --seasonId 'PVVoRYNT' \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace '1N5VpcMn' \
    --seasonId 'C2OBZP01' \
    > test.out 2>&1
eval_tap $? 9 'QueryPasses' test.out

#- 10 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --body '{"autoEnroll": true, "code": "ZDUfEfUv", "displayOrder": 26, "images": [{"as": "S4rAmSmn", "caption": "6gAFKVZF", "height": 54, "imageUrl": "bBFHdwmM", "smallImageUrl": "Uqn3OvjN", "width": 21}, {"as": "xpIplgUz", "caption": "muirgBre", "height": 21, "imageUrl": "T4pnM07w", "smallImageUrl": "i2xK2JwZ", "width": 76}, {"as": "E8d6zT8U", "caption": "GWcjPQw3", "height": 18, "imageUrl": "PsG88TXI", "smallImageUrl": "fD3pnU9i", "width": 5}], "localizations": {"iRQlEi2S": {"description": "RLCB1Mtb", "title": "ZQoC87cD"}, "BI5kyXn7": {"description": "ZC0nRBCm", "title": "Yo1l0bta"}, "W8qhGHaq": {"description": "n0ELqpPA", "title": "HmM2HxrN"}}, "passItemId": "8ozOChDh"}' \
    --namespace 'SPqeviob' \
    --seasonId 'GtOMWUm3' \
    > test.out 2>&1
eval_tap $? 10 'CreatePass' test.out

#- 11 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '80T6rKiI' \
    --namespace 'u52Sqg6B' \
    --seasonId 'zdegGS4t' \
    > test.out 2>&1
eval_tap $? 11 'GetPass' test.out

#- 12 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 's4Vlw8KI' \
    --namespace 'ylBW0uwd' \
    --seasonId 'lOnSBQ4N' \
    > test.out 2>&1
eval_tap $? 12 'DeletePass' test.out

#- 13 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --body '{"autoEnroll": false, "displayOrder": 97, "images": [{"as": "B0dKkr0i", "caption": "gvX3gu7n", "height": 3, "imageUrl": "Q9xu5iMq", "smallImageUrl": "yNzgt6mv", "width": 93}, {"as": "qFD7IaL2", "caption": "emhDXI8G", "height": 94, "imageUrl": "G9521MOL", "smallImageUrl": "r2CndxQb", "width": 5}, {"as": "8jpnyeQ7", "caption": "DbxzX8hB", "height": 94, "imageUrl": "A4RzDHAj", "smallImageUrl": "eFiYzhnG", "width": 93}], "localizations": {"RoZOuNG3": {"description": "CBM7VoYx", "title": "zqoB4JeF"}, "2TJMJza0": {"description": "izgC1SfY", "title": "soWg71KW"}, "tKqr5FxR": {"description": "roEemKBB", "title": "8wSRUJ7P"}}, "passItemId": "vwTGAQSm"}' \
    --code 'UduJBokv' \
    --namespace 'zyEE1dHC' \
    --seasonId 'LMB12fnZ' \
    > test.out 2>&1
eval_tap $? 13 'UpdatePass' test.out

#- 14 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace 'P7l0Ye1D' \
    --seasonId 'yqPW7NMJ' \
    > test.out 2>&1
eval_tap $? 14 'PublishSeason' test.out

#- 15 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace 'KPIkcaDl' \
    --seasonId 'rapLN8E3' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 15 'RetireSeason' test.out

#- 16 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace '2Ko4p5g2' \
    --seasonId '1tahDzb2' \
    --q 'eEHdU2Is' \
    > test.out 2>&1
eval_tap $? 16 'QueryRewards' test.out

#- 17 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --body '{"code": "wjHtDEWa", "currency": {"currencyCode": "XiXf40Kr", "namespace": "tq6VZkcr"}, "image": {"as": "WhzqCGzZ", "caption": "fILyhiQX", "height": 4, "imageUrl": "T69WfcRd", "smallImageUrl": "SWCvEL0d", "width": 32}, "itemId": "XF4sZYSg", "quantity": 39, "type": "ITEM"}' \
    --namespace 'Iss6yLHn' \
    --seasonId '94OK0BSz' \
    > test.out 2>&1
eval_tap $? 17 'CreateReward' test.out

#- 18 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'WoM7fxZM' \
    --namespace 'v8G05zkL' \
    --seasonId 'T7VlABju' \
    > test.out 2>&1
eval_tap $? 18 'GetReward' test.out

#- 19 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'QuylR5aq' \
    --namespace '1OzOjrxq' \
    --seasonId 'OXfsBZhk' \
    > test.out 2>&1
eval_tap $? 19 'DeleteReward' test.out

#- 20 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --body '{"currency": {"currencyCode": "5NyGQHqa", "namespace": "yx8iYx5U"}, "image": {"as": "e7SB449V", "caption": "mRZ3EkEr", "height": 17, "imageUrl": "sYfyMKra", "smallImageUrl": "R9pq2ldw", "width": 27}, "itemId": "POONrqIE", "nullFields": ["8bhMZqqe", "VZmnclB9", "bpP3da9n"], "quantity": 32, "type": "ITEM"}' \
    --code 'Lhdh3fuR' \
    --namespace 'BlJ0rIKx' \
    --seasonId 'Kohyt5Rw' \
    > test.out 2>&1
eval_tap $? 20 'UpdateReward' test.out

#- 21 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace 'NQVNESQB' \
    --seasonId 'B1lZWCQL' \
    --limit '86' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 21 'QueryTiers' test.out

#- 22 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --body '{"index": 67, "quantity": 54, "tier": {"requiredExp": 12, "rewards": {"rXFP6hq4": ["1bl0Tg8m", "7KxFuzpg", "YdS6LrD9"], "jeInK08U": ["QezIKfiT", "I7c2NPZO", "tDkH7Cd5"], "BO6EHzqY": ["wqyMcvNy", "b4Misben", "IizRhymK"]}}}' \
    --namespace 'XjYcXomZ' \
    --seasonId '4DLzPOP6' \
    > test.out 2>&1
eval_tap $? 22 'CreateTier' test.out

#- 23 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --body '{"requiredExp": 68, "rewards": {"5tH9EetM": ["TVmD8ywA", "nNzfn759", "6Ff1YfMF"], "tmIRvGCJ": ["gmqh91ek", "6TzbApGv", "wO35qRQa"], "BGDWP8nK": ["zUVOqBcZ", "Jisub2CN", "lSwihhdd"]}}' \
    --id 'wnvDNBb4' \
    --namespace 'pla0VcLF' \
    --seasonId 'LEhkbx96' \
    > test.out 2>&1
eval_tap $? 23 'UpdateTier' test.out

#- 24 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '7jhaj47D' \
    --namespace 'Ixl6Plq8' \
    --seasonId 'cD0aQTDQ' \
    > test.out 2>&1
eval_tap $? 24 'DeleteTier' test.out

#- 25 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --body '{"newIndex": 5}' \
    --id 'wKLvPpj5' \
    --namespace '3o9P6FVU' \
    --seasonId '5UDJMMYm' \
    > test.out 2>&1
eval_tap $? 25 'ReorderTier' test.out

#- 26 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace 'yJAbdQlN' \
    --seasonId '56mGksgd' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 26 'UnpublishSeason' test.out

#- 27 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace 'I4PrsJ4k' \
    --userId 'KFrSWcxG' \
    --limit '59' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 27 'GetUserParticipatedSeasons' test.out

#- 28 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --body '{"exp": 41, "source": "PAID_FOR", "tags": ["dxCcxPgB", "3JPFn9a1", "RFxCp2HC"]}' \
    --namespace '3gu9zRX2' \
    --userId '7OK6QKaf' \
    > test.out 2>&1
eval_tap $? 28 'GrantUserExp' test.out

#- 29 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --body '{"passCode": "TPsGQ2p8", "passItemId": "XLnxN7wo"}' \
    --namespace '64gn8d4O' \
    --userId 'QAqsIULD' \
    > test.out 2>&1
eval_tap $? 29 'GrantUserPass' test.out

#- 30 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace 'rM78FSB0' \
    --userId 'AxLaeuDZ' \
    --passCodes '["zC2MhzFU", "OERbP3j4", "vPHWJ5XK"]' \
    > test.out 2>&1
eval_tap $? 30 'ExistsAnyPassByPassCodes' test.out

#- 31 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace 'jkbsfuGC' \
    --userId 'xL0XLArk' \
    > test.out 2>&1
eval_tap $? 31 'GetCurrentUserSeasonProgression' test.out

#- 32 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --body '{"passItemId": "ESkZjqbz", "tierItemCount": 36, "tierItemId": "GKfbqQMD"}' \
    --namespace '7ufPp4G1' \
    --userId 'vFTp2R0O' \
    > test.out 2>&1
eval_tap $? 32 'CheckSeasonPurchasable' test.out

#- 33 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace 'Z5IeBnns' \
    --userId 'nKODtIUx' \
    > test.out 2>&1
eval_tap $? 33 'ResetUserSeason' test.out

#- 34 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --body '{"count": 70, "source": "SWEAT", "tags": ["gwLu3E8n", "rr1xU8q8", "RsppvLoD"]}' \
    --namespace 'vNKOrZxe' \
    --userId 'MENpC2v4' \
    > test.out 2>&1
eval_tap $? 34 'GrantUserTier' test.out

#- 35 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace 'O4l8idNf' \
    --userId '8ikmL9zu' \
    --from 'h6oJ1s62' \
    --limit '81' \
    --offset '50' \
    --seasonId 'xcnAe7cc' \
    --source 'SWEAT' \
    --tags '["P5QAR0fX", "m7BBVYoS", "47kLremg"]' \
    --to 'wBCWhrRG' \
    > test.out 2>&1
eval_tap $? 35 'QueryUserExpGrantHistory' test.out

#- 36 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace 'V1iMYfLA' \
    --userId 'FQreawG0' \
    --seasonId 'ZDTeuwKZ' \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistoryTag' test.out

#- 37 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace 'stYcpomh' \
    --seasonId '7e8eaL18' \
    --userId 'dwqjrUVP' \
    > test.out 2>&1
eval_tap $? 37 'GetUserSeason' test.out

#- 38 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace 'HgHy1pbl' \
    --language 'ppg9VngX' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetCurrentSeason' test.out

#- 39 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace 'UumWJh5q' \
    --userId 'cYTaezek' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentUserSeason' test.out

#- 40 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --body '{"passCode": "zENpmank", "rewardCode": "eKzBsECW", "tierIndex": 93}' \
    --namespace 'XzLIcpnp' \
    --userId 'QtzPz9LY' \
    > test.out 2>&1
eval_tap $? 40 'PublicClaimUserReward' test.out

#- 41 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace 's0HHIu4T' \
    --userId 'iEqGDTQa' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkClaimUserRewards' test.out

#- 42 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace 'WEe4mUs3' \
    --seasonId 're4NkxXE' \
    --userId 'q3UddMCu' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE