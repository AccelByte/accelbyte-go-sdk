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
    --namespace 'FtBxyZcD' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
samples/cli/sample-apps Social updateNamespaceSlotConfig \
    --body '{"maxSlotSize": 98, "maxSlots": 55}' \
    --namespace 'pGlsQuJu' \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
samples/cli/sample-apps Social deleteNamespaceSlotConfig \
    --namespace '8vMf0IsJ' \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
samples/cli/sample-apps Social getUserSlotConfig \
    --namespace 'kTrd8IDc' \
    --userId 'V2zXnTKj' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --body '{"maxSlotSize": 99, "maxSlots": 3}' \
    --namespace 'PqamiBxx' \
    --userId '9Cs18EY8' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace '4ekItqRz' \
    --userId 'HU1oh570' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace 'KQBVaewc' \
    --userId '72krSha6' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace '8n3Ynozp' \
    --profileId '1C2KmIQT' \
    --userId 'uBdNEUsx' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace 'Fb8CJ17M' \
    --userId '7DJZaMSx' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace 'ECbZbygy' \
    --slotId 'oarORoeN' \
    --userId 'HSb8Rh3k' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace 'gs9qqJbn' \
    --userIds '["QsoBgiVp"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace 'P8Cm3yvA' \
    --userId 'SUoxdxxF' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --body '{"achievements": ["qmAGTJ8I"], "attributes": {"EdagEtp4": "w29KOu9c"}, "avatarUrl": "19R6XDqW", "inventories": ["HkkP8npL"], "label": "EKMfjiX7", "profileName": "jpkVZk3I", "statistics": ["aQYEmqGo"], "tags": ["dOEGt9gP"]}' \
    --namespace 'Oj0c6i0J' \
    --userId 'kvIas73u' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace 'cYnFAJ3D' \
    --profileId 'K5T4Eogg' \
    --userId '0Y39UoYl' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --body '{"achievements": ["pv5bVAgt"], "attributes": {"sDhUTDUs": "cbQDjbTQ"}, "avatarUrl": "uPMz2PTR", "inventories": ["lkyU89ZP"], "label": "Ow6zPFJ4", "profileName": "2cwmzBBS", "statistics": ["MNcoAAOj"], "tags": ["KNjfcYHm"]}' \
    --namespace '093aYgBU' \
    --profileId '1sqjyK0X' \
    --userId 'H45PaRSO' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace 'FQBtu23R' \
    --profileId 'EZ8hRVX7' \
    --userId 'LGOvDdYi' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'QS9i7mV1' \
    --namespace 'C91pjG9g' \
    --profileId 'pxL6ycTQ' \
    --userId 'dvln2LAu' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --body '{"name": "SQWEXL6L", "value": "FE1YHo9m"}' \
    --attributeName '126ZWc8h' \
    --namespace 'HtWvbNYq' \
    --profileId 'gUqslArF' \
    --userId 'PiHUIvaC' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace 'v8kU9dBB' \
    --userId 'pdsJLhsV' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --checksum 'yExrkxoo' \
    --customAttribute 't0B7WOfe' \
    --file 'tmp.dat' \
    --namespace 'rcZdpMci' \
    --userId '37Ds7YSf' \
    --label 'ExaI3uzL' \
    --tags '["teMbFAlt"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace '4hr7HmOY' \
    --slotId 'iBA5ltAO' \
    --userId 'XmlG6eh1' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --checksum 'dTdoTFpB' \
    --customAttribute 'IcuC1dQY' \
    --file 'tmp.dat' \
    --namespace '93OJnJ6T' \
    --slotId 'e9vD8ldz' \
    --userId '7Hu8AD79' \
    --label 'kdWunviz' \
    --tags '["U0q1pHyh"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace 'hERoGgdr' \
    --slotId 'ysMizBGS' \
    --userId 'RdP2l7DN' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --body '{"customAttribute": "SZ8Aq0Xi", "label": "PLQXSe07", "tags": ["ZddOGTMl"]}' \
    --namespace 'JjBwj9HJ' \
    --slotId 'HQKseEdS' \
    --userId 'XRDSvgua' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace 'uw1xT7eM' \
    --limit '44' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace 'l9MLH0Nn' \
    --statCode 'TJ2ulNzB' \
    --userIds 'vwJaQa54' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --body '[{"inc": 0.9327655923265599, "statCode": "llvA8RWS", "userId": "pabUt7xk"}]' \
    --namespace '6QxyWhfq' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --body '[{"inc": 0.23108827139420096, "statCode": "fJw2o8oW", "userId": "UqvPCZ2H"}]' \
    --namespace 'zT7NXmWD' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace 'lXsuNIdQ' \
    --statCode 'JR5lsNOl' \
    --userIds '["vkfwaSbn"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --body '[{"statCode": "suLCgTox", "userId": "uVTekJgv"}]' \
    --namespace 'g6h5HIpH' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace '0DviplEk' \
    --limit '43' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --body '{"defaultValue": 0.8688681393379757, "description": "Dp4yqDt8", "incrementOnly": true, "maximum": 0.23814104023528648, "minimum": 0.17562875546992318, "name": "asinGcjr", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "RMttgjDS", "tags": ["aIVBmft3"]}' \
    --namespace 'Udg7p9PG' \
    > test.out 2>&1
eval_tap $? 33 'CreateStat' test.out

#- 34 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace 'mY2H5kX4' \
    > test.out 2>&1
eval_tap $? 34 'ExportStats' test.out

#- 35 ImportStats
samples/cli/sample-apps Social importStats \
    --file 'tmp.dat' \
    --namespace 'MsisSX28' \
    --replaceExisting 'False' \
    > test.out 2>&1
eval_tap $? 35 'ImportStats' test.out

#- 36 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace 'ARxWRpv5' \
    --limit '29' \
    --offset '40' \
    --keyword '5xtvd28O' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace 'UfCt8UJC' \
    --statCode '5flNyj6H' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace 'sTtX8P3l' \
    --statCode 'lnaaS9lq' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --body '{"description": "yygPcfkJ", "name": "IxfQZza8", "tags": ["kNVbDxVM"]}' \
    --namespace 'q7HJk0F8' \
    --statCode '9xAc3YVf' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace 'aENtrl0p' \
    --userId 'TKZTXqzH' \
    --limit '40' \
    --offset '55' \
    --statCodes 'MYQSA2jz' \
    --tags '1ZOpdOjS' \
    > test.out 2>&1
eval_tap $? 40 'GetUserStatItems' test.out

#- 41 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --body '[{"statCode": "yMddB41J"}]' \
    --namespace 'uMf7RUyB' \
    --userId 'HRj8IiRi' \
    > test.out 2>&1
eval_tap $? 41 'BulkCreateUserStatItems' test.out

#- 42 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --body '[{"inc": 0.18761413301733687, "statCode": "llHT6Dc4"}]' \
    --namespace '0vFFA6gp' \
    --userId 'U7EW3x1d' \
    > test.out 2>&1
eval_tap $? 42 'BulkIncUserStatItem1' test.out

#- 43 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --body '[{"inc": 0.44428418755937293, "statCode": "m55gOeqQ"}]' \
    --namespace 'IqcJVKmB' \
    --userId 'M1J1IbuT' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItemValue1' test.out

#- 44 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --body '[{"statCode": "rrkbmuT1"}]' \
    --namespace 'whOqmEnD' \
    --userId 'XIWrBPlS' \
    > test.out 2>&1
eval_tap $? 44 'BulkResetUserStatItem1' test.out

#- 45 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace 'ay46mv71' \
    --statCode 'BAZAOjtF' \
    --userId 'J2vmTj7t' \
    > test.out 2>&1
eval_tap $? 45 'CreateUserStatItem' test.out

#- 46 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace 'T7TZHWDd' \
    --statCode 'CkIsZoAr' \
    --userId 'WwPHcyFA' \
    > test.out 2>&1
eval_tap $? 46 'DeleteUserStatItems' test.out

#- 47 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --body '{"inc": 0.05065644091795485}' \
    --namespace 'tYciLIgR' \
    --statCode 'wFRr0gwB' \
    --userId '9tz3vp99' \
    > test.out 2>&1
eval_tap $? 47 'IncUserStatItemValue' test.out

#- 48 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --body '{"additionalData": {"XVlV8rK3": {}}}' \
    --namespace 'tE6n0smi' \
    --statCode 'p1tw3L7c' \
    --userId 'Ud9pqtv6' \
    --additionalKey 'JfPZwcCV' \
    > test.out 2>&1
eval_tap $? 48 'ResetUserStatItemValue' test.out

#- 49 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace 'OXcVa80T' \
    --statCode 'mCwtD2lA' \
    --userIds 'H01o6Ndc' \
    > test.out 2>&1
eval_tap $? 49 'BulkFetchStatItems1' test.out

#- 50 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --body '[{"inc": 0.42801320950123534, "statCode": "gzrDyWpF", "userId": "BYGmmBaw"}]' \
    --namespace 'MyoKyNpd' \
    > test.out 2>&1
eval_tap $? 50 'PublicBulkIncUserStatItem' test.out

#- 51 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --body '[{"inc": 0.4146327525992324, "statCode": "sm8xwUfz", "userId": "OlQiZY4N"}]' \
    --namespace 'bOQXJ7uO' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItemValue' test.out

#- 52 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --body '[{"statCode": "TzNMvuq2", "userId": "tNl4CX4I"}]' \
    --namespace 'jiK4DEUJ' \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem2' test.out

#- 53 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --body '{"defaultValue": 0.6792803256022468, "description": "VK3l9Eb0", "incrementOnly": false, "maximum": 0.8138726255223543, "minimum": 0.5217557768877451, "name": "vS1smeOl", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "rdTXCzaP", "tags": ["BtkZMio4"]}' \
    --namespace 'wcyhloVS' \
    > test.out 2>&1
eval_tap $? 53 'CreateStat1' test.out

#- 54 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace '3rYp8Qtc' \
    --userId 'EmCEVc75' \
    --limit '92' \
    --offset '11' \
    --statCodes 'eypWjDNh' \
    --tags 'zCL5sWS2' \
    > test.out 2>&1
eval_tap $? 54 'PublicQueryUserStatItems' test.out

#- 55 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --body '[{"statCode": "qwO763iE"}]' \
    --namespace 'klkzLm88' \
    --userId 'LpLuYRO3' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkCreateUserStatItems' test.out

#- 56 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace 'C55yHpwK' \
    --userId '2JaqenDG' \
    --statCodes '["n7a2NUpl"]' \
    --tags '["WiLjq06n"]' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryUserStatItems1' test.out

#- 57 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --body '[{"inc": 0.9086710364498819, "statCode": "0rW8Efkp"}]' \
    --namespace 'aXtwYZJa' \
    --userId 'Q4WbwNms' \
    > test.out 2>&1
eval_tap $? 57 'PublicBulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --body '[{"inc": 0.48441930708121106, "statCode": "etjEurH8"}]' \
    --namespace 'eloJzNKt' \
    --userId 'RUaTz1ET' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue2' test.out

#- 59 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --body '[{"statCode": "dsmwzjkk"}]' \
    --namespace 'n9oiQl05' \
    --userId 'g7cO3ZMb' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem3' test.out

#- 60 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace '6Ojlo6DM' \
    --statCode 'NpP2qMrT' \
    --userId 'Q1UpjfU6' \
    > test.out 2>&1
eval_tap $? 60 'PublicCreateUserStatItem' test.out

#- 61 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace 'wJhy1jOV' \
    --statCode 'kkUlS795' \
    --userId '27EZ25Ia' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems1' test.out

#- 62 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --body '{"inc": 0.9412272149105891}' \
    --namespace 'CeZFlLtE' \
    --statCode 'VpDAEbA8' \
    --userId '2jy74lq0' \
    > test.out 2>&1
eval_tap $? 62 'PublicIncUserStatItem' test.out

#- 63 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --body '{"inc": 0.24100830001534967}' \
    --namespace 'E5xRwh5b' \
    --statCode '45ebpcM7' \
    --userId 'ScSs3UOp' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItemValue' test.out

#- 64 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace 'AwIp9rRt' \
    --statCode 'n1PcCxdb' \
    --userId 'umeYgOdE' \
    > test.out 2>&1
eval_tap $? 64 'ResetUserStatItemValue1' test.out

#- 65 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --body '[{"additionalData": {"BWRQiW3K": {}}, "additionalKey": "FfU8icH4", "statCode": "081gRB1G", "updateStrategy": "OVERRIDE", "userId": "LfLg4RYu", "value": 0.47052862510821836}]' \
    --namespace 'gUDEcJyI' \
    > test.out 2>&1
eval_tap $? 65 'BulkUpdateUserStatItemV2' test.out

#- 66 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace 'vsPwOr0B' \
    --additionalKey 'mV5iFvfw' \
    --statCode 'FjTSmIEq' \
    --userIds '["oLyLeUGm"]' \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchOrDefaultStatItems1' test.out

#- 67 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --body '[{"additionalData": {"omGX9sXT": {}}, "statCode": "Z0v8pqLf", "updateStrategy": "INCREMENT", "value": 0.9011747963731541}]' \
    --namespace 'wGnReUUL' \
    --userId 'DX4QUIbb' \
    --additionalKey '5nh68Zny' \
    > test.out 2>&1
eval_tap $? 67 'BulkUpdateUserStatItem' test.out

#- 68 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --body '[{"additionalData": {"UtRvW9hN": {}}, "statCode": "BSFTtFrO"}]' \
    --namespace 'mjkFrFVA' \
    --userId '8t0xF34X' \
    --additionalKey 'pt6ZlTTi' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItemValues' test.out

#- 69 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace 'c0kr2a0n' \
    --statCode 'I2oo7UHC' \
    --userId 'JK5sp0aC' \
    --additionalKey 'vIq3aHVY' \
    > test.out 2>&1
eval_tap $? 69 'DeleteUserStatItems2' test.out

#- 70 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --body '{"additionalData": {"IlewLRuH": {}}, "updateStrategy": "INCREMENT", "value": 0.9787412248956047}' \
    --namespace 'j0HTeeWX' \
    --statCode 'lIcRidqc' \
    --userId 'tDpygY0a' \
    --additionalKey 'x476ED4M' \
    > test.out 2>&1
eval_tap $? 70 'UpdateUserStatItemValue' test.out

#- 71 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --body '[{"additionalData": {"MO9Tw2JH": {}}, "additionalKey": "0qhWIwHW", "statCode": "TgzJFRYw", "updateStrategy": "MIN", "userId": "1IKZLO6V", "value": 0.8791084709379228}]' \
    --namespace 'de46QmCi' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem1' test.out

#- 72 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace 'dgdpP7RT' \
    --userId 'C587lmUm' \
    --additionalKey 'BziPZBnp' \
    --statCodes '["Ofkllxfq"]' \
    --tags '["0NsrSjw5"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicQueryUserStatItems2' test.out

#- 73 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --body '[{"additionalData": {"Hog0blM1": {}}, "statCode": "d5MStYGc", "updateStrategy": "OVERRIDE", "value": 0.583079461337523}]' \
    --namespace 'NlEC0OEs' \
    --userId 'E3yzIsUP' \
    --additionalKey '0NjluOrG' \
    > test.out 2>&1
eval_tap $? 73 'BulkUpdateUserStatItem2' test.out

#- 74 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --body '{"additionalData": {"ZTzsLW7F": {}}, "updateStrategy": "MAX", "value": 0.08338569314990818}' \
    --namespace '9nIkcZ38' \
    --statCode 'fUEanjKH' \
    --userId 'bXfk1zxd' \
    --additionalKey 'zxg0UXcR' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE