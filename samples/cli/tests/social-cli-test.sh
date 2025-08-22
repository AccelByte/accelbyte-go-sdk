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
    --limit '34' \
    --offset '36' \
    --statCodes 'KctSk4HISYlZc8It' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'joXIh9WfRePaQoX2' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '55' \
    --name 'R6xu22vEQWQpjEnC' \
    --offset '93' \
    --sortBy 'LFJBpoZNtDrwUlJA' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "yPqD3LQk5Mkep5sv", "end": "1997-01-23T00:00:00Z", "id": "5W8dUPUOGTW7lNrh", "name": "5tQqwOhoDYeo2Z4Z", "resetDate": 68, "resetDay": 36, "resetMonth": 22, "resetTime": "RPh6Ahhvu31J22Mq", "seasonPeriod": 59, "start": "1979-03-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["3sxeoccOSwItNU85", "A3P3GbMVm2HzQbgW", "EBPdEkAeybTC1v7Z"]}' \
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
    --cycleId 'oiAMEmwpCOvKaCVL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'Il2ZrPCWHqqn8YDh' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "aQrgJOilND5Q5lQz", "end": "1984-01-15T00:00:00Z", "name": "73FtZkW8Vq4onRJl", "resetDate": 34, "resetDay": 43, "resetMonth": 63, "resetTime": "OFOwteTskyHAvwtX", "seasonPeriod": 44, "start": "1994-08-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'pKoL9VnGKgeLMwc7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'g6gEUVJLOOx4kTDt' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["HMjBlcLTMNnnygne", "LxnvhDs4ruOTOMIm", "XlZMlsq62D1jJaak"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'yl8nssWuxx4tg3gO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'jukaipOAyOdToJ3Y' \
    --userIds '8QSWVnPo32irCDA0' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8163221524855387, "statCode": "EkFffv8IwylBi1hr", "userId": "vqAON26ZVKY71NNq"}, {"inc": 0.26481166979567106, "statCode": "OFx3JANpeLAWGJSG", "userId": "skw3PPJFdMlIAQf4"}, {"inc": 0.252591624286453, "statCode": "sNUzDbDbcLDv7oNp", "userId": "hIxTKrtcrMdk84Po"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.46920945800250846, "statCode": "tNYnE2NrlfrVc2Nd", "userId": "80WsVA3Au1SGYlg4"}, {"inc": 0.40985730458942105, "statCode": "VrXY1UlpAL0faeOQ", "userId": "mifVELiT0SwoUW1u"}, {"inc": 0.1514449779959942, "statCode": "fs9UcwyLm7iDeyeN", "userId": "erkBE1rZ0d5aoqfr"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'knSAET7nPoSjUtHA' \
    --userIds '["xT1tlR5DdPNb5ng4", "JdyAo4KYJRaQJPzm", "pfxFD0Goa06qT3eC"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "XGgEwp8JqtEaRLlo", "userId": "UwsfjBOxkn3NhDFA"}, {"statCode": "aWjfghm0TdXfzSAB", "userId": "e6RNJW6NJ74v7Nmv"}, {"statCode": "nqJ1jtCTuJzniDt9", "userId": "y8hIlV8UAomiVQSE"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'R8k42yvC8Ds6PCxS' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '32' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["HIhS27wD7qo8S4Rd", "zO6tj5uICvADdgGv", "Mfc4SG3qXLoMDPdf"], "cycleOverrides": [{"cycleId": "49xSka8WG51ZEXWy", "maximum": 0.37875917848343255, "minimum": 0.6555400193435599}, {"cycleId": "HbHGUvtyGKjZXzOA", "maximum": 0.9602393902359181, "minimum": 0.2696315116501743}, {"cycleId": "uOIVqGdjWBTh5Xg2", "maximum": 0.46480371417831556, "minimum": 0.6739868889106155}], "defaultValue": 0.18962494879249348, "description": "cBfFfVWEBpnaqhxY", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.29413463008727037, "minimum": 0.30316966536833223, "name": "ZZsRBoLyFeSMCGru", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "UZTLI09NfRhi9fCP", "tags": ["7qAcmdBXzq6Mgcvx", "XUTqFVZZhkgPbZSz", "xs5Rs8sFr6w9WVeN"], "visibility": "SERVERONLY"}' \
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
    --isPublic 'true' \
    --limit '2' \
    --offset '59' \
    --keyword 'Vx7Ad4VHpi4ZeJeN' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'G7SeWLjcuCLs7XDJ' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'fCpfwy3BuNSRsARA' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'YvxfA9kJsfWR4kfk' \
    --body '{"capCycleOverride": true, "cycleIds": ["xB6weId6SLN9Cf8h", "aAmKJQEfPaCi8IeS", "XPia5rvmmLdmZau1"], "cycleOverrides": [{"cycleId": "Ope6NuE6k0xWmYz4", "maximum": 0.24130174103910418, "minimum": 0.8202044565120371}, {"cycleId": "dMOCGnYUk96SMtd1", "maximum": 0.5196379195863619, "minimum": 0.8576137938441782}, {"cycleId": "UhKIwTlOhYVk2XGK", "maximum": 0.7482940604034252, "minimum": 0.9864486957988547}], "defaultValue": 0.36103094042674844, "description": "EE7uoVJSF8uzoTHZ", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "18GBnCBPNuky0CvK", "tags": ["iIPLxcXNs23FMRpZ", "m0NsaECU4tkGOP7k", "8X2lYelGwms9Ngzi"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'wePKRutGEStgD1fA' \
    --limit '50' \
    --offset '62' \
    --sortBy '8KUcLb6zSPswyRuz' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '64IdlJmW6EtI4W5v' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'tkHchie241br6U2O' \
    --namespace $AB_NAMESPACE \
    --userId '5vhNxMcFzBI6DyeM' \
    --isPublic 'true' \
    --limit '39' \
    --offset '21' \
    --sortBy 'a87LaslRqhilGswD' \
    --statCodes 'AZ879s8ZqG7qx2oV' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '1KXMMAKsFHgfEzZk' \
    --isPublic 'true' \
    --limit '0' \
    --offset '81' \
    --sortBy 'w4tzTWBSFWt57Kra' \
    --statCodes 'qOBeReUZLbaksesL' \
    --tags 'm7QlrzQBIphhFcnu' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'eL8QIbbETOBRajvS' \
    --body '[{"statCode": "usNadnJHK6D4nTDY"}, {"statCode": "kpBgscJMSpKg1Fz4"}, {"statCode": "d4HFWBSQLwPt5UpS"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'fHR3ZVkEZkW1t8ah' \
    --body '[{"inc": 0.26546598477519867, "statCode": "MxDOhAew1m5s6mqx"}, {"inc": 0.18618516667118046, "statCode": "QfvfgDvJ14g3YirL"}, {"inc": 0.956155795266728, "statCode": "UljdbtL5fJeEo88T"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'tp94KVTuUYT4LVjC' \
    --body '[{"inc": 0.14334311374964082, "statCode": "FjWIvJSdEl12JCFd"}, {"inc": 0.5140274558937633, "statCode": "qzXY9QMBcXHy3pZy"}, {"inc": 0.9999801292375327, "statCode": "5X55y11EEBJOL74C"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'dnXtSvrHKhVTkS4O' \
    --body '[{"statCode": "057DpDORBqbBoZhp"}, {"statCode": "gDeE7SaHakcV4Fvi"}, {"statCode": "gPEOfHYlD5Tv1SzT"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'vJQbnen4TbJynYbw' \
    --userId 'Y4qbvDz8WXBtyB0z' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'dH0wzVvGpAQvo4vp' \
    --userId 'PFkL6PQdJxQOM2xc' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Lq57q26tPBoHrXlA' \
    --userId 'Xzj8clRVjLuGBYKz' \
    --body '{"inc": 0.5906966006833699}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'GZvhaUMFYBonoVq1' \
    --userId 'ebs5611uDqaMhaeE' \
    --additionalKey '4nnF4F6iJu0jG92I' \
    --body '{"additionalData": {"xzG6gwmdZKDSJ4w0": {}, "hD0y8qUVlHm8bQij": {}, "eyz0fJjkMEKPmt5R": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '46' \
    --statCodes 'hAq2kA6aUyYZzrQB' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'YUluxpEuZ4bto2ch' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '99' \
    --name 'fO0YNKGeJ9AmCq0V' \
    --offset '51' \
    --sortBy 'aJytUQjpZ0JA3wXd' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["o5PIppxT1UDGbdCj", "yA7sVrhsw3pVsYbg", "3LgnxfiXkwNKAVwd"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'H7Jo4N9jDJreBBxh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'FDRtf0CIxiLbmqOW' \
    --userIds 'Okj711zuhu4PIohJ' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8094085634256908, "statCode": "johRIBNlmIskzW3e", "userId": "HgasvzkC9Xx5lIAf"}, {"inc": 0.19077389266465783, "statCode": "s8VBAjdYv4ayXD2o", "userId": "rPprlDV7R6GRHhvw"}, {"inc": 0.6675595031071863, "statCode": "dxT27gtCH8vX0vtq", "userId": "vMeWFyJ4xTgXFdTn"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.37145447068503756, "statCode": "kJ7LMqC2LPFliDIl", "userId": "Gp7Qk6o0GWRZ9W7h"}, {"inc": 0.10127299762307052, "statCode": "X15YQED8p0QrTRsW", "userId": "TAxNlXpR0CBF7bfB"}, {"inc": 0.7101617263374777, "statCode": "hbCvr048VJcUTrTx", "userId": "lchhq8HEqT8u7ZZl"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "jCauIT8BqN0221Gd", "userId": "WLozjCaeam0sYeEU"}, {"statCode": "kLY8sBX2pQ6zHmKB", "userId": "bX14os5V9ZrC6sjo"}, {"statCode": "IvG3oKpzk5PbhNfj", "userId": "ZT2vdQmYQDVPuskb"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["ooI5RFQSp9I9F8tC", "2yy5uMyff8C8u4UV", "PH3iI1iQPLW8M0xZ"], "cycleOverrides": [{"cycleId": "3nOmVK9KqGv46Qpr", "maximum": 0.1388003120654685, "minimum": 0.5333401593418559}, {"cycleId": "J6TO6GaS3u47sVN0", "maximum": 0.31901387075618415, "minimum": 0.6502327193416862}, {"cycleId": "mdyjFfSKornUpn9R", "maximum": 0.007816123153354448, "minimum": 0.048288673770908175}], "defaultValue": 0.5710117891977163, "description": "QD1omhaljKYLm7Md", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.5436226631466525, "minimum": 0.8849598846041056, "name": "X8fCjzHs27vd1VPP", "setAsGlobal": false, "setBy": "SERVER", "statCode": "Wnfq2zx5M2lPYcCy", "tags": ["n24FpqS67tuE3f4U", "JWq0wLKDGdJL2Lcz", "qzVQkRxsxcrbiXEK"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'wRcy42SLDmll3RIY' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '8' \
    --sortBy 'gdnIzFXH0ZztyAHC' \
    --statCodes '["vf0Oup4KxmD12EnM", "8HkfAnmEnhhNTPDG", "nFdKpURtDKVWjAPG"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '58' \
    --sortBy 'qQhb2Tta86a1xiTF' \
    --statCodes '["GPqwo9GkJu9aTkbO", "hO62yRssKfP3dIx4", "yqIFp8BjiiIqmLA6"]' \
    --tags '["ERYkwuxGwqPTWFxt", "Tec5TnMn71dtzE54", "8vkqOQXH6p5dkDot"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'aL7edorwTXG5OwOj' \
    --statCodes '["sVvzcgTmHqcvcu6o", "bvaqjMYbYPceJhXN", "CNG6aDWNlauSMK2e"]' \
    --tags '["QWOns2mLkNofLqOc", "km8b9I7EWdk5dKvQ", "CiODXtBEZcA3qYR8"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'guXrlTKP5t2F3cz8' \
    --namespace $AB_NAMESPACE \
    --userId '8Z4q1lhU5LjUldKO' \
    --limit '10' \
    --offset '59' \
    --sortBy 'FcA1dmGLUtvqe9wF' \
    --statCodes 'KWLjrCzIV31npi8u' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId '1yQffBRWnWCPnCxb' \
    --limit '65' \
    --offset '16' \
    --sortBy 'X2aBUfqRWghEpf8U' \
    --statCodes '8bXzaxza1beytKci' \
    --tags 'P7fN0JZYDN4PadeF' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'j2W88Z2ZkiWfQXo8' \
    --body '[{"statCode": "4B4bWVSBkuQTpShH"}, {"statCode": "su6yn9jukZ2LggeS"}, {"statCode": "a1D5KkduEVwAd3Lh"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'rRSHI9Cn9s7h3NxQ' \
    --additionalKey 'Sff2ddRaORXdXDuM' \
    --statCodes '["XjAqQ94bEKZvnP1o", "wBfVz5pkaKFxFUYK", "1D2dvqC8KN4mu7Na"]' \
    --tags '["zAyJYw0d0ZlP6Y1h", "apces0vS18i96ZxM", "XHRM97S0JoHtEJI4"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '8Yv7908zOd7FCaFE' \
    --body '[{"inc": 0.24577868822505855, "statCode": "TOjwhIlhCW0Bradl"}, {"inc": 0.007874583782137679, "statCode": "gglKpf0iBgM7EGNA"}, {"inc": 0.04535078165062989, "statCode": "XzwjV8m3tFeUzgXF"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'lnzCQ93aZePAjHJt' \
    --body '[{"inc": 0.5997954026314158, "statCode": "i50CX5Jk3FeqKtb1"}, {"inc": 0.7086029540904639, "statCode": "fDj3Aj7voacGvjPV"}, {"inc": 0.08387919219047657, "statCode": "ASsJIHXrwJxipg9V"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'mZ5DChkNktUVcAYK' \
    --body '[{"statCode": "wBbDjnnIhND43ukY"}, {"statCode": "9PbWHHQhnzNC73VE"}, {"statCode": "Hi2gMLNUifRXpsYc"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '8PVgAOY62kopfJ7H' \
    --userId 'HA9cg37fSne51n26' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'sDfxPHNWmch3vGBG' \
    --userId 'JDGLIDXGI8iUKvqK' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'QLzx3ZYIyqlkAtaj' \
    --userId 'eBqLE2g8CNEsaGaQ' \
    --body '{"inc": 0.388688855375361}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'FPVUIxwYuyLgGuM4' \
    --userId 'ANBee2JuCyvuChWu' \
    --body '{"inc": 0.719994814182929}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'h0pMq9nPmvGdC2br' \
    --userId 'QokIM8XKNsj1Qh0o' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"Jj582pnhdrwesuwX": {}, "qw2OezFjwicQx0E5": {}, "gYAAdxbiuK1XEihi": {}}, "additionalKey": "C8QpBvuiJIFWA6jE", "statCode": "FNTmgVPyevgwMVfD", "updateStrategy": "INCREMENT", "userId": "JwfF11eibLznIWeN", "value": 0.6451068357716854}, {"additionalData": {"4bg34kMEueN92L63": {}, "NIu7iYvletdHt289": {}, "gQfFv0PljOyLRdgp": {}}, "additionalKey": "LaAMNK1bCY5OGNOc", "statCode": "jCG5SPIestlb6hNN", "updateStrategy": "MIN", "userId": "rX318vUPWMT25h0r", "value": 0.5304747346991744}, {"additionalData": {"BnvaxKMrgudyvRrB": {}, "LtMboxCL7puQHhAl": {}, "tmGXEvUio7WzrnEK": {}}, "additionalKey": "u5zAQNYWG3Q4hhnK", "statCode": "leaXsTitPJNtLaEF", "updateStrategy": "MIN", "userId": "jGfxbsaqKW2DrRfi", "value": 0.49465338781355583}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'Mp3cMsrLMR8ue41V' \
    --statCode 'FsUNgSLzqNjl4lnz' \
    --userIds '["eC3nl5UwYo11ld3Y", "pCui6YFQ0Oq4Hh1H", "9UJVHmTrdp7e3Okk"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'gRQ5Q6bqTaXiy6Qt' \
    --additionalKey 'Q0JsLaTvWR5k9KiT' \
    --statCodes '["1nSiS2lI21BIuPsD", "ZzvWjRvfiErrZX37", "ls40mzf6AC7RjXQp"]' \
    --tags '["3MmuVbIBhDb6on5U", "RsruyOhwHV4T7Mn0", "28JcCc7irTQ9FSic"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'ISggm7r1syDRyL4S' \
    --additionalKey 'dEZ1YrYn3h9BZ29U' \
    --body '[{"additionalData": {"RuzKP4SOyMcoAyUz": {}, "XWwz1S7hh0bo7Cn1": {}, "N6JBoyDzFrkAjYYf": {}}, "statCode": "CtolRk6o0aFAXmqE", "updateStrategy": "MAX", "value": 0.800048000897168}, {"additionalData": {"CpqHvADgR6lv5dTY": {}, "bOsAHir0cAJkAisv": {}, "pj3Q6kGmKxENhOH1": {}}, "statCode": "QWWK6eT4wic3Xt5H", "updateStrategy": "OVERRIDE", "value": 0.9922447094400088}, {"additionalData": {"me2vUyOLC8Mf0rQn": {}, "1OWYn5Vuw0MiuPAl": {}, "H0nLUdMe8nawBoWC": {}}, "statCode": "Ys7EOFIULFSQizRv", "updateStrategy": "MIN", "value": 0.565239694374758}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'xWusDHaBwZSK1W2J' \
    --additionalKey 'jzHJD5oZYCRRiopN' \
    --body '{"statCodes": ["suhC1riIahlBoVSb", "xl5COInbEG4SOWRO", "UE3QRockfcSJtEmc"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'gd3M11oz304Mz24J' \
    --additionalKey 'BOOuZRTDAAbdEXlY' \
    --body '[{"additionalData": {"Zy6KQiptEyLSFURK": {}, "OiFnCyHPZav0pZdh": {}, "545TbzmWaBsDTYiT": {}}, "statCode": "xUhj2Nd17yKO8Wvh"}, {"additionalData": {"ByWEFnrycOBXKTkW": {}, "A3YgBIkwQDtqAabU": {}, "kHMqHAxTyxKziLjW": {}}, "statCode": "bU8i0ihQZI8g1LIh"}, {"additionalData": {"eRiuaxW1I9W69FUq": {}, "gtUbcojOTedAGIeR": {}, "LbAoVybXRhe0LYUu": {}}, "statCode": "pazBfbB7t2yBMlk6"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'Ff3K53U5aeIsfhg0' \
    --userId 'c1TvOQR4ch76Chwn' \
    --additionalKey 'MBMRZPdiQMlwpoPn' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'xyPtcLXVenJujTtY' \
    --userId 'XvVLSRcVwayuXe24' \
    --additionalKey 'Kzq0P9hAzU0W3fB3' \
    --body '{"additionalData": {"XW7ubNmfKIqGNM6G": {}, "UaDEsoHOuIUZnTK1": {}, "iXxWCja7l9JXVn2w": {}}, "updateStrategy": "OVERRIDE", "value": 0.7814497191731261}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"bqUW9gLrGtrsJa0k": {}, "EuTuXRV8EwOf6h34": {}, "d1JvlbY4yHCNahyY": {}}, "additionalKey": "ZzUuV6ugRD7xGo9z", "statCode": "GTmRpdNxAY7wVO6O", "updateStrategy": "INCREMENT", "userId": "Kmxc8JHIUG5gExbe", "value": 0.6005486355122076}, {"additionalData": {"PBtvaxrEk8zvhwVV": {}, "LQKd34CB65Zbr1hj": {}, "bPqVGOgr18F1QfWi": {}}, "additionalKey": "aWrGdgqVDHc1FTwW", "statCode": "89CaQkfMxybwptYp", "updateStrategy": "MAX", "userId": "hDALADgXxXOFnXYX", "value": 0.6745566330333581}, {"additionalData": {"7YpgIwj6FxZI9sV5": {}, "OBQNke3I4Z6LMAnu": {}, "34FUFsG8A3atSvbz": {}}, "additionalKey": "jH3VihAn460ARVgo", "statCode": "TT5GjNOf5oNeMKoZ", "updateStrategy": "MAX", "userId": "7icmR3V5TQyVNDtO", "value": 0.5108814525861773}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'FhlQSgHXUk2saMjQ' \
    --additionalKey 'VQMQHnP5QVYB1wu6' \
    --statCodes '["cFQSQjF6tryEl8GB", "AUeScNsZlFZxQd4b", "UgPRjlG5Gec6Z5dk"]' \
    --tags '["UjotVTOCVymP1Y5G", "TZOXITLz8AYm10lc", "PdiC0fVwEGJFW61h"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'IpcicH1IgXqhTHBW' \
    --additionalKey 'CcUoqMYcqdhQ66Zq' \
    --body '[{"additionalData": {"66GAHmsjze5pVAzI": {}, "PnC2gQ7SC8jfNBQQ": {}, "RsZOWqF5ZmIhkACX": {}}, "statCode": "PGTNAqeklL9Svfbq", "updateStrategy": "MAX", "value": 0.7929467123670757}, {"additionalData": {"dqpittf5iJu6ZIF7": {}, "Z8A4uBpzO4tttJug": {}, "mTocfbn1HH1wZ2gV": {}}, "statCode": "bSAHQaMhTrrR5Hfa", "updateStrategy": "MAX", "value": 0.07088970425280905}, {"additionalData": {"Y7k3HvutTV5coLtF": {}, "sJMJOtqv7ZLj0ZzM": {}, "fjVGwgVtqX9iyGls": {}}, "statCode": "OXzmjj7EMrDhfFaw", "updateStrategy": "OVERRIDE", "value": 0.031645300586754965}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'U1uupzy7tariR0CM' \
    --userId '5X9LiERYiUAG0H3t' \
    --additionalKey '8Gvz4wo4EUnMCJeN' \
    --body '{"additionalData": {"IgOqNkQ1LxlfkI8R": {}, "4T1c3x5B0LETX9ip": {}, "gBXzn5sS58AMeqQR": {}}, "updateStrategy": "MIN", "value": 0.3792407135101208}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE