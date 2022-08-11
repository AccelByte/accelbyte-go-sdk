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
echo "1..74"

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
samples/cli/sample-apps Social getNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
samples/cli/sample-apps Social updateNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    --body '{"maxSlotSize": 41, "maxSlots": 30}' \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
samples/cli/sample-apps Social deleteNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
samples/cli/sample-apps Social getUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId '98SsPbag' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId '9lhsCoMu' \
    --body '{"maxSlotSize": 73, "maxSlots": 45}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'LtnUo9bg' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'KcIUvUp9' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'p453qauR' \
    --userId 'wqJ85iga' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'TPxzkEEN' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'ERa6qGsI' \
    --userId 'FBJa8T33' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["aeKQ1xe3", "9VNb4UWS", "lfGLBij9"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'hiTjrljw' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ahb6bQtO' \
    --body '{"achievements": ["L9JdHgzn", "moualMxj", "sPhdzLxg"], "attributes": {"10ZEHZtH": "GFw9yxF7", "Mzq6dB9V": "22HTedg2", "JwuQSgks": "rIte71JJ"}, "avatarUrl": "AyFykzxb", "inventories": ["Dqwo4tXR", "LDy3vaEK", "uNlIHjo3"], "label": "EnjUeviO", "profileName": "xNPxofpg", "statistics": ["YO35JngM", "2rv7mouE", "hLkJXUv4"], "tags": ["x126aCK9", "xoD0xfVB", "gVGLspgb"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'bGoElLJK' \
    --userId '7J2m6mnm' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'fJuPcIFE' \
    --userId 'PjkhLX7P' \
    --body '{"achievements": ["IV08TC9e", "gTd395IX", "1ItE3cdI"], "attributes": {"CmKu9F6L": "WVcVV2qE", "PvjAcOCx": "O6zg3Ja9", "o3uU0fnA": "YV1Leh8M"}, "avatarUrl": "4v8SKvqS", "inventories": ["UZ4xphYj", "A5odfl6o", "BnNr6YtV"], "label": "rRUMMHCN", "profileName": "JqRiXMJq", "statistics": ["2hDQhjNu", "wAUncSVM", "Bz14hyra"], "tags": ["tSA8cI7i", "SjQADoWn", "4g2Y7xij"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'faCiXAnU' \
    --userId 'BedofZ6a' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'gsioQzyp' \
    --namespace $AB_NAMESPACE \
    --profileId 'o66LH18T' \
    --userId 'MLU7nlqj' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'QrSxyJlz' \
    --namespace $AB_NAMESPACE \
    --profileId 'TShb82iX' \
    --userId 'bEXGPaAw' \
    --body '{"name": "9Tn4NwvA", "value": "cIS88CmH"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'ALfpiV7x' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'eJPMmui9' \
    --label 'phLrRiF2' \
    --tags '["GJ5IvRjZ", "qwHqfvaY", "llJPQ7mt"]' \
    --checksum 'v8d8Pq5V' \
    --customAttribute 'zCff9EOw' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId '0289d93W' \
    --userId 'jqXM27H5' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'XvOkH1XP' \
    --userId 'EfcJTUzS' \
    --label 'xED1St93' \
    --tags '["sxczqlTm", "Y3HZOpH0", "ZYpGX7x0"]' \
    --checksum 'ZnfOBeg9' \
    --customAttribute 'Z0OFFlVS' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'LCrRgjV9' \
    --userId 'X8XzENGS' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'nKq8niPC' \
    --userId 'XoaN0QLn' \
    --body '{"customAttribute": "8ErvmeH4", "label": "GLgQgvuc", "tags": ["FzwUkOpX", "R8sIDBzB", "ApHwvD2I"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'nEygMGeB' \
    --userIds 'PptUgmf3' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2684256288905642, "statCode": "0vhhQL6F", "userId": "7ZrCJ2k1"}, {"inc": 0.5673441941063798, "statCode": "Tg14tiFi", "userId": "dQa7D2uT"}, {"inc": 0.9960930880826755, "statCode": "kK3Exqcf", "userId": "puTTzPlb"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.24475867967306042, "statCode": "HIb4gM3Q", "userId": "E5MlpLr5"}, {"inc": 0.30897573089176733, "statCode": "MNStbhzB", "userId": "5RCQuBjM"}, {"inc": 0.8737348763234075, "statCode": "Et0jrtL5", "userId": "1nyxQJUz"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Z8NaeSCS' \
    --userIds '["XCxOMSoc", "ges4AISf", "1L10Hwzr"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "fLmYxEyg", "userId": "Davbhtgj"}, {"statCode": "iHE0CdaQ", "userId": "vVBmFZUJ"}, {"statCode": "QFkJfYMb", "userId": "Mi6i29aA"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.11669659188243131, "description": "okFNv15x", "incrementOnly": false, "maximum": 0.2585798228285977, "minimum": 0.06211040383799682, "name": "Kv3N2uMS", "setAsGlobal": true, "setBy": "SERVER", "statCode": "5q1xQU9L", "tags": ["4miXKx2q", "mkWjIYFU", "wauJ5HWY"]}' \
    > test.out 2>&1
eval_tap $? 33 'CreateStat' test.out

#- 34 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'ExportStats' test.out

#- 35 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 35 'ImportStats' test.out

#- 36 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '80' \
    --keyword 'T0ADuZ8X' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'PbLYuip5' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ZtUSUPPR' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'tkpQarrp' \
    --body '{"description": "TXmQiNrM", "name": "nG0P8lof", "tags": ["0fRdQJMa", "hEQjfTVO", "fh983dHE"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'NDLydxqI' \
    --limit '100' \
    --offset '39' \
    --statCodes 's0Pbcwb4' \
    --tags 'GHTmfvOy' \
    > test.out 2>&1
eval_tap $? 40 'GetUserStatItems' test.out

#- 41 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'weH88cA6' \
    --body '[{"statCode": "PDLEW0uO"}, {"statCode": "gN0ZCPPO"}, {"statCode": "mAflqMSD"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkCreateUserStatItems' test.out

#- 42 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'k5B3fQJM' \
    --body '[{"inc": 0.09446378157578539, "statCode": "4tmHMTOR"}, {"inc": 0.4922297499061631, "statCode": "7lcAJD0k"}, {"inc": 0.5120711283495402, "statCode": "dDXRA1PR"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkIncUserStatItem1' test.out

#- 43 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'aEN2Hlrc' \
    --body '[{"inc": 0.09341855049798575, "statCode": "5qXLRzzT"}, {"inc": 0.021973276710221423, "statCode": "hjg1Bv7h"}, {"inc": 0.9082731082260981, "statCode": "UtWB3YJF"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItemValue1' test.out

#- 44 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'b2AR1sla' \
    --body '[{"statCode": "TrwB7rD5"}, {"statCode": "8qtjAA0a"}, {"statCode": "GpBSOTB6"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkResetUserStatItem1' test.out

#- 45 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'zi4wNo74' \
    --userId 'Gxpdj7dl' \
    > test.out 2>&1
eval_tap $? 45 'CreateUserStatItem' test.out

#- 46 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'pAJT3zJS' \
    --userId 'pQv9mJma' \
    > test.out 2>&1
eval_tap $? 46 'DeleteUserStatItems' test.out

#- 47 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'iZggjUof' \
    --userId '8FY2Glar' \
    --body '{"inc": 0.7179868138702031}' \
    > test.out 2>&1
eval_tap $? 47 'IncUserStatItemValue' test.out

#- 48 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'MHxf8Q1r' \
    --userId '2UdN6tgZ' \
    --additionalKey 'tfAyPpHT' \
    --body '{"additionalData": {"G7a9xGBe": {}, "K9uVS7Ot": {}, "mGo677Po": {}}}' \
    > test.out 2>&1
eval_tap $? 48 'ResetUserStatItemValue' test.out

#- 49 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '2n8dVpQA' \
    --userIds 'u0UW3IfC' \
    > test.out 2>&1
eval_tap $? 49 'BulkFetchStatItems1' test.out

#- 50 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9016958121596441, "statCode": "S1P0Qcd7", "userId": "bQpX78R8"}, {"inc": 0.57022082504912, "statCode": "g5LcfClv", "userId": "FX6qCtJn"}, {"inc": 0.4280588062208738, "statCode": "X4y5cG78", "userId": "kzPosIvM"}]' \
    > test.out 2>&1
eval_tap $? 50 'PublicBulkIncUserStatItem' test.out

#- 51 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.437624147770293, "statCode": "JLFe5rfd", "userId": "hJwDvUic"}, {"inc": 0.37657203424320873, "statCode": "W1VolUmm", "userId": "l4O3r98T"}, {"inc": 0.40510502297164785, "statCode": "O6QkS7Dn", "userId": "gmkUA56O"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItemValue' test.out

#- 52 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "cKj37IUB", "userId": "uDvk8K3v"}, {"statCode": "GjW1crva", "userId": "brrwJcBK"}, {"statCode": "AwBCiQ0N", "userId": "e5c72k9D"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem2' test.out

#- 53 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.06029928288573805, "description": "6kB2oxDx", "incrementOnly": false, "maximum": 0.9173746514761016, "minimum": 0.9312578171818451, "name": "ikFYUiQf", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "1n9oeEp1", "tags": ["ZfpyNj97", "WbYILfbl", "GpBSGd9w"]}' \
    > test.out 2>&1
eval_tap $? 53 'CreateStat1' test.out

#- 54 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '4Vkk4phg' \
    --limit '13' \
    --offset '96' \
    --statCodes 'ZJJ43Z2z' \
    --tags 'necpbyKH' \
    > test.out 2>&1
eval_tap $? 54 'PublicQueryUserStatItems' test.out

#- 55 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'eWkwZz51' \
    --body '[{"statCode": "VjrDrVou"}, {"statCode": "IkCYDLJc"}, {"statCode": "5vdlioIn"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkCreateUserStatItems' test.out

#- 56 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'x3CAC0t7' \
    --statCodes '["TNRmcqgi", "X4cuVKhm", "AOkvXlFy"]' \
    --tags '["cI9UbqTH", "9owdloZu", "8Txdn2Yg"]' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryUserStatItems1' test.out

#- 57 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'gbjEtBBr' \
    --body '[{"inc": 0.8372558125895012, "statCode": "yZLAMYxR"}, {"inc": 0.037015332752556085, "statCode": "iLcqHb3X"}, {"inc": 0.6967957603459028, "statCode": "bucfUaML"}]' \
    > test.out 2>&1
eval_tap $? 57 'PublicBulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'EThJSbuL' \
    --body '[{"inc": 0.7561122823355397, "statCode": "3MSUZJpd"}, {"inc": 0.20507239907015595, "statCode": "E1wUivrn"}, {"inc": 0.6714269292886753, "statCode": "sr3v0egW"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue2' test.out

#- 59 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'MJILddRW' \
    --body '[{"statCode": "tKkUZ0nh"}, {"statCode": "XkYTxy6q"}, {"statCode": "9nrEUMko"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem3' test.out

#- 60 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'M62Z1aJo' \
    --userId 'BQfMmzTp' \
    > test.out 2>&1
eval_tap $? 60 'PublicCreateUserStatItem' test.out

#- 61 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '0fttYs5g' \
    --userId 'sopa0jJn' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems1' test.out

#- 62 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Ww4sHQBQ' \
    --userId 'JSCu2uo1' \
    --body '{"inc": 0.805696390102094}' \
    > test.out 2>&1
eval_tap $? 62 'PublicIncUserStatItem' test.out

#- 63 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'ssx6vCtM' \
    --userId 'Ju5LwhWO' \
    --body '{"inc": 0.2704194781774044}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItemValue' test.out

#- 64 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'RxiMhhvD' \
    --userId 'yJLVyvlF' \
    > test.out 2>&1
eval_tap $? 64 'ResetUserStatItemValue1' test.out

#- 65 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"TOUaxrGr": {}, "1AvCAGDr": {}, "PoGx67zG": {}}, "additionalKey": "nAdCdmkO", "statCode": "CDkPjMnT", "updateStrategy": "MIN", "userId": "31QvhHD3", "value": 0.9363646798270333}, {"additionalData": {"aiowF4J4": {}, "3PjWg4HI": {}, "epjSARRA": {}}, "additionalKey": "K9nEgdaL", "statCode": "rpGFjq2J", "updateStrategy": "MAX", "userId": "rZf6xw86", "value": 0.3481589379439425}, {"additionalData": {"BIpqcekc": {}, "S031CMgk": {}, "jyAt6v5E": {}}, "additionalKey": "55ooe6Qg", "statCode": "k16D1zDp", "updateStrategy": "MIN", "userId": "HZUwS5jX", "value": 0.915842813618438}]' \
    > test.out 2>&1
eval_tap $? 65 'BulkUpdateUserStatItemV2' test.out

#- 66 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'rRTNUi70' \
    --statCode 'HO8DV8hN' \
    --userIds '["EdaF1X2j", "5QI9ytiL", "2RomNXnB"]' \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchOrDefaultStatItems1' test.out

#- 67 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'PwZR7a0h' \
    --additionalKey 'inKXCLvn' \
    --body '[{"additionalData": {"W5q49hqy": {}, "vE1K0ypG": {}, "yeEYIDm0": {}}, "statCode": "QkFDcTtG", "updateStrategy": "OVERRIDE", "value": 0.032930419884943385}, {"additionalData": {"5CuALVDn": {}, "OwwXlYYZ": {}, "4yTFWOH8": {}}, "statCode": "q0lR9YjD", "updateStrategy": "MIN", "value": 0.8005308622426118}, {"additionalData": {"sJWPBTeC": {}, "c8TPFtyM": {}, "20BG2p7I": {}}, "statCode": "iji3SsnO", "updateStrategy": "INCREMENT", "value": 0.9857467574296797}]' \
    > test.out 2>&1
eval_tap $? 67 'BulkUpdateUserStatItem' test.out

#- 68 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'yxUqMPAv' \
    --additionalKey 'Q21DzwNP' \
    --body '[{"additionalData": {"BoFflngw": {}, "9UtuIVsB": {}, "5YoJAsWE": {}}, "statCode": "8eIPJ7bG"}, {"additionalData": {"oTUlopjE": {}, "MbJfd7Di": {}, "3xMMlDYT": {}}, "statCode": "5fQS9UYs"}, {"additionalData": {"nYjTabAv": {}, "JIDEDlI8": {}, "MCU6igGQ": {}}, "statCode": "7pPsflSd"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItemValues' test.out

#- 69 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'smSRvbiq' \
    --userId 'uFrfgQJc' \
    --additionalKey 'fezQFns9' \
    > test.out 2>&1
eval_tap $? 69 'DeleteUserStatItems2' test.out

#- 70 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'hIHALNes' \
    --userId 'EMlCSYSH' \
    --additionalKey 'EDOAGIOL' \
    --body '{"additionalData": {"mxwwgQe4": {}, "3wub4CaM": {}, "GSPkSJsO": {}}, "updateStrategy": "INCREMENT", "value": 0.18131471800880183}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateUserStatItemValue' test.out

#- 71 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"p2af376p": {}, "DKgNX3hd": {}, "xHni5bDM": {}}, "additionalKey": "y16lF2df", "statCode": "jfmJ2BrR", "updateStrategy": "MAX", "userId": "xwqCn1id", "value": 0.631177091837227}, {"additionalData": {"1nCG1QB2": {}, "QNU2u0G6": {}, "W9V3Rxlu": {}}, "additionalKey": "uN5wdI5G", "statCode": "cAXzqd8F", "updateStrategy": "OVERRIDE", "userId": "BHvTh27n", "value": 0.717909382417574}, {"additionalData": {"h7rkyNDU": {}, "zlcZJQdS": {}, "F6dtf53V": {}}, "additionalKey": "062EDD5D", "statCode": "L0GAXmU9", "updateStrategy": "MIN", "userId": "hf7tTd8Y", "value": 0.2269862177596178}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem1' test.out

#- 72 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'v5UK1vav' \
    --additionalKey '0XUSlT6l' \
    --statCodes '["DCHQIPfD", "vP3NOmiW", "pFYx6BX9"]' \
    --tags '["zShDaLSE", "ktcIzkHH", "mFOmeZsE"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicQueryUserStatItems2' test.out

#- 73 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'qu169bG9' \
    --additionalKey 'w7S1x64T' \
    --body '[{"additionalData": {"a450GN8i": {}, "mWXHKOyz": {}, "QMYd1pdk": {}}, "statCode": "x8RFzJ7e", "updateStrategy": "MAX", "value": 0.0747611695321766}, {"additionalData": {"VFmzF2LK": {}, "6I3EfGAD": {}, "dn0diS9K": {}}, "statCode": "oFJohtWA", "updateStrategy": "MAX", "value": 0.8284244086760383}, {"additionalData": {"KqeUi16l": {}, "3KoW5Fvh": {}, "8F9Wazb0": {}}, "statCode": "DhIRz28o", "updateStrategy": "OVERRIDE", "value": 0.2872350600141448}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkUpdateUserStatItem2' test.out

#- 74 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'PMBZz5M9' \
    --userId '66Hzk6m1' \
    --additionalKey 'fWNIBMGv' \
    --body '{"additionalData": {"D5ct3YN2": {}, "bkRuJ3Ub": {}, "sLKKDtBw": {}}, "updateStrategy": "OVERRIDE", "value": 0.43592185333452593}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE