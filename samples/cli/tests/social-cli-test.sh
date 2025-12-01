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
    --limit '85' \
    --offset '47' \
    --statCodes 'ZCDOL9UDLWHUEQWZ' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'FaH0Y1XhcO03a7p0' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '13' \
    --name 'oUT1VCnn7cwjpB71' \
    --offset '61' \
    --sortBy 'gCefU0B0rgS4hJ8a' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "40a0hPjkTb4R7ZqC", "end": "1998-04-27T00:00:00Z", "id": "L7HtBTI3xyelWtcb", "name": "Su5PxmzpqGp0WsAP", "resetDate": 62, "resetDay": 84, "resetMonth": 5, "resetTime": "MXQxGBHsINXD5fuz", "seasonPeriod": 9, "start": "1974-06-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["yhYtx5F1PMcQlQBs", "3evCmVRyDxIFPuM5", "KeD9b9gSrhO6W4QK"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'HR7lA9ocX8s01CvU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'xEnum29D1zJeOxmc' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "3BWv1f7fbV552Vfz", "end": "1992-12-03T00:00:00Z", "name": "PzdMoSgdfym98xpn", "resetDate": 2, "resetDay": 100, "resetMonth": 79, "resetTime": "6cWUr7rQPJ7Ow96X", "seasonPeriod": 31, "start": "1996-10-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'ZuTk8Ly1SqIYuPGz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'FmvrWfpWAPSK22kb' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["jNBtjiKUzBztOTcF", "m4unhc08KVIwDNMW", "rOSqvfwB5VfHY5uH"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'xbzrdQc5CkQhNBSh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'MnuzazwU98EbANDs' \
    --userIds 'hfg4eiqrRee0q3I2' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9309956446520239, "statCode": "l67YQnXHkEZSw6Zs", "userId": "nIcUT06R3DA1yjmV"}, {"inc": 0.41269560584611775, "statCode": "HWh2xXk9rX5HykJ8", "userId": "hJBrjyuLFUcxm9JC"}, {"inc": 0.7142014257512582, "statCode": "dSqlAAgDww8OzZpm", "userId": "GnVMWHRTwzZWJiwi"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6135477702186954, "statCode": "ucTFmunEAaBdY0xV", "userId": "ib2iuYUIiA3ea24t"}, {"inc": 0.23699819022142876, "statCode": "DQEkCUJ3WxGVhsBc", "userId": "URY5GBChQ8YwO9CJ"}, {"inc": 0.8223240313952794, "statCode": "ZInaSRYaPoB1Qwt8", "userId": "RID3qD9IChhjKp6I"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'rg3fDkcWRtNUP023' \
    --userIds '["OfgO2NjNfFmcP4nU", "B667QW79lVXqF22N", "yBZOSRZU7VzcaLZk"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "EWBW3W0Ec6ufdOJR", "userId": "qaOW8O6RH9BKUTcm"}, {"statCode": "saL8oCjWT1Ob9uD4", "userId": "RVJXEkLEiDbrk2hV"}, {"statCode": "62PUYxM57HTPLGGX", "userId": "bgt3LzN7ieYwfdJL"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'A2Zj8962eloK3bTa' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '44' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["Kv1DntvIHSdNykBw", "RlbIT0iHA2ivamok", "Ac5252DUFDhuOgdW"], "cycleOverrides": [{"cycleId": "BW44c2OochyMgEz3", "maximum": 0.8647543720366504, "minimum": 0.3756584100970236}, {"cycleId": "qBdcJol8wUcnnUIk", "maximum": 0.4117872902332673, "minimum": 0.9904287535681185}, {"cycleId": "AWZ3SPHRzLR8Wo7Q", "maximum": 0.14735824117361718, "minimum": 0.23834031837780034}], "defaultValue": 0.18325818506580804, "description": "sOah0InrPBRyH1xb", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.43177354699545345, "minimum": 0.1646542643058092, "name": "grHUt0U6rBV9BDSk", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "ULYKHUmWqDJOvvRa", "tags": ["Q9xahIfvi5Hf74od", "G3v06FcKt7StIpOI", "MdrpIAqyeKg85ZG0"], "visibility": "SERVERONLY"}' \
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
    --limit '80' \
    --offset '34' \
    --keyword 'QoQPnAnHxRPpuckq' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'DB7anOoOK7ax2hhq' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kVNWQ1Us4AKuG8sH' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'oDBM5mI4HrAg625E' \
    --body '{"capCycleOverride": true, "cycleIds": ["TSJiZXCvh5DpR3pE", "TkRujT6EIOl8vlXp", "z1pQTQrbBhRkC6Ni"], "cycleOverrides": [{"cycleId": "swW5vEsfLhUfvnul", "maximum": 0.6673645621839819, "minimum": 0.894745888411278}, {"cycleId": "2zrsjRHwoiLMXP3q", "maximum": 0.7108789012925278, "minimum": 0.013335387234996388}, {"cycleId": "q5h6eE8wJCtLxilb", "maximum": 0.5686343809639055, "minimum": 0.9909331601535262}], "defaultValue": 0.9223124475493807, "description": "zVrguKn1B8Myf9A1", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "R1f1KUYQ4QJ0JoOS", "tags": ["G2EHpfYSEf9ujUR6", "nddHIbG1SRsraI48", "ETAxEpWhyQQVmSfi"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'L5VGB3nTnrlnrQf0' \
    --limit '34' \
    --offset '50' \
    --sortBy 'XEhpFfrw6lV1tjVH' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Fsj0bYZN12zVCCe3' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'E5nyu6WvPfe8QFqk' \
    --namespace $AB_NAMESPACE \
    --userId 'ylhD1yebwoEf9Jse' \
    --isPublic 'true' \
    --limit '61' \
    --offset '45' \
    --sortBy 'SmcFN1OTmeJakSXf' \
    --statCodes 'xEXw6rfObK8YZZNA' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ssR0PP4V3koyjsrg' \
    --isPublic 'true' \
    --limit '65' \
    --offset '59' \
    --sortBy 'gqdvBFWRg9ETiqD3' \
    --statCodes 'nvP9itbFLZI14cwO' \
    --tags 'FmOTTDwJ2DgoYgOx' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'DrFHHNxJ4fUIOLzK' \
    --body '[{"statCode": "CFzd2dd4wR5Q1Aby"}, {"statCode": "r4nJPzLaZX87HUkQ"}, {"statCode": "rVKhu8GF2uHa53T0"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ddFkr3QCMbBdA57Q' \
    --body '[{"inc": 0.9480684276513192, "statCode": "6NMbedNULVl4fQmg"}, {"inc": 0.6670772414384827, "statCode": "muQz0xduGwb7Cvpq"}, {"inc": 0.45734676090540405, "statCode": "zUJQysnSrDF9VeUe"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'oVp8MrvSlUOn5JFm' \
    --body '[{"inc": 0.48928906045140363, "statCode": "YhX6pyFR32EpNlaG"}, {"inc": 0.9413018156032945, "statCode": "acjkg1g5MNuTwFPb"}, {"inc": 0.22098694306274214, "statCode": "dMv3lPIarB2Avw81"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'TALMLzfe6uj2WxXC' \
    --body '[{"statCode": "2SB7tZMS47bXWWJ2"}, {"statCode": "cXxO7cUb9RsNyVSr"}, {"statCode": "VDQkTSgxkPpzWqav"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'PmhY57NKdZOwuV9j' \
    --userId 'zMTlMbuqs9iBWp80' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'YSr8OHBDR10IXiz0' \
    --userId 'g1dD36Dnc5CfbTQW' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'eEkk1cfIG6H0F4ln' \
    --userId 'Y0CjcjT2xGvdxiAG' \
    --body '{"inc": 0.9385645751707113}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '6IpkubqckabwDuj8' \
    --userId 'xEWGs2ELYMU75ORn' \
    --additionalKey '69wqTqrFOG9qJoxX' \
    --body '{"additionalData": {"1pMMYQoOSRORn8YC": {}, "xDizlGPTOHabO2QV": {}, "oLBqURhgPgWX8R2K": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '100' \
    --statCodes '95OmuNSjnihDMX6C' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'JcQqvejaC9M5JMmF' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '53' \
    --name 'NDF0YpUPbHVUknVR' \
    --offset '71' \
    --sortBy 'FIUfezpcvE4aeYNa' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["kBLluGbNSxDK6CQy", "0zdnZOuQJG8ygHuN", "jCN8rI7kXQMESBYx"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'gf69dWOnqtcHXdtd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'AeO8u8N4QeAj6AWJ' \
    --userIds 'izCJLuBvWQ8xhvEW' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5516679798693503, "statCode": "C7CVADAcEgL0sMKj", "userId": "WdxsyJdvQwRXOXlX"}, {"inc": 0.14942733395166063, "statCode": "XtSXWxlZ86E0Fnn2", "userId": "NJWBNuTELKFn2xCc"}, {"inc": 0.8698540148997931, "statCode": "Iw5NoRc94fLwl1uY", "userId": "9Usr8ftfWWEdyVbC"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.38523796350144013, "statCode": "aCi9MfF6jr6AmWkZ", "userId": "XtGiZlKh6ch7y2yD"}, {"inc": 0.9630452188319316, "statCode": "4oLWLxOYJRK6XUFD", "userId": "ePcFel5jpOR1UsJH"}, {"inc": 0.6530570647560303, "statCode": "pG1D6NwR5F8GmVjp", "userId": "AmjLb8YR8gEzLyQo"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "MudwghS3lZDIpaEV", "userId": "H476UybAhB5fOXt0"}, {"statCode": "cOAJRVHbTaLY9c4z", "userId": "8pFL0wVrIN69T7GC"}, {"statCode": "mAeX7lGiN6MU9Zy0", "userId": "bFA6mglB5g3xE8Eo"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["4xAFTITQ5Qxj9Beg", "jDTl6mGdxQ977Krp", "jgwmqgZ0YClzMsOW"], "cycleOverrides": [{"cycleId": "sNeRs7puHHUFokYq", "maximum": 0.8388049414643614, "minimum": 0.0696237442034423}, {"cycleId": "IhAbTzmpxJqYiYMK", "maximum": 0.7792868404640834, "minimum": 0.33081338893818213}, {"cycleId": "BkF2z7rxyQWFq7B8", "maximum": 0.13598529544646598, "minimum": 0.13827579633768172}], "defaultValue": 0.6147738342451251, "description": "Xmz1c2jKYMz3fuBd", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.8922790690586586, "minimum": 0.3108253444496545, "name": "RODJ4bnbpP7eVtkx", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "ihWHDIF4VEZH6uR0", "tags": ["PDsflisKL33vNEc3", "mX5bMbmwlokSi37f", "I95LQq8RzfORYbbB"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '1PaERChRgAkBY0xw' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '14' \
    --sortBy 'rVUud647kljhJldN' \
    --statCodes '["9PSRewUb7YldTQ4j", "SsRfnGOv39Yyzbzt", "J1htw058nUbEZtej"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '67' \
    --sortBy 'y0PyGzvmqhcS5u02' \
    --statCodes '["SatSL8i4lndNLz2e", "s9u84ObU5R88QZke", "5T2ssiiZXqptc6vA"]' \
    --tags '["th2i1UqkKqeyWxx4", "tb8yoSl13K01loTK", "JG6kG125G2jGI9vW"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'XuZcQptHsbSLTW1m' \
    --statCodes '["l3XeF9rRrBRrMNlz", "mKA6oU5xvVN04F1e", "Ge4jpQigVo6nqcxU"]' \
    --tags '["DsNHsq7arFauSIho", "8yegAuwPk58dKMbz", "C7dZ7FUvREWOM2Ij"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId '41opVEmsWCh4484I' \
    --namespace $AB_NAMESPACE \
    --userId '3vF669RcC6Y0slS4' \
    --limit '87' \
    --offset '77' \
    --sortBy '7xFBOpUhli476puW' \
    --statCodes 'E9S48orJlbS0n0au' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'PgOn5S1x2X8fW58Q' \
    --limit '54' \
    --offset '13' \
    --sortBy 'Q0LctnPt7DcU9YGE' \
    --statCodes 'PhVTrQYOAiP8jzhj' \
    --tags 'Nlzz82mA2clwHJTF' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'lCzgxo973LA8f11p' \
    --body '[{"statCode": "Qbj98Rq7BlefopaT"}, {"statCode": "DSno5vZXbLyCvAVc"}, {"statCode": "hgdHHqeXtc1ZkeAL"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'DSLIFtN0eunzFRrP' \
    --additionalKey 'sx3DeNd6c5pgyCAF' \
    --statCodes '["LQ709elu2HQXBV0M", "8MBdWkp1udbaiF8h", "xyrmeIpdDfRIcs8m"]' \
    --tags '["nL5Zvl4AIC4mAzrG", "xaYXy1flGF1sMlqq", "3REwdblqGNS43MBw"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'JAQFqvwQSIYBbUjW' \
    --body '[{"inc": 0.2140248811912837, "statCode": "l3kOhb3ccbHFqqCY"}, {"inc": 0.4854292592711218, "statCode": "vNSnAQbOwRsHv2d7"}, {"inc": 0.3224991832972014, "statCode": "4SsJrkPvLO66mIAt"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'Bo6dKQNlhTEEz2He' \
    --body '[{"inc": 0.6617047286138715, "statCode": "hpQddAB6CsVYlCaL"}, {"inc": 0.758432006477088, "statCode": "1jXz84VuBycPc0QP"}, {"inc": 0.5980442547570641, "statCode": "IEjAMs4wvul0zv0v"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'bxIunWjk4WAt0sfh' \
    --body '[{"statCode": "G5qgZKu1Lcf3jOSf"}, {"statCode": "1VO3YTYUgt6o1GFH"}, {"statCode": "7F1z2SGLTsNURZJq"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Uxvs3t1VjWRD80Pr' \
    --userId 'pXGOGu47WoXhfn3B' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'clLjcBaD4tWJa4xG' \
    --userId 'u5rQi3YWqzbNpAZp' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'J5jChU4ZaVrvoGlP' \
    --userId 'TwUyexrRSHRSEF2G' \
    --body '{"inc": 0.9925169947643504}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '6rQ4cbauXyBe1zqV' \
    --userId 'PByQ9t6MRiCgXgQZ' \
    --body '{"inc": 0.3728555636527543}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'LHkmnIn5VSGFagVB' \
    --userId 'ioLtCm08V4q82v1m' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"f7ur3uz8vUFjhJ1f": {}, "uxVlzeVxezb93j0T": {}, "pfFMeAn6uUkweH3J": {}}, "additionalKey": "mW4NJHXXhgFV6xu8", "requestId": "afR5wxgdTTNs4GyK", "statCode": "OUxApct0hvFF1Ebs", "updateStrategy": "INCREMENT", "userId": "kccto5cr10n2K7SZ", "value": 0.750979173341656}, {"additionalData": {"sPlXk6iDXj48PVb0": {}, "UKyVGmfCqdN0qtGU": {}, "CMlnWSzCxqp7Qiqt": {}}, "additionalKey": "tzp6LFriZ6hrzOQI", "requestId": "uVHPERL2lskNo4fS", "statCode": "x2nlamynHKPgjFcM", "updateStrategy": "INCREMENT", "userId": "ACMK4XpO2QGKFFyB", "value": 0.7329966883823792}, {"additionalData": {"hdbDHd7Hx3GmQfuB": {}, "PRlxjkcCTweXhnzw": {}, "fhjtC2OFGb4prfyk": {}}, "additionalKey": "ypCV4j5c07aTXMJA", "requestId": "K2Cxp5RtjFL2pEsT", "statCode": "fvlUFGtb57c08LLO", "updateStrategy": "MIN", "userId": "DjdwK5aFzNnxPnMm", "value": 0.2993549234076647}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'BydyUvmN856PlxZi' \
    --statCode 'rqpDYm9wYU8rAEPb' \
    --userIds '["qPBX81nFpFaSclhJ", "gNXySQZZoJJ6XeAv", "WOWxbkI2HM7BfNKU"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '8BZwFptnAorAAane' \
    --additionalKey 'xq17cVg2Qk8oQI5y' \
    --statCodes '["9jQHertBFCG3XpUu", "t20UWU0fY9VEZVb6", "wWev7aPTERsX92RZ"]' \
    --tags '["RX9TZXj2MJb1xT5K", "8TJB3Oc2YUHbCGPG", "2gqO3ooDX81PDYf3"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'TNkvKzyD6ul2uGIW' \
    --additionalKey 'aa5qwxFWqM72fC3s' \
    --body '[{"additionalData": {"iJxQHgs2eS0iIbGw": {}, "VK3BvLnfd9Tpau8A": {}, "aJZ4vu63jvBobzSm": {}}, "requestId": "4Mv2OHDIanRMZgvI", "statCode": "ZWiaAElf8eMOInof", "updateStrategy": "MAX", "value": 0.5461189353532642}, {"additionalData": {"apDOQ8gkjJ8Zl6Me": {}, "5z4KqhGoKU0QJ5lx": {}, "H8HbWWnGafsjFfJm": {}}, "requestId": "7lFyhTJhZZaMlv80", "statCode": "4QE2zEAfSyoAAv4U", "updateStrategy": "MAX", "value": 0.6336872437805467}, {"additionalData": {"iaQp5Aj8NcXlkPHY": {}, "Lnl0Fa4cgjI2OVhw": {}, "QrWnLnc857FQkTgu": {}}, "requestId": "SIHHbF0W1VXsdeQz", "statCode": "DLMPZDRnx1JX5z6W", "updateStrategy": "OVERRIDE", "value": 0.37330129471761575}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'tx5udhJhM6IL9cOo' \
    --additionalKey 'DEIhd6J9KMTyWeHg' \
    --body '{"statCodes": ["gKqwoAaW3SYCSw2V", "TOPXPBMh9QadCQ1O", "rTmYDelE4hP34WMY"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'CbLWYtDyudnLHsgm' \
    --additionalKey 'k98CsLnTLeXHEhlB' \
    --body '[{"additionalData": {"KFO65lf6RQlycpba": {}, "ZqY1oV9Xb18vhFz8": {}, "v8Mam6JFtpiTqzfa": {}}, "statCode": "fFiqgtiibEyowI7m"}, {"additionalData": {"Azl6hJdNhVQvaCPy": {}, "GHkItFYXwhK4Esob": {}, "LN6HOLncNEDMIKBT": {}}, "statCode": "tTOkEbYtjAyrCRWJ"}, {"additionalData": {"JBEUPyDfKY3HNk6h": {}, "2jqIZDAlLr6Dx0KI": {}, "telBGZtSemTa0uGK": {}}, "statCode": "sNXK5ENHY7mDB7sp"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'MkppGdiCTjrBol8s' \
    --userId 'FrSo3u2I8EUo42Je' \
    --additionalKey 'pprh7Iql3Zea4RAy' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '0Rxj2LZZO9HFXZYo' \
    --userId 'gDggieDHC9v4EPka' \
    --additionalKey 'b8dLndod1nBZIyuG' \
    --body '{"additionalData": {"xXFDRJHaBBEBUrxG": {}, "RBpP4MmXOcVkm39l": {}, "X83qcqZbui941RQ0": {}}, "updateStrategy": "MIN", "value": 0.9731533935605753}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"mzGgSoiWyuOz6kyU": {}, "BvNqwuY32s9HxtYq": {}, "riJf0RLoJBYPaCxf": {}}, "additionalKey": "hRi1iAyIcxpROf08", "requestId": "eAq8htNUwvkas3sj", "statCode": "xFosM9Wi2lOV1egn", "updateStrategy": "MIN", "userId": "80otri0i6tiXxxCr", "value": 0.13016080483911996}, {"additionalData": {"76gg9Os50qr0wNus": {}, "2wrBO7nUZj5cth5l": {}, "Ch6oHIH1HYoadG8v": {}}, "additionalKey": "UeLY106LdEVEOoEl", "requestId": "wOIqLbDRL2mU4o5D", "statCode": "Iles9htfUb5yM7Gi", "updateStrategy": "MIN", "userId": "CaLV0MPj7ePBK2EZ", "value": 0.5777008037951651}, {"additionalData": {"gyG7PfoV3am1TEkl": {}, "LlGtES6lPpDBvQyB": {}, "z1nzJoLemDrsXWRo": {}}, "additionalKey": "68uJ5ZjCS3K3oX5H", "requestId": "Q6vtQ6LWehbcz0VB", "statCode": "96H8ZD5BhITBwWxB", "updateStrategy": "OVERRIDE", "userId": "ulre5ijahGjz1hDt", "value": 0.9669178355581495}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'RNYAMa42bsNpwsPa' \
    --additionalKey 'MdIXk1O5B9jwqeeb' \
    --statCodes '["LtZxsDA94xuvocpk", "mmeHToKOLY4JRgGp", "GYUai9EvCDyMiNsd"]' \
    --tags '["2I9mDxkdQ1PEyAAq", "PaVyk41fxC4ejCN8", "n5sAJlrj6j3C355G"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'gpAUuAyPu0qLZvCY' \
    --additionalKey 'XEvb37zc0Xz4FmRx' \
    --body '[{"additionalData": {"vAvMaDFZptebMCmk": {}, "TD1yH3atR9MfNckx": {}, "xFX8oiGRxhxPs8IT": {}}, "requestId": "GwDddBayVCWn1fXu", "statCode": "cYoEdR8CUlKTDiJ3", "updateStrategy": "MAX", "value": 0.09684105042234847}, {"additionalData": {"s6Xo6QHSualyclbE": {}, "RXr40LxAdVDmNUBo": {}, "xBSydVHhPql9IHvX": {}}, "requestId": "H0jtuKTo7gaMPZUS", "statCode": "oiFVYgudwKXBDwl1", "updateStrategy": "OVERRIDE", "value": 0.5964845372463053}, {"additionalData": {"vInyrx5SByj5QP9U": {}, "W5J74UcG2yhJphIb": {}, "J4EImaYH1MEaM6fP": {}}, "requestId": "2wU6hLBvHQSMPEX9", "statCode": "R3qgWPwULy05LTG4", "updateStrategy": "INCREMENT", "value": 0.6785475612237686}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'HNEcg9NvLPhUCVP9' \
    --userId 'Z1qHVY9NztEkG7il' \
    --additionalKey 'beRvm7vNDPSiZA0n' \
    --body '{"additionalData": {"UqqSiasdmR5WJYBd": {}, "3SvMOGkCFvF8e24z": {}, "m1NZEZxEsJB4YL6i": {}}, "updateStrategy": "INCREMENT", "value": 0.8984675406501114}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE