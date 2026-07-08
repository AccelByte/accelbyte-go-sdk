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
    --limit '25' \
    --offset '44' \
    --status '["RETIRED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "CFcunxmTlRMFTpjl", "defaultRequiredExp": 23, "draftStoreId": "OinFzwSQ2qeuiCCz", "end": "1979-01-26T00:00:00Z", "excessStrategy": {"currency": "mXdFUMfeg6YWBg1v", "method": "NONE", "percentPerExp": 18}, "images": [{"as": "qc8ev1aSgeYBvDpn", "caption": "nhdRG7SwSW40w2mA", "height": 28, "imageUrl": "57LPLrzKd09fgKLo", "smallImageUrl": "HnEWnD8ZnYNnVO4g", "width": 60}, {"as": "zu3foQVa2CzsvvZa", "caption": "ztjdECfU9dxWv21f", "height": 6, "imageUrl": "DBKxFs5dJjj7BcRR", "smallImageUrl": "6TqBqSSop08asMoQ", "width": 6}, {"as": "4syVOoz52cQz3GyJ", "caption": "SPGQvLSD0LeGxpxv", "height": 13, "imageUrl": "dpwNYnvZIMofDkDV", "smallImageUrl": "zp5AczRbvcvXR5AJ", "width": 2}], "localizations": {"WSqaAgO17tKqNoLT": {"description": "l0tpJm23aFWID7si", "title": "RegCsDCI0DXyhJkU"}, "p8hgouY6H90GjYTN": {"description": "64RlcSN0uGYwfBlz", "title": "4cHObzsHaAE4jP8d"}, "OhMlf0ZgIGBsC0i3": {"description": "i67CW0FTSo1hIeny", "title": "IncUvgdtSt7ssbjQ"}}, "name": "t0yStbuHStnjmbnm", "start": "1988-02-10T00:00:00Z", "tierItemId": "T33fFEuRQGXYBE7n"}' \
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
    --body '{"userIds": ["pjLroxbeGnS7RRIi", "lJHcJ3g6xy7mJsoQ", "FSaOzcWX0CAGPIrL"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'GmTf8aKoS3Nmq58J' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OshLuG5kVnWKmu80' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'i7hJ1HGMEJtAxylz' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Xb1sNNb6X9vsRl7f' \
    --body '{"autoClaim": true, "defaultLanguage": "MswxBNOGCSmPkNet", "defaultRequiredExp": 57, "draftStoreId": "sk2FUETQVw155Pzw", "end": "1992-04-29T00:00:00Z", "excessStrategy": {"currency": "h0ltIyQQOCj94c6E", "method": "NONE", "percentPerExp": 99}, "images": [{"as": "DPrM7eNoSbd4XV8T", "caption": "QkBx48CmTQbOf0Id", "height": 46, "imageUrl": "aYBoldyMhnF0CQXg", "smallImageUrl": "9biJwQNpqwbJHQTx", "width": 91}, {"as": "TrCynahUpdl1XAVh", "caption": "sHQ7jnrtaPiZCf20", "height": 95, "imageUrl": "VMKkap3pb2qt4rcu", "smallImageUrl": "BCsknl6V6JMPIXiv", "width": 50}, {"as": "ossN7BoMvOKxmen5", "caption": "76hOsEDkpIlz6s3u", "height": 29, "imageUrl": "gxoA5pT7m9c7O6mk", "smallImageUrl": "lITwsjmZp7KRetke", "width": 33}], "localizations": {"91kibmwYDeppOecE": {"description": "fX3j8ByBvStIkB6v", "title": "wVEuzMWsaCphZvj8"}, "XZD5q6ycXBFTgOvN": {"description": "PktL7O32MsBOuwlQ", "title": "6ikNlUXOVUX8vOns"}, "LiWK1PNkeefKAgot": {"description": "SIXuOApCbmpkEA5i", "title": "gMeuLuCy8necJreX"}}, "name": "GytzCjdjexCkLgaF", "start": "1992-05-14T00:00:00Z", "tierItemId": "k29iV1f5t5EMTWN1"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2DbFfBDCox2pJUYA' \
    --body '{"end": "1973-05-27T00:00:00Z", "name": "uCIh2IsQ6Eo3VZL3", "start": "1971-12-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'zDm6Y1FJK6BNTewt' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'pmHbXjmEdaTujqP9' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'wayTZUu7syuIQM9a' \
    --body '{"autoEnroll": true, "code": "TWH3gZwinC5vOxX9", "displayOrder": 87, "images": [{"as": "N3EFIytYeHITccK4", "caption": "Peu4q5Zb8i7BmWDN", "height": 88, "imageUrl": "GeyKWYzFkhLs2WSV", "smallImageUrl": "SkveWx9F26mSrdOZ", "width": 11}, {"as": "JOD9nPgWQ582Mbee", "caption": "ZY14C9YCbivQjcRD", "height": 41, "imageUrl": "vr880CQzl7fd3i6V", "smallImageUrl": "TnKyhLSkSOQXf6jt", "width": 46}, {"as": "neC29ouLvJsPDTNT", "caption": "s9FcO7C0la40eOum", "height": 53, "imageUrl": "rVdCY2piC8TSi7dm", "smallImageUrl": "sxAQRSWIu2QZGUGC", "width": 10}], "localizations": {"YjuoxHHGSICtTvEK": {"description": "lLRmdmUyrhDBKoez", "title": "gmWxV1XmfzXE62ja"}, "LsnhQ9fuseOHAAJa": {"description": "9LrL5wF0PttDuzwJ", "title": "HHR7UcO2hCQAOVxg"}, "Xw9mGQmjuAOFmWRr": {"description": "lu3iZEXe84T9qOHf", "title": "xcyhAL7QqEaZnpU2"}}, "passItemId": "n9gasTEp6YeI8dvF"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'NO1MbpGcU4dC9MYk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'VTfqbxUQDpPii2ma' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'hatTsnxiQIUG4SZ2' \
    --namespace $AB_NAMESPACE \
    --seasonId 'CC7JnTwX0a7QIaqC' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'pDodfBy5JaJleC0P' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SB0k3mm49pm14EtF' \
    --body '{"autoEnroll": false, "displayOrder": 86, "images": [{"as": "4tacuyKQvxpfjM8z", "caption": "Nc863lTMjQDYa8ts", "height": 68, "imageUrl": "Hv2mkGrg585DxvTF", "smallImageUrl": "t5aZg9bXnOHKEivy", "width": 83}, {"as": "qOipTcTTnVQABY3l", "caption": "2jpOTWR10tknZXl5", "height": 86, "imageUrl": "GQHkPdYFPCDlKynp", "smallImageUrl": "EcQrv0YoUrRIL25g", "width": 24}, {"as": "TViBemZOUhDJj0pG", "caption": "KRky5mO9H5kgogok", "height": 23, "imageUrl": "rLQRZgylrCToO69C", "smallImageUrl": "pym8OIfS9JARsOHF", "width": 57}], "localizations": {"NVHNYrdbGIsQ7ygw": {"description": "DA22xq3qd2Bszyju", "title": "87LW8JqEObgrjMLj"}, "MglwgFjiL97ffN10": {"description": "fPtBtmeq4cXmuRGB", "title": "eR8KwsnFGZUyWzfY"}, "wOnspYW9rWY8irpK": {"description": "Tk5T96fAsjf6n95k", "title": "e0WASTryvtQTIQGU"}}, "passItemId": "EJZjZ3fWi9CCga7v"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dvMkQHLLSVKozJDA' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rW3e2zlLXbKqnt2g' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'e8ts2qhINN0qiQfq' \
    --q 'f8cERiX33MFz1FSd' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'Kap5ynjP1IOgzF86' \
    --body '{"code": "QsSD99ACflmraP85", "currency": {"currencyCode": "0ZlXHdkqr8Ih3I8O", "namespace": "vbGwO8kI18TTneyu"}, "image": {"as": "eQxi55wNJIreIg1j", "caption": "suayTRZ0xtM8aO0A", "height": 33, "imageUrl": "GvCzjjeEZszBZ1r9", "smallImageUrl": "14elIDiSKIkyKixO", "width": 96}, "itemId": "f2sFjVXuBBxVlrpK", "quantity": 1, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '70IXQCPjYHBdGwOj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'fb42wzpWOqfbwYUI' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'twy4DvWVlAMsPFF8' \
    --namespace $AB_NAMESPACE \
    --seasonId 'xs3yVDp00FmvzA3P' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'shMMl6SENTzEscQA' \
    --namespace $AB_NAMESPACE \
    --seasonId 'axeGA0ZcJg3MRq2O' \
    --body '{"currency": {"currencyCode": "3MtrcREm7QYl1i03", "namespace": "zaQRSHQlr9SI2n4c"}, "image": {"as": "gaUUGoKzATcaxpLx", "caption": "ZGZNZ5h7fFN2ban2", "height": 93, "imageUrl": "hKubRIEONEaRMO38", "smallImageUrl": "T98FsJPIFMObdHGg", "width": 42}, "itemId": "2g2DSvXzGgy3Djzb", "nullFields": ["hmi1C1kTsQkKoeGy", "KjGey9NtJ7Q2juH0", "ZEYuRHsV6rbmTCVE"], "quantity": 63, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'TXF61HO12uaRn1On' \
    --limit '77' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '5NKWnntLNC833pJM' \
    --body '{"index": 2, "quantity": 62, "tier": {"requiredExp": 88, "rewards": {"q9LMLuTiW0xcglCW": ["6VvgQwE67k3dkoKR", "XaqDHFpX6ICiFuYU", "bf9vz9hlr9BXoJQR"], "sKADQME1DwKafl23": ["47C7TksvdWBLJQ7W", "AIKElpjYjGp7BwXo", "ptHGeWK2Fw8hlt0n"], "gFeQ73G8rIyEe3WL": ["9HJztVc7v5d4d2ND", "x9VTwRN0XAoTd5HP", "5ogdY4EJiIuGvLys"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'cr5A3qUZ6qpu9FEZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'c4Yy5Xo76bodL5Ym' \
    --body '{"requiredExp": 19, "rewards": {"SfzofdRHVq22cY6M": ["ronNv1AbQn34J2jT", "JZuC9rHAzFe91kbU", "AnH3cxkbJcV07zHz"], "aVRmUysCqK1JGUCj": ["Zsz7Na7jDvHSWFno", "8CFAYTfWY4d95abf", "aLxVcwNmXG4VDha2"], "4iNKMs7eVfdXkvs0": ["f4gCFJ0fehawzxaE", "VEKwLGvfn81OER5d", "mBBhCgHXcEryAX5h"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'Jn5ty9CXr3oCui8G' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jzRGEJo2o3Kn6z9s' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'XIRQlzffrwL8AukK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ro7xO4B35mD0AfUm' \
    --body '{"newIndex": 87}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'cVpi5GV16ELg4w7z' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'NCU135VvHvaNYhHq' \
    --limit '89' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'wGXbdMovYIaqIgPh' \
    --body '{"exp": 68, "source": "SWEAT", "tags": ["YOUHSRx5FNniSg8g", "k1HrbjH2H6UDKzwB", "M4BEtbSFnLgIRKTU"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'hCkFTRhAhNPhBALH' \
    --body '{"passCode": "RfiR5xjtBsKq6jQn", "passItemId": "dRg8ZpABwaC4o33g"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'nH1elBGWomWMHue6' \
    --passCodes '["HkXeYrA0BGqWzDpy", "AuBSM0oI7Gzdd820", "zksqpp8HQpZh5eMW"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'ckBgv9xmTb2oelBL' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '1Xi5LeHbCJib5upQ' \
    --body '{"passItemId": "PEYgxK764qQ65dsg", "tierItemCount": 70, "tierItemId": "p4zOyUBzcsVBj7wE"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'nPR59NqCYC9durC9' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'TQF97TY5Kx0qD2ty' \
    --body '{"count": 73, "source": "SWEAT", "tags": ["vcKAzHusXrV1WqAU", "YxwyDIvvol1t2Oi9", "wqsU2wPBSKP93gnM"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'yUHBBMX638Ts6hPZ' \
    --from 'lhcLU4R4wjt0CMew' \
    --limit '90' \
    --offset '34' \
    --seasonId '6HN5ZoqL07DC8uKq' \
    --source 'SWEAT' \
    --tags '["QeYTIAEnJSECD7wf", "oImVFRwUEyrDCvWp", "5KWBHm5gQplYaXsL"]' \
    --to 'UWccMY4Du9Usj6PX' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'E3WDEeLSQyAG8iS2' \
    --seasonId 'LCIWl9Bxv6j3VVly' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'iCeibUVCxRm7oaAx' \
    --userId 'g2XD5VFP8hQY2ct1' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'eotTJJ0IX9HYt95I' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'gpmfJMsfOVFWGFTb' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'DXK9uYZX6LI10Sso' \
    --body '{"passCode": "XBVSf7GNTxH7BDay", "rewardCode": "n8SPUGFGMdmyD5jy", "tierIndex": 26}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'kD2UQ1sO6KeqBw0G' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4cD98G6ObRjrJerr' \
    --userId 'LHCo4L5UBfFhijSD' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE