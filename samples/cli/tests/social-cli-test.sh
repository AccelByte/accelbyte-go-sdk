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
    --body '{"maxSlotSize": 74, "maxSlots": 68}' \
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
    --userId 'trGGPkaX' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'CDdcrSqm' \
    --body '{"maxSlotSize": 22, "maxSlots": 40}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'vHl1yy8R' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'pwKTPJbg' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId '77WizEKF' \
    --userId 'kknepQpU' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'v6znmZQ3' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'S6NiQCzs' \
    --userId 'PRGdjXoy' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["o0JgS59c", "LBt9AUMz", "qQBnNGIP"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'aIy2hUne' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'rqgnN5US' \
    --body '{"achievements": ["way1g03S", "M035cni1", "hqPYEBED"], "attributes": {"S4PhN1oB": "wLTerSV7", "UVPJKpo2": "GfEa2kea", "3gINNinL": "tIcH9y10"}, "avatarUrl": "GJsjNq96", "inventories": ["mXH0YzUD", "Fw5Rdy3Y", "wWctPvcs"], "label": "OCv5KjTl", "profileName": "XDgc8j3d", "statistics": ["8uOY95vv", "BNDocmnw", "hVSfOD98"], "tags": ["AD6BQvE3", "1pbmuuYp", "mESX8MfQ"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'zeqGcl9G' \
    --userId 'ZIsAVtR0' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'jhA6XDOQ' \
    --userId 'RCSMi7kw' \
    --body '{"achievements": ["Irp3M81K", "AVnwD9QY", "4TGsfvEZ"], "attributes": {"rSMV6lMr": "ByPq0yd1", "vXseAbgm": "ByD87dbK", "FPrl9kKi": "Ymm84tPK"}, "avatarUrl": "o5RUh89U", "inventories": ["qIq3Yb52", "iIkQHD4l", "ExH4Ru9y"], "label": "ZYFQ3DHq", "profileName": "Q98lBKM5", "statistics": ["YA5KGDH3", "q0lvjtAm", "RhfpWVFx"], "tags": ["5LxRi3f1", "unNnM9DT", "zNWRDk0K"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'rZdYDxJJ' \
    --userId 'MD8VDIb0' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'hYAjiqqB' \
    --namespace $AB_NAMESPACE \
    --profileId 'moV0S2ae' \
    --userId '2dA2GtFi' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'FnPgDZcA' \
    --namespace $AB_NAMESPACE \
    --profileId 'ufrMHAwp' \
    --userId 'e7GDsYBm' \
    --body '{"name": "u8FAIA3q", "value": "TD7OTGOV"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'hlYeJCYc' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId '9gTLOVqr' \
    --label 'iqzJF4cN' \
    --tags '["eFAVgCgD", "LOUZD7DR", "l1Zcf4Pe"]' \
    --checksum 'WmXY7hZn' \
    --customAttribute 'cWrv8kqo' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'a0RRGGtG' \
    --userId '2VwLkVeG' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'e3C07rUp' \
    --userId 'qsfZRcoI' \
    --label 'pBujaUlq' \
    --tags '["QjTV7YBl", "cR1VIUDp", "kqy1f6Mb"]' \
    --checksum 'DDQRKrrz' \
    --customAttribute 'hMYj9Uk4' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'yCIYChMK' \
    --userId 'AOG4y0td' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId '8Bhhgh5v' \
    --userId 'zmjT93g6' \
    --body '{"customAttribute": "IvbTiqo9", "label": "pKVyKH5O", "tags": ["2JAuNzki", "JDgAR22c", "G1qk2tqa"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'hkk61Qxt' \
    --userIds 'tkRRGmUD' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6640780331222117, "statCode": "QLBMmLbd", "userId": "amazVgQ9"}, {"inc": 0.2879348368409068, "statCode": "wzqmBsh0", "userId": "dmPRNpN2"}, {"inc": 0.7529377414455222, "statCode": "1gR11OBo", "userId": "JLbmWPfK"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.295727123547991, "statCode": "qeoa72dx", "userId": "5oDs2WDy"}, {"inc": 0.7851029201657255, "statCode": "Brv3KW8H", "userId": "Vz5kc6Ud"}, {"inc": 0.6690271674716347, "statCode": "ifIua6Be", "userId": "Nda4FMVT"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'KygiCxk8' \
    --userIds '["mG5J8mM2", "h8ZG4eSa", "KYW3B5L0"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "5XKhb2yC", "userId": "VwucErCl"}, {"statCode": "ttRg1wG8", "userId": "QVCQXdZk"}, {"statCode": "1UZNMEqS", "userId": "Ub9idy9H"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.37707126463369667, "description": "rA4Q79vS", "incrementOnly": false, "maximum": 0.6781307232114671, "minimum": 0.36481030673901993, "name": "4HTR0GN2", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "fsZDhq1z", "tags": ["L5BKH9WR", "EbZmXp2Z", "ADIf8wnR"]}' \
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
    --limit '25' \
    --offset '44' \
    --keyword 'TUNq8rTD' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'vjdNy6Je' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'YaYAafx7' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'CQyp51Gy' \
    --body '{"description": "4pMpbiwO", "name": "SJu6HuaI", "tags": ["mQFS6LI9", "TR5y9E7Z", "50fLhk7J"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'JqyeBT7s' \
    --limit '68' \
    --offset '63' \
    --statCodes 'GOvii7Cc' \
    --tags 'om6F8qgQ' \
    > test.out 2>&1
eval_tap $? 40 'GetUserStatItems' test.out

#- 41 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3NMtIO4I' \
    --body '[{"statCode": "eTvhvEsP"}, {"statCode": "6712nXkK"}, {"statCode": "VpKfWIoY"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkCreateUserStatItems' test.out

#- 42 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'olVu0y7E' \
    --body '[{"inc": 0.1311291117185691, "statCode": "ELtVP3ZF"}, {"inc": 0.8190391563968927, "statCode": "vLEr03kr"}, {"inc": 0.9286652364393094, "statCode": "yDLVchSj"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkIncUserStatItem1' test.out

#- 43 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '34k6gdDy' \
    --body '[{"inc": 0.19692405849732153, "statCode": "tIsIQI0p"}, {"inc": 0.39507729312227957, "statCode": "p64tL1h9"}, {"inc": 0.21662973644693695, "statCode": "RQSakVky"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItemValue1' test.out

#- 44 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'HCwgyfrj' \
    --body '[{"statCode": "tEF67pRS"}, {"statCode": "I3qAA9NL"}, {"statCode": "bJyF4OJP"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkResetUserStatItem1' test.out

#- 45 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'X9Efew9l' \
    --userId 'IIKBs5pj' \
    > test.out 2>&1
eval_tap $? 45 'CreateUserStatItem' test.out

#- 46 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'E8JIJ32s' \
    --userId '1sfNC4VI' \
    > test.out 2>&1
eval_tap $? 46 'DeleteUserStatItems' test.out

#- 47 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'xnXyJW6G' \
    --userId '2mr0lHWd' \
    --body '{"inc": 0.8337941088949065}' \
    > test.out 2>&1
eval_tap $? 47 'IncUserStatItemValue' test.out

#- 48 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'LlfOPhEX' \
    --userId 'cdjQWI7r' \
    --additionalKey '7M3sJ8jh' \
    --body '{"additionalData": {"v3pSky5w": {}, "DIhjZ1FZ": {}, "94mzMGVI": {}}}' \
    > test.out 2>&1
eval_tap $? 48 'ResetUserStatItemValue' test.out

#- 49 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'EkdkPxlN' \
    --userIds 'bQlPmyqd' \
    > test.out 2>&1
eval_tap $? 49 'BulkFetchStatItems1' test.out

#- 50 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8251244512424142, "statCode": "OrrkkVaL", "userId": "SqdBUtHd"}, {"inc": 0.6018296938564542, "statCode": "VPY7071U", "userId": "FzNahNj2"}, {"inc": 0.9160015998451905, "statCode": "FaeA2zZW", "userId": "wnIDZKXX"}]' \
    > test.out 2>&1
eval_tap $? 50 'PublicBulkIncUserStatItem' test.out

#- 51 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5915100889041168, "statCode": "ZA0G8NZ8", "userId": "HD3wxeas"}, {"inc": 0.16592144102200368, "statCode": "lwwK8YFm", "userId": "890xRrXM"}, {"inc": 0.2750683952161448, "statCode": "CDZ7qTbh", "userId": "GolbSVGe"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItemValue' test.out

#- 52 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "RtjcVTef", "userId": "0CJvCs9W"}, {"statCode": "a4DhNnzz", "userId": "itF5ZlaC"}, {"statCode": "NVBSkiMb", "userId": "PKWWXi5i"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem2' test.out

#- 53 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.6151689578946167, "description": "Xmjpf0aC", "incrementOnly": false, "maximum": 0.04496983110235264, "minimum": 0.3373591125398625, "name": "gOtg4oyW", "setAsGlobal": false, "setBy": "SERVER", "statCode": "FW5cSVYG", "tags": ["oSVh3oHR", "XfrQpW40", "tDxsmwhq"]}' \
    > test.out 2>&1
eval_tap $? 53 'CreateStat1' test.out

#- 54 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '24sIo76m' \
    --limit '3' \
    --offset '54' \
    --statCodes 'phTute3s' \
    --tags '5BjvdJMQ' \
    > test.out 2>&1
eval_tap $? 54 'PublicQueryUserStatItems' test.out

#- 55 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'CZON3ESx' \
    --body '[{"statCode": "2ygKf4IP"}, {"statCode": "mpmtknzX"}, {"statCode": "FNFgWY8I"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkCreateUserStatItems' test.out

#- 56 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'e5911e2r' \
    --statCodes '["qsNCM6xz", "uTUaCFDO", "PzwQUhEA"]' \
    --tags '["cNj4WnY3", "v236ZTYe", "CNXjM6Bz"]' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryUserStatItems1' test.out

#- 57 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'JrVX5OAw' \
    --body '[{"inc": 0.4917299223434364, "statCode": "ETS7UtKA"}, {"inc": 0.4155876319257813, "statCode": "5GYWbK9I"}, {"inc": 0.707950002934603, "statCode": "dVXnTe3o"}]' \
    > test.out 2>&1
eval_tap $? 57 'PublicBulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'ZBEs70k0' \
    --body '[{"inc": 0.9881049461106906, "statCode": "2Loby4gq"}, {"inc": 0.11359705319945101, "statCode": "D72Jbh6k"}, {"inc": 0.5789568397356774, "statCode": "zbhDiwNo"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue2' test.out

#- 59 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'gClMZJhZ' \
    --body '[{"statCode": "pReQrfbS"}, {"statCode": "UzvBn512"}, {"statCode": "BeMStbuO"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem3' test.out

#- 60 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'fJv6gW6D' \
    --userId '3kxxPCVv' \
    > test.out 2>&1
eval_tap $? 60 'PublicCreateUserStatItem' test.out

#- 61 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'nhyLVHP6' \
    --userId 'x4cVrWE9' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems1' test.out

#- 62 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'fEG87gFB' \
    --userId 'Sux7StBR' \
    --body '{"inc": 0.2203452977486391}' \
    > test.out 2>&1
eval_tap $? 62 'PublicIncUserStatItem' test.out

#- 63 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '0hd7srJg' \
    --userId 'XEoU1XVL' \
    --body '{"inc": 0.8395480455418779}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItemValue' test.out

#- 64 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'iroR0l9N' \
    --userId '6kMuG9uQ' \
    > test.out 2>&1
eval_tap $? 64 'ResetUserStatItemValue1' test.out

#- 65 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"4JDw6sB8": {}, "nzWyBmAk": {}, "xTI2AyMb": {}}, "additionalKey": "UfSsfuez", "statCode": "M1PuZ6sD", "updateStrategy": "MAX", "userId": "qmYhEtOd", "value": 0.5022527293168352}, {"additionalData": {"OuvbKSrJ": {}, "dnHEiUwX": {}, "myENoQU5": {}}, "additionalKey": "X2R4VZOz", "statCode": "T9OW17nl", "updateStrategy": "MIN", "userId": "iGlnmv2i", "value": 0.2770019885612057}, {"additionalData": {"nY4g9SOT": {}, "G7zGbA3k": {}, "Zq4tcLyW": {}}, "additionalKey": "n5pCecf9", "statCode": "tCDbzUlW", "updateStrategy": "MIN", "userId": "da1MrjBo", "value": 0.27655339445513394}]' \
    > test.out 2>&1
eval_tap $? 65 'BulkUpdateUserStatItemV2' test.out

#- 66 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'tqqG9yWP' \
    --statCode 'v6vdWKdP' \
    --userIds '["IuzEACRt", "k82Fls7x", "vwAdHKp6"]' \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchOrDefaultStatItems1' test.out

#- 67 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'BcFbzz6f' \
    --additionalKey 'AwEq5qg1' \
    --body '[{"additionalData": {"P8Vt1dlM": {}, "kHx2dPoe": {}, "DQx6B1CK": {}}, "statCode": "t27nTeJM", "updateStrategy": "INCREMENT", "value": 0.77477072012439}, {"additionalData": {"AabBNLrY": {}, "h3L6Z7Ng": {}, "GkiaAc7J": {}}, "statCode": "qnDbhBmw", "updateStrategy": "MIN", "value": 0.052900498969521426}, {"additionalData": {"7gT9SIOc": {}, "f4cmIiBV": {}, "lBOC4noZ": {}}, "statCode": "plwegWKd", "updateStrategy": "INCREMENT", "value": 0.5426502260156535}]' \
    > test.out 2>&1
eval_tap $? 67 'BulkUpdateUserStatItem' test.out

#- 68 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '62cE9rdm' \
    --additionalKey 'msx7iPGJ' \
    --body '[{"additionalData": {"aj9RLigj": {}, "qm9gSscF": {}, "Qf2rJ2a9": {}}, "statCode": "3bVnnvVy"}, {"additionalData": {"tefeU1xC": {}, "l8XxgtGS": {}, "OX2qJvUd": {}}, "statCode": "E2MgiKfN"}, {"additionalData": {"KWRrYwn9": {}, "l1lixbCM": {}, "src7AA6H": {}}, "statCode": "bMfBuRsA"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItemValues' test.out

#- 69 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'gfckSGIc' \
    --userId 'tSquC4mf' \
    --additionalKey 'T28BCrwh' \
    > test.out 2>&1
eval_tap $? 69 'DeleteUserStatItems2' test.out

#- 70 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'mn9DxICP' \
    --userId 'SFnCmnhA' \
    --additionalKey 'DcnIl3cC' \
    --body '{"additionalData": {"8z4GgSFC": {}, "YRLhWdLk": {}, "TATTCZq9": {}}, "updateStrategy": "INCREMENT", "value": 0.7681546378826644}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateUserStatItemValue' test.out

#- 71 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"4GAXfcOg": {}, "WoKATsZC": {}, "sQpV05Ep": {}}, "additionalKey": "v2AT1iHs", "statCode": "TOHS2zz6", "updateStrategy": "OVERRIDE", "userId": "dANhCZvT", "value": 0.26727545948390663}, {"additionalData": {"NSx05AR1": {}, "Lf9QmimR": {}, "arZcNDho": {}}, "additionalKey": "2pstde1H", "statCode": "RYefiEYx", "updateStrategy": "MAX", "userId": "PshktOhH", "value": 0.02578337220557947}, {"additionalData": {"Lb9rXTbw": {}, "KuTuCeBt": {}, "9SnjQ7Fh": {}}, "additionalKey": "eXxakfVc", "statCode": "1OG3zlkn", "updateStrategy": "MIN", "userId": "vNUGMPOG", "value": 0.5002802743171201}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem1' test.out

#- 72 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'LeNx5WP9' \
    --additionalKey 'XQseWo5s' \
    --statCodes '["EyLlXa5S", "3vZpoMxq", "w8tAw1rG"]' \
    --tags '["oyUvMByK", "HkW9Ton6", "TnybBDUw"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicQueryUserStatItems2' test.out

#- 73 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'oMqRS5UI' \
    --additionalKey 'fsGUklN1' \
    --body '[{"additionalData": {"U1kotqzT": {}, "Ld0qYE0X": {}, "Q7phego5": {}}, "statCode": "pfSczJ0q", "updateStrategy": "MAX", "value": 0.7066165405610225}, {"additionalData": {"tfptFN8h": {}, "bxOxaDlG": {}, "Y6E5Zi2v": {}}, "statCode": "5nRY4s9I", "updateStrategy": "MIN", "value": 0.7554129326018432}, {"additionalData": {"Ow9UrqYP": {}, "wCZUdD4N": {}, "4emLsyhi": {}}, "statCode": "LvL5cpUU", "updateStrategy": "OVERRIDE", "value": 0.8461943717203791}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkUpdateUserStatItem2' test.out

#- 74 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Yp5FZw3N' \
    --userId 'EcEdhPvA' \
    --additionalKey 'qyFMklZM' \
    --body '{"additionalData": {"0jU2ZfPO": {}, "u2DMzhbB": {}, "CUWEJPww": {}}, "updateStrategy": "OVERRIDE", "value": 0.9105394450631693}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE