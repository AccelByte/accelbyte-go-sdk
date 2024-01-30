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
    --userId '3mSkpbmZK0xjVQ43' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'J7Ha7FiGyGC3lI2w' \
    --userId 'CmjuYhXABrdIQegM' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["6iGM40fpx5B3NsUR", "eZeOMb320OFlsCzA", "JT47dTF359FcD21h"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'tJV8WIgJaH9ohTnK' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'HKn373aHO4PffoeA' \
    --body '{"achievements": ["6WNihlFMJrxxBy2F", "7X9fKXLtLNPNAbSE", "cZk9bx1onegKhy5j"], "attributes": {"mbyXzqx5Y21X3oyl": "ncysJQm22VYvTGgj", "uTU0LYnlpjkJg8Cj": "ZC1XFXOqC860XK3W", "AIdQqouDLgOSqecj": "0QahBdJv7NXgX8bs"}, "avatarUrl": "Cr3PjBzH6eGMDXvT", "inventories": ["yDOzcO1UIGkLoT4L", "DgL58MsILRXRw32W", "aNitfTXZBno4rPQm"], "label": "bCXDiNL4GI21UQPd", "profileName": "Ke6pVelDsmU80oDG", "statistics": ["TpNndSMPlMmbrtdZ", "VtHSJAzztK8YkfMv", "PkbtUmVLdStaUt3B"], "tags": ["Z85v6hm02hmNZ4vO", "N04R9y74C7Mh1HCR", "yDQ0n9rOt0nFvrRt"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'uJVdJDxTUo0MtH6i' \
    --userId 'SHLu7k7ALJuPlCpH' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gDtVanuzKns03knJ' \
    --userId 'IA24VrQmLgWrmvVK' \
    --body '{"achievements": ["TbZuFqZ91U15ztrg", "bBf0p2irD0yo1CP8", "WsUBXuw2FAS22qbb"], "attributes": {"bVVHEtvta2O8ZJZB": "H1zVdSgBThiJ4zry", "1h6k3hy9i7sAwk2w": "QlAVXrDIRZSmP3M6", "WK2uZLUBWgS2mGY9": "Z3Mqghy4dgzqVqFb"}, "avatarUrl": "cIdCfXKq85JB6qXJ", "inventories": ["TCPyceaz7OWmcI4a", "vpGhGS3muz1aIsNm", "rxPtNeN6o74zL3E1"], "label": "J2vjhEVzyJpEisoB", "profileName": "OLSLWlffHXGKfvyC", "statistics": ["pQStE28Ax6AZNjph", "FfvT6O4iRSwsmzjU", "fWtDVOyIyamHB0B7"], "tags": ["5FGa0U3VHqmEA8Z7", "qnJR3RVLzWWpHY6k", "F1AtDgpNH95RTnOy"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId '55zcL8bpB7bpSow6' \
    --userId 'vcPxSe3ppu373ZRx' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'ZXGpG4bQ2nt49h44' \
    --namespace $AB_NAMESPACE \
    --profileId 'aSeL2QnpWcczeZ8a' \
    --userId 'qeL9kATuhMSduCcg' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'EmfCYIWoggrlgaW9' \
    --namespace $AB_NAMESPACE \
    --profileId 'gEycEP0N84gJj9RU' \
    --userId '7mTHJOcENaFyvTLo' \
    --body '{"name": "K36VrFIfElY2LyzN", "value": "LglDyhA6ZqssWyJv"}' \
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
    --limit '23' \
    --offset '16' \
    --statCodes 'pYQ1Qear9aKQubyL' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'vBtAda2iVxB2p8zK' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '27' \
    --name 'ujc9cEGLoNy7CywN' \
    --offset '16' \
    --sortBy 'XvoqvgbxPEagM3Ip' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "81WYAswMYfYL9aUF", "end": "1973-09-12T00:00:00Z", "name": "u4FU21FxSJXipLLz", "resetDate": 81, "resetDay": 86, "resetMonth": 1, "resetTime": "R9zgNfPULh8imq2Q", "seasonPeriod": 38, "start": "1998-08-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["ZP4fKE4nCZTpuxvs", "jT1AILx0Hjl9BRPH", "Z5atXVRx56IxfN46"]}' \
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
    --cycleId 'YMMOsPzJn2P9LA19' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'FAmtqEvvv22gTvrv' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "jDbXQeztqSKhIKlB", "end": "1974-02-25T00:00:00Z", "name": "SDg5zxLVb0AenYrC", "resetDate": 63, "resetDay": 96, "resetMonth": 17, "resetTime": "jIO2ysNZ21rljeQr", "seasonPeriod": 22, "start": "1992-02-10T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'qil9HbKQXWYiWcau' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'F877OaBRHBEI1nWX' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["JeQDwUABL5YcEANT", "K5k3A5evyidaNVqb", "wouSVrhiz3BHKGN8"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'De88RRocJn8OfUUx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '2ABgAfsJEPTJXyNt' \
    --userIds 'AWJcXBFUeuc9jwo8' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9708609041478049, "statCode": "jSr1vo9osrysdnka", "userId": "WJb8JhB3Lu1MRqaQ"}, {"inc": 0.8877843521565527, "statCode": "8VnqpJKfGkBoGtuf", "userId": "pOXxDz1YRCR7Jpza"}, {"inc": 0.6725929109209658, "statCode": "RVjsgJ4yoP1qpiUU", "userId": "fepxtRsnuCp9BxUq"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5336102716346355, "statCode": "taDHCvVjqlHD2eWP", "userId": "2VJimhxHVHjzaF8q"}, {"inc": 0.17837114137199594, "statCode": "o0Ru8GOkFapSyBPg", "userId": "mCJVJoO8GItfBpGq"}, {"inc": 0.38782083233277875, "statCode": "aIJV9tai0buHm8iR", "userId": "DKmUb7UjATF0Bgdw"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'FDT4OJ7L4xRLqxJO' \
    --userIds '["YNHlFYuioFPUQ5P6", "kRsZkfRyffSxHDpR", "GIWJXuEcnji8ahK1"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "nRJvLWd75sVFo2bl", "userId": "J7pUWCJMpcKkxPNm"}, {"statCode": "hXwPXOFQhDcB1y06", "userId": "dkl1EcWci1rnJoVL"}, {"statCode": "ruwfV6Zj3hAyNf9a", "userId": "RXYlgjjZNlCx9DxZ"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'UMydP4TeMk2a7J86' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '8' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["DZEJBtXFxOrgIMTr", "EIgppI4DbpgRfJRV", "hOPkfAhji1VE0a4k"], "defaultValue": 0.09958688532925464, "description": "mqa9xd88QfqNK2D4", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.3853494859677141, "minimum": 0.375258104063272, "name": "UzrR5uAdcAp0gogy", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "6NC6GF40F0tj21X5", "tags": ["Kaf9ZBzMvBBWMf44", "At9TQTCR9fWOVwkL", "OBaSyHquiGu0pOcs"]}' \
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
    --isPublic 'true' \
    --limit '6' \
    --offset '44' \
    --keyword 'qe7JCdLjQkIbJPkl' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'QREOWJrvDCq9dNvn' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ppkBb4pQ1A0yhm1Z' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'MreqQsBkQ6klXXy4' \
    --body '{"cycleIds": ["21wHhH76emqrXXgs", "B9MLswWvjl5RPqSH", "HNMMCw2Hn0SMNHi5"], "defaultValue": 0.549438620524712, "description": "CbVUQhSp8YNnknQZ", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "wpU2ROzikghJLEtK", "tags": ["z4K0A44eJNW9DmwQ", "8raXdQ73tUkLLueG", "wslJHgcn4Z1EG3fs"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'mxD49Hr2NaCuM09z' \
    --limit '23' \
    --offset '42' \
    --sortBy 'RLKkurFTKLLeLTgI' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'TjQNuR36XAse9XAr' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'pPXu79UOrytoYXyi' \
    --namespace $AB_NAMESPACE \
    --userId 'UBSw1BXqLh2t2k8n' \
    --isPublic 'true' \
    --limit '76' \
    --offset '13' \
    --sortBy '5OsN9nQyADjvtoaz' \
    --statCodes 'miDQLFLsdwEFrT2x' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'x6sU3Uc3OBmuQknv' \
    --isPublic 'true' \
    --limit '23' \
    --offset '47' \
    --sortBy '4ks7S4jxr4U8iFaX' \
    --statCodes 'ZJ6S5ow8BAgS6Fku' \
    --tags 'lqkbBKTBPy6wjaEi' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'xjgbopKLqmXJKr1w' \
    --body '[{"statCode": "VlfIcoefWJGhcTGm"}, {"statCode": "Lxr4wKMcB3db6bOS"}, {"statCode": "3MxwwAnXadUq9hip"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'e14mCU4bDpgkrHeV' \
    --body '[{"inc": 0.9584626852926685, "statCode": "xyr8TGTQPeJhaReX"}, {"inc": 0.38538353534163217, "statCode": "oXC0vuyNhbkdSPWM"}, {"inc": 0.39306557996503866, "statCode": "joUE8mJ4Xw3F2MGw"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '2apdgltjAMnj74zO' \
    --body '[{"inc": 0.547789295245038, "statCode": "0lTswW9oXVKWTHub"}, {"inc": 0.24933831262076023, "statCode": "Dny4tzo2alk4YJwk"}, {"inc": 0.6637328461288474, "statCode": "lJ5HrHjdRYPqO19C"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'sGnA4CTr8gcHySA1' \
    --body '[{"statCode": "wgRd0Xu8iqwN2pIX"}, {"statCode": "7FZp5kUl4oGKURBP"}, {"statCode": "uDfbmg1jkJUpvHdL"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'LSH8KXjDMEUFiKc7' \
    --userId 'ly5EaUBs72Y9Redz' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'sSF2AaS7avdzzjED' \
    --userId 'k4rsgZmF05uEdLBB' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'I1HaEeskxqx2YMhT' \
    --userId 'ChofOSNpngQugJdt' \
    --body '{"inc": 0.13178066723157122}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'NwEiJ8DHypA5LZGQ' \
    --userId 'Z0J44gl8HBfZawsN' \
    --additionalKey 'oIQqpigqQWrmpiau' \
    --body '{"additionalData": {"YnKAdEzpl6H1Kz9e": {}, "PfoWX2CKwV0cXSQG": {}, "M8E2VMS8eUYUMjd8": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '83' \
    --statCodes 'oEL0zg8Nu0bKwC95' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'GJXbSPzpyzbQgLFS' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '100' \
    --name '4qY8HTGdFacEqIk1' \
    --offset '56' \
    --sortBy 'rEprbQEJpZNnEZ58' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["frLuSli7CWOXIncO", "cvBaEYxVEZJzWv1K", "yV9s5ZRAXNSbOJuo"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '4cHHUI9GNLmV5BAd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ShoNeyJkV6AB6oCb' \
    --userIds 'jBXQUkeYoQkRywA6' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5763276005415261, "statCode": "ZIprAQsv4hP2req7", "userId": "wQrbdhr0a5m8EPby"}, {"inc": 0.1538118141813798, "statCode": "5iKCFVSq5Vwc3ktu", "userId": "mFKFFJHAUpVBeBYq"}, {"inc": 0.4667049037095382, "statCode": "PYFIlriSsumAJ9uG", "userId": "3NpxaPd4FCvMGdPf"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.10120813304031273, "statCode": "Lbrs7E7MP40QTvJn", "userId": "HkJoiAXC2AdYXwY9"}, {"inc": 0.7278079779636393, "statCode": "eB2IhWsxdrhDRrq9", "userId": "7tWTIQpKOp86YwXq"}, {"inc": 0.8227336272873632, "statCode": "zGDgogmcTR6BSAPo", "userId": "NfItTnXMRolzUR3M"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "9I0P4h7u16dFytk7", "userId": "JXCmlLsF8dLQ2y6p"}, {"statCode": "CFz165UQO3M8JOwP", "userId": "nneVLLX0Hhed5fL3"}, {"statCode": "j53JPFw9rwLRi96t", "userId": "OX6MzebE58ugUcCi"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["hJCDN5kLLe1M8i3Y", "QNDxwmfA5bcNTiHK", "8uQzHfups32ihBEs"], "defaultValue": 0.1266931775806438, "description": "3mFq3am4Q3igvvUY", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.8475377518953937, "minimum": 0.5102929906940086, "name": "LBOIdGVMuKVDuZ5v", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "SIbtu51zf5rY2s27", "tags": ["1p7ux6sCMp3v2v3z", "nYV3uu8taO5ja38t", "U5DK0bI0V22k67CH"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'C2RBD0SZDz7CbOah' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '17' \
    --sortBy 'w6VaVJj1GzLp38HN' \
    --statCodes '["5xv8glY8US99DUFt", "tJtY8KtITHgbjvs8", "T8iXGc4Slt1iRcNs"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '100' \
    --sortBy 'arn2ns5xbmBJiRYp' \
    --statCodes '["51mfLWLrEDN1lNlP", "RtkkzmUbLGLnId7j", "yux3eAwVHajv19KJ"]' \
    --tags '["RHb0zPgijybsBso4", "rXN4fRkSakeFOCXX", "hu63ypVbcB2Jv5et"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'upeGpAmW6N1DR5mF' \
    --statCodes '["ll7Ij8a1Wwsxv1sR", "rW9rxp13HcekgeMb", "DbdlOpFtP2padQhT"]' \
    --tags '["CQ7rk9ttjw52vjOn", "mYJ0hcRlTWHmV3w9", "AdAeYKaQn88sWVFP"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'U5JiK2O81NNzHcMv' \
    --namespace $AB_NAMESPACE \
    --userId 'xv74TBGcoAKKPPq8' \
    --limit '76' \
    --offset '96' \
    --sortBy 'Yufzu2r3Zh1UrgXS' \
    --statCodes 'KgqIhX88LrT0m5lr' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '2Qzf0MtarJsbnS6s' \
    --limit '81' \
    --offset '48' \
    --sortBy 'A0dDQy2rVdzJE0KL' \
    --statCodes 'rPFOvABLcauQwWYu' \
    --tags 'm7NE8SCK1FDCfn4u' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'WjewZa043ouceAz6' \
    --body '[{"statCode": "K5NUcs0ejg5JZhwD"}, {"statCode": "XNHcd6WhlObg8txf"}, {"statCode": "ljDh3lEcZZnDG9oh"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'lAwlmnwv1sdDrQsA' \
    --additionalKey 'JkrqYy8MEg4dbKfg' \
    --statCodes '["2BQTF7ghW694Bte8", "QdxBHcfsIuBVPvSp", "RBQL6CXKL8dVNKZT"]' \
    --tags '["RrEtQGCnWBDa4ZQS", "51ZXzqCeDN83NHk1", "TGTm3CnpsWeIkma6"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'qp6Q0AoeN6stBE3z' \
    --body '[{"inc": 0.2494086135879786, "statCode": "AcxQU41ZeF7JkWOk"}, {"inc": 0.45370011353781414, "statCode": "xvmYk8n5ASZ5RIRE"}, {"inc": 0.43777839975712207, "statCode": "57ZMpBlsYf1HAbya"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '7nsgDvoSqUfoJfln' \
    --body '[{"inc": 0.8184755486780666, "statCode": "RKZPnf9tATA9xDkG"}, {"inc": 0.7436569728268075, "statCode": "uTWJtvOvn6WeKT76"}, {"inc": 0.21097555489051145, "statCode": "uk5KWlM6jfKWwlJ0"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'tK1GVf4cW02fsYAL' \
    --body '[{"statCode": "mS6Aw1Kkq1Q0w1ES"}, {"statCode": "t7lA3uB7rcSkX9UO"}, {"statCode": "hFRpLCRWmXhOYnUQ"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '1Jc27v3CbX33HWQl' \
    --userId 'eYyBhc9NL4Lr4Lfm' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'tCHZRstu29z4tfnC' \
    --userId 'OmJxCheQgamitw3N' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'LlUn5LBnTnTVVZ2R' \
    --userId 'Jyjb8COvT4jGAkGP' \
    --body '{"inc": 0.9699579183218298}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'M2tXL5DTMJnJQVTD' \
    --userId 'LHoteGcCHVPZuO3K' \
    --body '{"inc": 0.8972261039957329}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'nUINTvywkjvj16Z6' \
    --userId 'HNR4LqyQASJzLOEr' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"iX0k7Ul2miA6hvIA": {}, "mntQpkMCKf0ieRfb": {}, "zxj4uK9L4xSDnXiw": {}}, "additionalKey": "WtSwtQsX3HwfP26x", "statCode": "gubWpUjJnukagHEm", "updateStrategy": "INCREMENT", "userId": "SUuUqlI13vZKQC19", "value": 0.3699403769453433}, {"additionalData": {"r4u1AuNGvTfPXQHB": {}, "1WOcQeqxZw9bBQhh": {}, "LwcdrZ3BycdMGYS6": {}}, "additionalKey": "B8FjsaxywlvHJZAq", "statCode": "OUZ0qQ4DqkwH90lT", "updateStrategy": "MIN", "userId": "Gt2zMkyxpO4nsNOP", "value": 0.6578073411953522}, {"additionalData": {"2v5fzblMbsXJTFGT": {}, "yL2cBjIWxKXGlSNh": {}, "h9UwCpti5LeVUj3G": {}}, "additionalKey": "1zeX1KMfokNDsRhQ", "statCode": "UnFObs1LeOZmFl39", "updateStrategy": "OVERRIDE", "userId": "hIVuEkm5RQtcy8vv", "value": 0.6678268207078316}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'HMQJ18vtwh6aKygd' \
    --statCode 'Rr4RLjMUd8Y6392Z' \
    --userIds '["5g6q6C4jfPteFxD8", "GNJFYvRGwHVomvjH", "iH1oQgqpQz9uGXff"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '8K1O0TFZUs1CC4SU' \
    --additionalKey '7cdBbuuHLSR3hgoq' \
    --statCodes '["d9aS5b1RmdEKHEDR", "Flmm5sSs3y7kNKes", "7G9Abi2ANT3lPVpL"]' \
    --tags '["C42RjS3fGHWCKkNx", "9whGhFxQDiSvA9Mj", "tMyH3cks0Y3nC0si"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'JLBtJNHs8wrLgEKH' \
    --additionalKey 'SUZ2DNv2JC102L3G' \
    --body '[{"additionalData": {"gqygHQ2v1ZpZHEyQ": {}, "HtxxxttiG4B4hHMa": {}, "uNaSqmuq3zLEvYaH": {}}, "statCode": "VLnRE2VRlF8MwS79", "updateStrategy": "MIN", "value": 0.2409286763727173}, {"additionalData": {"PQl1WG8hkwD2YPqL": {}, "YA08UPXCluwYYiRf": {}, "RCU98sWNogtdOH42": {}}, "statCode": "MAXNcHX8BEtcRQev", "updateStrategy": "MAX", "value": 0.10904864771487821}, {"additionalData": {"9GOsLUDklWpWe3gG": {}, "geDhbxAyJeOgyqTs": {}, "u7zbJkkaB9aCF4H0": {}}, "statCode": "ViOkRgGZxO7KZOW0", "updateStrategy": "MIN", "value": 0.41563175053238477}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'iaF09AuCfONdpykj' \
    --additionalKey 'pq84RK2QAu9ANEV2' \
    --body '[{"additionalData": {"8pFEQaLI7eN0fY72": {}, "k1LGSUTMYbZ4g268": {}, "Bpp35yc4raDKjUhk": {}}, "statCode": "33B0rykyVNtWSN1V"}, {"additionalData": {"g5c7Hgo76kvABkMM": {}, "VUklKimW5KIpqA76": {}, "qhf7bKuit4mD2OcP": {}}, "statCode": "iv7iKVuZyiA86KE8"}, {"additionalData": {"oO4Z0m1QYGcBkPW7": {}, "oVIF3L2lTbEzu6Vx": {}, "TNukgQF4NwFWFInJ": {}}, "statCode": "aUStjWH4lw74JRZV"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'GjGTii6Uk2mE2gsl' \
    --userId '0iayL4ks2LRDMWZI' \
    --additionalKey 'QcyU26OIZQbTrkZ2' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'XuUrb5Pr8c8PtQl8' \
    --userId 'DeBCKEqLX061EQg3' \
    --additionalKey 'SvXuKy5owKHjm0rw' \
    --body '{"additionalData": {"hiAttaeo8i1L6Had": {}, "Yp8HEXUOqpQuM4yD": {}, "Nllfgv9kdp8KgKhI": {}}, "updateStrategy": "INCREMENT", "value": 0.5631101148737699}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"viHLalgR1Degkxik": {}, "r2BuLHdSkkbENvyG": {}, "pZDtRjKr84XCzFUr": {}}, "additionalKey": "ThNQlLqvDuESKxU7", "statCode": "CWhfFAQ6ywqWfXz2", "updateStrategy": "INCREMENT", "userId": "umUqikZk8xv5IdrF", "value": 0.3510585836092658}, {"additionalData": {"TMGDuBo3oNyIdLTR": {}, "ki56onv9owCsLiJs": {}, "yoRV0j99acBZ6VW6": {}}, "additionalKey": "9S0RzYmaYQg70iXK", "statCode": "BWgfIWQO9hZjkVlp", "updateStrategy": "MAX", "userId": "NIqRRixFunaWqmvo", "value": 0.729734926932685}, {"additionalData": {"ZeFTp8H5JEgMzn6K": {}, "3vL5JYJSSCXCmYMc": {}, "RQ6wUp9eWC2x2Wnr": {}}, "additionalKey": "82egPnjOmmxUTcLC", "statCode": "7iYaPMyfN5EkwJZR", "updateStrategy": "INCREMENT", "userId": "2wiDdBSwPdX5Aj9D", "value": 0.9949369033295127}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'iJkaiofHPYgN8fbx' \
    --additionalKey 'hcF9Kiis2dp9YmYP' \
    --statCodes '["ZWSjWJA5CxXtnD4m", "JctL4dhUFfbHZdGX", "BLlfRSqcay4X840w"]' \
    --tags '["wF6gxTcfQluTde1A", "LwW1n0Le48J5XtgK", "fB9VAAR4AbjfKtNd"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '2eICmVOg0mT9rhO5' \
    --additionalKey '8UcHCXI2l76ntyGU' \
    --body '[{"additionalData": {"uCYWLfIuEspKscGk": {}, "1h5xa5OfyMol7I1I": {}, "aOxu4u7uvnOYTNdP": {}}, "statCode": "HdFwGYMQR3UlVnQA", "updateStrategy": "MIN", "value": 0.9010274539879118}, {"additionalData": {"nIiRfoj5JnnqUQsh": {}, "Bd2HK7tUrZZz4ywB": {}, "isfW0E3POiAVUlgZ": {}}, "statCode": "gheHrzBcSHITyAE9", "updateStrategy": "OVERRIDE", "value": 0.6890360918226802}, {"additionalData": {"Gen2rFRxqOgczWE0": {}, "NR87WGtj7edwsFaL": {}, "6KgJCAhto52Uc0vw": {}}, "statCode": "EaLBdeqbvkc13mGw", "updateStrategy": "MIN", "value": 0.39181403373981605}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'nHkZGubbfhdTJ2b3' \
    --userId '5v9i4XQpfsJJlUFd' \
    --additionalKey 'Umy1TrUMZsxcKEIc' \
    --body '{"additionalData": {"h5ma5V5LcmQK7Onc": {}, "f2pAbYqYYAjblVTB": {}, "pTcRzLvsVJ4yukEe": {}}, "updateStrategy": "OVERRIDE", "value": 0.20863886107759944}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE