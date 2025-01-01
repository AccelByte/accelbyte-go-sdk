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
    --limit '92' \
    --offset '86' \
    --status '["RETIRED", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "AVaQw2029I1lcAiG", "defaultRequiredExp": 78, "draftStoreId": "7ynx0zhmTbLZ8pri", "end": "1991-05-06T00:00:00Z", "excessStrategy": {"currency": "O5hAasAQR8MGxKrv", "method": "CURRENCY", "percentPerExp": 76}, "images": [{"as": "Lcgtg2zq89v0mnlK", "caption": "SoUD7VB3NSLBwB95", "height": 68, "imageUrl": "vZYU82dzKpLNZZCC", "smallImageUrl": "1jfEFwxAgWUtw0oh", "width": 98}, {"as": "QjljrXPwVOR0UaX6", "caption": "8dGNxW7oZQuEpim2", "height": 54, "imageUrl": "AqeDBoF4EL3k6xbT", "smallImageUrl": "rMTXFLQzrjh1Nb0j", "width": 60}, {"as": "hHk4YeFjqJRUcOsu", "caption": "tun4MAkfNCFN1zjA", "height": 36, "imageUrl": "4EIqSESXaxfJNGlo", "smallImageUrl": "pDQaSDpFgiV2A76O", "width": 64}], "localizations": {"Hl9vCz54JMRFDoIp": {"description": "T4sOhVx79lVqzTej", "title": "33xUQkPK3SeRNIoR"}, "wd8BhcDapyXD0G75": {"description": "337mBiWsB7fMFAX0", "title": "UkB8HdQ7xsQh7zNz"}, "R0LR5v96p9YcQ5o8": {"description": "TnBccuLxSQvpUFhm", "title": "HG1YbLK2kuBZLZGi"}}, "name": "1Xn22cZA0krsVNcq", "start": "1974-06-01T00:00:00Z", "tierItemId": "7XWvJiqZQeMHvUIf"}' \
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
    --body '{"userIds": ["sLv8XZfwZqNEDDAL", "AGssxlL7YePse9nT", "7MjkJe5evbMe3kFl"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZVDGIWzzm0rynM1d' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'BDvvkxVRAUyUyebW' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hMYocYLR0w5nSLxL' \
    --body '{"autoClaim": true, "defaultLanguage": "XexQSKaDiOBJRyqN", "defaultRequiredExp": 0, "draftStoreId": "RSeHb4hfdNg1yz92", "end": "1973-01-21T00:00:00Z", "excessStrategy": {"currency": "EquHISRjsyQfigsn", "method": "NONE", "percentPerExp": 7}, "images": [{"as": "uU3tLziIM0LLafoT", "caption": "oeenvglikVOisQfz", "height": 32, "imageUrl": "TEGgUCSxGzbKkXDI", "smallImageUrl": "cBuHH4MZ34l7sHA5", "width": 31}, {"as": "wsVnM7Qcbg31ho3s", "caption": "SixdVQVLPwG2CEXc", "height": 91, "imageUrl": "99EAZwFXQcMXDmND", "smallImageUrl": "ys2fp42IQi4dVWsf", "width": 67}, {"as": "1d2fu4sh92QL0LjQ", "caption": "8f8Hcm1YNbL9Wwwu", "height": 62, "imageUrl": "sr77legwKErtpNmr", "smallImageUrl": "o9bnRggwpsxBg9am", "width": 36}], "localizations": {"UXkSEqhXsavXSp3A": {"description": "5C4gU3rsrNGxYOjU", "title": "aO58n8SJA1WWuBNl"}, "tcH90f9fwIFdYSIx": {"description": "N2QsunSStUtpVMVr", "title": "xkAb3k8M9FRyJXkd"}, "3q9FgYHoZyXtMGAr": {"description": "ZPyiW1zaWbwDdmbu", "title": "o3Do2hYB7SeE052p"}}, "name": "7gKGxJY6D9HrNXRs", "start": "1992-10-04T00:00:00Z", "tierItemId": "wZxx0IyFf9hl5Fxl"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XCy8I2LqKJ9fSyMK' \
    --body '{"end": "1997-10-18T00:00:00Z", "name": "HDS3nN4eNivOLBKM", "start": "1973-02-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mQO7TwTNAgIrHZ8D' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'p7CUPpY8sCSsbalW' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'rUkgrkVXqYqETXcB' \
    --body '{"autoEnroll": false, "code": "mSZ853EQk3axZPnF", "displayOrder": 59, "images": [{"as": "zwnSBIgRCfKDTCL2", "caption": "BtOQvO9sx3MAcxHD", "height": 1, "imageUrl": "QlNWB97oIZ8YAJdy", "smallImageUrl": "5tpW2IJdxbSdMgKP", "width": 39}, {"as": "jKEz5eZ8MaKIO7is", "caption": "bl3CTf1ojvjpM4XG", "height": 72, "imageUrl": "XC8qJSZY2gtuJOPU", "smallImageUrl": "hyHjzb3n8Ndx44mg", "width": 91}, {"as": "5ZBsVuk1JHorUhO2", "caption": "GpB076KyCNHr8jv1", "height": 92, "imageUrl": "wNJ6W8AGleG1flYp", "smallImageUrl": "bBPPHPGc0HixklLJ", "width": 45}], "localizations": {"iyr1xU3dLGPLLVnC": {"description": "yoU8ZZfkQd0kXSx6", "title": "Ay6p42TrsoSCCkDp"}, "wdXQ6JbFYbWKD0oe": {"description": "XXJhynBb4AdYRot6", "title": "FMnXt52GnHbaSxu8"}, "3eAlyDyWiG8vLpTn": {"description": "FjphPow01HJybGXE", "title": "qBDA89pHlmgTGtGl"}}, "passItemId": "r8oeDux6qWCbmYU4"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'rxOVi5cMHRLvPt4R' \
    --namespace $AB_NAMESPACE \
    --seasonId 'x7wxTlPsk5szQJPP' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'YNFSGDEplW0Z1fjV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'b9y3CqziQAinhImz' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '2BVgSja8vibLASKF' \
    --namespace $AB_NAMESPACE \
    --seasonId 'AsQapy1SY3lyUsxj' \
    --body '{"autoEnroll": false, "displayOrder": 62, "images": [{"as": "xkwQmldgzjT4HZ5S", "caption": "v3A0fRZDeP7Rr4ZW", "height": 79, "imageUrl": "HgMzgcU19msIDWjW", "smallImageUrl": "2QGG5UhGCynfd4Qb", "width": 87}, {"as": "8btMOpD1xlJnt28V", "caption": "zTFYQiBvc7qjwFti", "height": 9, "imageUrl": "iJDAnP3CJtwQn2y7", "smallImageUrl": "5QFvJYefrnHFg1Ud", "width": 52}, {"as": "To1B227z3iWdvblZ", "caption": "iRhw1KEkVta8txRb", "height": 64, "imageUrl": "ehiEwo3nurhrder1", "smallImageUrl": "QNl1pmAeU8by1VWh", "width": 71}], "localizations": {"Rbcn0saMLjF0kkHF": {"description": "EiYh7ur17a6IXWRy", "title": "IAKAANT5AAYPQx9n"}, "c8OgcAjnmZiC1ZxL": {"description": "1Duf4filre5H9xoq", "title": "cUJwW7mdG5dppOb2"}, "7QbhbtJWfk4nZCQa": {"description": "X2u4YdQOBnRDMaOZ", "title": "Vetaa47PStgpl5Uv"}}, "passItemId": "m5yKa2vA9P5YQVzj"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dV0TCWUGV3toi3wD' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sglE1pW3pOyJNB8I' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'gZ6zlhGhbtyLQDe8' \
    --q 'jVs3voBaa6n8KShm' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'mhohvxlVpdhvJX6t' \
    --body '{"code": "33J9AtMtWenQFazy", "currency": {"currencyCode": "jZIpJrtdwGYUXeL8", "namespace": "yjIbE2q0LH6DXOee"}, "image": {"as": "zwsLEeVsMVPSaHtV", "caption": "GKqFPPX0NK5S2VCH", "height": 72, "imageUrl": "uRgLY68pztTF40B6", "smallImageUrl": "dlimKYpvSgHTS4Xh", "width": 16}, "itemId": "e0khB08cnq4Lw5L3", "quantity": 2, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'dJ7GMo69OKsxiQXb' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jHe7uyl5A5xdpwxA' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'gt0tohgOsmh2tdlZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Acw54ZnfJb5LyzqR' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'Bs2aqqQptPLFknAe' \
    --namespace $AB_NAMESPACE \
    --seasonId 'JRNB4ugsFS2mvI6M' \
    --body '{"currency": {"currencyCode": "SEMmFVhaT1bVtDt5", "namespace": "NC2ap1z9QchMLlYh"}, "image": {"as": "IuMImKwZl67Ybhhn", "caption": "6akLMtWc5K0zHZCe", "height": 78, "imageUrl": "aalX8edtY7c5RC78", "smallImageUrl": "TuC2MUzKu9ugGKJI", "width": 75}, "itemId": "EzMeKujAsBT3IKsr", "nullFields": ["44C3KTgMFzjjqOim", "I4JCJVgbIXHymv61", "b9aSWSM2p2AUQnoC"], "quantity": 55, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'raOc2DezE95lv2r2' \
    --limit '81' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'OQhgXjHOvlKCnIqn' \
    --body '{"index": 72, "quantity": 76, "tier": {"requiredExp": 97, "rewards": {"OGX6aqQ25PXTufHV": ["kUmdMrQSjJlnEICq", "1hHje8fpDrhAkk9X", "5I2RQa3OWdjJJ4pM"], "CZKW9zQ8hHDwJZMH": ["wtQIjsbmjFRAHHjT", "Rs6u9Gw9CDDihSp6", "MyPmeARkyIY6cvev"], "1Y2eAiEWRgThpOfL": ["EJgmVRgBUYDKebWr", "FX7jkVMhCSe5IOS9", "ZfnKQ2vxFOgn4Ufy"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'Sg7IRbR4f94s0d84' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Qec2cz1udNQZZB6n' \
    --body '{"requiredExp": 26, "rewards": {"BilMpe85Yqw7Y6Ds": ["9VFOWduQj3pa4VZ6", "DdljZFtE5ft4UcAA", "3yeK8sUeGBCJFMqM"], "bhUAOsgyc5HR2Ci8": ["FnUMBmdnAZ0p7Avj", "QhfrYDwaj3agI2Hd", "kyqxvLZda1GYkJy1"], "LzJTj6QtbVVkv76I": ["f3kGjzkX5asErVzr", "KTVJVliC04oRcGcV", "uhwBlrxJpxoNsgX3"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'n55cwnWKMJeVFDFb' \
    --namespace $AB_NAMESPACE \
    --seasonId 'OuiMnpo7MNRe6ktP' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'hYfVHG1eGYdhcJ9n' \
    --namespace $AB_NAMESPACE \
    --seasonId 'tplDKE5TORoMiigi' \
    --body '{"newIndex": 27}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dykV7NpBsmpDatDD' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'C2No13La8PMXKU7F' \
    --limit '79' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'psPBQJulw38iBI7E' \
    --body '{"exp": 17, "source": "SWEAT", "tags": ["qCD83D2f3RQrULFJ", "oMq33HmFzqCq7hS1", "BD4Z5Q2NGix9pcaG"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'CmBteAXaTDJhXBe2' \
    --body '{"passCode": "xRRZsS4NhVEMOJjl", "passItemId": "sP3KtF9peBQuM2Ya"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'JfEoxuybVn25iwDF' \
    --passCodes '["3YE1md3lZXmMciGB", "BFCizn5EYRfkp6rN", "a1I59CLvAcfOwrlE"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'RcUHns3xVNONzf0E' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '1oSyoOMaf19h16Q0' \
    --body '{"passItemId": "icfH6rdhWfQgF9BL", "tierItemCount": 32, "tierItemId": "9t1zNREUZwXh40iq"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'ZnKu6JwPONgzoQKF' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'UY9BJt5zhLWB7eAJ' \
    --body '{"count": 52, "source": "SWEAT", "tags": ["VoMdtTk3VsAUg3G6", "8RrTfZlMHlgCrIsW", "6q0XPEIDTDlkwXem"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'j1Q6yYW5kjsL7BoL' \
    --from 'FQj8WXy22l8ZKqG2' \
    --limit '89' \
    --offset '20' \
    --seasonId 'oJ2p0dZSDgom28Xo' \
    --source 'SWEAT' \
    --tags '["nba00dFKBKM1Nhqp", "zbHqElqRbIGkxlVj", "ZbLmngCJC4vosHNR"]' \
    --to 'YKyIZx4Om3lTv4Az' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'rrz0dqXMR7xhK0it' \
    --seasonId 'ZbvvOKfcmKZDuFwy' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Gym1LBPP40XB6o1M' \
    --userId 'NoCzjeZyHfah6pjm' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'gneWo9Wxldxkpn0z' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'xqj7lAMO3GiGpG6n' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'WG7Vhn0zst0OxrN4' \
    --body '{"passCode": "pORJXfxVuTTnHaRq", "rewardCode": "fWl5C6CURag9iWu4", "tierIndex": 92}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'cNx7W43J4yahnBnk' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nm4g71NdKafNttyG' \
    --userId '97iyQ7eKs4rOvDEc' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE