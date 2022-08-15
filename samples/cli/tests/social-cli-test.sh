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
    --body '{"maxSlotSize": 78, "maxSlots": 16}' \
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
    --userId 'EqCRrY6w' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'lKMnnJap' \
    --body '{"maxSlotSize": 96, "maxSlots": 33}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'ZsehaoNJ' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'XCLG9tjA' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'hxKv7luH' \
    --userId 'MfPisgQZ' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'BQGr29G5' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'sIb1qrmx' \
    --userId 'AvZ1LwtD' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["NDZMZQeQ", "9eV3cNEd", "oeyRtNcC"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'cif3HXEr' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'BIIuHpiE' \
    --body '{"achievements": ["eUrxrNId", "bzJwk6BN", "RAjUnpMP"], "attributes": {"13bswjC2": "kvqMYrxW", "8JwUwntX": "dHCCXEKl", "FTMCPuBz": "1ej32PRY"}, "avatarUrl": "pcC7rWrq", "inventories": ["h6un6TUF", "dN49sDFN", "hNG50eAu"], "label": "AA7PHXNy", "profileName": "aSjvCLAk", "statistics": ["0aRq5Nyg", "qA7NQCjK", "aqmGCP0d"], "tags": ["Q6V3YdRV", "8mqgHyR8", "zPTta0po"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'JrbfUUMH' \
    --userId 'A2TGLqEh' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'LLyfyfPZ' \
    --userId 'E3IgzkOk' \
    --body '{"achievements": ["oalcTrJ8", "l44Jsn2x", "wkhrxkyQ"], "attributes": {"oqNpsX6J": "GF8B5F72", "QeFnopmZ": "JjfhstD5", "wMDJT3Ta": "H0bEj93I"}, "avatarUrl": "FWbsaVes", "inventories": ["WCi5wr0l", "3YovgnMd", "4SQIXoED"], "label": "bNgI3OUZ", "profileName": "X1LPQd32", "statistics": ["XX1IcPVg", "XCpHFUNo", "oaFHBJJE"], "tags": ["T3g0uPL9", "wAA6P1QJ", "hz62bRwP"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Gx4PKtuZ' \
    --userId '7Gni81bg' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'fGI1JkvR' \
    --namespace $AB_NAMESPACE \
    --profileId 'C9ssnhxc' \
    --userId '9pj82Itp' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'jdPLZcue' \
    --namespace $AB_NAMESPACE \
    --profileId 'x9nBpGEV' \
    --userId 'Dz4y1uRW' \
    --body '{"name": "PeMTfHmM", "value": "ocKISvJW"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'H4KyrpMf' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'iixPvb0G' \
    --label 'GRtPJHRS' \
    --tags '["X5MX8I1b", "NpeWdnJc", "CERPwEdp"]' \
    --checksum 'rtzCEXEZ' \
    --customAttribute 'tQkpz53E' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'MuxAAOSw' \
    --userId 'uGY5dmVE' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'biTAMb7g' \
    --userId 'NfPYhHqc' \
    --label '2dhAchuR' \
    --tags '["SX4FJCcB", "IuHH6Wbg", "g1vYMSKI"]' \
    --checksum 'VY9bzS33' \
    --customAttribute 'Hy0BRA3S' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'mWHQwbww' \
    --userId 'F4eY4Ffg' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'bv1MT4nK' \
    --userId 'V5RHSWKk' \
    --body '{"customAttribute": "SK8pQPnU", "label": "3cbyrDCd", "tags": ["leZiwNps", "d5TbTrXv", "XDkfV32b"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'xpTXqp6E' \
    --userIds 'JCFSPsS6' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.39146374454676836, "statCode": "Vbh5oaGv", "userId": "ZJozYGfe"}, {"inc": 0.5338154749237056, "statCode": "zPj0n9vj", "userId": "HVjufoLC"}, {"inc": 0.8431864732734384, "statCode": "Crtd6QoY", "userId": "E5MnLsF4"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4927667404747371, "statCode": "fF6Hwo3Q", "userId": "4gcyTy8r"}, {"inc": 0.5520716674362498, "statCode": "pckmhmwJ", "userId": "SN6ZCKzC"}, {"inc": 0.7890548830276273, "statCode": "uBmjJEFu", "userId": "wY3B5juK"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'CriMyXSa' \
    --userIds '["lWlqdxYo", "UenENQCx", "iMMb08Y0"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "MyaY2ifg", "userId": "cBHZSysG"}, {"statCode": "0rbAgIGN", "userId": "Ku9NkAWi"}, {"statCode": "w4OwLxzw", "userId": "OE5lMCmU"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.14641813368076195, "description": "7uCEjEE3", "incrementOnly": true, "maximum": 0.8921376722692682, "minimum": 0.9624869809287293, "name": "Y8bdYfzi", "setAsGlobal": true, "setBy": "SERVER", "statCode": "EzaW6L5B", "tags": ["foJF2cen", "jaKossH3", "BftebqXC"]}' \
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
    --limit '80' \
    --offset '10' \
    --keyword 'SPlOvfMa' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'PYH1GdUN' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'gG7IOVen' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'AMUMRshq' \
    --body '{"description": "rnjYVhMb", "name": "swsX6NIO", "tags": ["WjEJcLmW", "FHPDI7Ut", "4lc1LW8z"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ML43VBS2' \
    --limit '87' \
    --offset '1' \
    --statCodes 'HYj8I7xW' \
    --tags 'OIcl7Ewr' \
    > test.out 2>&1
eval_tap $? 40 'GetUserStatItems' test.out

#- 41 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'LkrcXKFD' \
    --body '[{"statCode": "YccVqcqy"}, {"statCode": "0EFFMk8C"}, {"statCode": "aSMu9EwH"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkCreateUserStatItems' test.out

#- 42 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'MswYQ0wu' \
    --body '[{"inc": 0.358131838717895, "statCode": "EzqZLqOX"}, {"inc": 0.5882982590032863, "statCode": "Fc9IkR4h"}, {"inc": 0.7645650258346545, "statCode": "64SGpWbn"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkIncUserStatItem1' test.out

#- 43 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'yXqElDbI' \
    --body '[{"inc": 0.2495267947619697, "statCode": "QytERJeP"}, {"inc": 0.32987054992997555, "statCode": "3qt6JhbS"}, {"inc": 0.17398362152369862, "statCode": "Fc4zkMp1"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItemValue1' test.out

#- 44 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'cYX22NZi' \
    --body '[{"statCode": "pElHQZlS"}, {"statCode": "Q0B5dyrS"}, {"statCode": "B23QJAdv"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkResetUserStatItem1' test.out

#- 45 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'py34sKg9' \
    --userId 'D7JDoihM' \
    > test.out 2>&1
eval_tap $? 45 'CreateUserStatItem' test.out

#- 46 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '20pzmAlo' \
    --userId 'ukeSyuka' \
    > test.out 2>&1
eval_tap $? 46 'DeleteUserStatItems' test.out

#- 47 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'tzLe0Uxq' \
    --userId '7o8DZLKv' \
    --body '{"inc": 0.966587922494895}' \
    > test.out 2>&1
eval_tap $? 47 'IncUserStatItemValue' test.out

#- 48 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'QJCVkqRw' \
    --userId 'ToSGO1zU' \
    --additionalKey 'EG92NhcH' \
    --body '{"additionalData": {"ekv23LKI": {}, "0FboCTXV": {}, "9luolNjt": {}}}' \
    > test.out 2>&1
eval_tap $? 48 'ResetUserStatItemValue' test.out

#- 49 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'gLgsCNcB' \
    --userIds 'qzvAILMZ' \
    > test.out 2>&1
eval_tap $? 49 'BulkFetchStatItems1' test.out

#- 50 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.18840263797336676, "statCode": "r8DGXzBW", "userId": "lB6vvFGR"}, {"inc": 0.8421541438688126, "statCode": "wa8kNYYo", "userId": "S5KoBZgh"}, {"inc": 0.41312423028526035, "statCode": "kbWq5K4Q", "userId": "A2TfTaLm"}]' \
    > test.out 2>&1
eval_tap $? 50 'PublicBulkIncUserStatItem' test.out

#- 51 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6427321594538445, "statCode": "htD5EvmL", "userId": "CsAIjAEV"}, {"inc": 0.09488818529903709, "statCode": "Lr0u9ICj", "userId": "JICAGFav"}, {"inc": 0.7896512696564647, "statCode": "KmwvKr5P", "userId": "3peNvk2M"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItemValue' test.out

#- 52 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "h9X9zIgk", "userId": "NjmJvAzt"}, {"statCode": "9p7AMYDC", "userId": "fpLhpDnr"}, {"statCode": "DRoiUuN9", "userId": "HgzQ5a3J"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem2' test.out

#- 53 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.1561867141871871, "description": "fJTDX4ZN", "incrementOnly": true, "maximum": 0.04061524831094765, "minimum": 0.22556167920616188, "name": "Ab5pw8Vv", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "b6qaUHcU", "tags": ["5Or17sRR", "RAPC8Eyf", "ptXpbNaA"]}' \
    > test.out 2>&1
eval_tap $? 53 'CreateStat1' test.out

#- 54 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '0QbcbJ6N' \
    --limit '75' \
    --offset '78' \
    --statCodes '6qdT7Ulf' \
    --tags 'VEhpMx9A' \
    > test.out 2>&1
eval_tap $? 54 'PublicQueryUserStatItems' test.out

#- 55 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'znlRmapg' \
    --body '[{"statCode": "vgV8TxqX"}, {"statCode": "WS8X3DQM"}, {"statCode": "w6uPphnh"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkCreateUserStatItems' test.out

#- 56 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 's60UmNOY' \
    --statCodes '["EpTbB3Z7", "711KW58y", "soL1GPpo"]' \
    --tags '["nGCELe4r", "CGK9Bxln", "lClpl40Z"]' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryUserStatItems1' test.out

#- 57 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'XUIEQ7Sh' \
    --body '[{"inc": 0.414076684992546, "statCode": "zAKZof5y"}, {"inc": 0.3746010022388163, "statCode": "4DIGIbav"}, {"inc": 0.7286450477944788, "statCode": "drl6TZSp"}]' \
    > test.out 2>&1
eval_tap $? 57 'PublicBulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'ZiYMWx5U' \
    --body '[{"inc": 0.017341295993402617, "statCode": "rxWv2JoZ"}, {"inc": 0.638775387992523, "statCode": "wwQY2UsZ"}, {"inc": 0.6615977696386355, "statCode": "lGm0kTPP"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue2' test.out

#- 59 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '1RZW3QAv' \
    --body '[{"statCode": "gYDPHJfr"}, {"statCode": "kujiicGI"}, {"statCode": "mABJkQna"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem3' test.out

#- 60 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Wsw1Tbcr' \
    --userId 'EYOpVJiy' \
    > test.out 2>&1
eval_tap $? 60 'PublicCreateUserStatItem' test.out

#- 61 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'SellB98t' \
    --userId 'EeFfshAm' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems1' test.out

#- 62 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'VgwizMxE' \
    --userId 'wTgrom1k' \
    --body '{"inc": 0.37160950156964123}' \
    > test.out 2>&1
eval_tap $? 62 'PublicIncUserStatItem' test.out

#- 63 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'fTKKCa4w' \
    --userId 'ewdfMT3j' \
    --body '{"inc": 0.7849605872251174}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItemValue' test.out

#- 64 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'JwmNv8eQ' \
    --userId 'f4tbrIvr' \
    > test.out 2>&1
eval_tap $? 64 'ResetUserStatItemValue1' test.out

#- 65 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"wtTydCdL": {}, "Vwl8FHwe": {}, "gTumU7xU": {}}, "additionalKey": "C1OmhIDP", "statCode": "7Em9iJVE", "updateStrategy": "MAX", "userId": "NV77NI9R", "value": 0.1840348890536081}, {"additionalData": {"q1CKlWOz": {}, "UW9xpbMG": {}, "lUX5TJfU": {}}, "additionalKey": "6uS6sILC", "statCode": "YdgdYXqk", "updateStrategy": "MIN", "userId": "2nY1gmX5", "value": 0.20329807399584165}, {"additionalData": {"tRvu8wD5": {}, "SrpKxmki": {}, "sgWLHn33": {}}, "additionalKey": "nKp1xnr8", "statCode": "XFIl30vD", "updateStrategy": "OVERRIDE", "userId": "ZClfrqer", "value": 0.12464930856478185}]' \
    > test.out 2>&1
eval_tap $? 65 'BulkUpdateUserStatItemV2' test.out

#- 66 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'q9BHBFSA' \
    --statCode '32yIvLMn' \
    --userIds '["lOEUjb1v", "hOlztNoJ", "Wfr26QRC"]' \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchOrDefaultStatItems1' test.out

#- 67 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'sfSFq8tD' \
    --additionalKey 'Z82bsu5w' \
    --body '[{"additionalData": {"1P82jjmr": {}, "HzRnJNX6": {}, "S11SJUWY": {}}, "statCode": "ekkeoWQY", "updateStrategy": "MIN", "value": 0.8785816176907448}, {"additionalData": {"huDoZejX": {}, "Z8TdTjHx": {}, "s0zMaEDX": {}}, "statCode": "by2yEAHt", "updateStrategy": "MIN", "value": 0.15367130644973515}, {"additionalData": {"PU3ZnBIm": {}, "tDs8paHM": {}, "WFz8BIyr": {}}, "statCode": "tseRqFpg", "updateStrategy": "OVERRIDE", "value": 0.4113016609655591}]' \
    > test.out 2>&1
eval_tap $? 67 'BulkUpdateUserStatItem' test.out

#- 68 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'Xhv9AuTy' \
    --additionalKey '1JNk5VhA' \
    --body '[{"additionalData": {"Cd1PZRXy": {}, "izCWSQ9w": {}, "kXa3yWiI": {}}, "statCode": "DeZo2Zgl"}, {"additionalData": {"L3ltxQHS": {}, "M0TRx688": {}, "UROzrjqY": {}}, "statCode": "1P33aaBD"}, {"additionalData": {"xPt9QOx3": {}, "ZoZxEBiY": {}, "G6fcHmfH": {}}, "statCode": "5kpZfVrf"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItemValues' test.out

#- 69 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '4GPWnoaL' \
    --userId 'Tj6gqmOD' \
    --additionalKey 'PmdTpIFr' \
    > test.out 2>&1
eval_tap $? 69 'DeleteUserStatItems2' test.out

#- 70 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '5x7IjACs' \
    --userId 'l2xyVB7Y' \
    --additionalKey '4HEI3xwy' \
    --body '{"additionalData": {"5lrq1qWC": {}, "L6S5tRKH": {}, "fjZBRuYE": {}}, "updateStrategy": "OVERRIDE", "value": 0.8442987016229907}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateUserStatItemValue' test.out

#- 71 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"VrxYSXnr": {}, "8rUUMlJL": {}, "MhNLYiW8": {}}, "additionalKey": "HTVEj3me", "statCode": "c9Z8aeyY", "updateStrategy": "MAX", "userId": "qFB6jbna", "value": 0.7717612841603215}, {"additionalData": {"WB4qTS2f": {}, "CpMzWopl": {}, "vNPn1xIA": {}}, "additionalKey": "xUlWCeny", "statCode": "b3sSqWMD", "updateStrategy": "OVERRIDE", "userId": "SfuYsWYx", "value": 0.5463792673286829}, {"additionalData": {"b3SbxS3l": {}, "0Svv1F7o": {}, "5LJSZYTx": {}}, "additionalKey": "iYj7xxnj", "statCode": "f6jNsAct", "updateStrategy": "MIN", "userId": "VS4NUH4j", "value": 0.6993150150638324}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem1' test.out

#- 72 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'pkP4fBjO' \
    --additionalKey 'tAIdxLlq' \
    --statCodes '["FhNb7mXf", "70ZFYkwn", "OCnX3SWZ"]' \
    --tags '["l5keyyHf", "epq0fwjS", "g6tXJ1HQ"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicQueryUserStatItems2' test.out

#- 73 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'ZStwvaoO' \
    --additionalKey '8kgR1QGO' \
    --body '[{"additionalData": {"cyNjQEko": {}, "mXnBejzK": {}, "eAwBjbdu": {}}, "statCode": "Z3xPMrPT", "updateStrategy": "MIN", "value": 0.25314707391897195}, {"additionalData": {"f0Spfc27": {}, "Rkc9gvkk": {}, "rRQFPIPc": {}}, "statCode": "CF6A8tWl", "updateStrategy": "MIN", "value": 0.3444805803110751}, {"additionalData": {"APE9CZKs": {}, "ywvJVRJu": {}, "gTHr12oN": {}}, "statCode": "8cNIS7LB", "updateStrategy": "INCREMENT", "value": 0.8428167508866308}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkUpdateUserStatItem2' test.out

#- 74 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Rjh7AuDY' \
    --userId 'ICtj8DoA' \
    --additionalKey 'Cw0coJjU' \
    --body '{"additionalData": {"7JWzKJN5": {}, "as66un4Y": {}, "G0E6niaY": {}}, "updateStrategy": "INCREMENT", "value": 0.6919608645435278}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE