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
    --limit '62' \
    --offset '64' \
    --status '["DRAFT", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "tIM2ecu5z7uaWkTg", "defaultRequiredExp": 81, "draftStoreId": "5EFERpIB96qxBN9H", "end": "1979-10-25T00:00:00Z", "excessStrategy": {"currency": "DkRPFz05wv0hgjOQ", "method": "CURRENCY", "percentPerExp": 58}, "images": [{"as": "mgkgdAK6ns2deYFV", "caption": "UAWgjGq8kn7GX0Oe", "height": 40, "imageUrl": "cBIU2t231yTjIdeH", "smallImageUrl": "VDwsq02wF477Y9CX", "width": 36}, {"as": "J43PQU2lB7yx2BDA", "caption": "xNeC8JFJE4V3AhuA", "height": 27, "imageUrl": "ZuhrRqnCO2qNx9HO", "smallImageUrl": "QbgCKhnLeNHxBXcN", "width": 81}, {"as": "hvkRPwe6xCFkPWNB", "caption": "SE5JMQBGNOEg9A3k", "height": 15, "imageUrl": "qo3L2KveVxEGwUQc", "smallImageUrl": "ntLXmH5Uv46qOEHY", "width": 15}], "localizations": {"EKyJlOegreCwGWsc": {"description": "4u1WipYntml0EXgt", "title": "smXsDJJ7M1lY4FBo"}, "ZxiWL2pPCY4Cip8O": {"description": "gAwfKGANw31ky8K9", "title": "0mZ6dbLl988pSyI5"}, "rewyel418ewocIzg": {"description": "6ka0gGkpbDFC1U6I", "title": "rkVNZADgoZKocSjv"}}, "name": "lxTf4B8Cp0l90QgF", "start": "1988-02-03T00:00:00Z", "tierItemId": "QE2x4esLeEunBVos"}' \
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
    --body '{"userIds": ["uy9rf3T2l7AwFfer", "ysrNxCRldbiQEaTF", "WP9niU3AYQSM6WAj"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pemqe2wPULmkkP9R' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Uu0LPmI7pBLWi4cb' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZWBY1dnqhHBKVjEZ' \
    --body '{"autoClaim": false, "defaultLanguage": "O0YvGhI0wk3PvM6D", "defaultRequiredExp": 17, "draftStoreId": "7mu345yHE2ys571y", "end": "1977-07-07T00:00:00Z", "excessStrategy": {"currency": "J9VquWSLOKffB4i2", "method": "CURRENCY", "percentPerExp": 95}, "images": [{"as": "h7xQvKLC1fnBkkd0", "caption": "yjlw5Yuduc7q9sS9", "height": 76, "imageUrl": "D0YlkWmsQcU1O1kH", "smallImageUrl": "TCjaHul6CtpL9awM", "width": 32}, {"as": "JPf4CVk92YBb3Lft", "caption": "KrDT651qz8AW3zI9", "height": 89, "imageUrl": "4aYI5G8LD9gB09Uh", "smallImageUrl": "iao44bfQLu0yA4rn", "width": 71}, {"as": "WDb1nMawvanVYvCS", "caption": "QKVMAP0FSk9Qqzdx", "height": 56, "imageUrl": "DIYlGE993cupOXwf", "smallImageUrl": "3dqkc85DLXq587NP", "width": 9}], "localizations": {"B8KpwV987eJx9FRq": {"description": "JQM3lpuQdv4tikHS", "title": "76D80TtWr8CcL2f8"}, "gzG1TR8ixG5XiuPO": {"description": "PwtGqujC2bDpfgPM", "title": "D0fIP7WIFZr5RcjY"}, "78c1u6NsdbKCNY5L": {"description": "uLU2P9GV8LYrwTpH", "title": "1TfWom8XYb0rcqZ6"}}, "name": "1MXmCtwp0NyOxYFe", "start": "1974-02-09T00:00:00Z", "tierItemId": "CxjuHEXbIN6jKsLT"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4tfMwAO564E0sfFr' \
    --body '{"end": "1986-02-13T00:00:00Z", "name": "DCgy55mdDbzUAKss", "start": "1979-03-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0g6WVmHfmjfPCdvh' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'rBbxQabSd9JoMhoS' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId '0FhTuGnrO8I1r8Uc' \
    --body '{"autoEnroll": false, "code": "Vd7Jxi8xTQzk9uwo", "displayOrder": 100, "images": [{"as": "ACTqmqzQW4451plF", "caption": "ptHiSurYDIbjFlsC", "height": 41, "imageUrl": "ynRnRq76c7TWFuel", "smallImageUrl": "q75Kpl3TS1gfGNZU", "width": 48}, {"as": "0piasvhqnWUYaQIh", "caption": "3rU9p63E4gEMqwQj", "height": 50, "imageUrl": "I6fdLRYhq2chP1yH", "smallImageUrl": "oFSgxfBj0pjcDP7K", "width": 1}, {"as": "GAJg7IA7QgYUNBwG", "caption": "XRKsphFdmuNlcYLn", "height": 75, "imageUrl": "9RApGnHqW07l1dZ7", "smallImageUrl": "zvGED5DhKsitxJoC", "width": 91}], "localizations": {"Gkj7Qmuv8phvVrec": {"description": "1gI6rIK2zXheMaAg", "title": "ZPRoLMMzfHbQWGOp"}, "cNID51GjhtJA4XSV": {"description": "5u8NhqeSPW3w86KM", "title": "U4oZ8k8IxHPq7vjP"}, "hYTMMCjmoiASSPq5": {"description": "P3ilhCF51H1kkat6", "title": "zYtCsv8hs7siEUN0"}}, "passItemId": "HwDUWot5NFdESdLw"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '2OwQH0fqEOyVNCHI' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LVFHs9eBu6pdBP1C' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '4RBxInqfZ9n1EWoO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'aSBcZQkR7nhiC33j' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'ejyZiwALDXgEvdiG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'BOP3fXKRg9XtnpV6' \
    --body '{"autoEnroll": false, "displayOrder": 57, "images": [{"as": "ZfwPc328jMh2btFX", "caption": "z82hRddXWMVmRPpb", "height": 62, "imageUrl": "ZmXNgCtsQ71r74hX", "smallImageUrl": "grT2C7JEmgVKDvwi", "width": 69}, {"as": "vqTx1sghiW1FrqjS", "caption": "RqwUTRmvCYYPImg4", "height": 70, "imageUrl": "50tjLHOmN3OvY4rk", "smallImageUrl": "COOof5R10WHpOrYT", "width": 51}, {"as": "Ye5t7L0gu8vaIawf", "caption": "qHH5migSQvQOfS11", "height": 21, "imageUrl": "g1qvVhmaCui7n5wG", "smallImageUrl": "wAbrR66R3Zb8Tplm", "width": 49}], "localizations": {"INtUXP3Ue5tSEs12": {"description": "kHqmdk5lV29qZpGe", "title": "ZCTSunqAw02dJGZ0"}, "YVxrgOJQLbB4Xn0T": {"description": "09cWntdD2xI3PpQO", "title": "FHLMBdFLVGQdMs7Y"}, "16TJ93fyYCWHS51x": {"description": "TGA3xtzB9D3L2m3r", "title": "tbOeQd8gb4BQH6EP"}}, "passItemId": "25SchDO07pRpSLIG"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ngo4ow26kSAyq9DK' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Zy7j1NcQIcaDfg9V' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'GzyfFpUmJvDo5fJR' \
    --q '0xhJlWykHEL7Lcz3' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'A1lyb2TBTWkiB2KH' \
    --body '{"code": "yTWs1VXcgPNjBirh", "currency": {"currencyCode": "p4PG8pACYl0vAwCt", "namespace": "R42dXEioVxJNIApJ"}, "image": {"as": "I5EZ9MkkeFmqSBEt", "caption": "howivf44EytaSdS5", "height": 84, "imageUrl": "bZiQwQECWpvRzDFg", "smallImageUrl": "LLUY7WdnDdD2QuF9", "width": 17}, "itemId": "LDtVJvKF7a6GW4Dl", "quantity": 79, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'niGbVNWNqBKebs7w' \
    --namespace $AB_NAMESPACE \
    --seasonId '9ozoQdVNdvsmnb7P' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'EzlzueyRvP3mKZyF' \
    --namespace $AB_NAMESPACE \
    --seasonId 'MbDVmWa35K3Nqnrs' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code '9Ppv6VlBXuaURdjz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'n8EmYctER0aKm6oQ' \
    --body '{"currency": {"currencyCode": "Wi6TORo3K7x31ysu", "namespace": "isBNXGeqN2SKroyn"}, "image": {"as": "1dcMrhqkenB4Zpz6", "caption": "JSbes1dERz4QlQP3", "height": 56, "imageUrl": "DdSfQ2FpSnvRqDNS", "smallImageUrl": "jk6BO9kNfS3HxGf4", "width": 32}, "itemId": "Bk8iq6dc5UsKw50d", "nullFields": ["6BPoDaUzHMshDHSX", "rMpg2ZWH8QUpO1o9", "qXuRZBLfbXAr0WaS"], "quantity": 0, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'H7RS6VUL7dHa6SeB' \
    --limit '66' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'wp73YIbgtjx5Kc4o' \
    --body '{"index": 16, "quantity": 41, "tier": {"requiredExp": 14, "rewards": {"kHrSFQ3CpWcXqAnI": ["D7Ou7TKhVpwjVFXr", "hwbt79vf4p8Evy0R", "z0T02UNeYn1dNaG0"], "H3rwQ9J3kivMuGoI": ["3yL8beINwnOep6Cm", "CG64feTlBkqWKoos", "VPcCifysB41fKn2E"], "ADDwwQnmGWKkmvIO": ["2kRCGkzpXMXZrRqm", "s2FyYb6YDtV1KlUb", "TINOuhH8yoO1R8Kj"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'o1k69OYiPJ8x76wp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'oDmFDg4zQTyKNbAy' \
    --body '{"requiredExp": 35, "rewards": {"QlXs7hBnieXVHSZ9": ["AyxmhdysRU2SiMJC", "l8zVpMwrfeLOuHRt", "uudhV5KXWV28w7kG"], "5UVf6IlAwaxommht": ["qum5ZFOO20srmHVd", "fhWKzYgRbhYCJ6TT", "DpFXg4vzFkeXJ7Ph"], "9ifh8TNpqLRprhJ1": ["rOPvr2I6YZlZyDXW", "GzEfY9yU3sRKX6uG", "yhXAVGSBzuLzaT7m"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'lHHyn9p3HPIewaft' \
    --namespace $AB_NAMESPACE \
    --seasonId 'zvqtVX77AzL8l76k' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'fbWDGoEIqKUVdg49' \
    --namespace $AB_NAMESPACE \
    --seasonId '1diUExmjnifGsdFH' \
    --body '{"newIndex": 8}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'apcl0vuXlLUIOu9Q' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'xAw1F1rod3uyngaZ' \
    --limit '65' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '9CJBXM5rQkCJxjbh' \
    --body '{"exp": 36, "source": "SWEAT", "tags": ["Zc0PkSfCSigB4CjG", "VioGpkcRfr87x66Z", "cLM2W0TuzKjGhIaS"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'sS1YynPLVFBE7Fn1' \
    --body '{"passCode": "ziwNWeMzy9nSAu0O", "passItemId": "Qt3XVIbCqHGl91n0"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'JeDp2LDWLUWU658j' \
    --passCodes '["kMecMDPQ0qFp85o6", "DbHu9A5uAVf474jl", "SssRb7MzJc2mW8mS"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'yfvze538QjNIaqZ9' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'M5gBovsC05LY5lPh' \
    --body '{"passItemId": "wmoRaA6qJYd9eMXu", "tierItemCount": 42, "tierItemId": "uJVz20vZLQjHuSIw"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '2CFamlJArnjsL8ol' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'FTyQtlP0HkNeO4VB' \
    --body '{"count": 28, "source": "SWEAT", "tags": ["LuwGmdj61q4OU0NZ", "Kg0nfDoxfB3llKsp", "2QSpAr5XLo36VwCx"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'N5I4qWQ8Y8m2z8yL' \
    --from 'pGaV9MV3dk0yKDao' \
    --limit '19' \
    --offset '25' \
    --seasonId 'texdp72vPxhNav8V' \
    --source 'SWEAT' \
    --tags '["UXVQzW4QE1MFaj96", "2CsQguERWFsXdfGn", "9BWleoDV1LPn6tEq"]' \
    --to 'dsy285opTD2dKOC3' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '52nFuuJZqrx54qa3' \
    --seasonId '555n8cekWfkZw0N4' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fphP0B0QuKLOqZc0' \
    --userId 'FTlQYGsUeVFspPDm' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'GLB0Mjnc032yK5f6' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'yCBvOGScGqXkCKhw' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'kHVx7rzSZMbjA54l' \
    --body '{"passCode": "h2qImDO6CdPUeo53", "rewardCode": "WotbCvbQ2ESzuZRD", "tierIndex": 5}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Ym9o2XLwW4JINLHj' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HNBn4MGlGaHVyPDo' \
    --userId 'nnl9z3Upycy1URxI' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE