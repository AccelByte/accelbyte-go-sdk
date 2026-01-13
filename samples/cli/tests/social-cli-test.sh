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
    --limit '80' \
    --offset '92' \
    --statCodes 'RuRJI2xHFbkx2M0R' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'TbYtBceIfS1CUEjg' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '22' \
    --name 'VbJZp9a6OaArEgQM' \
    --offset '9' \
    --sortBy 'FOww77CH2bOkuXJO' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "7FfZ9FR98eAjGWXv", "end": "1988-07-24T00:00:00Z", "id": "QpDmmGOKWPJR16nj", "name": "kRU9LVDGSU1r1dWl", "resetDate": 3, "resetDay": 58, "resetMonth": 69, "resetTime": "4vyGp3I87btUNVuL", "seasonPeriod": 80, "start": "1988-03-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["CHW4WiiusSOg2kOM", "ICOW9oKcdKXNEi5j", "0YxKqH7Beu7tncJf"]}' \
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
    --cycleId 'A9zk2x8cDMTHBZMP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '5YfgxbCBPme8COXM' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "MA3rjDXmLNsOyGBd", "end": "1997-12-17T00:00:00Z", "name": "UflZGLOxZeBzyE2u", "resetDate": 60, "resetDay": 13, "resetMonth": 54, "resetTime": "aDyCGl5jGFDGBpoY", "seasonPeriod": 76, "start": "1981-12-31T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'MyW4xlmp6wJpw3df' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'kOYhveYCWi6SeLKV' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["68whpG7LrmJcuYkz", "HfkTby5AkXBubomT", "ea6IaAN9TetGKLoD"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '3bBexKNew2YR6Zpq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'c7XH0YUuY7gBAATU' \
    --userIds '0ptaEcS7zJCQQPUT' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5121335579412124, "statCode": "mUWMUgCKXiMeeLcO", "userId": "nmSxr68tAWPhGN8r"}, {"inc": 0.4587267834667471, "statCode": "1mUJAlNYJf3gls8e", "userId": "uG7RmYzZiWX2k1Nw"}, {"inc": 0.8348956999597442, "statCode": "0JhGui3lvGlLrmvk", "userId": "pXJmclAAAZOoCtBh"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.23123247893295695, "statCode": "PHp789nNU20vD00q", "userId": "7anoZ2DxJC6t3AWU"}, {"inc": 0.3604097379622946, "statCode": "EMIIMu5PCyZW2Y2L", "userId": "6pZDqqf4Z3WHLCNF"}, {"inc": 0.2307321077209098, "statCode": "bVDemDUlION44dd1", "userId": "EobV1KKGePHF3wYf"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'hCEsPniE6Q6oBfBT' \
    --userIds '["upwsAmOdlJg2irKZ", "ktBiKEKgCaCqgVrp", "3b30BiNU1mexezBX"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "6FBDYgMf3w7TF5Da", "userId": "5hejwJf7vAGKw931"}, {"statCode": "wlZJyz23YJ4hJhss", "userId": "anP9z0NCt0nxjqbc"}, {"statCode": "QKnShLQX2dmOZmYD", "userId": "5lVGjNbdDfV33wW8"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '0wBj9MQcxb1QzmYz' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '9' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["YUvFCvqktHce5kyt", "mUzwzDC1sWNOUUGl", "yR582mBdZieJOQGM"], "cycleOverrides": [{"cycleId": "2YnbGmUNgn5bMnfM", "maximum": 0.42028163210860225, "minimum": 0.06850137067659567}, {"cycleId": "ZpkrdkwYfQO3qCb9", "maximum": 0.12627966048447548, "minimum": 0.865101604549557}, {"cycleId": "jkeswt7T9QjQlMT4", "maximum": 0.31787396547724434, "minimum": 0.6815511412478105}], "defaultValue": 0.1765481334745057, "description": "rbPNGLgCTM5ClgZ6", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.22060066819620028, "minimum": 0.9889583109821193, "name": "kOMqCRAXxsW38Vpu", "setAsGlobal": false, "setBy": "SERVER", "statCode": "kuODh4aoSG7K0rpc", "tags": ["mgwXHFLvlsX91uM3", "j3hKWnTyBllWawNL", "mPfaJIZuFLsly4fe"], "visibility": "SERVERONLY"}' \
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
    --limit '13' \
    --offset '66' \
    --keyword 'LNL5wPSx2b06rcnw' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'dN4RyA8zJ24X1iCg' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'xW2wVQDww9b5JRuy' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ZKT5nH5cpx65rH4j' \
    --body '{"capCycleOverride": false, "cycleIds": ["LZQaWK04fgWsjQg1", "S9mJgV1FSoVphlg9", "tZkR0zcnsEFbEamB"], "cycleOverrides": [{"cycleId": "sbwU9UVKQ731x7YV", "maximum": 0.9848140811236132, "minimum": 0.8851979329964942}, {"cycleId": "9tgRvD1LiBtThQlL", "maximum": 0.32754999739935864, "minimum": 0.047526780511028766}, {"cycleId": "smlurFwEYfoGOP5Y", "maximum": 0.1664495351911901, "minimum": 0.07321746804166152}], "defaultValue": 0.6844371888455588, "description": "QLoBmZSnzhpYFQjS", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.9212646296978372, "minimum": 0.09760861462797243, "name": "Y6RE3KGr4Gwf95yI", "setAsGlobal": true, "setBy": "SERVER", "tags": ["KbpHerRH8vNpnPmy", "sUOT8YOWEeQb5fWK", "tTKdgpeQF4TVIdFr"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'N68KW3PateaVVXk6' \
    --limit '41' \
    --offset '28' \
    --sortBy 'wT1nuP9TWeVmEahG' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'oRR4Cu2Ag5lCJMKB' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'eTjcxyZ94AgncMGt' \
    --namespace $AB_NAMESPACE \
    --userId 'Wnf96o0T4zrWWhiJ' \
    --isPublic 'true' \
    --limit '38' \
    --offset '38' \
    --sortBy 'NqyEuZXK5zPumnaf' \
    --statCodes 'CxMVxLrQYv5jIMbt' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wAaI6EiymTGcR3ZN' \
    --isPublic 'true' \
    --limit '58' \
    --offset '27' \
    --sortBy 'c9dWHW20rhtVUVmR' \
    --statCodes 'EyqC8Yfsu7POnFEF' \
    --tags 'nb8uPuuc6FiOEo8o' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'I32xXw3OqDfmtHSZ' \
    --body '[{"statCode": "etY9dsn9G7WQDhOu"}, {"statCode": "GQlhvZ8OsxHiLXG2"}, {"statCode": "XPnmRV1ZCM86kAx2"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'hcei6OuT9KOufC0z' \
    --body '[{"inc": 0.22266674580643908, "statCode": "6n6mqnJWdazkcAzU"}, {"inc": 0.8228742939448508, "statCode": "Dx9uTuuYCx63hPum"}, {"inc": 0.052487045946710165, "statCode": "Ahfsej2U0oZhb7Hd"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '8qV3t5fL9DpDGUow' \
    --body '[{"inc": 0.8583027484551292, "statCode": "qGcOdK07lMZOkM3U"}, {"inc": 0.828883530756562, "statCode": "79iYjShvLpfNAUGB"}, {"inc": 0.3970208281193872, "statCode": "4EBIpkcLNXRahOus"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '8vAHQ2Xz0cCASZ8G' \
    --body '[{"statCode": "MGZQfIA6QOMRFjma"}, {"statCode": "u8Dm6BlSJtv8DZ1F"}, {"statCode": "unRVYWGIBf4aIOqy"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'asZtPTj1pNsInFZ7' \
    --userId 'a4HjAxCY5Cytjaxu' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '5TLMkY6IlzkaPcVi' \
    --userId 'qyrjTNQQGVu0Xi6N' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '1rHGsLVKJtAlkv1I' \
    --userId '9pdIJpUfPq18VT4X' \
    --body '{"inc": 0.005467858802605918}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'G1coupeWp6uM5108' \
    --userId 'ZjJ6HFySIsbriSqo' \
    --additionalKey 'hwp8p5w50AItXku2' \
    --body '{"additionalData": {"GjK1lpBvvVPEUNDs": {}, "y7jS66Q2oJaAqmZC": {}, "jdJQuRK9BFdkARIC": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '53' \
    --statCodes 'Bc6ctflPoPJPEm0V' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '6CshfVDTGGIJF4wA' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '48' \
    --name 'q4fMKzHCrmmeNjPF' \
    --offset '96' \
    --sortBy 'zltRjCETDHHutbmO' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["PB3YNrf8xZsbIcED", "rhFRrbx2WCfBk0Nq", "OZtg36jQVtVGATj2"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'HORE20ZAnF28v8gD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'OooJM8DOfIx0MGNI' \
    --userIds '3vopwY66aUbYpwRH' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.24322316659205345, "statCode": "iqaENHlZqto2P7CP", "userId": "aBpCT7CFjkOU3FzB"}, {"inc": 0.3859548755213146, "statCode": "JTZDNiAPh27MAtFF", "userId": "i6b871ZKbSQj3bUw"}, {"inc": 0.5598370357317445, "statCode": "fojxuGx3EdjJglXH", "userId": "1dqrmBzTCvcNvGJu"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.857345645489999, "statCode": "bk3KOzxpHBv9qN0p", "userId": "JqKvOvyOVuhct6m0"}, {"inc": 0.3900486691038241, "statCode": "8zCx657mmHcYm3dk", "userId": "n9lesXynaTHm3eey"}, {"inc": 0.5960807787288311, "statCode": "AqJEKswh9y4CyMsr", "userId": "HxA4jCTfHAdr85zR"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "RZryCBI8KnHCBAJa", "userId": "vfPcKiNosmVR01ml"}, {"statCode": "kTI2GsPWUyyXvOz5", "userId": "b49vqs7NX8TD3Q32"}, {"statCode": "sE8rWuEPpcIhn7DW", "userId": "MuY83JlqBgsDvFdN"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["t5O5ZfYFE6qq8qg4", "GdzRJ1mOpYtJaYHm", "jigZrgyPJy39RMae"], "cycleOverrides": [{"cycleId": "bbgRV3eJ3Okivdxw", "maximum": 0.8017413308142055, "minimum": 0.6417213371308841}, {"cycleId": "zzQM3bQHncgX2Wts", "maximum": 0.7459398539001548, "minimum": 0.6371958576432064}, {"cycleId": "FUkeTK6Mgpj46kJu", "maximum": 0.8806618789443741, "minimum": 0.9730745112976877}], "defaultValue": 0.190137019787458, "description": "yA6YnvFOsJWQpIRK", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.5958021868571397, "minimum": 0.11416518786422114, "name": "FqHXsmvO2LYJSrpm", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "sUmQWw1YDk6sBk7m", "tags": ["BfxZV30CRh2ZQmW4", "DQl1fYcujMr1p5JM", "ZlI6P2s0hBeM9bWk"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '4TlYFAHPrqjUaaZT' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '2' \
    --sortBy '8b7YHIywV3XFl0jK' \
    --statCodes '["bczQfx4hiBKyeDJm", "hDdQKFl7S19KwBDF", "WI9vUzSWBXsBVrxY"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '2' \
    --sortBy 'HsmFFKUMovieq8Xa' \
    --statCodes '["8sEhCrDFXcA18yoV", "xZlB5X7DxSTrxSXO", "ciZ4Gvzeto66keX0"]' \
    --tags '["NpMvBiKJ4S8T5Gzf", "1ISTV5vyeu98Bcrs", "UZTrZaHsDSeT0AQK"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'Wbnsqg13V4Acjt3R' \
    --statCodes '["u5mkZADmfjrrvXB7", "YUbbwHdVXZVX2vZ8", "cR3CxhN22gBwhvSG"]' \
    --tags '["TRxvda1ooN8olvek", "pm3LAy04FUOaRBlb", "TJPJ3QEmGp89Nkkk"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'pCUTtcofzqu5SSez' \
    --namespace $AB_NAMESPACE \
    --userId 'ZVQlKHbya00jn2Ji' \
    --limit '12' \
    --offset '29' \
    --sortBy '7zquexk1iysbaRBB' \
    --statCodes 'ADXMLbSx4VBEQLkp' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'AFgH0piod0xA6nUn' \
    --limit '16' \
    --offset '10' \
    --sortBy 'SPfgmiwP7jEWTy9n' \
    --statCodes 's95rBhjhnn0kahQi' \
    --tags 'y6Rmow9L9IT65z7r' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'xpN4JdPqujA3nFbA' \
    --body '[{"statCode": "olCGC10oZ5g5bLhs"}, {"statCode": "THrcBytSGwmaXrfW"}, {"statCode": "bID9xFbvRUcazKmP"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'OcA8HcHtgSZIAIT1' \
    --additionalKey 'FF77weNHHId2saYy' \
    --statCodes '["4YmGitkD0SKulwws", "56inYv1fsGkayLLK", "Jq2L59klpZddz500"]' \
    --tags '["jzF5yRJgddfSBNtB", "QUh6e7DQWk06vPfw", "3vn0QEmRbZ6TzC3n"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'nRr0e2Bc4sQzh4Tx' \
    --body '[{"inc": 0.2840175023182153, "statCode": "0cv02soKu2D6wdO7"}, {"inc": 0.3110804516687753, "statCode": "nabAi5TLDg2ncE89"}, {"inc": 0.861763003892615, "statCode": "onGmW4gAsjJLt0fl"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'N5htMgaQtVYnQ2Za' \
    --body '[{"inc": 0.9750509541707661, "statCode": "AW45c1iOdDL5cesK"}, {"inc": 0.7441006681018604, "statCode": "OgudjG5Ow7RJWlMt"}, {"inc": 0.7902670260759345, "statCode": "8RNU3kZTSsw4FJKU"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'T2Q2Ib4cit0hvFPl' \
    --body '[{"statCode": "K0KXPSt6gKcUrl8r"}, {"statCode": "5s5hVwM1xCDbnR54"}, {"statCode": "oS5P9FlcfylFiz6v"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'e5pkwRYDQOIAioZq' \
    --userId 'yttwKTs4DTPYzcoG' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'igIgp8TGHP1rELlz' \
    --userId 'UBysuEt54W4K4fAX' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '2YDoWUF7AbIb9Efo' \
    --userId 'AYLXZjZd2eegJHZ6' \
    --body '{"inc": 0.48463573020432504}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '9Ft2FK7vf69pwjfv' \
    --userId 'zzawYVidri2CPNC4' \
    --body '{"inc": 0.6461470905172761}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '9wzLi3A7022OkZpV' \
    --userId 'IflV7lNWMOQimQ80' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"zQNJRB9fLTy4LUTD": {}, "1r7KBPvLRrhOxLGi": {}, "jIrB5EaNqVirN8Gb": {}}, "additionalKey": "n3pznLQ3kmantcJy", "requestId": "OUg9KKSKgeppyaXH", "statCode": "CZkVAxPSEcOjZJta", "updateStrategy": "OVERRIDE", "userId": "WnbXhn9rLwmvXAL8", "value": 0.47088576901729584}, {"additionalData": {"qKleQWRHUSWTuI6r": {}, "UMN8Xp7aWKzyV4O6": {}, "g5eCRpXTAyhyLLhX": {}}, "additionalKey": "VhNz8UpiqJBNjS0F", "requestId": "5XHcBNmK5oMzUMOT", "statCode": "o8B0c8mKKUfflANa", "updateStrategy": "MAX", "userId": "sBqdmBGLxDshnLae", "value": 0.6781113934580476}, {"additionalData": {"zHLdQOnQSgRp4GC9": {}, "uPYv1FCfv0Xk0dpa": {}, "21dfxTaNeCg9xh6Q": {}}, "additionalKey": "Zulbn7OTs91kr8Un", "requestId": "gpogqShni0fhqAR3", "statCode": "EHsSmFjdsuxrZwIB", "updateStrategy": "OVERRIDE", "userId": "CoFAdyACdYdhuBCJ", "value": 0.18145492721300727}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'I8smntLJFHBScEqy' \
    --statCode 'CGIIOtSlp2GOYuv8' \
    --userIds '["z25aGBJCBN7DqOhm", "aaLoimTu8GLPgD2n", "MnLnjRPa7uFEgHm1"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '787mzkvLehd33rdT' \
    --additionalKey 'EsAuVzmMvhE2EJFX' \
    --statCodes '["Thk02XhmbZsvVFnm", "rBNe9r8Hc9Euuufs", "TaTfO1Ru6pdJfFDg"]' \
    --tags '["xQwz9IikIGj3FaFC", "Fszwm9l95inWJ0ZT", "N8qIh93b8NUvCpVs"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'Gvu2hJfc6cpQDxft' \
    --additionalKey 'nsNdK93MWYwjDCqP' \
    --body '[{"additionalData": {"4unc0NZarZ9LqphV": {}, "STR3Uaoe3Sk3d5jk": {}, "K8watmKnP0Huou1O": {}}, "requestId": "ZEnu4C7TrVZo9x7c", "statCode": "0FrlQDkdWq1AEXVn", "updateStrategy": "INCREMENT", "value": 0.5461966381197038}, {"additionalData": {"fjo93dVFI8hJ94v0": {}, "fGGSYtiXdoQD0zPL": {}, "hM4DayApHP3m8DHM": {}}, "requestId": "Ym5TKJdXRHsAwejA", "statCode": "mQQA1HsAf991dLGb", "updateStrategy": "MAX", "value": 0.6608790202474465}, {"additionalData": {"z8gYSs7kNZakUGQp": {}, "V2WvYEsab9O0cAMZ": {}, "4ybiTqV20KXP1EXM": {}}, "requestId": "dndF28xDTGKPNNKb", "statCode": "6xX5JIl5kAqvwZVp", "updateStrategy": "MIN", "value": 0.8298775630963682}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId '1mTHp5mvjuE1wycc' \
    --additionalKey '9qGBrwc0bBRAl4PZ' \
    --body '{"statCodes": ["Sd6hpIBcNnxaPl9k", "2WX4JDHwePSN7MQY", "fqnohOap2Rx6WSZz"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'aGdqucDFedaydz0p' \
    --additionalKey '5q9rCOpQ7btKJnwi' \
    --body '[{"additionalData": {"CyvnKjvUmEtiVJZh": {}, "YfuGXyLdOAwU9NU7": {}, "HEsLDg7wbClykq6i": {}}, "statCode": "AVTxLdNxAY3brBHa"}, {"additionalData": {"yz3bTxvq66lXl674": {}, "LWQgv6Xwwq4GVoEj": {}, "zgea5JyAkCUUmgVk": {}}, "statCode": "hPvfSCUMkQkFSuvc"}, {"additionalData": {"NfZhUMPk00YtqfDr": {}, "nTuoUlrwZuozrlGu": {}, "FOYmo9J2sB8c8GjT": {}}, "statCode": "SMfqzEVon0Sr37ub"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'hutMOWlwOzD9fwYP' \
    --userId 'GBOSfcm3xd4oaNFU' \
    --additionalKey '9021ZvxkbhS1umPi' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'K9hhBKzHdLQ1HimF' \
    --userId 'zP0pdMuDqtKw4WX7' \
    --additionalKey 'jOHnk8cJVlXpIx2v' \
    --body '{"additionalData": {"dpnVbiCEU1hVofVG": {}, "1ReAFMiSR4M9mpel": {}, "j0FEds5AM4MNPeIf": {}}, "updateStrategy": "MAX", "value": 0.508282796351832}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"PHcnsUd54jRaeew4": {}, "N0mUOLwgRTSazLwG": {}, "bCgG9uwyBEjhrDQg": {}}, "additionalKey": "STRfYgAc9UkaeAb1", "requestId": "zcHdQQ305VXHERsT", "statCode": "2cWk1AvsnViQ65qV", "updateStrategy": "INCREMENT", "userId": "i3XT7i3xE5xddJrx", "value": 0.19597330068736085}, {"additionalData": {"UP5ZybS55ET8d0mY": {}, "jEqH1Cui9UkbsQk8": {}, "GZwxcaUIQpyurkcK": {}}, "additionalKey": "3ucMbbg8iwP0s5L2", "requestId": "VUAKCltHNGFNtn8p", "statCode": "2VkYRl0wQohMFteC", "updateStrategy": "OVERRIDE", "userId": "0gxUi5sMhiGZWoe3", "value": 0.5479897338421194}, {"additionalData": {"vZuSVfdd06Fkjc0B": {}, "efv9uga8rWCdDd2Y": {}, "PIXlWessufR7PnDB": {}}, "additionalKey": "f94mKrafIFq2qk8z", "requestId": "3xvfszOVwFQf7et1", "statCode": "8o7IjrKYds6awjzz", "updateStrategy": "INCREMENT", "userId": "FxMwZNRLyUH3Xqcv", "value": 0.7077740744407369}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'fz4769IRrOKwtM8C' \
    --additionalKey 'f7WoecMWE1dMIjSG' \
    --statCodes '["zhE55QzzxdqZX5hr", "twMvD5pFMMGKAco0", "fYKirD14KfpNVbzU"]' \
    --tags '["mcy43xiryJKSgMFb", "ksJbeuKDYBOjFOjI", "pADetRN3BiSDzJqp"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'RxTMqQUL9f3ghd9k' \
    --additionalKey 'tgdW6xO3Kqid27rS' \
    --body '[{"additionalData": {"9B0pdjzm0Ao2Cmu2": {}, "ePZu01YMPNP82MV9": {}, "qxqiDMKZcT8hf1LT": {}}, "requestId": "HmdWUYv2eobuhqNs", "statCode": "lvv7IGhLHdbFM3BJ", "updateStrategy": "MAX", "value": 0.5122568284450265}, {"additionalData": {"fpb0IM28yUnx9te4": {}, "iMrRmEW1ODa4PxUZ": {}, "ONs1gcAchBR3tIXh": {}}, "requestId": "84U2gwpnVHZFnJTk", "statCode": "xn8PUU7txWlhm5re", "updateStrategy": "INCREMENT", "value": 0.5567661090522953}, {"additionalData": {"aVZ6J5CxMzaeXZ23": {}, "UWilsdffKhXJ4Rd4": {}, "Z40oWHEBMixdN7Ok": {}}, "requestId": "r1xFVhgMGCfTCmUG", "statCode": "R9IyZFCWwhhHc8vW", "updateStrategy": "MIN", "value": 0.5462729772902029}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'xX9W670V0MrUCP0o' \
    --userId '4DeT4zwZoN0ULgX0' \
    --additionalKey '5kLVgS5Ht1CuYmrz' \
    --body '{"additionalData": {"oXcVvcH0bYKswcO0": {}, "9j30RlL6zX1PHoEH": {}, "9f8VHWMGuQN8W1rH": {}}, "updateStrategy": "MIN", "value": 0.29850529813107285}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE