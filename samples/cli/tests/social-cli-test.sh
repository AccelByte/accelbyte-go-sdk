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
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '7p8LN67EaZ0DRCKV' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'S4Du7UxOG6nGr1jW' \
    --userId 'iAO6Gz85pXbZO5d3' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["oxysh4N74zrzIYLT", "C1KjymYUqOlxFx8R", "YsEAR5oY0pxGL1YF"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'CJLZ0lT1vguyKcYw' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 's4zGeMniZh9iz6dV' \
    --body '{"achievements": ["dqEoh3sdNEid1kTe", "N0xPFsT8GaoLdGeK", "KsDHEw8TjZuD3dXb"], "attributes": {"Gk3dQ7m6H0DrQYzc": "biR1eC8RdHxDPuR2", "bvp1ApGUb8G87kQv": "Xo7LQpdVwnPUZj72", "vDL605OXDCB852mi": "MItUTf044UYh8utl"}, "avatarUrl": "IQjBLmgmnPCCIB6g", "inventories": ["7997Ny6caiFpKX9U", "1fY0heAAgM5Msgzf", "hBlAMAcWO5zfV6Br"], "label": "Yt67JRZR0nCEYKVl", "profileName": "kchxKw5AMOvAdCWQ", "statistics": ["Yb3ss9XpQJPu8QKg", "VYAX7lssfE9yS9Y2", "LGWDgdc1r2LRByVc"], "tags": ["nODskzZ5FreMh6h6", "th0wNKCfAr6UoSF6", "lXvcFs8PBB0vZZmS"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gh4VhDfYAbMIW9cJ' \
    --userId '2hQSvDTvRBPqVRrQ' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'jrdBDudm9EOLo3uh' \
    --userId 'Nb1ef8Tip33h2x4Y' \
    --body '{"achievements": ["uB6ZWsT2PANGBEug", "QmkVNyanM9UGsi5D", "dUfOnIl7jvmxdXdm"], "attributes": {"y9pgckJmVNkL0nez": "l2UDKMxG4mX3zuNN", "EOgyIE55ULUJVbRy": "SrnD6OyA1OdBzPlS", "O5NvCFqf6ytAA7rg": "xzHmHplvb3KBBRzX"}, "avatarUrl": "ftxEHNcjb4bVtBEQ", "inventories": ["7jykNeALeapeBurD", "NSYLwlCKR9Dxd9B7", "mnSeX4msmQHRdhDH"], "label": "Xd1dJMo5h8Yxqnff", "profileName": "xYj8NmW5hMCA0Po8", "statistics": ["jTeQ3Ri8fphIIgdS", "fgqnuWLptU6AEXWf", "kfC2704ydBkJRRKb"], "tags": ["pie1X1rz0Bu6C4rm", "JeXVJhM6SclihuXC", "3URBmrDyihMSBTYD"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'tmPbuy6I6cHsiQco' \
    --userId 'Lfr6N70PvSpGTxIm' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'VDtJYCtHkQPNccx1' \
    --namespace $AB_NAMESPACE \
    --profileId 'QSl4nfK3kBQzFFVW' \
    --userId 'sAcv55DdOVgi4NSN' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'mylpyxd8zZwMIyED' \
    --namespace $AB_NAMESPACE \
    --profileId 'AEAMWFXHVSNnDd4B' \
    --userId '6bDvGfhsmgcADKY5' \
    --body '{"name": "pmKUbPYgooWTaPOk", "value": "r7bmTgGTkAXo3uXa"}' \
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
    --limit '21' \
    --offset '76' \
    --statCodes 'cgd7HggvbzQAdW4D' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'jQL2BI6NBcYEuDX2' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '26' \
    --name 'PfIjVH8B5vnQ8kdA' \
    --offset '83' \
    --sortBy 'KPlCtRNNy2lobxTm' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "19vXFzRFrR26Iuyo", "end": "1982-11-01T00:00:00Z", "id": "1JfsihqvQxEbrUfw", "name": "6RHzo43aYiB4SrKB", "resetDate": 54, "resetDay": 39, "resetMonth": 3, "resetTime": "3d3Kxc9DXrSiPyb4", "seasonPeriod": 13, "start": "1990-09-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["MExRC1R9Wv9Oethv", "cietFmkeD4Jcrhq0", "Tvs6gGKi4G2SJGcZ"]}' \
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
    --cycleId 'lM9qvmSiA0kzJQfV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '6hvUk74nzKgbsuKM' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "DexJ0QwJpVwP4eg7", "end": "1986-05-09T00:00:00Z", "name": "xynSNTUifuEuhPlp", "resetDate": 78, "resetDay": 67, "resetMonth": 19, "resetTime": "CUz4y8TpewiNC3wf", "seasonPeriod": 63, "start": "1981-07-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'y53lOLcERhamj4qH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'Auhbj1qTWFUGZiwP' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["FLEYEc1QcmYT21lx", "iJ00hd5VIQhl0bPB", "9V2KfSguMHWCGAbH"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'LUauYSIP852ygoKl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'zPTQ2d1QOFTsUXiJ' \
    --userIds 'FQIQsYYnEfNCGr2H' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5403693419143547, "statCode": "FyxeK8DZAVQK3eEx", "userId": "CLpnyXeAEAtearTD"}, {"inc": 0.4938494171525123, "statCode": "d8khAx8N6JVGxQpH", "userId": "V2BOvuqBeCUvblcQ"}, {"inc": 0.23296939926666305, "statCode": "nWTpoZxQldBuPrAp", "userId": "5cLfqxHJuyYqLsAw"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.030740969166376475, "statCode": "6imJ31Hk7caZtGTU", "userId": "s5zlgwwSTdBixjfd"}, {"inc": 0.5493453411932272, "statCode": "dJfCWwROUcV1GGoL", "userId": "fbPc7MbA64yX5XCT"}, {"inc": 0.5203641661726969, "statCode": "QmKuhLWAa4FbPfSN", "userId": "58lZgutyP4Z1pZH8"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'X9Q10HZ9fcmqQy0K' \
    --userIds '["Iyj8EX9pCPaZT622", "WjqQCN6M2pKcwIdi", "hBogKp1iGTpOblYG"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "tTOOVHGwRtJ40Ybc", "userId": "xqKkDnHt7mWRshaN"}, {"statCode": "WgXi4FMKYc6p5wdg", "userId": "Km5O3rjHEDkLHKu8"}, {"statCode": "uPYxtwJw1gDKZpKh", "userId": "wPPMWZdYV3YcQCH6"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'ArM1Gowbcpv5mV6H' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '32' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["b9TYrZP6wpaq1Pxd", "QrMIQQXfNICx830V", "rckUcIZYC77KrhRG"], "defaultValue": 0.5913140413671141, "description": "Xg9t1NAO6sQVhDWF", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.32446301793679255, "minimum": 0.07818079753195228, "name": "SdQ7VjLQWETgBzSv", "setAsGlobal": true, "setBy": "SERVER", "statCode": "ej89cB7uq1I2BuH3", "tags": ["evkdxXmIDMjiJAxP", "cizfH5rpwcQA7QTh", "bYmv7AQGY2HTiVHS"]}' \
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
    --limit '1' \
    --offset '64' \
    --keyword '4C9q9pbLvl30epu5' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'I9tEgHkBwKXgbk6C' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'OtUNglDnG7znQfPz' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '8NRnRGD0cGHugpKL' \
    --body '{"cycleIds": ["4FP1g2Sk4rQcAsFJ", "Iqfo6vr5gtfgPeba", "1KOwlAVALe7zqPQI"], "defaultValue": 0.16393737832329436, "description": "kFgMSeB6E7hG0OzJ", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "0nTaw2eX6XYJZwBY", "tags": ["CiyqaGMflVJtOLZ9", "OJxnnvvRl5EzNBeY", "m67a68TV90JoCtkV"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'd46107uDx6AoxNsG' \
    --limit '82' \
    --offset '49' \
    --sortBy 'tJYMGNMjXf4V9yGF' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ahXCeFH2ubDzjxU6' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'TueRLRFRxs3iPBFf' \
    --namespace $AB_NAMESPACE \
    --userId 'b0jcB5LWOo7uiRdX' \
    --isPublic 'false' \
    --limit '85' \
    --offset '95' \
    --sortBy 'FGPaIfq3y9wqEPBP' \
    --statCodes 'Uxqv6FkH2qBMfe1s' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'lwMUV6oIIWZbB7HD' \
    --isPublic 'true' \
    --limit '41' \
    --offset '27' \
    --sortBy 't3Z1Li3eABSrYfgm' \
    --statCodes 'Niqcr1WKmROBN5yW' \
    --tags 'dtJDXQYx8xxu74Wi' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'GghPQsoGH2bK6JxI' \
    --body '[{"statCode": "ggBlAhMZhw8tywqc"}, {"statCode": "qeYD2BrNmHSNfp78"}, {"statCode": "5co1wiHbSnE5p3vI"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '2dmnCiFJYLbxMV0G' \
    --body '[{"inc": 0.7436558942080922, "statCode": "H4nAK150vFpnaZ4A"}, {"inc": 0.8222985790239898, "statCode": "E75U2zYCy91aXncv"}, {"inc": 0.1272568042570592, "statCode": "zjj3WtMgVWCQ7vGp"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'pSHqIAuLIvoACBQd' \
    --body '[{"inc": 0.6673731057159582, "statCode": "VSKA06fFU9bXnUJY"}, {"inc": 0.45002114099611346, "statCode": "r3WyZyWcu5tWo8LW"}, {"inc": 0.621534163733756, "statCode": "HlXb1PgO8SiV9ovb"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'RYCaBUNMqVB5Cz0K' \
    --body '[{"statCode": "2kUNbG1Gl6QXWkbu"}, {"statCode": "egBKT4bnInwgRerT"}, {"statCode": "N8KFmoA7qxz8R2FG"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'xRoRsCYGjLTaenr6' \
    --userId 'EK7ldqeNFYH4ose3' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '5GkzyADAVV9N64V6' \
    --userId 'thb9inL0iQ7QSpwJ' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'LWbDwCfRzN0zL64u' \
    --userId 'TIWGYmoZJwoOaY0p' \
    --body '{"inc": 0.3297624951917594}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'JvhaEj2OVX91F1fQ' \
    --userId 'WyH2agle3EoH75Dy' \
    --additionalKey 'H9pFt1rX6rLKOAHV' \
    --body '{"additionalData": {"5Htg7Lg5VapqmfJp": {}, "HmkBFEKXFioR4rND": {}, "BC600N3zAwEATiwO": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '47' \
    --statCodes 'BidBD6BDlb4wK2U0' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'yqoIGGJbFGukTgF5' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '57' \
    --name 'KQvX9lUw8ZPZJJ7w' \
    --offset '31' \
    --sortBy 'JiLRmSv201ObwCEL' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["yMpbZsW9e8rHxQSr", "Brj6l2E4F4YDtj75", "9jZaPL4Ci7qr5YUI"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'hHhglZMglTRYjXMq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '4e2W9voKCZaPynja' \
    --userIds 'hXSz824KsDY1vNM8' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.576201778469276, "statCode": "cl39j8GIbvbPqYNz", "userId": "X93RtVBgz21eEwde"}, {"inc": 0.6080587581181439, "statCode": "OXcK3LXxdMcNMWq8", "userId": "XchMob2muNdMEmST"}, {"inc": 0.7428085426773708, "statCode": "cspou10Ph7V9ftgQ", "userId": "TAqYxWEzhLLcn1on"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.86175644063779, "statCode": "IoGjJGnpSJ4rYJOr", "userId": "k8psPB7B1h2UW6PY"}, {"inc": 0.38460565370629796, "statCode": "6ZX4FfGv2iNgcfuh", "userId": "vePab6mxVpOVgkgY"}, {"inc": 0.14833876456370698, "statCode": "Dgk8sOIcZJt4mohs", "userId": "TatX34O0hNxsYnlS"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "ytuC5bizypIvLDKq", "userId": "SBnuIPnPsQ6WbRcn"}, {"statCode": "mJnNO8Cse1wdJYpN", "userId": "R37hE3zWZMqDur49"}, {"statCode": "xG3h38QgCE6ET16y", "userId": "yACrvXcbvWBueO44"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["1cGff0RFwqOGXz6U", "qWmJMReDCNLVf5x1", "kkcA2xgr4kpzR7m7"], "defaultValue": 0.8036068570940752, "description": "Xow2ROUwkY3WLGly", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.1104350383559255, "minimum": 0.8073794893606875, "name": "Wyu8AnHsIB19oJNT", "setAsGlobal": true, "setBy": "SERVER", "statCode": "y5A8zwfFwOjAvY4C", "tags": ["mQRjDIs2A1xSc07G", "tmk0dfomIeO5az8K", "fyfqAVYl7ndE9AEb"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'o3pxOxeDAaQi4AH0' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '59' \
    --sortBy 'Su5kauUSW3mdNQeX' \
    --statCodes '["UT7MbMjmy8qxC5Ap", "X6dFXCnt5guV8zg9", "fyzn7CI6YnhwkagE"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '39' \
    --sortBy 'sWmzB0zqRuovzMMx' \
    --statCodes '["3BnkEEmq53CxYHJL", "o5DLX0ApcubBDWS3", "F2vyHQJpnolHnWBu"]' \
    --tags '["C2uCSnn47L5U6dNb", "78fmV2oKe4O7lfoo", "X2hBbdV6d2ra2GKW"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'LIQxUDBy6yNYahSN' \
    --statCodes '["xIOVBW3c2Hhg1JBg", "mmmY7z8cl1IGYMxU", "eH6eBzA8RBao0s3G"]' \
    --tags '["tNshuZMYgIx7Msxs", "fUojDGEkGhVXFyIt", "CCJflvSUxEGZxxrn"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'oXZXNXj7o4DJq6b8' \
    --namespace $AB_NAMESPACE \
    --userId 'nMOSnTPMhsXWndMe' \
    --limit '64' \
    --offset '91' \
    --sortBy 'F45U6GCjCTqmSfxT' \
    --statCodes 'XLRyk3gpuiV639OS' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'sPE4fHfaay0EBxOo' \
    --limit '48' \
    --offset '23' \
    --sortBy 'rXSwQI7qxpq0fQN9' \
    --statCodes 'z2JVDU1yYZ7uEQ5C' \
    --tags 'sTCWdQRyTGKvADjN' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ZC5FjrM4518DDNSy' \
    --body '[{"statCode": "QhOAUav3BPBg7t7x"}, {"statCode": "1cZvBa86qwvuNrku"}, {"statCode": "hwv0dsfIlCyZLp77"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'nmDTomuwSZrdcrAR' \
    --additionalKey 'A4n2yDe4OljulCQ5' \
    --statCodes '["wbhWev68jiZcE0KH", "OzeIWe5ELJQ8Ansr", "ICXJ89olpIKW1VwC"]' \
    --tags '["Se18IjfLmHtI65nv", "Pjpw1xVLbvNblZrI", "x7PMXFkzK865za3U"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'llNKO1ojC78w1I9U' \
    --body '[{"inc": 0.7537304284193537, "statCode": "koJ1OGYqa9165sy4"}, {"inc": 0.8897939236021158, "statCode": "lDFuHxERWT28IdtV"}, {"inc": 0.6539266949586875, "statCode": "GRxYDZtsbw2tIiIu"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '2Mn1NpNrbH0qTeyq' \
    --body '[{"inc": 0.938137385895204, "statCode": "VyEjz9WfDLdGQqAB"}, {"inc": 0.24735436175617687, "statCode": "cR1E998dUc99f7wx"}, {"inc": 0.4100651630732093, "statCode": "uyancHU9pLkypxaQ"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'EUOn10QeKk9rjRoe' \
    --body '[{"statCode": "GlxjCoNmbw0SVu6M"}, {"statCode": "fUiWRATJ63TWRieT"}, {"statCode": "n23jUi6LWfoSVeWO"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'u3dqw45SzCH1B9nd' \
    --userId 'N8BskcNzyqyrXk7T' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'YuEfdeIxWwd86NTA' \
    --userId 'tlKFnpXy54GXsBkw' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '4uNsCnSt92YyzW2S' \
    --userId 'HwLIeeE3MQFjss5K' \
    --body '{"inc": 0.4913188804329357}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '11LCvSqqtYXuIGfF' \
    --userId 'w0Mvefzr3CRnrgBD' \
    --body '{"inc": 0.8723584375634259}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '5EBmiEzRU6eK3hAI' \
    --userId 'RquwBKa0EEy4Wxy6' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"oS02KRAoOSIN5KzP": {}, "rtamGlLiTvNOKLPC": {}, "4fo4gwTHs5hukcGF": {}}, "additionalKey": "A3qPQCEs8hIAX16N", "statCode": "8dh1Wx66gexPEeu3", "updateStrategy": "INCREMENT", "userId": "H7uJgkqutsMf9vWA", "value": 0.17301939242485298}, {"additionalData": {"JYwprfcaGTvPlZex": {}, "CO9y1NzTlvQfyNQo": {}, "DRWJnZRgLHM6SiNQ": {}}, "additionalKey": "ggl24IjObOVdF29t", "statCode": "I7aXnJqJmmRZWSM2", "updateStrategy": "MAX", "userId": "Vzbdbg8fotc7XO5R", "value": 0.6031108453739495}, {"additionalData": {"WIZkUxYJ8Cw6rIWM": {}, "qna14BLhlhLugMvP": {}, "T9WREwUdOuzhdcSR": {}}, "additionalKey": "8UfCxhdIvHirDDrr", "statCode": "nalwuIhhnllI4GtC", "updateStrategy": "INCREMENT", "userId": "tcfEI6YrpklwxSnn", "value": 0.1468686497657754}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'PqFuVgdNw670nOCK' \
    --statCode 'unsLIb8BoAA422tW' \
    --userIds '["Yr0FiwYzwH7Ue0y9", "7qUyWCC6PcrtZwRs", "6JK1QbVxKGuN3Ph7"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'iZ698cQVHTOLmucZ' \
    --additionalKey 'kCdSWJC5xRuy5qLW' \
    --statCodes '["qqfbilIjKnnew28E", "my0XEZ7AvaOq07gT", "7HXiNWCHzPOUwiUB"]' \
    --tags '["9CZ2SQSaUhYgD6PV", "L1mnrEUaXGkgOP1F", "wtIC77nRPnQtGuRD"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'VVw7wDTewdpKSyyB' \
    --additionalKey 'xuna3K4y8In06x6r' \
    --body '[{"additionalData": {"OGqARoaOv1KdBAyf": {}, "KkyK1YlSEY3XLrON": {}, "W04XmwkwwwBuWtPF": {}}, "statCode": "a8ie9aIIpXda73Rb", "updateStrategy": "INCREMENT", "value": 0.5338919952527147}, {"additionalData": {"XehThByR557fxEmz": {}, "0XtuBAoB1OWuZ9FC": {}, "K4EwWImm0lxNUaD6": {}}, "statCode": "Dv8ggaCbOSU5V73A", "updateStrategy": "INCREMENT", "value": 0.707993976583612}, {"additionalData": {"K300R36s8gUkqII5": {}, "gr4pICbWJGjFCIto": {}, "sP7uexCoCS9zAPu8": {}}, "statCode": "yoauRWZx85rmsn62", "updateStrategy": "INCREMENT", "value": 0.1633154809514269}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'w1ECo7DrJKiVFA7e' \
    --additionalKey 'H3qohGFfu4FXW5CA' \
    --body '{"statCodes": ["x4j1pZkNaSswQfiY", "qVaGbIlntuf6xbZ8", "KzAtHHO3unwQ9v10"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'tkjgDso4rA0GCD5W' \
    --additionalKey '09KGgfha8HB83SEM' \
    --body '[{"additionalData": {"sr9htD7DMKBnOmKN": {}, "gfzZCQW9Nj5cgZCo": {}, "2HXKc2N5SDfEwgWw": {}}, "statCode": "tsbQ3pfYFJ1WrXHc"}, {"additionalData": {"jf5GH4EVgm2ZFolX": {}, "l56fXOlEV8gsk8Cx": {}, "dpZajltIGQehsTff": {}}, "statCode": "JhVD1KSsCu2JAbgP"}, {"additionalData": {"Rc2yoUSSM3lDv8ve": {}, "c2rLiUA1FEuu4IDt": {}, "KcTGailBQFXavAoh": {}}, "statCode": "geBF1ofypf87yWJk"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'eRPfsyBqAS9u97Bz' \
    --userId 'w1mBWpg1me7EdSsD' \
    --additionalKey 'HqglBdxCKuIY1GTc' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'bucrIrDkhel38OZK' \
    --userId 'CXK1s6MI2V2Gy6wL' \
    --additionalKey 'NfBJdDPZg0eiAt8t' \
    --body '{"additionalData": {"AF843duAXKoQSa1s": {}, "PQsxinTJgmHSCbnh": {}, "zZOa25nehiox0av0": {}}, "updateStrategy": "OVERRIDE", "value": 0.3432010622458197}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ULHS64tiHSVt6P0n": {}, "RphH7fmKvik5GP8w": {}, "4WTKnz1W0BJHtitd": {}}, "additionalKey": "0gi9eOhonRrskatP", "statCode": "jTdYsf6nolMQHaRf", "updateStrategy": "MIN", "userId": "7geapRVcxhrLO6uj", "value": 0.9849107610436771}, {"additionalData": {"5VCEjE5dM85tRyO8": {}, "t6v9ryfGuK85OByq": {}, "KMFbJwrVVv6Nwf3x": {}}, "additionalKey": "Hucxs7OpZppJwFDa", "statCode": "w4jIQKcCpMPEhiVq", "updateStrategy": "MAX", "userId": "FLADxKqDerM3weqX", "value": 0.8815346116504367}, {"additionalData": {"ozzQyIJwkP2LfkMu": {}, "qHwGrtYUtjLPPB4g": {}, "qxaKHuuWe8Yj2DLS": {}}, "additionalKey": "UfM9GiTwEdszv0sS", "statCode": "2YSA929sIg8CUmXM", "updateStrategy": "OVERRIDE", "userId": "PxDCXHsJEMxPyNtY", "value": 0.7425608966999996}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '1Fzqcn3vnfka1bxU' \
    --additionalKey 'BO8J80g5VvWKOlra' \
    --statCodes '["juIX78CJZgHyRzBy", "4atTd19DAHwWcJAJ", "NyxBDqw2bAkHUYaE"]' \
    --tags '["B5BOQ197h6Z9OpKy", "eKFuJPHQoYPvkSyf", "BZ9uCNO6GI3sv4m9"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'bGXSrZ3xgWFZSicy' \
    --additionalKey 'PNz27fyw8pNZX5m5' \
    --body '[{"additionalData": {"w90dBH1jFrE3b0S2": {}, "kUcHd2yVGNSMBPu6": {}, "P8wMwV5kuKt7RRK6": {}}, "statCode": "r2IPrPin1g1EIUPt", "updateStrategy": "MIN", "value": 0.08981428788279411}, {"additionalData": {"8gLpVdJsPkZjhHtj": {}, "xqlQizyl6qDecqhS": {}, "15VpyYkbqGKp2B1f": {}}, "statCode": "eMB7gNbiNL3yaAas", "updateStrategy": "INCREMENT", "value": 0.6889835235232458}, {"additionalData": {"taxFgQiQd00iM1hR": {}, "S9djzyEfUg76NqQY": {}, "13ynOdXlhZf4DWuZ": {}}, "statCode": "aw5ZiCn8jzdWnzHW", "updateStrategy": "MAX", "value": 0.948953234255673}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'QJKds8GmUEAT6JRN' \
    --userId 'PH2K6X3FO3Q6476z' \
    --additionalKey 'beHqkWbqEtZ8vRZ8' \
    --body '{"additionalData": {"6RccsP2leNky3RuR": {}, "W4yrswc9WzXZJSAB": {}, "mIOQbSNkaA17bgS4": {}}, "updateStrategy": "OVERRIDE", "value": 0.6547725085780469}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE