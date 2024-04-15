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
echo "1..98"

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
    --userId 'v5vUi03PnQwGZTEX' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId '9jHlXQPiNLghls2z' \
    --userId 'BHfLBD5id6EauPgq' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["Jo5UHdJNL57RkJHN", "sVlELx3GWPTUxD1Y", "nNB4w96SAeQrUjOM"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'eArirTifMJlQ94kt' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'LAl51gdXgmcAxn9w' \
    --body '{"achievements": ["roChaUvwjZ3iho5t", "MC3AMY0inmgKw3IL", "iRj4T9GUyNCmt0rb"], "attributes": {"Rfo68njsYEaX2I4R": "VLmuF22s9XWHNwyE", "HfbbWfp10h0yM3fW": "6N76DQKVQwyWQUe7", "XiWfJlzR9fMLFlMA": "yurxT91Z8tOrDcBK"}, "avatarUrl": "C0L5gINkJug2FppC", "inventories": ["CNhCfzOsNqX38wbt", "uIBqeYkr0TxLlu8a", "HPfa3MTyTzw9RM1l"], "label": "pKDBS965GwcaSMSj", "profileName": "fxBhBP3t830kATp8", "statistics": ["cbLJxAriRUTBCMgt", "YPPElaKlZJHOrRW3", "NL4ZR9c8okhKwZtC"], "tags": ["pKKrkyurMgymihxr", "x5FHC2pOYygTl3QR", "ERh2mVVTEYpiMIXf"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '4iqAOG1kOZiqw80t' \
    --userId 'ANIhzMEIDkXlEpzq' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'QdTNZ9SAz97VEk8U' \
    --userId 'VwjA3JreFO7Vilfh' \
    --body '{"achievements": ["3MxXtvanLP8ZJavN", "2HkuKOwxSByL7FtX", "0UeX74tt5n3ywJtJ"], "attributes": {"fW8nT8K5GtK9p4P5": "hGBgeBeaa4I3qwmE", "mgs60XHRHHI04DWq": "jDt3H7jnRPqrQoMa", "unusxuF4letNs59z": "7tz9JtN4mUMiT3JE"}, "avatarUrl": "Zy2MT8lBYQHNvXby", "inventories": ["zQ0DkG0IYszQ5akt", "iuCBFEet7MKpZmtP", "cqwwxsiOQ9uAZZY0"], "label": "wQDsJiDfQbFT8PmP", "profileName": "eD3FKyTBNUb0FPj0", "statistics": ["z87F3UTmXBbMigWW", "OgXN1VOlr0NI8l8Y", "iAVqLhlBkqmg1M2R"], "tags": ["zsjF7h38vHn2IIMG", "J7oJYPmU9Rh3KY7I", "qpObBQHQzZ0SH5pm"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId '8uvGAZjnRBplIpic' \
    --userId 'g03JUygzZsL8P4TU' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'wsU5AdkmkzIei8Bb' \
    --namespace $AB_NAMESPACE \
    --profileId 'NsGs27fu3ks1IvUk' \
    --userId 'NZ1kF7opBK4dIhfT' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'a8dhQIAhACjfEZ7H' \
    --namespace $AB_NAMESPACE \
    --profileId '69WwuLtzDgd49S1I' \
    --userId 'HNkf2VNER55s3fsf' \
    --body '{"name": "MeL69luvOXzPhCVj", "value": "dPHSly7GUeZA2tBT"}' \
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
    --limit '16' \
    --offset '21' \
    --statCodes 'wUdy3eL3td8x4GgN' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '5rgAChv5bC4ZKYSL' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '82' \
    --name 'aSPvEs7KaX6sVAr3' \
    --offset '20' \
    --sortBy '6ZZ51UjHUrtWdV92' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "lcmcVgIpR1Vo7j0V", "end": "1982-05-18T00:00:00Z", "name": "LoE1dk67FF6irLPu", "resetDate": 30, "resetDay": 80, "resetMonth": 53, "resetTime": "ZUoZEZL1C4dnGT2m", "seasonPeriod": 86, "start": "1995-06-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["cL8Vd8rLurOTfi49", "NMMTFXck3wQ5HYMj", "rgDI8st77TxjqI0p"]}' \
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
    --cycleId 'x3rvMrxSldnn7sdo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'azyfUSm5heF0Qhbm' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "qerVl9mEOZTswnam", "end": "1994-06-30T00:00:00Z", "name": "ei65vJfX4oKzHeWV", "resetDate": 28, "resetDay": 77, "resetMonth": 54, "resetTime": "tS0VijUP1EhRuC98", "seasonPeriod": 47, "start": "1989-10-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'qaxBDiBpdphEAyit' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '1BjoqkM1DyPT3ci8' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["SPVB4nu2xa2hxJTY", "7jo7DJ0Glra6m7js", "atnuaZj0Aot41VwY"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'fmSy3xBbVk9aZ7Pg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'mglRf6UMKnAlMh8C' \
    --userIds '2y7kmTgVMyS3OudD' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.46470220799923667, "statCode": "uxqHM6OUMcKz2QBf", "userId": "3zbCInpZrxoG9c3A"}, {"inc": 0.05946206900241513, "statCode": "buDfB9hlHHidcAG6", "userId": "0lXfCy8KTpywomeC"}, {"inc": 0.42826012482567366, "statCode": "JZIcvJMSM1IiWwES", "userId": "VZDVaDBAbRgVBobQ"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4485812322531131, "statCode": "wyLhhEhNuqeMB4nQ", "userId": "kOzrEGBvxXpq5pbt"}, {"inc": 0.79079809975844, "statCode": "kYbW7FA4rI6to6JV", "userId": "79TCtFCdHHeTlLjA"}, {"inc": 0.8635293725295076, "statCode": "JkLTKHJLcpCwqZKV", "userId": "H14LIGYs98CiJjoN"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ZbwP1Iv1bLvL8xge' \
    --userIds '["BrFngo944CcQH6tF", "PqkkljkTnbnpbMKF", "y9btHq5ADvNMgVit"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "TfIJrzTRgBV1zgTp", "userId": "iFmmJ8j9arc7Icb9"}, {"statCode": "gctdc09r7OjGHdCa", "userId": "Z1XpwXEJIuChZy1S"}, {"statCode": "MlijOBBO6kl92ILL", "userId": "NQgdz4yWXz3A7YlP"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '2qF69aJRjupWGv4j' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '75' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["KQyYBHzQYfLiYh45", "W4EXMFMK2rxuKcKk", "B5uMsWGBLvCofKQU"], "defaultValue": 0.5385169317050804, "description": "eZMdvlNOuAuFhZAR", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.5758198123142964, "minimum": 0.3683164084932591, "name": "brtpyEMOtAqfviIx", "setAsGlobal": true, "setBy": "SERVER", "statCode": "uqOWEDuHkLXBxhhG", "tags": ["BCiNnFWEs6QmUfbd", "wYrqb1701CEKYmbh", "JXZnZwrXpoTjkS4V"]}' \
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
    --limit '80' \
    --offset '33' \
    --keyword 'bVSU7ZWb64bISvtn' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'mqHhairNZxKlalsC' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FgZ2R2w5MNy9yYLz' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'DFKhkpbg2ZHRKxfS' \
    --body '{"cycleIds": ["h3xboXHhsO7H6pNQ", "vG9kt30DD9APjzUG", "PM4Ubwa0JWBn2ksv"], "defaultValue": 0.5802683095842326, "description": "Y00NrvCpHC5Lkm3J", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "V0pynvLVcGjThCqk", "tags": ["dslKTJuWXkoLKDi1", "1KqEgMFmmMHn8vTp", "6rKQpvPrcpNFiPwu"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'W2bYVDDAydQAw6Ky' \
    --limit '94' \
    --offset '7' \
    --sortBy 'u0aLTE8DV0JMDtz9' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'aJvbrnGNhvetwCnr' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'VwVuoMKFeR1owIrr' \
    --namespace $AB_NAMESPACE \
    --userId 'aEyqwnPqPNZEMDnP' \
    --isPublic 'false' \
    --limit '69' \
    --offset '31' \
    --sortBy 'IsBdo5THGHbdzLyQ' \
    --statCodes 'apNwGsV6SqQ02RLn' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'n16hoHbgXS85bYAD' \
    --isPublic 'false' \
    --limit '22' \
    --offset '64' \
    --sortBy 'AknOvB8WYjB1PxDg' \
    --statCodes '1GkvbxaFvtoWvNAW' \
    --tags 'pQShwK80A7GStEjQ' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'FZ3eGpKze4kmR3kc' \
    --body '[{"statCode": "3y5Mw725zfyRi7Wj"}, {"statCode": "BiTadUCBrMK1XW79"}, {"statCode": "2MH7eatm4ZMsXrDA"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'kKskEzkvSYh7PVnh' \
    --body '[{"inc": 0.5186994095482155, "statCode": "8dYarGrtSyHtsllr"}, {"inc": 0.7011990147676023, "statCode": "5RegNnT3XyYCJoF6"}, {"inc": 0.6090669360582516, "statCode": "7Z3B6912ya02CXzm"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'ElgUaNXqpYirSSqB' \
    --body '[{"inc": 0.8985272373330181, "statCode": "FIA9t0NnE8OdrFjr"}, {"inc": 0.47643172073366946, "statCode": "n2uBmLmtp60K8VDd"}, {"inc": 0.18064748901635852, "statCode": "7FC270pGDXr5AA7J"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z25f4ycPHfxhBnpT' \
    --body '[{"statCode": "FrxXArJJ7HaU2k9I"}, {"statCode": "Kgs6w50oPMcv9ohp"}, {"statCode": "ySxVsr0l33BGgmcG"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'rLqybXtCpDdcqFkg' \
    --userId 'RpqbJYJam5903qzW' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'n8hC0rzSINMaryzw' \
    --userId 'RFBC6rUsaF6mkWz4' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'YcaDPvzihCLuhfyt' \
    --userId '69V5JaD2Yr1uqP63' \
    --body '{"inc": 0.8725711789039259}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'fR9Li9DnjWrrBrM2' \
    --userId '9y7akmyY3OGcjsUb' \
    --additionalKey 'A1qxVnOPG7kMEERv' \
    --body '{"additionalData": {"7LqMB6Bz1kkWhlnh": {}, "jsKzTXG426BNgPDt": {}, "NkMnGcfvwWZvqQOI": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '20' \
    --statCodes '1x9bk9BpZsuiWm94' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'aE2LQwOG0qblF6PT' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '69' \
    --name 'LcOb4goJM73Zy1Ev' \
    --offset '36' \
    --sortBy 'w4fRN2VPQgVxDKMc' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["hs1WGiDkLmTS1iCp", "oayWqYZhJ0BGdwQz", "DzCDccio1unakDPF"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'zes3CB1I3O6jUvsE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '2NUTYPSNrWUy1nvI' \
    --userIds 'aBjNx6HnRbE64qxs' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9847440990947693, "statCode": "mQ5wg4ujc8smMVTY", "userId": "vxpf9Hqf7Fos38hG"}, {"inc": 0.8205314559828929, "statCode": "9XmeVAfpLyZjHSay", "userId": "fbk9CvGUqx5Wy18o"}, {"inc": 0.7970106469388586, "statCode": "KOcyP9qqMWAIeklA", "userId": "Tsiumvnr2icKYaA3"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.1536989983667375, "statCode": "htMG8NGVA3N1mqEk", "userId": "SpjiVFd7jogBzvzZ"}, {"inc": 0.41121587463529075, "statCode": "BYNREvjwpPRwU2ke", "userId": "tOWD2G9g9GwPWiQc"}, {"inc": 0.8524747855966102, "statCode": "oP51j2yW0zlVDhhj", "userId": "KGHglBGUqXHyFG4p"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "5OmDlHLg8XP08IfO", "userId": "TpRtEGdhSO5eLExl"}, {"statCode": "cboyEb0Q0HfkonCO", "userId": "kWgRWk2tR05ep2vU"}, {"statCode": "AZ1qzLd5wksx2x6j", "userId": "k1zppk0pCfgFySCm"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["uSo6Fz5cENEkH0hM", "xFUeoFLKcO9rCRu7", "gscXteqbO6lgpfmL"], "defaultValue": 0.6373180831364625, "description": "zueLWjhCkjjo4YFa", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.007649062901780468, "minimum": 0.8402757473869923, "name": "8FuRVXkJyoWAkkHq", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "l6kDyFay4ebhDVtv", "tags": ["2CepC4lEuPVNeoa7", "PZMgSjSdnZJvKSKR", "kW6HGYu4pNkyM30m"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '8vBAHI8WMJq38GHg' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '75' \
    --sortBy 'ejvjzFzFSq3NhZvV' \
    --statCodes '["eiKyYaI20O6BC4os", "Z3Nt6sDNjFQRSjPm", "TntwCE8vwEmsmAxA"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '78' \
    --sortBy 'E0p5033mvkJ9RgwV' \
    --statCodes '["nkdKrDLY0O3uvIZ6", "ETqSUMIPioBEKV5q", "lV5UhZmTyC48orGW"]' \
    --tags '["cWgHz938Yck3Dk7Q", "siiJQlcn4bzD1hds", "hIr8ylCNuDnkrxI0"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '8YX427GyIpoZIb2h' \
    --statCodes '["wlNDq4bhU6HGaoGE", "pKIV9SHebVOcnxrW", "MX9BUZVnnEI8eFo0"]' \
    --tags '["JvLOlwRtAqTYhIW7", "FjjVxBxjgWgvrQcg", "fKp6FAyfjbYEQExF"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'QLvXwb5CMQchAQat' \
    --namespace $AB_NAMESPACE \
    --userId 'FIkhqv9YPJIH5m4y' \
    --limit '47' \
    --offset '32' \
    --sortBy '9yx44yoYcwZtXTcT' \
    --statCodes 'VpoIclLqBzf29pDy' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '2W7hJUsU3S2g6Mp4' \
    --limit '15' \
    --offset '49' \
    --sortBy 'xmA7c1l2zZYRbUQp' \
    --statCodes 'HgschOa5ALXNAeBp' \
    --tags 'W3jJy86Ir6WfPF7l' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'teLJB1Gv6Tr5PckX' \
    --body '[{"statCode": "6s79BOxry3Vr7yQh"}, {"statCode": "w7M1Rjoh3qAjpEj7"}, {"statCode": "FRSTOuOXh7usA3Cm"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'bLwB2BXc9z0GeoXZ' \
    --additionalKey 'lCXq2aTToPVFDxWs' \
    --statCodes '["GfoFltjssp51hMen", "6aAGKX4ARH1voKM7", "UGzgjtK6urAwO6XO"]' \
    --tags '["EK80KwmtGPaTWOo1", "gV7ywpubpkWjENSw", "lWaqoXxWVVX5Zynw"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'eQqTgSTIQokLdNZh' \
    --body '[{"inc": 0.6806898308813686, "statCode": "3sNo7AjNzFJJlhI5"}, {"inc": 0.6657751325798273, "statCode": "nREMKP6Zf5220MWT"}, {"inc": 0.6267490348497422, "statCode": "iM5bzUKVMCA06Cra"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'ArQHsajI4HvIv7m4' \
    --body '[{"inc": 0.5743696395623035, "statCode": "TC8EsYnPs1KjySkd"}, {"inc": 0.7841702249079464, "statCode": "pYl6UZjKY5qtYgop"}, {"inc": 0.31390967269537295, "statCode": "8ysDnI7LvLv7yhRY"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'itC4hsSq4hcidnzO' \
    --body '[{"statCode": "irczYQrmfvIt9Tdn"}, {"statCode": "zGJR4W1hcXje1Hn2"}, {"statCode": "QgJF4CQ0wTvPEVnd"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '6jm6o4xxhwwj654t' \
    --userId 'rUfbSjmTkbqLT5JS' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'YxE8R3VQuaof8V2H' \
    --userId 'z3lM2z6ATAkZbb2i' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'GxwAoNjBLLzh6gx8' \
    --userId '4UMZeq45u7zom6Ol' \
    --body '{"inc": 0.6681898642699428}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'TCi8qHzNtYOVBe2p' \
    --userId '0QSp5w2X8vsRyWSG' \
    --body '{"inc": 0.19593838185296075}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'EzHqcAKjA75anorZ' \
    --userId '6ddfeM8ugx9aYIl1' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"tKEkIG498Cm8WNXn": {}, "Sm85b8oDdKHWf7Vs": {}, "V0CXGBhIDBsSoEeY": {}}, "additionalKey": "RDerWeWkln2BgNMe", "statCode": "Dhm5Wm8EEgtF4Grw", "updateStrategy": "MAX", "userId": "o1ozMY7VlMhJPAIj", "value": 0.46948448827462896}, {"additionalData": {"R7Fs505RFlE2m3cy": {}, "siHRA9s8SBDu8bVo": {}, "aI43kLjpJ0C15PbA": {}}, "additionalKey": "JY4q2LJVp6aPbK2O", "statCode": "I5HIQs4AHU84kxZU", "updateStrategy": "MAX", "userId": "K2ktG6mvSWPVaImK", "value": 0.950883607950965}, {"additionalData": {"gIFPThHlK5xWy7du": {}, "yk98jd2pR81JlSMi": {}, "1XuE5plrXa2xgS20": {}}, "additionalKey": "YinKBPTNNtkIiGac", "statCode": "Ac4Sx9t7FfMjuXRN", "updateStrategy": "MIN", "userId": "JZO4u25qYvYgJngP", "value": 0.6675853336311429}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'co4kH16FZEWpblUK' \
    --statCode 'Hb8cHReJ8N3058Da' \
    --userIds '["p4iWguzs2Qe92pl4", "qYdHOgSvF36tJOQv", "09XH70GRtaW4uRan"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'evU3j9OT29o220ro' \
    --additionalKey 'Oospo5UdKUIJqpEm' \
    --statCodes '["GH23S3d7SlcbhZWo", "syjmr39Qpk2Uqqjy", "fgYUhwQuVkUmfZKC"]' \
    --tags '["rrwAZefpIUStgOVF", "mryHz6eRVptrxLRi", "NJsF66BFhd4uOHmr"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'uW2GE1MsEIAvcONN' \
    --additionalKey 'exyNSeZELgLj1869' \
    --body '[{"additionalData": {"v895Xh3tSBKOmsqQ": {}, "mpf2XdS3oeoHztXf": {}, "1zZdgQTedJcoUgqd": {}}, "statCode": "5H4wPHtYigoyiKGK", "updateStrategy": "INCREMENT", "value": 0.42388370032176836}, {"additionalData": {"F3yXqZJbFv5XmJKR": {}, "qzL2VOAqNAjEh7aW": {}, "LRhnymCcG6gi9Znl": {}}, "statCode": "fR4MEl3fELeCgN7V", "updateStrategy": "INCREMENT", "value": 0.23521545130820465}, {"additionalData": {"fArWBIYBJRkpOquY": {}, "72AjtND18pZ8Qvc4": {}, "L3fRinmJVWhUai2A": {}}, "statCode": "ruRgEwrWtbuI2jox", "updateStrategy": "MAX", "value": 0.8220088708327709}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'C683maQOuuEhJ9yO' \
    --additionalKey 'rTo7XD92F4xA8sk0' \
    --body '[{"additionalData": {"lB2r6bKQqbqXNrwp": {}, "2xUpBmofaCIhUtZx": {}, "TajawUIxKs4LPxUy": {}}, "statCode": "8Z4b1AqyefVnm6sS"}, {"additionalData": {"tEgfNVozgGwCKWVe": {}, "eaiOIcZJBoOKUAWk": {}, "fOVSnK6XwDeMUhLV": {}}, "statCode": "6GVNo5IQ5bmBddt4"}, {"additionalData": {"7lBTjbMFjzH78qyZ": {}, "PuWyYEYuMcwrudsh": {}, "tpAqCmooN7ydfFWX": {}}, "statCode": "KY1vO1usORRX14Qp"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'VaFchtrSpX1UB2uT' \
    --userId '7NtO3wsI6A1eseX7' \
    --additionalKey 'mTwxIGCn1h2fNy34' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '72jKijfGgMWIhvpx' \
    --userId 'lg6OLQHLOq20Q64v' \
    --additionalKey 'sfre1A3yPtNvVoyy' \
    --body '{"additionalData": {"mFhkiRis23v10OxK": {}, "Rb4fu9pyTQdTnAqb": {}, "BYH1xBf9axOUdfSt": {}}, "updateStrategy": "OVERRIDE", "value": 0.7121278302748667}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"UtzRomwyaCE9Kfh0": {}, "EQOYENrHSkQLNt0j": {}, "XlaY7JYcnNlcYFsT": {}}, "additionalKey": "bT29PU5vKskgC8rm", "statCode": "3dOMQDENncdBCL1V", "updateStrategy": "OVERRIDE", "userId": "sxbnl2dmv13yDv4b", "value": 0.5147783334940226}, {"additionalData": {"aOVAAj0hg4ZyVdiR": {}, "Nf1KVkiAB0eIl9mv": {}, "EMhmvLaExhNnzpyj": {}}, "additionalKey": "xyqg5H82TeURHhkf", "statCode": "pNMhl0CgJscm3HGX", "updateStrategy": "INCREMENT", "userId": "CY1oawsRwG6HJxwI", "value": 0.34370081662194063}, {"additionalData": {"57tYsSXln6Ju0ThJ": {}, "oIpSRlIU9vffDvDN": {}, "abVGtRCBnpRVFjVP": {}}, "additionalKey": "VcO6UlartbMiq4SY", "statCode": "xsAeb2vyd3Ecwx83", "updateStrategy": "OVERRIDE", "userId": "ndoi74fNNUOzN7SE", "value": 0.9530017327500727}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'oKuohQBXXBsCZDIa' \
    --additionalKey 'YBYyFGNgEaSNBeXm' \
    --statCodes '["90BZSYiyUmKtEjge", "3QgtR02hPJOZRvpq", "aHQYHf3roIQUS5ne"]' \
    --tags '["mtdtEvkP1mjvVcuA", "1sj77Fk7DkxeLhO5", "ArYjdUyEVYEt9D4b"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'EwNa77BaKlOgiFlM' \
    --additionalKey 'phqFSmJvXdFRlxNY' \
    --body '[{"additionalData": {"bmbjjht9BKyP1r2a": {}, "QeTJcVa07FakrCUA": {}, "gMN0FftYJuuSI8RS": {}}, "statCode": "YQpKcBHbDt6bHwA5", "updateStrategy": "INCREMENT", "value": 0.515565111016917}, {"additionalData": {"vPVAb5qySxjBPhkq": {}, "HP13xyCxKHrwwIm2": {}, "ZPsbqh18ha3QzVQs": {}}, "statCode": "nUIVlcFPELIQPpoC", "updateStrategy": "OVERRIDE", "value": 0.5833804483853451}, {"additionalData": {"rM9RZaTYQ0BedYsl": {}, "fYaGDm0W1BK3GPDC": {}, "DRdT2ccUsKI5ZGVG": {}}, "statCode": "CpOQ5FdpisSGivI8", "updateStrategy": "MAX", "value": 0.3774888110117811}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'BpU54AHlgXZBVTt0' \
    --userId 'QDPJ1X9KiOEn1WwT' \
    --additionalKey 'xD61xNCAyTiVbeJD' \
    --body '{"additionalData": {"XIsSmvV7WwEx6Qp4": {}, "2Bzh4XvPaVsqlVDw": {}, "m1l8lv1DzVlX9zv4": {}}, "updateStrategy": "MAX", "value": 0.02977378522681562}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE