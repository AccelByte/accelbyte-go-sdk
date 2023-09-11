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
echo "1..95"

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
    --userId 'wPhG8t3uHQepWSTA' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gQjnUguD4j9Hhx2e' \
    --userId 'hkv1lSrz6zbUgoBY' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["oRwG4uVGd1y9KiGd", "ZTqfDwtTBquLOmBY", "nRf5nHLZmeclP9Vb"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'gSY0XMwUzwVXfQ6a' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'XEnucUUUMKUlnlPb' \
    --body '{"achievements": ["TNd294dcpQuCL5xw", "Y68fYdDL6h1wzVhG", "FyAVdigwoAB798cQ"], "attributes": {"nh7DzcIYEli7AqtH": "xJFzuqrnJdUZRFlc", "bL1ezD2wwR4kvkIE": "6rWwVlvTI4UlHlFr", "yJxYNEFnUAkg6UX6": "Iv7FFO1Mrz33gq5c"}, "avatarUrl": "pshYNsaZTJiUkkcV", "inventories": ["1qBFI4qMqFl9tdIO", "ab3CQAJPkXdhbww7", "R1jR1w7cG3TrMpzg"], "label": "2PRscjX8afizYntH", "profileName": "CjQOzxSq3Ik1ahYE", "statistics": ["rGyM4di6nSIaQa7j", "66bXr5FLhiv9Jms8", "PymixkLPNQWZ9rUw"], "tags": ["Pm7xAbnZV2xrAlsD", "M5oSi0u3J8lPp8sD", "IjQD4DRNzuK68aZa"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'k8HKmYHEqOIphEDW' \
    --userId '6qrRPyv01HowX7QH' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'DZ1iR3Aa2wpw8S0U' \
    --userId '6vrGDiYhFSqR7BJT' \
    --body '{"achievements": ["yZxKW1Zy9aA4VoDl", "RpcEZ6dDMvAqSmF7", "sM7RY2Z9RwTzV8aV"], "attributes": {"dEwFxAd8CQYyqp1h": "dKWtvsk5jpDhDFlK", "4EPpoH0sQ9jbETvG": "HecBwrHlPziHQWHs", "9Vp1GDcQKpYb8akN": "aVv7B1aTV5JmwD38"}, "avatarUrl": "6oTyNHeFS33G51Om", "inventories": ["dLDf2dRchc15lQYc", "gNHUw0uSiFSEbprj", "tx1Xk5Dz20etlawb"], "label": "S3fXuZDTfvv2Ccer", "profileName": "OJIpfbxsQvNmKqi0", "statistics": ["FKMyPy1hv7zEme5Y", "WmMbadKXkbyYTV87", "Qm7m94mMAR486xJy"], "tags": ["pZcTDO3Z77tR8NKn", "HB1sT0IiLdVNPYG1", "ooa7m0oV7qASmMV5"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'DQsCOTO38URgAAnp' \
    --userId 'PqzBldAtNjyIZHfk' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '2YV6An22PCyaVGg2' \
    --namespace $AB_NAMESPACE \
    --profileId 'B0ESiz4ISuZdBCDe' \
    --userId '3ASiY4svxnmxAaLl' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'xtwIGLVSZfV28nq5' \
    --namespace $AB_NAMESPACE \
    --profileId 'EkPCPUedvIyev12Q' \
    --userId 'VK5fUnGsBpFzQbNQ' \
    --body '{"name": "Djt7cXNMZOUc0NbJ", "value": "kPamvXKQ2xDVvaGe"}' \
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
    --limit '93' \
    --offset '13' \
    --statCodes '8Tl9tXJh2ZfNyIpY' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'UHCUqrGZtsUX7fqN' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '40' \
    --name '4YLE5STnRrXQdFMB' \
    --offset '36' \
    --sortBy 'U0UNVEdcmmvDxl9C' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "c5SDEYQg9YTxllvu", "end": "1995-09-01T00:00:00Z", "name": "G2DwH4k0OMOAbQJN", "resetDate": 60, "resetDay": 22, "resetMonth": 42, "resetTime": "mUsRub6os4NxBDFX", "seasonPeriod": 53, "start": "1972-10-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Ak4va7zJb4Ofbk2V", "X5QDwAGLGwvxQSpv", "2v9UhmjneKsTYcaI"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'nmPNwoiDeKnjVWu6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'iZsPEWCBvY5KAmLb' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "FMEtNtSOW9PQ4Qon", "end": "1999-10-28T00:00:00Z", "name": "lAvSp3XxWZ2PbePw", "resetDate": 68, "resetDay": 15, "resetMonth": 48, "resetTime": "6ZLWTz6oLs8QbWQV", "seasonPeriod": 58, "start": "1982-01-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'M59V5GP0FjtXkApJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'N50GKnWbixtJf5N8' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["y9eAzxoiqylNNJlw", "YxLgsg3Pwb0uOhCg", "JdqedGk9TaXzoIZO"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'VfSZGmAkJEp4PIxi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Jpnpjiq8MaFdR91R' \
    --userIds 'nVA5LfybDW7kRbAs' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2888175559554548, "statCode": "dh6OOdi9g7YWhPGA", "userId": "7erZXdil0U0H707r"}, {"inc": 0.850915899507231, "statCode": "jdF7Anj3K5LtxpMh", "userId": "oSPcXgAI2Vo69Py9"}, {"inc": 0.8282821359184419, "statCode": "1j4lmoDNVhXpUU8a", "userId": "Xpc94bXIWztvUeWl"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7635195437183903, "statCode": "YrPZ6FGv8li56bbX", "userId": "a0ZcO6E4ax8DaRD1"}, {"inc": 0.1649418420490587, "statCode": "VMlkuEGYR99zbzFi", "userId": "P4Ovl5cjAv9iqmbc"}, {"inc": 0.3256448839515428, "statCode": "ezrFj6YZw2PFW9ED", "userId": "L6qQAqimBwG1gRBx"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'VqzEjAAsBMKY506z' \
    --userIds '["DDR7S4DIPovd0Gon", "D8ZBosKZSEojnEYf", "VmmEQaZs6bQbE6yr"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "YVm5QXug4OdguQy5", "userId": "VRb8AKdL4djuUNBU"}, {"statCode": "tuQfkMNLTFmg9CFj", "userId": "6kzHBj5uCKFJRL0c"}, {"statCode": "hxksKSNLDm0bARNx", "userId": "N1Tm14HI4qGCbQfb"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'UYcsPfT0UIyQig9B' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '6' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["EYwe0yvMg5RRvjwc", "b4mQg6uEBxIfURRB", "Wo1Zjcln7KQP7BTY"], "defaultValue": 0.20463937940890353, "description": "q4QZJNtALmSnlLnS", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.131876576821778, "minimum": 0.23298041768948063, "name": "ZOv5GIuoWtg3bwZW", "setAsGlobal": true, "setBy": "SERVER", "statCode": "afsLFkd1pgZb9Yon", "tags": ["iLDeoRMoCYKTVbjk", "PTfkC7DO5VuWcEFG", "kASzAsOB0AYLfoAo"]}' \
    > test.out 2>&1
eval_tap $? 42 'CreateStat' test.out

#- 43 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'ExportStats' test.out

#- 44 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '83' \
    --offset '82' \
    --keyword 'OT3WrXEma5N7OyNX' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'gXOBMgx7akjAgGYE' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'nfrQikcXm4712ObD' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'd1kySLllo8fDexa5' \
    --body '{"cycleIds": ["KvalDm96NJfwS37q", "SbLZo60Pp13b1NJV", "Iung0fMsICGdmKoL"], "defaultValue": 0.024778267030743262, "description": "JTXFXdRYQ8nVNcdY", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "rnhd9XQZkiUjXwAy", "tags": ["oa5BaVoiavfW8vOu", "N3I8vgjF7mNNVvpI", "tDMDCfy9nSBCP8B5"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'T8417bVD8fqwzjrN' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'JIB1PLO2XrDHTGEl' \
    --namespace $AB_NAMESPACE \
    --userId 'GrUoyRar2KN2Xdoe' \
    --isPublic 'true' \
    --limit '20' \
    --offset '94' \
    --sortBy 'kAKLHFDpnT9Kj7jK' \
    --statCodes 'B9NmFopuWsrv81GB' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'pbO8ivucNBWZ08Gr' \
    --isPublic 'false' \
    --limit '52' \
    --offset '78' \
    --sortBy 'cJBMyODp50tbY9ps' \
    --statCodes 'CsmpYVHSZ0q7Ovqy' \
    --tags 'zPmvebOeUXYtDduA' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'VJNlhIPsCKsBpbPd' \
    --body '[{"statCode": "N5aZDIYf41Yug7U8"}, {"statCode": "9n7xN4AyMgsk2om5"}, {"statCode": "d8PgeVw3C4iOE5FE"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ImUw33Rf9tmBGD2p' \
    --body '[{"inc": 0.7160012969763725, "statCode": "scuczv8IjjdreTnq"}, {"inc": 0.015036558541892231, "statCode": "Z0g0WxGYMF8SHPzH"}, {"inc": 0.9937211442504116, "statCode": "gpbdOE3GxfLvWZ3j"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'qQuA8rXmHpsOMp3e' \
    --body '[{"inc": 0.2588398360389146, "statCode": "BwEvfcLi6R9GDxL6"}, {"inc": 0.9158670130604468, "statCode": "RtV9d92PXGB8Gnqh"}, {"inc": 0.6587772855085283, "statCode": "38wUhXtOmfYz2QAw"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '6qMNNdl8S9PthOMj' \
    --body '[{"statCode": "SpNjYZgv4UUPkY9d"}, {"statCode": "pNm2rFPATZtsk1g3"}, {"statCode": "alxizaQs4McL00Kw"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'MusFE2iIiqanys27' \
    --userId 'n2p1Tb7veHjvts8H' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'aaPzDNRHmhDC2gQH' \
    --userId 'GQDkdZ9RcxqQlxFr' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'QHuFWk1cDjXNoNi3' \
    --userId '1WxxbvT8QgQGlr58' \
    --body '{"inc": 0.6052247219373749}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'KEiB8pGY7shIau3L' \
    --userId 'T2zGGKVVuiqjZagM' \
    --additionalKey 'YDkaAHb5gox1jw2G' \
    --body '{"additionalData": {"t1aYcbEDBCtzojxo": {}, "xP8mIabbSbSRhZRJ": {}, "YoP5tR5oakalcsrn": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '52' \
    --statCodes 'ITqGEIOvBsICiXfg' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '3yNgHadphV0WFgFx' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '92' \
    --name 'ZgDPmTL4wZjKdWe1' \
    --offset '61' \
    --sortBy '8DZQJUV7PrHY2Vig' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["39cIhNmLdm8i0LMA", "PCEqirpQCTDjGaZC", "BRvT23SaW5oPNOFn"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'x3HGrh2bapumL7um' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'K9u9KwQU9B0mKxfL' \
    --userIds 'IFpjfIEDZcY4uMo0' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9126872331000134, "statCode": "wcs7SWcaSlL1PBRn", "userId": "HjqvAiMcSMHbkPAJ"}, {"inc": 0.34132729816540186, "statCode": "cybXxL79bR4LGafS", "userId": "esxnVU18a1x2wED8"}, {"inc": 0.12045976592639673, "statCode": "puYhcC1TwX2I04gt", "userId": "g8mBzGVUniAwtZHW"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.1511258664601819, "statCode": "Ux1T2wzEj6oJvoAG", "userId": "cdRhB37EuCv6JZ8j"}, {"inc": 0.7824514434011565, "statCode": "mdWnd8W9WDgkd5Y5", "userId": "FrSLxJ3RfdNJicVg"}, {"inc": 0.3398822610390525, "statCode": "yvLhJIAC8enuvXDW", "userId": "S48s0dU04OzwgCAT"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "chhS1m0pF6c4sS0q", "userId": "ACt19m836e5eCzDF"}, {"statCode": "Ub0d563ziUs9dD4P", "userId": "25IBXeUqFeu1Dn5T"}, {"statCode": "gJVGAm1wb01myAo1", "userId": "qc0P2xFsQ6yuJGl8"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["eeqBaZ3q1vzQalvF", "q86vwBxujLdtjiM3", "JkMijloUuHgnMsv9"], "defaultValue": 0.9038797106461749, "description": "xjqD21j2TnIVcFiT", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.8674653782719245, "minimum": 0.2741266947155985, "name": "d6PnXLyF0odwh2iG", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "nPDFMIMeKBBKYLwW", "tags": ["YmGooVTVl3vMLNr5", "ZRBAKorfYwMaFjAP", "IOiFaltsqpKiqkxA"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'HyomWXixReBE0xkv' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '20' \
    --sortBy 'A4hxr3HlxI4teKfC' \
    --statCodes '["CnpvDO9ZvAiPPUU1", "XHbJ8OkE3epcJXa4", "X4e1GlnwO44cj3qx"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '20' \
    --sortBy 'rAG0iuCFRhTYkvPs' \
    --statCodes '["Uk8XnkZ6aZKqbBhj", "NEGt1QBlOXmeesR8", "h04wh0zKzHeL0rH0"]' \
    --tags '["rsl83bY2g0dYUSzY", "tOIGa6CWZLoqW8zg", "Y3yQ88iasNCpblkW"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '14D3KPLZ0HQcMkpN' \
    --statCodes '["I76Xk6NoYXusLNaO", "nQXwbuUpC2eOli5T", "taNWPwpBsEp8cE2V"]' \
    --tags '["APtIq6kYP06ihX0j", "8D8Uy6EYoAjdjzD2", "2JRVbOKbJddditkE"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'Xcfz751BrtCT6Ri4' \
    --namespace $AB_NAMESPACE \
    --userId 'VksSucs2TEGX1qee' \
    --limit '19' \
    --offset '90' \
    --sortBy '7QqO1kN0xKg8io7J' \
    --statCodes '4L5IdvbMk908MERP' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'PZHTU7NxelRj9yHm' \
    --limit '77' \
    --offset '89' \
    --sortBy 'tS12vjzlbZYwuE9s' \
    --statCodes 'y6Xbr8CbHeqTzhDX' \
    --tags 'cXi6ZZLJ7sYJQFDH' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'fiRpFXVgcBY9CR4S' \
    --body '[{"statCode": "5dh6GkWt5HP3onbO"}, {"statCode": "iq2TCvlQMyvesIc0"}, {"statCode": "4JABzI33Mx3qscV0"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'moi05p8niVBflBCi' \
    --additionalKey 'fEFrVyCqoJaYBuNi' \
    --statCodes '["1APEc8v5Df9GnmDI", "iGs4hgvwB17NiWGN", "11AbdMFdofq6pPzN"]' \
    --tags '["eTSy9250h3nRiyND", "a9XjjwLSOU2eauDB", "l8qAI98jVPL6nAxz"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'LSqVEl48rjByo3cw' \
    --body '[{"inc": 0.4961098537665787, "statCode": "08dhgZ1pWfH9ZtqC"}, {"inc": 0.5960708757379707, "statCode": "b9WNHk3kWGRYMLEq"}, {"inc": 0.6588600084711087, "statCode": "DJ9VzPcG6w69s1wa"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'Cisall8DXXvF0zHL' \
    --body '[{"inc": 0.7421254750542075, "statCode": "VmmRJlG3hf3ABrGM"}, {"inc": 0.6361683661315624, "statCode": "Qk6rdq4L6M8atCU2"}, {"inc": 0.4466420358876888, "statCode": "l9rWnBli6XtWhUz8"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'ApXJIhPZJgvAiIhT' \
    --body '[{"statCode": "pORkJlUQfg7kphW6"}, {"statCode": "vlLnJvWa9jmE6UdF"}, {"statCode": "HY8IoHDHV8RPH3bO"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'QteXmat5br0ZLTeG' \
    --userId 'V92X2A33ELdarYTL' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'wQlZ21WIAzk3K5Fp' \
    --userId 'em574IDLUxUCmY43' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '8YkqzViRqdoJbbC2' \
    --userId 'Nd7XZpCMLnryHxoN' \
    --body '{"inc": 0.37892668286093545}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'FKQKiYKjG8FciEeq' \
    --userId 'SPKgWVyHdrSNiWrk' \
    --body '{"inc": 0.16944020631901613}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '9qOw1hHBFzKZeuhQ' \
    --userId 'z4iZwnTRWSc2JorI' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"z5IxtOjMFlUJPUxn": {}, "MFdbLh0HdtBnKQo0": {}, "uWEROn5bhFGACVBa": {}}, "additionalKey": "mcHJoPbRrFZmC5EF", "statCode": "qrdDDAJq3AEHB5Xf", "updateStrategy": "INCREMENT", "userId": "y3XlGrWyAWNGnZra", "value": 0.44321269713949607}, {"additionalData": {"kZNxNAsGwjZcgnxI": {}, "01h5qIFBzIfqMDzF": {}, "DeZGVxUmcgRlJZXq": {}}, "additionalKey": "LYuyYvCy3IZVvH6V", "statCode": "MM3QrtbWkY579Qlp", "updateStrategy": "MIN", "userId": "dqNJwLRjO0ymS1KD", "value": 0.6691924015450055}, {"additionalData": {"3bWyXNPXt6oeyldn": {}, "YxlZrGO1CqZ5Oq34": {}, "8IFnddUsgGCNgtMg": {}}, "additionalKey": "ndzJQ4hpacoEZKMx", "statCode": "f0iS6jLURC3A5UTk", "updateStrategy": "INCREMENT", "userId": "ixp6IqgFcLACuKlz", "value": 0.04881452953801302}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'uwk6Rh7lpm7LW79s' \
    --statCode 'WGE8gKGQH46mlpoj' \
    --userIds '["7ejpWLTUT8JuROs2", "DFJLTaGqchcd1HFp", "jpTpUaq6Top6Q7Wl"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'pZwYuTlyEoJBSA1H' \
    --additionalKey 'TQ68tIb49SJp7jOX' \
    --statCodes '["porpwEKOWrWqi6jc", "Xv0lNUXWVgYHty5g", "96Rkfo59CNlsVeyW"]' \
    --tags '["AK79epIFN4Q5ZawL", "v1SJaSENO5A3yTQu", "ucngrv3hbqm2HpQy"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'YKCdwbD98uhT492Q' \
    --additionalKey 'daYlLQCOpqYdFMLd' \
    --body '[{"additionalData": {"vlu7tdoWbRDgk8Di": {}, "RwfNF6MVsSKRTUcR": {}, "wxZH5XDVCWQybxOh": {}}, "statCode": "ky0HVr5ZNYecO4kr", "updateStrategy": "OVERRIDE", "value": 0.6516286463601645}, {"additionalData": {"x6sJAJ0ar9KKPY3S": {}, "QeIZXl55bmbK6kUL": {}, "12rucH0ncwRbnY5a": {}}, "statCode": "vsxHMfGwK7yUM0fi", "updateStrategy": "INCREMENT", "value": 0.6249989325787463}, {"additionalData": {"SuTr8obY7ULC22lj": {}, "AyAh4x5o8TBpY9pl": {}, "odUlqTgjETggq7dQ": {}}, "statCode": "M58CscMoVR0GDtp0", "updateStrategy": "MAX", "value": 0.647774172493119}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'JgyEXbNHNtbQoQtX' \
    --additionalKey 'ehKBUo2rPuaFE04K' \
    --body '[{"additionalData": {"MacgW0rDntq753WJ": {}, "23f6oSQanZQQLyiR": {}, "B9yG8ZCL5pZBVrpw": {}}, "statCode": "gtoAa1yYbztGhrUa"}, {"additionalData": {"hv6Thvcfv9guq5aC": {}, "cRmMhqIuQHntgoN6": {}, "VozRTe6td1YA0ET4": {}}, "statCode": "qMBDYaaReD3MizQg"}, {"additionalData": {"vWfePKQYA2Q3zWxD": {}, "sAcyizVm3FTuA1yS": {}, "7nvvRJnJVRNXgbC7": {}}, "statCode": "4RdZZifthCNyE1M1"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'dSGL8tCRbN3hwbxn' \
    --userId 'cJxtxOJA3BBDJeiR' \
    --additionalKey 'z8MrFFSLKPz2oULg' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'MGqmJDhG2fttWgxI' \
    --userId 'QDatoEpIHuIXvLAt' \
    --additionalKey 'nsVhksaZddLjsg9s' \
    --body '{"additionalData": {"tuFuNVXKSjUa0tFD": {}, "9U43Z6H7Id1cdbdt": {}, "DXtQuJek23mvrTJx": {}}, "updateStrategy": "OVERRIDE", "value": 0.19810574564414452}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"MzqmftygylTWX1fB": {}, "IZraAzO7YR7semKQ": {}, "dKokdBZM3LFZU59V": {}}, "additionalKey": "c4ro1kELHTJgzyjl", "statCode": "U2oeWXOxSwL9RkDp", "updateStrategy": "INCREMENT", "userId": "nSsrBFRvNeezA5QH", "value": 0.7092352962531896}, {"additionalData": {"aPUklaN14y3ZLCuz": {}, "sHZQ3fxHI8BsJwwN": {}, "vLKF0YDsYj5OzkgI": {}}, "additionalKey": "BLbJfW8XBf0oLR5i", "statCode": "QsceFYfDTHhux2N7", "updateStrategy": "MIN", "userId": "0EKlfztBGjqK6C9A", "value": 0.6894018273073241}, {"additionalData": {"STBREC7kmMOEzIgH": {}, "wkL4QqGpTAdNkIAd": {}, "iytEHRP9YlkTHKNq": {}}, "additionalKey": "G1HExYTE8fGJi5SL", "statCode": "Qg2Frp0zzuOh4Km8", "updateStrategy": "MIN", "userId": "10irHV2DwWnTpNGW", "value": 0.2976298161284169}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'F3VlFOUbfdDfWl7w' \
    --additionalKey 'Z69CGJqzHzi23fEm' \
    --statCodes '["2F93OqKf05bybbV4", "CLJo44UHfAn4sBcy", "dRlUv3D2t8MlPyr3"]' \
    --tags '["9VnQ5MOJPfGzF7uF", "OJylX6CRvMfJPkbI", "5cyARREI9cWVAkLX"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'nhfxRZq6mryNgdHM' \
    --additionalKey '5SGTuhozzmGhmjY4' \
    --body '[{"additionalData": {"mdI07R4aGMex5c10": {}, "tqpygSnTiHTaHNHS": {}, "BnX0gF4gTgd1pfFu": {}}, "statCode": "YHufQ4aCqwqa99wE", "updateStrategy": "OVERRIDE", "value": 0.7656285474375116}, {"additionalData": {"mFqvRyB33RXPZi51": {}, "7eklILbKZUAY42nH": {}, "J0OXr49Ji3Vt6UBt": {}}, "statCode": "Gvugs8WMo46iW938", "updateStrategy": "INCREMENT", "value": 0.6707428333002051}, {"additionalData": {"WNoGMuzh0hhrzjPm": {}, "W4alRuIAA9VZpc8N": {}, "yjNKi4GAskpIg3p5": {}}, "statCode": "UVEY2UsYyDnMyohv", "updateStrategy": "MAX", "value": 0.4968292972922479}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'My71qg5aTuzj1eFu' \
    --userId 'Q6CParrjgfsJsWGw' \
    --additionalKey 'vOmwb31S1ya58GBc' \
    --body '{"additionalData": {"ouCfrImj4qwJvjJx": {}, "0lkBZf49ZMQXRA2n": {}, "GMiergNk7eQqDBd0": {}}, "updateStrategy": "OVERRIDE", "value": 0.2461047440364431}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE