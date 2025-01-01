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
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'WzyxID986tkEfiyZ' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'tGNi8SVXD8Z7jf23' \
    --userId 'QKEPk3zpwbJK3oEc' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["GtO2QF8iQd1HAXGO", "eikdaQ876zjwU7HV", "IeWTRTcYAEkgGpBL"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'nfmYQn590QRojSrJ' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'KnjnfpNTX2mnAcfm' \
    --body '{"achievements": ["5uhl4tZtOES2d8B6", "QjiL6OqRsMQrjY43", "6RztEk5U0ElJ6pGn"], "attributes": {"E6JY76Bxtboz8wOL": "8s0oRc3e7E8XtQ84", "wYhQhlXZGwK3YGln": "xCzjlyXng7XKajkg", "RgVNW66AkMdKAmWn": "9ioloUeOq0F8sN9e"}, "avatarUrl": "Wt3FBri5caXQiruY", "inventories": ["qx0YhOY3b5lMXMQM", "oN9ZBLn5rmqzokdU", "moag7wFLpFBBdCkD"], "label": "eOWr8ywvHzvmQIrG", "profileName": "niQ0Lb3EAY7ZSVGG", "statistics": ["uzsg7UKO4yn84qZ1", "HXmnmvCWVmfA9iWp", "aXdmjdm3KSifGnK1"], "tags": ["60HvIm43n7RQ8Nze", "C1WrqERQ163fQYxD", "74o5ZKDm3NFd8sRZ"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'lbotCan4JN1QJAzq' \
    --userId 'jIJiStCeApk5EqbV' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'abiSOaUr5IVHPhQ5' \
    --userId 'tujBeYMEFzNOv8DZ' \
    --body '{"achievements": ["3ElXqhA37yF2QYc1", "3Bm8XQ44ODPNlK1Z", "TK2IumqK1b3r8z66"], "attributes": {"I2RmGERBUc5f1E1u": "UWQE32TQSeDVIQJe", "hf69YsTYnGl3gxEZ": "mUwYROvFeKRlPHZc", "B5B4c92TgOJHw0r8": "kH3YjM3k36YQ5EBs"}, "avatarUrl": "WS39cuFsHqw2sBNu", "inventories": ["B8OILo1PFxnKbEij", "mjesWbMicvGwJFjC", "izbLyjJ0nbHL6ig8"], "label": "VbOxCmThgGuDM6JD", "profileName": "txRDyRb1uHzq7zs3", "statistics": ["zM76xpPsnrF4EDiB", "k8OPHhsXhOwzRqzk", "qvj6o43BVqDfI9r3"], "tags": ["hGaoyi1KYQinHM86", "Pn3G4YMviDPL9Jmi", "F9YKN8sSucswZjAp"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'SGqhTFMV6xNNYXOm' \
    --userId '8AISxmJ7bMveElnl' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'o3Ss6pKLroJvHDlQ' \
    --namespace $AB_NAMESPACE \
    --profileId '6vnGBzbTggsAvKPC' \
    --userId 'Eitwyji9eWG9GPub' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'qFpSwctEjW7Hvg4B' \
    --namespace $AB_NAMESPACE \
    --profileId 'KyZCjYxLqEv9dut2' \
    --userId 'V8g1pDrQcvWnHJTx' \
    --body '{"name": "mehVx9UvnYlA4ul3", "value": "c6VRI41CgavwxtZQ"}' \
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
    --limit '33' \
    --offset '77' \
    --statCodes 'qL8ucfhj7zohsM8t' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '2kPtIPynVWOWGYGB' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '17' \
    --name 'sfwEGMpBJF6SPuLT' \
    --offset '12' \
    --sortBy 'RWMQDyZlb0VdIBj0' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "5z72qNeID3c7YLDo", "end": "1995-08-07T00:00:00Z", "id": "VruFBuMGYQZLr3vS", "name": "NWlD4yexTNhu2PWj", "resetDate": 52, "resetDay": 68, "resetMonth": 88, "resetTime": "d7FnmfXxbgd84pVU", "seasonPeriod": 78, "start": "1971-07-31T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["SBn3mhKZqMI6fRfd", "T62S89wWoEzDNMMm", "MOAaEb2Jt1OEL8Sw"]}' \
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
    --cycleId 'GKyJtbt69lZtHw37' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'XUJDLnCMIskVPNsT' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "j4VbuzJZEJ8nEIZz", "end": "1994-09-22T00:00:00Z", "name": "WCQMee192VJD1M5d", "resetDate": 17, "resetDay": 77, "resetMonth": 18, "resetTime": "AES4FEMJBeJ6vkul", "seasonPeriod": 77, "start": "1998-01-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'dyk2FqzNrzyAznpu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'subahsTYrc3khLue' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["ETy1SYbxTp3lOcin", "7EvagVCfLjj0ma3I", "hmyISBan0fM9GNGc"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'zc5qE6PKaGoDRuQJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'nzX90zeal3fjLJQC' \
    --userIds '1BWsdGGrvckwFkYY' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9580187499319842, "statCode": "ZcWo6OUBFdKmV5hH", "userId": "c9cQx4WJrfzaqZQm"}, {"inc": 0.8496723028420456, "statCode": "Pp3Jek3qiLr6AJYG", "userId": "sg17CHgTy52r6YvK"}, {"inc": 0.785266151470626, "statCode": "rE8MUROdejOdzQZ8", "userId": "2RnX3fHV6JRU3vRD"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9720932395757308, "statCode": "2JYtw5vRKLQBxZev", "userId": "T8miRFFhYfT6Me1t"}, {"inc": 0.9721093532370344, "statCode": "27llW4OIvv4CMEaR", "userId": "vBXdw8Xe2LBX92PC"}, {"inc": 0.25319520752943225, "statCode": "zCXUcn5X45Ou82W1", "userId": "DBUuow7y63mqbZah"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'LBPMLO5zsCJF2Au7' \
    --userIds '["MHm7wNnJTh2RYy6w", "VSQqDCR5HTvO2UW2", "ZabYJf3e6cedBoa4"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Tx6QTHPEMdUqmcF9", "userId": "Ff2Sm2WQUVLARpec"}, {"statCode": "350VvUkjGIPCHoDs", "userId": "MPXrVLR8idNHAqva"}, {"statCode": "ghl5pr6pLRljxBW7", "userId": "3b7lQwt8Vi0hJEl1"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'yJDN8m7liy0yLzQ6' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '98' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["tZAMQsazxXC2mYxK", "QLqS7dSosrbwdZGa", "3IlljanGXTukyTHO"], "cycleOverrides": [{"cycleId": "h1L3c7lgtn6AtZQZ", "maximum": 0.7660790975079892, "minimum": 0.7524696181557377}, {"cycleId": "ubJFGqVyy5SVoMVo", "maximum": 0.36344983356785365, "minimum": 0.22494386218879414}, {"cycleId": "N9t1fvh5jSut3SyP", "maximum": 0.6935519722259346, "minimum": 0.2639631755145847}], "defaultValue": 0.9514212601466979, "description": "JUtaovfk7J6Adsln", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.6795672190502798, "minimum": 0.2945495621503257, "name": "GKyrYlQ8BuBmUPdC", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "rgtcku8H3igjgzEP", "tags": ["EHaP4T9uI7q0wPM7", "ax2yyr40XVZBMS5j", "4i1F4C1OyY6ydktq"], "visibility": "SERVERONLY"}' \
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
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '21' \
    --offset '72' \
    --keyword 'nFPrCkoP94PB2YSs' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'LGe8RlXuoPnAt74E' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'CUUDxWjqDam0gZKo' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Vp1Ik0Czdl6u5YQI' \
    --body '{"cycleIds": ["WgmSM743YcludAvt", "l7xw2sLYiIF0x246", "16a9BTnde7eczWJ8"], "cycleOverrides": [{"cycleId": "brqgrbhcwD5s9TzB", "maximum": 0.34417098973280913, "minimum": 0.17389215446378492}, {"cycleId": "YIzivhvpKIia63s9", "maximum": 0.42005999308691366, "minimum": 0.9625106888863433}, {"cycleId": "8sHjrFS1FLeumx4u", "maximum": 0.07365760808598276, "minimum": 0.8527909059739425}], "defaultValue": 0.27207805840840593, "description": "OuNapgeCQjG8wirg", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "7H6cZ3iAxnE9hbvI", "tags": ["tyVoZpj2TJtuXhCQ", "QEQCCqQpghCn1qKZ", "q5dNrq47CZtN7FGh"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ua6CsO4OJiu7VNom' \
    --limit '46' \
    --offset '68' \
    --sortBy 'LPmmDakNbLeJYbUP' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'izbPGJBZCvYeteYE' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'uP4i9erPxsGqE6EO' \
    --namespace $AB_NAMESPACE \
    --userId '3kN8A2PsIXK80zR4' \
    --isPublic 'false' \
    --limit '43' \
    --offset '66' \
    --sortBy 'akJO2wuIkVPgxqRJ' \
    --statCodes 'k5uiC1LRcBBPiHcA' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '06SzgdNor7kjtLey' \
    --isPublic 'false' \
    --limit '5' \
    --offset '85' \
    --sortBy 'lUI9fJUy5QM2JeIP' \
    --statCodes 'Nhw2fLKVlgjCIdGh' \
    --tags 'IkePa12dwhpSvJhr' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'mkkMWGtfihItgYBW' \
    --body '[{"statCode": "gSXmiAa9eJCk4CBQ"}, {"statCode": "qIgpWxwbfAm0tatG"}, {"statCode": "ncvPawmr6dCBhqh6"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Lq4EbzXEmm2Imdlh' \
    --body '[{"inc": 0.5893889808679944, "statCode": "pGQZBEjV6NoyTeNY"}, {"inc": 0.10958221727193906, "statCode": "0Z9Z8iE9lTaTMnqd"}, {"inc": 0.16055956251940617, "statCode": "OHmVNoG4BnV113Yt"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'o62KmKxDc4GljFBZ' \
    --body '[{"inc": 0.02424918195139103, "statCode": "oQJTTOGQ4n0sYr4P"}, {"inc": 0.4480300864077563, "statCode": "8fCp2gzuuEwF3Vu8"}, {"inc": 0.3126637148540147, "statCode": "L6JAuxkKPUTAeYLr"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'k9dyUMj5UZwn9mFE' \
    --body '[{"statCode": "LSinQdArCgH5RgsJ"}, {"statCode": "AyTEPPqbIZ07ygaE"}, {"statCode": "UtkzpbkhNVZUb0tk"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'YHbP8ZSVP2f1EsJz' \
    --userId 'qsnpkgcPnM6pNmq5' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'guXcaabImiOcXjtV' \
    --userId 'P0naX0IpGRuS42zQ' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'bQPD83BQMi108ve8' \
    --userId 'GNPEkaD1pPBlOB97' \
    --body '{"inc": 0.37328712369045225}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '2COeFsV1FvNr88JC' \
    --userId 'seGf5RE9SbHIkkkw' \
    --additionalKey 'wiJCUgOJ6flliltZ' \
    --body '{"additionalData": {"I1YqIdnERp3TlS7s": {}, "B5H0dpwWKNi9xw69": {}, "CX2lxsGDLwuO2WdO": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '18' \
    --statCodes 'JaDhjRnDWpTapSgq' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'fkyl0Q40tF6IETdh' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '73' \
    --name 'Vv8xDyYEp3ywS4H5' \
    --offset '49' \
    --sortBy 'ZwuEqBYXCCu1zhwU' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Zr16ncanjpoZFS9w", "rteK2xcmeuReGFaR", "wZzho7RpHLtSjq04"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'VVEsA0fvubw0ZWIf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'vnv4HG7ByIPFiE0g' \
    --userIds 'bGVHMAQ0TewvamLm' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7639007898463588, "statCode": "Jf8nIKBULwX2IOkb", "userId": "6MCUPDyZ0AtpXLsu"}, {"inc": 0.5887655562985871, "statCode": "eOCTdHRq7MTSJJAD", "userId": "JtqWVKTWTDOiFzt1"}, {"inc": 0.17038286748237474, "statCode": "lUHaTXeIjiwA964r", "userId": "T6OtRq4ywOZb2ZgE"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7273482159020573, "statCode": "y1wTxRpyd3DuOtAY", "userId": "I1kPtdYuXecJCemv"}, {"inc": 0.7743609957139694, "statCode": "ksJUB0rhLXffoOTF", "userId": "Vrb89Llw1DiZUygT"}, {"inc": 0.83179984753923, "statCode": "2XvXp4SZZ2ojEdrc", "userId": "hUtumYqB64vPFCFv"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "D08uT72M1jBcuU7A", "userId": "j6PzDVttDq9z2xma"}, {"statCode": "AEdwX8EeQG35RuaX", "userId": "zalozMJ8PVs8GCNr"}, {"statCode": "SV3zXMUsxYxnQbm7", "userId": "tfEK6tzilYDjiGoL"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["AbSJlllk4glv0MDt", "aiT6njh08AuGI2vI", "ywtYkq2lS1ZYWRBI"], "cycleOverrides": [{"cycleId": "alzrUC27oAxzMd0x", "maximum": 0.8612848185792792, "minimum": 0.6143876894141449}, {"cycleId": "QMsNGrvksjGPKXFH", "maximum": 0.23251107010527727, "minimum": 0.8869556940714136}, {"cycleId": "0ibbt2wTcjkQsGfr", "maximum": 0.7595513779776208, "minimum": 0.7008070437684243}], "defaultValue": 0.07671650388754414, "description": "VJb1wYZp34HOmHM8", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.7461586226642052, "minimum": 0.24407986153086436, "name": "Vyo8Ew9waZe3AqYw", "setAsGlobal": true, "setBy": "SERVER", "statCode": "2Bc9NZ0yaFc2PbuX", "tags": ["RHKe9NyJNlhv335d", "nYdu2087E14AOixY", "0LCeRQwFsH2djvjh"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'HyPioqZXlXiIAH6W' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '5' \
    --sortBy '5sVoPGilyLNAHWto' \
    --statCodes '["K6Dk6Q2CRkdPzVjP", "WTjNceX3loQQ1h4N", "CizYOS0CoHGcwcJj"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '62' \
    --sortBy 'Qi4aRgvAK166BrTF' \
    --statCodes '["MKKqFlgSLaLOjU9R", "bvCz9kDbWyAa63s0", "EJfBfvAWH9Q1tV8F"]' \
    --tags '["LsNQrQoh4b6f99m0", "NkruJIRWpPRHHwtz", "MEtqVO12pu8xZs6Z"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'DgqMdeKTtQbac4I7' \
    --statCodes '["4at5sXN1OTurgxmu", "cAK4slwZG4aEWIeQ", "t0qZMNneO57Ac7mI"]' \
    --tags '["EPr62zkVYKWQlymG", "MJxqJ4yqGRmmh0VL", "phl48mOxb6xv5pYM"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'gdR9PJNFa9911gQ5' \
    --namespace $AB_NAMESPACE \
    --userId '6rtXJkoeWgOkMlpv' \
    --limit '85' \
    --offset '36' \
    --sortBy 'VGYcLW5Qm3FYtB4B' \
    --statCodes 'HXdMwgXrpCFWCqdw' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '237E2thM8TBgqTZT' \
    --limit '100' \
    --offset '50' \
    --sortBy 'dxT6vuBVfMIcIJvG' \
    --statCodes 's6VRK9zCWnsfd9Fu' \
    --tags '77mVCjFkT2Vg8aK9' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wClkJ4xqrWNlLDa1' \
    --body '[{"statCode": "SJlr0UdlNM6XnKdc"}, {"statCode": "GFlMarvFWBZIvVIB"}, {"statCode": "emTMMiKhGapMxZo7"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'K4xf0pJckRNzRJ7f' \
    --additionalKey 'EbUQvQ2zSg93fKOQ' \
    --statCodes '["JTWFjMs6WmoENzqi", "fyNLIeS2RWaUKTrz", "zHa7RewgTizLyR6g"]' \
    --tags '["vvfl20i5ZwMqkmW0", "2MBTM3lRpla16aSf", "X9sU4J5we8MVM0XT"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ih4FZVO6b4O7Ymis' \
    --body '[{"inc": 0.6169291242841921, "statCode": "V5CtgI5MN13z2PpY"}, {"inc": 0.7909513930785383, "statCode": "mDHVb8XqerD0ERok"}, {"inc": 0.6250800433252647, "statCode": "VbJC2dHJlCOOzfdJ"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'hUXdIp2zarlhsoA8' \
    --body '[{"inc": 0.36536327439510063, "statCode": "VbHjhYAJp167luwz"}, {"inc": 0.7972636810829655, "statCode": "lEIDjz9n40HMgrtZ"}, {"inc": 0.572358884348415, "statCode": "jKKOTwfyTvwnaTtV"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'gA0YSjqaqNzDR9Z8' \
    --body '[{"statCode": "X0RUgmh4wTXScQ1Y"}, {"statCode": "ioHiHMOU2bLdEk9a"}, {"statCode": "L469t2TbHdMgH8m3"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'irmbmirc0BJ05fBp' \
    --userId 'OsJYzzBdWbmWDH7O' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ecLF6XHJ0M6IR3u6' \
    --userId 'JmnJ7beGdBako4x8' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 't6BGIn5QgsnpTl39' \
    --userId 'K1FgAsWNwWXyHhcS' \
    --body '{"inc": 0.004647963551214662}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'mdhIbFetENbNd7oZ' \
    --userId 'UvcGF1MCutDRS7bc' \
    --body '{"inc": 0.12409057477291063}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '1h7XdX8Ovli5z07l' \
    --userId 'WnjTnFBSUfVjANFA' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ka50mFm1AiSdXKD3": {}, "04dmnqRfCcCGJSGl": {}, "Sr7b8IBNOoFxaJkX": {}}, "additionalKey": "m1LoUgo8oL0xxunH", "statCode": "CQORYCr436akENc6", "updateStrategy": "INCREMENT", "userId": "eTs6KIAhIytjG6h8", "value": 0.542904093226016}, {"additionalData": {"870lqtSsMQ4cmtiI": {}, "VDylhHxUFJMB0plz": {}, "0ZSK5RrtJVnJf1jw": {}}, "additionalKey": "Cu4wEdsNo7NFpzvk", "statCode": "ZDK3LUwgAx0cnlVy", "updateStrategy": "MIN", "userId": "27wPKWm5DRet9uno", "value": 0.3488894293370054}, {"additionalData": {"gEvc0P15oem06gFl": {}, "riRiQs1l6eIuwg3z": {}, "LpFo2WOnAd0kqCXS": {}}, "additionalKey": "aXM4VZQqKNBjGQMO", "statCode": "311f5cWQBFtOmwMr", "updateStrategy": "OVERRIDE", "userId": "7OgszzQ3FNDbxJiQ", "value": 0.7136416595053579}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'e7sYB2lNko0jp2ZU' \
    --statCode 'gwl0wo9Gxui7zS7I' \
    --userIds '["84G1yTSUb7NPkECo", "dD0ZxMYXiHVV0XVK", "etvJB52bU1FNs6Kw"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '0wCJbvgJDDO00c8K' \
    --additionalKey 'oxBkSAJHpwnHXJSa' \
    --statCodes '["lRd6srwSx5bSEwjq", "lKujd7vEJJuWotgd", "pqMaqhD36sNRU6zF"]' \
    --tags '["Ic6Rn5JhFfEiFOqG", "WTQEFQa207a0f1W2", "c3lseUS7gFDqKGy1"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'UJJIRr6pEwpT03Hr' \
    --additionalKey 'aCXXYXTdjKdy97sP' \
    --body '[{"additionalData": {"IbMmIrFcFKMT6uXA": {}, "Tbtip1fvAY4ycZRr": {}, "A99MY9BNU69O1D8C": {}}, "statCode": "uxc09l8c0jHCvGZj", "updateStrategy": "MIN", "value": 0.5765369700198298}, {"additionalData": {"ogsFPyUEd1hvbmgw": {}, "gbrpokuFQjIYO7ZQ": {}, "0ne5DuUU9AomizxE": {}}, "statCode": "4J7HfHBOJSm09V8n", "updateStrategy": "OVERRIDE", "value": 0.32213980472216097}, {"additionalData": {"cV1ZCWZHKkgIJEBA": {}, "ZkNddgcXhPrbJbk3": {}, "Id2T1pOK6XTcUddh": {}}, "statCode": "KMVLYwxqsXlwjqpQ", "updateStrategy": "OVERRIDE", "value": 0.9849593999540613}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId '4AMdV7G1Hx0duF0N' \
    --additionalKey 'wbsF3NfpsGhjz5Mk' \
    --body '{"statCodes": ["1EggwoiZvk183yDQ", "S5WFOFpRTGT2iMFe", "nYTMmwAjo5S2MqNo"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '0irs3kMLyt241T40' \
    --additionalKey 'vEQWPfXUw5CW3gEv' \
    --body '[{"additionalData": {"6nB0njDudDKolM4t": {}, "to1kqTlFRAb7gElb": {}, "fPQRNDmMCgylcXkW": {}}, "statCode": "Qq9NP37esAlrTKbR"}, {"additionalData": {"WgfEbgkMC8Cuc9WP": {}, "eQ5tZV0Db0weivfr": {}, "fp7JgvsNFPUvjiuP": {}}, "statCode": "VaOVAGVTYFZLU6ci"}, {"additionalData": {"5oWlQSwUXMDpdsWD": {}, "wwrsQk9wBkvnNRWj": {}, "5ZCigGyE9zTh6mUj": {}}, "statCode": "KgZlNaR11IgLO4u1"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'a6cF4VW6aBwrVqzS' \
    --userId 'xaJ4RQ7M6YZPCOpM' \
    --additionalKey 'zDOa8y7Dy89tjTib' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'V3RJ5FbzuDgUdLsF' \
    --userId 'wHoTxOaA6Nf6XnfR' \
    --additionalKey '3Xp3nrdG7IzU55cS' \
    --body '{"additionalData": {"m4Sfo6D2P9S22fwM": {}, "7RxZ1u430ccCWia5": {}, "1Yi8EVBXY4OdGZye": {}}, "updateStrategy": "MIN", "value": 0.7975327905770034}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"OMiAkln9w4HGXZp8": {}, "6L6kX0uRvcuZ0ggh": {}, "wSphHrZmI4b9Mu3y": {}}, "additionalKey": "nrQCdXSOVNyOUjHq", "statCode": "7qkEGHYfnwl4NJpH", "updateStrategy": "INCREMENT", "userId": "rGNNpzCaIvLAib95", "value": 0.8738616934247303}, {"additionalData": {"6s5935GzwG5eVRTk": {}, "xeYKnpG3Lo66BrRE": {}, "dQms4aztgiW9ccMk": {}}, "additionalKey": "Ua3sNTZVoACYisbg", "statCode": "Ia4KHTGdec3b7BE8", "updateStrategy": "INCREMENT", "userId": "NFeprRfMixxcIkzo", "value": 0.6216123300295834}, {"additionalData": {"JUJ95ZbHwFn3Oy8D": {}, "iyG6KqyCjtOqgwqs": {}, "l1KGY8UxjOp5NPRt": {}}, "additionalKey": "nxk52wKDy7kKTqO8", "statCode": "EtqjWnhsu1P9Z5Nm", "updateStrategy": "MIN", "userId": "KchHqWku3wO8JvFL", "value": 0.41200308502249394}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'iRH7BgRsBzdjB85h' \
    --additionalKey 'RePjIXQU5V76Fsam' \
    --statCodes '["9dkXxaW8W9FWPwln", "Rvr71ICJoybKlc50", "cilCZ933p788cFZB"]' \
    --tags '["Mtzx5RdfK5xYEDlZ", "Gw3Ol14jSlkxyrQT", "IUvyb40C5JA6infq"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'G1MkBOdZSkp1E4N2' \
    --additionalKey 'rU04KN0SUrl7Ph42' \
    --body '[{"additionalData": {"z235I6mVJRuYGoZC": {}, "EOs1aD7I34mYwDFI": {}, "dwHXQZnpeK7GYThS": {}}, "statCode": "SwUC6D1BS1wX2aeI", "updateStrategy": "OVERRIDE", "value": 0.8176839973883082}, {"additionalData": {"MFlmOreGjvMIs6hK": {}, "NbPJlecAQtHB9Did": {}, "pu3ypXszZgUHw3N5": {}}, "statCode": "DuzEkirEkoBCPLFN", "updateStrategy": "MIN", "value": 0.2832206085767036}, {"additionalData": {"DhRyuYG9K4zN6o1T": {}, "fC0BTE6UPXypAb7k": {}, "A3V0R8cT8ltQEoNF": {}}, "statCode": "MLbZY7lbbHE2utKG", "updateStrategy": "MIN", "value": 0.062472276318719544}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Z7zOStfoOanSkMLe' \
    --userId 't8uGPz7iDBV7MWXH' \
    --additionalKey 'zUS5SKyiQgjOXHNb' \
    --body '{"additionalData": {"xzvL5lresaNasP8z": {}, "movDZkBxhM2pCdwC": {}, "HBLfnJViv4n9ZvPo": {}}, "updateStrategy": "MAX", "value": 0.025056909897399948}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE