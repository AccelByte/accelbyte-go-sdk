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
echo "1..75"

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
    --body '{"maxSlotSize": 100, "maxSlots": 13}' \
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
    --userId 'EA8sxw2X' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'jQSloQ2h' \
    --body '{"maxSlotSize": 82, "maxSlots": 56}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'qeT52yDh' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'Lgxwdtvz' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'JalmYm6Y' \
    --userId 'iln7EbcC' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'WSLfsKEV' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'zdtuQQGn' \
    --userId 'nzh2n2rm' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["ydnbYX6K", "pwlp1Oe5", "WMA5lPov"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'ldDBTaT2' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'VOWsHfl3' \
    --body '{"achievements": ["KnUyQIjU", "LEI82DBB", "tlBOtKtN"], "attributes": {"O2FHWSUv": "C76pNvkv", "xuQppMLn": "9zFCfkLy", "CfOemtbU": "kpjEE5cb"}, "avatarUrl": "XUylQSRK", "inventories": ["QvtzhLqg", "CTR92zVw", "AOw2oOM2"], "label": "n6WdhzX8", "profileName": "J2RJQT0Z", "statistics": ["W9rPMcXy", "t7zl1y6O", "QLbDOQL0"], "tags": ["Zp9rbYiS", "Yoktyg8q", "qZgdxDFj"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'KsZRYEOm' \
    --userId 'PYeR2eT2' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'jLCWICLD' \
    --userId '0ghQL0tJ' \
    --body '{"achievements": ["RkgAMxaL", "WsLRBDl6", "PZSsQaqu"], "attributes": {"DU5kF5pT": "Y1HTcwQv", "fhAEYemP": "ofjaK6DN", "fTeyqBOF": "F2L7RuRR"}, "avatarUrl": "14EDpEXA", "inventories": ["lgGzPJ1Z", "JTMUha4B", "NmxXcSY4"], "label": "G7ubjb3Q", "profileName": "4ZRUoyf9", "statistics": ["Gg02Xfxh", "VJpfOpPJ", "blR1h5GJ"], "tags": ["xZSYWVt4", "q0Dz0RMi", "HzwsrrdP"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'xXiJBxxw' \
    --userId '8omOwc24' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'h3MibvR3' \
    --namespace $AB_NAMESPACE \
    --profileId '5z3baFR9' \
    --userId '6VkkMhxC' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'GD0mg5pm' \
    --namespace $AB_NAMESPACE \
    --profileId 'RKgX4DfP' \
    --userId '7WqzkLqq' \
    --body '{"name": "vfSbLCew", "value": "USXF6jM4"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'K0OK3xoB' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId '6gtz7nlk' \
    --label 'lz6tBFKT' \
    --tags '["RMW5zzda", "VSW6sY50", "Y1j5GTkB"]' \
    --checksum 'TEZeNkiy' \
    --customAttribute 'B8PRr13L' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'ucJIThYk' \
    --userId 'T6WuVQGH' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '1jDp9ak3' \
    --userId 'jI61Akys' \
    --label 'xYOa1F2N' \
    --tags '["iadclpPR", "7wjoYGMo", "ru1OGkC6"]' \
    --checksum 'PhKiuUu1' \
    --customAttribute 'Q6KHmho1' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'v0HZtKcd' \
    --userId 'BQSONV8o' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'S3w5qARc' \
    --userId 'gSkdfArp' \
    --body '{"customAttribute": "acnkIRIY", "label": "eOj4d8I4", "tags": ["vq3P8te2", "ds2iY2Ku", "hUoYrJD2"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'eG3ZLYLJ' \
    --userIds 'Cbe7LoP2' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6636308625184341, "statCode": "CxnKrUvT", "userId": "Wib6bj3C"}, {"inc": 0.4632976797122884, "statCode": "mbLmJeYJ", "userId": "Lvwwg8Ag"}, {"inc": 0.037442391312932144, "statCode": "z5rHk4jL", "userId": "W5OsHTcZ"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.38810415837589685, "statCode": "hr3GbwCR", "userId": "mnk4z7gn"}, {"inc": 0.6762540777414572, "statCode": "Zsi5KQ9l", "userId": "a7Y56i2Z"}, {"inc": 0.3095225855659235, "statCode": "fLaQ3lVv", "userId": "NwBO664C"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'eFpcVqjv' \
    --userIds '["ZvHcyNVW", "RxMN7ORL", "8KoaKrur"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "ablvcyKh", "userId": "Yies0OBB"}, {"statCode": "HA6ZCqlF", "userId": "KpDjPWUU"}, {"statCode": "1AXQ7DDi", "userId": "sqJH19rJ"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.980709506006669, "description": "boeAOGnO", "incrementOnly": true, "maximum": 0.43574964284143936, "minimum": 0.001247645547349574, "name": "qn31edCJ", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "qV0Xctqa", "tags": ["gdpTYXSv", "t2LD9sAU", "bQf2CTeX"]}' \
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
    --limit '93' \
    --offset '13' \
    --keyword 'aAbgRWc9' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '3BJzhIKZ' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FKuLnVqO' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kmxrMAl2' \
    --body '{"defaultValue": 0.5962781927941847, "description": "ddvNKBsy", "name": "BurDYCJ7", "tags": ["d9qRCrn2", "aL2eLhMx", "DzuB7y5T"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '6r4WSjKU' \
    > test.out 2>&1
eval_tap $? 40 'DeleteTiedStat' test.out

#- 41 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'uNBUeDWd' \
    --limit '51' \
    --offset '57' \
    --statCodes '8HEz5eXI' \
    --tags 'jGCMHids' \
    > test.out 2>&1
eval_tap $? 41 'GetUserStatItems' test.out

#- 42 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ReImuYXg' \
    --body '[{"statCode": "VmBfob3f"}, {"statCode": "0VSiU8bt"}, {"statCode": "h4Fy0iqV"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkCreateUserStatItems' test.out

#- 43 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '8co5BHkC' \
    --body '[{"inc": 0.8701165584656565, "statCode": "RbysWPKS"}, {"inc": 0.5863487911641491, "statCode": "pLapg94N"}, {"inc": 0.7990595619480421, "statCode": "rRB2BDPi"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItem1' test.out

#- 44 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'GQvfqB8Y' \
    --body '[{"inc": 0.6469283930410819, "statCode": "YgHeueyI"}, {"inc": 0.5654121428814847, "statCode": "JMJJSgcx"}, {"inc": 0.1006829624037543, "statCode": "i73YMPSJ"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItemValue1' test.out

#- 45 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'dHCCbWSf' \
    --body '[{"statCode": "mOiv3ZKl"}, {"statCode": "ThtTjTK0"}, {"statCode": "CzxoGxIM"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkResetUserStatItem1' test.out

#- 46 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '3DJiw8lH' \
    --userId 'hpRUephF' \
    > test.out 2>&1
eval_tap $? 46 'CreateUserStatItem' test.out

#- 47 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '9Hniuxe6' \
    --userId 'NuUAeLOV' \
    > test.out 2>&1
eval_tap $? 47 'DeleteUserStatItems' test.out

#- 48 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'pWEBaZRv' \
    --userId 'DfkXzbwH' \
    --body '{"inc": 0.44237838414279584}' \
    > test.out 2>&1
eval_tap $? 48 'IncUserStatItemValue' test.out

#- 49 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'TMD8zRGY' \
    --userId 'Lliac2Sd' \
    --additionalKey 'PpjzrL65' \
    --body '{"additionalData": {"FvL8vcUK": {}, "bKP8ptVi": {}, "DbFCmX9v": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'ResetUserStatItemValue' test.out

#- 50 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ngV9x4Kr' \
    --userIds 'xI1IPfs6' \
    > test.out 2>&1
eval_tap $? 50 'BulkFetchStatItems1' test.out

#- 51 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.34608058771900374, "statCode": "COoVGscI", "userId": "6FSQmViv"}, {"inc": 0.0005098048941586386, "statCode": "mHSyUMl2", "userId": "Gx6BWIEi"}, {"inc": 0.0107423334786938, "statCode": "BOXAtxZ2", "userId": "riCnPhKw"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItem' test.out

#- 52 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.42686978571286427, "statCode": "ds9FILX8", "userId": "N0tmE45x"}, {"inc": 0.8930681668763929, "statCode": "fyng18Xi", "userId": "ydHUA15T"}, {"inc": 0.3339261240605962, "statCode": "X5vrhzOM", "userId": "RVOnDz9M"}]' \
    > test.out 2>&1
eval_tap $? 52 'PublicBulkIncUserStatItemValue' test.out

#- 53 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "ARsbroUQ", "userId": "yC4YBudu"}, {"statCode": "Yabu34Ex", "userId": "xuUkGl4W"}, {"statCode": "y1qWMXfp", "userId": "EPNVUjUd"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem2' test.out

#- 54 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.41350291764288705, "description": "JuOekcDT", "incrementOnly": true, "maximum": 0.7651476939945145, "minimum": 0.15660126339793823, "name": "r8EbZ7DG", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "HIycPYki", "tags": ["EL0oP8lP", "qThQyOdF", "4QYLmKED"]}' \
    > test.out 2>&1
eval_tap $? 54 'CreateStat1' test.out

#- 55 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'twWVShjT' \
    --limit '47' \
    --offset '4' \
    --statCodes 'rR45rQuc' \
    --tags 'a17uo9u5' \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryUserStatItems' test.out

#- 56 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'fVzuwJep' \
    --body '[{"statCode": "oSctJAXc"}, {"statCode": "MCo02QyB"}, {"statCode": "TE9OveaL"}]' \
    > test.out 2>&1
eval_tap $? 56 'PublicBulkCreateUserStatItems' test.out

#- 57 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'AnRCbfSD' \
    --statCodes '["qi19535y", "QcmXhrz5", "mhc6zxAE"]' \
    --tags '["1BTxuAry", "JV4lEWEI", "Rqb72STe"]' \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryUserStatItems1' test.out

#- 58 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '3AUulX01' \
    --body '[{"inc": 0.2627944647172571, "statCode": "78WUmyjm"}, {"inc": 0.8842768603143866, "statCode": "sfOghydJ"}, {"inc": 0.4694945237812669, "statCode": "OUV2QGYB"}]' \
    > test.out 2>&1
eval_tap $? 58 'PublicBulkIncUserStatItem1' test.out

#- 59 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'b1Aq8DTq' \
    --body '[{"inc": 0.39799820991744594, "statCode": "i85gOJpn"}, {"inc": 0.017986995419264296, "statCode": "oQVenb4P"}, {"inc": 0.13623062156134458, "statCode": "aRf9m3Sf"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkIncUserStatItemValue2' test.out

#- 60 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'yNEz8cla' \
    --body '[{"statCode": "xp0RJrK8"}, {"statCode": "MzlvFCj3"}, {"statCode": "GO2955uU"}]' \
    > test.out 2>&1
eval_tap $? 60 'BulkResetUserStatItem3' test.out

#- 61 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Y1QlqVHx' \
    --userId 'UPYSKpvv' \
    > test.out 2>&1
eval_tap $? 61 'PublicCreateUserStatItem' test.out

#- 62 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'MxUn79VS' \
    --userId 'BqTx46bL' \
    > test.out 2>&1
eval_tap $? 62 'DeleteUserStatItems1' test.out

#- 63 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'GYeGstwW' \
    --userId 'HhVtOqW3' \
    --body '{"inc": 0.4010062209983022}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItem' test.out

#- 64 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'AMMoZlMf' \
    --userId 'ldlfQ8zn' \
    --body '{"inc": 0.5116275441630623}' \
    > test.out 2>&1
eval_tap $? 64 'PublicIncUserStatItemValue' test.out

#- 65 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'zFMgZnZz' \
    --userId 'XJtVoTGB' \
    > test.out 2>&1
eval_tap $? 65 'ResetUserStatItemValue1' test.out

#- 66 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"syR0vwKx": {}, "QtraArd6": {}, "oo0vRONo": {}}, "additionalKey": "bBT9AoFe", "statCode": "E7AtRRdf", "updateStrategy": "MAX", "userId": "XfO9JvCK", "value": 0.36724081254594143}, {"additionalData": {"HffsQKNS": {}, "jFZevfmF": {}, "RJ3W6HYp": {}}, "additionalKey": "z2uN9F42", "statCode": "BjIjRDuk", "updateStrategy": "MAX", "userId": "yT5u4Akq", "value": 0.048283308071670805}, {"additionalData": {"pTeQZ62I": {}, "J7aNNlNR": {}, "xC3B30Ro": {}}, "additionalKey": "l9XXikJW", "statCode": "tS9rTzH8", "updateStrategy": "MIN", "userId": "svoZRtjw", "value": 0.7795555101774317}]' \
    > test.out 2>&1
eval_tap $? 66 'BulkUpdateUserStatItemV2' test.out

#- 67 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'qevBqcBL' \
    --statCode 'nFqTMDvQ' \
    --userIds '["g9NrW6EE", "0R3qB4PQ", "YRD6pKUA"]' \
    > test.out 2>&1
eval_tap $? 67 'BulkFetchOrDefaultStatItems1' test.out

#- 68 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'PhqAuIDs' \
    --additionalKey 'USIdAuyH' \
    --body '[{"additionalData": {"ilhs5vXb": {}, "DNfeeheR": {}, "8J9G1FGs": {}}, "statCode": "VRzFoCoi", "updateStrategy": "MAX", "value": 0.39574135717182335}, {"additionalData": {"Bc5JFGB0": {}, "gP2tf3VK": {}, "9noYRTEK": {}}, "statCode": "OADtuNpk", "updateStrategy": "INCREMENT", "value": 0.6796115800099034}, {"additionalData": {"OzGsT7Kb": {}, "pE1rPGaH": {}, "nmJnw66M": {}}, "statCode": "T1LM4TTq", "updateStrategy": "MAX", "value": 0.6717051986520216}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem' test.out

#- 69 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'kpVLbhD4' \
    --additionalKey 'sWZVSobq' \
    --body '[{"additionalData": {"f1DYfEJA": {}, "C8S1zyS1": {}, "chasmw6c": {}}, "statCode": "4nh8YnIj"}, {"additionalData": {"PNEygXnf": {}, "mARlLKRZ": {}, "54A4TLA4": {}}, "statCode": "Ac0toVxW"}, {"additionalData": {"ztE3ZtFB": {}, "vloBZc22": {}, "JU8LvDew": {}}, "statCode": "8WOdApEf"}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItemValues' test.out

#- 70 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'tcoW5kS1' \
    --userId 'IIJ6m6JZ' \
    --additionalKey '9306oeAp' \
    > test.out 2>&1
eval_tap $? 70 'DeleteUserStatItems2' test.out

#- 71 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'UjOe5Ut6' \
    --userId 'm4RoSjMO' \
    --additionalKey 'xpjG4Thi' \
    --body '{"additionalData": {"dz8puce7": {}, "dTK5dOtx": {}, "ixTcQeJI": {}}, "updateStrategy": "MIN", "value": 0.19553563668868768}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateUserStatItemValue' test.out

#- 72 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"TomHScFq": {}, "0wNpPLLR": {}, "jNYmUh3C": {}}, "additionalKey": "OxagQull", "statCode": "BJENWC19", "updateStrategy": "OVERRIDE", "userId": "LflquVsc", "value": 0.6861861994765381}, {"additionalData": {"lKj5B7fA": {}, "EmfAo3mB": {}, "Ph2pmWkc": {}}, "additionalKey": "HeNia95g", "statCode": "si1HCp7w", "updateStrategy": "INCREMENT", "userId": "tHY2y8Vh", "value": 0.14717297149048647}, {"additionalData": {"dlPxGfl7": {}, "9fI9NdUE": {}, "808P3RBY": {}}, "additionalKey": "cmUHkEu7", "statCode": "GZxp45aw", "updateStrategy": "INCREMENT", "userId": "IsKkkklA", "value": 0.9579546626138257}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkUpdateUserStatItem1' test.out

#- 73 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '2MUp99nb' \
    --additionalKey 'AdBdtOkn' \
    --statCodes '["VFOzrdmq", "EPlUJaiO", "S1snlbRU"]' \
    --tags '["J9tM2xin", "V7ZM4BdA", "v8J5fNAh"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems2' test.out

#- 74 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'lQBy3Rtp' \
    --additionalKey 'i0R3LpmH' \
    --body '[{"additionalData": {"BJer5yqn": {}, "e5Tyvz5S": {}, "BY6nAeBV": {}}, "statCode": "wnLJ7YX2", "updateStrategy": "MIN", "value": 0.5339901332131374}, {"additionalData": {"9tympRMl": {}, "dsXBsdiF": {}, "MwaVpUVY": {}}, "statCode": "CREUz5i8", "updateStrategy": "OVERRIDE", "value": 0.2505479276688489}, {"additionalData": {"65OwVmr0": {}, "hqI7cxcT": {}, "gN6KhAGR": {}}, "statCode": "iCILA5da", "updateStrategy": "MAX", "value": 0.7680600859630149}]' \
    > test.out 2>&1
eval_tap $? 74 'BulkUpdateUserStatItem2' test.out

#- 75 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'WMZxfAZO' \
    --userId 'G3bCgxXf' \
    --additionalKey 'EoO9dHe1' \
    --body '{"additionalData": {"rJE5W93C": {}, "2nDBxbTU": {}, "aNhcW9PY": {}}, "updateStrategy": "OVERRIDE", "value": 0.4380342566400146}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE