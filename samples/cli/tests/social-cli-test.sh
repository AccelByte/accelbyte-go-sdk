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
    --userId 'KLC8CVdqbHNjX4fL' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'eNePCvSDbl7ZAHK8' \
    --userId 'AiM9aj752Ur2DHWk' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["SQ5629s3jB43uiPw", "J7DN5utQLBbXt9hp", "pSvJNvPFIYL6Clvj"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'VvKrhISl306mn7kF' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'kBcsuCWNzkAHTZBV' \
    --body '{"achievements": ["yjSJCwQSTMdOGI9k", "oFMg7d1L7rGdde0S", "Oh4ZqhgwPFu8OMli"], "attributes": {"wPwdfzMdR4JPs9Bi": "qTJzeBMezOUdLXQY", "7QvxqaMr6AAIDcB0": "zLMLgaORWITK4NT7", "YB3dkZxEnXwiihqs": "lIbL00G4nFQeTp9x"}, "avatarUrl": "pjoUGydiBLNV0Ddy", "inventories": ["bl4jdHlEQ3jxNBUE", "6eVl96I0eiyjiZwV", "arjI0c5T6MmFm4qg"], "label": "qqa4J1poY4GyodJF", "profileName": "2z6ND4BVQkZQxuSR", "statistics": ["e015LPcflHivJ1Gj", "sZc5vqayarJ1hub4", "SVLQqeSjAGov1Bce"], "tags": ["UTvicaELnqSp2q5u", "aXGoq7qGDcZ9rjIu", "fJikg1neFe34YcfS"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'c5cCPOFbvc1lJSFH' \
    --userId 'agfEL8IEmA3ZhWMU' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'W1m9yjsspAGkxI9n' \
    --userId 'aeNc5b01FgGuisx3' \
    --body '{"achievements": ["m7SQjbDxu0lwMRSY", "3IY8o4yYMFalmweC", "zvdGOfqStFB0RyKM"], "attributes": {"RWrMDEgBNoPfRog6": "0LcPLVxPDfeDkm6r", "LdNef4xBQmh3UHqP": "Pj7DyEuttMAn14R5", "pUC1VzG0PSw5hfqC": "8jW28yOumeOhM9f8"}, "avatarUrl": "8mTuBzwXKGjHOf1m", "inventories": ["uarioJNf8uY8c7OF", "gqo7fgdewn7lkv90", "Gu3vIVXlHRFkb8bU"], "label": "rSGPHux2RQ6npKMO", "profileName": "97jVZngjgB825pjv", "statistics": ["FTwjKY5aTZqci25M", "sONEmog2aKD6wE7s", "eF4hdX1N5FvGzaj3"], "tags": ["6iuVtzlSYdHMXzo2", "W82BgIHokq0Ng6Dm", "WS5B3WqZHPKUbUjX"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'F6wRAEqj8ElZq8NH' \
    --userId 'PXiDD6W6YzENvxOf' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'pZx0VW45OxmbkxBf' \
    --namespace $AB_NAMESPACE \
    --profileId 'Ni9pj5sRWAPym1fT' \
    --userId 'zHWUd35dlz8sSNxq' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'SDHsk1z42l1oWBAX' \
    --namespace $AB_NAMESPACE \
    --profileId 'Iev02SPUHSVy67F6' \
    --userId 'sQLpJozlvPcbXG3M' \
    --body '{"name": "aFmZrIFsr1FnM5gl", "value": "AjMGzuLR0ju5XycM"}' \
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
    --limit '69' \
    --offset '61' \
    --statCodes 'gMtZoth9vksyviSL' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '2NA16Mm4jsaKN4Zo' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '64' \
    --name 'lU4AtH2XVwwjX4pJ' \
    --offset '52' \
    --sortBy 'zUhTG3iWGHjq02HL' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "57VuJhvx768qzwvI", "end": "1976-12-19T00:00:00Z", "id": "TbuUfCWFLOavaiL0", "name": "sSDclQcjmuMalShq", "resetDate": 48, "resetDay": 49, "resetMonth": 96, "resetTime": "jxTYz1ljnWxItuPW", "seasonPeriod": 29, "start": "1975-07-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["OhjlZ2Hx0cjxPSr8", "OrTfHPb8nHW3y5Tl", "65ZuLhs8iogjF2Qd"]}' \
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
    --cycleId 'KNjoUjYKSIU8EBGF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'eRPHUxiy8DGOwmrA' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "TssOEXOYJxv1jNu7", "end": "1978-04-16T00:00:00Z", "name": "iSY0rYNxmhk3rG6P", "resetDate": 5, "resetDay": 43, "resetMonth": 68, "resetTime": "0ji2XQnf34tJbIWP", "seasonPeriod": 28, "start": "1993-02-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'AQoTO5MqXYbH4CIF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'vNgBiDJS5DUabc2e' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["6UM0VZmdoSJ0NeCE", "1k4lGhL1aFCNcu2a", "eM3m8qfFYC54dntw"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'u0KPbDJJytTE6B12' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'T1B35qOYwwMAtsGx' \
    --userIds 'TxRiKmBMOh0qMgZI' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4369681247720436, "statCode": "NHN18yslobKQS8AG", "userId": "mCIHEuXl7wx8hRMl"}, {"inc": 0.8393579784143826, "statCode": "2HcsVCnk9IvL4wpD", "userId": "LLUBZKBa3eqPfdyw"}, {"inc": 0.6495799465302158, "statCode": "OW43sN7UdVZq1zUj", "userId": "NDBh3Yc0ESoZVUbL"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3746410258038676, "statCode": "h0R4RvGsFD4OH1GQ", "userId": "FsIDOoMPhMmhJYye"}, {"inc": 0.6139754788843867, "statCode": "uCR5xjV3IrFVbULZ", "userId": "H9dUh0dRKfThzlT6"}, {"inc": 0.8103629229239666, "statCode": "gERcjxxDV0aLCFy4", "userId": "Q3H7exiTiMF4rlpa"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'VsvoV6bHJ6wFhJ80' \
    --userIds '["3sVFhZ1NiTza48Ed", "mKwqxRvGV1hBgmo2", "0xVQFsEyM23wA1tN"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "YBdSgnCVb4eRh9TZ", "userId": "dMRusM3J6oIjmv2U"}, {"statCode": "od27gFrLiDcCZnel", "userId": "rqrWr7NaCIibJdf7"}, {"statCode": "WGbrRws7V5HxebVn", "userId": "WRHPQ3ybkmKEfMJU"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'RltWOq3iMhwKW2ZK' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '99' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["aqpyAvLNWy40A31f", "EbvOuzW9pCtAAyCJ", "ShRj7mv2URtHCagQ"], "defaultValue": 0.5248384342107766, "description": "OzJcgBQEcz7A4SRs", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.28465264929513434, "minimum": 0.4578227120567514, "name": "F6ZHOkh8TGnUGJB9", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "jYcEW4vbBU9Xnvad", "tags": ["THbjtsFuU4P94tjO", "DTt8OMcwoa3Ym5yq", "Z48lrktn4UZY1Ovw"], "visibility": "SERVERONLY"}' \
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
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '53' \
    --offset '89' \
    --keyword 'AERX3a91u0fkAoDU' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Mt2nVqBU0G8uOf3x' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'CzrfVoOrmPatvB9H' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Rm8wjHkufJklRweD' \
    --body '{"cycleIds": ["9EYrwiQXXBaZjcuU", "da7E2BLH6ASqDdNr", "RPGjWJIXms7IcORt"], "defaultValue": 0.9409636308911263, "description": "xA7BiWLqJffBBOOl", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "Fo0aYsO6NZtDGMsw", "tags": ["7NuSdQVRW4AkURyV", "RtuZZ9a8mkKGlwjV", "g2JLW3pFX20OVsAC"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'kp2BPWyGYX5lXeH5' \
    --limit '18' \
    --offset '72' \
    --sortBy '1qKCt0YHLTmDL9VL' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'SybsoAvMU7fw5WvE' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'Yu0V0s0oJIyCg8F6' \
    --namespace $AB_NAMESPACE \
    --userId 'RCp03c8jQ7zp918h' \
    --isPublic 'false' \
    --limit '9' \
    --offset '96' \
    --sortBy 'ja6pTske1aS6iwlu' \
    --statCodes 'RSdgwEcgMwxR2zcj' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'DsunmmFUCQMWvyJt' \
    --isPublic 'true' \
    --limit '32' \
    --offset '15' \
    --sortBy 'MGJX4mo5HGfsrMMx' \
    --statCodes 'EUAyJwIAX5KZj5lu' \
    --tags 'DXZtaUGIOHNzjGcS' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'OOybmZkq56PsOevA' \
    --body '[{"statCode": "Rl93LZi4aPpJT7G3"}, {"statCode": "837L2TrUPouAwO8j"}, {"statCode": "sV9OhKvp2J0ZVZde"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'JyrsVBKffMESc2dq' \
    --body '[{"inc": 0.3449727755388906, "statCode": "9a6pvhUX0HrwMQAM"}, {"inc": 0.5185969964849823, "statCode": "CYqj46ynwa48GPof"}, {"inc": 0.968478016737305, "statCode": "EsXWnybfg5imJ758"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '9QfWmds6rtV1kGxT' \
    --body '[{"inc": 0.5738805182324526, "statCode": "GINQSDqBj4ojsBCZ"}, {"inc": 0.09915385761002304, "statCode": "gG5gRBqdGiFAjM7h"}, {"inc": 0.45835757973601887, "statCode": "ywug7uraTDFdYMZ3"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'xiLAIFQ1dVlrW3XB' \
    --body '[{"statCode": "R7iMRJhHxY0mIYvP"}, {"statCode": "J3HqnvVQJoWAxK79"}, {"statCode": "Nb4EpHMpxW8YVlkV"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'ZFbLjn8PUmKlfoIv' \
    --userId 'nApjMODZLfjkSQQM' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'oKeuFcXn7v4l4Evt' \
    --userId 'Mcnb1MWrUFrhZlm1' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'EokflyvvEvtBXfMY' \
    --userId '1TNQmuQIfiCnQvya' \
    --body '{"inc": 0.9351182530222644}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'oUx94t4S0WURIfwR' \
    --userId 'x3ZgqGgfuMA5rreH' \
    --additionalKey '1kz450dva4HMQlpk' \
    --body '{"additionalData": {"zI8J67zgI1tl2DQD": {}, "s5qKQ81B3rlWyvTj": {}, "kBwA4qowE68J4VSE": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '42' \
    --statCodes 'OdOLjdqKijEDgQIV' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'euGooaKquigySyGH' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '82' \
    --name 'lFSw5YH7RLKExIJ2' \
    --offset '72' \
    --sortBy 'r2FiXZ01apFTzXOf' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["JZPkUCHXkSaIpo3o", "7ZjsWhnAyttSMx2T", "Y2dBz6Tq5acJuKa3"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'ePWuAQnbzWApw5bi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'gsZAO5dzos8bFws8' \
    --userIds 'KZfCup2839UerU4I' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.11174043554727353, "statCode": "W34xLKsLKOVhChsV", "userId": "TUxBuGAucwqR8zdg"}, {"inc": 0.17790240733800444, "statCode": "40Vfd8S036H6Eebz", "userId": "HQuQ9F3mbJ1EoCCu"}, {"inc": 0.3506938295650157, "statCode": "bTORwf4GkG0tkbzd", "userId": "dWf1CEcAQkahOjVl"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7770874690977457, "statCode": "CwB6ww2fLXCBEDn9", "userId": "N2UJEeDUNViEHc6v"}, {"inc": 0.9163085102501242, "statCode": "VQVK8GkEeklp86jk", "userId": "xPFqICmOsxc9vuA0"}, {"inc": 0.3092374390544431, "statCode": "VEyvM7VUynhn5Wt5", "userId": "cP8sRwm2SZbkRf9M"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "OxTI2uFH6fhNaVWp", "userId": "OZ6PEVmOLIBW79Eu"}, {"statCode": "OBPu6Crs83aVSAtk", "userId": "apNPtQe97vBJvnVs"}, {"statCode": "S4bZBMGFG6fPnAtq", "userId": "2o8jptSjB4E416ex"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["fUnqM7ytjz4VYZ11", "EWCPTJBQfDIf3Cbp", "toXC4HoPkHQ7WyIZ"], "defaultValue": 0.5702628610899936, "description": "2KMN2ziMtNzSwoba", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.5406473119137872, "minimum": 0.5918471396985825, "name": "gwGQOUQWlvYHGRxn", "setAsGlobal": false, "setBy": "SERVER", "statCode": "K7bYGZBbzPgySBq7", "tags": ["hx29WKyoKI3qxTSl", "A1kCRO1URt8dHEjF", "6QwtWDHjjJgEdQHs"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '0DjYuFRM3vU5LPux' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '37' \
    --sortBy 'VRxDglOQkRoiVyKl' \
    --statCodes '["UcezfVGi1uR4Yz5s", "KUtXYoz4q03nxnCE", "Djf1MPXvnhCzwpJn"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '40' \
    --sortBy 'Gxm3ZoSdIejqdP0B' \
    --statCodes '["69UgzudO2qKbe28c", "r4TLaJt7MvJi6TG5", "JJrAyQH96uTBoW4f"]' \
    --tags '["qOsDvgxRJ0PZekub", "XWfKXAi5QL9hxqBA", "ttuM3Ts8m2rXvPFR"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'xPts5cHntGdsoEKA' \
    --statCodes '["DqZzrNca84a1IIAZ", "8iHODbk3PohvgAZq", "WuxbcWnEbIgMsQEl"]' \
    --tags '["46gMoTx4TS8Yhc1Z", "6xuMFs3yFtgsCMlV", "82GBEzc72LUnAmBA"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'wLtvI82SGBTnXvKR' \
    --namespace $AB_NAMESPACE \
    --userId 'uKjl7d4kvefIB6kW' \
    --limit '57' \
    --offset '83' \
    --sortBy 'y5zLbukYkk6t4unk' \
    --statCodes 'jf1hStdLFEzYtA3U' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'QEp5XeFBtaMq45hQ' \
    --limit '25' \
    --offset '92' \
    --sortBy 'bRNr8If4cpZWQ7LL' \
    --statCodes 'fNFtKCQooU3IuMVU' \
    --tags 'xbZM8diQ6VTGTlYL' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ikICL7sbOxxjEWgu' \
    --body '[{"statCode": "W1oxqZNlnRmTnnjJ"}, {"statCode": "fZopecPfDW12FpuS"}, {"statCode": "0xC8Jq9wDZ01l6aV"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'EnqrysU5xbhCLyoW' \
    --additionalKey 'MPRYb9moEPKeQxaY' \
    --statCodes '["Ue4wm7xUtOFS5nJ6", "oP6A8UR1GaT55eeI", "kO2T3WANiDaXbSKN"]' \
    --tags '["NQZMv7Ud4iLMoEle", "cENyCY57NKE7eBGA", "HcVaaQ9aKnLrduks"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'lbeBfb8YVAsFf5Ry' \
    --body '[{"inc": 0.8221047534062605, "statCode": "ei4AW2cdVR5VeAne"}, {"inc": 0.49788116280126327, "statCode": "Y78im7UwSBFW4GfO"}, {"inc": 0.31034310193222603, "statCode": "gFGXoqnVyEVXG7Rd"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '3RACZozPGWzvsI27' \
    --body '[{"inc": 0.28878104026828166, "statCode": "4ImuPvbdm9iQIlkZ"}, {"inc": 0.590368764881165, "statCode": "ga22pGKxbXOizPdT"}, {"inc": 0.5821115131910384, "statCode": "Gn5hiRTzF342tUcO"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'jNfJdcWpZS7hEmB9' \
    --body '[{"statCode": "k9HSlgFPoTHlruen"}, {"statCode": "Ns6Altv6Y4live4T"}, {"statCode": "HzMXOKXp94YvkUAH"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'jmLJgdkhpFKBzsoM' \
    --userId '6uNNZM2Irbd1bgNh' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'lZme9WX2GQ3GzjNk' \
    --userId '2MkdmDMrUpx7oI2w' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'psbMSekYe3BcymmI' \
    --userId 'kNo8FYCM8ttu6yOo' \
    --body '{"inc": 0.5536615004086195}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'nUIFM4LIQfeGcxag' \
    --userId 'D0hmPQFZI2s2Qqp1' \
    --body '{"inc": 0.37455502178994327}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'IKMsy5GrG9pY1xJW' \
    --userId '1VTeodU0AqGaR1zy' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"aCUFnUjPAkDcsLdk": {}, "bWKjHmkmBLE0iKYR": {}, "WWeopwuzXzVXd1wD": {}}, "additionalKey": "S5XDE8hsO6stVAwx", "statCode": "bCA1nWacbIqQGVKI", "updateStrategy": "MAX", "userId": "uVJ0RUgqJ5y1VJHF", "value": 0.6784122293233958}, {"additionalData": {"zEmW6959ounGFQPt": {}, "OtvvQ3Bg0dwT2LiJ": {}, "N1TdYITpr4gkXKiP": {}}, "additionalKey": "94kbFwOcFPQB4eCw", "statCode": "pFxOMXAQQm3PYub6", "updateStrategy": "OVERRIDE", "userId": "I11xwJf98ukoM5au", "value": 0.7520475679290156}, {"additionalData": {"9IlLT88KL7njLIJq": {}, "IhxeKD9xdRp3HIeT": {}, "LeFFXRJWlc18SYvP": {}}, "additionalKey": "7z5sNyNS2HxUkwqx", "statCode": "eEuxWe5NosueBFXg", "updateStrategy": "MIN", "userId": "glv87EYgYxtu6s4O", "value": 0.15298607569035616}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'AcO9oJniSTgICn8w' \
    --statCode 'xJVMsOKReEPel8hn' \
    --userIds '["DPH82IqjKcsLRmWj", "VJlR9qhABeigIMca", "RhlYPbTu8HWclip4"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'aYMeZtZRejxYv3MN' \
    --additionalKey 'soQtTHk848iqWxrg' \
    --statCodes '["KrKj59db3OCNfeKh", "8h7ohUae0qqbHkkJ", "mkpH5hakvRWXuObj"]' \
    --tags '["vaIDmVlBsLIJsxNM", "gtOQzg3DjMKPexd0", "yrtW65TJqpm6HiH9"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '8WMyL7lJB831lQCA' \
    --additionalKey 'PivhYRsKK8Xm3jlb' \
    --body '[{"additionalData": {"NtBbMZ8jLhfH8JRl": {}, "E0S9nKwDGClz6xUh": {}, "EHCHeL91QvuMsYjG": {}}, "statCode": "WnEozkZXlgDEhMjQ", "updateStrategy": "OVERRIDE", "value": 0.0907571765680083}, {"additionalData": {"OD8aYUzkMysvw7y5": {}, "puLMujjujbYVLBQ5": {}, "8uwcFrMs1pJ4pnxb": {}}, "statCode": "6rinpX8QIlWJQXT5", "updateStrategy": "OVERRIDE", "value": 0.35287733461529003}, {"additionalData": {"9oWAKocXHbyEWyLV": {}, "MBHpiwumjZrfIB2K": {}, "ds4eyyifkg0Ib704": {}}, "statCode": "FoE74si52FS7qz8P", "updateStrategy": "OVERRIDE", "value": 0.6434050496627267}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'PzP1YfSoDnmWvwO7' \
    --additionalKey 'pQFuSetVCjP8mJyn' \
    --body '{"statCodes": ["NcPmMkvts1L0mpCM", "5jYZF78qffWqKFA5", "Bg19DleRitmBQ2Rq"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'NqUZKRRGeP68aBeH' \
    --additionalKey 'z6p9E2bMGZCGv2gK' \
    --body '[{"additionalData": {"Xb10NpDtkrFLZ6CY": {}, "EwBVfNcj5VbiKKpT": {}, "DJR4qobU34T4tEhF": {}}, "statCode": "jiFwgR1XnqsxHnNE"}, {"additionalData": {"QDA9ScTpiHCozUBS": {}, "GbyYfxVKXoZ7tt19": {}, "6ynGCPFfOGr2aB3J": {}}, "statCode": "Hxo49lhDHmu7me9s"}, {"additionalData": {"xeZZXQGUw5l8cuQg": {}, "GZyEWvV7gDR8esZc": {}, "UixxTBWKfbrNJrhG": {}}, "statCode": "R02AN0zUinM0sfDY"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'QyK7LauEyR87vUyf' \
    --userId 'dut9xj84Aghwx81y' \
    --additionalKey 'BTykbx0It4rtcQZC' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'SqYLrkkgp5CgqP6y' \
    --userId 'NVG8SuTLJmZMOiwI' \
    --additionalKey '7cZcJ9nkXvS6e7st' \
    --body '{"additionalData": {"rX1mPZ1qLeulSNfJ": {}, "r2wKsojl5qPJnsag": {}, "s77APk2D5BwvTrGD": {}}, "updateStrategy": "MAX", "value": 0.3303400517240055}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"JyHxpnq61hd8FnEi": {}, "1CeG8F5g3qDipyUp": {}, "fKlvwDFA2QljfhcW": {}}, "additionalKey": "rlHOHZRmwqj8zr1W", "statCode": "5vRWZnZY6X0CWTOH", "updateStrategy": "OVERRIDE", "userId": "AYTKSlwLoffl9njx", "value": 0.9572039510720926}, {"additionalData": {"VTGQ7zbRNMMyXQES": {}, "Pcta1I6oBquy36wg": {}, "ZLy0ndKIz6qZ8DWY": {}}, "additionalKey": "O9DwYzFuncY8KXi5", "statCode": "SkdRv3DqSKYj44ky", "updateStrategy": "MIN", "userId": "5hde0wncYc3qNKjY", "value": 0.5662774513414771}, {"additionalData": {"sm0WbCHnaBIoozmw": {}, "oyRh4vI1xZHbvuu4": {}, "XnpdlOg1lCFkCJji": {}}, "additionalKey": "c85Z5YPDIDbcp5HG", "statCode": "3oVSUvAmN61YlvKp", "updateStrategy": "MIN", "userId": "FvQsRQVyCPtbGn06", "value": 0.5955619159202085}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'kQFVhRFAjuWAXFOW' \
    --additionalKey 'E7brVBVhUcITW1Dr' \
    --statCodes '["0t7Fr9aWNRxiTLwr", "3DCClgaiKB78gTbS", "SIVlogqiq4nXO8uA"]' \
    --tags '["E7cyEgXxPDjyy5hN", "aezGJXudCBgow97T", "4raGt5wXQfJzuURt"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'LE89dddrjYNHvTs4' \
    --additionalKey '7saxOCcCoDcVhl1a' \
    --body '[{"additionalData": {"hpbvneEu4gbEoHuB": {}, "vIbpYGx2vqGyzVyM": {}, "GSKUWc9KApMAk3CF": {}}, "statCode": "Ro2wyusnsDPM7JBS", "updateStrategy": "MAX", "value": 0.6030154645481911}, {"additionalData": {"71SqtZ9a6MQ7XDy7": {}, "g8AFWRmMTuiLkuy5": {}, "QeqNSmQY4mrIMuDH": {}}, "statCode": "TffjrqkLziZq0yuW", "updateStrategy": "MAX", "value": 0.2511125428001554}, {"additionalData": {"40OCGZUvYX8FGo85": {}, "lEbG2H2F0wDWqfkp": {}, "tfnPnH7F3HNqDFcP": {}}, "statCode": "F63XH4elkPdeIxbR", "updateStrategy": "MAX", "value": 0.5157249435978376}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'xp5DV0p8mAP89iWz' \
    --userId '21ELtUrgrjBOV3tl' \
    --additionalKey 'IQ7GjZ6nltjJAZlp' \
    --body '{"additionalData": {"F7ceIzKwEHtsBK24": {}, "61MSEWa7kctRF2ca": {}, "T7Lju60bTQIL7G1g": {}}, "updateStrategy": "OVERRIDE", "value": 0.17722164421589504}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE