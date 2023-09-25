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
    --userId 'VwK9KNWgv5J4Rghc' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'yBJifm2gvPzn29Ns' \
    --userId 'wWm4FEqlGUn5CpR4' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["KqFIMARN5uq0NkTh", "6uLSflG932klqIev", "C66Jtil8Tv2TgHOm"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'J0xP1SG4FOWesBTX' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'dbEYEYOxsrpPGKoZ' \
    --body '{"achievements": ["fl2jXwGK79fp7kbF", "gf8PRFLjOkGLKcJo", "NEzpiWCv4pZHFWFP"], "attributes": {"6cHbK7rtfRkDHwpI": "yVDA7wQsIH15NqSq", "Wdp9Cx1j1n5e5BUN": "SNIMSw5x5QvBEwwk", "EVshYX5csu7GAoTw": "IaJUlx5AI3ntucDh"}, "avatarUrl": "pYN9JpyosPqcqIOF", "inventories": ["tR2m4zM4tC78TbhQ", "AuX4robHgyWc9AjZ", "Tj1VrFjs99yp08ae"], "label": "Kq8rSsN6lnjyCpq2", "profileName": "3XPiRqr4DMk9c5ut", "statistics": ["R5GgKcdQbuK8pvCU", "hbvSedHFVk6mEgXp", "PFjQC0sxAdb5CIp3"], "tags": ["YKYoKYmmyvo94XSc", "twzLayq8MZ9IbDyD", "w9o1NJml0K4GHJhT"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '31yBR85Y0OSESY7f' \
    --userId 'iBDMYfXjHfnX8qJ6' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'mKQZkuzcBvWkliup' \
    --userId 'wlhRj2RMxs9vbh3D' \
    --body '{"achievements": ["lfpaxHrtjkf38I0y", "PiXO9IJPrbxGyaUR", "D4roBpZxzpamznCk"], "attributes": {"uKq8LJEiRJAtYSRp": "4nmWTcsX3CM74cmx", "Yvr1DpC0qsNXI9qR": "dgHWrYsbLAvPC9bb", "XqiqBSYPn7c3knYt": "Sf6sPFLabFaTUiYc"}, "avatarUrl": "Cwck4GJby3omEmWG", "inventories": ["y9594cKFqaySlfga", "AxSJvUFX1AGsY2cv", "88NYG4AIfOZ18UiU"], "label": "i4PsXLDytVc0Lnxr", "profileName": "ty5HxReQFhSG3dXW", "statistics": ["T91wGxu63o4BYgoi", "vFv55PmDchR7YzIX", "zbhUB2FaIDEqkBSK"], "tags": ["I6eamNSPw4Jz7WpC", "of9NygLErhgvWUgv", "3GV5LryEtzsEpPLv"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId '7nXyVy4bINCPiyPm' \
    --userId 'ltluVAQ8Ub1mOPZ1' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'jXGjcZzPPH1KrB0e' \
    --namespace $AB_NAMESPACE \
    --profileId '7RCq8BIQbZwtz8er' \
    --userId 't2LLneW4dm15Si67' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '1Wp9eFo265iPR27T' \
    --namespace $AB_NAMESPACE \
    --profileId 'vS4HTItLPz7498e4' \
    --userId 'Y5xDBJXb14PLSY8r' \
    --body '{"name": "CIuNMCsjn93LKG1q", "value": "1j4lCRcFb4vBE7rW"}' \
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
    --limit '11' \
    --offset '80' \
    --statCodes '5Z5E5fZ72EEFxrj5' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'uMPulfaF8tnVVYQV' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '29' \
    --name 'GnYtmoyVy1lFPnXD' \
    --offset '56' \
    --sortBy 'F5NdKPeCdgbmqEi1' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "yxP2vPR0FftpfKi6", "end": "1983-05-11T00:00:00Z", "name": "vcQGDhTUUJe7yOBK", "resetDate": 4, "resetDay": 41, "resetMonth": 7, "resetTime": "3wuTPAKjRxt7Oum8", "seasonPeriod": 28, "start": "1975-05-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["bOSPU3jOvMghXQwg", "eSPPF0KuOqcNmYMh", "UxJOiq50bivjwxaa"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'evUjJphvBUWWOuLq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'qszNi9cBm9WpeHDV' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "5LcxdU5yKMiq29yY", "end": "1994-01-17T00:00:00Z", "name": "DlNI7tQGPbVSWrhl", "resetDate": 28, "resetDay": 21, "resetMonth": 64, "resetTime": "vv6rYLphl6maVfL2", "seasonPeriod": 45, "start": "1987-11-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'G5Wz83dLWWD4V9CR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'Nyky0LiBvZQvR4RQ' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["Q82jGtGrRxq8LOh8", "6bmGtVqYmlkJSJFQ", "TUxKWGxbEcAZvfGq"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'foM5ArgR9bP27nzf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'TejI6egC1RtorHtS' \
    --userIds '4mKLAvzO8Q7EUtlW' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.12312612848558302, "statCode": "lvBDF4KuRD7gH1Dd", "userId": "2mQcgzoYsd3fs7n1"}, {"inc": 0.40185700021398607, "statCode": "77Jm4O5sF81DzREi", "userId": "pbiJMm3BHgGvR0mE"}, {"inc": 0.6564197826241596, "statCode": "VdOjBLuOcCFW6zpx", "userId": "JYo5h4sPl1NxZbmA"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7815318407062272, "statCode": "OtNNexkxIiuqgV1e", "userId": "3YyaCKUSZd1VLbGx"}, {"inc": 0.8712348732967956, "statCode": "SUUWJLuQOvoRkeH6", "userId": "aDy4kl8TqUpPRKwZ"}, {"inc": 0.7963908343735284, "statCode": "AjZUGWcf1fDpWBj6", "userId": "XKPLoNggqw5R5u6q"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'vSuqEYxqQqjYd6ph' \
    --userIds '["ykBxvDKsqXlkRbXQ", "Bcg0z8gi9s6SNuPk", "TaPDKPjAoaGq0mHk"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "G6Kk3PPkfTMm0R6f", "userId": "xEfXPtVNSHoCAH5F"}, {"statCode": "Iy5eUpf6LEaKBKJ6", "userId": "kFZmOURK2ok51xP9"}, {"statCode": "q936MFllAyxL7Quj", "userId": "uFyLIQ1bomFFrphO"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'RaBmKQSyafRuGFfu' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '1' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["OedGt0SVwdJXDf0i", "nnbMnbXiCDmkAxOd", "ZI156YrOqfCsXFAe"], "defaultValue": 0.08647360447108776, "description": "iUc4vPBN6W554mby", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.6356755913411042, "minimum": 0.396752136773317, "name": "S0EYXZN7srVwoCcN", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "gq4D35sQWJEa0ZZZ", "tags": ["X3ZQluozAKBo72gC", "DkOPsVrNvEjlRlAE", "0Jj0AZnQkRvig4e8"]}' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '99' \
    --offset '39' \
    --keyword 'L0lEpa2V7WG0IRZR' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Ay66llXt7WULTJKg' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '9Kvu7eFMGwBTSRvr' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'CFt6ahvSnDMiOgTe' \
    --body '{"cycleIds": ["nnJsy32qDAQ7Gaac", "M8KlD16vLiYEG9GN", "pqyVTJcHVzb0jDgM"], "defaultValue": 0.15460006384000835, "description": "ciKoQcuNEbLJ5VD5", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "casjSLjFMYtJJ9Id", "tags": ["h1DUes8fnfkuB4ur", "7bXGkEFfr8pSjGiG", "DSFNGxwjweBRCbqA"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '071TkHn11Hq4cZbu' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'Lz7txjbNnz9ZB5Wp' \
    --namespace $AB_NAMESPACE \
    --userId 'UNtgxbxMX7Cp30cJ' \
    --isPublic 'true' \
    --limit '91' \
    --offset '51' \
    --sortBy '6ymqaQcRM9Bl5FW7' \
    --statCodes 'Xqw2cgyE4nn5SERv' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'trLqG9q7KUHVFdPS' \
    --isPublic 'false' \
    --limit '43' \
    --offset '0' \
    --sortBy 'dJytnQXQBaVEqalZ' \
    --statCodes 'JPdqPgfLjK8L1mKb' \
    --tags 'xD5onQQpe7TEA8zI' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'RsFQe08EDjtQDbkN' \
    --body '[{"statCode": "ErSG1QJNc5dmFkbv"}, {"statCode": "N8rs6lLHbOvQZUXV"}, {"statCode": "EwuBHqq8KH1k7HpB"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'XeO6PFkTsQTrXdsB' \
    --body '[{"inc": 0.36172009430461005, "statCode": "B2c2Ogezg21UrtCf"}, {"inc": 0.890854879898656, "statCode": "sufbGqUXgM2HEBW8"}, {"inc": 0.9363999215275224, "statCode": "2B5X8JJsuHQEywxF"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'tTxlI6BkiIHOtucY' \
    --body '[{"inc": 0.8059402065094131, "statCode": "0NiB3BfS6nHcmU4I"}, {"inc": 0.24883714216699093, "statCode": "DSOdzH5jo3doCzip"}, {"inc": 0.48519447397459237, "statCode": "tzGkN7RtdQgl2232"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '3S6DU3OgN2CVCcg0' \
    --body '[{"statCode": "F9irhcbaOKgrmBtX"}, {"statCode": "wNwiY821FtdU7WXA"}, {"statCode": "12HBBUHwk6LLLSwD"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'CsIlMn0KV00oc91U' \
    --userId 'rYWedGeAIHExlhmD' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'e50pWb2R13VHzPDK' \
    --userId 'qAQn8RaQ8d9ETFyy' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'khtEMgBSvNKqtkLR' \
    --userId 'ev05K3IV0KWCgFKT' \
    --body '{"inc": 0.06317492212361253}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'CU56svqtGpBABgCv' \
    --userId 'ijaV66sPMBuPAE4e' \
    --additionalKey 'Od5K0pC46rtlwakD' \
    --body '{"additionalData": {"xIRKYnrTxuizS0Mz": {}, "TZIbnL57gCY6UQBf": {}, "fVcN1Dg78ypEABSG": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '57' \
    --statCodes 'SEcu6oZgdbaiZ06S' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '7qcWXQLCaIHU8pdH' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '75' \
    --name 'Dazf3V58k0ztYmHn' \
    --offset '7' \
    --sortBy 'DRJni1aPFH7mAZb9' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["amRX4cHllwdwnMb5", "wOiY1Vhs26j8ZwjP", "tuLVv8gUNWH9v1El"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'LF4AfrQshZLxh7dv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'mUZ7nC0GJ1VPu6L4' \
    --userIds '3Gda53t4HgkUhKxk' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5429089873086138, "statCode": "zQl4PUwmHJaquiUP", "userId": "J46anxiRxQxYvMNb"}, {"inc": 0.2397791784403458, "statCode": "ZhYWP5Sk1vUB5Yv1", "userId": "6PxFgxxgkhEXaokQ"}, {"inc": 0.26011993050683446, "statCode": "CJGmFfhiLDoPso4a", "userId": "XiJsg6glvTCVukHk"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2365252789556237, "statCode": "K0PODEsGLRsUCAe1", "userId": "3Lf1UlPYOLYlJjR9"}, {"inc": 0.35079183999411956, "statCode": "0pvZfSOeM72uTo02", "userId": "SY73amw0yJ0NEfik"}, {"inc": 0.05032725841280272, "statCode": "g70jfMGscwZ26vjn", "userId": "F0R2BGvBjxNNXXf7"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "E1WIbVAx0zqRjMii", "userId": "olpiYlhocaMY8WVO"}, {"statCode": "3VvE62JsJnMZksfJ", "userId": "ymrymJZd1u3vwutp"}, {"statCode": "Q2KMsRDVtgr4a9aI", "userId": "ELRGEpu7ki0zbZL7"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["4wKbUlHWBE9Kj1pv", "G9SpNg695iRn5TVA", "m6q3hBxhUj0CCymw"], "defaultValue": 0.8041803032849646, "description": "ImdGkqta9VjwDjl6", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.42081452716073686, "minimum": 0.9843967335111059, "name": "Txv6IpnypuzYn73E", "setAsGlobal": true, "setBy": "SERVER", "statCode": "WbL9jN6BcQIm5M4i", "tags": ["ZXe5dOlyA6EOHi3I", "IHaOV3NbqQFXeEhE", "NgIFl8ojvbwhFELT"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '59NcyiwUkccb5kI9' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '59' \
    --sortBy 'AZf2KLYOac288xif' \
    --statCodes '["IwZnDs0fs8ol349z", "XThwRnxKjhMV0fmZ", "hTtPGALzA142pq5g"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '33' \
    --sortBy 'sG2KXuJgx4rqGORh' \
    --statCodes '["0aH3t9bViNXmQVe0", "59MOg7WellushM6b", "ayQpqXOdS1LWlG37"]' \
    --tags '["X3IG2KXgUQxUXoas", "TaQXDvaBbTnLFAaB", "0rUhaQWGJlsI4BMw"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'WgivZTzS0tcwmiqd' \
    --statCodes '["8nxBpF7eF1Rdtz8q", "Ns3Bkum8QcJrMAw7", "N1bDo5M914Tedo16"]' \
    --tags '["Wa0NRjq776qRHLPw", "emoO9imUfEAwmxIP", "WZzosg6lHDbwmAKi"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId '7gzWRbYscyCQfYkf' \
    --namespace $AB_NAMESPACE \
    --userId 'FvnCI556boekvXRn' \
    --limit '23' \
    --offset '86' \
    --sortBy '3WnYhdMAvdeBYuIQ' \
    --statCodes 'D9bxHesILsifTcUi' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'j7d7uDSytKIhjElz' \
    --limit '65' \
    --offset '5' \
    --sortBy 'JCxVcguDuqLGIge5' \
    --statCodes 'tDKimZExVW0LUeqx' \
    --tags '1FNNZJoA8KIQhum5' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'neA0alSHXPOvZjap' \
    --body '[{"statCode": "xR4jupXydfpjCAbg"}, {"statCode": "hIqh0H7faAWGqKTI"}, {"statCode": "IbcysSHaaNe4NL6O"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'MVpDz88qz2csVSW4' \
    --additionalKey 'KgPlIMEZw4hSgO7j' \
    --statCodes '["8v0B7pDvrvLMKM7s", "vHijVZhQBZ8s7MA6", "WihjWmdZUOwrTAZ9"]' \
    --tags '["cVKmWUiwweBRMqYg", "YlUNKQxPC1vbyCUu", "fBaT2batjMRePyaD"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'MrXEdXjZjOrfwJ9d' \
    --body '[{"inc": 0.4550618356770917, "statCode": "saZOkldjXCeGugJO"}, {"inc": 0.17655447136097402, "statCode": "k8ktOKa1SDW3PF4h"}, {"inc": 0.6552397009189312, "statCode": "0IbueLGQFmd8VTI0"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'ILW5Ik83Tireiiuv' \
    --body '[{"inc": 0.5803733059587328, "statCode": "qcvIO1i3eivtjnD4"}, {"inc": 0.4645711971324773, "statCode": "CXNbmQQ3iXJkyyWg"}, {"inc": 0.8570339226681004, "statCode": "DEx8SbBQbfTfAOAe"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'M3bXzMSfLefwgZWh' \
    --body '[{"statCode": "wL6bcN8AKdgVPaEk"}, {"statCode": "uiSGaWaZDgwuqPc0"}, {"statCode": "E16uG3kZj45QquuA"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '2OhSnndjDhwcHk32' \
    --userId 'wFQwHyEilp0MZXlr' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'bGeLYrOYXJSEMai6' \
    --userId 'eOaTzQiEikvJYJnm' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '44dKbczvHkCz1Zd6' \
    --userId 'ptzthKVQmu2TTcgt' \
    --body '{"inc": 0.6259585828490523}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'BYiDPYixm3cbYUYS' \
    --userId 'CA6cmFl746UwQc5N' \
    --body '{"inc": 0.9799225080414824}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'vsPME99H4a8u5NID' \
    --userId '8U86Lnwak6Njnqym' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"dX5PGZ3E36Z0i3up": {}, "0J78SBGpuHrPn0EG": {}, "HYmFHH8QYehazBCP": {}}, "additionalKey": "TmszW0qeDVnYKrFT", "statCode": "GisB4bYNmfqAXxaK", "updateStrategy": "INCREMENT", "userId": "SuBblsNhyqy1IwEt", "value": 0.5712186451472155}, {"additionalData": {"N7I46f2bgR7QXQBt": {}, "lrvPztX1n88e0D7B": {}, "UYgIblmL86lSy5C2": {}}, "additionalKey": "RlKweTbRyMiNZ6Ag", "statCode": "FI0l8KWNKy77yL31", "updateStrategy": "MIN", "userId": "ZveMnhHMeQv2UaFN", "value": 0.49406034671368837}, {"additionalData": {"GVOl51yV176bqrdc": {}, "80qazX54x0XZsZPF": {}, "hraVFdpGnPHA4uk6": {}}, "additionalKey": "rfC0ANpS1jwoyCD1", "statCode": "TPd5bK6qekaMZGRO", "updateStrategy": "MAX", "userId": "Gkh3GGaPjsvCvPcR", "value": 0.12361927103962989}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'qWzHHbJ4n7awLMJC' \
    --statCode 'l8HnRcSDQBgPRVsJ' \
    --userIds '["x3QYYYUSVU7xmXxr", "Cpby2ybFbuFJMEO3", "izP6HguwVLEkl6ql"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'zryRvdjDAFYsxTTB' \
    --additionalKey '4ohRu5K5eESWVAgf' \
    --statCodes '["yWK6cV5UwOjiLrfI", "VDjInVXl8xYeYBYL", "LHtJVhQcG9CLYLya"]' \
    --tags '["b2yuUHHuvBwFPyGC", "nGf038k3Ll7zB6sO", "SCFRJhe3sYKWsRWd"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'H6acJEAB3h4DCtS4' \
    --additionalKey '4PgfC0FtdqpgmEPk' \
    --body '[{"additionalData": {"4u8FaqlzhlHBFQVT": {}, "yjOqAZXRwDMiRiNc": {}, "uFFq5TxdGuvTCkJW": {}}, "statCode": "Uw3rwosIR8WKTAwH", "updateStrategy": "MIN", "value": 0.7390293484399776}, {"additionalData": {"Naup46prsCiyRDUx": {}, "d9Avxq1YStDr5vIh": {}, "woYGd2aR004iyoFr": {}}, "statCode": "OLFMD1ckzOcP3Twq", "updateStrategy": "INCREMENT", "value": 0.6417275765533236}, {"additionalData": {"vVpiaP31uXhyvXWC": {}, "aB2P5l3PScwGWqFU": {}, "9OnlgKOyJqHwMEjh": {}}, "statCode": "sUXV87NU8D7ULyPg", "updateStrategy": "MAX", "value": 0.1766047329094923}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'DMkrFehsF8ZMiFLh' \
    --additionalKey 'qTG0wVp4yQ4UvqMW' \
    --body '[{"additionalData": {"fNdxMCRkvIHEe0tS": {}, "sFCumB0rWarwwavc": {}, "KxYVCQFMYWKgiqbE": {}}, "statCode": "dKsVZjVtjav30qVW"}, {"additionalData": {"bMqAacMOcPLNPS9r": {}, "pciLO46ybRmZr75c": {}, "jMcG6ZFxyO1dypMe": {}}, "statCode": "cHP1gfKHinYtVk87"}, {"additionalData": {"vhKnTDSf9Mdt2vgK": {}, "fHEBSRezAs71lzG8": {}, "6wUrRhksPlMXHTAW": {}}, "statCode": "rMTcDB7x49YT08Lt"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'KVk9Mp33KB4i5wxu' \
    --userId 'kg3yCpsVYDSVBvli' \
    --additionalKey 'ELTAvPAbyufQt1dc' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'uM514f77D2T3NGsG' \
    --userId 'gW0AO5yTAHgE2CSD' \
    --additionalKey 'BXZE7ho6gc4o7xSd' \
    --body '{"additionalData": {"LjRLf3GCTDi6bQJr": {}, "x4h6a886ou0jMkKv": {}, "Fqm5MXAboa7nUVBz": {}}, "updateStrategy": "INCREMENT", "value": 0.4073168368200222}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"LcxitxHENWkPX0ZF": {}, "bX9aYWcXdl4nhuOR": {}, "19xcHWtoe4CYRBGb": {}}, "additionalKey": "iRekaL7yP06TowsR", "statCode": "CLRX9HLMen9hxh9V", "updateStrategy": "MAX", "userId": "SIZ2Ux4OV6uZ7RHe", "value": 0.896791587729975}, {"additionalData": {"apQZFwZOmmDBAUPi": {}, "EFW0Q5VsBczrPZsZ": {}, "bp0CHYJL94W8JIeA": {}}, "additionalKey": "FyMWVBuS5gdg56Zb", "statCode": "xlIlvVXHRhCyMM5i", "updateStrategy": "INCREMENT", "userId": "PNjN4k1OGbrlxfLC", "value": 0.10594662106905939}, {"additionalData": {"3uIEBXmFBHOSpQdX": {}, "63MaG7UQDGrDh5qj": {}, "8cMbWrpn363X41P7": {}}, "additionalKey": "3aTrpBg86roua3bO", "statCode": "tXNFEAgFS4R7BdGT", "updateStrategy": "OVERRIDE", "userId": "cX3s3IMZ5HHdXyp5", "value": 0.15442875596568983}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'QAgaQkCOeD0Z6TWs' \
    --additionalKey 'fLJTv5Yg77ztfGVk' \
    --statCodes '["rttS7U5ztNJzTIJV", "VpSA4L1NqtROjy3r", "hZH17gojkGIZZ5Ll"]' \
    --tags '["UDVkUpj4pHUcc7fr", "1aWN28F89Y4E6vPw", "G7EI0MCv4vGSiKmG"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'T6MzZi5whLWPMZs0' \
    --additionalKey 'TkVoKZ2rLK2Xj61L' \
    --body '[{"additionalData": {"VcxoMNqtDX7yWxSA": {}, "mRqTl6y52XjVVjGp": {}, "qxVpurMUHpcv9rHJ": {}}, "statCode": "3G6tpYfm4d3W9mtL", "updateStrategy": "MIN", "value": 0.6856061799772427}, {"additionalData": {"N7ZRvtgwrxRlHVpy": {}, "R6som1PphxeQMJPm": {}, "O2GJQu5EZcDsx1aG": {}}, "statCode": "QAS3SBOwB4D84Irk", "updateStrategy": "INCREMENT", "value": 0.8956076287673334}, {"additionalData": {"5CF8xxarccBPet3v": {}, "z2A0UY0qOLki4smV": {}, "XntVg3A1l6md3Vyq": {}}, "statCode": "yRn7sClZVMCNWqhS", "updateStrategy": "INCREMENT", "value": 0.7095518050908006}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'OP4lIPr0D2OfVFxn' \
    --userId 'M7EQguAFqr1QrSyV' \
    --additionalKey 'Jm5onqmJka1ved6U' \
    --body '{"additionalData": {"79KNojQUZiqBb4K8": {}, "IVc274k6vuh0ZhCx": {}, "hhSRTMgB3QZduED7": {}}, "updateStrategy": "OVERRIDE", "value": 0.832992656439566}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE