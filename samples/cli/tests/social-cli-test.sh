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
    --userId 'v7Ua057Ax0EVYTLB' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'JyybUisgTLPU0YKK' \
    --userId 'ufGO7Z1eY4rOXzjE' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["51iL48g8AjNg4Nfg", "7FGPwPjMWbU75fOA", "f6QMza14ouLHzEF2"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'ZjNA4f4oY3381IpJ' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'wEWFIfZtFnqOWAiS' \
    --body '{"achievements": ["OvkA0tpY9K0k7Scc", "qPboHOnDMkiAd3H4", "Ks7jruxtD3Q5MlJS"], "attributes": {"RJVtni0VweJaMUls": "kEG2oOJiZKx4cLVi", "Rurj7y5wBS9eVRBo": "mDaqyGiNcTyJgXCA", "XY4Mw6OsDUamVq0Y": "cHmB5fzZOwY3nlnJ"}, "avatarUrl": "4WHHvBZz6JGK7o01", "inventories": ["VSd2RGQBc3ntyZQ3", "OZ7seszEMcCClDiX", "Df2cWEWo4Nej6Ykv"], "label": "WjxXsB1uqRmYhikU", "profileName": "kVxQlQXz3VJQiYlo", "statistics": ["K2Y4Fu0XMlRE1rCw", "aLrqSWcQ5kSpBTD7", "ZQAGScVCbMYGfyuB"], "tags": ["lx1U9EgsDuEHYqkU", "Vz2PUXgASt7A7nuR", "hsqVHBzfTXNfVZrd"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Nt35N0vNS1lOeeel' \
    --userId 'WV4WzIFBCscdzdPR' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'MPXAvdDve7uITkIv' \
    --userId 'O2mKexXtQMEb67DJ' \
    --body '{"achievements": ["rx4qfaAEkwwHQr6j", "aFVzid1HxAww4WCn", "jIVXcCTEY1HO5jVV"], "attributes": {"dXr2Ojt6aGrtYrz5": "4WUMMveWbUO9n4XA", "3PCcK4fOYxWC9VBQ": "mSxJS3U7WVzf4vQR", "7dFZMiU8vz0Vm1JD": "fIeYA2DHdehyQfuK"}, "avatarUrl": "LNjwn5dDRh7TG0DG", "inventories": ["10Px4W3nsIDQ6VwN", "zFz8pjbpnOyvr5qA", "tfotSV2DaOtulgnx"], "label": "tlYwHTgBJTakWNnJ", "profileName": "E0GibJg7QPzhDwY8", "statistics": ["OiSH4E3cs0zma8rD", "101vSIHGpH9zETmW", "chS81ruHjezuaIvm"], "tags": ["nWxzFh4CGLUoRonT", "0vJC9hzTeNif79VI", "j0oX5RbT6t97fF3g"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'qsX1yMSs5vWaaHo2' \
    --userId 'kA5m6OJ7OvagQc6P' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'IfPx0jrAqeEEz2q5' \
    --namespace $AB_NAMESPACE \
    --profileId 'mdxLVA9HMnmBTujo' \
    --userId 'a2Qk2PKDzdhrerPv' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'noRbj1rbWmPj1vsP' \
    --namespace $AB_NAMESPACE \
    --profileId '35pMUhbNDn1aNSZf' \
    --userId 'gnKv1AD1bfuOeJcr' \
    --body '{"name": "CkNxENPLoYBr5Ew0", "value": "s1u5F45o6wkzFcEX"}' \
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
    --limit '37' \
    --offset '16' \
    --statCodes 'ge0SH1bGtLmdMGfY' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'QE684SX98mzZCuj1' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '73' \
    --name 'PeNom82yhhD1Bzv7' \
    --offset '76' \
    --sortBy 'fpKgz4nffSNBtMYu' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "UDLR5KCvDw6oheyD", "end": "1985-04-20T00:00:00Z", "name": "ps0qpPDKaPFjkmRh", "resetDate": 35, "resetDay": 86, "resetMonth": 100, "resetTime": "K5QUiT1Cz0DlP6Zl", "seasonPeriod": 4, "start": "1980-11-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["InkrQwvTU06KBwqm", "NhiaT245UXUfs6qO", "nmyuIoO8MztUKMD6"]}' \
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
    --cycleId '9cegA5DcYpJD7XBq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'j1dKqsfhrBQxpkle' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "nm2E1kojiVsxNZKC", "end": "1990-08-25T00:00:00Z", "name": "4qkEmmFiFVuB7N42", "resetDate": 95, "resetDay": 87, "resetMonth": 14, "resetTime": "69Rxx1LyvKpgTT16", "seasonPeriod": 12, "start": "1976-08-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '7N1TqXiOrtRdFvzB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '96GiUBlrsFsa2Yde' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["If7MAu26g9nIAs6i", "MzLz6FW5PBZmiVo4", "8qnpTIE25I2pPV72"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'vqhHbTZH8t92SCO4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'YDtY70w0d22ReHu2' \
    --userIds 'T3iHOQKGKHaoJ7Zp' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2457278542990663, "statCode": "al3zY92lMgKZBlLM", "userId": "PUBnhHyZkHMFWIAQ"}, {"inc": 0.6982304698830536, "statCode": "mAcoC71zMjKJQmll", "userId": "q3Ldz6k7Tf0N0DTO"}, {"inc": 0.3938233003932763, "statCode": "46csG9uSBhXlsJM4", "userId": "5XE8I6MHYH7a1Nv7"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7768420167537075, "statCode": "fQHCTrfmQYltjKGR", "userId": "U3MCjb28qxV5CV5g"}, {"inc": 0.9745685109617139, "statCode": "Ry9jbvXpbTr635Sh", "userId": "yvQ8Lr6BxvuMzB4F"}, {"inc": 0.7568999032275099, "statCode": "nGK4GW4NManoGy8C", "userId": "lQYbchBcLlUJ4J9S"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'MZ42RyUQx0VA8UaG' \
    --userIds '["qxIXBojxsbaTg0ES", "8RTL3AUK50ghoaPG", "DWpYnjIJbaoASDkz"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "5MmgZN8sx2lX8ZW2", "userId": "S5FZOsO4cqMDhWwP"}, {"statCode": "fHgddmwIdfZWLKdR", "userId": "1zEtqaW5d7wPlQQf"}, {"statCode": "7cB11VeuKONq6MaD", "userId": "dgue3s2ZarrPqe3Q"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'TLanGBHQahpQz9ER' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '89' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["4nctXPhlc8pD0W8F", "mL60ZqhttjOOoyyD", "eL6oP9C1fcQBmJvH"], "defaultValue": 0.9644347584848585, "description": "U1Xn7fgU88KsbfxS", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.33938186695268513, "minimum": 0.7979599453259316, "name": "5gY7uFp12v6oRVni", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "NZejVFCS9xWAJ6UT", "tags": ["1j2jYg1xnGCmHfXR", "KdxAJkl8qOtjZ8qj", "lMXeveX7bBATGuzZ"]}' \
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
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '35' \
    --offset '91' \
    --keyword '2V2TidzsaASdOkQv' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'TFBjIRxNp8r5ndDV' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'zZQQYEnSKLuFUZXr' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '0yftmwNzw6Ncmg5I' \
    --body '{"cycleIds": ["xjCDJymiYPBhHkxU", "P3hTJ412yNeDUQth", "wfLe9VKOLHktaowY"], "defaultValue": 0.8741688994431371, "description": "4loVHQxQEXl1GXV9", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "MfbfIiGNGqvyrwx5", "tags": ["3Hvabpyw7UoNwWde", "8ar4MH8b4LSWm4Ys", "WPtJAj8xQu2PWIdZ"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'h9YxILXFdjlMjYw0' \
    --limit '83' \
    --offset '82' \
    --sortBy 'DxsVHOq57v7ppHiA' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'QUCp5UbfuScjDyCP' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'bYYNqO4x2Ng4PZTe' \
    --namespace $AB_NAMESPACE \
    --userId 'MSCH8rWVEyGj7P5c' \
    --isPublic 'false' \
    --limit '28' \
    --offset '64' \
    --sortBy 'KZQ0grn8ADKbV3u5' \
    --statCodes '56SvrQ27BrEB9aXv' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'vhQpilnQZUvOWaUY' \
    --isPublic 'false' \
    --limit '48' \
    --offset '78' \
    --sortBy 'wLWzAkhnpZ79jpiZ' \
    --statCodes 'rWMmEAQYVSsQ46NM' \
    --tags 'jc0Ilf3CdKCP8xXd' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'yHP12nngzzM52qFm' \
    --body '[{"statCode": "kyBS6359WkmXZVPv"}, {"statCode": "W994AYc1Wy77dcaU"}, {"statCode": "Lqiyk0yIW7j3JDfY"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'BoCCV8O65MrftEgK' \
    --body '[{"inc": 0.2841305595387792, "statCode": "yRcPF9iRm1hPcQce"}, {"inc": 0.2921775383128692, "statCode": "wS0usdAq9ORJJyWi"}, {"inc": 0.22519736459842232, "statCode": "s54FUpGIQt67zetZ"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '24Y49sH1iO01d4P3' \
    --body '[{"inc": 0.02025653455984, "statCode": "zCyOCuYn1nTT1qc3"}, {"inc": 0.19873622340474872, "statCode": "SqMSOtMBltKrSJtA"}, {"inc": 0.8947550558713995, "statCode": "1H7CRatHa7kbluAq"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'yJan4KMecP6cWcmR' \
    --body '[{"statCode": "uENK6NE89ufusEqF"}, {"statCode": "4RljKYHo1kq8h7BN"}, {"statCode": "I5ED3kDEmPU5EjOq"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Rd8vVXC05Nn2pUZ2' \
    --userId 'FMBOTA2EP5glx7ph' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'zAAg3WkHzTewmwyp' \
    --userId '008Ig60lSvZGW8x9' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'VKNJ4ES6wtw4Ctzc' \
    --userId 'nn5cpI6IwZM5Fana' \
    --body '{"inc": 0.14948080249832885}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'pnnTaUDg1PkDlraA' \
    --userId 'aFYR9JYWepQFKKKI' \
    --additionalKey 'De6tMonmvO8iLsI9' \
    --body '{"additionalData": {"tFXKYW3WHsKqT2F5": {}, "Q4fCDyZ54ohESyTx": {}, "whT4xoA0b8MXazxS": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '56' \
    --statCodes 'Hh8lF4iWhwC7DDSX' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'c4Yg2zBd8BlH1wbV' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '19' \
    --name 'qbUtvTVEnK84Fbh4' \
    --offset '69' \
    --sortBy 'Whh9HfM9sdX6KLpl' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Ax49Ecb71p8cY0Gn", "DD9zPUaCmVtfdfHg", "yHYUdsOcWaWVlIoI"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'EWV8Qzgd4vnsV9Sn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'eekocEQ11UzVeFMm' \
    --userIds 'MjN9BZ4kjOCiuZdX' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7247808143338846, "statCode": "KZLAFhCIpH6BYqIO", "userId": "1kxvSLi13jWFK1Ja"}, {"inc": 0.05843801336086829, "statCode": "gWzBRaTE419pqKOI", "userId": "yBLwfTXeLfg2Aa4m"}, {"inc": 0.8397067143396579, "statCode": "aUg9Rlm888bQau9p", "userId": "54Xmq3gWNL71fcRx"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.05301758691390823, "statCode": "pHDZp3qoDj31OBIX", "userId": "kNRyq0CeqwqJbmwk"}, {"inc": 0.1295324039982192, "statCode": "wvlwkxiISpawflxM", "userId": "tI2B3RIMZ3EkwkgB"}, {"inc": 0.19043651244000137, "statCode": "tiOJSe6ZKczsT39s", "userId": "nTwkUEAWn5m4jKcq"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "rGsQYfon0Yxj2p2P", "userId": "jv5oOR7Lqz8cgKAG"}, {"statCode": "SQgl6H9RKLo9Ei8b", "userId": "bQ4VqImP2d8Z84sQ"}, {"statCode": "wWSNlzMa9Rz5HG9H", "userId": "8yFEbA11hBsC96rb"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["NbU52OLBYg2ZFHPL", "hwHvkDVNQjI7oUEo", "5wUP0zZ5iJsx1p9V"], "defaultValue": 0.3856178390435644, "description": "42nCTQ3i8yvbpJEq", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.30054203913041944, "minimum": 0.5863510217740011, "name": "2RUj26DJZhOC7zmH", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "DQzpOaaABv3iv6Z1", "tags": ["h3WIx7paB8HCJPjR", "JAMEPDav6vWKq4LI", "scZz6o7Fn6RbDgAU"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'vbrUs87qKaK5cLaB' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '46' \
    --sortBy 'bvh4j7eVJJCO1cvb' \
    --statCodes '["fajy6BXdsnohB1yl", "pGMn0dBEZTXrhwnj", "V1ZzFCPEbknah7AI"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '1' \
    --sortBy 'LHAyYX2Y4m5f5IWo' \
    --statCodes '["jq93S4l458JGJstK", "B4uIYxAuTwavf8Ej", "9sopCpKoYIQZjbfZ"]' \
    --tags '["nasn1jHq3BfjVWZQ", "97narcZFr38WxDsF", "FSgfjpEDVPQw1XRf"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '5SsoJw2wY7Qtu0tS' \
    --statCodes '["9FQ5DJWT2HXyQmbv", "VlUTivECDAY38Uqo", "zHY23gDNepdk0n2F"]' \
    --tags '["myTPlFSLXhKVXOcp", "iH1p7OdkTwpVZmCu", "l0Cwplu85Hg4V8xi"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'kAiNiaDVmed6rB5K' \
    --namespace $AB_NAMESPACE \
    --userId 'NVq3oAL8bRPsHuFI' \
    --limit '49' \
    --offset '21' \
    --sortBy '9oTEDNvcyX6WHFtW' \
    --statCodes 'AchgIdYo1jOPpXlc' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Xmx8gK5WEMKE0pbS' \
    --limit '14' \
    --offset '58' \
    --sortBy 'OHvqhTOftB2s7TbI' \
    --statCodes 'lFTGddbiiZGhcJBj' \
    --tags 'H2m8qtuL66GSnHDq' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'eB0g8ZVCRfeRZxWu' \
    --body '[{"statCode": "NByBdEhh1yXz6IKd"}, {"statCode": "GavK4QQud4O5Aehs"}, {"statCode": "Q9yGHf0vPXuQgZE5"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'ETHJVsDWEep1SpYk' \
    --additionalKey 'o0Xg6IIGZ1ozYAHA' \
    --statCodes '["EVH3Xgea4goVx43D", "bmPfOGzVegcRDdZT", "I9CyZrnJtnONHguH"]' \
    --tags '["xS3a7aJFzKDp77x5", "gwpivR6POOS2vj32", "EO7ods2Zp4GlJNdE"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'xvo8mEZWaskd8QUf' \
    --body '[{"inc": 0.776368297766491, "statCode": "gDupu4O6ZyC4Grp8"}, {"inc": 0.6677970156489879, "statCode": "7cCgfHG87dzl30S5"}, {"inc": 0.7625524413715975, "statCode": "0gl8mSvuTpmtKsBB"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '7EUgsJvXXMkLUebE' \
    --body '[{"inc": 0.8764899057853152, "statCode": "lHbRLu3KpGivZAp6"}, {"inc": 0.6999524689951812, "statCode": "92yiAZkTJRTI17w0"}, {"inc": 0.9871704119512174, "statCode": "ca1f4XqZDY7hg8Ya"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'UJ5ebQv8Kbwg12jF' \
    --body '[{"statCode": "kLQGQgbgH9RvRhc1"}, {"statCode": "XRVKsBc1C1rQKcLz"}, {"statCode": "Q6Rlvzt1GZfJZm68"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'WShg3hoUw5h58hLh' \
    --userId 'gMQxXjaE3ZbUDdjV' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'rVXvQLaTzBAgqsee' \
    --userId 'hM1IOIY7rz2uwDZp' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'IsTCdh81lxgevclO' \
    --userId 'iJNGJKi76dtUt1rV' \
    --body '{"inc": 0.44076963872705466}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'MhQc7tqt2Zcvs2ae' \
    --userId 'KSq4NYbzWncGlgw2' \
    --body '{"inc": 0.15934772606426995}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '9jEEPZUxuBY3Wf0G' \
    --userId '02dUjrqkPvoUdZUk' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"iAeVfdrekPTXs8uT": {}, "7OfPHIFPDOaZKtEz": {}, "Dy3pEWQKZLLjTkHj": {}}, "additionalKey": "H9opb5pD7UUlANHB", "statCode": "QcDL2oQJT7BWtDSp", "updateStrategy": "OVERRIDE", "userId": "CihPEtUEITg6dOVX", "value": 0.513824692205551}, {"additionalData": {"LpBckOffoJmmPFuZ": {}, "PPcDAvkff60eoIGc": {}, "djWrg2MEzkMexG2N": {}}, "additionalKey": "5LeuFEbM3fwlgy7s", "statCode": "VEKKQKWctqJlpfb2", "updateStrategy": "MAX", "userId": "vNSOhjIBFI8IOX5T", "value": 0.5089484594756113}, {"additionalData": {"zAGRZAxU9skd3fQx": {}, "H6U0flj4iClcnptZ": {}, "QCOvtj6xrji1ZDIO": {}}, "additionalKey": "OI5en1wo1g2g3YzS", "statCode": "F59jIVctsuHOmEei", "updateStrategy": "MAX", "userId": "zf1iwDALiIAXJlkW", "value": 0.24799026463001994}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'xYorsIUDKiOS8xJ9' \
    --statCode 'Dkqb60fDqMuPGDoA' \
    --userIds '["KFqS5lm2KqxUhAdz", "Q1esnBfRFdLbdgll", "xfw5vc0i91ZYJvrp"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '8IFBLccIWeYxKdm6' \
    --additionalKey '3DI77BYWkeQMgq7X' \
    --statCodes '["3yJ3dthERJ4xb4vh", "hlZzX1EswyNObKGv", "fdg1oPik7KuOoXUB"]' \
    --tags '["Iv4rbrhbTA79YDdC", "byfuBXq7Fd2nbadP", "2YZloc15URfXtymE"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'p3P4MJIHovR4CPLM' \
    --additionalKey 'WaDM0JZM2x0eMjV6' \
    --body '[{"additionalData": {"j3xLEXakaH4RrzXp": {}, "Dw4YRuao0RhHOX4j": {}, "b1N2PwQh98PTHmbe": {}}, "statCode": "2X4kkcxPusIINyg2", "updateStrategy": "OVERRIDE", "value": 0.08481634954830364}, {"additionalData": {"eUGW41dhgOlCrj3p": {}, "NQ4FZrjLAkrSoz0o": {}, "ClJkbBNAheSn0j9W": {}}, "statCode": "HVINt9MX8clarBVU", "updateStrategy": "MIN", "value": 0.447604143203869}, {"additionalData": {"UcAGa0Q8QV0UuM7n": {}, "Wgt1pAO0DlMDEIpU": {}, "D4m6Y7I57YSrLOPs": {}}, "statCode": "OZb8zNts21t55ixD", "updateStrategy": "MAX", "value": 0.7077809479692783}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '8lWMreMWTjPHlTw6' \
    --additionalKey '8b9fu6KIwCtBnQj6' \
    --body '[{"additionalData": {"LMHoM9Oz4pgFEVcI": {}, "n3mm39hz9ZFY1Q51": {}, "2uVOqDBWDyWSXb4x": {}}, "statCode": "g6334xRfdYSAYzHt"}, {"additionalData": {"8uNuLqGGGxdaffcs": {}, "G6Wvnic0p9JtFMRY": {}, "Jm7WAkPo2AGzRmO1": {}}, "statCode": "MlDz5T6piRmCsjkL"}, {"additionalData": {"ceYQAdFrh0uoNhAj": {}, "ks4RA0vC8TK9Tazq": {}, "HJXcydqC8vvASo3V": {}}, "statCode": "STGIgCbNllZELqey"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'HY1crsu9iJAToVGU' \
    --userId 'C52kk3LN4ettG1vy' \
    --additionalKey 'hLksX5XJqE2C9oN3' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'mbHBNQY3sW2D0xFO' \
    --userId 'FYy7Pm6s191kqxGU' \
    --additionalKey 'VIbpCegmCblvdRTa' \
    --body '{"additionalData": {"QEZsxheuKDjjObs4": {}, "jiPoiqaj587dCiRY": {}, "13Fe6sbLntDnvGoX": {}}, "updateStrategy": "MIN", "value": 0.6454646716563103}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"sRuRS1jJohjxZCJI": {}, "YrCBidNpGe270tNF": {}, "bEF2Rb2HjfhXbPuN": {}}, "additionalKey": "M1GZDH08DcZjyRjN", "statCode": "h0HQAul6ErqvVDsP", "updateStrategy": "INCREMENT", "userId": "WvRL1ljejg2jaOcx", "value": 0.8680819867921822}, {"additionalData": {"lGSfSzX6SPAUxGJ8": {}, "5arEMmhAXRTjdZPI": {}, "ElzyUiAIXC2fxHA3": {}}, "additionalKey": "Md1DyGnNjtjVMMrL", "statCode": "elkgCUiJYkDNoy0P", "updateStrategy": "OVERRIDE", "userId": "Cb3xbROegZWhgQNg", "value": 0.35149570724364965}, {"additionalData": {"xj63FMsFWP22fHan": {}, "rrIZVPiQ0ecpgWBy": {}, "rO7VwCSxBe8psli8": {}}, "additionalKey": "W1VbJbuARUOG3SMN", "statCode": "nZOCPS9rmADVdmth", "updateStrategy": "OVERRIDE", "userId": "nju7dj83Vzv3y2ZW", "value": 0.3237299969371835}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'X20qsvwqTbK6kFor' \
    --additionalKey 'HygVJaXHS5eX4ec9' \
    --statCodes '["0BQkrgeDu30xgkfv", "2GsvYwtbGMZ7cTAp", "4v2ovwtX6USqXpRP"]' \
    --tags '["YmWHA2Uu4oatmeo5", "nj0xhVEOJ7amNHTV", "FBwoSgrObsus4gL6"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'ChKXRm3iMu4wHFpk' \
    --additionalKey 'WPixbceRiamMlICt' \
    --body '[{"additionalData": {"5nOURko7mUK3PEoA": {}, "6oK3jwutXkTj64q5": {}, "b9HsmU7WOo9Wo3Qw": {}}, "statCode": "W2BiTxK0pwZrBeql", "updateStrategy": "OVERRIDE", "value": 0.4235513784754842}, {"additionalData": {"ZM1Db1zUnDETR30F": {}, "FTK9eQrcnYssY0BC": {}, "J03mcK8TJMKjm53R": {}}, "statCode": "4R9oADE5udQDufbV", "updateStrategy": "INCREMENT", "value": 0.8851441475749512}, {"additionalData": {"hvTNAJZmn2vetnps": {}, "IjymTh7E7o2xgmyk": {}, "Q4ZAr2MQtrX6BB8l": {}}, "statCode": "BYqTS7fgFK7RgnAn", "updateStrategy": "MIN", "value": 0.3486568650088012}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'mIabRyM9X7T0cALX' \
    --userId 'wEEda9RxyvKVk7kK' \
    --additionalKey 'hg4XDKafV1QlY6Dt' \
    --body '{"additionalData": {"4YDv4T1krB4j0DVB": {}, "Rp2Y5hmMm0oRBQMn": {}, "KrEINCrJV9G0kf9V": {}}, "updateStrategy": "OVERRIDE", "value": 0.6385973754818233}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE