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
    --userId 'yuXtQDGEtRiRKOYk' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'EAHNa2bM63i5JLVK' \
    --userId 'KdgeFLx9ps45lrOm' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["JOgfXKBaQvtYhKXK", "UWwsr9cR4tPjsDY1", "Kp5RuJHBVSpfd9EO"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'JODgWAtEvDxSTrMh' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId '731u9QRK5IuQHSvH' \
    --body '{"achievements": ["txlFNIjQwWgyPUAp", "IZnvPrUYOmqUCAmo", "YoKJgxiqjB95ZM1Y"], "attributes": {"mUSDEN7zh9vIookl": "yRp2qLRyYqg7b4uM", "o5FXxj4ERG5bcGta": "8mH4ffasOmX9mhVr", "PHKcz0YNkks3QVxH": "CLMi21ftPLGtPVZ4"}, "avatarUrl": "QSDp6N2nq0esd3CD", "inventories": ["SPFjNtxAKixjS0Km", "19ir3KWkzISwnK7n", "AidGaeYr4rSkCCKW"], "label": "Nj3iiTWEvspVvyBx", "profileName": "PtXUXQUlO8F5mZVq", "statistics": ["uncD9YjOy2ka58a4", "fM1TEVnrDuubQPkx", "RE6qidbR3J2vcQKK"], "tags": ["Obe0oAMbqDvsyndJ", "XC0bE5N1H9xbanmE", "5tZFgw42IRKoad5B"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '1mviJ9KaFDvc0Afr' \
    --userId 'zErvkmR2VHBfAwhT' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '8aATlpZUFwKNsanD' \
    --userId '3FXQsrKFstxJ6hNl' \
    --body '{"achievements": ["rcHO6nZquD1MNz4K", "w8S3Lb3dlf5OXeGh", "uhhIOc8AlGKvxxgR"], "attributes": {"BK4jEmh59GoA8gSz": "4eaX2fRaUR3RZyQy", "9763xrse1nnpDhiJ": "TJ5y65IoyJbinwZT", "hWWDFGfsmWg6TtvA": "rxM1Z7F0QF5Lwejv"}, "avatarUrl": "JvXrLQtlTRMSFkRT", "inventories": ["h4JQxyTOUerAJDnq", "BubYuYF0jnuJGpbS", "98HynH3vmWNXCi1V"], "label": "rmxCTrSQ94omwdbR", "profileName": "7tr65pSoRhQqzoe7", "statistics": ["7VU5EK1T0bNUfUA2", "FDkqXs1qKBqWqb7v", "k9yx1HFrUieiSHDk"], "tags": ["rrGby5ZGlL73gaZP", "RmJo0iTUULuT56DT", "zUniBYYY3eXiQmeB"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'q9kNGN4s1VZMei51' \
    --userId 'uYfQYMo77laKzjUY' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'BSmbk6obN2eNJEZG' \
    --namespace $AB_NAMESPACE \
    --profileId '7WhVcEw7vPdQCtEp' \
    --userId 'kKAWjIBqp52fQk73' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'ZJvlnNskYz0YhVZ2' \
    --namespace $AB_NAMESPACE \
    --profileId 'RKL7R7LJ2d2qX55u' \
    --userId 'znZzhvyexa5oN60x' \
    --body '{"name": "seIFKpadwbQrJ7YT", "value": "U0ODAcfr0LxaPoZk"}' \
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
    --limit '35' \
    --offset '64' \
    --statCodes '6ZTyE9DfzDQVtx5t' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'ThFBEZYHttIcqezF' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '45' \
    --name 'Voezx4Cmceau65jP' \
    --offset '99' \
    --sortBy 'jnJIXiXJhTzavmW0' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "gX9O3iBKqM6Q9e5E", "end": "1989-12-21T00:00:00Z", "name": "ERHUli3EY7WuGSPM", "resetDate": 13, "resetDay": 37, "resetMonth": 63, "resetTime": "B8yoa8RpTXsxzxHS", "seasonPeriod": 4, "start": "1990-12-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["piaR1kWpMsZgYwd6", "tNWcQwlAS0tj8s71", "REyc9NY5fkNXAcYS"]}' \
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
    --cycleId 'dmaK5SiU5M5pIQTt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'S0LydTvrT12U7AcX' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "H1E64Irl0AkOGzwF", "end": "1975-10-05T00:00:00Z", "name": "7NUQFV5zMpw8v4JX", "resetDate": 0, "resetDay": 9, "resetMonth": 40, "resetTime": "PGSAWGU8KAs1gFnU", "seasonPeriod": 18, "start": "1984-05-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '5FJQXOnI3bHkoMTv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'rI1jxwd4C8mlAkMV' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["uoBSujCWSvocUsab", "3G5WsoIoDvm9muu0", "WBav6qupyIky1sbB"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'tGoeHKAJXnmuGDxc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Eu62mhA5YKa7eSFV' \
    --userIds '0NU0XQFnKXMRA1j8' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.03401319744055198, "statCode": "YOAxUdX8o3TYkfWG", "userId": "QZ57ZPuayifbnNej"}, {"inc": 0.32786536744211103, "statCode": "MN15X6OuquQsNVzf", "userId": "BqJaLdMy9iK2oakz"}, {"inc": 0.9464037271025264, "statCode": "CNT8LOQndhXdPFCG", "userId": "2WMMl1XYO18w5Uus"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7705474075758323, "statCode": "LXM5IL3xJw79tOE2", "userId": "9HDfFthbzjffYhqi"}, {"inc": 0.46382498920426163, "statCode": "VZawk8J9hjeN2jfR", "userId": "w1KKQa6zdbd7Ua4B"}, {"inc": 0.4633587923217315, "statCode": "xgCBnAVX4m29TXD0", "userId": "B0IWpTeXoKfw2iOE"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'EpU56sXn6Z03Djsr' \
    --userIds '["nplyAZdN50I8nKoQ", "Nh14zLEO4VAKSAsW", "BkkBcIX8olSC2x5r"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "pVVLaWEhqiEY4lvq", "userId": "b4FEbXbtTmh9Xrpf"}, {"statCode": "p0hXR9gUdKisN1Zf", "userId": "9GJmhBtWj4tLejjC"}, {"statCode": "Q32T9agf7jMhWKea", "userId": "yUWv5zqegcv2NKPx"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'IpkWhf75sDWfq5Xj' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '77' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["VlrzZhVWwGK0VOOh", "iHfkbO4htPpSVbEG", "Qa12X2SBqWC8jns2"], "defaultValue": 0.5571560727367223, "description": "8RhWXuliHdS3SvwU", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.007533540664198757, "minimum": 0.9514217350501841, "name": "15JM8I6Vk0DW7Fpz", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "8RG2mWgLvNa9SoL8", "tags": ["bnPRiHjKf2ynXo1V", "7oLNfu5SDUTOBGLV", "PNZcJa025tFewJlr"]}' \
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
    --limit '91' \
    --offset '68' \
    --keyword 'NBqPXmnrDMd27Eab' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'mKlMIlKhPF3AfLtN' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'cAQBKpe5ZWafZ8LF' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'JdI1c7vYpDmbUv8i' \
    --body '{"cycleIds": ["pNwPmCHkxB7ZkWWx", "i16h7UkBwSKC0IYI", "F5z3s33x5h6Ywcug"], "defaultValue": 0.6619291560310028, "description": "0Y4YglFyHwkA6BvH", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "M2zI3TW6KbYA6uQo", "tags": ["XVtOY9bmman5qJFc", "4GAmciUIQ0MPRFcg", "8DWwsH0c9gw2hCL8"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'WVhzUPQxh0FHnAI1' \
    --limit '56' \
    --offset '95' \
    --sortBy 'uUVZM33qq1Eb0jDS' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Kxm50uLRF44YjtG6' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '87PGZXkxJPCYOnkm' \
    --namespace $AB_NAMESPACE \
    --userId 'PFPWYGP36TqDs77o' \
    --isPublic 'true' \
    --limit '50' \
    --offset '49' \
    --sortBy 'Lr1i6jjaxlghQ8eN' \
    --statCodes 'DmmiApxCC7srsSgk' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'TxmOQLqK3MIMMFtH' \
    --isPublic 'true' \
    --limit '20' \
    --offset '20' \
    --sortBy 'HhFVYyktWqUw3mcu' \
    --statCodes 'CNOSPXkin3j5nAe1' \
    --tags 'vOnfA0C6BucXfYv9' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'yT8JLkyqYLtAAPfL' \
    --body '[{"statCode": "soHvWVWQw0tdYFPJ"}, {"statCode": "Ue2759ZUU6bWrSmz"}, {"statCode": "KyI03qEr28NMIaeT"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'X1GpphGNzIntHr6m' \
    --body '[{"inc": 0.8916089908832809, "statCode": "e5aIZWPYGFaCZR1H"}, {"inc": 0.9240018910644789, "statCode": "P4iwkYSYOeQnb0Ik"}, {"inc": 0.5153723487488053, "statCode": "Jc0LLPh3QzmApcyX"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'ogzI7AjYb3dIQ3UO' \
    --body '[{"inc": 0.24445836401063503, "statCode": "NguUVjH8aCYKcbMI"}, {"inc": 0.3342676968924043, "statCode": "7wiojgvPyA4EJ5JN"}, {"inc": 0.014574372339697161, "statCode": "zJVLAYYOcnKyI1Pr"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'TUZJ5XtoE8cuxuHX' \
    --body '[{"statCode": "yY5kuIs4lIvzhfrg"}, {"statCode": "B1dqXFtttYYIOfmB"}, {"statCode": "JO83Mw5mCIAbXxAk"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'PAWOszAZ9QqgdM33' \
    --userId 'eJxFmu60Yw4wDPCJ' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'mGPKvcMBUMvMc0mf' \
    --userId 'tBdjrtZfqIBs8uAR' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'NCUQWtaWpl76ur32' \
    --userId 'FoqDdK5Pi3FJTcTw' \
    --body '{"inc": 0.4607247274648876}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '0gnMiT213e2VD1Mr' \
    --userId 'dJhmgLSgnYqBZ2Hx' \
    --additionalKey 'sSFwYfUhbV9xzBOI' \
    --body '{"additionalData": {"wGzD6SCu84uuSwYC": {}, "OdQzDilOmhPdqQ3Z": {}, "90Xtg5BmO3URDtMq": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '1' \
    --statCodes 'EPnNeUneSYHlWXHv' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'CfR9WdHIT5PD7Z2L' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '32' \
    --name 'EjBDRsshxkEWAN6b' \
    --offset '19' \
    --sortBy 'QP8DszIPc8uXU11E' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["8JlqOZeh1rClnD67", "p3dD8mVAVGlGCcMs", "KhyTTZ7v2TtPae7Q"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'bVAVlgNolrsP4XxH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '6BLy2bW10kR7vbMi' \
    --userIds 'ofCybN3hJyHN4Ax4' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.32793396477438586, "statCode": "yghwQvVu7lwI0AFg", "userId": "Ncc6LWs9KuGc5UUN"}, {"inc": 0.07788683687818176, "statCode": "gkPbG3CzUL0aIesj", "userId": "QrmTxiR8llxHf3Nz"}, {"inc": 0.7193680674652388, "statCode": "DuPZZDKPit6kYUAs", "userId": "iTOaHxzqnNoa2Vxk"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5063525867204239, "statCode": "OmfDhDV7Zrgfh1Wj", "userId": "RKflcD57TU8gAQMj"}, {"inc": 0.15771275758748737, "statCode": "xzbMLintZaUGMCua", "userId": "yTPSOKlpjCPm4rOr"}, {"inc": 0.6247297432694009, "statCode": "Ghs12fpnGTsNSkXf", "userId": "896st2AmSO9hnSRf"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "1akjRhlimiuGob0B", "userId": "X3701HZo8ZBercwJ"}, {"statCode": "slQb2Iab61W9crEc", "userId": "fYtMrpRPUEde5EJe"}, {"statCode": "zREmbYADar0Ir0li", "userId": "vJegf71VYqllvM0P"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["sElbW8SHpyv6R4Of", "B1t6TjKIZFYsWa3s", "75z3hp1tKjMrLqzq"], "defaultValue": 0.2978097220855108, "description": "Yap3U3vpT9HkkXim", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.6182789041453817, "minimum": 0.26200916182634837, "name": "HsHJQOWzdUcI5Edn", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "vs5tCG3YxflGpxi9", "tags": ["Vb2EZd2Yvl4NZulz", "iWn5QxJcwp6FBYvT", "oWZ28pPU6wgWnEsS"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'DLfF9WqjLEujHA5U' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '70' \
    --sortBy 'HAmxLz2RuwJFLWY4' \
    --statCodes '["sxEoEenbtEOwMGZ7", "3OArIhuxUbtsVWGy", "zo0L1rhxWG463qfW"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '15' \
    --sortBy 'PDCB8GfJ03Z4dwqc' \
    --statCodes '["oHPx8jh1XDerYMCi", "EKPqi3VX96OMjuO8", "RZ84d6C5zuuUqZ8i"]' \
    --tags '["xcMDfSjDx1nyft3c", "jreVv34zBX7QHLAJ", "wbTbv5Rmlfafw5Bp"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'Wy91rxMKHsOESXal' \
    --statCodes '["w25zJI1IdsZvSGP2", "nFNptTv4vNdq4Ajm", "AujLw2O6fNtmC8Dg"]' \
    --tags '["hjutvHCheHKs1GPE", "fdRZzkyCWKagIFSl", "fBKo0lkw43tnYyGE"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId '2kDqaYFoszmECr1E' \
    --namespace $AB_NAMESPACE \
    --userId '0mWCLqdWqyGseCYO' \
    --limit '0' \
    --offset '77' \
    --sortBy 'ENqLjrlzTBfxdIfu' \
    --statCodes '9SsAENz0bXmERGUo' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'h9eqzOPmCwRU800c' \
    --limit '32' \
    --offset '37' \
    --sortBy 'xsjAnDzMu3MOPdK1' \
    --statCodes '5S3FJ0heOgpA3ltG' \
    --tags 'BgBl7OpPPVFZQgSI' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'x3XdjbnNOQifvNjW' \
    --body '[{"statCode": "ww3io9wnNAGR4Gta"}, {"statCode": "dV8z3slSaljEpOjO"}, {"statCode": "Pq0fIvoAF49XV9jO"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'JRaAC4Ai8puN098R' \
    --additionalKey 'WHeNixItE46dAFsm' \
    --statCodes '["9MCVpTrSlJNQFAgO", "Q7ezN1us0T803WS5", "Np7qmxaWF0sKVF0n"]' \
    --tags '["cQih9Cid9wOq47Xz", "pm6JCr78cXjHM3zf", "2DQCB7AS3lQCDh9e"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ubTUszYG28i32oFD' \
    --body '[{"inc": 0.8171661619570928, "statCode": "qNuqcxLy61TpTELN"}, {"inc": 0.9388477245350645, "statCode": "qRyNLW8ebfCvwqJQ"}, {"inc": 0.5177214858291626, "statCode": "7fBmm9EQFeSGQQ0f"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '53gs1tEkho1YnrbY' \
    --body '[{"inc": 0.3093955195991188, "statCode": "VwubOue3pi20iHjL"}, {"inc": 0.7946293880799905, "statCode": "cmlrrBMxTyAE0hzQ"}, {"inc": 0.6160860911166296, "statCode": "AVGSXCPWJqcGgTvs"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'CN8VO1G3P9nttr0u' \
    --body '[{"statCode": "J4ILRgAy3SA7GDhm"}, {"statCode": "hglZ5Le0PvDDCo1q"}, {"statCode": "OsaYRpA0IJaQ7TM1"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '0zhEcDnGc6SFZ9t8' \
    --userId 'URGOitiPfDecnH7h' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'YFxYg1qRkbY3AjBF' \
    --userId 'TGZMM0AbLn2X8YvV' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '0qIujzGUHSBxX9cc' \
    --userId 'EtL6byKeTdSNPtz9' \
    --body '{"inc": 0.7256233978129507}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '7io53ZiphW8FLpFr' \
    --userId 'WzBPd0JvtuXIlQQx' \
    --body '{"inc": 0.995148797715381}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '4nmRqSpWyW4CgXWK' \
    --userId 'Unn5RVKNxzRbJmHj' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"HK2qnqHG49Gqyu3M": {}, "k1x1kBemaELiVVHY": {}, "2io2fYMW9CEANWW6": {}}, "additionalKey": "zVeQERdR7WcfEBSc", "statCode": "AdmUPK987v5E3CoV", "updateStrategy": "INCREMENT", "userId": "nyvVBOLg8XuuR1VY", "value": 0.6227853759953768}, {"additionalData": {"XYjXVLt83gJ4IM8L": {}, "qtIaAQWPCdctYb9T": {}, "KtEhNJH2BHEsSwjX": {}}, "additionalKey": "UJ1WyOGmlKOCFiMO", "statCode": "vtB7sM0XycB9yLfU", "updateStrategy": "INCREMENT", "userId": "rGKDpbOZJqwRXl8c", "value": 0.32183912710217844}, {"additionalData": {"rd9UkSlDk1QXrzdz": {}, "oIau5xRWyjIHYFzm": {}, "PuKWechPPbgAbvlJ": {}}, "additionalKey": "HOfSEqwqcYJjiUpj", "statCode": "EeJQgElXs6jJgw8B", "updateStrategy": "OVERRIDE", "userId": "6RebyppR7K0zxMKp", "value": 0.16919265281969886}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'MftDzqLZIEXes1ZL' \
    --statCode 'x8Fu1rIm9uS1jpUs' \
    --userIds '["vioNTXetotLCDFHJ", "aQI6Sd5bTtBO0o15", "SxI7wOEEzclrrRlY"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'sPCHnJrCNhtsP6FP' \
    --additionalKey 'kvIi8akylsXQoqTU' \
    --statCodes '["hnslJIr2pH3MNDRI", "9Xwkt7faTXBFCBQP", "Zd3vprhKpYe8ywfu"]' \
    --tags '["kY70wReJZqyYmPif", "oaxDWdeyqw5W8lEA", "unG9625KAqAUfJse"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'Xy2xdl4sykX4rhNM' \
    --additionalKey '4n2DfkUs0O2iZIN2' \
    --body '[{"additionalData": {"RT4uBUKSREIsyTmO": {}, "WsKpvhdQPIeUoBz6": {}, "2N195ZRzdmjr85Y2": {}}, "statCode": "oRyqUrqbmYGGoF6f", "updateStrategy": "INCREMENT", "value": 0.39920491186493245}, {"additionalData": {"cW6vQESE1e2nVfKD": {}, "QaFjlYNckuj0C6eW": {}, "HEtkXKJmufd8aZqo": {}}, "statCode": "mTYpbsZj1ga9pQFZ", "updateStrategy": "OVERRIDE", "value": 0.1350288931600243}, {"additionalData": {"OEU4cnG50RXCLuhv": {}, "SkCY6Kc0F3pbSiIE": {}, "isKbF81wfKikqxSZ": {}}, "statCode": "870OeM7RAgoNdmeC", "updateStrategy": "MIN", "value": 0.3954830836017249}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'x2yf4hFs77lkJCXB' \
    --additionalKey '9WKoSJdrerDH5j0v' \
    --body '[{"additionalData": {"zeJ99SPWgV0JpYLL": {}, "UzKeta1rUlPcHBbN": {}, "75l1VaryoITynG1K": {}}, "statCode": "EKbOAT6VLlEkXsBu"}, {"additionalData": {"z08QrFQ2216zzVhp": {}, "vX6tP7UoRr0U6epx": {}, "608vDcJJnfzArg6p": {}}, "statCode": "0ec1Ez22UvrGFIIM"}, {"additionalData": {"9jRbM2BHfsnJJ7A8": {}, "a5ukBRC14e1eH8xw": {}, "kDGOYCsuFnEBmW7h": {}}, "statCode": "xIdF63F9qgSSGZ8e"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'YFIHhbh1dRXmfqXk' \
    --userId 'VSsKteDZ5tuF6l7F' \
    --additionalKey 'oBua89pP4RAMghFe' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'El6HdaV59d7KJjyG' \
    --userId '1k9uEGH5oUU8YMaK' \
    --additionalKey 'JbGSHBE3vfW73YI1' \
    --body '{"additionalData": {"X4ueBwwYzfM0p6gk": {}, "Tiq46s41mJg0oMo1": {}, "lT0PDAhmfUFZ2YtM": {}}, "updateStrategy": "OVERRIDE", "value": 0.29131145933536917}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"HrxEGJIjjnNkDa2P": {}, "byotl4mb2Fjqrs8r": {}, "b7MOfrvyqL5hD8AM": {}}, "additionalKey": "svYayvqLuQci2EhD", "statCode": "wjUXqs3xTrQVWg7t", "updateStrategy": "MIN", "userId": "lfg66D1GRZGnmtdr", "value": 0.7356899113140225}, {"additionalData": {"7OZv7JBK7sGx5JTm": {}, "Qwd2eFsaZMTkxSFm": {}, "ln24vfKfOuim1lkh": {}}, "additionalKey": "jlq4vemrMTUAUVgz", "statCode": "n30MprHBEDxeBsS6", "updateStrategy": "OVERRIDE", "userId": "2evVYdpe5NLeLK4S", "value": 0.4996414883653234}, {"additionalData": {"OxRfiMlMWuksBue3": {}, "9n8UEeKDORmOI65L": {}, "iR29kxPTbWZPFXRt": {}}, "additionalKey": "JctpCZaIdTgOkH2u", "statCode": "vfMVFolokcizteVM", "updateStrategy": "INCREMENT", "userId": "AESaYBXSlZniDzIa", "value": 0.8464692864979875}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'aMrcY1qo00GS7XB8' \
    --additionalKey 'dVTFWTCgI9nOtkRY' \
    --statCodes '["IFDN34FxGR5jNLhN", "S1jMIDX1fWAL98aI", "dIm7IR92sSRKg8aW"]' \
    --tags '["CIDQFGKy8iWsi9Av", "fIL5bH2aamWyjvyb", "DMduNsyySxrpdDcm"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '5Z5lXnmZzXs5gLZ8' \
    --additionalKey 'S66MKNwFe9RqWmqj' \
    --body '[{"additionalData": {"GB6htjVRPID0aiwn": {}, "MkdyTPPsnTVRzc76": {}, "TY5auMYCskC6B1Lx": {}}, "statCode": "3gyQ8bDKcYObyGr4", "updateStrategy": "MAX", "value": 0.7032309837298908}, {"additionalData": {"TAkva33ebxwS5cB2": {}, "8uRKT45VbE2LV8WK": {}, "sDxTYd9EZxR22a5O": {}}, "statCode": "9CU0XFvjGkyqUPWe", "updateStrategy": "MAX", "value": 0.9309336666493104}, {"additionalData": {"26zbn4MWlArYHcfG": {}, "pDtXuRIeS0ljbqsM": {}, "XKyZyQmbiAsYkAR3": {}}, "statCode": "FrfraaxA6kBBFIwl", "updateStrategy": "INCREMENT", "value": 0.6344221427319243}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'WUHJDrXVHPCzesPS' \
    --userId 'Tbf3fUugwvUw5Njy' \
    --additionalKey 'P1mk8O3BAjrSb98D' \
    --body '{"additionalData": {"QURjk6FQBNlwSQOm": {}, "kYS8gXaR16KjJIUt": {}, "8dZ7JKnacog1CIpH": {}}, "updateStrategy": "OVERRIDE", "value": 0.49786069098602526}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE