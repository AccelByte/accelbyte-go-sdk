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
echo "1..45"

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
    --limit '50' \
    --offset '88' \
    --status '["DRAFT", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "6tJmh98YCIbqwKNG", "defaultRequiredExp": 86, "draftStoreId": "W7cBLTaRIWdhxswr", "end": "1983-10-02T00:00:00Z", "excessStrategy": {"currency": "n4UPNhCwHRZLfy1z", "method": "CURRENCY", "percentPerExp": 41}, "images": [{"as": "ikGIzwDMcSGvo6pq", "caption": "lKVn0pVmBG0IS6xF", "height": 56, "imageUrl": "FzP21TVvmbGAvl1B", "smallImageUrl": "e2pkGASqbvfUfCeT", "width": 42}, {"as": "KjGVZNkdDBDrm3SC", "caption": "WZ6hxZyfmkLhzWb3", "height": 93, "imageUrl": "PjJefOeHucS08kCV", "smallImageUrl": "tqnhGcrQ6q2i2TZd", "width": 23}, {"as": "6IT6eJVt8QvETKw9", "caption": "ak1q6jthDxeeav1C", "height": 2, "imageUrl": "yUiPs6c4UWZFwZX7", "smallImageUrl": "4nhdwdNtkhUyczGo", "width": 47}], "localizations": {"0RhtpqYLuNxDLJkW": {"description": "xKwUzklzPlKfAbm1", "title": "CCMMeFM8s8iDJGzT"}, "9EBFnsws1053edt9": {"description": "O4WUAA2gOXR9ldOo", "title": "halTTgdOOHy69rCB"}, "PvdTjScOYCy3wTg1": {"description": "iyCPrG6qzP2pyHK5", "title": "BA0eyISt0ty7rxc3"}}, "name": "M2j2NsirUcQC7H2C", "start": "1976-11-10T00:00:00Z", "tierItemId": "006FrEnbwvxmgzSG"}' \
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
    --body '{"userIds": ["dSaVFgtD3Yz6h7FK", "lGv7w2JqzNn6EhfR", "iy4UzUjzlXQ7WFyn"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JDo5dKAEi0LleXTy' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'iVRJOAhD40LtxgXk' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4vr5wN2uDYWPyHj4' \
    --body '{"autoClaim": false, "defaultLanguage": "L00G2nCXPZJxOD0m", "defaultRequiredExp": 31, "draftStoreId": "TZTJVpNx2rEidaN5", "end": "1989-08-08T00:00:00Z", "excessStrategy": {"currency": "N2eMxCGBb4vzzMPr", "method": "CURRENCY", "percentPerExp": 16}, "images": [{"as": "FrHaN7G2IhcaEXlb", "caption": "wTrpKitaOSTrxUOb", "height": 96, "imageUrl": "f9Emly74cQ4qpSw7", "smallImageUrl": "ycPMGReeyctLAXWW", "width": 4}, {"as": "HhKgrQM85uKS3i75", "caption": "P452bFFbIeG6VPIe", "height": 85, "imageUrl": "IzolExgMq7tLOLPV", "smallImageUrl": "8wj2yNIOyR2SkBHE", "width": 41}, {"as": "2qtrBXlUFRqQ4QVQ", "caption": "VTPnZiUXsjcAeMLb", "height": 26, "imageUrl": "wnXvtn02wGgPKo9R", "smallImageUrl": "RjtKZymFAyL6bcKa", "width": 65}], "localizations": {"o0tHA9eSI2lGjyZj": {"description": "LlbzDr8QzpWOzdDa", "title": "WnhlghzM3xD7WRC4"}, "fVrSE1Sg6qXT9xyb": {"description": "q2dk4i93lJ3HRUNl", "title": "tRDWkwyyrGkxExAE"}, "guto8XVtvb3zm6N1": {"description": "Mb7pfo9m5tajwX7f", "title": "W8ogZntvUzLbhHog"}}, "name": "NOgRnR9K2sdU1CSm", "start": "1984-04-25T00:00:00Z", "tierItemId": "KCECQFfplxxmg16i"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'RMJ6B3vEJWm8YygH' \
    --body '{"end": "1971-05-11T00:00:00Z", "name": "D1K8URXFcPsUK70W", "start": "1998-07-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ru6xlCMpfJL5MokU' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '9bbaN7nfSluHb9uI' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'Jes12WD2h8FzbqX4' \
    --body '{"autoEnroll": false, "code": "MJ48jnOaem6TDLST", "displayOrder": 78, "images": [{"as": "KlzhH9BUI9fK7ARb", "caption": "10tf6UwE6Eqew3PQ", "height": 80, "imageUrl": "CsEdxjyfqAbNRv84", "smallImageUrl": "nDtQ028OoxKS6ucu", "width": 78}, {"as": "sv0FmGYudgJmAux4", "caption": "KfeUHB44JuFu9mdV", "height": 29, "imageUrl": "2Mf7Cg1xCrjmVLkh", "smallImageUrl": "7tUhsy65jItYwwwL", "width": 28}, {"as": "WjAaGVMTN8gcWvLR", "caption": "rT2SdCSVcF0hsrcG", "height": 57, "imageUrl": "tnlWniuucDFN7DLZ", "smallImageUrl": "N5GgKqlUtPv0y8kj", "width": 80}], "localizations": {"7Tbt0FEmZUV4FwvF": {"description": "eZzzuNe9FMMaknxA", "title": "CDM7LAhyY5Q7nFRK"}, "ch4oq6JvqGRkZfMj": {"description": "YPaVIA1dS7anaRjy", "title": "GUo1QQVuhlcZUWWG"}, "JgP7yS7KYO4C4UIw": {"description": "PGp3PO71eZzaExq2", "title": "pXbCKpQlKeFy2bFJ"}}, "passItemId": "YuJKZ3jewmuDVhYu"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '23s2Hit98VhW0WUh' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XeSiaqNE2awGKUml' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '4gbSDSz6IAud3lUz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LYGweVAYLfdmh2Ct' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'tFtJrhdV4OCXDkDJ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'hWb84La5ryOLOUPa' \
    --body '{"autoEnroll": true, "displayOrder": 86, "images": [{"as": "VqRdINjM3a6bISUs", "caption": "6mGvgePjmjdsifTe", "height": 54, "imageUrl": "nRcq1lDlUTyimjgp", "smallImageUrl": "icrteMyoI0BEvjBs", "width": 1}, {"as": "eSf1Ta583rAMx64o", "caption": "MrcRoGoTA32anakZ", "height": 73, "imageUrl": "BRMMReXR0bywXw97", "smallImageUrl": "TdcrcNIqZd5MsrxD", "width": 100}, {"as": "UmbX590qVD3GpmZK", "caption": "DpTr7HBBnviMl8Bq", "height": 56, "imageUrl": "dMsemc8baDjMLFTV", "smallImageUrl": "8UDj6i636ldE8h2e", "width": 47}], "localizations": {"JW6PO56hw9GxxEhT": {"description": "wH8jW98i1oDf11Kp", "title": "VMSjGvqljFzL4gn6"}, "7BIc8HpJMgTqCPzK": {"description": "GEq1Bw85X29dm1o2", "title": "i0EZ3q4aPkdnlHVk"}, "r59sTfK3T85URNEP": {"description": "tuRkbEA9xP1F9oYL", "title": "7B9R0iKqorLjYdyl"}}, "passItemId": "wZt0kvHKXeNN72sE"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fXpPtwjyUJ53oO6A' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'gbBfJpIiHxfgpRDL' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'lLrwAAYvoc2YfFh3' \
    --q 'zsHI3eWmkoQAjEEJ' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'bZ7bpDWTCPZdSAFX' \
    --body '{"code": "MomAyV28mJNDKvTg", "currency": {"currencyCode": "Z3iWQHo1zqYYgtev", "namespace": "4amXjedkiHHOs9tE"}, "image": {"as": "fF6TvyTOWemeOeLc", "caption": "JBd0IzCqeyD8LnQM", "height": 43, "imageUrl": "JQXRMoYzx65g84JB", "smallImageUrl": "Nh3DwUDsXT2Td1Q0", "width": 3}, "itemId": "LFslPH49uaIzQpH3", "quantity": 73, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'ap2tplaF9K7ZkuAd' \
    --namespace $AB_NAMESPACE \
    --seasonId 'nbU86v5jz21L6rfa' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '0JpIs9q17r7gEa26' \
    --namespace $AB_NAMESPACE \
    --seasonId 'nA1S1aQ8tbeSnDnj' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'mwrcu1PtvZOUPEIE' \
    --namespace $AB_NAMESPACE \
    --seasonId 'u8aoJC0s1qdIR3aN' \
    --body '{"currency": {"currencyCode": "zTYlpIoU173x3Naj", "namespace": "SaKkDnKpmH93k1Bz"}, "image": {"as": "bDIu2MhjkzZKkN91", "caption": "wFxLpnT2xb3j3VPU", "height": 14, "imageUrl": "zQEkxu0wntsVDrpi", "smallImageUrl": "NcmrjAJHL3937ola", "width": 92}, "itemId": "XYAOmqXGFbR8HQB9", "nullFields": ["lUBiJhak8d8NEyd1", "PHRVcGMQry6HxTgy", "JfWG0uMnFaJ3VaJy"], "quantity": 90, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'IBFm4TfMu9Iv5Lx1' \
    --limit '62' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'PHBd1SXsa1toryoE' \
    --body '{"index": 1, "quantity": 12, "tier": {"requiredExp": 53, "rewards": {"3mMNrXZC0d6s3iPT": ["NHfiaIOdYVb96GHk", "krnkWV2WnNOcS5SP", "mirqSh7nJJHppF8a"], "D3uEWucqmHm8J0Ab": ["JtgG86ZR0Vg0myZM", "I8GAsG2evKOi2Ddd", "PeNVMaajL4hCbXP6"], "JrY7Bi8DXVXdhk2H": ["UKPyR9Mql6xyXLLk", "TMQ3r9wuTi5HRixp", "y6Co93tCJWVEeipL"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'cG9gsxNz4HY1s9f7' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Y6zriGN7DUlTrORp' \
    --body '{"requiredExp": 73, "rewards": {"njXPBSJ5jHDIALGM": ["65KjpxE1XM5YKCDA", "0tnuRgf1VVdrEePL", "h8qrX2zEKR1txtqq"], "zERO0mX9CRX8IjfT": ["FzcqFrIXGpwuapTA", "Snssx6G8XAt8PSvG", "sPOvgGN5isV5x7wm"], "5wnnxWxchVNIxzzk": ["NtPKJumsgs8Hmqs0", "hFTzpcqrwN9ej8SN", "vnUzmx5cPF30Rk4u"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'd9ey5MwLDN7ER67f' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KXyvwCWuyEe4GyiR' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '6Ifk4umTzb8D4WXx' \
    --namespace $AB_NAMESPACE \
    --seasonId '0zUKz4tncTtOMjXb' \
    --body '{"newIndex": 65}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NEahZ4UC8DQys89Y' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'PZgFBSzLN8Vy1wDU' \
    --limit '88' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'C4sxdgniszUxU1zi' \
    --body '{"exp": 87, "source": "PAID_FOR", "tags": ["46aQNiGuM02DsrYn", "er0saom7XMfeYNKx", "Gm6iCPG4fOOTmS8P"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '2D1ygK3XrLX71u9Q' \
    --body '{"passCode": "PHe7uEKwNsOvGriD", "passItemId": "6OyOozI8B0JLFWJj"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'A8cgjDUVVcdDJ7I4' \
    --passCodes '["SXpMBlsJVqqlrgE3", "8L6T80gTE0R0r7Op", "d6XIJWWQHQ73y2es"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'rXeMYKFAZSleBYEh' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'GbcNioTAjHabCeaf' \
    --body '{"passItemId": "xxfwY1No5vvaXn6J", "tierItemCount": 31, "tierItemId": "Haf5N2hWUMOll6uW"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'ngMh1tk08X1JEQPK' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'WLTFsPESmxwylaf6' \
    --body '{"count": 82, "source": "SWEAT", "tags": ["RoJ0RoHGw3clKuyK", "jWDiqpW6M2kiig8I", "4BmG19oDGlvILy78"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ccmqWeAKrlPJXSXm' \
    --from 'wLQg0n1H6hAOJv4g' \
    --limit '62' \
    --offset '71' \
    --seasonId 'LrMF3QAFONq9eVSk' \
    --source 'SWEAT' \
    --tags '["fOzXQmRuzq4IAJt4", "hqufU57HTOZ6Ld2J", "BRPkb9qtAmR6J4vP"]' \
    --to 'Su0xsK6gJ1VyrrEI' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'Ewd0G50HsMghiA6v' \
    --seasonId 'deO2fNWOhxx4JQKG' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jcQ2q0bV2kTXSStL' \
    --userId 'fHCH9FVvKYTTRhxx' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'MjnjI3ZvcxgS7MtV' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'abZbkvktbEjnKK7z' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'WNwyOl3bv6De0cb1' \
    --body '{"passCode": "ESMoxuSPwhUUEDp0", "rewardCode": "0z2kSxjlebffbakb", "tierIndex": 73}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'XyxRQkmzRHOtxj7o' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lTU7TwebpyVVUP8O' \
    --userId 'D27veXrIwTH5tFgN' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE