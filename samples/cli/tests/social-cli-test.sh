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
    --body '{"maxSlotSize": 14, "maxSlots": 94}' \
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
    --userId 'oeT61evT' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'zgonqfZ7' \
    --body '{"maxSlotSize": 30, "maxSlots": 31}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId '7IKKU3t5' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'o0B7hf6a' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'xg5Yhrn5' \
    --userId 'UAMX9ABD' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'DANFYtIS' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'T4vWQJRe' \
    --userId 'LVI3kG2B' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["8XL22WG2", "7jaQSR1V", "DtDmATen"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'Rfw1ndGZ' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'GlQGiFhp' \
    --body '{"achievements": ["1WCzDHQ8", "q5mxXOkK", "stgJuUIC"], "attributes": {"1WD1WDNE": "c7UD9JuL", "i9YzKyXs": "Wr2S5sYE", "rRLJ61rD": "bXyvPLTB"}, "avatarUrl": "QZGAdeFp", "inventories": ["3Y3apJv7", "RYuS5jYP", "sbp4fV1H"], "label": "irGZphW6", "profileName": "0ny4N7vB", "statistics": ["TKZOCQ4R", "9TZPZK3m", "ekD1IL8g"], "tags": ["4hBKQ2HZ", "8JCEs6Ie", "cZvrUqVu"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '3URk8aHO' \
    --userId 'UnGBgUtQ' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'JKg6vlBS' \
    --userId 'cX9Fv8qp' \
    --body '{"achievements": ["pHF41ce9", "h5NW2apx", "7mvgS6Gc"], "attributes": {"UM63Bemb": "bQvIqtjR", "qdPHipZe": "S7Er3AHz", "hzKUFpN3": "DS5YeIm1"}, "avatarUrl": "7VhbWiWq", "inventories": ["Ucdb1uwp", "hXwjf6df", "VcRe1hAe"], "label": "H51zmnVI", "profileName": "JWJKxG9D", "statistics": ["kIqwpapx", "IpwIskhu", "xHpmMXyf"], "tags": ["JbR6m7Vv", "dDWX4QXa", "5IiAtanQ"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'YoDjb8zU' \
    --userId 'POwQahoM' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'VSznNnfK' \
    --namespace $AB_NAMESPACE \
    --profileId 'IFmHVwa6' \
    --userId 'jZiub8It' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'y1LHyFY5' \
    --namespace $AB_NAMESPACE \
    --profileId 'lOS9lpE9' \
    --userId 'zjPsWfuv' \
    --body '{"name": "6UklcWtI", "value": "VrlbjOzs"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'dLetVqoP' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'AYNVc4FJ' \
    --label 'EoBdDTJJ' \
    --tags '["aSG9JTJF", "1FVkeDVC", "eOkxzoXs"]' \
    --checksum 'oQHevzc7' \
    --customAttribute '3CAn8vsF' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'LBw766bm' \
    --userId '480x7tJu' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 't3C8HOjq' \
    --userId '1rYP1egw' \
    --label 'k1RYWMKC' \
    --tags '["jRQ6S98Q", "DNSC7Hwe", "RBV282ga"]' \
    --checksum 'kXGpz72f' \
    --customAttribute 'lQHW6rbl' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '8qyrymiX' \
    --userId 'QmMvuYMk' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'FHzPdbQ6' \
    --userId 'zIYSWPZx' \
    --body '{"customAttribute": "cYhSk66N", "label": "Kl0dHpYP", "tags": ["Ok2HdAMB", "VpG5TP6u", "5wzkxTzv"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'dLdxICUA' \
    --userIds 'GkNRHwL0' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9290581227992706, "statCode": "5pXKC7RF", "userId": "Tc1lqc3H"}, {"inc": 0.9976671800621837, "statCode": "aeLXJmYe", "userId": "YMmVEVT7"}, {"inc": 0.9027366026218867, "statCode": "qqWDpYIm", "userId": "83IAKtdI"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.06960380528070675, "statCode": "ES1gagxQ", "userId": "5NdRAvu2"}, {"inc": 0.8390019895227405, "statCode": "jU9m74IH", "userId": "xStvYpG8"}, {"inc": 0.5988790980739884, "statCode": "CpnLzkW7", "userId": "oSfGoxRN"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'AottizLX' \
    --userIds '["ykglLKAj", "GEYeVPBN", "Wyflyik4"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "jMrQjQgM", "userId": "e1T4smt8"}, {"statCode": "MJDUuxUP", "userId": "TlCKRAn0"}, {"statCode": "a3EQIDef", "userId": "9sM9c3br"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.12067763756295569, "description": "TceoGmhv", "incrementOnly": true, "maximum": 0.05992949651620949, "minimum": 0.2708959759016767, "name": "t7NCohdJ", "setAsGlobal": true, "setBy": "SERVER", "statCode": "iLt3rlp1", "tags": ["1JWax6sr", "edqo5xHD", "btYdirOE"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 35 'ImportStats' test.out

#- 36 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '26' \
    --keyword 'dZwy2xYi' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'qJfAehXm' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FmbACMLW' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'wlM8GXgF' \
    --body '{"description": "A46gQdLH", "name": "NfFcwkiQ", "tags": ["1ywkLzma", "qNhOcRku", "DgUo4R8K"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'EX7LTbfV' \
    --limit '57' \
    --offset '73' \
    --statCodes 'j8oB8HgG' \
    --tags '2QNuunHt' \
    > test.out 2>&1
eval_tap $? 40 'GetUserStatItems' test.out

#- 41 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'YVKCRlUK' \
    --body '[{"statCode": "DwITfhCX"}, {"statCode": "u6jp85AG"}, {"statCode": "dOqfLRdH"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkCreateUserStatItems' test.out

#- 42 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'LSwR6Frm' \
    --body '[{"inc": 0.6640161926177289, "statCode": "bSHoCgEt"}, {"inc": 0.08951839071691758, "statCode": "OzkNBy2J"}, {"inc": 0.8301099002048133, "statCode": "M11ZBgA2"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkIncUserStatItem1' test.out

#- 43 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'SLGi2Qbr' \
    --body '[{"inc": 0.2902937694671306, "statCode": "iIBX0JpW"}, {"inc": 0.3498552342011956, "statCode": "nFykX6Zp"}, {"inc": 0.4187191055994002, "statCode": "CchLhN3h"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItemValue1' test.out

#- 44 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ykTwudJ3' \
    --body '[{"statCode": "PfgImTao"}, {"statCode": "UEfMOcL6"}, {"statCode": "VukSIjnN"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkResetUserStatItem1' test.out

#- 45 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'bMMfdE9K' \
    --userId 'QGgu39fY' \
    > test.out 2>&1
eval_tap $? 45 'CreateUserStatItem' test.out

#- 46 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Qf5gRsSC' \
    --userId 'MPN73e5A' \
    > test.out 2>&1
eval_tap $? 46 'DeleteUserStatItems' test.out

#- 47 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'JHRY9Pvb' \
    --userId 'xE5lKBtz' \
    --body '{"inc": 0.24303527612894193}' \
    > test.out 2>&1
eval_tap $? 47 'IncUserStatItemValue' test.out

#- 48 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '11CfZXtH' \
    --userId 'gvanimnL' \
    --additionalKey 'tHw3Dlnk' \
    --body '{"additionalData": {"xVvglp7w": {}, "Nf580LkB": {}, "f1ssNS5Q": {}}}' \
    > test.out 2>&1
eval_tap $? 48 'ResetUserStatItemValue' test.out

#- 49 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'zRcs6wCX' \
    --userIds '6BjQxMpV' \
    > test.out 2>&1
eval_tap $? 49 'BulkFetchStatItems1' test.out

#- 50 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.16105687100949684, "statCode": "BPsGTP3D", "userId": "4qQD1QtW"}, {"inc": 0.29374501852451207, "statCode": "ZdpCBpyQ", "userId": "NTDi7W9S"}, {"inc": 0.027583096487808323, "statCode": "OZIxElka", "userId": "voWii7X8"}]' \
    > test.out 2>&1
eval_tap $? 50 'PublicBulkIncUserStatItem' test.out

#- 51 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.29140866772804863, "statCode": "npv32eLD", "userId": "QjHjkUy1"}, {"inc": 0.5165523683418628, "statCode": "VbOsRFey", "userId": "GLyx9Bom"}, {"inc": 0.9310051975347954, "statCode": "AiXWEqYR", "userId": "NcVJdRv2"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItemValue' test.out

#- 52 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "27d2VfrL", "userId": "W244cNoq"}, {"statCode": "4bHijb1u", "userId": "ezSvK97U"}, {"statCode": "sNKqvArc", "userId": "o8OvBRqK"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem2' test.out

#- 53 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.3665000841951995, "description": "rppVMm00", "incrementOnly": false, "maximum": 0.21811884626292644, "minimum": 0.05407708996386762, "name": "o2NPs1g0", "setAsGlobal": false, "setBy": "SERVER", "statCode": "GoAVItNw", "tags": ["YAd6pthH", "jg9ziQAy", "yKdGsr0a"]}' \
    > test.out 2>&1
eval_tap $? 53 'CreateStat1' test.out

#- 54 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'EE2GO29d' \
    --limit '96' \
    --offset '27' \
    --statCodes 'cA06I8ud' \
    --tags 'zJJ8MPx1' \
    > test.out 2>&1
eval_tap $? 54 'PublicQueryUserStatItems' test.out

#- 55 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'DRiXZfgz' \
    --body '[{"statCode": "T7OW5kvb"}, {"statCode": "X3xXcH2x"}, {"statCode": "grry367I"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkCreateUserStatItems' test.out

#- 56 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'wNIP16sT' \
    --statCodes '["IPl70IvH", "gRWTzPRU", "Axe74FaP"]' \
    --tags '["fwx7S5jD", "EwaRmq77", "WS3jPkCL"]' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryUserStatItems1' test.out

#- 57 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '3gP1iUB6' \
    --body '[{"inc": 0.5322920972596723, "statCode": "LJKDnBoD"}, {"inc": 0.497376803392662, "statCode": "WgXLoXC7"}, {"inc": 0.046842475981863196, "statCode": "Vd8i4hvt"}]' \
    > test.out 2>&1
eval_tap $? 57 'PublicBulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '9GigrGNC' \
    --body '[{"inc": 0.688104716808675, "statCode": "FZ8hYFAh"}, {"inc": 0.394189739752448, "statCode": "2I3B1c7F"}, {"inc": 0.8962568618415651, "statCode": "GznZ7dSw"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue2' test.out

#- 59 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'UZWHrNb4' \
    --body '[{"statCode": "pXfP81ow"}, {"statCode": "K5V5U1m5"}, {"statCode": "fALIhCZQ"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem3' test.out

#- 60 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'rsKUlg6c' \
    --userId 'OVjhQ6or' \
    > test.out 2>&1
eval_tap $? 60 'PublicCreateUserStatItem' test.out

#- 61 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'JC8h1mBz' \
    --userId 'CmHvAHMI' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems1' test.out

#- 62 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Y54DSL1B' \
    --userId 'VUjrhvGD' \
    --body '{"inc": 0.8391065698010922}' \
    > test.out 2>&1
eval_tap $? 62 'PublicIncUserStatItem' test.out

#- 63 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'WRstvmFB' \
    --userId 'IEXGNXim' \
    --body '{"inc": 0.19658546395827914}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItemValue' test.out

#- 64 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'gQb9glkn' \
    --userId 'zxKPXZPa' \
    > test.out 2>&1
eval_tap $? 64 'ResetUserStatItemValue1' test.out

#- 65 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"OX0GZtzu": {}, "8W7R7xZa": {}, "jnapOMY7": {}}, "additionalKey": "XKeCxDvE", "statCode": "Jfpp3NiC", "updateStrategy": "OVERRIDE", "userId": "rcLU02Mw", "value": 0.6723611675407775}, {"additionalData": {"U6ERoBho": {}, "4Bp05O4J": {}, "cSqwnmBq": {}}, "additionalKey": "QPKlkCkH", "statCode": "NI8PqiDC", "updateStrategy": "OVERRIDE", "userId": "uDvyKtJc", "value": 0.7296148217199914}, {"additionalData": {"OdM19xMa": {}, "HaIwRdNm": {}, "RtjpFFj0": {}}, "additionalKey": "KsLnzPjq", "statCode": "Kv1dlfQh", "updateStrategy": "OVERRIDE", "userId": "lU2IXP2V", "value": 0.6770524658093775}]' \
    > test.out 2>&1
eval_tap $? 65 'BulkUpdateUserStatItemV2' test.out

#- 66 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'ngT12gPA' \
    --statCode 'dwxW4RsS' \
    --userIds '["9X11D9fw", "1CktFovU", "swopeR6b"]' \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchOrDefaultStatItems1' test.out

#- 67 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '0SsyXPw5' \
    --additionalKey 'h37JujzF' \
    --body '[{"additionalData": {"E8LlmXl6": {}, "PXJdqnTU": {}, "Z8QvXSMe": {}}, "statCode": "gO8PLV5a", "updateStrategy": "INCREMENT", "value": 0.4672671226093127}, {"additionalData": {"54WD79ID": {}, "GvmNJlxo": {}, "l5vM9a1x": {}}, "statCode": "eiVN9EuH", "updateStrategy": "MAX", "value": 0.7542549160895669}, {"additionalData": {"yQwHBO5B": {}, "mSUm0KUP": {}, "uC3Ver5L": {}}, "statCode": "C04pW09j", "updateStrategy": "MIN", "value": 0.24354837518980788}]' \
    > test.out 2>&1
eval_tap $? 67 'BulkUpdateUserStatItem' test.out

#- 68 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'izT0yXMS' \
    --additionalKey 'lzKzSAlr' \
    --body '[{"additionalData": {"bU5vlIpp": {}, "hxvtvWQV": {}, "RPYUtLRe": {}}, "statCode": "zidgRRFq"}, {"additionalData": {"Zr4qz2wA": {}, "JcBHjpFn": {}, "qlnX3e5B": {}}, "statCode": "yt6lqxJO"}, {"additionalData": {"2fJK1MXV": {}, "0qiz4JrQ": {}, "f1NCeoTL": {}}, "statCode": "2mnDHE3a"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItemValues' test.out

#- 69 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '2sjYxhxJ' \
    --userId '62kczTHh' \
    --additionalKey '0olmnv1M' \
    > test.out 2>&1
eval_tap $? 69 'DeleteUserStatItems2' test.out

#- 70 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'drOqJ1gU' \
    --userId 'TEYDt6LD' \
    --additionalKey 'eCywygRn' \
    --body '{"additionalData": {"jvHnNUmr": {}, "1ZznCA7E": {}, "HFlAlWKi": {}}, "updateStrategy": "MIN", "value": 0.6321468699715626}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateUserStatItemValue' test.out

#- 71 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"gOYjZmpn": {}, "HF7wDOTT": {}, "PZE89RZg": {}}, "additionalKey": "TcMsCGcX", "statCode": "Wgh8jsZI", "updateStrategy": "OVERRIDE", "userId": "A4fQF3Rz", "value": 0.416459944916441}, {"additionalData": {"1Frk7NNe": {}, "pP2FDaIT": {}, "YEN6iora": {}}, "additionalKey": "ex0leCC6", "statCode": "vQ5dQ768", "updateStrategy": "MIN", "userId": "nB8RaX2d", "value": 0.5637529003752861}, {"additionalData": {"miWezgaQ": {}, "DqS77t7t": {}, "qQWmRrYh": {}}, "additionalKey": "Sc3Iao6W", "statCode": "A1hSle9L", "updateStrategy": "MAX", "userId": "lf9oPbyV", "value": 0.023865662300403656}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem1' test.out

#- 72 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'd1QtKkVa' \
    --additionalKey '92ZXWNU4' \
    --statCodes '["P0qD2IIg", "EQsLcXhx", "CrSGLzKH"]' \
    --tags '["8bW2ILpf", "quPmXH9X", "3q7NfJBV"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicQueryUserStatItems2' test.out

#- 73 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'B0mfZRUQ' \
    --additionalKey 'NOiqxowg' \
    --body '[{"additionalData": {"rx12YgCp": {}, "ysIHDdco": {}, "1xC5YEax": {}}, "statCode": "FYokryXT", "updateStrategy": "INCREMENT", "value": 0.8757891152668443}, {"additionalData": {"jmplagHp": {}, "HQTtVxzC": {}, "CGZ5fEIB": {}}, "statCode": "Xz8KaRvx", "updateStrategy": "MIN", "value": 0.7879290832781637}, {"additionalData": {"Sp5PkTd7": {}, "8gYSu3Ey": {}, "sObcFDzL": {}}, "statCode": "7WunaarA", "updateStrategy": "OVERRIDE", "value": 0.07034927455129758}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkUpdateUserStatItem2' test.out

#- 74 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'fkMtiWxb' \
    --userId 'gHMVxUOs' \
    --additionalKey 'PZSxEgUv' \
    --body '{"additionalData": {"2u5MjRMp": {}, "sKSXu03e": {}, "7CP00iLd": {}}, "updateStrategy": "MIN", "value": 0.3694317825467528}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE