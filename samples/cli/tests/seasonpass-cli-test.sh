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
    --limit '100' \
    --offset '81' \
    --status '["RETIRED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "r6qT2Bj1lWjct9kG", "defaultRequiredExp": 43, "draftStoreId": "dPYHyZL8341x90y5", "end": "1971-03-20T00:00:00Z", "excessStrategy": {"currency": "28zeSbxnQsWB5WKl", "method": "NONE", "percentPerExp": 35}, "images": [{"as": "1eyXMuak44op220I", "caption": "1vejYLUt3vd5uqMS", "height": 86, "imageUrl": "dGWQDsTJFf8yXGzO", "smallImageUrl": "ZFW7jZcVh8eMhErf", "width": 48}, {"as": "TTARTMArZ5A2SjlA", "caption": "kprNMch4UBFSLeN7", "height": 91, "imageUrl": "N3JzztWmFxUyGCWn", "smallImageUrl": "bUI1qUSts1JCMLTm", "width": 62}, {"as": "RUXvYHG4u4OvQpcY", "caption": "VVz7Xpt0PD5jfoQg", "height": 54, "imageUrl": "YC3taxaW9WRBA0gm", "smallImageUrl": "7CGiaVRAGkpHFzIO", "width": 73}], "localizations": {"mAPdDtDOkbMcMO8J": {"description": "IrIO0jim5injBCKW", "title": "WrlbgLo4m7vNvNX0"}, "KxR1NFjpnf64uzEr": {"description": "CuV1Pjc686u2yznJ", "title": "NXkVR75nrFiWKvJM"}, "02RT37Qp6jTOTjEA": {"description": "JA1v0gEJtZDwpCEO", "title": "U2W2lpDXZ3MNGLbp"}}, "name": "QZE5CEgIFtOGZCt7", "start": "1977-04-02T00:00:00Z", "tierItemId": "sOSiOFHJSHZmTpBV"}' \
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
    --body '{"userIds": ["LLQEyq3wjPbP89iN", "We0Vo3dryEyN4MFt", "FGP0q4gjgkum5AhR"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'FDk70B5Nlv2Ca2MC' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Gc0sfdxyrqmj1fUR' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AJ0agdAywOeGrRwq' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kd3DfN1HsQEy1inX' \
    --body '{"autoClaim": false, "defaultLanguage": "q4oJY25u9FUNNzVE", "defaultRequiredExp": 6, "draftStoreId": "0r5mSariHOucOkFD", "end": "1986-01-04T00:00:00Z", "excessStrategy": {"currency": "aHGNyVOPZzYIvTUz", "method": "NONE", "percentPerExp": 54}, "images": [{"as": "WtIthIbuiP8lIbP2", "caption": "jy0j2lgaAAo2qIHL", "height": 0, "imageUrl": "ae7LE5bL7IXdyZEq", "smallImageUrl": "XPLW311cKqRzOXNS", "width": 4}, {"as": "EM1BoaLaEWFA2tuU", "caption": "4VSl0JEQuYr4NetE", "height": 18, "imageUrl": "tHtND2myQzQPLPEY", "smallImageUrl": "Jz6MuSmjATEpucLv", "width": 97}, {"as": "V9mMIxnG6Uc7wuGR", "caption": "5gi9NM5ILRHvUJRP", "height": 85, "imageUrl": "1rfS4Lsrfj510CcY", "smallImageUrl": "faCF78ilSAI7Lw0p", "width": 14}], "localizations": {"TPR581a6NVvavtzg": {"description": "mb0R7YZffEA20YbR", "title": "2DkNyXffb17xpPUW"}, "ybPvxskwxzm38oNF": {"description": "jmW1dNbBw1n4pUOY", "title": "ndB3gyEyrJAYhDS3"}, "RLlrrjbo8lOfpIgr": {"description": "ueVXCZ9dAZSot5Fv", "title": "QmoDc4jAsROGdevJ"}}, "name": "JcMywSyCQZR6iWJW", "start": "1982-01-08T00:00:00Z", "tierItemId": "hBrWVXas6B9xEGsX"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dic5STB4VdXXJXwk' \
    --body '{"end": "1992-11-09T00:00:00Z", "name": "6xatLyVbEIxpe7Fd", "start": "1998-08-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rOt84ysLhF0rT923' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'k4FqyuhiMJYV5sXK' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'VPQwzaEe2pK4q7zx' \
    --body '{"autoEnroll": true, "code": "BGQZjRClFlyWcu9Q", "displayOrder": 67, "images": [{"as": "qFH2TdxJSnu0F92n", "caption": "h9jowU3JK9vHj5Dk", "height": 81, "imageUrl": "478NSzjb4at5aHNS", "smallImageUrl": "tG8HlAlczgqk1Jvp", "width": 54}, {"as": "oyanbcMrDLvqzLTq", "caption": "dB7qY8FHHlCBJXUO", "height": 26, "imageUrl": "lpgM0DWgOP4ZXBOE", "smallImageUrl": "fdws1kTFC81Ya55a", "width": 16}, {"as": "YK43M5QuLKc6OUVs", "caption": "NOZyyUoVjVPXrLp7", "height": 14, "imageUrl": "bmji3JUoefrct8rl", "smallImageUrl": "ZqGKAVt653sHqUDK", "width": 13}], "localizations": {"7FL9LEsiXCvMFB1t": {"description": "8lvLx8tJ8OpbZrhs", "title": "VC6LsOMpcEscQsTY"}, "anW8QXnWelmGzDiJ": {"description": "UPoe4aPOcqsJRp75", "title": "kRqtLflBLbH9JK5v"}, "0XmVGCzd7vWpMD72": {"description": "oDMkrQjXe0MnLBxz", "title": "31hq4liIk5W2VbWr"}}, "passItemId": "Qz2uAz2KAyoTtAek"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'L8opDJy6jezlwL87' \
    --namespace $AB_NAMESPACE \
    --seasonId 'h1zeQz9HFQExmNuZ' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '9iGnKgSBcvoO1riO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'yFiAcgJQwibCCUEV' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'iQpmTMx118zIeIti' \
    --namespace $AB_NAMESPACE \
    --seasonId 'F6xN7gBt6khbWjZK' \
    --body '{"autoEnroll": true, "displayOrder": 38, "images": [{"as": "GRstHrWMO8ObuP0j", "caption": "WLptQyTUMJkvvhgy", "height": 80, "imageUrl": "AquAxXAiZhsb0LwT", "smallImageUrl": "GQ4TVvVpVHLKyFoX", "width": 76}, {"as": "GgTDSRp8tD15gKWu", "caption": "oPQ5SrqXIsJ90rJC", "height": 33, "imageUrl": "uOoxtikUID3zb8j6", "smallImageUrl": "g0Mt9WM6MpTzhcqC", "width": 100}, {"as": "cXYNMnhpFyyjzYvG", "caption": "OVMBjKrNnLvBGXXv", "height": 24, "imageUrl": "aAML67n93pqRaSHf", "smallImageUrl": "kySwhB3SONY8S4BT", "width": 81}], "localizations": {"BxppTeMlt4tD5tkg": {"description": "NMijepgotGNIE1OM", "title": "RDNNqLZVfZ1QLY0S"}, "Viyahk1nvQOyzqVG": {"description": "WpRAi8Ivu3Fu8OcG", "title": "uANrhZAIza8EZKa9"}, "RRK0l8xuWbrR1tSR": {"description": "V12eflpb3GLObp2k", "title": "TeUuTeeajF0OTy2l"}}, "passItemId": "50pMsj1ZojLH22Z0"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Cq6CXzPkCUsnxfRO' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'I9si6X02nJz5E2cj' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'uLN8nkEaMhQEtvAu' \
    --q 'agPrxXBCkhPKZKjl' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'Qxax0MRP99ORiTnL' \
    --body '{"code": "ZYvhEqO7TNNeL7dG", "currency": {"currencyCode": "DPjxcOpeKVcDmfmS", "namespace": "2RDHYoDts3PeRMvE"}, "image": {"as": "XBdsDqLySemdieLM", "caption": "PC1PyZH0E2ILKxDA", "height": 34, "imageUrl": "vg45BK7ZYoOfeHay", "smallImageUrl": "stwh2Pj7GJjNiqpo", "width": 41}, "itemId": "ccB7aQaDq2jxvTzD", "quantity": 31, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'umKLUDNyVICZbOfL' \
    --namespace $AB_NAMESPACE \
    --seasonId 'N315m0Wo9LxjEpcE' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'MFVUXpampOFbhBBP' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ce9jHZjaclYthxGO' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'IkiU6c1BW72aL1q2' \
    --namespace $AB_NAMESPACE \
    --seasonId '8qlU16yVKSfeihwT' \
    --body '{"currency": {"currencyCode": "SdXB6w1bCv9ofYkP", "namespace": "rNcM0DvRqbFNe2c9"}, "image": {"as": "Rbi6nxnHfm039Q7c", "caption": "f2gBGAESeUKDqy0g", "height": 73, "imageUrl": "w5U7Q2sCqdmCl17r", "smallImageUrl": "cNgsebvVchPVpiht", "width": 77}, "itemId": "2AnhG61mVvi7CDg2", "nullFields": ["xa4mJ4EnF3oLdr5P", "h1NQprZNXZp7PM6k", "xgKNEt2gnaMORhpB"], "quantity": 16, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '5Gb2p9lkMtBNp3VN' \
    --limit '7' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'IgWUxpxXK9dPadEX' \
    --body '{"index": 16, "quantity": 79, "tier": {"requiredExp": 47, "rewards": {"vXIu3EcbJGT2S3E5": ["3hqistjPUsa6DpnH", "ibfWc4DlNMZ0HA3V", "Gawy4xaTYvXCFIY4"], "J75ks4484Ln0LP3v": ["YUozqo2qgqG8tV8V", "d0z7oCDho9kTGKWL", "QsWHveSXiadrvnjo"], "6eSvUvZWLW6Ckb6w": ["5cgbzhypj0eSx4AW", "dkaMnmeY5uK6l75h", "kd82TTCyuKhGn1rh"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'F7g4MeoiAUkagYNi' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Y50FBa3UmcbUXLU3' \
    --body '{"requiredExp": 45, "rewards": {"foMfscxysqezAgIT": ["IXkrfkoBTWzVtzh4", "pRLyUad8rh200o3p", "K0hEDQZPumz6h9ip"], "UmvVzIpNv0p1gIzl": ["I0p6yjHCj46F6GjO", "IUTFgz3IKugTAI05", "amNNDZH13XfycTVZ"], "KebBpaWb2j3UYktA": ["jgbUilGWz9yTWhpF", "1Lgxi1gldkKOlNH6", "yb9ALoOZlz1uMRw1"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'Af4TVTN5TO6fxG0M' \
    --namespace $AB_NAMESPACE \
    --seasonId 'FvqQVyKMi9Lx8cMf' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'XRqYSgYk4142lgzt' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kfcBJMtwQBTS5dNj' \
    --body '{"newIndex": 64}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'cZ0MOb6NW3GtBEPP' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'RlgjdeeEyhXODUB7' \
    --limit '42' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'O7hvE03wFFphZhhz' \
    --body '{"exp": 55, "source": "SWEAT", "tags": ["fFkpzQknUfp4P3wx", "M4pxReZ1heYsqo7A", "OV1EuPJTCQj8EVLg"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '4pe8Lnsik7yJGYX7' \
    --body '{"passCode": "ouy8WlnpwahbhmSC", "passItemId": "IGZEsPdyDE8gCo10"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId '9jwFwuwHb9opQmav' \
    --passCodes '["hAmse0m4XrdqBNlc", "btthsc9X9v5aI7tN", "By2lJ3kZXyNXp4r6"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'rVihiVBYof05mKMI' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '4UcsbZwvGxr5SFck' \
    --body '{"passItemId": "W1VngRTfbE75D39t", "tierItemCount": 1, "tierItemId": "l83uQNj9frxTlMHh"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '7jmxnwedqkhltaVb' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '6KqYl90cPkVWka4b' \
    --body '{"count": 3, "source": "SWEAT", "tags": ["vNXynlZx4CXpSEoy", "tuih8Ploe9XmFEpa", "n80HEvYtOYfQISbP"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'NALQTYwfIrk30gqm' \
    --from '9X8Mcq44YrOa66EZ' \
    --limit '10' \
    --offset '52' \
    --seasonId 'RT6Cb2bXSwoUbMCb' \
    --source 'PAID_FOR' \
    --tags '["wibIWu4ED1Mx76hr", "A6inHkdlNs3LY27W", "rfS9G5w1joDr9yar"]' \
    --to '0ejrR5p7irlivN7f' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'jpTF8KSKpTis2NpC' \
    --seasonId 'DvkIIjGqIFJgvrln' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'O7TJNWSoPWRmeAVS' \
    --userId 'PlY6mU8cfDLMBvH1' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '635gBMSGWbtHM3qq' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'VEqDL1YZ6zN2fziq' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'EWxGHZWtqqQ45tsl' \
    --body '{"passCode": "jZz81ayeZHgpHPaN", "rewardCode": "9Ts4bQ7fhNQ35wKA", "tierIndex": 85}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'tfRnjsHx5qzzgixX' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '7xgpA1477JYguFSe' \
    --userId 'acpDyUY7Bz9j0GGT' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE