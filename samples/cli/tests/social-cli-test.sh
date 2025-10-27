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
echo "1..99"

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
eval_tap 0 8 'GetUserProfiles # SKIP deprecated' test.out

#- 9 GetProfile
eval_tap 0 9 'GetProfile # SKIP deprecated' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
eval_tap 0 12 'PublicGetUserGameProfiles # SKIP deprecated' test.out

#- 13 PublicGetUserProfiles
eval_tap 0 13 'PublicGetUserProfiles # SKIP deprecated' test.out

#- 14 PublicCreateProfile
eval_tap 0 14 'PublicCreateProfile # SKIP deprecated' test.out

#- 15 PublicGetProfile
eval_tap 0 15 'PublicGetProfile # SKIP deprecated' test.out

#- 16 PublicUpdateProfile
eval_tap 0 16 'PublicUpdateProfile # SKIP deprecated' test.out

#- 17 PublicDeleteProfile
eval_tap 0 17 'PublicDeleteProfile # SKIP deprecated' test.out

#- 18 PublicGetProfileAttribute
eval_tap 0 18 'PublicGetProfileAttribute # SKIP deprecated' test.out

#- 19 PublicUpdateAttribute
eval_tap 0 19 'PublicUpdateAttribute # SKIP deprecated' test.out

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
    --limit '35' \
    --offset '30' \
    --statCodes 'y2dAHPM3P34Rs3xo' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'Ts6s3EIzYqi1667r' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '4' \
    --name '1BwoOGMAKugARzMe' \
    --offset '0' \
    --sortBy '1Acg3Tl6khLq3HaB' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "vNufhg30Ddpuatcs", "end": "1972-08-26T00:00:00Z", "id": "QyUj6dZ9KZFrqCsX", "name": "LMV7yChlFj7ZvmoM", "resetDate": 32, "resetDay": 35, "resetMonth": 75, "resetTime": "ZdyZ51AjbeUFS29b", "seasonPeriod": 50, "start": "1971-04-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["jUISwfh7tvZwIwUh", "ixhCTfRwi49NKp8i", "CaYJ8k2YxmhWdENz"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 ExportStatCycle
samples/cli/sample-apps Social exportStatCycle \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ExportStatCycle' test.out

#- 32 ImportStatCycle
samples/cli/sample-apps Social importStatCycle \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'K39MlJhtnpLSTq1u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'I7WzXgzSCpBYJaMK' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "Ak1dTHKiFYty5rba", "end": "1989-01-01T00:00:00Z", "name": "fnhNE6vEnXbj5t8l", "resetDate": 74, "resetDay": 38, "resetMonth": 67, "resetTime": "izetyoz0ZMjFGcaC", "seasonPeriod": 11, "start": "1985-08-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'X3JPSJp71vXKQ8w8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '8GrXlehB9LLOSEvc' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["0U698X1ztU2hdTJF", "bf4TNEVgFkMwqC9i", "JBSI2rakCu9B800F"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'LMfgtSNl4NYM3wIz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '9uAVHzzyMG0sU4FI' \
    --userIds 'VjZyrfYoxvC7S6Be' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2625757351761562, "statCode": "Tk4t0LPk3ACAZtGp", "userId": "RyCQ4qSrALJBUV5R"}, {"inc": 0.016787550235834114, "statCode": "BVsDlIpcYVJ6cmwT", "userId": "4IBTiYiMteBYxl2y"}, {"inc": 0.8860829445475995, "statCode": "641w8mgEv8vMRFVz", "userId": "NuztOspU4Haqroa5"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6639247179191037, "statCode": "54ZvUxeVf20dx1wY", "userId": "im1TDU6Y9uKYr4vN"}, {"inc": 0.3593421290554776, "statCode": "S6BAVTnVL0Uh08JB", "userId": "UOsz4X2ok3W5qXl4"}, {"inc": 0.22467139271529257, "statCode": "o6yTVUdUaSxx3USm", "userId": "1RFBTCVicSQGNoUs"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '5qLSAblKCeiCZATU' \
    --userIds '["9Zd8795uevKwZkmv", "sEKZYZFxeChsK4Dc", "LkoGnHhnAFLPNueC"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "qvL9ml9rcgflIH0x", "userId": "iHKTAY3kfpWkYcM3"}, {"statCode": "LH6umb4j10DdNKhB", "userId": "DJKKrrcVFgjfRwxt"}, {"statCode": "snMjs0cqZPoXYyVS", "userId": "EHayDxL5ab2S793z"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'BeGP2Yb5fDqvUWrx' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '48' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["DRUOXXjpUHkqXBPW", "g6RUhRSA7VW1IZJi", "h8oMmip4p98gBLv8"], "cycleOverrides": [{"cycleId": "4v9ym9ZK3TiHSIpK", "maximum": 0.28841659602147474, "minimum": 0.38386315727354303}, {"cycleId": "sJGdFw1zaRFPUhl7", "maximum": 0.7160202967527812, "minimum": 0.9654005628857342}, {"cycleId": "iJEJD2cSoD36mqjI", "maximum": 0.1739719086114756, "minimum": 0.4988378345677861}], "defaultValue": 0.05898993548964637, "description": "SIfqarE6qCNL8chw", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.41991782447130654, "minimum": 0.6713336675282627, "name": "13oP8HmgnduVaIlz", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "eQP9bG848lnpjJ9q", "tags": ["gEg3mugFKFCRlr5z", "4a2Y1xHZ9MGTYFpd", "UHDj6XEOvAkd1IxN"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 44 'CreateStat' test.out

#- 45 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'ExportStats' test.out

#- 46 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 46 'ImportStats' test.out

#- 47 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '62' \
    --offset '10' \
    --keyword '4NTnkCGqIJej6n2p' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'eZFjePMNPUG3F5gi' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'oNzacxlEU6vUx51y' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'sdJGzozyP5AqRjgV' \
    --body '{"capCycleOverride": true, "cycleIds": ["FAx6nOcHBREcTQtl", "4P0hzDnjbjud8D2t", "9ECxKsURgvXjbflz"], "cycleOverrides": [{"cycleId": "xiTcOj1QF0Tkw827", "maximum": 0.5211809520507192, "minimum": 0.4244392371598501}, {"cycleId": "M1I2N784Go6Cm6DE", "maximum": 0.7111711746303627, "minimum": 0.13329944145707318}, {"cycleId": "vPUvuWN6diBgBKAv", "maximum": 0.936881900951433, "minimum": 0.6586750395311228}], "defaultValue": 0.8000144165688935, "description": "pfPYEAAFCMDhWKMN", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "e6Dp8xfWQOtY6enV", "tags": ["Af608l3GW1ZoSjuo", "jc4wiNv65EILjF4o", "b16T9aHdYI4BD1nJ"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'mqTMA6ZU5w8mCuV7' \
    --limit '61' \
    --offset '31' \
    --sortBy 'JhQjVDE3lADq7NKi' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'NVTInxpjJ7Qcgy22' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '1kgK04l0DRU6DXjt' \
    --namespace $AB_NAMESPACE \
    --userId 'FB9G7HdDCF38hGKz' \
    --isPublic 'true' \
    --limit '79' \
    --offset '11' \
    --sortBy 'PGQ4YZzALcntLj77' \
    --statCodes 'zeqEwTKFgWbFmeRf' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '0Ifgsw78jwrKy6Pn' \
    --isPublic 'true' \
    --limit '73' \
    --offset '95' \
    --sortBy 'wXkt1KCTelz4LCRz' \
    --statCodes 'GaLjEKRc5jf63CFE' \
    --tags '1u0gmWIFkRQ2zoYV' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wpw7mby55ayrKvn6' \
    --body '[{"statCode": "g25lomunj16zhlqr"}, {"statCode": "aTdC2UYtd1iZccmG"}, {"statCode": "cixE9zojAF5P6sHx"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'jYpMeztABhfx5lDU' \
    --body '[{"inc": 0.8897613784118095, "statCode": "ftqSBSDQSjdt11I9"}, {"inc": 0.40049890555731305, "statCode": "WzTVE0aDfS7X4QAQ"}, {"inc": 0.3671888145140215, "statCode": "JnamJWCxGgx36qSk"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'FIACwXsoIIx4ppG2' \
    --body '[{"inc": 0.37255787593883527, "statCode": "2zw4y2zEd95tyHSw"}, {"inc": 0.6466788546332761, "statCode": "BdQhCVvlgbuA4pRr"}, {"inc": 0.42196069114827084, "statCode": "3ON5MJxwIe78MWCz"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'xtvslvElikkq0eGH' \
    --body '[{"statCode": "ij9lj3k6bOBOkQHv"}, {"statCode": "dhOvqJA5fKqeis0D"}, {"statCode": "wNiKH6Plg6PU4WjZ"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'UVVnjKGhUG6BGdS2' \
    --userId 'tfdDCeBe7TLa4oPV' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'JdAhyxRzTWMC00Fg' \
    --userId 'NmBZnG0l21RMzRpD' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'CDIEnU7ynCPfNZvO' \
    --userId 'SMK1He7F7wpmexYW' \
    --body '{"inc": 0.8378711068079179}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'OPf2MBwqGwYZHNgf' \
    --userId 'xS5vjTkp08cOOoKv' \
    --additionalKey 'SsTaRwk37J6poG25' \
    --body '{"additionalData": {"dbBl2twhgdBT6WKr": {}, "58fJP0ozvoM5qcIU": {}, "ZGJzZxWY3IAXdi9g": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '57' \
    --statCodes '1VAoV6tAbzjhtbL0' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '7ZnLjN7W5uGzIswe' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '19' \
    --name 'XqWY9DXpBCI8EJk4' \
    --offset '30' \
    --sortBy 'saUO2mW09LkGcZn1' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["pp7Po4MHzAnxkhAB", "MP9kB80JmK4LJ2TR", "f68szklp8VuH0yRi"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'RN77EazOs7u4G6tm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'w9d0wGQ0TPGcDtH6' \
    --userIds '2g2f3IoBqsiGGUVT' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.787011666133566, "statCode": "a8seTayC6Oc47NGw", "userId": "BP4MqY9P0P6kad0a"}, {"inc": 0.6556652626550671, "statCode": "YZt4vwawzQf7iFYC", "userId": "TEbXIWp3R6GCzKBK"}, {"inc": 0.5500070114939017, "statCode": "UN89sV7T3DL1PGxN", "userId": "4l8Fvo7WOWTahcab"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3896133583001121, "statCode": "HLgOIuOG39CBgkUZ", "userId": "JpBYiiUM6JPeoKlK"}, {"inc": 0.8200517710016018, "statCode": "wv4BFErq9n08kqlU", "userId": "BKZKRq1QFs74mbYj"}, {"inc": 0.7293729186663003, "statCode": "D5k3DFtZnvqeqrzh", "userId": "hF09mYxRxjeMww8V"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "qoZxzgdZUJjxoGFP", "userId": "gAYNyPvE5cG5vLSc"}, {"statCode": "o9cbymqQEDoXvewj", "userId": "XsoqAw2ainwHFfId"}, {"statCode": "n8enXVKk1Q8z27RL", "userId": "DKGR5KlVGXjktdYU"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["j3mOzJrTSdJps3NP", "4fDh0qOgS7kmLobT", "H8HjBowPrKqdoYjH"], "cycleOverrides": [{"cycleId": "l1fvQ27j0KP7tzoL", "maximum": 0.3323593761105935, "minimum": 0.6270537949570136}, {"cycleId": "0DxBku0yXKF1dl3g", "maximum": 0.2430727167542357, "minimum": 0.5571366896071047}, {"cycleId": "7lUOEFiZfpOHLs49", "maximum": 0.5110033739974635, "minimum": 0.7593207855730951}], "defaultValue": 0.39046101145705203, "description": "TgHXVv8ky2otW3DK", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.34597670003579517, "minimum": 0.3546233154777719, "name": "Euys7o5dDGouI6rd", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "QYXC7qMBoppiy6UV", "tags": ["66wU5G0fKJZJcA6X", "Ndr1AbC5QkYpVNsT", "d4XvXDE9V7ubgsf0"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'hnEKt3T3jsQeYO1y' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '65' \
    --sortBy '8lAoZ66WO7OnaNh2' \
    --statCodes '["30CT0HeC7ATXGPQP", "Pq8BcIPnoLtjDJMy", "jxdeUEyVNDN9AyDB"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '51' \
    --sortBy '1XRp2pXLUEmzNwnE' \
    --statCodes '["g1dtSprdelGvhHsG", "ZvEMMl24imNZI5u1", "qqlAJzgRasNq2JoY"]' \
    --tags '["WntCNufM30GgpGxW", "BVtlQdOJEJF1wXHG", "5Ith00iKYkaIiGVT"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'pWAjOmD1lr9dK7k6' \
    --statCodes '["EU1HR3YbPbXhHWAa", "3n2IhhVn6MSlkRZw", "59QYfSG975efBKfZ"]' \
    --tags '["Chpn3I7ZDglbO9t8", "x8HCPZGZnCcNMQr2", "1ItSbryPZ7Aebri1"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'ACpAtdGHxysZ3zpo' \
    --namespace $AB_NAMESPACE \
    --userId 'NvoAotdDvYLQGD73' \
    --limit '9' \
    --offset '7' \
    --sortBy '4MEv7rZc5Z9vzNpy' \
    --statCodes 'mixGL7xdOZouaphG' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'qIoSWMWoMHUkkapG' \
    --limit '72' \
    --offset '93' \
    --sortBy 'vU2jobeIL183qolB' \
    --statCodes 'nK7nK3KwVZlKQzUf' \
    --tags 'C16pmcSbLWcxKPyD' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'QMcE9L6qVlWNVS3j' \
    --body '[{"statCode": "Z59QOPdL4Nw1uDQB"}, {"statCode": "yYyMtFzIZQjbLmFA"}, {"statCode": "V0iTIoqVCwONc5p4"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'YwcIpDaT0BX2KTcA' \
    --additionalKey 'HWxXifsSpNHugvp5' \
    --statCodes '["ZwoGXlQeT2WCZQ3F", "WxoJxEI8p9M0hmkW", "bqCeEiIkpiyAZFYg"]' \
    --tags '["SsHE2Nz5v6vcwKtg", "dvvdY2EtHsMtZGLN", "xKzsQKWcSyW7SEDE"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'U4bIdI941stvqclo' \
    --body '[{"inc": 0.0476829086502395, "statCode": "czqwO1ugXqLRoHew"}, {"inc": 0.7525229952472584, "statCode": "Z7LRUhm8xHLlHRHM"}, {"inc": 0.6729407866816663, "statCode": "EANPTgToDFIeaSWD"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'eUTqNAri0fMVPRWA' \
    --body '[{"inc": 0.0019264838438494136, "statCode": "Z93llFqKMaSWar4a"}, {"inc": 0.5601139799069319, "statCode": "8uFIDcRIJbRYn1ow"}, {"inc": 0.31011972783341546, "statCode": "RKRrrbr0b3GDKNQC"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'p80j46quFz37hVv2' \
    --body '[{"statCode": "dgMugMfuUAsigFDJ"}, {"statCode": "yvhYqklYJpkXgI2s"}, {"statCode": "EQbtN2sbiawVvAuC"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'QFnwYgVTqgqTyRS9' \
    --userId 'rgtjTQzHud7940Le' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'tecbi8sYX1PvCd4w' \
    --userId 'lFW90c0gZaoQaZX8' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'QH8QmK0hAhjCLcBb' \
    --userId 'REDrQBF1oZc9ct8c' \
    --body '{"inc": 0.16889072867211963}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'qmLROO8mwSzYLw4p' \
    --userId 'HvYuSWJack3W2GbM' \
    --body '{"inc": 0.9564364141277801}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'RSTeeEXQKh9jp6TY' \
    --userId 'm57wUJLJn5SSjH3r' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"BmK2wTklVINabANX": {}, "CMCHEAAyXRnotH6u": {}, "9jIImOeFFIyHHyvg": {}}, "additionalKey": "hOO797xUw8iUqdkj", "requestId": "FO1TKhRxDWEGKc40", "statCode": "YH3VPao779wtBGrI", "updateStrategy": "MIN", "userId": "nC99HvHnkXwj9syg", "value": 0.19441257876105977}, {"additionalData": {"1537a3ecxadhTsUe": {}, "mFw3gTKpNJnbGraX": {}, "4TwXh4ZXTbLHswKk": {}}, "additionalKey": "81bvMNN6cvYMLE6X", "requestId": "mOGTKittvTnoOYew", "statCode": "X7LQ87wbULFyvKOP", "updateStrategy": "OVERRIDE", "userId": "NGMagn2yRBvK7V8h", "value": 0.4558131681585863}, {"additionalData": {"7fibupMjqrJ8yZHk": {}, "v49s6xa26hpVAFWn": {}, "DwFHtnkZcyKpwLe1": {}}, "additionalKey": "S8rGFVIcOaDtj8BZ", "requestId": "PZrLXbNXZ8py0RBD", "statCode": "z3LbHSc2GT2hHPUq", "updateStrategy": "MAX", "userId": "i9GjEwes39NmLgWz", "value": 0.14972151586457583}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'snXu05urNQtP8IyH' \
    --statCode 'dqJj0wemsibTPOgj' \
    --userIds '["hOY1NQhUd4fc7lEd", "HCBe7qVwe1zP944R", "guG1SfBgAksSwhQ9"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'gWBVGwuqeIibbjGV' \
    --additionalKey 'ccmEfiF9mAyin85j' \
    --statCodes '["Yy75Ffu8iCuFqiCe", "lsLroXPVjLaU1Qhy", "X2onCmMQsnJA9vhR"]' \
    --tags '["kPbTdLKa7HRVdNkR", "hslzfEvP3W3930CQ", "WlD1Esq7XEW0nNP5"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '9BRy6XyZ8c6vT0Fx' \
    --additionalKey 'ZqDhD8POqIYwUPQa' \
    --body '[{"additionalData": {"RP7o7XDYu4WfIORv": {}, "0rqdyFRE7tCibre2": {}, "onJt4r7dPXUPXJrK": {}}, "requestId": "GHStYm9Xm3COB3eg", "statCode": "lIabfeOn6Fxtjq1H", "updateStrategy": "INCREMENT", "value": 0.9212705160286018}, {"additionalData": {"GXzYpEIAdde8nB5q": {}, "NVUE6aWx2RejyXWd": {}, "siRS6Ys4vFVoy2sU": {}}, "requestId": "UFmmhljAiuSojgcG", "statCode": "vIRB3HKWiyfUtYxA", "updateStrategy": "OVERRIDE", "value": 0.34219100209245656}, {"additionalData": {"aSNEEJgqma9JKcoI": {}, "fYVzE0kaWHzdpobY": {}, "vjaO2JybsFS9uwl8": {}}, "requestId": "k9GQn5ljiStCNgFk", "statCode": "Beog5j1Sdij3TJmG", "updateStrategy": "MAX", "value": 0.004484297465678355}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId '1GhnvO0NXTjjMhJq' \
    --additionalKey 'dntNEzmbR93mz6KE' \
    --body '{"statCodes": ["9Wu1hSwBMQQXXDJ4", "EhaQcTLjDDIn8VY1", "ukCglq6l6jWcIthr"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'fkBtRxL3yYbcBFBv' \
    --additionalKey 'g5qGWD6Yk7KKe1bW' \
    --body '[{"additionalData": {"VbcIqLlNQAoLHS9R": {}, "NCcMHv2w9Mzj0zYa": {}, "lPePWIuQujproQk5": {}}, "statCode": "BB4gkEyj9zXXzxWe"}, {"additionalData": {"ZBqnWJokYjLfTt80": {}, "xxmbUkNNFMQXqj01": {}, "WHPIyoh5nLaCC5Pi": {}}, "statCode": "xAuBANTVfnz26q0G"}, {"additionalData": {"D4Gk6aj60W2LwXTh": {}, "DWzVeMeIYyEZkRfZ": {}, "faxIFhmU2akURbBF": {}}, "statCode": "Hp6OtvdDzjebuVqM"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'dE9XWaIgWSW5dN98' \
    --userId 'Ma2QMQSQkJ5hgVnP' \
    --additionalKey 'H590CLS78FkKB1pC' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'C4kBjAF9NyaaNvuD' \
    --userId '0x3rYJQ1hi1wjjXM' \
    --additionalKey '8cwDpyqk5SLXOVVc' \
    --body '{"additionalData": {"Qe1mYiWbVGizNfb6": {}, "v8QzsuyPQkYoMIMB": {}, "POnOiS1C2vod6qAV": {}}, "updateStrategy": "INCREMENT", "value": 0.2785346371798718}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"GmYpIOZCGHqFD6Iv": {}, "38pFmYmiNmF58l9G": {}, "2zHCFEvBXiRScrnO": {}}, "additionalKey": "rIPQG9BKMfMBdaX3", "requestId": "k9O8mG6DtJtwUZWc", "statCode": "RAW3EtBEvqt0iZZ2", "updateStrategy": "OVERRIDE", "userId": "9QKAyLGqGdg5a4Ar", "value": 0.1380982242836738}, {"additionalData": {"keWACbiQI1TPwoh3": {}, "NgXmG0heuycUWUwf": {}, "cactTfBeyPvI9O2e": {}}, "additionalKey": "idvrSdV5qlLZzhVv", "requestId": "PnsLpgW5ipcNNxct", "statCode": "GZfxvPYLc3Z834ex", "updateStrategy": "MIN", "userId": "ExxVIt6cHcFRrXZK", "value": 0.20737278796550018}, {"additionalData": {"Nx6WW4GxI081rtiP": {}, "whT58oYIdDcv6MtC": {}, "UyGI5R2m6ITdQ1cW": {}}, "additionalKey": "HfZ5DWWIZAZ5BdKo", "requestId": "g1drN4jxZTN3XaJt", "statCode": "Qlrr7y1swHbi6BEc", "updateStrategy": "OVERRIDE", "userId": "gNRqX5Px2psZtyAv", "value": 0.8830495656103182}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'qlmUywb8Rp2nLspy' \
    --additionalKey 'cHj9wMwV6OooODDt' \
    --statCodes '["rLuPQ9pU9kKUggNP", "2Oqe6e8ZNtpOJTvO", "Sm1c5Ac2bhZ0mZ9M"]' \
    --tags '["MQzTXz1kVdv360tg", "pfWIbsfVmoS2sAFQ", "aLjRydyH0rCTlR1d"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '1LEGMA8RCO7SE7jy' \
    --additionalKey 'FxG9lKdugRnffElK' \
    --body '[{"additionalData": {"jyc8rXVkCgfVWl2T": {}, "PCKg7cOpR4rMZgKf": {}, "9ZQ1KCOXNx3ALocS": {}}, "requestId": "bPQjBgO4EmHNdRhA", "statCode": "RX9tYEoyBZGhJH9S", "updateStrategy": "MIN", "value": 0.7483053098634989}, {"additionalData": {"6th6E5tFOFuXAVRg": {}, "MU0jivHoL4ZeVZVP": {}, "njial8hUJ4hkgNMw": {}}, "requestId": "qG4lYnRBBIVajIoS", "statCode": "X9iQLmi5tssPpF0a", "updateStrategy": "MAX", "value": 0.2714376802582187}, {"additionalData": {"ZwSeQaoRxBhmIsO7": {}, "JUmASrlU3dMM7DqG": {}, "soJaevWB0mCNerhR": {}}, "requestId": "VFMOLynoRON3Jmgy", "statCode": "RJ4k7zX1T7B7AQJL", "updateStrategy": "MIN", "value": 0.5810682534220037}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'MEL0hfX05oAavWaM' \
    --userId '6nVOjzal32L4b8FF' \
    --additionalKey '0HdlXMb4s5AVdIHN' \
    --body '{"additionalData": {"7CLpk7b8o5ngt74Q": {}, "jW4JfB79iNfZlsSk": {}, "oKMPgHUVkqnj2S2t": {}}, "updateStrategy": "OVERRIDE", "value": 0.1865556895262659}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE