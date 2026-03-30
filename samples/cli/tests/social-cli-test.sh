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
echo "1..100"

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
    --offset '71' \
    --statCodes 'LkVcsKu9ygKmOvRh' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'lEn2LSFvTr7oMRJW' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '67' \
    --name 'lHP1c9CeXddL82h6' \
    --offset '8' \
    --sortBy 'pRIp07k94kYlL56D' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "zkgQ9kqlaeXc2Egj", "end": "1975-08-25T00:00:00Z", "id": "MWuClE1Pa3ZCGzOz", "name": "B3LO9AGvw7mYsgwQ", "resetDate": 8, "resetDay": 63, "resetMonth": 30, "resetTime": "bGgN0xYZcJWl3PaL", "seasonPeriod": 52, "start": "1980-09-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["QJng9sfqVaj8356A", "2TgVYDL8tVGnFYGs", "IfqAX0gpCfQPzaQw"]}' \
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
    --cycleId 'tfGx5eIBnqICGomN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '9j48CRpnsP66YUcI' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "f2TTcIgSeUlw0dnp", "end": "1978-10-08T00:00:00Z", "name": "7n2VOJ3Njth9ASCg", "resetDate": 26, "resetDay": 39, "resetMonth": 6, "resetTime": "eTlbSOL7McZkTGjz", "seasonPeriod": 35, "start": "1996-06-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'TSq4dRruUcZ8o0KN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 ResetStatCycle
samples/cli/sample-apps Social resetStatCycle \
    --cycleId 'aL1UX2ssX038oBtv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'ResetStatCycle' test.out

#- 37 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'arN7xJqn0xqZRSiY' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["CpoojGxi8jMWluLN", "PYBEeU1Nwhe01JlC", "6td0cfIBxNPzFIse"]}' \
    > test.out 2>&1
eval_tap $? 37 'BulkAddStats' test.out

#- 38 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'sBegH5SeHHzx6LBL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'StopStatCycle' test.out

#- 39 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'u08R95T1q2oxCbtn' \
    --userIds '0H2FND5eoZAKMJzO' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchStatItems' test.out

#- 40 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3373398645356239, "statCode": "9wjZ4bZaGBJlTmrT", "userId": "d3xlWJKntwSiiTX9"}, {"inc": 0.7395167535895394, "statCode": "bRlD2r6x8EQUxXzS", "userId": "YSF7MoQFQfBS8rKM"}, {"inc": 0.2356444064779072, "statCode": "5EN6OLIqSq0ess6x", "userId": "u53HLY7JExnBM1kD"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItem' test.out

#- 41 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7441666971238041, "statCode": "1Ul7znmepqHKL63S", "userId": "78QTHSBzj6dyKvIc"}, {"inc": 0.11638155786516124, "statCode": "RXC6AKTYC2RdUYYo", "userId": "SW8yiDkq9SBEpDLe"}, {"inc": 0.8102922969551939, "statCode": "Kvsx0eRXAyrmFn3I", "userId": "3VyTfOB7slbtM7zQ"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkIncUserStatItemValue' test.out

#- 42 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'nyNGKXJrHBxYvIoE' \
    --userIds '["kdU1iJJ4DX3cXfWZ", "ENW1VXVY8X9LDrdC", "wgcqFJiKsos0OZni"]' \
    > test.out 2>&1
eval_tap $? 42 'BulkFetchOrDefaultStatItems' test.out

#- 43 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "zCBeB02kkkuAWMhf", "userId": "2dqndlWMO7hJEgwb"}, {"statCode": "ZFHE8IbHTihedhSZ", "userId": "nAWjlbhgeqhBEWYG"}, {"statCode": "3DEtlzKaFxsduaiP", "userId": "B9oguJlQ3caaBKcN"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkResetUserStatItem' test.out

#- 44 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'VlJzkosTyyO9Z82g' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '4' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 44 'GetStats' test.out

#- 45 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["qZfKwr0Li4U8BgQB", "FvFVmnvxmSOBvqqk", "PejiHl3s7gcFvq0G"], "cycleOverrides": [{"cycleId": "QT6MsaYM4aS99bx9", "maximum": 0.8719291108694246, "minimum": 0.7590904943854957}, {"cycleId": "MgMTUfKYIs0mXZMX", "maximum": 0.7785209161987167, "minimum": 0.839649823815869}, {"cycleId": "rRftASUIzAJDDKto", "maximum": 0.2815083785392034, "minimum": 0.5843447239064795}], "defaultValue": 0.9604450378049385, "description": "iQc0NSxACdJhcmjZ", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.5166031067624114, "minimum": 0.7129098252104281, "name": "mDaR9ERTjqFwJsZG", "setAsGlobal": false, "setBy": "SERVER", "statCode": "Mim8RB90IVHsIa68", "tags": ["exEyIkhpiUogq2nJ", "I1ARYSkyOJGCe7Nk", "VHIzhohBqzWRz30P"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 45 'CreateStat' test.out

#- 46 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ExportStats' test.out

#- 47 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 47 'ImportStats' test.out

#- 48 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '30' \
    --offset '55' \
    --keyword 'M2XFpO97Uo13wgjg' \
    > test.out 2>&1
eval_tap $? 48 'QueryStats' test.out

#- 49 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'nxuDPonMCuUzjdOq' \
    > test.out 2>&1
eval_tap $? 49 'GetStat' test.out

#- 50 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'o9ODduJXICUEUmZC' \
    > test.out 2>&1
eval_tap $? 50 'DeleteStat' test.out

#- 51 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ZOiDZpRqW98MojWV' \
    --body '{"capCycleOverride": false, "cycleIds": ["MvaRvVQcJ31s9qEg", "SvqXI4oQaS3Gxqgo", "XdIMo4JZLflZAuDX"], "cycleOverrides": [{"cycleId": "3yjAuLTAdJhAtmPu", "maximum": 0.6698693384030873, "minimum": 0.7741879252032624}, {"cycleId": "zHy9OrrlTvq8Z2t6", "maximum": 0.7732632356274391, "minimum": 0.8449299361468045}, {"cycleId": "7XTM0FtCcTXyb5OK", "maximum": 0.4152939730939441, "minimum": 0.056921226236255174}], "defaultValue": 0.55953110225608, "description": "JRpZqN3XZVGw3gM9", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.18349362349905318, "minimum": 0.4778355310987781, "name": "vUiJGoZs3vKhEyVq", "setAsGlobal": true, "setBy": "SERVER", "tags": ["jVY99HDoGr7hQqYQ", "KUk1sQTz0Tufq1rt", "COvUMGZosOzms5gt"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateStat' test.out

#- 52 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'IrLGdz5RWxe7yDQp' \
    --limit '90' \
    --offset '87' \
    --sortBy 'juqONYO8ZoQAWOlM' \
    > test.out 2>&1
eval_tap $? 52 'GetStatItems' test.out

#- 53 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '0BqkhN9huEVaTEs2' \
    > test.out 2>&1
eval_tap $? 53 'DeleteTiedStat' test.out

#- 54 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'rUphV7Rd0x7IS1ob' \
    --namespace $AB_NAMESPACE \
    --userId 'esntJWTIKYt1DdaV' \
    --isPublic 'true' \
    --limit '2' \
    --offset '83' \
    --sortBy 'qr5Zp17d9plhp7Ec' \
    --statCodes 'EJUF60plDyvDVJ5X' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatCycleItems' test.out

#- 55 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '1ZUUdN6soVa74h4l' \
    --isPublic 'false' \
    --limit '78' \
    --offset '72' \
    --sortBy 'L85k8u4yQcuIZ2YK' \
    --statCodes 'U9QYQYkI49y1OlQI' \
    --tags 'Jr4zor5oMwvU93KC' \
    > test.out 2>&1
eval_tap $? 55 'GetUserStatItems' test.out

#- 56 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'e4r5CkQdC8tRLgKj' \
    --body '[{"statCode": "iCiRx1fsNDd2ZlUJ"}, {"statCode": "OHXT00s49bE8GYrm"}, {"statCode": "tksTCxcQlJeK1Z6P"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkCreateUserStatItems' test.out

#- 57 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'f4xYf2C9YvR95PWQ' \
    --body '[{"inc": 0.6061089407773308, "statCode": "FrwQ7Sg8Y9s5Byp0"}, {"inc": 0.1736141681247314, "statCode": "f1cMXgmGLPWDcG33"}, {"inc": 0.271633949567336, "statCode": "4tQO21zzwMc3BDur"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'keGbSnR3ViALHHc0' \
    --body '[{"inc": 0.2636682205466896, "statCode": "42Rkck62JPHIIqTb"}, {"inc": 0.6874119245467324, "statCode": "lOR0R068fldZsibr"}, {"inc": 0.21336831931814504, "statCode": "VTVcLxnvPoe7ucMT"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue1' test.out

#- 59 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '9NphS6r0MtqVkBHx' \
    --body '[{"statCode": "ot3mLMBpkAapRVCg"}, {"statCode": "j4TMPtrQcqeI7O3A"}, {"statCode": "O93Q7nsaHnAeisJs"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem1' test.out

#- 60 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'EO1uiytDqExBpdcN' \
    --userId 'a4garsv4DSZHYtnA' \
    > test.out 2>&1
eval_tap $? 60 'CreateUserStatItem' test.out

#- 61 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '58QSVMK30xBvSAmy' \
    --userId 'rscyMBhuZIioBOhW' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems' test.out

#- 62 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'oEn1qiOm4IL2ayu2' \
    --userId '7iWhn0uQqXz0oONV' \
    --body '{"inc": 0.7332446366757711}' \
    > test.out 2>&1
eval_tap $? 62 'IncUserStatItemValue' test.out

#- 63 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'nwKG9TftKUmIiIpj' \
    --userId 'cGcUIo0MIvHt5RoY' \
    --additionalKey 'gK52R6cbnkBFwdpR' \
    --body '{"additionalData": {"eWeBSbjTrbkbUGs9": {}, "A8udYXPa1AiLCTie": {}, "jPyZu8mrA8dD2IFD": {}}}' \
    > test.out 2>&1
eval_tap $? 63 'ResetUserStatItemValue' test.out

#- 64 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '10' \
    --statCodes 'hZsaQ4KqfBoljLHO' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItems1' test.out

#- 65 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'NREFXrFkgFRVb9Cl' \
    > test.out 2>&1
eval_tap $? 65 'GetGlobalStatItemByStatCode1' test.out

#- 66 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '42' \
    --name 'Ufp0fMuyvBHleoM8' \
    --offset '55' \
    --sortBy 'Ih4HbfzuxbA5tnAG' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 66 'GetStatCycles1' test.out

#- 67 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["ihB0oWRiumWldKJJ", "0j5Y4LxG2qWbsOUy", "KzfBo5DdyyyA4rCq"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetStatCycle1' test.out

#- 68 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'vMNrD6QWS46uB25o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetStatCycle1' test.out

#- 69 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'gtholaK5xMPMk4yW' \
    --userIds 'ktpeOQNZgPhurFq4' \
    > test.out 2>&1
eval_tap $? 69 'BulkFetchStatItems1' test.out

#- 70 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.901159289669955, "statCode": "5LDYV1kMs2cISMUn", "userId": "ISlnWmZ90ZmT2SkD"}, {"inc": 0.6955718556560766, "statCode": "q6fYWv8hdyzI9ZgU", "userId": "wYdR914vSnk8H64K"}, {"inc": 0.2820391953844499, "statCode": "NaDHccotAW4daghu", "userId": "lwhAqiE4pVk4dTUH"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItem' test.out

#- 71 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4695603896361724, "statCode": "AI0EVSXMs1iEUIfD", "userId": "W7RavP2j0YUKKNPG"}, {"inc": 0.8677376104285386, "statCode": "BdmeNuwO80yXtLq0", "userId": "x2Mbnm76Zf20IJgH"}, {"inc": 0.9744562113717389, "statCode": "D5mrJxICF7BSA5y5", "userId": "gOUYkqN8o7Pkvvu1"}]' \
    > test.out 2>&1
eval_tap $? 71 'PublicBulkIncUserStatItemValue' test.out

#- 72 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "uDymCaRY9JgzqfVE", "userId": "h7uf6C4W2eyyPlLM"}, {"statCode": "YuIp4VsXOWJQSbdl", "userId": "VjAGck41znSKsLac"}, {"statCode": "RLiuBu3ppIs3n0qJ", "userId": "8frt5d3kUHgK2QWR"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItem2' test.out

#- 73 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["jxh0KrpXndB4nfLj", "zrFgZw4F39BQaXbA", "qI3Eg4ZdBLLq8ny2"], "cycleOverrides": [{"cycleId": "eiC0y4oQZo74w2ti", "maximum": 0.6248778994953008, "minimum": 0.443075948273965}, {"cycleId": "9y9owBg04Hgc9R2r", "maximum": 0.9812886446948348, "minimum": 0.09026409918175293}, {"cycleId": "3JxrcOjDlWpeHu6m", "maximum": 0.23444330463457708, "minimum": 0.1583842627233807}], "defaultValue": 0.23050436790473572, "description": "Fs15zQ98kUPsM35l", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.13733673414009517, "minimum": 0.02273330611650015, "name": "zHcN2Dv1rcB2aQhF", "setAsGlobal": true, "setBy": "SERVER", "statCode": "hDzm1J776pjlB2tm", "tags": ["PWX5H981hjBT0C2R", "TH0MFNhIp7NDtOZY", "WPR9ugmpEe9dY8HV"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateStat1' test.out

#- 74 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'aMLjw3MjbA5Fs3M3' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '41' \
    --sortBy '9tdGGY5U5F8iozhh' \
    --statCodes '["L0z5O61z1DV2OPgv", "JjvTtaELfmgJClLa", "jcP0gEpfKpb7ub8M"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatCycleItems' test.out

#- 75 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '82' \
    --sortBy '8x3aEmgAJ6OBDsku' \
    --statCodes '["a61dmZxu91BFA8Ai", "JqWxhawxwhIltubm", "K1hA4NegmZsKrGur"]' \
    --tags '["ezqr4rZF1ax4HqRj", "6AN7ONAtAwD9KC4m", "qzP03HgmqXysgt1x"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListMyStatItems' test.out

#- 76 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'siL8vJDI6k12QVMH' \
    --statCodes '["MeLgbMB0xwnGtBrP", "TlmnIUUbT0FER0kI", "EOQXnKdWai9qEnn9"]' \
    --tags '["68En7Tp1ZJUMPXvH", "3q7kkM2voVubJqR8", "JMy8yjpe9JLTDkFr"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicListAllMyStatItems' test.out

#- 77 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'ALN1nSl9y3ApUmzd' \
    --namespace $AB_NAMESPACE \
    --userId 'yPgLsU2WYelwsAN3' \
    --limit '32' \
    --offset '66' \
    --sortBy '1naG7Kw5vGz8DrB2' \
    --statCodes 'VbLOPTPTJmQDhYmF' \
    > test.out 2>&1
eval_tap $? 77 'GetUserStatCycleItems1' test.out

#- 78 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'ju71JcsrxqJ8WPGe' \
    --limit '2' \
    --offset '5' \
    --sortBy 'u7HEMFDoQxb2gFtD' \
    --statCodes 'iKEKw6lopTXN8ekl' \
    --tags 'IhRDmkXj2Z0XM8d3' \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryUserStatItems1' test.out

#- 79 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'MqeaPpuMfNL1kkLk' \
    --body '[{"statCode": "Vt7RhKupNpxouEIu"}, {"statCode": "lPyzNnR3pQdEWsLu"}, {"statCode": "kr8aJeACNmIX1QEk"}]' \
    > test.out 2>&1
eval_tap $? 79 'PublicBulkCreateUserStatItems' test.out

#- 80 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'XvcO5rpsFrf86sJS' \
    --additionalKey 'RydUch13v9ccwFkD' \
    --statCodes '["TaVIDlppBGClmc0n", "NTPKXinAHkbWy11l", "9UPemKW0e8Kmp2HU"]' \
    --tags '["KzdiXWwafMZUBLkD", "1pqKPTD8t9SYOl8h", "Tx9YnIjbfYCjaa8D"]' \
    > test.out 2>&1
eval_tap $? 80 'PublicQueryUserStatItems' test.out

#- 81 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '33kok6g3g4sBTjH5' \
    --body '[{"inc": 0.4496242538987685, "statCode": "rPLPZdDl5ymVfZ2K"}, {"inc": 0.6548740669002732, "statCode": "svK51SFhWDDTBVI9"}, {"inc": 0.84415564957129, "statCode": "tApla8cYVRNnA42s"}]' \
    > test.out 2>&1
eval_tap $? 81 'PublicBulkIncUserStatItem1' test.out

#- 82 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'i2H3rtlTTHM1fAOF' \
    --body '[{"inc": 0.753846517854351, "statCode": "tTADaqr3siiHgnx1"}, {"inc": 0.1484195362588201, "statCode": "udJON2HYhhmxg03E"}, {"inc": 0.18426641911800323, "statCode": "1HzOSAA7JH1xu0xv"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkIncUserStatItemValue2' test.out

#- 83 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZmfJfBiUdS2DRcrP' \
    --body '[{"statCode": "NJTqP7w0Uq7zH6Bf"}, {"statCode": "1V2x3RH4z4uOW5d1"}, {"statCode": "CWfovzfJDZFAd0OF"}]' \
    > test.out 2>&1
eval_tap $? 83 'BulkResetUserStatItem3' test.out

#- 84 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'u5hbI3EzV2orDoPw' \
    --userId 'LlQDBfRWRw0MLQpz' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateUserStatItem' test.out

#- 85 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'hHOa1ndvEUKPqzem' \
    --userId 'bZhbfleE6lwQHaAP' \
    > test.out 2>&1
eval_tap $? 85 'DeleteUserStatItems1' test.out

#- 86 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'LPSUe3EX25LFtiZm' \
    --userId 'q8xvuchBVNZJ95fL' \
    --body '{"inc": 0.47511512241487763}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItem' test.out

#- 87 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'cvLU4sCYU6Usd63z' \
    --userId 'jtHNG5Iyh5WJ7rMu' \
    --body '{"inc": 0.7144858531366154}' \
    > test.out 2>&1
eval_tap $? 87 'PublicIncUserStatItemValue' test.out

#- 88 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'h8uHHZVZRSDuywyS' \
    --userId 'D6r0OFQ2OR7q8Hf5' \
    > test.out 2>&1
eval_tap $? 88 'ResetUserStatItemValue1' test.out

#- 89 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"khcY3M1OLr2MLceR": {}, "0fUcEug9onAGqCxO": {}, "5dbPVudAsYawhfUG": {}}, "additionalKey": "JPeFyNQZmt1pgpL6", "requestId": "0sNGUpJolJ1ALLCJ", "statCode": "DOgaoAQ3glaDTli7", "updateStrategy": "OVERRIDE", "userId": "TFsqexI9rqNgYffF", "value": 0.5531933931983509}, {"additionalData": {"lkQ7CZoJRpmptHUC": {}, "o7Yp5Q48Vka2xK38": {}, "mJE6MiW9sdLJaE3w": {}}, "additionalKey": "LfYSrL2fGAKBlhl5", "requestId": "zyXI70MHPjzIa4dG", "statCode": "xMkbxS79u0sct94V", "updateStrategy": "INCREMENT", "userId": "eFoZIGbtyIozRi4J", "value": 0.6577443949806389}, {"additionalData": {"n63WK1kiYosXfg4X": {}, "2Sv2bmQGnoLxC5Ci": {}, "vHJRHWgIClQlNeGC": {}}, "additionalKey": "amMtz67kNk2RPehA", "requestId": "sOlq5ULEzNIy1TTc", "statCode": "IeIDx0b4gNAOs3wf", "updateStrategy": "INCREMENT", "userId": "XKaEFUoltxm8e0iF", "value": 0.4909636348857246}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkUpdateUserStatItemV2' test.out

#- 90 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'T8hCy4XgXXvyiBzl' \
    --statCode 'ddZvi6zUgJWhjD3V' \
    --userIds '["1ZWEKDY3czcuPT8S", "7zUauhmUZnVOEc90", "6QsxNFQK78K0gucB"]' \
    > test.out 2>&1
eval_tap $? 90 'BulkFetchOrDefaultStatItems1' test.out

#- 91 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '2H05FhdmBW1y85hP' \
    --additionalKey '275pBF73x41FxmZl' \
    --statCodes '["bxBl5DWmPDg8JTpp", "En5YIH9B3wmnJJvw", "r867Cilfau4TJ2GT"]' \
    --tags '["gDc5tHL6wwgfRXok", "A3fHtb9PEsKwBZQp", "ra1epOmYmLDuiWBf"]' \
    > test.out 2>&1
eval_tap $? 91 'AdminListUsersStatItems' test.out

#- 92 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 't7VmdN0aHDQbna0f' \
    --additionalKey 'eY2D8ag9v6gxnkx6' \
    --body '[{"additionalData": {"kE7K2mPMnNaUjd28": {}, "LApaLGphwh9lio09": {}, "Ntxgx9RTE5RTTGen": {}}, "requestId": "HV2TEz0xo6sekxNt", "statCode": "19wGK5zBOIlgNlNi", "updateStrategy": "OVERRIDE", "value": 0.3289223467938217}, {"additionalData": {"E0nuJ9V9eCjbTfdZ": {}, "4wbn1hcRpFHRc9cv": {}, "W7GZCoqCKBdVHaxe": {}}, "requestId": "SycevUhDNQOlmBKl", "statCode": "BSJjuSAYDxzOKBKw", "updateStrategy": "MIN", "value": 0.31113737341901404}, {"additionalData": {"5rdsHEN43fANHpjK": {}, "FIfqw3lmedmNt2HZ": {}, "o2lbJj6ZTXXzqBF2": {}}, "requestId": "UecWWy1EJyYg9KsK", "statCode": "M3WgsJbxEWbJyjeX", "updateStrategy": "MIN", "value": 0.66448361016418}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem' test.out

#- 93 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'BlpmYboxSJw2t01g' \
    --additionalKey 'N3Nq7o8yESjGVcdW' \
    --body '{"statCodes": ["KdOWFSGabfVrWPct", "Hl265NwOJGjRshFm", "dAo13X9MekOs8HR8"]}' \
    > test.out 2>&1
eval_tap $? 93 'BulkGetOrDefaultByUserId' test.out

#- 94 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '5VJ0lYWpTiaJyE5U' \
    --additionalKey '7xuiUC3fFnGPPmuQ' \
    --body '[{"additionalData": {"GuLVAeZQ3WrUefZI": {}, "zDXlActZ1mZz8t5m": {}, "17lQQfK66pgrjJE6": {}}, "statCode": "jdbSCrNMsaoY643f"}, {"additionalData": {"U3MiKOrw9aTmCZKo": {}, "tOwJVJVZB6bPMuXl": {}, "dm3MJ2B0NwOWkouy": {}}, "statCode": "8oPht8Ri6w29wki9"}, {"additionalData": {"awCiE4kH0Itx2Huu": {}, "c5EdRs1c8YBXy7eJ": {}, "71qeI3Ew0OKxXfPQ": {}}, "statCode": "HUh1nOoZ0NBqiUUR"}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkResetUserStatItemValues' test.out

#- 95 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'xPeVFW60ED4fMUDK' \
    --userId 'dvj3jzjIVWE9HX8R' \
    --additionalKey '15QcQitkA2mb9hcZ' \
    > test.out 2>&1
eval_tap $? 95 'DeleteUserStatItems2' test.out

#- 96 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'CClGwGDBBZk5THDc' \
    --userId 'BUUTjZeFBEyc5L2l' \
    --additionalKey 'MEyeUdhzPqu0aeJw' \
    --body '{"additionalData": {"nPJKQiC49IZvRUPK": {}, "ldtQxvAh3X6tncvm": {}, "oJlbPqEbtiMtzbvR": {}}, "updateStrategy": "INCREMENT", "value": 0.6327788369809981}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateUserStatItemValue' test.out

#- 97 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"NJCD8CwcTz9cGJqa": {}, "AyP3IrMdQTMwv9b9": {}, "zfTxLnpMhDLBr5ej": {}}, "additionalKey": "PFu5x1kDyaQQNWVW", "requestId": "bjPTcTabixEf8u32", "statCode": "Zb6DiyaYKyuEg8hu", "updateStrategy": "OVERRIDE", "userId": "q9xVoccEtelf8XsW", "value": 0.5755330649823451}, {"additionalData": {"jX3fz8dKhibhOHqK": {}, "IV8zcwvc7sq2xy2x": {}, "VlTY1AuER6SazPjl": {}}, "additionalKey": "v7BukZJpCECJsgE2", "requestId": "DGKv5Urg9Ixms1Do", "statCode": "3d65Cz4shZinrZC7", "updateStrategy": "OVERRIDE", "userId": "O1kScDNAERGtPfmK", "value": 0.7199258600350628}, {"additionalData": {"obclLehLorHC3JPZ": {}, "jnsvpn2UByaSTwU9": {}, "DzRWVvDH84bC6S4Q": {}}, "additionalKey": "m7zwSZfmWcY0YRes", "requestId": "CPf2RLsNVCzbqJyL", "statCode": "ZjVpXkjvMK2coPyu", "updateStrategy": "MIN", "userId": "oci7RpFwus8GxG3M", "value": 0.1774480790365438}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem1' test.out

#- 98 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'bodd8JZEJQsUlK7a' \
    --additionalKey 'TnMSafDnBiHI48Sa' \
    --statCodes '["D8FFNoJY2FC6yB5f", "1Qb3WT7PcRJ5gbSd", "VBOpL697ifc5CSck"]' \
    --tags '["39Qgz0eiMWuM0CE3", "SUSSR73htnk4zIMn", "8lIN7tdzH1r4CyNr"]' \
    > test.out 2>&1
eval_tap $? 98 'PublicQueryUserStatItems2' test.out

#- 99 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'odVpWyX59mQoZNhY' \
    --additionalKey 'Bo4bsfeGWOyUDKSZ' \
    --body '[{"additionalData": {"AzuKK02ktg3ZBtVb": {}, "jDkt09RoYf6eheUC": {}, "kCVjx6BajA1hE39c": {}}, "requestId": "68sHQZcrkZ5LNsAx", "statCode": "QUxMBuW8wFIhn247", "updateStrategy": "MAX", "value": 0.7934936894974125}, {"additionalData": {"ycKe3IKXg95K50OP": {}, "6RVhyrI8pPiHW0Mb": {}, "kYYU5jlFHZbnKD1x": {}}, "requestId": "ILsBSZmGTFu1EE1W", "statCode": "K93srVJKlGNYjUhl", "updateStrategy": "OVERRIDE", "value": 0.35016202736472857}, {"additionalData": {"uHIQXB6HaUJFBNOz": {}, "R3hSFVyLXlKyHfLO": {}, "la0eTCprUSHUCJBX": {}}, "requestId": "XaN2JCv1os40NwT2", "statCode": "WokduvgzAxE2X5Nd", "updateStrategy": "MAX", "value": 0.15295258310170023}]' \
    > test.out 2>&1
eval_tap $? 99 'BulkUpdateUserStatItem2' test.out

#- 100 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '4s9X8XUjFbHUMCMt' \
    --userId '6PPr5o29NzdkGOxd' \
    --additionalKey '1beDVcy1ojLHsTlT' \
    --body '{"additionalData": {"BprM36Dz7W7SH0TI": {}, "9PBDcJhWZpT7com5": {}, "2VS5qVmt38zR5RDv": {}}, "updateStrategy": "OVERRIDE", "value": 0.3392189404442587}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE