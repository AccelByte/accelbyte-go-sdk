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
echo "1..88"

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
    --body '{"maxSlotSize": 62, "maxSlots": 39}' \
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
    --userId 'AxcVpFrt' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'tufHIRdH' \
    --body '{"maxSlotSize": 4, "maxSlots": 95}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId '09nIW0Oa' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'iw9B0D7e' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'HpzSn3ZP' \
    --userId 'Udc0qh4n' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId '8mzZ0m8S' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'AMTwE6I5' \
    --userId '6IaRDBXx' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["yaNoMR6h", "kspInrAi", "p6lyzSxw"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'ElFHHdgs' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId '21Jub74C' \
    --body '{"achievements": ["UkNmKJfh", "5pUkHODp", "oMF78NY4"], "attributes": {"YkHs1cnz": "1JSDgY1T", "Xp38zsCT": "CrbCbPOy", "NQkT7Nvy": "E3cwyALc"}, "avatarUrl": "zNIicXm7", "inventories": ["agSrjJW2", "OQNOs1PX", "hT5FvdiR"], "label": "ilZ7oFgx", "profileName": "4c8OumKt", "statistics": ["PDKJDXn7", "Z4U68su8", "XfqlqNiT"], "tags": ["vB6SdAdI", "hUDrwoZ5", "MecdKi5r"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '6QEa1ysL' \
    --userId 'Ezth6mXh' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'zkzWkFeZ' \
    --userId 'SoEAcBdW' \
    --body '{"achievements": ["19m4eu6d", "5tA5jUmi", "TqpyhPFd"], "attributes": {"xLzFQN05": "MYzYiKWe", "5dNRljv7": "IPrDQQRg", "at0SevkL": "GMS0lyuI"}, "avatarUrl": "9a2I9u6V", "inventories": ["pbsx5w8h", "qUI06UpO", "XGSLmCVu"], "label": "HOPlLlkv", "profileName": "R8sKgnuR", "statistics": ["kgghGoYu", "pD391C2q", "tPYokahF"], "tags": ["jkQsfCaT", "mt1d67FX", "Gk2s9Q0m"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'PVo3twu0' \
    --userId 'MesTCf9x' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '4rt69lna' \
    --namespace $AB_NAMESPACE \
    --profileId '7qxNeIxP' \
    --userId 'z6MbwL6I' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'Y69z1UaL' \
    --namespace $AB_NAMESPACE \
    --profileId 'qYSYWytL' \
    --userId 'PziZMdjx' \
    --body '{"name": "cBZufQxG", "value": "iHPllG4c"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'YEzfTD1Z' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'Bm3MqHcU' \
    --label 'mLZZbSqb' \
    --tags '["8RwNmn9H", "rNQy4uZA", "AiE0mit9"]' \
    --checksum 'RGCCHYzU' \
    --customAttribute 'OcEdscKH' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'PEqgA8yu' \
    --userId '7Vk6Jt4Y' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'mos9Jcdo' \
    --userId 's4fYcTVU' \
    --label '6RBt0zYo' \
    --tags '["McHyCUEX", "lAvxJMda", "lwSyliWM"]' \
    --checksum 'NW5NyLu0' \
    --customAttribute 'M3VHh2EI' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '8JlDbPWb' \
    --userId 'Q6Q9lNmq' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'RBaAkLnv' \
    --userId 'xkT1X68c' \
    --body '{"customAttribute": "mDc3fxU8", "label": "MyKrQpM4", "tags": ["hkkK6KKX", "NB3Gv0Iq", "mF51Tkhj"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '1' \
    --statCodes 'YUDjasWI' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'PUvmEejt' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '8' \
    --name 'kILsSSyD' \
    --offset '7' \
    --sortBy 'rvjj7il3' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "bN9oCMNq", "end": "1979-12-30T00:00:00Z", "name": "98SjTvhZ", "resetDate": 81, "resetDay": 95, "resetMonth": 21, "resetTime": "kl535X3a", "seasonPeriod": 40, "start": "1985-02-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'XksUC9b6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'GetStatCycle' test.out

#- 31 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'i5lZC9xv' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "2e8c5csS", "end": "1978-08-02T00:00:00Z", "name": "voqsZNBd", "resetDate": 40, "resetDay": 25, "resetMonth": 9, "resetTime": "XgdAPh1E", "seasonPeriod": 92, "start": "1975-01-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateStatCycle' test.out

#- 32 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'G96gAFKK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'DeleteStatCycle' test.out

#- 33 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '2WDgCcxv' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["ONZm3EeE", "RmDnyeFo", "F7VSZ6pf"]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkAddStats' test.out

#- 34 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '3vneSD2T' \
    --userIds 'b3g7mSQU' \
    > test.out 2>&1
eval_tap $? 34 'BulkFetchStatItems' test.out

#- 35 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.11518502690410715, "statCode": "AEtrmjqU", "userId": "6YE3p4lS"}, {"inc": 0.03378151225626991, "statCode": "k0ZHn5GI", "userId": "39YBHqaT"}, {"inc": 0.5389673574558402, "statCode": "eKtW18iG", "userId": "eUlc9d9s"}]' \
    > test.out 2>&1
eval_tap $? 35 'BulkIncUserStatItem' test.out

#- 36 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.23761844917164, "statCode": "gWa24CKN", "userId": "S0GqVvUf"}, {"inc": 0.5479072815833855, "statCode": "QvsHXNUN", "userId": "e4mhgo5Q"}, {"inc": 0.4507852562022244, "statCode": "65lSAiYn", "userId": "NjkfZrQv"}]' \
    > test.out 2>&1
eval_tap $? 36 'BulkIncUserStatItemValue' test.out

#- 37 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'GgbLdLsF' \
    --userIds '["zHkBMr1y", "rOMlNFSr", "UEirnjX9"]' \
    > test.out 2>&1
eval_tap $? 37 'BulkFetchOrDefaultStatItems' test.out

#- 38 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "fDmIbeZx", "userId": "zfTcyiuA"}, {"statCode": "Tus9hsfp", "userId": "FDcSDG8a"}, {"statCode": "MVGLiBNr", "userId": "Djqoxcwg"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkResetUserStatItem' test.out

#- 39 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'GLXpUL4p' \
    --isGlobal 'false' \
    --limit '59' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 39 'GetStats' test.out

#- 40 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["vDz9KOsb", "ncYAHdNz", "DmeIP6rO"], "defaultValue": 0.8957136558686735, "description": "92k6YmJF", "incrementOnly": false, "maximum": 0.32502574248801175, "minimum": 0.3881002622932376, "name": "Sj29a9LJ", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "oVk8T3Gp", "tags": ["AnkCmBUq", "g2SCnqnt", "X9y1aZSW"]}' \
    > test.out 2>&1
eval_tap $? 40 'CreateStat' test.out

#- 41 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'ExportStats' test.out

#- 42 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 42 'ImportStats' test.out

#- 43 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --limit '98' \
    --offset '18' \
    --keyword 'DKHRuPMM' \
    > test.out 2>&1
eval_tap $? 43 'QueryStats' test.out

#- 44 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'WH8Yb33T' \
    > test.out 2>&1
eval_tap $? 44 'GetStat' test.out

#- 45 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '5UBJCjfc' \
    > test.out 2>&1
eval_tap $? 45 'DeleteStat' test.out

#- 46 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'nLRfxeCS' \
    --body '{"cycleIds": ["z9WEi8Kl", "loeH0JT1", "yduat2vQ"], "defaultValue": 0.7018636892334367, "description": "3biBfsu4", "name": "jmsRE2w1", "tags": ["IYt4SqYU", "yEkLgh3t", "TLDx9gIi"]}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateStat' test.out

#- 47 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'DandpGT2' \
    > test.out 2>&1
eval_tap $? 47 'DeleteTiedStat' test.out

#- 48 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 't24aOMh5' \
    --namespace $AB_NAMESPACE \
    --userId 'eC3IHeHS' \
    --limit '74' \
    --offset '5' \
    --statCodes 'LCa3xreN' \
    > test.out 2>&1
eval_tap $? 48 'GetUserStatCycleItems' test.out

#- 49 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'DUWehwH3' \
    --limit '34' \
    --offset '77' \
    --sortBy '31A806DJ' \
    --statCodes 'gas4b6z3' \
    --tags 'LNUj7fdg' \
    > test.out 2>&1
eval_tap $? 49 'GetUserStatItems' test.out

#- 50 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'LA84Z8YY' \
    --body '[{"statCode": "k6QEgJjB"}, {"statCode": "bEDoNf3n"}, {"statCode": "0hEoRCAc"}]' \
    > test.out 2>&1
eval_tap $? 50 'BulkCreateUserStatItems' test.out

#- 51 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'f80zfFya' \
    --body '[{"inc": 0.022816438710196008, "statCode": "WAgIUXiI"}, {"inc": 0.8458241242195805, "statCode": "7A68eaqC"}, {"inc": 0.878792420277054, "statCode": "J9jyEW6G"}]' \
    > test.out 2>&1
eval_tap $? 51 'BulkIncUserStatItem1' test.out

#- 52 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'Lbc0NaKD' \
    --body '[{"inc": 0.7469340449486217, "statCode": "L3sa13lk"}, {"inc": 0.8632215515173485, "statCode": "dQBHO86I"}, {"inc": 0.18631452904089696, "statCode": "BhnetU4R"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkIncUserStatItemValue1' test.out

#- 53 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'wTqUXlTD' \
    --body '[{"statCode": "BzOuYsaZ"}, {"statCode": "A2yyd4mb"}, {"statCode": "qoOfADMM"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem1' test.out

#- 54 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'AXFaY9eK' \
    --userId 'a699bRVh' \
    > test.out 2>&1
eval_tap $? 54 'CreateUserStatItem' test.out

#- 55 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'yaKwwrAP' \
    --userId '2aMlu7Wt' \
    > test.out 2>&1
eval_tap $? 55 'DeleteUserStatItems' test.out

#- 56 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'jCtoYetO' \
    --userId 'O847g8Ou' \
    --body '{"inc": 0.05154267845461946}' \
    > test.out 2>&1
eval_tap $? 56 'IncUserStatItemValue' test.out

#- 57 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'OfjnCuHZ' \
    --userId '3c46IjGa' \
    --additionalKey '23YvYmmD' \
    --body '{"additionalData": {"g7VYPXIu": {}, "vUYTZBRu": {}, "jIUE1Tq5": {}}}' \
    > test.out 2>&1
eval_tap $? 57 'ResetUserStatItemValue' test.out

#- 58 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '58' \
    --statCodes 'yAZvkRCM' \
    > test.out 2>&1
eval_tap $? 58 'GetGlobalStatItems1' test.out

#- 59 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'NFIurjh2' \
    > test.out 2>&1
eval_tap $? 59 'GetGlobalStatItemByStatCode1' test.out

#- 60 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '26' \
    --name 'TeUTkOkA' \
    --offset '10' \
    --sortBy 'ZwsVC0gL' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 60 'GetStatCycles1' test.out

#- 61 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '7ZVJSPqJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'GetStatCycle1' test.out

#- 62 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'iwv1qlYB' \
    --userIds '1RSKs6gQ' \
    > test.out 2>&1
eval_tap $? 62 'BulkFetchStatItems1' test.out

#- 63 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3727223264954318, "statCode": "C3Gb7S0o", "userId": "4zGYY7KQ"}, {"inc": 0.5489501771802682, "statCode": "1AeFgPqa", "userId": "Okvo1aol"}, {"inc": 0.4370174870205624, "statCode": "4lkKB4EY", "userId": "OkQ1jMD3"}]' \
    > test.out 2>&1
eval_tap $? 63 'PublicBulkIncUserStatItem' test.out

#- 64 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.03548978009295911, "statCode": "ym8xIfkO", "userId": "VW2grREO"}, {"inc": 0.6021993392702211, "statCode": "x0KOww3H", "userId": "ICQLfl7M"}, {"inc": 0.7452643464122453, "statCode": "BG7qtPu6", "userId": "4yAtURKL"}]' \
    > test.out 2>&1
eval_tap $? 64 'PublicBulkIncUserStatItemValue' test.out

#- 65 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Rkb738HG", "userId": "S6rDgMdI"}, {"statCode": "IlhS1fSi", "userId": "M9331m7T"}, {"statCode": "a1PsKc50", "userId": "Kv6ecnEe"}]' \
    > test.out 2>&1
eval_tap $? 65 'BulkResetUserStatItem2' test.out

#- 66 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["vcAx2K2z", "GBt4P7Wn", "kRenmPZn"], "defaultValue": 0.021095079751438206, "description": "dSJtjX7Z", "incrementOnly": true, "maximum": 0.10569489088587602, "minimum": 0.4862030135858868, "name": "hhM2rIiz", "setAsGlobal": false, "setBy": "SERVER", "statCode": "KvOPdq5x", "tags": ["DQyj4bj5", "rgxSmy1D", "N9LFkYW5"]}' \
    > test.out 2>&1
eval_tap $? 66 'CreateStat1' test.out

#- 67 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'Ro2ogaKt' \
    --namespace $AB_NAMESPACE \
    --userId '2ujQSa3Z' \
    --limit '8' \
    --offset '4' \
    --statCodes 'QpNhlI2i' \
    > test.out 2>&1
eval_tap $? 67 'GetUserStatCycleItems1' test.out

#- 68 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'S5EpGhhv' \
    --limit '96' \
    --offset '20' \
    --sortBy 'ck0upMzU' \
    --statCodes 'Ynb76tFk' \
    --tags 'EORV3bu1' \
    > test.out 2>&1
eval_tap $? 68 'PublicQueryUserStatItems' test.out

#- 69 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'bNCtX7W4' \
    --body '[{"statCode": "0V6Do5sY"}, {"statCode": "adCCFrHH"}, {"statCode": "C3DpZxkr"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkCreateUserStatItems' test.out

#- 70 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'QDXuNFvi' \
    --statCodes '["Marv8mnf", "HK8CCmE2", "lPnsbD3S"]' \
    --tags '["GEdlwuUc", "cE536ugB", "p3HBvepn"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicQueryUserStatItems1' test.out

#- 71 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'DCjgyJlX' \
    --body '[{"inc": 0.06655966002451463, "statCode": "36mgWjLf"}, {"inc": 0.5031493666927561, "statCode": "mteue9nz"}, {"inc": 0.5669477529953806, "statCode": "6fH24T80"}]' \
    > test.out 2>&1
eval_tap $? 71 'PublicBulkIncUserStatItem1' test.out

#- 72 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '5tVg8JqU' \
    --body '[{"inc": 0.8397467007236281, "statCode": "jZpjvsug"}, {"inc": 0.4305197428458377, "statCode": "OS7u8RiW"}, {"inc": 0.3968391711039545, "statCode": "erCSa8SR"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkIncUserStatItemValue2' test.out

#- 73 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'gwsAj1ik' \
    --body '[{"statCode": "1jglaDXT"}, {"statCode": "vKCWwNTA"}, {"statCode": "hd2wrS0u"}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkResetUserStatItem3' test.out

#- 74 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Pdjhdinp' \
    --userId 'ng5BLy8w' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateUserStatItem' test.out

#- 75 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'bhMssAHj' \
    --userId 'apIkY9Rf' \
    > test.out 2>&1
eval_tap $? 75 'DeleteUserStatItems1' test.out

#- 76 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '4wP57dBZ' \
    --userId 'NR88YbCt' \
    --body '{"inc": 0.20098052961778368}' \
    > test.out 2>&1
eval_tap $? 76 'PublicIncUserStatItem' test.out

#- 77 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Ky8M9zVr' \
    --userId 'jfGXZnqA' \
    --body '{"inc": 0.6898625787780174}' \
    > test.out 2>&1
eval_tap $? 77 'PublicIncUserStatItemValue' test.out

#- 78 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'UoY1GjlI' \
    --userId 'Ik0iKoTT' \
    > test.out 2>&1
eval_tap $? 78 'ResetUserStatItemValue1' test.out

#- 79 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"S1j02o7J": {}, "jTXAQN0q": {}, "dskdQV0T": {}}, "additionalKey": "qI8EFnmD", "statCode": "bxIxi4YK", "updateStrategy": "MAX", "userId": "Ss6g4iY9", "value": 0.32924642100339163}, {"additionalData": {"02aCNYIW": {}, "ekp18lOC": {}, "3mNqF7Bl": {}}, "additionalKey": "0LcghVHf", "statCode": "PEspxwhR", "updateStrategy": "MAX", "userId": "0bc1eMbE", "value": 0.5506595717763593}, {"additionalData": {"jowLqc3e": {}, "cjXJbZDK": {}, "KoxLE1Y3": {}}, "additionalKey": "Dymtj3gi", "statCode": "Pg4x4yiP", "updateStrategy": "INCREMENT", "userId": "6ues1Hhh", "value": 0.16988466030361615}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkUpdateUserStatItemV2' test.out

#- 80 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'g1yLVbLF' \
    --statCode 'zHEP8cM4' \
    --userIds '["NTwr0KHa", "AsmTej52", "WKi6tArA"]' \
    > test.out 2>&1
eval_tap $? 80 'BulkFetchOrDefaultStatItems1' test.out

#- 81 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'URt9plCS' \
    --additionalKey 'Vq8PdH6h' \
    --body '[{"additionalData": {"JPUAc0RV": {}, "wXgAgntL": {}, "MCuaXBWQ": {}}, "statCode": "i6BqPg4x", "updateStrategy": "MIN", "value": 0.796085445909792}, {"additionalData": {"crciYNEz": {}, "vSZIPkhS": {}, "gORcz5S5": {}}, "statCode": "BvmgBLxh", "updateStrategy": "MAX", "value": 0.6370677884822776}, {"additionalData": {"uy0ytZQ7": {}, "M6Nzy1ad": {}, "nSKOLFKx": {}}, "statCode": "1dX4LuWJ", "updateStrategy": "MIN", "value": 0.06804234452246871}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkUpdateUserStatItem' test.out

#- 82 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '6AAz3S4c' \
    --additionalKey 'zz0QKFlA' \
    --body '[{"additionalData": {"VmVLu4AO": {}, "ec0z8eBe": {}, "eoip68J1": {}}, "statCode": "nsv4W2OJ"}, {"additionalData": {"htafxMSJ": {}, "lHeb34sZ": {}, "KHcl5LLL": {}}, "statCode": "OexL4fZv"}, {"additionalData": {"WtND2tcB": {}, "FpX8lNtF": {}, "EJ7tnkY6": {}}, "statCode": "Mca5afj1"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItemValues' test.out

#- 83 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '2K2IzrBv' \
    --userId 'vWm4udE0' \
    --additionalKey 'OXudXgNn' \
    > test.out 2>&1
eval_tap $? 83 'DeleteUserStatItems2' test.out

#- 84 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'e8kJATwl' \
    --userId 'c6esUp6S' \
    --additionalKey 'w1I98jeZ' \
    --body '{"additionalData": {"Q7hfxnhL": {}, "d3Knakno": {}, "ed9DHhLO": {}}, "updateStrategy": "MIN", "value": 0.7603074810276091}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateUserStatItemValue' test.out

#- 85 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"JnNnN7kA": {}, "a7j0riFc": {}, "5HTHQIoV": {}}, "additionalKey": "sGo7dwV9", "statCode": "DBqFKHQk", "updateStrategy": "OVERRIDE", "userId": "PKDUVSC0", "value": 0.8388267492764683}, {"additionalData": {"PYeDcagg": {}, "inxnFIna": {}, "3yddcbsP": {}}, "additionalKey": "heTH26IU", "statCode": "JNvYuGRU", "updateStrategy": "MIN", "userId": "y8X1A3Pr", "value": 0.5571874428732552}, {"additionalData": {"fapq5AAe": {}, "Me4L3mDW": {}, "ORBVXTII": {}}, "additionalKey": "JM9XsYII", "statCode": "ZxiXNMR9", "updateStrategy": "OVERRIDE", "userId": "9G4AvQkq", "value": 0.3054939564525456}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItem1' test.out

#- 86 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'Gnmyo5JJ' \
    --additionalKey 'TUVmb8GE' \
    --statCodes '["XFTlEMEs", "FzYqwgK1", "Np5nodqp"]' \
    --tags '["Lm7FhJBN", "XzAFdO0K", "hqf6kiTd"]' \
    > test.out 2>&1
eval_tap $? 86 'PublicQueryUserStatItems2' test.out

#- 87 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'SGv2LFjA' \
    --additionalKey 'KY7CbgsW' \
    --body '[{"additionalData": {"qFWZX7kP": {}, "Bom8F9GL": {}, "LTG8phc3": {}}, "statCode": "n4iLoIll", "updateStrategy": "MAX", "value": 0.9799894634291041}, {"additionalData": {"9hmguB8F": {}, "OTjMLo4b": {}, "9rIzqYkE": {}}, "statCode": "pstyVTBc", "updateStrategy": "MIN", "value": 0.5232135476251192}, {"additionalData": {"59e0k5Zt": {}, "X6wK7PpU": {}, "lcIW32iK": {}}, "statCode": "7MGt1ixY", "updateStrategy": "MIN", "value": 0.8989606680878668}]' \
    > test.out 2>&1
eval_tap $? 87 'BulkUpdateUserStatItem2' test.out

#- 88 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'uVoJXTIM' \
    --userId 'tpgkieDy' \
    --additionalKey 'F97lGdMi' \
    --body '{"additionalData": {"HKxbWCYz": {}, "o8yO2KTK": {}, "9tmmOnYn": {}}, "updateStrategy": "MIN", "value": 0.9260672405572047}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE