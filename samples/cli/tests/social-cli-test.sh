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
    --limit '39' \
    --offset '18' \
    --statCodes 'HAa1ofBD5GKPqefv' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'et5q3TFlpfKHh9Xj' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '80' \
    --name '7zMsaMxG4NCTfSEC' \
    --offset '51' \
    --sortBy 'SXURG6oGECjjCQMt' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "TPJvtKb2wL2SIskn", "end": "1971-04-30T00:00:00Z", "id": "Tcs9pxauaqf8Yfl4", "name": "pY0kv7SK70K2oPkJ", "resetDate": 18, "resetDay": 2, "resetMonth": 95, "resetTime": "XQyUvgnd2PthlFoa", "seasonPeriod": 53, "start": "1981-07-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["NnHLhPxCUHJHjDCP", "YtV7IGCnwe9nB36B", "n1LDhYhz0lt0nQ7V"]}' \
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
    --cycleId 'C0NCsbgp7KRI5rHC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'EO9mHfwgaapN8mvk' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "RXyJvK70z0TTGKWP", "end": "1991-05-17T00:00:00Z", "name": "7JsMFehhVvA4Es5o", "resetDate": 8, "resetDay": 90, "resetMonth": 48, "resetTime": "NNkuOct3NEV3Ha9U", "seasonPeriod": 25, "start": "1974-08-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '72ceVC2rLQb9ACm7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'qdj6Jds1Y0lBdLhk' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["tojHL2yHj9M1ahy1", "hjhlREdqXaeuSjS8", "tLl0Ehr9I3zNITNY"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'swcZtLKH9HGL4L7m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'EuBdvZJabx7Lq4vU' \
    --userIds '2Dlsd0yrjZlLpyt0' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6482980047116228, "statCode": "93JGEabPKzu57uae", "userId": "6SJjDi3vv0dTeNIC"}, {"inc": 0.06897931208165009, "statCode": "mJmOYxJzA2P9yDF3", "userId": "ShACLyT0ZJcoQytZ"}, {"inc": 0.01091167089761369, "statCode": "nXND5RHPjiaEcTiG", "userId": "90gDs1TOeJGN7FKy"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.282754594462438, "statCode": "K7XN1XwYfxYbJ6k0", "userId": "yJ4AghyNeMDxuNv5"}, {"inc": 0.32370698665291153, "statCode": "CzD5zN2N1KkIwyPe", "userId": "GcAru4VdafnbpH58"}, {"inc": 0.3888705389546985, "statCode": "YkCFkXUZpu8ry44g", "userId": "0j35ZcXrafFkt00d"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Lb0OHmMDbNFCoqUL' \
    --userIds '["L7BpWQvHebqz32Ez", "PExt1b1tIkpkCmua", "HRiKXOKTsI9SDEAe"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "HMHML2Yca7kxSSnW", "userId": "ZcMpAgYrNynUMrjn"}, {"statCode": "veFQ7pJ2rFIcL1zy", "userId": "0DoMeiCTUqjIIhZH"}, {"statCode": "ZI7cKIhgV66luihb", "userId": "zHidne20TLqhdRM5"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'i8SHpvbzMdHGS2zV' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '88' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["ok51OanIlLHdaRFC", "kMHQ0BfsLaiTv6iy", "E7A8EMQtdI00ecdK"], "cycleOverrides": [{"cycleId": "vT4vP0IKVMn9nUxF", "maximum": 0.341667410872449, "minimum": 0.05768468696865403}, {"cycleId": "tcsXH25YFdcUIR3Z", "maximum": 0.058593550257244, "minimum": 0.6355792033112228}, {"cycleId": "YmPsz3hWUKWQdcOD", "maximum": 0.3610891276460567, "minimum": 0.618440586074963}], "defaultValue": 0.513230272279343, "description": "Gpv2ieHp8a8DtcY0", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.4461860724763529, "minimum": 0.2468227748970837, "name": "BqZXEnqdtrqTAYn8", "setAsGlobal": true, "setBy": "SERVER", "statCode": "xeQxXIxfsnKjfupJ", "tags": ["CBc9gHIFmT4rJvHZ", "AgspPdnP63zjGuvw", "4U31DxnbK8BWTWJi"], "visibility": "SERVERONLY"}' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 46 'ImportStats' test.out

#- 47 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '28' \
    --offset '14' \
    --keyword 'ygAkq7SUThPjGTpd' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '2VQzlH0cNcyKbRij' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '0SJiwBSy2gnOAl8B' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'g7RrNh4m3WQEiWXP' \
    --body '{"capCycleOverride": false, "cycleIds": ["rPNvnZj5pA1tM6gr", "a2uyMEjvCQDnbcuA", "UtGm6VybPV5uxVc0"], "cycleOverrides": [{"cycleId": "I0F2ywi1iqP9lV9S", "maximum": 0.6750551860534284, "minimum": 0.10174052644530684}, {"cycleId": "lV8y2QMbFZWdJsdH", "maximum": 0.7583016348967863, "minimum": 0.2250666597379386}, {"cycleId": "sqp9Fo3QUjz67Prm", "maximum": 0.35737519312846944, "minimum": 0.31712088728807564}], "defaultValue": 0.5287755999221447, "description": "Dzbw8zCF0kdFZO8e", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "8cF1UaKfnROu1dPj", "tags": ["LeIoYuf0Uu7BfIzE", "GEkJF6sbdKDR2Xvq", "qmi1UltKzKjI3t69"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'FAen6SuC3QHiHyda' \
    --limit '82' \
    --offset '38' \
    --sortBy 'fTR4dFI1LUaiH01W' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'VgZTAPtUXtobFlCd' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'xoEbtmgKqVk3dhP0' \
    --namespace $AB_NAMESPACE \
    --userId 'V1u1Ni8T5mwtunOz' \
    --isPublic 'true' \
    --limit '42' \
    --offset '62' \
    --sortBy '69SRJrXnARHli3Fn' \
    --statCodes 'oepJ29oEa4MW6gr9' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'OaYDRRlOG55Y1ZIx' \
    --isPublic 'true' \
    --limit '26' \
    --offset '87' \
    --sortBy 'WjIGPaA6A30lK5MO' \
    --statCodes 'KOfyUTRbRV2ORSbB' \
    --tags 'iesEd9XtJVbwp1O6' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'RoBEkfipCA2G3WyY' \
    --body '[{"statCode": "jE81ArSrZ8bNf0oC"}, {"statCode": "zuxae6savV6d58I8"}, {"statCode": "6pGXRMhb31fWONAs"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ydISOrY2wZGF9I43' \
    --body '[{"inc": 0.148919605060852, "statCode": "RgS1jddkm4fvPCbX"}, {"inc": 0.1329516578621056, "statCode": "oANnZyyteO4UIJvn"}, {"inc": 0.4692762280030607, "statCode": "XAyjbLFhdyte9hj4"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'fMbTLTmbth7Wezqn' \
    --body '[{"inc": 0.27195027789245874, "statCode": "GRVTlFlN9UlYPdrd"}, {"inc": 0.45247280834428083, "statCode": "FYEjAlxLRYBu4WAs"}, {"inc": 0.9316641305896802, "statCode": "gcZUOBWtpJVfTk1e"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'RWWz6KQer7CpJv1h' \
    --body '[{"statCode": "vCYqCfPPG2G87I1E"}, {"statCode": "cue3rv9hTCXmb6RS"}, {"statCode": "Qt4qvjlG6tGGkzXQ"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '779ZaHOXxzHDoqJE' \
    --userId 'LTShj1m6us8eVEAd' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'F2juhDo77FQDBKoS' \
    --userId 'XOOmDKodLPubWSd8' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'AtpOsridPF9Njidt' \
    --userId 't5Vy4Uf4WuOfFBOw' \
    --body '{"inc": 0.7290830623685406}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'wleGtRVfPu46boNz' \
    --userId '1XQVKaXzchVAO0Qj' \
    --additionalKey 'VSqCfuGlwgLmsM3S' \
    --body '{"additionalData": {"dst3PyMW8zfVy0om": {}, "IbfRpSyjapRnHpkM": {}, "MlSEoNZC08EnDOiX": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '72' \
    --statCodes 'KXo7XpkZU3rktjKd' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '9S7xcROMpHOpWGEJ' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '84' \
    --name 'KzilSL0yPm3hz43M' \
    --offset '23' \
    --sortBy 'bylYtpilbzKRUFgE' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["nQ0RQgSvrSxQeAnF", "TH7TYYeyN5yZtFrb", "PTyjaIXszTGrlKeg"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'aTiuqXK71LUjLBps' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'on7lGodIlMnegPYJ' \
    --userIds 'aK7uK7APQMLPD2hf' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.938705078855339, "statCode": "qqc3rVabOpWyXG5M", "userId": "1VGiAr9VgKJgUXNd"}, {"inc": 0.1953860767021386, "statCode": "nhGmoZAmfg2TCylp", "userId": "MGT5evyvpzUg9CA7"}, {"inc": 0.7107523244876144, "statCode": "MAs1kOX75xnYunt9", "userId": "Cle3aCuyxhme9aM3"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.21079608086272306, "statCode": "myvtnNsY9yVbkpIX", "userId": "oBxkUYujCp6rYlEH"}, {"inc": 0.26811546251073504, "statCode": "IHiyPO82bteMlMxM", "userId": "9kHbIHbRDcoOTkKu"}, {"inc": 0.2925254968740161, "statCode": "9XmiQmXQPWYHJ60W", "userId": "e8dZcSW9NktYs5az"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "YbjoZbC4HEI2EW11", "userId": "GQ7xhO16kGCsJ2gY"}, {"statCode": "HgkDQeZpS9I39qIV", "userId": "iqLbsFxfAL5UkR1p"}, {"statCode": "x1SHipEJ4tUFy34e", "userId": "QuOjQoMkajfWm7Wt"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["0YJlsQwQEbv8OUx5", "34p8MP6eZMSmtFzr", "8Mw8nmExqUazGhXJ"], "cycleOverrides": [{"cycleId": "EuH7vUX2exqfkzIE", "maximum": 0.8797221166708078, "minimum": 0.5649681484270909}, {"cycleId": "GVOZe8Bc4hip9Kc3", "maximum": 0.43452232214149344, "minimum": 0.1641487307473517}, {"cycleId": "abqAwa98slvFwb8m", "maximum": 0.03343243735981938, "minimum": 0.80079429261097}], "defaultValue": 0.9403649058367313, "description": "0edEb3yaSdHkNNug", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.3483383126267505, "minimum": 0.03049301860944509, "name": "7zI7HJ6i08ixFkgA", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "U3jbemkeSaHWXePt", "tags": ["11MYmUkiMP6wGUvv", "EkT4cw8HmtBWhBaE", "AxBGwOLnIENiravt"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'YZGYr2figgyAZZ1H' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '38' \
    --sortBy 'hc36yx1NWZ57eggf' \
    --statCodes '["k1cTAHqhcKZWZIn4", "tVJ0VNJR8BJhdk7y", "rUkC9DKK9TkrIJv0"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '95' \
    --sortBy 'G0Gyp2VXCMxw5hDg' \
    --statCodes '["82qLZ3bpmnHoRfKr", "wyhudSptZufHE7Nx", "AeAG26DQogu17PIy"]' \
    --tags '["zTf3XFfA9e7QcQCV", "Hu8nKxXau4CuWb0b", "7SdHClWmCeIwNghs"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'A75XOnHfJJUw6Gnp' \
    --statCodes '["L8I8aBlnp2FScJtu", "dyLA8Oiwl4G7UOfy", "quzIspanTXDk2LhU"]' \
    --tags '["esfysJAxTnDdQ5q4", "Y280kmnecjmR57I6", "zlkzVqlpXdZu0db2"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'pGVX9ZlcoohdA6Ps' \
    --namespace $AB_NAMESPACE \
    --userId '3ooI8T3ig1JQOfcC' \
    --limit '48' \
    --offset '89' \
    --sortBy 'Z7cuXRUvO9RisI5X' \
    --statCodes '1pUzz62d2QhXjT1k' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'ygCghOtqVxVdZ15p' \
    --limit '63' \
    --offset '30' \
    --sortBy 'iBcCxN0mqkR6lnPN' \
    --statCodes 'frbmhRdIjR7uVnho' \
    --tags 'y4rGnv4KmVDdV7GH' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'hedazAf5wVy5i5BX' \
    --body '[{"statCode": "ysTnON2luhozNbuP"}, {"statCode": "lvcd0Cxad2pXSYme"}, {"statCode": "IZtKrd3ZevE5d2Ss"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'cO6lPqHv9Up6uTW4' \
    --additionalKey 'IlXZ80QOrSLSFw9w' \
    --statCodes '["CjAjY2TGGN9KKOSg", "Ul81anFm0Npi9g8W", "Ccx15OqcNjA6L3dB"]' \
    --tags '["4lmEPMFRLyLcVLyf", "IHnuRP9fw1Nnj5jM", "ngwq2JcyGoPrK54Z"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Vx8ONWBnAufjUF5f' \
    --body '[{"inc": 0.7532201924229348, "statCode": "mxIieWPCganrCVpA"}, {"inc": 0.22349350269359636, "statCode": "m7t8fOYfLXFI4Sok"}, {"inc": 0.6510867894904705, "statCode": "sWugVFpSs5TiKK1e"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'mvdCsc9JgKIPhMvN' \
    --body '[{"inc": 0.3504899502926794, "statCode": "e4GtxXE5mv61Ihx2"}, {"inc": 0.30721053273662524, "statCode": "UOl1LdPpmG4pzgII"}, {"inc": 0.18611952829121436, "statCode": "0DV8L5wD4BQNYAuO"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'N8pxF4W8PhZh0dfT' \
    --body '[{"statCode": "SPkMKlxS62tWmrow"}, {"statCode": "cwv6TYh71LQmgpAx"}, {"statCode": "1jBzXqOU3c1dApqB"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'n5fHVWk1iNjDUJY8' \
    --userId 'CGF8vKzD1hBnkJWh' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '8AF3Ax3mSPwgA9qd' \
    --userId 'y42bi7T3FNtqfo5f' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'yUtmVwobkiaWRmun' \
    --userId 'wbQ2IH5Iz0RgLcMD' \
    --body '{"inc": 0.5271481306798417}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'cYOb9qUnRKCaN0LP' \
    --userId '4eMIOIonIkRciRQY' \
    --body '{"inc": 0.25113675781649103}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'iivfuFUtJzVu5i1f' \
    --userId 'pn4EeXYfcPkANMbD' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"4YmkXhVmjzGo1h2W": {}, "XB3xCZ5by2en1n5l": {}, "5TF8vz3HY9OXBLaj": {}}, "additionalKey": "uMp20mecfhysA3st", "statCode": "2QSzefzZgA1qNnbu", "updateStrategy": "INCREMENT", "userId": "lJbkGNqFe2QOBorb", "value": 0.24380074746891356}, {"additionalData": {"aPb4zv5E9eYf1PIE": {}, "iA9nsSxHGyNGGreX": {}, "BFlWQtbcCmSOUWlw": {}}, "additionalKey": "gNulHSO26KzUvOwy", "statCode": "ImknjByHRolQu0Hv", "updateStrategy": "MIN", "userId": "OuI4pQgr1puN7QBf", "value": 0.03199969999441443}, {"additionalData": {"cUwX3zupYs6WQZSB": {}, "8nZK7yfYPGQAjjqW": {}, "0sttzh0rFMlhgL3Z": {}}, "additionalKey": "KI14IlneYc6Acuay", "statCode": "oITqYbP1Ef4hv7yv", "updateStrategy": "MIN", "userId": "SiCOmBwxjg1YIorj", "value": 0.0955782594453749}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'xqUgEOngYELlkg50' \
    --statCode 'TRXYg7Za7lMc8kaZ' \
    --userIds '["5JlQACPBa8gJRZdP", "ZejN2FbdOI5elDti", "tnWWA0vx92AHbv7H"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '7Bm6H5YqQKdeEeTT' \
    --additionalKey '8KTqqpqVBW7G7HW9' \
    --statCodes '["KhrVuwxs1QQS5HXQ", "egNjEqAL9AgVKQbx", "uqvjoarVMrUJkfvX"]' \
    --tags '["mKAaD0S8LknVvh09", "8IE1cYrvmXuDNPto", "J1S64cxCnfqRpoQK"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'jsdb4L0P8zsAsxWS' \
    --additionalKey 'B7bDblOA1HUaY75N' \
    --body '[{"additionalData": {"uKKbagUjbFwDgKPN": {}, "1T2DVQsrxbeUqp1t": {}, "i3vmYh90Gw5PUrVU": {}}, "statCode": "paJPNAdHccpIUxng", "updateStrategy": "MAX", "value": 0.004345172667534647}, {"additionalData": {"JjOq6y7Z6fkY2szz": {}, "ZMKoq5fQmbROb0ne": {}, "KiFVmECMVI0aOmVF": {}}, "statCode": "q3bVxMc3FEL9o9A0", "updateStrategy": "INCREMENT", "value": 0.6885341576129208}, {"additionalData": {"XpVag5OzZumsF6kb": {}, "thPMmDJWHptbm6nu": {}, "P5UbQmxI0eYWfc6v": {}}, "statCode": "0NlNDoFDeH7QomBm", "updateStrategy": "MIN", "value": 0.21228215464932065}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'jtOjU0bCzVrn7x31' \
    --additionalKey 'WRDjaRO5cGtrxh6d' \
    --body '{"statCodes": ["SDVZ32cIyXIfmRGR", "Qlt1W8FFJBI4Nx3t", "2QvKNYAfTbI3dHdp"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '7xmjS9PYimBW8QpI' \
    --additionalKey 'wCtvDemkqKQXcat0' \
    --body '[{"additionalData": {"nLYpRShGVMn8wvnt": {}, "J7NqnRZAiiNoF2XZ": {}, "kqvpToUb87bx9GVg": {}}, "statCode": "7EzWbKHaovRKjYwa"}, {"additionalData": {"tE6RnwgTw2hNQXC5": {}, "TnHHBtdOS8uSZthh": {}, "eUDDE0aQal4XvAEr": {}}, "statCode": "Ea1tqOoHyiG0Seu3"}, {"additionalData": {"sikLWdH7nk3PuZcc": {}, "pP4B3vlMCdWMSAtu": {}, "AlYa5Sk5uD0wK6HB": {}}, "statCode": "W5fMHBVeOIM3RJz8"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'cMrg2EWvGi5aUtxd' \
    --userId 'BuamVZn1HwE1C6qB' \
    --additionalKey 'Uzpr4YbW0nD0YxL9' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'mW7XICx903HRAA7P' \
    --userId '9N6CMcuyV7ioeJeY' \
    --additionalKey 'dHVT8JPAoqPOhbwP' \
    --body '{"additionalData": {"qB7IBErnsRBh8rKX": {}, "jRvky6TWgDUDP3IG": {}, "zYo85t42WOzfGDCP": {}}, "updateStrategy": "MIN", "value": 0.19135278363972574}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"oUHdQ4Wnt34kWnGc": {}, "glTF7oBf89sXHZ7l": {}, "HSstOOpPirx0nifP": {}}, "additionalKey": "JAILl33Jys6emJQW", "statCode": "UP87nj3oAglvq8Mv", "updateStrategy": "MAX", "userId": "6z3dSG9kaWQf26ve", "value": 0.23294351894816168}, {"additionalData": {"b1rapyDhuBNXsH7E": {}, "aJ8Rk4QGbCJKOs2P": {}, "cswheAxI87dDDW4f": {}}, "additionalKey": "q5El8h7YUB5vPbAG", "statCode": "JHA3Se5z0N6ZRZaG", "updateStrategy": "OVERRIDE", "userId": "HsD3gk5yTwn8UzG4", "value": 0.37924710800625083}, {"additionalData": {"ny11buUHI9Po3Tr0": {}, "yrvIL9GdXf6mqX2b": {}, "mKZjVDBANLfTsOnW": {}}, "additionalKey": "n87OJAKdpUTRRomW", "statCode": "Llejg3bBKSWPIPrs", "updateStrategy": "MIN", "userId": "TMReaXzT1BtU8PMH", "value": 0.8020716828410012}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'kTVzdNzX5wptjF6l' \
    --additionalKey 'bXF7DeY9p4J1xJbZ' \
    --statCodes '["4CtYAGKBlhPK1bqz", "mNcXlu1OkERapBZH", "6nxZENP6JC3vAhkd"]' \
    --tags '["b3WNgxlYpUIiG9wp", "aW0vrtlezeatbLtt", "t5rwBMfnjNttJHbP"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'I2PPt5UeltQjrKvm' \
    --additionalKey 'eNtWPMxc4S6kFA1m' \
    --body '[{"additionalData": {"0WU0GMgcA1EquHpR": {}, "GdQXlCCTEyCt4d8v": {}, "Zc5JZOZreRYIk7IR": {}}, "statCode": "J84YNhTRmmQsxbLJ", "updateStrategy": "MIN", "value": 0.4869128502944051}, {"additionalData": {"bWIYAbmTWkflH1jh": {}, "ROaRyJ1IRKRjaGFG": {}, "NtQN0KVeh4hO0ZAl": {}}, "statCode": "W2GW5ATefIy3L82w", "updateStrategy": "INCREMENT", "value": 0.089077788684234}, {"additionalData": {"U5goNVQKblliJwMo": {}, "mPIEnoV0yl8iHHxo": {}, "DVDkiBHhj2dOQlHb": {}}, "statCode": "HXHaFk4xLLcyfiqE", "updateStrategy": "MAX", "value": 0.7668657706367447}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '8C8aorlw4k4XooFZ' \
    --userId 'XuNBeCMfBWwL6pU9' \
    --additionalKey 'HJLHoLwA7eDl2EpV' \
    --body '{"additionalData": {"srr83UdfwT9Pj47R": {}, "cagf888ooEuCqztq": {}, "ZtsNlygfv1nCrh4D": {}}, "updateStrategy": "MAX", "value": 0.11538890749857833}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE