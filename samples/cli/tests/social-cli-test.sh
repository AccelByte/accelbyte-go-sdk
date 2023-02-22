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
    --body '{"maxSlotSize": 18, "maxSlots": 71}' \
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
    --userId 'wJcUqd1t' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'wlPxDMhi' \
    --body '{"maxSlotSize": 76, "maxSlots": 46}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'rOgh4Y87' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '6dEkEnNu' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'fdPxWx06' \
    --userId 'cg3Nl6Sx' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'Ixz6moty' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId '7V3udkJX' \
    --userId 'VIHNHWFT' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["ako7mnwR", "8ng8SD2p", "PAcke4Bp"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'A21Z9tFE' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'XXguRo7Y' \
    --body '{"achievements": ["UlQe03HL", "iuuAVAEn", "4BvIfGuU"], "attributes": {"hUgwi3tN": "1LjbjjQc", "HGuO5k8A": "xkN6qu8t", "gvahzQQr": "K2Cu1gSM"}, "avatarUrl": "isT8giMY", "inventories": ["VBAq8ZQZ", "i94ppJoC", "3i2pLlL0"], "label": "wXYw2wSN", "profileName": "PI1uj4pm", "statistics": ["6wDmq64t", "ktKlXmHQ", "DdJGOgbc"], "tags": ["0MwJ4ywG", "XGCvAm5y", "LkxSED0R"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Giyikchp' \
    --userId '7bs5fOa1' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'qXNUu1L5' \
    --userId '7NI9mNTr' \
    --body '{"achievements": ["kAmXdUgG", "BOdhwLEp", "DGIB7n4r"], "attributes": {"gUJqNonz": "eJ7V5CY7", "2u3zLabL": "J9oUA4Vj", "6nh8p2nL": "Au5bpAba"}, "avatarUrl": "jGRnmMQ9", "inventories": ["1yrpSJoF", "aUNRSTzd", "mt5RNbjm"], "label": "a0o5XM8y", "profileName": "hh68J5s5", "statistics": ["dLBfjNwu", "jSOT7BT9", "yVqH4yst"], "tags": ["PgDXWtY9", "YnU5SDs3", "bYCaYnT5"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId '3ZTw3Hfl' \
    --userId 'PoDGe8j5' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'gNBKI73l' \
    --namespace $AB_NAMESPACE \
    --profileId '4M4a8ZCQ' \
    --userId 'mGTzzx2B' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '6t0U5fKu' \
    --namespace $AB_NAMESPACE \
    --profileId 'mA7al5V6' \
    --userId 'uqTZluIt' \
    --body '{"name": "YtXZvwYW", "value": "GsVcVWtI"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'Gx5umIyw' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'tpnkv1ne' \
    --label '1ftAf4B2' \
    --tags '["TyNHWkwN", "WtmRucLJ", "NszVe0Bz"]' \
    --checksum 'bsvuOmRn' \
    --customAttribute '2gBxSJWX' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'dxhfBIMc' \
    --userId 'uT6XTc1K' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '6Byk1mJv' \
    --userId 'ulUPqBRi' \
    --label 'J95Z62XU' \
    --tags '["zfNrq9EB", "twMNyjxW", "RxyYihdx"]' \
    --checksum 'sRnDmqi9' \
    --customAttribute 'm3HUAY3c' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '9V49tPnk' \
    --userId 'yNG5O487' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'yoZ7dPxM' \
    --userId 'q8x2kXhF' \
    --body '{"customAttribute": "gdvfH4hY", "label": "E0GnB4dP", "tags": ["Nfwj7M5h", "YQnyjbFr", "8q6tPUXN"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '40' \
    --statCodes 'Ma1JxN0Y' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'uX7OpZif' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ABw4sKQY' \
    --userIds '2qb1DBPV' \
    > test.out 2>&1
eval_tap $? 28 'BulkFetchStatItems' test.out

#- 29 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5643957328100183, "statCode": "RRvekIE3", "userId": "mnBFolKt"}, {"inc": 0.8876716821730253, "statCode": "4hZPHVYo", "userId": "8f9fRIAD"}, {"inc": 0.22405454692497373, "statCode": "nEQT20R4", "userId": "twpcBwXB"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItem' test.out

#- 30 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.20533211529640394, "statCode": "u2oCCHqu", "userId": "blxntTMM"}, {"inc": 0.8379175778194531, "statCode": "crYTKlHH", "userId": "YhNpDe4X"}, {"inc": 0.09607672245281484, "statCode": "PvpOEaDF", "userId": "j4ap4NGN"}]' \
    > test.out 2>&1
eval_tap $? 30 'BulkIncUserStatItemValue' test.out

#- 31 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'CtLVyyD4' \
    --userIds '["Jld6iHDu", "K2lnL2bo", "MMb9DXYf"]' \
    > test.out 2>&1
eval_tap $? 31 'BulkFetchOrDefaultStatItems' test.out

#- 32 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "3Xkgkur1", "userId": "u23JF2zg"}, {"statCode": "FFgxEBqz", "userId": "ZNjeAgkZ"}, {"statCode": "33OWei0T", "userId": "IRW2dPoA"}]' \
    > test.out 2>&1
eval_tap $? 32 'BulkResetUserStatItem' test.out

#- 33 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --limit '65' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 33 'GetStats' test.out

#- 34 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.957551757189368, "description": "YNnBfztp", "incrementOnly": true, "maximum": 0.7409442152313405, "minimum": 0.21595404570917587, "name": "uPq6z99s", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "wKXNXISi", "tags": ["HJdFSrSx", "kBsnVNKn", "WNQZGfyW"]}' \
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
    --isGlobal 'false' \
    --limit '84' \
    --offset '0' \
    --keyword 'FGsgfNQ4' \
    > test.out 2>&1
eval_tap $? 37 'QueryStats' test.out

#- 38 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'hl5A98dh' \
    > test.out 2>&1
eval_tap $? 38 'GetStat' test.out

#- 39 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '6dwqtmgV' \
    > test.out 2>&1
eval_tap $? 39 'DeleteStat' test.out

#- 40 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'bvolT4wv' \
    --body '{"defaultValue": 0.6581018845846776, "description": "yh4KsUsb", "name": "arykLszd", "tags": ["9p3ZWx8H", "nv8lpJ7t", "kIZE7S1I"]}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateStat' test.out

#- 41 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '52eKavDF' \
    > test.out 2>&1
eval_tap $? 41 'DeleteTiedStat' test.out

#- 42 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'M4y7XbSL' \
    --limit '22' \
    --offset '6' \
    --sortBy 'fbqQhv0Z' \
    --statCodes 'Fa8OlvaG' \
    --tags 'LtvbRTIO' \
    > test.out 2>&1
eval_tap $? 42 'GetUserStatItems' test.out

#- 43 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'zLQ0SBEP' \
    --body '[{"statCode": "T5uFPDJi"}, {"statCode": "tnRsA0IN"}, {"statCode": "L1c87B8C"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkCreateUserStatItems' test.out

#- 44 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'qOwtiDRC' \
    --body '[{"inc": 0.46296238982113014, "statCode": "ea6H2SUV"}, {"inc": 0.7417422324256144, "statCode": "62Y2kdTU"}, {"inc": 0.6576359380502301, "statCode": "usWL6Oe3"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItem1' test.out

#- 45 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'u18he17j' \
    --body '[{"inc": 0.8540778383036689, "statCode": "Zw0SAzqj"}, {"inc": 0.7605019801582145, "statCode": "BkUdiXJl"}, {"inc": 0.2552460280907912, "statCode": "1wcMTCqg"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkIncUserStatItemValue1' test.out

#- 46 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'G0LC6hkW' \
    --body '[{"statCode": "LHnXokyh"}, {"statCode": "eoisEo6P"}, {"statCode": "Vzf9rePu"}]' \
    > test.out 2>&1
eval_tap $? 46 'BulkResetUserStatItem1' test.out

#- 47 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'secgPjRu' \
    --userId 'poghsWUP' \
    > test.out 2>&1
eval_tap $? 47 'CreateUserStatItem' test.out

#- 48 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'vrL0Bbzz' \
    --userId 'lrJyRsdm' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserStatItems' test.out

#- 49 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'BWXj7669' \
    --userId 'wQNqUe5Q' \
    --body '{"inc": 0.401235809242967}' \
    > test.out 2>&1
eval_tap $? 49 'IncUserStatItemValue' test.out

#- 50 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'fKVRFSfn' \
    --userId 's3O7rjfJ' \
    --additionalKey '5wVFBQ0D' \
    --body '{"additionalData": {"g8PawHam": {}, "SEarIKU6": {}, "U6nziyv8": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'ResetUserStatItemValue' test.out

#- 51 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '63' \
    --statCodes 'zD4mCAqb' \
    > test.out 2>&1
eval_tap $? 51 'GetGlobalStatItems1' test.out

#- 52 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'CLBl9RNJ' \
    > test.out 2>&1
eval_tap $? 52 'GetGlobalStatItemByStatCode1' test.out

#- 53 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '1RgU85Qf' \
    --userIds 'R4NbiIZM' \
    > test.out 2>&1
eval_tap $? 53 'BulkFetchStatItems1' test.out

#- 54 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.20711480511474611, "statCode": "ARWZgebZ", "userId": "VieGUPpV"}, {"inc": 0.37754864998824034, "statCode": "Fgkm1mLL", "userId": "hKWBQcbb"}, {"inc": 0.29287126675776953, "statCode": "TTLbTvSw", "userId": "s7YRGr0J"}]' \
    > test.out 2>&1
eval_tap $? 54 'PublicBulkIncUserStatItem' test.out

#- 55 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.888922300907203, "statCode": "RTWrPRB1", "userId": "W8XQTAzS"}, {"inc": 0.10504196190000636, "statCode": "VjkLdyH0", "userId": "QV8FQJlF"}, {"inc": 0.2542697290253687, "statCode": "GrssDt2r", "userId": "a1IWYgsq"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkIncUserStatItemValue' test.out

#- 56 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "6UHG6D4s", "userId": "jWGycc6m"}, {"statCode": "FFLQq6ei", "userId": "zsAUtKO2"}, {"statCode": "G5it6DcZ", "userId": "8HSDAO6X"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem2' test.out

#- 57 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.9332370139691547, "description": "zH6HZsrq", "incrementOnly": false, "maximum": 0.6107098178872271, "minimum": 0.40208337134232053, "name": "PRyDydOQ", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "kQMYyQCx", "tags": ["eu3ml1d3", "jlTzf4s4", "rr2K1PqZ"]}' \
    > test.out 2>&1
eval_tap $? 57 'CreateStat1' test.out

#- 58 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'onUn0VGW' \
    --limit '49' \
    --offset '87' \
    --sortBy 'Mlj3CRBE' \
    --statCodes 'sqpGag3I' \
    --tags 'x4HcJLmw' \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryUserStatItems' test.out

#- 59 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'N84lq2cB' \
    --body '[{"statCode": "nN8Ejktv"}, {"statCode": "WM7gs1gi"}, {"statCode": "2PCyvhRz"}]' \
    > test.out 2>&1
eval_tap $? 59 'PublicBulkCreateUserStatItems' test.out

#- 60 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'aY3vXwFA' \
    --statCodes '["jZmsQdOm", "x5j8qkdh", "XVFaIXcx"]' \
    --tags '["jsdRCe9j", "T1HE6Cga", "9dCfidsn"]' \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryUserStatItems1' test.out

#- 61 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '4J1qJZvn' \
    --body '[{"inc": 0.47172786424730795, "statCode": "j5l66QRC"}, {"inc": 0.5678459992964446, "statCode": "OjAOJJor"}, {"inc": 0.8753285361760066, "statCode": "Fl5EGfdW"}]' \
    > test.out 2>&1
eval_tap $? 61 'PublicBulkIncUserStatItem1' test.out

#- 62 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'sVYIZRzJ' \
    --body '[{"inc": 0.47503040931729335, "statCode": "JwNdqNtu"}, {"inc": 0.9619323565612101, "statCode": "lTkwPDIg"}, {"inc": 0.974885735362097, "statCode": "BFuSixBC"}]' \
    > test.out 2>&1
eval_tap $? 62 'BulkIncUserStatItemValue2' test.out

#- 63 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '9a9lPRXv' \
    --body '[{"statCode": "Dr6KjOIp"}, {"statCode": "B0Gt2Y6v"}, {"statCode": "ldHSPXCz"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkResetUserStatItem3' test.out

#- 64 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'sv3YHnOF' \
    --userId 'hXjx4Dqf' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserStatItem' test.out

#- 65 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'yfnNW47s' \
    --userId 'nOAPd6bu' \
    > test.out 2>&1
eval_tap $? 65 'DeleteUserStatItems1' test.out

#- 66 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '8w0rI2ZV' \
    --userId 'sSWztHoV' \
    --body '{"inc": 0.4219269218079269}' \
    > test.out 2>&1
eval_tap $? 66 'PublicIncUserStatItem' test.out

#- 67 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'witfn452' \
    --userId 'AdxAW8GB' \
    --body '{"inc": 0.5281550397560233}' \
    > test.out 2>&1
eval_tap $? 67 'PublicIncUserStatItemValue' test.out

#- 68 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'AEhzcMfg' \
    --userId 'DkQ4IGwG' \
    > test.out 2>&1
eval_tap $? 68 'ResetUserStatItemValue1' test.out

#- 69 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"6iWDKh51": {}, "bQ9jsCDH": {}, "fenjVTtc": {}}, "additionalKey": "DjO0ylHT", "statCode": "iDGVsqH1", "updateStrategy": "INCREMENT", "userId": "w5KokPnn", "value": 0.6593116832811929}, {"additionalData": {"ZsuMtHe8": {}, "MFZwNfZ8": {}, "k1tck6fv": {}}, "additionalKey": "MtT6MxsG", "statCode": "oSVqsKG2", "updateStrategy": "MIN", "userId": "SimNqAfE", "value": 0.19356399814519865}, {"additionalData": {"LXAsVVtU": {}, "yduix38a": {}, "ohTLQj4r": {}}, "additionalKey": "LIYP7j66", "statCode": "eD9n3Qqz", "updateStrategy": "INCREMENT", "userId": "qbLsilqU", "value": 0.7115968200624551}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkUpdateUserStatItemV2' test.out

#- 70 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'xnb1Yucb' \
    --statCode 'roP5amog' \
    --userIds '["XGM0xIjO", "f6nEFEYZ", "bhxy6Oxk"]' \
    > test.out 2>&1
eval_tap $? 70 'BulkFetchOrDefaultStatItems1' test.out

#- 71 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'jAcg34R5' \
    --additionalKey 'ct4XIdZx' \
    --body '[{"additionalData": {"xop32wEp": {}, "lRukrgGW": {}, "YD9M9W6i": {}}, "statCode": "DyJwPt7s", "updateStrategy": "MAX", "value": 0.6886874041568193}, {"additionalData": {"BZkPXEo4": {}, "Szvamj0o": {}, "nOavlJ2q": {}}, "statCode": "LDj2VzXr", "updateStrategy": "OVERRIDE", "value": 0.42987762013123454}, {"additionalData": {"7HsEhpjW": {}, "QnlmrvDH": {}, "FOk3pjcu": {}}, "statCode": "7ZAjXAbW", "updateStrategy": "MIN", "value": 0.17982270276357182}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem' test.out

#- 72 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'qHe9FXfD' \
    --additionalKey 'RkooLjzJ' \
    --body '[{"additionalData": {"gSDET7E9": {}, "wgJk9Cl3": {}, "FKzM7b5h": {}}, "statCode": "8sou6OlE"}, {"additionalData": {"deNOhiBY": {}, "2tERS7Y4": {}, "D4n9UPzG": {}}, "statCode": "HGPBYULm"}, {"additionalData": {"AvvpbznF": {}, "Jsmec2Wh": {}, "9YKzbXx2": {}}, "statCode": "3WVEani1"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItemValues' test.out

#- 73 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'cHgk7B1y' \
    --userId 'QujSaN3V' \
    --additionalKey 'F5kIIaRp' \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems2' test.out

#- 74 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'N76O5Inu' \
    --userId 'lb4SGSwM' \
    --additionalKey '91JtBZLg' \
    --body '{"additionalData": {"j9kUZvWs": {}, "YoBgBdNh": {}, "m6LxjXM9": {}}, "updateStrategy": "MAX", "value": 0.2685341454463799}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue' test.out

#- 75 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ShWLsPOP": {}, "t40La7PV": {}, "49LPiYhx": {}}, "additionalKey": "Llwk2yP9", "statCode": "mgftJ4tQ", "updateStrategy": "MAX", "userId": "wfdk4ODc", "value": 0.027843156144267467}, {"additionalData": {"k1mxiEB3": {}, "ZePMHvrd": {}, "oXICMIiF": {}}, "additionalKey": "XTV4wOyy", "statCode": "pWu5jTtV", "updateStrategy": "MIN", "userId": "arF8vnjc", "value": 0.5220638661610237}, {"additionalData": {"tYyX7QMc": {}, "WMOvQOye": {}, "1Ao3x71a": {}}, "additionalKey": "o2OnK4fm", "statCode": "fG54VH7d", "updateStrategy": "MAX", "userId": "cs6a3fzJ", "value": 0.9189743500338978}]' \
    > test.out 2>&1
eval_tap $? 75 'BulkUpdateUserStatItem1' test.out

#- 76 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'qGh3JwcD' \
    --additionalKey 'U57Tjf6D' \
    --statCodes '["ydAUS4uG", "jb5HaAdX", "Weya6EwK"]' \
    --tags '["ZXxnXdgY", "4LDv9ohi", "s6WJaNzP"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems2' test.out

#- 77 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'InyrVxlR' \
    --additionalKey 'jFFwJlHR' \
    --body '[{"additionalData": {"ieK5EngF": {}, "l4WJXfi8": {}, "d5swCPH1": {}}, "statCode": "qj4hUQD0", "updateStrategy": "MAX", "value": 0.2489169332109038}, {"additionalData": {"mcSNdYVP": {}, "HZE1q2ip": {}, "uaZKXxWt": {}}, "statCode": "6uNL9plO", "updateStrategy": "MIN", "value": 0.7099104292458754}, {"additionalData": {"TiggDFQc": {}, "8gpQ3e6y": {}, "1hE7C4B0": {}}, "statCode": "p3oiJEvt", "updateStrategy": "MAX", "value": 0.4956199312459503}]' \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItem2' test.out

#- 78 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'cdLstWgN' \
    --userId '7Utrlzsh' \
    --additionalKey 'RPiDJ362' \
    --body '{"additionalData": {"XVhHJPsI": {}, "W7hodSuu": {}, "Aof27IUH": {}}, "updateStrategy": "MAX", "value": 0.9045050529174979}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE