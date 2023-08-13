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
echo "1..95"

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

#- 2 GetNamespaceSlotConfig
eval_tap 0 2 'GetNamespaceSlotConfig # SKIP deprecated' test.out

#- 3 UpdateNamespaceSlotConfig
eval_tap 0 3 'UpdateNamespaceSlotConfig # SKIP deprecated' test.out

#- 4 DeleteNamespaceSlotConfig
eval_tap 0 4 'DeleteNamespaceSlotConfig # SKIP deprecated' test.out

#- 5 GetUserSlotConfig
eval_tap 0 5 'GetUserSlotConfig # SKIP deprecated' test.out

#- 6 UpdateUserSlotConfig
eval_tap 0 6 'UpdateUserSlotConfig # SKIP deprecated' test.out

#- 7 DeleteUserSlotConfig
eval_tap 0 7 'DeleteUserSlotConfig # SKIP deprecated' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '9HxGYkWFdasRY6Wb' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'FOtnsvnAkiEZFto8' \
    --userId 'wFD66RL3Arc9fqyP' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["5nozJYAU4CqvPutU", "5JXpxEbsogAfMLh3", "AntqrNUZL1tLSyiZ"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'QZMLnebrX4Dnaos2' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Aj6zWCg3xDF9Myw1' \
    --body '{"achievements": ["meWy9g4dqQJevXgy", "CF06985lKggpvE2M", "ce9MEk3FOnSemMxk"], "attributes": {"Jz3BZ8ZfCVIVKvuo": "rr2oSPkbwPbiVVw4", "Vkhh81CipYAtFeU3": "Ck6IXoFr7hgIEi8r", "umUHkCbNvvjmpuFn": "FIaUIwuufSIBzMu0"}, "avatarUrl": "eR6k2tjlqKVCbYaL", "inventories": ["dWpJa9Z8TTAGI1ra", "5LbVsXMjkc8XGisk", "ubXsIM9VyMEN74c7"], "label": "VGytLjMebp7z8sWx", "profileName": "uauiRvSbvA1ENCdM", "statistics": ["qWXZiLiMvMG6UxkE", "XAdOCBBXVRpjh9MY", "XuJZVodjFhLzUhzv"], "tags": ["2ahzIvOVlfv55YCD", "8GRZPse6OTQZMtg4", "k0uDV02AVXpn1QhF"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'MQhB2aojkSg7SQNM' \
    --userId 'sJQnXfZ6aHqaXoDw' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'UOreMwdx7tKXq5vS' \
    --userId '0NQYQPww3DryrBqy' \
    --body '{"achievements": ["4A7KR7i5nVLfNCfq", "8xnSfSy1ZYocKSOM", "pb8a1fZqOFH1QJYS"], "attributes": {"ggEvdwAoIP6MDiBV": "rRhM9K8SPZRgVFCi", "eQsmEaV4jTxpy3EZ": "k8NNETWHMxZAp39R", "XDZKdXZ9pHKMEHmW": "KSjY5OH4JxoIsm0w"}, "avatarUrl": "7Klg3GdCru1bMhow", "inventories": ["wJNiS8ERtdlTdfDs", "QMzQXCNbLsndlPfV", "q7ju16DHtpuWOC1W"], "label": "RybILBNYvRaV5n1O", "profileName": "IFXayBwJ3CwCgFfM", "statistics": ["27VQhZU8NUoSt0mI", "ZQcXrd4SPFwRTqJk", "b2DpxWddXG69r4SL"], "tags": ["x1rE6THh7iHMs4KZ", "p2905bzxeSJmrNcM", "oI0gYOYmzP1pxsF0"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'AN01Uq7U3Z7bXf3D' \
    --userId '5oEdBxUnATUYEfgt' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'opVwCAcQ6fU3jbyL' \
    --namespace $AB_NAMESPACE \
    --profileId 'IMkRkNJUUgnjhp8u' \
    --userId 'snkA4ReBiSTsUP4x' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'BbPfaafzHwwbpZ0L' \
    --namespace $AB_NAMESPACE \
    --profileId 'M9eKC1Dys1MzfYFx' \
    --userId 'RFbk8yScbUabv9qW' \
    --body '{"name": "x4zkxxaev9i4aY7E", "value": "KOrssLfHEzr96nY1"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
eval_tap 0 20 'PublicGetUserNamespaceSlots # SKIP deprecated' test.out

#- 21 PublicCreateUserNamespaceSlot
eval_tap 0 21 'PublicCreateUserNamespaceSlot # SKIP deprecated' test.out

#- 22 PublicGetSlotData
eval_tap 0 22 'PublicGetSlotData # SKIP deprecated' test.out

#- 23 PublicUpdateUserNamespaceSlot
eval_tap 0 23 'PublicUpdateUserNamespaceSlot # SKIP deprecated' test.out

#- 24 PublicDeleteUserNamespaceSlot
eval_tap 0 24 'PublicDeleteUserNamespaceSlot # SKIP deprecated' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
eval_tap 0 25 'PublicUpdateUserNamespaceSlotMetadata # SKIP deprecated' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '96' \
    --statCodes 'Zh3L4bFlBcIHIe5u' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'G5iFGXEBXDmLvnmy' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '76' \
    --name 'HIHyKpqqOB9EgbHy' \
    --offset '49' \
    --sortBy 'G57DpNypoX0maoZi' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "Z2WPPOfwAydcaSHy", "end": "1988-09-11T00:00:00Z", "name": "XqXapRiV5OV1HZTY", "resetDate": 81, "resetDay": 10, "resetMonth": 9, "resetTime": "e6lz3F7KN33yCcfh", "seasonPeriod": 49, "start": "1976-06-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["0PyDlKzjiXMtkmx2", "Do97Z89CCHEF4cFK", "9B4ngsyP1gDTnBPi"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'lryDe8biNZ35PkP1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'yLV2C2zGgUGaQfEn' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "z5lrdpIAnvpQ32Lq", "end": "1997-12-16T00:00:00Z", "name": "uaR6zYM8V10qFArG", "resetDate": 18, "resetDay": 6, "resetMonth": 84, "resetTime": "TJ0Hvz09mmlQVRNa", "seasonPeriod": 56, "start": "1972-03-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'nHAPmuT44ZSEEtB5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'bVviFNedZHdBYW8C' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["g079PPPtnztDjOwL", "pnsDUVHCQr40WI3B", "Tg1Yq37YQrZPBUNi"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'C5RwIUpK63M3NzXi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'FDuqA6XIYc8hrCDn' \
    --userIds 'nLl0IIPohcXtNjQO' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8083737421293741, "statCode": "SnWnqzoBPiEIMZ1c", "userId": "Gmc3H0PUahn69603"}, {"inc": 0.40590944007544605, "statCode": "HRTVT0WvNTW3d2Uz", "userId": "81A34lRzONFUeSiw"}, {"inc": 0.47961167152133033, "statCode": "ZtHn8OjB556kNbX4", "userId": "xWXPMpbYvUTwYgYw"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.39463144558021745, "statCode": "bZnQEexgmXEo51O5", "userId": "GKb96jUCmxzxF8mV"}, {"inc": 0.6592790831579691, "statCode": "B0Dv3mBevuSFf9db", "userId": "I9EQzxR9H3ZA51aN"}, {"inc": 0.5475387530586084, "statCode": "b8oZXAOOKS6qofEt", "userId": "B016iSrOvHT9yQMG"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ax11XLuhZ4AMRfiq' \
    --userIds '["VP6J335TFtN30Vtp", "M1xoDjH95gQwj7VL", "gF9NiGgL4QvwREXt"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "DhOmDqf6qVPb7YHt", "userId": "wtG6iwRpom0ckDIS"}, {"statCode": "soH8JCUZk2Caaeus", "userId": "25DRSl4PpF0w0cSo"}, {"statCode": "3MURtWizcgGMBERK", "userId": "fUbkCPO9c0igR5OR"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'rYRNVi5lRAeo6ugS' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '84' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["nB9EtOtLC3YxGnLk", "uRIQstNDvmGvg6dG", "NSv3JTIolpabnzl1"], "defaultValue": 0.16243995326128968, "description": "TWHQFLjik02WmMYi", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.4236021051896789, "minimum": 0.6162560478881037, "name": "slERW6LCWEAdJblg", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "rzYjfqTli9ZQ0ZMY", "tags": ["ffVGRWq2CnZPcDME", "3BKaykd5KCa2rCIi", "SCLywIPYGQZhiOpw"]}' \
    > test.out 2>&1
eval_tap $? 42 'CreateStat' test.out

#- 43 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'ExportStats' test.out

#- 44 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '67' \
    --offset '93' \
    --keyword 'HqI0FDcsSO5aVlNm' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'nH3JvnZmY8Eowq9v' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '8x7HnWwE8AYB6Uyn' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '1CQy126i8DkemdPv' \
    --body '{"cycleIds": ["vzXKqDc9gWk3BbxG", "hdTorYYRYKrndlQp", "N2ggJALmz2wxqX7o"], "defaultValue": 0.12280829318391884, "description": "ZMdo0EizJqKQV3zd", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "SgKGRe6HgPAiO4tJ", "tags": ["Vhjinsc5QZgwkEIL", "rrqAtgPEH1sh7y6J", "f6lHiPHOKjZtxLrW"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'xM7W17LucqDPly0O' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'gr69Up9dM169g9pK' \
    --namespace $AB_NAMESPACE \
    --userId 'pmxJkR7D0PYwmTcQ' \
    --isPublic 'false' \
    --limit '92' \
    --offset '92' \
    --sortBy 'nOwBbWTMiDulPQT5' \
    --statCodes '8B7FOrSMhImGvhDA' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'cHYlpG06Bevsh1RR' \
    --isPublic 'true' \
    --limit '26' \
    --offset '71' \
    --sortBy 'bZHZCMjuazFygYLS' \
    --statCodes '9Th36XpBnBfGJP5x' \
    --tags 'UkR628XP9PnfsLMP' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'qmu8c2wq41JMmTQD' \
    --body '[{"statCode": "q6WJXSldyMTZnJ15"}, {"statCode": "h1l7Bm7B4NWffov8"}, {"statCode": "x5EEk7MgsQAY3yRf"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'pxlS675NkqApXypJ' \
    --body '[{"inc": 0.7717508144139366, "statCode": "6pBUkpYP7RbaMjVo"}, {"inc": 0.6816637967891694, "statCode": "BNPIxNZVVsbIU07h"}, {"inc": 0.9456455551154297, "statCode": "QPuUZSlzrL91YifH"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'sJoI1w0GnOX0Jb3Z' \
    --body '[{"inc": 0.15377515444760692, "statCode": "a6HBDx4WQAlcckpY"}, {"inc": 0.6352127086915946, "statCode": "xSoNw59BeOGdyl1G"}, {"inc": 0.31766910970964357, "statCode": "VNQbBGyQohjIXPby"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'f9hDCmg5xhZX0xic' \
    --body '[{"statCode": "QumxY5gmVad4ctfs"}, {"statCode": "SqSDbw4mkiRWvZLE"}, {"statCode": "r5PMEG4527SuHLvi"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'x73Mdstjy2htBOhy' \
    --userId 'YKbgyVceHoF3TVGu' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'S4ESA2TqSWzffBoB' \
    --userId 'eWkukIbxzEvvC6Ap' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '4jRmQbUK0tSn9vhs' \
    --userId 'Qv2gRKM4MSaTtA0z' \
    --body '{"inc": 0.5910210661999622}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '3oWuKvisQWXoS03I' \
    --userId '4h8cpLpTfxTcVXpp' \
    --additionalKey 'CU6QHYLO8Fncv0DD' \
    --body '{"additionalData": {"PHZtMo98bHdoY9rH": {}, "fPcmlFK0btIrCUzI": {}, "dCOm3jHmaBnXYSeF": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '81' \
    --statCodes '7WA0fXz0I58BabLg' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'txe9z9rkuGuEv5j2' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '100' \
    --name 'ogFBqGi2ygACrOeF' \
    --offset '67' \
    --sortBy 'XFi7AxcRwMYV0sUU' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["QXipu49uzwKe02rR", "dQjohNUM3caLBpTh", "zkt7B369inBmKhM6"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'PaGDUMepedgBha2A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'p8fQanPSXz765cUP' \
    --userIds 'dzNxtq7nhsBpKeEP' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9592204867821424, "statCode": "qvvYlUXnwyaRu4Af", "userId": "fufYlaRyDxEEYC0r"}, {"inc": 0.3887860743164697, "statCode": "EEFyQkVqaiGLEDDv", "userId": "uITvjAeidn1V6Lo6"}, {"inc": 0.2785848724856864, "statCode": "oi3iSBB70l5qZ8pM", "userId": "IGUN54eoAsCo5l3Z"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3834030673946084, "statCode": "dv5hcH69lLClpPTP", "userId": "59zgoe5i33qWrwKi"}, {"inc": 0.6182338784487009, "statCode": "CTXOihpdxKTyes81", "userId": "Iu4b1PvV6uI8F1cu"}, {"inc": 0.9943443618679461, "statCode": "fRTyHbI1pkEKoI8G", "userId": "dRDA541FinMRZLXe"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "qlbkueYE2jeVmyPh", "userId": "zrcnUPVHFW6vRzkp"}, {"statCode": "e3JS5YhnCZ3MM4aa", "userId": "SmboasbxmhyJKHdq"}, {"statCode": "P5vJyLJXpsR5DaNY", "userId": "M9bkO86QXC6xvJl9"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["W83DSO8gHMl97DMO", "I3Jpr09GGGjTyGtg", "dKmmti5E0XQSU6jx"], "defaultValue": 0.6689644630680509, "description": "DzIAoZJTif2YpJPW", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.23937171256272793, "minimum": 0.9942414620639801, "name": "wWkwGN58etMO7qPj", "setAsGlobal": true, "setBy": "SERVER", "statCode": "wgMFXH4fnRFhYQnd", "tags": ["x9bYH0Gl70vKPbSA", "jTFDuaC4GASigPfN", "a6EmQJfmpKl6kKO1"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'rdiYPJrE0s2XzpoV' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '69' \
    --sortBy 'O46DpOAPd7e7iq8H' \
    --statCodes '["YxAUfiTaEG5HehYK", "zA5SNhRqO0e97jtd", "iGGVw1K9wNZXzKYd"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '19' \
    --sortBy 'enhcDgb3Jtl4G3Ug' \
    --statCodes '["fvSCS9MEsZNUq3v6", "wVccnnofVRlErCtJ", "aG42uzDezeqM6YLz"]' \
    --tags '["i8EkML4rL34d0TJn", "AwPk6raO7N9fIrjG", "LErdVQpoEE6bOwv4"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'HCfeMAg3isX0C9xE' \
    --statCodes '["ALTaYBMqRRXyyoFJ", "7aznhMjaLKx5WljK", "DmHP2h1wM476m0zo"]' \
    --tags '["OowubDWwj2q4XbKf", "x705NyA8jpKFwjW1", "SYysOx4pBaLo5Ujw"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'AA86Soyp6xIKboEp' \
    --namespace $AB_NAMESPACE \
    --userId '6ulyi8CWZOSKSL87' \
    --limit '85' \
    --offset '94' \
    --sortBy '6KeofZYfIIZWho9P' \
    --statCodes '5cTsZCT0cSkWhCXw' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'K6S057kAxdOzqL1P' \
    --limit '67' \
    --offset '41' \
    --sortBy '5CZgGV5tdP1MaVFI' \
    --statCodes 'lERJL0tTdH6B33Ee' \
    --tags 'GMwvnskcOEVM1A0V' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'aMPkYcaxHcRhGsb2' \
    --body '[{"statCode": "ToU91QvK2XCS1oh7"}, {"statCode": "0GgNni7xmMbBqHop"}, {"statCode": "lj9Je4NH0N2u3aQO"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'laCeZGkDY2HqLsBz' \
    --additionalKey 'Jmxk5eCL3cLouwJD' \
    --statCodes '["qbo83SrMsqbcA3UT", "7Art0DDLIm4yJrfx", "MyZzSwHmhWZXn5lE"]' \
    --tags '["6pADRn3RSqB8OARN", "NWpNJf6zJqCS79uz", "2N8qzBJOyg84C0pk"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '0I61VpIz38cMJkVu' \
    --body '[{"inc": 0.27744907408762765, "statCode": "3q8DxJqi5NFnmu3d"}, {"inc": 0.5600787350977944, "statCode": "YY4gaSdbpZxORgEC"}, {"inc": 0.9199667281809275, "statCode": "g12wNvVGHrJQf4PT"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '97AV9d8m0is1wlxo' \
    --body '[{"inc": 0.976073353146626, "statCode": "BaPjXSGycja5r00A"}, {"inc": 0.8970137285077205, "statCode": "4MC5jJ2iccObocLT"}, {"inc": 0.24552271679741244, "statCode": "o0gz9mIA7LPzaEqh"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'gWUtqvvJdTez5kYK' \
    --body '[{"statCode": "jR8vwSCSdN56i1Fl"}, {"statCode": "zxF2m2fpteKxEQht"}, {"statCode": "Fvr0kuBv2X4c44dR"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'CA4IzPauGleIuy46' \
    --userId 'hNH0ROsRF3XQnFPh' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Qc1FGSpb1Ypv2NTp' \
    --userId 'Bsq297rHozbqHQ9o' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'waVBEdHZmndvHaqU' \
    --userId 'bcEHAiRNiGaOiXg1' \
    --body '{"inc": 0.19610608407222918}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '1rwpizSFq5KbhsEJ' \
    --userId 'Ij3Xd0b7NTfnWi7X' \
    --body '{"inc": 0.959678362896776}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'SLtVTgnm6ZWEzIiO' \
    --userId 'gHVKE5dNccsEL6L2' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"Tz3PdF7WsjFQveW7": {}, "O1nQIBtEblTTfOOF": {}, "a4SkHtG47WHurVBh": {}}, "additionalKey": "HGgqZGOeEXhCjDou", "statCode": "ON5cAZEch55TX3C7", "updateStrategy": "MIN", "userId": "GPy3Uk4olSuZq7Sy", "value": 0.9876343533790926}, {"additionalData": {"btwGS6xaI53ZZZMz": {}, "zYgbRVpCHeYMndqQ": {}, "EsdgMhj5RwRDLX2K": {}}, "additionalKey": "e0z0H6DpRw54J41L", "statCode": "pd1TsZH7YmFIhd0P", "updateStrategy": "OVERRIDE", "userId": "reOnaxHQKJF3vJ43", "value": 0.005242202882520863}, {"additionalData": {"KubNRrk6SVQf7q20": {}, "06mf6e4k4KchU6Rv": {}, "gNXFnvpZrKgYDHNg": {}}, "additionalKey": "aapFSmERNO5VDzFI", "statCode": "nc9rvllFoR3BZ7yM", "updateStrategy": "MIN", "userId": "6EhO4S0jifl0vgGe", "value": 0.7177275250711761}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'iYMgr3EeHhFdk260' \
    --statCode 'YQweh9kK8ifM02qo' \
    --userIds '["eXUftYAseEWKTvwL", "QufIaWWZVuVTjdiT", "xy1NrYHUZcYJYjZu"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ANbBg8WJAx5NVzDB' \
    --additionalKey 'YRuCjNHJ8d3MhPRw' \
    --statCodes '["UZRVRJbJQGxTDS9Q", "GIJ5HCW7cDusAFU7", "WRcPD3ORNF8hrdSY"]' \
    --tags '["cDTXgIvLRFfhyVG0", "nXl6tgUTi2Q9NlcG", "8CIJz5ArhFR7rclK"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'ZyUK3UmcEl8jSxjH' \
    --additionalKey 'oelHYERvpj1IngQA' \
    --body '[{"additionalData": {"GYuQxoERWVYqPoRw": {}, "tXL3OoGKPNVPkISV": {}, "GeBQA28mmMhIDtU8": {}}, "statCode": "ygfl8z5LwAhU4Yop", "updateStrategy": "MAX", "value": 0.553492270270256}, {"additionalData": {"gnJ7LQAGsPaB8Kec": {}, "JtaUYEtarFdRyoQq": {}, "2fD7x8ANMhsDvWAj": {}}, "statCode": "DNSx0H0qHAYUX1K5", "updateStrategy": "MIN", "value": 0.714307394807156}, {"additionalData": {"YI466aQkRbhcujCY": {}, "VpMf4SR8B0mB77kA": {}, "E2h3JEq8IEg3YjlP": {}}, "statCode": "wRUF2dl0rGKGypgr", "updateStrategy": "MIN", "value": 0.9915287501594127}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'YMH7kj2Q2ge5jJNX' \
    --additionalKey 'AFqqlufGJwoiUAiY' \
    --body '[{"additionalData": {"PFLztJ8oMZBxUPdJ": {}, "BSwFm4jsfc0b4AMx": {}, "1WCzoITxpKHjuWCq": {}}, "statCode": "y9nGQolIRYybrReu"}, {"additionalData": {"DaDSIrTEiglajph3": {}, "gZ4a1HJKS6qyjk6O": {}, "86KJH9tmLfavFA3x": {}}, "statCode": "KEEIUTXE6B1Qf5NT"}, {"additionalData": {"336Db25bos7cr8z1": {}, "dqXh8cH6nJYv3xu2": {}, "06exoj6JKOfilNlZ": {}}, "statCode": "OVWeNCvN1MjlmpS1"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '0HixgE1ZCGzd3xny' \
    --userId '6z8hm5UPgKrLmNd1' \
    --additionalKey 'VfkxTbgG9LqtKA7L' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'i4A7FOBeiY0t4UZh' \
    --userId 'OLLeDRXjflC63wjZ' \
    --additionalKey 'vO6mBlP1FOfxewjb' \
    --body '{"additionalData": {"m3gbNbN1u15DkWtG": {}, "tfUfXwC4OUYZuwbv": {}, "6TWc1pFp5NSRXXXV": {}}, "updateStrategy": "INCREMENT", "value": 0.24624046386964382}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"0PtdIjyj55lQ7QbW": {}, "RHOCgr69X7anTYpr": {}, "5YJdM2ZU1HsDLFZR": {}}, "additionalKey": "0ypDSGMPWNO7akba", "statCode": "JyR446LdLwJ9yueK", "updateStrategy": "INCREMENT", "userId": "OM8wdk87maRps7P7", "value": 0.25048501851521865}, {"additionalData": {"z9pxKl4FbVoVNfsr": {}, "c0olt36ZKQiajJpG": {}, "YAqByBEowsmHWXoJ": {}}, "additionalKey": "ddvF5AZBnc2KsEQC", "statCode": "vnAiKqIdtkdYD0to", "updateStrategy": "INCREMENT", "userId": "HXWn37t8rH35O9Rb", "value": 0.5410357623814313}, {"additionalData": {"0gl0JwrWuToA5Yfm": {}, "B7XIUZalJ9nyaRyi": {}, "BCzVxxRtCRPNWYEX": {}}, "additionalKey": "LEgizdkDzAyLAMAX", "statCode": "7VyUxQDd3BYwC5AA", "updateStrategy": "MIN", "userId": "j8qAWRBqHfpLzsZ4", "value": 0.7298101398131904}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'db6qj5lTWa77NOmg' \
    --additionalKey '94A3XmzVbqtrrhTD' \
    --statCodes '["EOyXErYWfeVqPxJ0", "VAYJ9pXHXuvK2nWz", "laQlDh8SryhtbUaU"]' \
    --tags '["ZTG90oSaGTgUnRYz", "IOyw5J1Q7FI3LNA0", "PuafcSyWo4grS687"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'o3rm5ytZvpVjT8B5' \
    --additionalKey 'TNEj95HEupIeFESo' \
    --body '[{"additionalData": {"lGDdnUwomt85XWRR": {}, "9vWocO8OrVKssPxS": {}, "uhU5UrP6kdr8fuxD": {}}, "statCode": "PXuxkXILLCHiJb61", "updateStrategy": "OVERRIDE", "value": 0.6424575820768571}, {"additionalData": {"ltahZdGAljlmfdE0": {}, "ZGfnp8mUclP8B7wH": {}, "iasF6snCcuQjSFmH": {}}, "statCode": "RxQ8Eb430aWU1lqb", "updateStrategy": "INCREMENT", "value": 0.7996770193558458}, {"additionalData": {"vA8ovmQTBp5ub4kl": {}, "wB9FbL3TtYvHWBdS": {}, "7o4sEyemuClg5BHL": {}}, "statCode": "BP1Tn5OWPRUYnYDe", "updateStrategy": "MIN", "value": 0.512579518835909}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'DMuDmhitIgNtjUhL' \
    --userId 'RbiQsIohPXKnNGfn' \
    --additionalKey 'demF1TCg4P7R48OE' \
    --body '{"additionalData": {"DL8Cr4BscYRveiYE": {}, "wb539D35iqY3CVo3": {}, "GawlONtaB0tLOSnY": {}}, "updateStrategy": "MIN", "value": 0.03678316497278167}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE