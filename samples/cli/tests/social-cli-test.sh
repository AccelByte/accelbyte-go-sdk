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
    --limit '27' \
    --offset '66' \
    --statCodes 'EP1Exll1mYpE9E8G' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'zaCWbjjeyik6bLXO' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '55' \
    --name 'X0lp2RpsW2iKHHfY' \
    --offset '34' \
    --sortBy 'rKQeRcZFTNDeDhKj' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "npEyt4kLTp7ZJJjN", "end": "1981-11-20T00:00:00Z", "id": "gqOQYw7GkYAeiOkF", "name": "1Ri3DF7KryEFwMYG", "resetDate": 88, "resetDay": 38, "resetMonth": 4, "resetTime": "ZWRq2KNYl64j0NXR", "seasonPeriod": 55, "start": "1979-06-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["pkB6OG18fsUQQGGm", "vX9Ld3W15BiwHzcl", "RXnRWEO1NuSor5gj"]}' \
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
    --cycleId '7cajRIyZxB7uxplX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'mUfzI5Bme2ST8wZS' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "y5fM0tpo1Z6J7W8D", "end": "1980-08-14T00:00:00Z", "name": "O0mYbIJqEkiPIP8k", "resetDate": 0, "resetDay": 23, "resetMonth": 9, "resetTime": "gmJTHFx4GWadaSrT", "seasonPeriod": 25, "start": "1992-01-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'cvvMdDpqsjCYw4yv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'MtMhwNAjtG9ONklS' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["PXzJ4lp0uorZyuKx", "XdVbensuRwPzwaAH", "rGYXWcSPY719te6R"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'jy9NbZd4tc31Oo5d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'UxV9iYAtCZAYezSM' \
    --userIds 'egIvOQuNLfQQ4JM6' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.12131269455773153, "statCode": "nlkYuOraKDbU1hXT", "userId": "HV1jqSILkEfekUDd"}, {"inc": 0.15237603351815143, "statCode": "0SQqvvpjouR6KMsR", "userId": "4vwEXpjnTAmSBNGf"}, {"inc": 0.5501058122396529, "statCode": "yzuniw7lcTxK0P4u", "userId": "v9xrfD9CzZAss36x"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2890278701968142, "statCode": "Bxqbm8TLxKwWGWhl", "userId": "poapxuq5alOMevTz"}, {"inc": 0.7580483424973492, "statCode": "AlWodP1y59vswOfQ", "userId": "GBC6EXgWDIOu3T9F"}, {"inc": 0.9098958423641433, "statCode": "1HThcBE4feprzEwF", "userId": "m9cdaxalreowOlFL"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'N9w4M6jr1skbIJJa' \
    --userIds '["MEYKNX804p4Xkt7t", "wBXQMj1IajTNsTTQ", "ievCl4sIiFnCc62g"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "C1m7yBMIVlFIwpiJ", "userId": "m1EZsSJEalUsVAmu"}, {"statCode": "a2d2X8rqyy7dGBfe", "userId": "UteNYkDJel1UzoHJ"}, {"statCode": "3LR46xDtlI7n7MRP", "userId": "kbH1pW6KrWGHOIGa"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'Roa8XNzZgG1cCn8p' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '40' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["c3SJHbnd8SWfpko2", "c0SnfKAJ4t9vrExH", "jll7hAjXRDBLaotO"], "cycleOverrides": [{"cycleId": "2gKKCDjE2m5bXxOn", "maximum": 0.06396195083332323, "minimum": 0.9160144099969112}, {"cycleId": "X0IkhWOp4uunBWNu", "maximum": 0.20099190814388124, "minimum": 0.30048720003684326}, {"cycleId": "tLJBCKOCq4H9hYjp", "maximum": 0.20921054751104307, "minimum": 0.37418536378463163}], "defaultValue": 0.28168034197199965, "description": "vl27IT7u0BDXDcAe", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.5036314611647142, "minimum": 0.41998501414772726, "name": "G29EfilTFeZLr2RC", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "RDbr2P3SxSIOlQf5", "tags": ["ZDgC4AB4CU4a30Eh", "x6LbjeeK7gCJ9qla", "4ECWEkfvzOiixmLA"], "visibility": "SHOWALL"}' \
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
    --isPublic 'false' \
    --limit '3' \
    --offset '84' \
    --keyword 'nah2WjxE6OFZLEKu' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'oG4QsjBmfDP4oaqb' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '5ZKsvdtjZtLJSqSk' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'U87dCFwgYqOvrvHT' \
    --body '{"capCycleOverride": false, "cycleIds": ["epaToCOqpJ2lKzPJ", "ZuKQkSndy62nNBmo", "PQlmWjs63UEOB1lM"], "cycleOverrides": [{"cycleId": "PEhsiGazMOjjUCUm", "maximum": 0.8266127358774282, "minimum": 0.9139749979355787}, {"cycleId": "f1uoqIaKRFilVGuc", "maximum": 0.654163232616756, "minimum": 0.19948821703831565}, {"cycleId": "0bSKXQnn1OLP0Raf", "maximum": 0.40927846727289885, "minimum": 0.4391019748564762}], "defaultValue": 0.5214258712713732, "description": "wkBQMaW2tH18ZcIA", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "TaARkyM1KpdTE28L", "tags": ["ewh7fKMic2f1MeTF", "nk60yuENRM40a0GR", "o14HwXpoTohZbcTF"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'D0GLXYtAYbCcxrjt' \
    --limit '18' \
    --offset '5' \
    --sortBy 'qMdsCmtl0yD1Jfc8' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ewJR6QvZwMs4PLsi' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'G7dUkuYdk7VL0i6u' \
    --namespace $AB_NAMESPACE \
    --userId 'xaI0e2CAoWvBdYbL' \
    --isPublic 'true' \
    --limit '55' \
    --offset '84' \
    --sortBy 'GTqYRoUoJHGP8IvD' \
    --statCodes 'v2Mv6dQkqtUmDFPw' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Q1OpW3nYQYmQvDdO' \
    --isPublic 'false' \
    --limit '55' \
    --offset '50' \
    --sortBy 'IjUHxoSTMeXX3l09' \
    --statCodes 'R6Gfpm2j3S0bcJjd' \
    --tags 'wQavOkQBqfGBVJ1H' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'k3PDZ0HajkK9r30D' \
    --body '[{"statCode": "93hva1M2bE9h0YT5"}, {"statCode": "XUEj0hQ4L7iLYWXm"}, {"statCode": "U7355m2cvOo59w6q"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '0WNAQT4qhD3whjlZ' \
    --body '[{"inc": 0.5801720342195048, "statCode": "zaayEdCPj6mnALrj"}, {"inc": 0.5099809413928791, "statCode": "bMedt1wgF1SMIr31"}, {"inc": 0.21654243658533745, "statCode": "MJFmAg6DcN43TIpN"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'H71XTSH99Bg5IppD' \
    --body '[{"inc": 0.014576035798267606, "statCode": "gftuCaHUgIXgQ55T"}, {"inc": 0.4083966193110097, "statCode": "2pAfRXqHXrOkkMne"}, {"inc": 0.3803278475111025, "statCode": "Ft06layvvqpyM7Wg"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'gTZd6S1Xr98LCt6z' \
    --body '[{"statCode": "mdmwNW9RqoPKNd3M"}, {"statCode": "mHnYdVAYsKzmz7z8"}, {"statCode": "7teTmpRYUzet0Uen"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'jbp1cDlbHIqr4Szt' \
    --userId 'SaJ3YwxEg8CzKIKw' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'pajLipHLC08vgEd8' \
    --userId 'fHn3pUj5nL7OqbCP' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '24OXij6G65TXG6vD' \
    --userId 'rywluHZcBjSK9JFS' \
    --body '{"inc": 0.8801093624839891}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'duvoWn19Y2XqzY3X' \
    --userId 'Ne8WPjHXWezo8aFJ' \
    --additionalKey 'OEOlQESKPCsMrJiR' \
    --body '{"additionalData": {"fJ2xGt1ZKijLof6Q": {}, "4ymYVuUfQ1On5xSz": {}, "ClsI6AhD8IkxAcGj": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '18' \
    --statCodes 'IMJYSWXmDrUqaTDZ' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'LCo6EyM1s0GJMj1P' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '56' \
    --name '3WaITvQL5uGhNTrd' \
    --offset '64' \
    --sortBy 'IdWR9ais7xXSJ58c' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["FSAdzHpeF259hnU7", "2LVTomJzoADC8TKO", "4sI9aAW7DPQaYWJs"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'syTgaJ9FtP5Hdjw1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'NwGua6LAbBEXTYpg' \
    --userIds 'RyQz2BCEDawG1bJa' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4917598404338336, "statCode": "r1UewzhkrmTTRDiX", "userId": "xMU4v8qL9yO7MsfQ"}, {"inc": 0.20787608969288263, "statCode": "gHC5PxDM8AOktQWM", "userId": "UKbye8l9cqLtq5py"}, {"inc": 0.20109214410787024, "statCode": "vpClbsPwmuFKWQSZ", "userId": "kOgqRUOpkP5szUkt"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.46009542181755425, "statCode": "qoBxkpiHLHygKxNy", "userId": "X7Xh8CJB7qUaIfup"}, {"inc": 0.8790698413156257, "statCode": "qslG4OreEcqtJVMI", "userId": "tSKoNQMDzsIpBuHe"}, {"inc": 0.6256137925029014, "statCode": "XOYMV8VuoMdWnf7Y", "userId": "o6aqFJ3SKgekHJK0"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "pftGGS9MjdeJUvNn", "userId": "d0XqlnKGkfux5RkX"}, {"statCode": "04j4sdQxbGhyJDQ6", "userId": "Ev5mgEqJIjhHKsqD"}, {"statCode": "t035d1iJ5pERdxOj", "userId": "RgXq2et3OPeq2VVF"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["QW3oic4Wa8qv0SNd", "sFLDw0JoOAOh7aXo", "gMavy6AMpy9x0r1K"], "cycleOverrides": [{"cycleId": "CpXDJGglNyA2yyzy", "maximum": 0.8068813973586546, "minimum": 0.12228720828397222}, {"cycleId": "aCidtql6cJy261kf", "maximum": 0.31271155983356425, "minimum": 0.5702437150929368}, {"cycleId": "TYoNUt9GLQOo8kYG", "maximum": 0.7719950828224551, "minimum": 0.8898559695558241}], "defaultValue": 0.7558251799565048, "description": "NnxiuzyXWA1uYBSo", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.11928147975299486, "minimum": 0.1798141403506619, "name": "IQPVRN4Jhr021net", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "kDlEnjpYNAsFtSR5", "tags": ["x0IFSdZawySYuKuw", "DPZ2zihFN8UTh2jp", "rMLqhuEakoKgPXpD"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '7GaMZ7FaCaJogEi0' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '97' \
    --sortBy '74YpXaijkbwHH2wU' \
    --statCodes '["G55BCMGmCX9kbaZ1", "kSOI10SCjhufmtuY", "LWrrqU75IKjivJji"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '87' \
    --sortBy 'lE3HQi2BrAYYvOIF' \
    --statCodes '["PVDqMxq6Cs2AFsYD", "0P7U3ezadNZpnsS2", "ysPrashi3T1TgpUk"]' \
    --tags '["p6yxcNYhazyVzcAO", "kXXqeawX3wOygZOl", "l3VrmaoWd9CgVtoo"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'HRxBOLgOV898tQOh' \
    --statCodes '["p7bIihAsS8KPQZbx", "EUiOuWxOu98V8Z3y", "Fl7XDwp4Qpr8tut5"]' \
    --tags '["WN5vtNOZdfBKFjrm", "tTm9274al1wI80lX", "AvBUGBtTuQGgMlCI"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'RY7caD2Z4jMThh17' \
    --namespace $AB_NAMESPACE \
    --userId 'PWeYJfqbROZrCvD1' \
    --limit '5' \
    --offset '40' \
    --sortBy '5DJeekfyJJXjF1n9' \
    --statCodes 'klmSo1JoHy17vXlG' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'LmggF3vUbOxaGT4h' \
    --limit '74' \
    --offset '63' \
    --sortBy '68dafTI0JwLC4XSC' \
    --statCodes 'uSnv1ZwUfw1XqghF' \
    --tags 'z0xbfNIsqCG659eV' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'KX0BOjqbbESlg3XF' \
    --body '[{"statCode": "Rzf0qAgdPXbQ26gG"}, {"statCode": "vA20EEE05yS7C2WF"}, {"statCode": "wgi5vWuSQCtI1gNQ"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'mR8EPYj5lxo8EJet' \
    --additionalKey 'XVTkXDYBypIt6GAJ' \
    --statCodes '["4gjaIjGQc1HDc1yB", "XCvT8uyof5YGFa6G", "fNPK67uxu1Y592GV"]' \
    --tags '["BCmUDaUr90XmDjmn", "J1E2ZCrWr7GXA6r4", "nGcThe570dQ1hEBp"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'elsPRm2mBn3X1aLH' \
    --body '[{"inc": 0.35897402850998994, "statCode": "wcaU0MNdXGSDjKyl"}, {"inc": 0.9512038648495523, "statCode": "m4hVwrRq2C8mqRyT"}, {"inc": 0.08470323673721158, "statCode": "qxTRg92H7UnvjXED"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '4VhG0h4aGMHUHy7c' \
    --body '[{"inc": 0.10053230005329261, "statCode": "Iv2xpQbVkRJcfbJy"}, {"inc": 0.7777776992282622, "statCode": "6iOfZwJWvBwW3I53"}, {"inc": 0.510502928474991, "statCode": "5yLEhMyvxMMwVk6n"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'BqGtat6zNNUvA6T1' \
    --body '[{"statCode": "Cjiap4eDKAQrjL80"}, {"statCode": "pk6qrScm5F13Zzn5"}, {"statCode": "ToSDtcjO86H7Umzn"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'b57cgMd3aFRX8m9h' \
    --userId 'DMbp7KsbvP8TpqKG' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'sYlGpkYkdV6gHnb8' \
    --userId 'XTF8mCznPHm9igRR' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'jEFFH2GiOSpnZTPK' \
    --userId 'AAxtycbQv4uscq7Q' \
    --body '{"inc": 0.017556083220050867}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'bzcB0UYdVPCR9nUD' \
    --userId 'l98k22t0r1IvQXPU' \
    --body '{"inc": 0.547350032042828}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ZVN0XJvYlwk6P8KM' \
    --userId 'lo6qt0BkG8yN6Up8' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"RRJGswgX69qdiV3N": {}, "GBI7Pinm4y7BevhA": {}, "MbUMoRQuyAHTO5fR": {}}, "additionalKey": "os7rRTOiseFXS6C7", "statCode": "2W4JR2lPW3iFCcen", "updateStrategy": "OVERRIDE", "userId": "5CMrtig4Bo0hYZMW", "value": 0.36968920288084095}, {"additionalData": {"EzMGjZGAshoM1Mln": {}, "RAU6f9E3Zgz7StDw": {}, "GSRwMC9rl1Kh71gk": {}}, "additionalKey": "0lpvzvWoojmp1HDw", "statCode": "TPGJ9ZmeeGaE05vB", "updateStrategy": "MAX", "userId": "7mMM3SABoOtTXijG", "value": 0.8976801832091791}, {"additionalData": {"CZhI8BtcgYgXvIhO": {}, "uNGh3nGbzkfWlzcj": {}, "0x6E8gheAwKsJO3W": {}}, "additionalKey": "m8TZAtIoYqYsNgbN", "statCode": "N0qXir6LsGlBWA0F", "updateStrategy": "MIN", "userId": "Wd6vPzNLX7mw1YaM", "value": 0.38382550921460545}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'fIfurV50t97phaPs' \
    --statCode 'Kf2GZV3f5WOsyfCR' \
    --userIds '["z2ZDUYUDmfQIMKMl", "PYTFBwyxD8hrl4aT", "dZCUkdElFiOoC2IZ"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'bQCuG19I9tbNyzJS' \
    --additionalKey 'lcBUz5u1YDjkcLdS' \
    --statCodes '["2Tp11J0fMGsuLpM1", "GJCQfBhW2qcta3ac", "pnRu32w7R8Y2YVXe"]' \
    --tags '["DYRNgy3cKbKcaL3P", "eZ28t6wnoJ1lfsSR", "Dze7cf9y4KFdRoxV"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '0sqZVvCDce0ZtMXQ' \
    --additionalKey '82z1Nqt9ITu6x5B8' \
    --body '[{"additionalData": {"ioHbejKenizHbGVx": {}, "UzL0m5BdavRme4Ey": {}, "LrbjcvSi9ZSkThLx": {}}, "statCode": "lUPrlwoaV9lBHSaK", "updateStrategy": "OVERRIDE", "value": 0.1352332554664084}, {"additionalData": {"G2O19UOUIN0a6AdW": {}, "9rnFakjty3rT0oV7": {}, "YgUMc902uOi2rxBO": {}}, "statCode": "ioUXPQZiuu1Ppttu", "updateStrategy": "INCREMENT", "value": 0.660353823752801}, {"additionalData": {"TH2rgt0qXnNepfgF": {}, "ySfaCF1i5SNP1jsT": {}, "lvaX8HWJShaVf3Hx": {}}, "statCode": "qTxne8W20IcAIiAi", "updateStrategy": "MAX", "value": 0.09073183796151929}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'QgZzm3LW6nw8IUwj' \
    --additionalKey 'i7w1zpdfJEQQLYBV' \
    --body '{"statCodes": ["M3ZOJP4JzDm4mAmy", "zZQ7ZZyB5OBLUA6G", "gQPLshUCiQQiJkcw"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'bRCQOJxmrZqanYET' \
    --additionalKey 'Vpd4Okj6wxBh2ry0' \
    --body '[{"additionalData": {"25LoIvYLCKKhoJoW": {}, "oNWqz58ijomiLjpl": {}, "A4ONqVCGWOv5lWsF": {}}, "statCode": "suxgLG5ZJ6hNUqPs"}, {"additionalData": {"tJbInTiiW6G2d9Ho": {}, "ON8T47m6ET6QhFVl": {}, "i9549emHjJn1ul71": {}}, "statCode": "7E8slLykCVEWPxSh"}, {"additionalData": {"YpKmqMyTgEeO2wxW": {}, "TCHaFgf9RTJSB8AG": {}, "FXXmEM2D0OF7x7e1": {}}, "statCode": "GA6ySsHK5qOwpkQO"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'UFDUP1QYrBg0S56X' \
    --userId '6MPjgkQdsKSBnp3b' \
    --additionalKey 'viHtlUeaFzqng0C0' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'jtmwC8gHGSeQH05e' \
    --userId '7l1I002FGHdxTOdR' \
    --additionalKey 'XzUlUrqOpqG2UilB' \
    --body '{"additionalData": {"sJwVQs2nwPHq8yYT": {}, "4Oe94ySzEPoOgoU9": {}, "7jW63p51r9YsWPdI": {}}, "updateStrategy": "OVERRIDE", "value": 0.6419931782606639}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"OYGFoA2JfgeL1Jm3": {}, "AWM5Y5fUJLLJouq7": {}, "iKj7U0BES1kxZQJX": {}}, "additionalKey": "U8AbuRWPH02D0dwA", "statCode": "sCLbmENs6jlKodfD", "updateStrategy": "OVERRIDE", "userId": "qCNqCBOdQyX06xWN", "value": 0.10069034995845771}, {"additionalData": {"qtpMMb6S1UA74toa": {}, "GYf5r80JpYAL3RjO": {}, "iapSXIubf0hGGFCO": {}}, "additionalKey": "YtKS1DElzfUQfUWh", "statCode": "DDeS7X55PEVLLMWB", "updateStrategy": "MIN", "userId": "ZL2c2mqv6WyJonq5", "value": 0.5377934439559118}, {"additionalData": {"69Kdi7cdTmpWkfe3": {}, "dC89kPNgrIYEG4nL": {}, "AwuwEEFm3LQDiBlw": {}}, "additionalKey": "T33yqAvdCORbqIIr", "statCode": "6QFocifXvyelQldf", "updateStrategy": "MIN", "userId": "lc8pToagjo5SH4FH", "value": 0.4046306249555348}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '8bTyVm43buHu5f88' \
    --additionalKey 'p2DOLElxWWBvNFrX' \
    --statCodes '["bGnsAoX6qqJ3Lfws", "xUnOfuBAhVgO6Ubf", "z3zyuKS1sZgrIT6r"]' \
    --tags '["hRXXhFXY5YtJcR0s", "AtZQdgTnrurJpTL3", "bnwzs7DZQXX2mjWd"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'wcPAwWctocWlC1ri' \
    --additionalKey 'tQXORgWUV5m3raCC' \
    --body '[{"additionalData": {"w5z3APbssfDK7IYC": {}, "mQjATxGynxJ0QUW5": {}, "Lz6Huy7bHXKXJuCF": {}}, "statCode": "M3RFXqTfdQ0HpvyM", "updateStrategy": "INCREMENT", "value": 0.35626898372008753}, {"additionalData": {"6RMoT7HVbBfbcLXY": {}, "QWeh0qzSyY2xw6ws": {}, "o6xrDeTnWKiPBfjd": {}}, "statCode": "kK31wQE2Qc6ZXuP5", "updateStrategy": "INCREMENT", "value": 0.743248830906616}, {"additionalData": {"wdB5mDGFEnfYBtXF": {}, "72lhAEoh35YijquC": {}, "tdpxSVQCBElmKI5y": {}}, "statCode": "zL7CuhFA3WMt4AuA", "updateStrategy": "OVERRIDE", "value": 0.7150642712845334}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'TGpuV8xSfkDQmuiI' \
    --userId 'pRh7weW5IPSmLwWy' \
    --additionalKey '9tR2BrTxur0Pkbgl' \
    --body '{"additionalData": {"fOwOaQtQJlVpzr4S": {}, "mLQXzywgOo4XBeua": {}, "IJzGY0fmGwRN4HzK": {}}, "updateStrategy": "MIN", "value": 0.04679730248145075}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE