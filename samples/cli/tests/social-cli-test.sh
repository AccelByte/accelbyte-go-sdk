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
    --userId '45dI0SWfMK9vD3U4' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'pLhdJdSAA29TFoCv' \
    --userId 'zhAH3dULvRLXb8hl' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["1CtlCbazyYlOQS5k", "63jvE08vJNnrYV7S", "vIrsDC3LOPstU7nA"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '6JHIvY1VKNg6keO3' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ku6W8RpvmiefnRYA' \
    --body '{"achievements": ["6GlnDnt4iIL7aC9j", "zgH6ojaR9adasL5p", "QvmhTn3wl2vWB8D2"], "attributes": {"wECCkcM7rLtNtXa4": "m6l6NfwWfbP6OBYt", "BHOPevOnBIqsM6GV": "xGHIDwe6UwL3sLBX", "n8yeMTk5ZsISeIIV": "S3xeYETlC4WUw54I"}, "avatarUrl": "QtcOunAdVEcsCSce", "inventories": ["DBt5X0CYVmheBxDG", "dPLpdE7rIKgfcOp2", "gHiGNVYusaZuD56e"], "label": "SnTKSaSBhrOqHzlx", "profileName": "1EwvjKLWRD0n0MOx", "statistics": ["g6gaaRBfR35yDVTf", "D2v6t8gteDwpgUsZ", "BHhHupojMoWudWR5"], "tags": ["GeTOOyvICvxBXJnD", "uBc8aYJZ4mGkSD5K", "elC1Z2ZKAmmNhe6x"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'UDYc9RHW8mJh0zsm' \
    --userId 'znvTnVr10QfdnfYL' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '6izHncShaTSdytNS' \
    --userId 'XnwfgJb1NFyJOEbP' \
    --body '{"achievements": ["k5aOUASq1K6wqtZo", "QVcwwC4kx989tiKv", "gVrLUSVgcyZCCJR2"], "attributes": {"qLTr8pT9yFvh3qZ5": "S1LDthSn28qkkQXU", "eZ9bspE2ziJPwXhV": "3nn4LJ8gD5Jf5Qqn", "OF80952RQI51gYut": "7hlZgG1dPHgkC4qa"}, "avatarUrl": "4ALI9P5kDQLXP8Dg", "inventories": ["JrbOnk6kosQoOn5J", "KwD2tunECwH6DtLt", "5vKrWl0hV4KDbcJc"], "label": "WpJC9BbyW3bZR1bI", "profileName": "4hWg3MzzAKzUNrzG", "statistics": ["W4RjNHSS28yNLrEW", "bHOPzmZLTkicmbXn", "FQvycudUV1yWvk82"], "tags": ["MpSMovLWdbccRQnR", "9K2AhlQpBhPy8Oqn", "hiNbf3AY86zKRicL"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'OKtsUSYOeRV2nvN5' \
    --userId 'QKPDiLefciBTvkEU' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'BFJLStT2YPhNVKZQ' \
    --namespace $AB_NAMESPACE \
    --profileId 'EbHBPcORKWMty8hv' \
    --userId '7lt2gNFxVHDprjtp' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'yfegS1VUFzLpnuMl' \
    --namespace $AB_NAMESPACE \
    --profileId 'bYJejU46WP1vYvZi' \
    --userId 'fvoE58dVz9G8SlJR' \
    --body '{"name": "0r4zHKQOjO123Egc", "value": "AMGrfeLKWF9MeNXL"}' \
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
    --limit '87' \
    --offset '30' \
    --statCodes 'dcm0ooAsKQHyNwaq' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '2H4KbiZLPwkWdo24' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '51' \
    --name 'MPiGfr9Fw8KScIXD' \
    --offset '74' \
    --sortBy 'CixfuRDAIlsY6bqU' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "Qt3jPwuqiLcusBGG", "end": "1977-10-12T00:00:00Z", "id": "vgMRYqy0LvzZnjTc", "name": "2QRNtKFS4bZffZNa", "resetDate": 9, "resetDay": 11, "resetMonth": 52, "resetTime": "sm1esGKDUYezSVfj", "seasonPeriod": 1, "start": "1985-01-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["HNHePPSwWAPv4Rsg", "zxh4SkeZe3HzMqRJ", "bSqKuj77wkEz7cTZ"]}' \
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
    --cycleId 'VL9I9wHHhJSFDDAH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'jHfo5fuL5gLnmlw5' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "NlPiHpmcq9XoVwoy", "end": "1974-12-12T00:00:00Z", "name": "NUF72hSGKgBCkAJv", "resetDate": 79, "resetDay": 85, "resetMonth": 63, "resetTime": "tsm12elgTDbsUcc1", "seasonPeriod": 28, "start": "1984-08-21T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '4biBCiynlnsdjfzm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'vYM0nuCKhZ6VePri' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["X4P8dSCe3vPZu6dH", "xKYBQ6qfGP4YPuOy", "3C9dFlYAdStzEkEb"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'CsgbEEOIhOZ3Ahm1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'CqIhebFwvw2GVJVo' \
    --userIds 'QNOhhPEtoJu6F26t' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7523134868018881, "statCode": "hkEvqTNPgf2pTqfr", "userId": "dmNBY9BadHZjU08E"}, {"inc": 0.5956992633974794, "statCode": "DxArqr885ylQXjA7", "userId": "sChbij8fdQB4oakV"}, {"inc": 0.10772368632577145, "statCode": "FoF0nUnV8sRP6evb", "userId": "TgN1GBA3amyh5E8s"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8138494322361416, "statCode": "b26b2UaypWZTM8xb", "userId": "wfNvOf57QrFjNGs2"}, {"inc": 0.603234322177341, "statCode": "jVKCh5Z5q3cIl3j8", "userId": "aKxBrzlNXLEkBr1j"}, {"inc": 0.6274614744582142, "statCode": "DJbWyEY9w8ODo4AW", "userId": "jX8QFQgInCZJpqSC"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'LtYfXVp1ILY7p3Yh' \
    --userIds '["ooAkMS40AyXwdu7d", "YEHRvUzAM6Y0LuCf", "cIhU14KjZaN1th9w"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Cr3AM6yUzbuj7Gm5", "userId": "oqNHormmUWJyXwiF"}, {"statCode": "seRj92LTuKRvauKP", "userId": "UkaHorYzQXnZstyF"}, {"statCode": "34g2VjSC9ZpbWxvV", "userId": "6Y94DbhDEBlx8r6k"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'oLDBYYpFdWq7Msa3' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '54' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["JPR90monuBGb1Yhe", "W29CIhiZB77W4a4U", "6ESKx1HlTSiJn08M"], "cycleOverrides": [{"cycleId": "CulSgovrk1MBzcfB", "maximum": 0.26001357091405375, "minimum": 0.8825165875904766}, {"cycleId": "QacUteoH8bIEOuyv", "maximum": 0.6799758568705607, "minimum": 0.2811373032287483}, {"cycleId": "UP86dACHuk1BEr1k", "maximum": 0.8820143114054299, "minimum": 0.667475796681039}], "defaultValue": 0.2645684170442606, "description": "phsOXm0GxDWPZ9hJ", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.4291942158264347, "minimum": 0.5292658321554047, "name": "DBXLyNEXof21nfv9", "setAsGlobal": true, "setBy": "SERVER", "statCode": "fiKppz40VayLzLSj", "tags": ["5Ljbvu8wP4CP7loG", "G4TecL0sWYAMVo28", "kfe5a6YrF00IsksX"], "visibility": "SERVERONLY"}' \
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
    --limit '72' \
    --offset '98' \
    --keyword 'ALkoitA5PYYOi56n' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ULk8EAPydITwUhuH' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Fo2KuHNZz0QfoAHe' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '0LCh45mmOUXvhlHQ' \
    --body '{"capCycleOverride": false, "cycleIds": ["tLhjUYjz4NRfGSiU", "fMUdrxT9GikehOqW", "j8gNxTNk1qh1KPPW"], "cycleOverrides": [{"cycleId": "vvmIHvZLmIQV3q66", "maximum": 0.8689117009438504, "minimum": 0.9959433546304384}, {"cycleId": "HhI5JymyUZHdO7E8", "maximum": 0.9361880184664128, "minimum": 0.2219068639070476}, {"cycleId": "7GiDoyvPr419VUMl", "maximum": 0.3758315039162964, "minimum": 0.713680130115555}], "defaultValue": 0.7700344833144273, "description": "DzEDjU8ZfDPyeEQI", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "GgCSiqEBKAqwpVVN", "tags": ["YRska7q6OD6jBz2Z", "YKm8C4bLpPpm5Fj0", "LhiSJQIOZW9p9KLF"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'rk0KT4yvX0tCwN5P' \
    --limit '72' \
    --offset '71' \
    --sortBy 'oLPYOQbRf15j05dY' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kE6qfptcHEl18Gk1' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'qhK7kynVXFnq0RKr' \
    --namespace $AB_NAMESPACE \
    --userId 'AC09IQWVOoujaMWN' \
    --isPublic 'true' \
    --limit '70' \
    --offset '62' \
    --sortBy 'srpNKioHEbtirN2i' \
    --statCodes 'LorJ76h5mgR6pWn2' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'l3dEdaB7pooSFLBS' \
    --isPublic 'true' \
    --limit '85' \
    --offset '99' \
    --sortBy 'vqpek511zxuybgnQ' \
    --statCodes '6y85AqRZN7Tmmo3P' \
    --tags 'o6jffH5jDWWdVo9k' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'WAzA4ej9sgQc25DG' \
    --body '[{"statCode": "cSmULSfI2JlCBF59"}, {"statCode": "6vOL7PDGvXQFbFvX"}, {"statCode": "bXsHSdPp3L6GQ5eJ"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '83ySoyCK3NHTVatD' \
    --body '[{"inc": 0.34799921582448, "statCode": "l4LwPTUz9Q03d7ef"}, {"inc": 0.21020330774642493, "statCode": "NRcYXOOn8DN8fe8T"}, {"inc": 0.8500400539544848, "statCode": "wGKSOx9ZHJ4rJUXp"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '1qBG9PbOyDGKaHAi' \
    --body '[{"inc": 0.342226737112025, "statCode": "kqzRdLGaJbTGG7uC"}, {"inc": 0.8780345668952858, "statCode": "tpUeQfK2Yco5cMQB"}, {"inc": 0.8212136692018176, "statCode": "pnE7D7o55tip7YnV"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'hy7NA714ecbQkTLf' \
    --body '[{"statCode": "40w25QLa6xEC7yEV"}, {"statCode": "KNdUu1An5IOLKzTC"}, {"statCode": "303zlA1vK9jaxx3B"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '8YTltuyeRJS4Jh5W' \
    --userId '64DhKADfWu83HYT4' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'jPu4KnNQbodZZu9M' \
    --userId 'HFDZJHylCvII5d3v' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'yMKrfVRyHfPN0DRO' \
    --userId '7DikgXMbug4X8N41' \
    --body '{"inc": 0.3309277258859964}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '8hC8qbZ00JoiM2hA' \
    --userId 'PuV2Bmqb4k7rVd1g' \
    --additionalKey 'eNIPt4mbLKfNV4Ep' \
    --body '{"additionalData": {"7X2CHs4KtNEeCYqV": {}, "ERERJ84grKELmiwj": {}, "BWtUwlmRruOS6f1D": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '13' \
    --statCodes 'EixHGFjUg4RY0nlx' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '2qNNMmyx5H811rMq' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '21' \
    --name 'OkeUCZafXWiLVGx2' \
    --offset '17' \
    --sortBy 'FDwdNO66cdPlar7V' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["TZJUCu88y2upvKv3", "U8UiRt88RQwMDEtz", "ZCoOY5iGtA9cncRP"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '2B04a4tgeaiMMuY6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'kYIR0mhr8U5n4dnN' \
    --userIds '9jDD7CQNo2TRavfL' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9477131587609464, "statCode": "l6koQQB1HXEn38PI", "userId": "esfdAXH6qRImrX3N"}, {"inc": 0.10320642168348837, "statCode": "UwubwaQHsSmIVyck", "userId": "dH3bNiMfNWUMzCNm"}, {"inc": 0.5775362018180945, "statCode": "lwKwGHts4brgpC6e", "userId": "EhooeezizCObVXiB"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9677154739775921, "statCode": "cD3gjCcFTgRysRGF", "userId": "TkFdLRMhdzqVuEpG"}, {"inc": 0.35625910455595566, "statCode": "R8Yy1lF8DMLgNr1B", "userId": "dqRIBK8uY286gZCS"}, {"inc": 0.16765253448805795, "statCode": "xpleLqrlhJpIToF0", "userId": "p2EiAdxUvVQy9DJo"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "4Fzz9Cyh3qi8tHyK", "userId": "uJtsgSpC1Ox1Hen3"}, {"statCode": "z423AatJ7gwdcuxH", "userId": "GHVwsIflvRa6PumZ"}, {"statCode": "62Qg6py0HBhKmnVh", "userId": "NLdoL4trDPfqLoQZ"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["a0gagsauX7xHvpbV", "TNKoJfPvLG06yhf8", "XX4wgz5YVTu6VqEH"], "cycleOverrides": [{"cycleId": "X5NmMWQWEiGPoQkr", "maximum": 0.6198374811916927, "minimum": 0.7043300448654826}, {"cycleId": "74TF6EI3vumztseu", "maximum": 0.1615751037520049, "minimum": 0.05772640007204488}, {"cycleId": "X10DdmtL8J6R2pPk", "maximum": 0.5588784109504054, "minimum": 0.9902474110251015}], "defaultValue": 0.2047869837961389, "description": "wb8C0lcTx1SVa6XN", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.5673011154885539, "minimum": 0.6016561391740183, "name": "jprrdRsDDPahcH2A", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "pX96fccjXndXsCnl", "tags": ["6YgLbjfrcAeact0O", "lxbcHZHY1PuCNa2L", "wbkgWyKiTAhHFEXs"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'UuUsNcCUSljVLXN4' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '42' \
    --sortBy 'j2qnwq0sYGHWjTAE' \
    --statCodes '["PKvDGjnmmvwZkORg", "sBBKQV60fyzHFeUn", "yH7wlb5El9SbvPA2"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '26' \
    --sortBy 'AIgC9Jh6xJI9gizj' \
    --statCodes '["NtMdGNu0cCXcAVEO", "yEcd7uPm30IYvN4y", "D956O7zgFQxhOHV3"]' \
    --tags '["1wYkIVdzziyAM6Cx", "gMtB37Z0l7CQp26H", "W7EUjoigalUCnisv"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '7caYpTO3jXEk9gYT' \
    --statCodes '["i4rNpo3ZbGMuOJaS", "fAZqT1faO1MOzI5S", "Tih8yT6tPaX4ZoNP"]' \
    --tags '["QWewh89QSe2dIqPy", "DItK6gIv3QufbJKP", "xSWfsULRw5EjGJmN"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'G5iqWbbAcphhNsii' \
    --namespace $AB_NAMESPACE \
    --userId 'asg7nLlTKsNp534x' \
    --limit '49' \
    --offset '30' \
    --sortBy 'SfBlm5dXC8M4vh3F' \
    --statCodes '2sDhFL9yEJvjGDq7' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'JprTMzhXAgqXTM3D' \
    --limit '39' \
    --offset '53' \
    --sortBy 'TQdukusDrEsZzYtu' \
    --statCodes '2BZfxYUKPCnvfFrU' \
    --tags 'HVahaP1rBWtNbZW7' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'mIkQu350RXYvJRIZ' \
    --body '[{"statCode": "BwQsQC14iMatXATs"}, {"statCode": "qVeiRV25b0Z14A5F"}, {"statCode": "cbN0WRmTkiHlX2Ij"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'p1VhCdmzSDBZI4uf' \
    --additionalKey 't450rIHJym8BuKdV' \
    --statCodes '["zh47fTOFODc8aOsP", "vJuD6oJoWOsjlr6m", "55efHilSUts9d6JF"]' \
    --tags '["5cF4AJpXULIIoCwI", "BX2HM6CzuXBt2gYX", "6deEQD8X90ZPquRM"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Puml6F5hksrvnZMI' \
    --body '[{"inc": 0.8398462987049916, "statCode": "dj5tc7Xp4jzVX0ow"}, {"inc": 0.9020204897405276, "statCode": "l7X486rl0dBt8wp5"}, {"inc": 0.6396061321540149, "statCode": "UONcle2ekuDGL9JS"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'Rqle62uBdDqMJ4xZ' \
    --body '[{"inc": 0.9130499368168776, "statCode": "pDYrTbq5hwwHzLXB"}, {"inc": 0.3648206284825505, "statCode": "NcE6SG0pIkiE9OfW"}, {"inc": 0.9833562646264077, "statCode": "Cs3REcRzRxioJuBQ"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '47digdE2BTAru8DY' \
    --body '[{"statCode": "Bz7DzjO6ZxagMc7p"}, {"statCode": "K4S3zCemLx9CAKmr"}, {"statCode": "G0a4Okat1Em3tmUj"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'nTAj6e2XpBURsI2b' \
    --userId 'HWcWkgJr50LS27Jy' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'mwI8oCJQJUMmbq5B' \
    --userId 'XDzvm28CVLwMBZO7' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'VB9be43wiDgMPspV' \
    --userId 'vTlcJvNv87Gx7HrV' \
    --body '{"inc": 0.41348472731101815}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'p91ukmBCrE14yQRw' \
    --userId 'taWyQpGx0sS0KL8m' \
    --body '{"inc": 0.23856626461382446}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Mq4EcSAiCJ96bswn' \
    --userId 'DsZuJ27EygC4zKlA' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"YWgWpIvAlaQpwdnS": {}, "SzPFPZXO8B1PuCZ3": {}, "KcCL7B0MHSWNGhOm": {}}, "additionalKey": "JGk0VD9iXWlZ9EeQ", "statCode": "Fty9HK1zH7QComtN", "updateStrategy": "MIN", "userId": "iUp9lk0fvAYh9Yq8", "value": 0.22813505925630795}, {"additionalData": {"GwBjzC4j5NplC87B": {}, "iewZOqqbJ9IgGmyv": {}, "YVHNpCPFW6eOftW9": {}}, "additionalKey": "MHuqWq2voV2cDEHF", "statCode": "d91PLMZVx5qmEZqI", "updateStrategy": "OVERRIDE", "userId": "YNfW4jl9UXUlElGq", "value": 0.20618590600719922}, {"additionalData": {"rucqaOVkhVF15Zdk": {}, "rSY2gxHyEWWcd2yh": {}, "UR1YzkfBXdd8mKi2": {}}, "additionalKey": "mFR1z0tpchQ5b8fM", "statCode": "bUiHP9MYS4HiN9bF", "updateStrategy": "OVERRIDE", "userId": "ugtpXraMsXZdX08O", "value": 0.01737407563043769}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'nT4TwkCXns0q95F5' \
    --statCode 'KVNd30N01riYhpbF' \
    --userIds '["forj46yajOaSONzV", "doepL8zvHsu3JAn0", "mGtqOIo8ORV38tC3"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'jgZUXnwWN5atiM1y' \
    --additionalKey 'zPSbZab5rql2sDl9' \
    --statCodes '["yqxls7Q8HYxeYR3u", "KlsvzdzrXxpr9UaV", "B0CQLXu2ZGQBd0xJ"]' \
    --tags '["aa0WTjpQ5QW6hEZn", "vwLzPULosHNz8etx", "oIGMpY0CR9b3Js7J"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '3x7WtbDg1CicH1jv' \
    --additionalKey '1FNhwAXu8MBdU3IN' \
    --body '[{"additionalData": {"IrPqJ1SZR3xcHekT": {}, "p8m5L21KXtR3lPYB": {}, "OdODP7lrF5tOFj9Q": {}}, "statCode": "HteZtRATek3HxjjE", "updateStrategy": "OVERRIDE", "value": 0.6031346068262731}, {"additionalData": {"6dzenLavfayjBsc9": {}, "RAI5XQsXivnhJMb6": {}, "C1jDtlNU1QYCM9AB": {}}, "statCode": "3kZIuLnDqdFMlLBX", "updateStrategy": "OVERRIDE", "value": 0.35149608762243634}, {"additionalData": {"GuZAOXalGYiJVnrA": {}, "AFtueHG9aN2ceWoC": {}, "OXJRIrAdFMtUD17H": {}}, "statCode": "mzRMQFKneDVjM3eT", "updateStrategy": "MAX", "value": 0.410173462189937}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId '8GQ8KCvSsVPg4zFh' \
    --additionalKey 'D6kzlQvF0ZAxhsjk' \
    --body '{"statCodes": ["js5TtvJVFtr0J89Q", "zsds1612ClX7nHaH", "sWn4a4qp9CtsdbdH"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '4XWN87JAb2zTdOy1' \
    --additionalKey 'if8neENui1rDNH92' \
    --body '[{"additionalData": {"t52Pjmo1qaprN4zr": {}, "AkHEX4wcmBqsnz1w": {}, "uLLnKnpQMmeImb9e": {}}, "statCode": "DKk6c42BEFy1KUnb"}, {"additionalData": {"AM5S43OepS87iA7h": {}, "e70f9RqJjdHXk6Bs": {}, "VVeJkbBWlxSIlqud": {}}, "statCode": "tOjkgn3fm0Mm7iVL"}, {"additionalData": {"aVPkHP8ZxRxavKwK": {}, "plDN9hsYNXfJQ9Uk": {}, "55CN49IPPobMi0XW": {}}, "statCode": "llDweBatuwkwse4i"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'l06eciOIdFNLhLPT' \
    --userId 'ufCWKMTPyMbPlk1P' \
    --additionalKey 'y2Kaos3VqSL2VbHW' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'heTsf4OsY3CdUSCP' \
    --userId 'buOHpwjfHsSA09Bs' \
    --additionalKey 'qm6WcSJVi14hbRDa' \
    --body '{"additionalData": {"50obaAZOiWjORbRU": {}, "lewfmD6vzO9vpjDZ": {}, "oMQWQTsWR0xKe66n": {}}, "updateStrategy": "MAX", "value": 0.0832496860714087}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"g4FlFMHCZxwAEFzx": {}, "gausHzKwZEwoh1KS": {}, "QweHRMyoTJImtRn7": {}}, "additionalKey": "p3QfHZQFtv5AWBPy", "statCode": "alSe5q88BKtX9vBG", "updateStrategy": "OVERRIDE", "userId": "QHvGFTVgk4GVEP4Z", "value": 0.4242824210683057}, {"additionalData": {"iFIAdFhuNOcRCzKo": {}, "ymyh1fnVRzAXUtjP": {}, "DRYH1oGUPT6Znwmv": {}}, "additionalKey": "a8UvgQkkp2tIpmoI", "statCode": "LdzT99MvsA7XzbDh", "updateStrategy": "INCREMENT", "userId": "NGiTACfUb41cYrtr", "value": 0.062038766454519556}, {"additionalData": {"tH6gmMSphb0Wvgij": {}, "Op9Fmij284UBtnKu": {}, "W95Tfk7QW6G3fB9F": {}}, "additionalKey": "E1LlwIz1Qc0UUtHL", "statCode": "lVsuKS6TygEJkg5e", "updateStrategy": "MIN", "userId": "YKycjQQbjAk8jk0C", "value": 0.2658985961089956}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'oevieNUkb8uKteNN' \
    --additionalKey 'dqiIRqhoDhrOhUL1' \
    --statCodes '["Bv2mT2r8NvAMakYb", "8l0cDyQZ6i2PxihM", "32COqmZuV1L5dm1K"]' \
    --tags '["ncEhe6jpi6S5xJLG", "FgW1Aj4OMX2qTJma", "MZgcliqHkLrRktoH"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'efbnnHN46445g4On' \
    --additionalKey 'XWviKAKUV5Jnq9Hy' \
    --body '[{"additionalData": {"d7fEQtLDoZ9qdhby": {}, "87gIC8r0VlZzOESJ": {}, "fvfEnZr2evngi9F6": {}}, "statCode": "6WiZMKcAm60ML9GP", "updateStrategy": "MIN", "value": 0.40036587072684127}, {"additionalData": {"WAluICpMqpJvnIjO": {}, "3IhuFlFZ9NsszrCi": {}, "399IDiw5zFauyEat": {}}, "statCode": "AdgSSQF7u7Fu1Dhk", "updateStrategy": "OVERRIDE", "value": 0.07954703796041696}, {"additionalData": {"sCmRuRdQpawmYdSl": {}, "nk87jL3wqpNCYMKa": {}, "deYK6pXHbIk6TPcS": {}}, "statCode": "kgzEQ0GfusC6MI8X", "updateStrategy": "MAX", "value": 0.01309291203096652}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'RZqyVqx5DPyFXUwE' \
    --userId 'Tv8UyXabV3WrWuOQ' \
    --additionalKey 'ogAypXNulZEXBXPY' \
    --body '{"additionalData": {"MKzfeYjaHlzLNDa8": {}, "Pb3bIqls7dSWWEeR": {}, "573pCSyi4zJHR6uP": {}}, "updateStrategy": "INCREMENT", "value": 0.20529758652123453}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE