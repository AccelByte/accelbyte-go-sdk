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
echo "1..75"

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
    --body '{"maxSlotSize": 76, "maxSlots": 75}' \
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
    --userId 'iSwMaxnJ' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId '2tpnctwq' \
    --body '{"maxSlotSize": 93, "maxSlots": 65}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'l6nuUj8N' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '01OyUB8V' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId '0EYgaT8I' \
    --userId 'B4fjkqff' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'SBgDYkfe' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'dbYP0m5I' \
    --userId '7YbrSgJE' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["yzh3jXls", "FKoVcYTz", "gwO7Y6GX"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'ac6jYWmI' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'UdvgTkJu' \
    --body '{"achievements": ["xdqpiO1y", "7FTwLCEp", "zFHcCp7p"], "attributes": {"RUmRYNaQ": "Vxay7DI3", "Rp1e63L4": "4JUWIKzt", "t4mDwNHz": "852VoWhL"}, "avatarUrl": "4Idb0eQE", "inventories": ["KSRfSPMd", "Ilmj11gJ", "7WDmP8Dz"], "label": "M9nEZXra", "profileName": "xCBVWKG3", "statistics": ["4FPOuq7V", "s58cJ9Xm", "TRy8s8CJ"], "tags": ["MuPCExlc", "35rTe2aD", "Dyg4j1Ua"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'MycSR48h' \
    --userId 'TCQS6vXj' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'i44skYjh' \
    --userId 'AjpXMT76' \
    --body '{"achievements": ["OgMz41Oy", "MMBllLOz", "OJnxHdVb"], "attributes": {"tRsDhKpF": "VYQDV7A7", "CTDMGKW9": "Gzsuu9iZ", "bNzwUyHO": "dqFMcKft"}, "avatarUrl": "m7FbwO73", "inventories": ["kBtya6RJ", "89em1JYV", "Mc5GZypq"], "label": "1VJWyoLQ", "profileName": "z0ELMBeR", "statistics": ["yhMCuTJj", "6QqIBJns", "Uc1XKTIf"], "tags": ["O90CULBp", "yF4AOCMu", "wX0A4jRG"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'krwClXfh' \
    --userId 'yUhI6WKh' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'otX93t14' \
    --namespace $AB_NAMESPACE \
    --profileId 'eDoA5jfd' \
    --userId 'XC5PWm16' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'I4VCUi1H' \
    --namespace $AB_NAMESPACE \
    --profileId 'K5Kep8LJ' \
    --userId 'ryfqe0zf' \
    --body '{"name": "ViyNM4uJ", "value": "maxDpyMv"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'SSc0AVff' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'GaknAA0y' \
    --label 'iLZK9kvw' \
    --tags '["DXbbaTRT", "hJg2Qy6e", "XF5ZKIrt"]' \
    --checksum '96kvnLXb' \
    --customAttribute 'K29Z6dt4' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'LrIiE3LN' \
    --userId 'ldSuYeO8' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'EQCzswIq' \
    --userId 'owJFJt9s' \
    --label 'IeKpHTJf' \
    --tags '["D0XkSYqp", "kD02fSJU", "f28vfn1E"]' \
    --checksum 'dq6qhx2E' \
    --customAttribute 'oCWFRw1s' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'A2JyZCMG' \
    --userId 'YX3sZnsz' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'cLSafIcC' \
    --userId 'aMKCxp4w' \
    --body '{"customAttribute": "QK0K509I", "label": "Pb0ZFOsM", "tags": ["1yZUj7I1", "v7IicOz0", "RrhnRvk7"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '8Qxh5ary' \
    --userIds 'N2ykp9w9' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6571261147973715, "statCode": "BJMtBlhP", "userId": "krvoVOQj"}, {"inc": 0.5979967149349102, "statCode": "EBLEwKAK", "userId": "YyTEON28"}, {"inc": 0.8748449812381314, "statCode": "Q6vtmRra", "userId": "NnsGfFrZ"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5652874411949028, "statCode": "XiNnaZS4", "userId": "szxhA28d"}, {"inc": 0.9797795386234731, "statCode": "i1ciGp4H", "userId": "X3EkTZN4"}, {"inc": 0.1532677009399661, "statCode": "XqOQaqw6", "userId": "GhEgGmAG"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'miZA9V66' \
    --userIds '["NG2BE7bB", "M9zqmpye", "dClotIeL"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "irPOkHYz", "userId": "tPfDslph"}, {"statCode": "Rb91OxV8", "userId": "JdQ0d6bC"}, {"statCode": "PSZyWd9X", "userId": "t4ROoQFt"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.3635073615706669, "description": "gg85Pj1U", "incrementOnly": true, "maximum": 0.9850439990358736, "minimum": 0.3207573191813238, "name": "VSK9kCuB", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "aLfUIY56", "tags": ["D7102pSy", "ggZfNXvF", "F9X8xNFT"]}' \
    > test.out 2>&1
eval_tap $? 33 'CreateStat' test.out

#- 34 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'ExportStats' test.out

#- 35 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 35 'ImportStats' test.out

#- 36 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '79' \
    --keyword 'fRM263vj' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ulGSRf2I' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'j04hvaJM' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '05mOArFn' \
    --body '{"defaultValue": 0.9669691191038271, "description": "sCgPVF1G", "name": "Sj0UA0pj", "tags": ["DahNGiot", "ebneQWgE", "GSnFxJZ0"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'CQW0cjnf' \
    > test.out 2>&1
eval_tap $? 40 'DeleteTiedStat' test.out

#- 41 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'CUSDQBEo' \
    --limit '48' \
    --offset '65' \
    --statCodes '65XOv4fv' \
    --tags 'WDc71KBe' \
    > test.out 2>&1
eval_tap $? 41 'GetUserStatItems' test.out

#- 42 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'dvHd6rjb' \
    --body '[{"statCode": "sh6HHriz"}, {"statCode": "Ed3aTQvW"}, {"statCode": "dEbGXTa3"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkCreateUserStatItems' test.out

#- 43 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'L8IkfK97' \
    --body '[{"inc": 0.4581002360163623, "statCode": "FCvPkEZa"}, {"inc": 0.7342487873222833, "statCode": "oE0u3S2k"}, {"inc": 0.6312932532568873, "statCode": "K4pU4STA"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItem1' test.out

#- 44 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'MGV3k2Vp' \
    --body '[{"inc": 0.42654465518554885, "statCode": "3iL7u7HF"}, {"inc": 0.5405049875744555, "statCode": "47gwPqnJ"}, {"inc": 0.5666600619877141, "statCode": "3aEfDIwo"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItemValue1' test.out

#- 45 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'z680d74b' \
    --body '[{"statCode": "ulFU5kVA"}, {"statCode": "2apJDfKn"}, {"statCode": "EuCdXtlG"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkResetUserStatItem1' test.out

#- 46 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'aq7WxOXb' \
    --userId 'WvUWxFws' \
    > test.out 2>&1
eval_tap $? 46 'CreateUserStatItem' test.out

#- 47 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'QilDoqm6' \
    --userId 'iGNo6FKK' \
    > test.out 2>&1
eval_tap $? 47 'DeleteUserStatItems' test.out

#- 48 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'TgLDtsJX' \
    --userId 'zATbgdCV' \
    --body '{"inc": 0.1829411696899781}' \
    > test.out 2>&1
eval_tap $? 48 'IncUserStatItemValue' test.out

#- 49 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'sqhnJagu' \
    --userId '7gYe2dL2' \
    --additionalKey 'TCFhH4iB' \
    --body '{"additionalData": {"lGaepXhk": {}, "UUgwy5oI": {}, "IrqieWbg": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'ResetUserStatItemValue' test.out

#- 50 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'FnwCqMwl' \
    --userIds '9nknpS2K' \
    > test.out 2>&1
eval_tap $? 50 'BulkFetchStatItems1' test.out

#- 51 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.15929344934294143, "statCode": "OvKVnuth", "userId": "VX06VcqN"}, {"inc": 0.06060624411683946, "statCode": "NWqTHOO0", "userId": "03Qggo6n"}, {"inc": 0.31739859943074156, "statCode": "9ZUuCltk", "userId": "oTlpO58M"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItem' test.out

#- 52 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.1389917836143859, "statCode": "1YsshgJD", "userId": "Q6aU9rbB"}, {"inc": 0.39646896542831866, "statCode": "a3pqAlu1", "userId": "IUstacGg"}, {"inc": 0.11713960257386624, "statCode": "LLJkLRMf", "userId": "tInvYsmO"}]' \
    > test.out 2>&1
eval_tap $? 52 'PublicBulkIncUserStatItemValue' test.out

#- 53 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "aehf0Eqz", "userId": "MTU8BROR"}, {"statCode": "ZUqBBsMt", "userId": "F9EXM3Hf"}, {"statCode": "nWWjvOg1", "userId": "d7iBy3Om"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem2' test.out

#- 54 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.69241623983545, "description": "IfQvXp7L", "incrementOnly": true, "maximum": 0.9144303936580331, "minimum": 0.5581854629330573, "name": "UEnCPGbp", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "FqFrvNKk", "tags": ["n9DPycBY", "gSxh7igK", "fBATZXBQ"]}' \
    > test.out 2>&1
eval_tap $? 54 'CreateStat1' test.out

#- 55 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'hL5mR3iX' \
    --limit '18' \
    --offset '82' \
    --statCodes 's19ulYD1' \
    --tags 'hs3brtcE' \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryUserStatItems' test.out

#- 56 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'jXwg7geS' \
    --body '[{"statCode": "JC9uIPl4"}, {"statCode": "77O3AU2W"}, {"statCode": "Nquaku2v"}]' \
    > test.out 2>&1
eval_tap $? 56 'PublicBulkCreateUserStatItems' test.out

#- 57 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'cNd8GMsR' \
    --statCodes '["MmgjUA9X", "V1l5jNEO", "nkPkeK3h"]' \
    --tags '["SY5v0Gtc", "ZngjnnJw", "U0nCvkJS"]' \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryUserStatItems1' test.out

#- 58 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '55FU4flB' \
    --body '[{"inc": 0.6780625067665637, "statCode": "BJKopBFZ"}, {"inc": 0.8766713488738689, "statCode": "oUCo3IkX"}, {"inc": 0.7973240982746231, "statCode": "pbaiexoI"}]' \
    > test.out 2>&1
eval_tap $? 58 'PublicBulkIncUserStatItem1' test.out

#- 59 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'AYVTe74c' \
    --body '[{"inc": 0.19677433933872268, "statCode": "6S3sYMTP"}, {"inc": 0.8208317144878592, "statCode": "QNP5uPMQ"}, {"inc": 0.6083318278385204, "statCode": "MaQq4qoJ"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkIncUserStatItemValue2' test.out

#- 60 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'Fq2zMzuR' \
    --body '[{"statCode": "GHOTe1g3"}, {"statCode": "hzpB5yrX"}, {"statCode": "EinuBJ1v"}]' \
    > test.out 2>&1
eval_tap $? 60 'BulkResetUserStatItem3' test.out

#- 61 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'vjnZ2M9l' \
    --userId '3AssNGUB' \
    > test.out 2>&1
eval_tap $? 61 'PublicCreateUserStatItem' test.out

#- 62 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Sgl5p9uW' \
    --userId 'TrQmpTuq' \
    > test.out 2>&1
eval_tap $? 62 'DeleteUserStatItems1' test.out

#- 63 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'iLRWgOwq' \
    --userId '8lGLXzIr' \
    --body '{"inc": 0.6027937557930468}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItem' test.out

#- 64 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'AAjavJeJ' \
    --userId 'UtL4qogM' \
    --body '{"inc": 0.38794924475723436}' \
    > test.out 2>&1
eval_tap $? 64 'PublicIncUserStatItemValue' test.out

#- 65 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'xmpCpYCm' \
    --userId 'PzWvP7UZ' \
    > test.out 2>&1
eval_tap $? 65 'ResetUserStatItemValue1' test.out

#- 66 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"FUmNtqbW": {}, "u2id85qK": {}, "2a6BV03B": {}}, "additionalKey": "UVg5NsZt", "statCode": "6o2Do7Qv", "updateStrategy": "INCREMENT", "userId": "RhbOh7Pk", "value": 0.8664747802791869}, {"additionalData": {"8oopO5DD": {}, "3Da4ljdq": {}, "pUl04ZaZ": {}}, "additionalKey": "K4UP96my", "statCode": "iIIvaOXX", "updateStrategy": "MAX", "userId": "NsaHWNAn", "value": 0.5514420609643546}, {"additionalData": {"W1GNPgZV": {}, "aBz232z6": {}, "gRNn4rXr": {}}, "additionalKey": "2c352j1Q", "statCode": "7bPM9VGD", "updateStrategy": "MIN", "userId": "KH1dBx0f", "value": 0.9846690134652897}]' \
    > test.out 2>&1
eval_tap $? 66 'BulkUpdateUserStatItemV2' test.out

#- 67 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'xiwL6puX' \
    --statCode 'aPDPhxJQ' \
    --userIds '["NkxkEe87", "cLdVtHU5", "PaBrYrYw"]' \
    > test.out 2>&1
eval_tap $? 67 'BulkFetchOrDefaultStatItems1' test.out

#- 68 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'Ty4mB9s2' \
    --additionalKey 'CNSX58tU' \
    --body '[{"additionalData": {"SOVR8iqh": {}, "Wpyst23c": {}, "VfsqJbYi": {}}, "statCode": "T8tWHA36", "updateStrategy": "OVERRIDE", "value": 0.9573372743754659}, {"additionalData": {"XTKfSQox": {}, "iMtRO02Y": {}, "JbmRrMUv": {}}, "statCode": "F1dGhs1M", "updateStrategy": "MIN", "value": 0.6000663532510948}, {"additionalData": {"9oYE7BsF": {}, "8tirGF9P": {}, "W2XOzV3i": {}}, "statCode": "weze1TxG", "updateStrategy": "OVERRIDE", "value": 0.8926506375079842}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem' test.out

#- 69 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'WEpUbrry' \
    --additionalKey '1a64MIkm' \
    --body '[{"additionalData": {"Zhd654Na": {}, "wvd7QhGb": {}, "VW10Hxiq": {}}, "statCode": "WM5LRsN5"}, {"additionalData": {"0Eokvthv": {}, "thGB4YR5": {}, "VxkS92Jt": {}}, "statCode": "imrVStC3"}, {"additionalData": {"WytzyMz7": {}, "qKAkqtr0": {}, "rg7xoqpS": {}}, "statCode": "uUpRg8d1"}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItemValues' test.out

#- 70 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'VP9oBKLQ' \
    --userId '59y8BtZU' \
    --additionalKey 'aR6jvXwQ' \
    > test.out 2>&1
eval_tap $? 70 'DeleteUserStatItems2' test.out

#- 71 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'ThBQgCdu' \
    --userId 'Pl9qHY4B' \
    --additionalKey 'nehHHXBV' \
    --body '{"additionalData": {"gujez18I": {}, "HJaMXsJ1": {}, "kEyAfdxP": {}}, "updateStrategy": "MIN", "value": 0.8791354471713472}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateUserStatItemValue' test.out

#- 72 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"1jgECrsj": {}, "PPhgofhc": {}, "47bkE7aj": {}}, "additionalKey": "nyFU8iQn", "statCode": "HQWmKCDK", "updateStrategy": "INCREMENT", "userId": "HF8xtJS5", "value": 0.8936271187999024}, {"additionalData": {"dEH8RsDf": {}, "RC5Q3Nqz": {}, "qWcMhgIL": {}}, "additionalKey": "mW1Qboft", "statCode": "oZaDJbod", "updateStrategy": "MAX", "userId": "Ch8zM9WK", "value": 0.7350106051210384}, {"additionalData": {"AqZpBPfB": {}, "MzU79MFW": {}, "1Xv3srIl": {}}, "additionalKey": "tvoZfO2u", "statCode": "XVVN2YUF", "updateStrategy": "INCREMENT", "userId": "e4qPrFb7", "value": 0.8093549192299025}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkUpdateUserStatItem1' test.out

#- 73 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'mi1yvvby' \
    --additionalKey 'mdtVQeMj' \
    --statCodes '["tQ50JkzD", "qGEybPfW", "vrRKbVL8"]' \
    --tags '["pdPeuxuL", "0w47n5ZS", "5ihFHLEP"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems2' test.out

#- 74 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'NkcQmrls' \
    --additionalKey 'HGI2SlYn' \
    --body '[{"additionalData": {"2KFLxmqH": {}, "bhjGuTIQ": {}, "8Jv2gjQV": {}}, "statCode": "77Cy395a", "updateStrategy": "MAX", "value": 0.8907476499948187}, {"additionalData": {"qWgB0XuF": {}, "dptOlDaf": {}, "acMefCNQ": {}}, "statCode": "DjUboGFd", "updateStrategy": "OVERRIDE", "value": 0.67033717790233}, {"additionalData": {"j4JzYbiP": {}, "aJLYGgPM": {}, "F0g16Bah": {}}, "statCode": "K9FshNVe", "updateStrategy": "MIN", "value": 0.6935052890906758}]' \
    > test.out 2>&1
eval_tap $? 74 'BulkUpdateUserStatItem2' test.out

#- 75 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'yUtKep7L' \
    --userId 'Fb09C4CJ' \
    --additionalKey '9JHIyuZF' \
    --body '{"additionalData": {"sdC9c9br": {}, "fzmgpB9c": {}, "EBAwaSD2": {}}, "updateStrategy": "OVERRIDE", "value": 0.399400695481426}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE