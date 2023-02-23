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
echo "1..78"

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
    --body '{"maxSlotSize": 100, "maxSlots": 21}' \
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
    --userId '0AdS78E0' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'B4UBXczU' \
    --body '{"maxSlotSize": 50, "maxSlots": 16}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'o3EuQv2B' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'Gvuu9Jyq' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'e12yWkNi' \
    --userId 'ki4bg4YN' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'LdXv17qK' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'u8piJfDS' \
    --userId 'Fs0T0F6f' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["5TjxwkI6", "hSyVXnhd", "ucBOP6lc"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'C92AKnJb' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'zwZgBrkx' \
    --body '{"achievements": ["5XU1QEJR", "5HTNoZTP", "HKss1Ana"], "attributes": {"KDObT9C3": "VwL1stmp", "tT4YC8f8": "baXDOJRS", "iykRE7rb": "E2swTsHN"}, "avatarUrl": "QmzVU1Bk", "inventories": ["uYZogcCD", "KagN0N1F", "MNFHbR2f"], "label": "UfzS1Xmt", "profileName": "DXa6To6Y", "statistics": ["kljp5KzM", "krcAKs07", "zx1lF6f8"], "tags": ["dr6oWml7", "c1qxPpwr", "CYT27pUD"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'KBZqoNpL' \
    --userId 'bX688Gve' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '325hnBvy' \
    --userId 'D77kz2XY' \
    --body '{"achievements": ["bRIiM3iJ", "oc7Y0wVI", "HVu4HJKu"], "attributes": {"QvQy45uO": "XH3T2AWy", "dHhyInTu": "PklyVDG6", "we1pBYkH": "GvfmHeXX"}, "avatarUrl": "NiFK5Q0d", "inventories": ["aw3GDDCm", "nLWFoA75", "Qbp9NYTf"], "label": "fPcPvyKV", "profileName": "s1tfeXlS", "statistics": ["oglssc9N", "IJGQgDHU", "pTBkC9Z0"], "tags": ["BUvxIRyS", "mPO4mml0", "SwZsNdAZ"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gkkrcW5X' \
    --userId 'f42EBp6X' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'NjGjFmMD' \
    --namespace $AB_NAMESPACE \
    --profileId 'Q9ROjjor' \
    --userId 'AEBl9WeL' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '9paSZW3Q' \
    --namespace $AB_NAMESPACE \
    --profileId '2H2Zsw1y' \
    --userId 'm4mMV0bn' \
    --body '{"name": "psHsy3Wr", "value": "LLZLgclx"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'lMoYBoif' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'k64EUK0c' \
    --label '6PxYMDgl' \
    --tags '["Nwe3s8JV", "CtbbOjug", "RE2nItDY"]' \
    --checksum 'yVVO0P8K' \
    --customAttribute 'MPyPODFv' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'WO1E4vBU' \
    --userId 'S9OW44qu' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'L4kqByCX' \
    --userId 'nDKg0dC9' \
    --label 'hWstLB3t' \
    --tags '["mzqd3yAX", "JjqdGMfG", "CcRV1np8"]' \
    --checksum 'IOAT8ulD' \
    --customAttribute 'xW2OQTth' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '7vmi1euR' \
    --userId 'p5V7cLd4' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'Ou922YxR' \
    --userId 'u7Dta1Fj' \
    --body '{"customAttribute": "SF2FgaoT", "label": "K6mSw6NW", "tags": ["DufDUXKn", "AaRJItm1", "xAbwLS37"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '64' \
    --statCodes 'WSC5wMCW' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'rEsZGEDD' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'rQAxMGJ6' \
    --userIds 'Jif1v9Rm' \
    > test.out 2>&1
eval_tap $? 28 'BulkFetchStatItems' test.out

#- 29 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6611803946908449, "statCode": "S8pC7pu3", "userId": "YZT9teun"}, {"inc": 0.2421638758304998, "statCode": "SwXwvht2", "userId": "3kKQSj8n"}, {"inc": 0.3182428929588854, "statCode": "1X6LBCAs", "userId": "q0PCRfJe"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItem' test.out

#- 30 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3726398835643254, "statCode": "cBBVAdZP", "userId": "JLh7rB7x"}, {"inc": 0.23710955573483838, "statCode": "DcBeGtoi", "userId": "gW5jzBVV"}, {"inc": 0.6488597106399947, "statCode": "qq2tn4IL", "userId": "LZry5Sgg"}]' \
    > test.out 2>&1
eval_tap $? 30 'BulkIncUserStatItemValue' test.out

#- 31 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Ck5Ijn8e' \
    --userIds '["u8fXfCEy", "cnVRnjDi", "pTdVYaCe"]' \
    > test.out 2>&1
eval_tap $? 31 'BulkFetchOrDefaultStatItems' test.out

#- 32 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "MX0gdVZM", "userId": "hl5zxmBB"}, {"statCode": "pBMVJWnS", "userId": "WeGqxkdZ"}, {"statCode": "tocNuHXS", "userId": "P8yzELdI"}]' \
    > test.out 2>&1
eval_tap $? 32 'BulkResetUserStatItem' test.out

#- 33 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --limit '30' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 33 'GetStats' test.out

#- 34 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.861743052805422, "description": "Y4gTWzMp", "incrementOnly": true, "maximum": 0.9660828764629984, "minimum": 0.6308508430256926, "name": "rBd9h3aD", "setAsGlobal": false, "setBy": "SERVER", "statCode": "urrMKq6R", "tags": ["uGh6VdX5", "v0uCalQ8", "TL0eiQ5M"]}' \
    > test.out 2>&1
eval_tap $? 34 'CreateStat' test.out

#- 35 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'ExportStats' test.out

#- 36 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 36 'ImportStats' test.out

#- 37 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --limit '89' \
    --offset '94' \
    --keyword 'W4daiGSK' \
    > test.out 2>&1
eval_tap $? 37 'QueryStats' test.out

#- 38 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '5i4XaBmr' \
    > test.out 2>&1
eval_tap $? 38 'GetStat' test.out

#- 39 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'sGyi09kT' \
    > test.out 2>&1
eval_tap $? 39 'DeleteStat' test.out

#- 40 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '29Oq2iZu' \
    --body '{"defaultValue": 0.21723783441589894, "description": "uFL9jPTE", "name": "bMU04dvy", "tags": ["WXgTQpGI", "CC9O21GS", "pjAJyTDN"]}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateStat' test.out

#- 41 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FhzwydjS' \
    > test.out 2>&1
eval_tap $? 41 'DeleteTiedStat' test.out

#- 42 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'gPdVdeqw' \
    --limit '52' \
    --offset '52' \
    --sortBy '8WNpIVY6' \
    --statCodes 'jpjk16Hj' \
    --tags 'dPzv2wS2' \
    > test.out 2>&1
eval_tap $? 42 'GetUserStatItems' test.out

#- 43 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'bm7SwFm2' \
    --body '[{"statCode": "Gzx1JGf3"}, {"statCode": "rqucypjb"}, {"statCode": "Qk6GKOoQ"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkCreateUserStatItems' test.out

#- 44 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Tm5i8wWk' \
    --body '[{"inc": 0.07080583011906827, "statCode": "1s4xxY6S"}, {"inc": 0.2272763439396216, "statCode": "lvCC4TvS"}, {"inc": 0.3132938755943664, "statCode": "YcmHXiba"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItem1' test.out

#- 45 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'L2ICn0ii' \
    --body '[{"inc": 0.004483035994538698, "statCode": "XIRlDysK"}, {"inc": 0.7547244781826097, "statCode": "7TDmM9WC"}, {"inc": 0.7999506535785466, "statCode": "2Vq19heT"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkIncUserStatItemValue1' test.out

#- 46 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'xUv29MuI' \
    --body '[{"statCode": "DUoCTNP3"}, {"statCode": "JH8CKXUm"}, {"statCode": "8cfmXSTf"}]' \
    > test.out 2>&1
eval_tap $? 46 'BulkResetUserStatItem1' test.out

#- 47 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'KkeeNl0O' \
    --userId 'yjyoYaXq' \
    > test.out 2>&1
eval_tap $? 47 'CreateUserStatItem' test.out

#- 48 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '9h4umiwg' \
    --userId 'Y9T7r1gr' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserStatItems' test.out

#- 49 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'fmwQntZm' \
    --userId 'pDePnD2n' \
    --body '{"inc": 0.27232845154170215}' \
    > test.out 2>&1
eval_tap $? 49 'IncUserStatItemValue' test.out

#- 50 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'JIqjUNsm' \
    --userId 'F9kI3EFd' \
    --additionalKey 'iBkUeIpm' \
    --body '{"additionalData": {"4eJGWHlr": {}, "CUx2mlxd": {}, "ZT0LfPdx": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'ResetUserStatItemValue' test.out

#- 51 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '75' \
    --statCodes '4z7OE7t7' \
    > test.out 2>&1
eval_tap $? 51 'GetGlobalStatItems1' test.out

#- 52 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'yvOLB1eN' \
    > test.out 2>&1
eval_tap $? 52 'GetGlobalStatItemByStatCode1' test.out

#- 53 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'jZSxE6vv' \
    --userIds 'LhqiRCSw' \
    > test.out 2>&1
eval_tap $? 53 'BulkFetchStatItems1' test.out

#- 54 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.11489413693378892, "statCode": "a71cqQDY", "userId": "N3jJSVcp"}, {"inc": 0.0986232062993384, "statCode": "SK35MIYa", "userId": "ukdkSHY5"}, {"inc": 0.3440737894468745, "statCode": "dqiBe7BT", "userId": "cfTd2y2o"}]' \
    > test.out 2>&1
eval_tap $? 54 'PublicBulkIncUserStatItem' test.out

#- 55 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.03396859014681963, "statCode": "6gu3rZ1v", "userId": "mVeg2Zw8"}, {"inc": 0.33271053943164164, "statCode": "1BblOvbS", "userId": "igZcV7jc"}, {"inc": 0.8003012877759574, "statCode": "mVAp5xcC", "userId": "2dUOBvF7"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkIncUserStatItemValue' test.out

#- 56 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "af7JkhLV", "userId": "2rrd5cCh"}, {"statCode": "DVvf3RWT", "userId": "vsKIo3WX"}, {"statCode": "eFyuW9ax", "userId": "bMYFC99F"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem2' test.out

#- 57 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.6170736433367213, "description": "5g9pHp6x", "incrementOnly": false, "maximum": 0.38428413448704035, "minimum": 0.180377391815146, "name": "lgvBhyG4", "setAsGlobal": true, "setBy": "SERVER", "statCode": "W2AyQDWH", "tags": ["0MD72dWa", "6QWJtzuT", "C5xOyFQM"]}' \
    > test.out 2>&1
eval_tap $? 57 'CreateStat1' test.out

#- 58 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'GW0bOf4B' \
    --limit '23' \
    --offset '58' \
    --sortBy 'U1G03CtP' \
    --statCodes 'k3IjRcho' \
    --tags '29h3qNBx' \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryUserStatItems' test.out

#- 59 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3eQ1C5y0' \
    --body '[{"statCode": "ZbIcZFoF"}, {"statCode": "kYSntMyY"}, {"statCode": "6coEWapX"}]' \
    > test.out 2>&1
eval_tap $? 59 'PublicBulkCreateUserStatItems' test.out

#- 60 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'pXtZ9h8A' \
    --statCodes '["FD7ZJRqg", "C37vDPS0", "SV3VDVqz"]' \
    --tags '["YxSGB101", "XkndADIF", "jaFXvz0i"]' \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryUserStatItems1' test.out

#- 61 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'zeBfloAO' \
    --body '[{"inc": 0.683813170486012, "statCode": "gqwtesZC"}, {"inc": 0.7864952487507717, "statCode": "Ipw6kTCk"}, {"inc": 0.5357738228831936, "statCode": "JbO0s8BR"}]' \
    > test.out 2>&1
eval_tap $? 61 'PublicBulkIncUserStatItem1' test.out

#- 62 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '4Um6e2MN' \
    --body '[{"inc": 0.055116923947245766, "statCode": "qFtXmztt"}, {"inc": 0.47612254894693107, "statCode": "Yt8AJo25"}, {"inc": 0.42646567128083623, "statCode": "7BLHKmux"}]' \
    > test.out 2>&1
eval_tap $? 62 'BulkIncUserStatItemValue2' test.out

#- 63 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'D2sk7Ntm' \
    --body '[{"statCode": "HOH55NBz"}, {"statCode": "sl79QPIh"}, {"statCode": "GAP2LZyh"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkResetUserStatItem3' test.out

#- 64 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '5DaORWps' \
    --userId 'KK1rMmvn' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserStatItem' test.out

#- 65 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'klXUQBWV' \
    --userId 'xU5qwnkm' \
    > test.out 2>&1
eval_tap $? 65 'DeleteUserStatItems1' test.out

#- 66 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'uThAjTSm' \
    --userId 'FlYpeodZ' \
    --body '{"inc": 0.8334307569137287}' \
    > test.out 2>&1
eval_tap $? 66 'PublicIncUserStatItem' test.out

#- 67 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Oy5dB6fg' \
    --userId 'jtblDBy1' \
    --body '{"inc": 0.8564372933139441}' \
    > test.out 2>&1
eval_tap $? 67 'PublicIncUserStatItemValue' test.out

#- 68 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '7GE46GZC' \
    --userId 'hUW0I3rm' \
    > test.out 2>&1
eval_tap $? 68 'ResetUserStatItemValue1' test.out

#- 69 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"rivkREKW": {}, "rUpZqTvm": {}, "LWYedCnM": {}}, "additionalKey": "bOdy2TLk", "statCode": "8sBadecu", "updateStrategy": "MIN", "userId": "oMHG94Qn", "value": 0.6021594710536856}, {"additionalData": {"lqCDW7Ur": {}, "mYOlluiG": {}, "hXOqIfvk": {}}, "additionalKey": "oQemqSVD", "statCode": "td5ft1Ec", "updateStrategy": "MIN", "userId": "BkEr0yVC", "value": 0.9754851970473709}, {"additionalData": {"0yN2W1MJ": {}, "nhVma5DS": {}, "UzOVKxtz": {}}, "additionalKey": "LLTuc0NT", "statCode": "ZsPlvjB8", "updateStrategy": "OVERRIDE", "userId": "lYktYO57", "value": 0.2910869567653648}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkUpdateUserStatItemV2' test.out

#- 70 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '7RGEipL4' \
    --statCode 'U2gtluhv' \
    --userIds '["bYuR5tTD", "CZ1bNoyz", "ug6iQqhZ"]' \
    > test.out 2>&1
eval_tap $? 70 'BulkFetchOrDefaultStatItems1' test.out

#- 71 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'n2ANBO2N' \
    --additionalKey 'Y4jX2y2X' \
    --body '[{"additionalData": {"T3DRCUUo": {}, "TrNxZHQ6": {}, "rIXsIOMW": {}}, "statCode": "NKjdEy0j", "updateStrategy": "INCREMENT", "value": 0.04992796309663128}, {"additionalData": {"3bj7fV7j": {}, "iYJ8mc5p": {}, "JyxBiSPX": {}}, "statCode": "RPV7ChHt", "updateStrategy": "MIN", "value": 0.3219352890546713}, {"additionalData": {"Ad09Posd": {}, "vBP0EcZY": {}, "1Tnzt0Ir": {}}, "statCode": "Xh65MZZJ", "updateStrategy": "INCREMENT", "value": 0.5742407154667739}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem' test.out

#- 72 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'q9xkerIa' \
    --additionalKey '7mD4V9IB' \
    --body '[{"additionalData": {"AVVZ3aA9": {}, "tdrKCTZi": {}, "xoK5zylW": {}}, "statCode": "ElrhUspE"}, {"additionalData": {"XV19PtU3": {}, "uSSWGxON": {}, "yACFrJRJ": {}}, "statCode": "jWfucMkj"}, {"additionalData": {"bcRj7U4V": {}, "UfOrq5NU": {}, "sOCNK0m5": {}}, "statCode": "7UnZktTf"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItemValues' test.out

#- 73 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'grZW6ga6' \
    --userId 'piNKKReP' \
    --additionalKey 'Hqwlt7yl' \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems2' test.out

#- 74 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'HDispF4L' \
    --userId 'pRekk6jy' \
    --additionalKey 'CLTMJTB3' \
    --body '{"additionalData": {"GREuhv0R": {}, "SV2BEYLe": {}, "2K5L3fNg": {}}, "updateStrategy": "INCREMENT", "value": 0.694511402817191}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue' test.out

#- 75 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ViifhH1N": {}, "2DlPELC4": {}, "ETMGJmdQ": {}}, "additionalKey": "PMFWFxGQ", "statCode": "NUSMDLDQ", "updateStrategy": "OVERRIDE", "userId": "s6faKT9a", "value": 0.7130397741974193}, {"additionalData": {"qVPzPWyk": {}, "0xh1ozKu": {}, "0qyr6f0f": {}}, "additionalKey": "yfW8KStV", "statCode": "ixHD83PH", "updateStrategy": "MIN", "userId": "oNgKjCWz", "value": 0.8730294922874284}, {"additionalData": {"ujpyA74L": {}, "Z3Agxq1m": {}, "ArkPjbMP": {}}, "additionalKey": "OJGmxCQZ", "statCode": "LMVs4NgC", "updateStrategy": "OVERRIDE", "userId": "kmIL12kq", "value": 0.19530246359576342}]' \
    > test.out 2>&1
eval_tap $? 75 'BulkUpdateUserStatItem1' test.out

#- 76 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'edyCmn8h' \
    --additionalKey 'veeBoKs8' \
    --statCodes '["Bt91SBf5", "SWnc8N1A", "d4DYv0ps"]' \
    --tags '["rUVFIiTG", "CQe2ay35", "nJ90NWqZ"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems2' test.out

#- 77 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'AKrkwn2R' \
    --additionalKey '6XxdqEle' \
    --body '[{"additionalData": {"hiKBv7Gk": {}, "og1j8ukR": {}, "RYefCvpL": {}}, "statCode": "ZqyZtlzA", "updateStrategy": "INCREMENT", "value": 0.35255149278539777}, {"additionalData": {"5LSVH5b7": {}, "DTZ3B10C": {}, "h6hP0XD0": {}}, "statCode": "TnV79CYG", "updateStrategy": "MAX", "value": 0.7134047806891161}, {"additionalData": {"pp3F61OO": {}, "zL76MkH0": {}, "8E4kBbFI": {}}, "statCode": "USPkLoUL", "updateStrategy": "MAX", "value": 0.9101387466334732}]' \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItem2' test.out

#- 78 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'u12CJZsR' \
    --userId 'Blopd6Ko' \
    --additionalKey 'ukfArDF3' \
    --body '{"additionalData": {"CcZqzF5m": {}, "Ft7zudRq": {}, "p1AEHv6k": {}}, "updateStrategy": "OVERRIDE", "value": 0.9849030831341973}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE