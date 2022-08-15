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
    --limit '40' \
    --offset '18' \
    --status '["RETIRED", "DRAFT", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "3nHL8LMF", "defaultRequiredExp": 64, "draftStoreId": "bfYvwxOi", "end": "1995-01-21T00:00:00Z", "excessStrategy": {"currency": "4MMccCxD", "method": "NONE", "percentPerExp": 65}, "images": [{"as": "7UN2uL7M", "caption": "LTUf4Zmw", "height": 72, "imageUrl": "30NpbvyX", "smallImageUrl": "xUtmvZfP", "width": 87}, {"as": "FRKJrezf", "caption": "QfwnjQku", "height": 16, "imageUrl": "Jp6GJ3kY", "smallImageUrl": "C7eqoyRa", "width": 86}, {"as": "9imGAGge", "caption": "nzQgD79W", "height": 10, "imageUrl": "GPSBQ3ZJ", "smallImageUrl": "VoOE9qFN", "width": 34}], "localizations": {"STenSvz6": {"description": "Ul8NvlsB", "title": "S76a87vW"}, "pBLeOyuC": {"description": "vvc3WuLs", "title": "R2rnz0N7"}, "iw6kxBMB": {"description": "rJ3pVhrL", "title": "0oeshdM5"}}, "name": "IrTAGDAO", "start": "1978-02-13T00:00:00Z", "tierItemId": "pCfHCX2j"}' \
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
    --seasonId '5cX844p6' \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '55QP0AdK' \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'f68fhZPD' \
    --body '{"autoClaim": false, "defaultLanguage": "29alf9Nx", "defaultRequiredExp": 79, "draftStoreId": "rZMDK6Bf", "end": "1986-01-10T00:00:00Z", "excessStrategy": {"currency": "xw0qIrwG", "method": "CURRENCY", "percentPerExp": 93}, "images": [{"as": "eB67osl5", "caption": "EFMzXFjl", "height": 74, "imageUrl": "ZrTPlv07", "smallImageUrl": "ATeQKuPu", "width": 94}, {"as": "rOn49PHC", "caption": "nMCAleG0", "height": 92, "imageUrl": "4ePCO6xg", "smallImageUrl": "CfLTVIZN", "width": 76}, {"as": "JNBqYO0i", "caption": "XNQPy6wg", "height": 38, "imageUrl": "QUFjqzOm", "smallImageUrl": "lc2bUz5M", "width": 86}], "localizations": {"6Kx96SlA": {"description": "omI3bvzd", "title": "nsLpHiya"}, "Gnxyi0pC": {"description": "DkrRIBQr", "title": "iZcpzBvR"}, "czt9rFYg": {"description": "GcrHxMkb", "title": "OXkiTH2n"}}, "name": "A2dcbnKE", "start": "1987-12-15T00:00:00Z", "tierItemId": "mqZ3azEi"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IP9Oznw7' \
    --body '{"end": "1976-11-27T00:00:00Z", "name": "MNiU0iS9", "start": "1978-04-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'E2gVrYpW' \
    > test.out 2>&1
eval_tap $? 9 'QueryPasses' test.out

#- 10 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'J6LLhhXS' \
    --body '{"autoEnroll": true, "code": "4DoOB0jt", "displayOrder": 38, "images": [{"as": "rNmxUEat", "caption": "45v6b21c", "height": 66, "imageUrl": "nifbs2JO", "smallImageUrl": "2zrcdwbr", "width": 74}, {"as": "elSUallS", "caption": "u3CqMMSd", "height": 34, "imageUrl": "Hd9OOJpP", "smallImageUrl": "GDtw8HBJ", "width": 28}, {"as": "DITXpqQy", "caption": "LiX1kfle", "height": 11, "imageUrl": "ZfbaZ6Lj", "smallImageUrl": "pHJGbQgv", "width": 21}], "localizations": {"7LWhEalF": {"description": "nwvkvJ5g", "title": "zKTdkoG5"}, "tnMn7opa": {"description": "rUyJmrxq", "title": "yvCox06i"}, "ESNUp3lV": {"description": "b1u3UQQB", "title": "4nmX4h8N"}}, "passItemId": "C1dWGu2l"}' \
    > test.out 2>&1
eval_tap $? 10 'CreatePass' test.out

#- 11 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'AmU7Z8TE' \
    --namespace $AB_NAMESPACE \
    --seasonId 'mgB3g3pX' \
    > test.out 2>&1
eval_tap $? 11 'GetPass' test.out

#- 12 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '7ZsL5Xa8' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XoFeWSmy' \
    > test.out 2>&1
eval_tap $? 12 'DeletePass' test.out

#- 13 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '1YT7TDnZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pCk12QwN' \
    --body '{"autoEnroll": true, "displayOrder": 99, "images": [{"as": "pc0kgX5C", "caption": "MWcCSzjA", "height": 80, "imageUrl": "wgdDkGnR", "smallImageUrl": "sTMjyMgV", "width": 18}, {"as": "JJILJput", "caption": "hcKVu4mX", "height": 29, "imageUrl": "h4nbwUJ7", "smallImageUrl": "xBzLqldS", "width": 96}, {"as": "sCRpV0hw", "caption": "inaWvHQd", "height": 54, "imageUrl": "vtETELhh", "smallImageUrl": "IRBuL7dN", "width": 61}], "localizations": {"swtApkp0": {"description": "9WGd6t7E", "title": "zrSFeHGX"}, "80cvWUeg": {"description": "fn1LnrnS", "title": "CwixyvE7"}, "GQfyoyRq": {"description": "haSuzGx6", "title": "vCUmO8hB"}}, "passItemId": "oAb9d8bs"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdatePass' test.out

#- 14 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Zfc6XglP' \
    > test.out 2>&1
eval_tap $? 14 'PublishSeason' test.out

#- 15 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'TbDE3oMN' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 15 'RetireSeason' test.out

#- 16 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'sEZVrDRB' \
    --q 'fupBxG8x' \
    > test.out 2>&1
eval_tap $? 16 'QueryRewards' test.out

#- 17 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'B7Z9lRkn' \
    --body '{"code": "a5AU8XCC", "currency": {"currencyCode": "9EoTnGIe", "namespace": "kgUupHIt"}, "image": {"as": "KDtCGGNb", "caption": "0kr1rjWB", "height": 76, "imageUrl": "yyiyTY3d", "smallImageUrl": "TnwaM9NX", "width": 65}, "itemId": "lxowqOuA", "quantity": 35, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateReward' test.out

#- 18 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'QLMQm2CW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LaGRmQal' \
    > test.out 2>&1
eval_tap $? 18 'GetReward' test.out

#- 19 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'LgxWhpR3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Aa0inOnn' \
    > test.out 2>&1
eval_tap $? 19 'DeleteReward' test.out

#- 20 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code '7bOiy4hO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kUQAb22c' \
    --body '{"currency": {"currencyCode": "gnpepsdz", "namespace": "TusUc8os"}, "image": {"as": "FDZDhYS4", "caption": "WdbdBNaM", "height": 7, "imageUrl": "muBqSRlY", "smallImageUrl": "3B5c3YWB", "width": 85}, "itemId": "PqakZcCl", "nullFields": ["gBIaqYQM", "qjXqdIMk", "onYOumHa"], "quantity": 94, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateReward' test.out

#- 21 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '8PjCdPnN' \
    --limit '92' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 21 'QueryTiers' test.out

#- 22 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'CUu796RC' \
    --body '{"index": 50, "quantity": 8, "tier": {"requiredExp": 79, "rewards": {"2qm6tieH": ["gPIVZBqC", "W4Supmta", "w4P6Hpo2"], "WcaUnrva": ["H9JF6QOy", "9OveuOM1", "bnlVjkeL"], "OgsVKfqE": ["45wBhcvR", "UkcWABQQ", "KwZl4Q1r"]}}}' \
    > test.out 2>&1
eval_tap $? 22 'CreateTier' test.out

#- 23 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'XsJN76UX' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Yeim49ZP' \
    --body '{"requiredExp": 49, "rewards": {"fTxpMsWg": ["gURGjzH2", "M19NsV4v", "bp3z2PwD"], "QuXkvG5W": ["gFxad00f", "U8OyAPlt", "j8CevLJQ"], "oy88FFra": ["x70SyXmZ", "gdWu7Djh", "V1cXTEil"]}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateTier' test.out

#- 24 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'MkQMXwZO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pOA1sQah' \
    > test.out 2>&1
eval_tap $? 24 'DeleteTier' test.out

#- 25 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '21rjdeqk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Pl5awY6m' \
    --body '{"newIndex": 42}' \
    > test.out 2>&1
eval_tap $? 25 'ReorderTier' test.out

#- 26 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Qhjo6f6H' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 26 'UnpublishSeason' test.out

#- 27 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'ShpqfF7T' \
    --limit '22' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 27 'GetUserParticipatedSeasons' test.out

#- 28 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'XzZlitGr' \
    --body '{"exp": 61, "source": "SWEAT", "tags": ["dK46QlfG", "xSob049n", "GOJY0mmJ"]}' \
    > test.out 2>&1
eval_tap $? 28 'GrantUserExp' test.out

#- 29 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'SLdDjDIn' \
    --body '{"passCode": "PN8HheE5", "passItemId": "MVEkTmrx"}' \
    > test.out 2>&1
eval_tap $? 29 'GrantUserPass' test.out

#- 30 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'eQx9yNwq' \
    --passCodes '["6RMottXl", "3wfWEzKp", "OmYS9oDF"]' \
    > test.out 2>&1
eval_tap $? 30 'ExistsAnyPassByPassCodes' test.out

#- 31 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'mjUyKJIt' \
    > test.out 2>&1
eval_tap $? 31 'GetCurrentUserSeasonProgression' test.out

#- 32 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'FXqDdsEu' \
    --body '{"passItemId": "wZhuqXFh", "tierItemCount": 5, "tierItemId": "flLtLVNm"}' \
    > test.out 2>&1
eval_tap $? 32 'CheckSeasonPurchasable' test.out

#- 33 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'c7p83GeA' \
    > test.out 2>&1
eval_tap $? 33 'ResetUserSeason' test.out

#- 34 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'cPNHVG3D' \
    --body '{"count": 78, "source": "PAID_FOR", "tags": ["QTtFsdd2", "8BsCj5Fm", "vqOVJLdo"]}' \
    > test.out 2>&1
eval_tap $? 34 'GrantUserTier' test.out

#- 35 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'RgkTfxVo' \
    --from 'vFeoSbZ7' \
    --limit '87' \
    --offset '36' \
    --seasonId 'ubS47fjv' \
    --source 'PAID_FOR' \
    --tags '["Ms5k3ktN", "DOgvbbGB", "6MJsgd5Z"]' \
    --to 'u3QPf5gl' \
    > test.out 2>&1
eval_tap $? 35 'QueryUserExpGrantHistory' test.out

#- 36 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'eoRWQK3L' \
    --seasonId 'NYcMic55' \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistoryTag' test.out

#- 37 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XDoISeB9' \
    --userId '8UmiOFBS' \
    > test.out 2>&1
eval_tap $? 37 'GetUserSeason' test.out

#- 38 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'UXO2YqGv' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetCurrentSeason' test.out

#- 39 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'EouyEpc4' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentUserSeason' test.out

#- 40 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'LMm6GTPU' \
    --body '{"passCode": "COD6S1cD", "rewardCode": "byqMPaDl", "tierIndex": 5}' \
    > test.out 2>&1
eval_tap $? 40 'PublicClaimUserReward' test.out

#- 41 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'CCbkORHF' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkClaimUserRewards' test.out

#- 42 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HOCdgQGj' \
    --userId '5Jw18gMB' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE