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
    --limit '92' \
    --offset '35' \
    --status '["RETIRED", "PUBLISHED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "Ls5VfIiR", "defaultRequiredExp": 62, "draftStoreId": "SFY8RBzK", "end": "1993-07-11T00:00:00Z", "excessStrategy": {"currency": "Uxnwjho7", "method": "NONE", "percentPerExp": 87}, "images": [{"as": "rf8pMH35", "caption": "AUdnbAR8", "height": 18, "imageUrl": "nrDENyKn", "smallImageUrl": "qtGPglTc", "width": 16}, {"as": "VTKycjaP", "caption": "rzOpNqy5", "height": 23, "imageUrl": "D4MRFc2X", "smallImageUrl": "J6Htx8NT", "width": 92}, {"as": "ffil4ZhW", "caption": "4txhjDoK", "height": 49, "imageUrl": "mOCuRKkV", "smallImageUrl": "lLaBifeM", "width": 96}], "localizations": {"aU58nktE": {"description": "3K95QAhP", "title": "Vgs2ZhPy"}, "xsM45l50": {"description": "oql2lEhN", "title": "1jt8ImhS"}, "B5FWaCrp": {"description": "gRbAxfAO", "title": "EWnD7Plr"}}, "name": "CuMXT4Ls", "start": "1987-09-30T00:00:00Z", "tierItemId": "wgU3zzGy"}' \
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
    --body '{"userIds": ["4hSfr3sf", "n94gUC50", "n2SJLgeB"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JpR9Ol3D' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'RlzK9c67' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '70Z6jvU1' \
    --body '{"autoClaim": false, "defaultLanguage": "Tejg7z5W", "defaultRequiredExp": 41, "draftStoreId": "s5ozLfPa", "end": "1989-05-05T00:00:00Z", "excessStrategy": {"currency": "vhlU9HG4", "method": "CURRENCY", "percentPerExp": 66}, "images": [{"as": "loiBLKKk", "caption": "trcKljyM", "height": 66, "imageUrl": "nNWTUx1A", "smallImageUrl": "maczsBkB", "width": 26}, {"as": "pSTWkZdo", "caption": "mEwUQgUI", "height": 35, "imageUrl": "az2JtKKg", "smallImageUrl": "189lWRhj", "width": 20}, {"as": "PcY96oLs", "caption": "m3G1XvQx", "height": 28, "imageUrl": "U4U1884w", "smallImageUrl": "KGrleDfJ", "width": 32}], "localizations": {"UxmsyCrd": {"description": "m4Rlhzz5", "title": "XvTcVmIi"}, "Bx7AXKI7": {"description": "oRhk8prk", "title": "a4bvn2wf"}, "AQhBCqjA": {"description": "8LnbXgvc", "title": "ZK4fCAsc"}}, "name": "P5kk4W5k", "start": "1977-01-18T00:00:00Z", "tierItemId": "YFe0mLQZ"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5KrJF0lG' \
    --body '{"end": "1982-10-08T00:00:00Z", "name": "ZplsvOIA", "start": "1994-07-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mc6cWMCA' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'acsudVwZ' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'J5VOJc6g' \
    --body '{"autoEnroll": true, "code": "fkAkRLm0", "displayOrder": 33, "images": [{"as": "cT1yy4Kj", "caption": "4We7x209", "height": 48, "imageUrl": "P72CG0dZ", "smallImageUrl": "tlhT2RDm", "width": 100}, {"as": "g2lOkrZe", "caption": "NH2tFQjo", "height": 25, "imageUrl": "wfH3MI59", "smallImageUrl": "cRS1Tn8a", "width": 67}, {"as": "gspAFmJa", "caption": "tZxdkvtU", "height": 95, "imageUrl": "MqmicXzQ", "smallImageUrl": "tFPpNnQB", "width": 27}], "localizations": {"D1cpw8x7": {"description": "G888wi77", "title": "N6xFSEpf"}, "jxAsgZ1i": {"description": "3TaVCAJ2", "title": "CBgx6fVE"}, "uNE0E8tQ": {"description": "MKKPgQ20", "title": "tYPExbHJ"}}, "passItemId": "vWycPICH"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '4yKB37xz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'en5rrV4E' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'FKzuXOda' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ygSEBOuZ' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'VNXASe20' \
    --namespace $AB_NAMESPACE \
    --seasonId 'JsBLyoKU' \
    --body '{"autoEnroll": true, "displayOrder": 57, "images": [{"as": "BjroVKCC", "caption": "DLpxOVdw", "height": 73, "imageUrl": "k2Bm6icS", "smallImageUrl": "T9wNXz9a", "width": 20}, {"as": "d7l2VDSl", "caption": "jjxyffij", "height": 21, "imageUrl": "7ZUn5mo0", "smallImageUrl": "ITmPHRsf", "width": 55}, {"as": "KbopdTK1", "caption": "TXFIwRwE", "height": 65, "imageUrl": "e4kwDtVP", "smallImageUrl": "CqBL0ZXt", "width": 25}], "localizations": {"bBx5reyi": {"description": "8iyueKQs", "title": "4RU6hWt6"}, "ULJhwIPE": {"description": "Y1PPzBaQ", "title": "iCMb3EmU"}, "ijEFMMzq": {"description": "Lhll7bZq", "title": "E0OFCuJd"}}, "passItemId": "StAWjqI0"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'f53wogzY' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hgoLzqfH' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZMRRfD6p' \
    --q 'mLsWvnlI' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'ze7LvHqZ' \
    --body '{"code": "rOcVmToE", "currency": {"currencyCode": "y9xO0ra7", "namespace": "6f9iCSZx"}, "image": {"as": "g0GmQHFu", "caption": "r5c39nqN", "height": 63, "imageUrl": "RcFCXAyA", "smallImageUrl": "svwq9pgL", "width": 8}, "itemId": "gi1pKpQS", "quantity": 96, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'T0cpl068' \
    --namespace $AB_NAMESPACE \
    --seasonId 'YduQFRAy' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'i9CKdlJa' \
    --namespace $AB_NAMESPACE \
    --seasonId 'qw26aujY' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'nnUeZyrJ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DK2OO0Gn' \
    --body '{"currency": {"currencyCode": "CCsQ5ZVO", "namespace": "ox5EsRZd"}, "image": {"as": "GxPDD8IR", "caption": "QzLkIWpF", "height": 93, "imageUrl": "6CpfJC7X", "smallImageUrl": "O3DPraoC", "width": 38}, "itemId": "7sRkhuAS", "nullFields": ["4RyjB3r7", "4cvGlhFE", "tn0pinyn"], "quantity": 96, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'DpWYOVuV' \
    --limit '78' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'di9WzmGd' \
    --body '{"index": 40, "quantity": 28, "tier": {"requiredExp": 53, "rewards": {"tFWNLynI": ["IZgDGbvD", "WtO2lKEK", "CsEW4AjK"], "3a76gwC5": ["yj7IoTql", "fwnMnXte", "p91Jdx2g"], "XR7XHq8v": ["CFTjOjeF", "KfOMz0o0", "ndwr3k2r"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'irYjGrJO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'r1cgICi1' \
    --body '{"requiredExp": 69, "rewards": {"gZx1C9vF": ["6xHf9Z2u", "PtgSxDGU", "IhM4toqG"], "yhQ4W0Ct": ["pcO7tR3b", "PfRrhbTa", "red3xBOw"], "GLnHhvf4": ["LIYbWxaR", "Esah7IKO", "cqFcH10g"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'AjrGCDre' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LUeckOyu' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'Ou74WNln' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rYI5KACv' \
    --body '{"newIndex": 89}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ep8n8Uz1' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'oDirsjwy' \
    --limit '59' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'XeNCrcQC' \
    --body '{"exp": 9, "source": "SWEAT", "tags": ["WvYdBPLE", "TvpURbHm", "jSxNwNWi"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '3pjsomcR' \
    --body '{"passCode": "i33Fz2Pu", "passItemId": "OutX527p"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'xfdcwpyv' \
    --passCodes '["bieRUzF2", "fAcAV0Rg", "sr1oP2pK"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'KzzTD2FK' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'iYsPJWex' \
    --body '{"passItemId": "Q1v1g4sv", "tierItemCount": 97, "tierItemId": "gCifdyIB"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'SlnlkpOk' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'rJjLd2dj' \
    --body '{"count": 9, "source": "SWEAT", "tags": ["5EhaIBX0", "E5PkDN4b", "XXbYZpnm"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'vs6qxPYV' \
    --from '4qzvavU5' \
    --limit '21' \
    --offset '2' \
    --seasonId 'Usn815QO' \
    --source 'SWEAT' \
    --tags '["oHJYOorF", "dt72J5qD", "ltaLEUoN"]' \
    --to 'oFZiqrpU' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'jPyLc7kg' \
    --seasonId 'aVypFRDa' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'F6uAgaxw' \
    --userId '64lWCX90' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'Pas5yc81' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'uPFVZmVr' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '3W60wfEm' \
    --body '{"passCode": "0STzaRhI", "rewardCode": "F1SsFXTM", "tierIndex": 35}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '6kbcdUwr' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xL5gqaNe' \
    --userId 'WmrerxxS' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE