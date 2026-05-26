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
echo "1..100"

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
    --limit '42' \
    --offset '70' \
    --statCodes 'mkujUSzjecHcHcYQ' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'tPdyYisBQXuq4LBv' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '69' \
    --name 'I5Wl0VSk96JpdtLV' \
    --offset '16' \
    --sortBy 'sGq3FwSf8V8zD9Jd' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "Rxl53HSsScLouyQx", "end": "1995-01-07T00:00:00Z", "id": "1bdMPfI8UYBAHtvW", "name": "MwRbENFpQChdfABo", "resetDate": 19, "resetDay": 91, "resetMonth": 7, "resetTime": "hd7daek0jzg2lRDE", "seasonPeriod": 35, "start": "1990-05-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["npeEA5zkGtUDfUuV", "lNbkginFMBT9Hias", "1nBGATaKhJSha6R9"]}' \
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
    --cycleId 'EGGjrWkbWKDYfBSG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '1kxX6TWFkTFbr9xx' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "pE6LOX2A0INPE3ph", "end": "1976-06-11T00:00:00Z", "name": "Ch1eXIiiIuZG6Drb", "resetDate": 61, "resetDay": 17, "resetMonth": 76, "resetTime": "w6ehGRZpdlV6F5D1", "seasonPeriod": 76, "start": "1988-03-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '7RIxrRDJPe611ISF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 ResetStatCycle
samples/cli/sample-apps Social resetStatCycle \
    --cycleId 'RZwG9D2mkH7HFbBh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'ResetStatCycle' test.out

#- 37 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'K6BMZs0CyMt28jAO' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["cyMo80vwwdcYdBly", "QnsOmWfhMHOK5pVn", "0jTwQw2X8QsB4tBf"]}' \
    > test.out 2>&1
eval_tap $? 37 'BulkAddStats' test.out

#- 38 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '6ftudoRL9iTfMOLd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'StopStatCycle' test.out

#- 39 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '9BSUf6roXl92vwTK' \
    --userIds '0uaakpLH72IutrbG' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchStatItems' test.out

#- 40 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.1284720249279414, "statCode": "QQgVcKpPyI2tfon6", "userId": "t3WpQIJDAg56HZOd"}, {"inc": 0.3168153130386515, "statCode": "zEscAPrgAMKDCM0r", "userId": "1nDF0hPEMyqMWsS4"}, {"inc": 0.7107769602312538, "statCode": "yoj17yakHcUx62Fl", "userId": "UjrQ2vPXG9PBpgC0"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItem' test.out

#- 41 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.08133170897607889, "statCode": "Tera1dsru32n62F3", "userId": "4TtbbczcctvMSD7c"}, {"inc": 0.44327063255778787, "statCode": "VuAsv5zLOAnwAWMJ", "userId": "BanelOqA0184rl1o"}, {"inc": 0.584787308153406, "statCode": "89KdcUuzPIbc3HbP", "userId": "t7brAJcVPS1GXnW8"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkIncUserStatItemValue' test.out

#- 42 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'gmpB449vE45cZOF3' \
    --userIds '["0ZGk8vGo0H92qzdA", "6nWx7PbOl6y8qwpp", "mux7gAXaVxXh5r4B"]' \
    > test.out 2>&1
eval_tap $? 42 'BulkFetchOrDefaultStatItems' test.out

#- 43 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "AFquUlQExK22GonT", "userId": "WSsRndv1m39DY9UP"}, {"statCode": "lHRMUjL3Tg0xURLf", "userId": "Kr3KzI9NomSOobC4"}, {"statCode": "oZT6bwAeVEu8tJKD", "userId": "VxbAjEofmTNYzcjo"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkResetUserStatItem' test.out

#- 44 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'CBTKr3XjrR37Ehmi' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '51' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 44 'GetStats' test.out

#- 45 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["ny3PFhzniO6B1hsq", "vQLFctG5Mhye7yqV", "ypR58tr6IQuEpKOM"], "cycleOverrides": [{"cycleId": "9KzNAOYDelhMLJRq", "maximum": 0.4098663169210436, "minimum": 0.774707873881216}, {"cycleId": "T7jIUL0RN8aYvD0u", "maximum": 0.25371193346167276, "minimum": 0.741621854129177}, {"cycleId": "SeWDW4AfDuJq1ze4", "maximum": 0.5847838204575729, "minimum": 0.0386841418767242}], "defaultValue": 0.09111471556846651, "description": "NxWYGuQ5aTXe0Da3", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.5573554105209076, "minimum": 0.4980259591425388, "name": "THmMfDCZmfC8F0sj", "setAsGlobal": true, "setBy": "SERVER", "statCode": "GoOTQx196DrnBV8y", "tags": ["0icJq45YaqokG27P", "0wvLH1wy7qoaKLDk", "pwN1FAWvC5O7Wn0g"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 45 'CreateStat' test.out

#- 46 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ExportStats' test.out

#- 47 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 47 'ImportStats' test.out

#- 48 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '11' \
    --offset '81' \
    --keyword 'sMo8uMKytuEEFaeo' \
    > test.out 2>&1
eval_tap $? 48 'QueryStats' test.out

#- 49 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '4W04vwhS6Rm6Zo3q' \
    > test.out 2>&1
eval_tap $? 49 'GetStat' test.out

#- 50 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Kewr9wi7zyfDDmfF' \
    > test.out 2>&1
eval_tap $? 50 'DeleteStat' test.out

#- 51 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'owQJ7LHvNndkYCXR' \
    --body '{"capCycleOverride": false, "cycleIds": ["FFC96cb9gXPHL4oH", "OBDwDvLp7WV71I1D", "FBBozc0iVZEUUkrx"], "cycleOverrides": [{"cycleId": "fnhXklvJPpTPN80q", "maximum": 0.4092743666765277, "minimum": 0.4888085023298949}, {"cycleId": "YONQaBvHzO6JsTdL", "maximum": 0.40743022259756156, "minimum": 0.3756560940199922}, {"cycleId": "s76KBBmZFDTCO6kj", "maximum": 0.6520796017549002, "minimum": 0.9219511492918673}], "defaultValue": 0.908897402345036, "description": "6I6ZzOXxgISpqIBv", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.11757153926965158, "minimum": 0.9638618457664754, "name": "Xl2ngdygvvypfA7L", "setAsGlobal": false, "setBy": "SERVER", "tags": ["ofjk8pvmSK8C3Lzd", "JeHLZ56ovMrt7FV2", "bgicZmtyqGCykgcL"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateStat' test.out

#- 52 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'k9JmvtFzaemGmgT3' \
    --limit '59' \
    --offset '56' \
    --sortBy 'zI007JmyOXrQL9mV' \
    > test.out 2>&1
eval_tap $? 52 'GetStatItems' test.out

#- 53 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'pfySSaULcNGcKGlg' \
    > test.out 2>&1
eval_tap $? 53 'DeleteTiedStat' test.out

#- 54 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'i7KzRc2lq8oIHAZZ' \
    --namespace $AB_NAMESPACE \
    --userId '4enfefORhwRSCVfn' \
    --isPublic 'false' \
    --limit '25' \
    --offset '3' \
    --sortBy 'ZW2DotPFXTI8og1c' \
    --statCodes 'k94Hes48IIcTl9BN' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatCycleItems' test.out

#- 55 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Pqp3d0jOzCKLoAtP' \
    --isPublic 'false' \
    --limit '77' \
    --offset '35' \
    --sortBy '9en71R9WM1m4gXfL' \
    --statCodes 'gejiIwMjPjrkY6V9' \
    --tags 'OjvpJJQfdulQpgsj' \
    > test.out 2>&1
eval_tap $? 55 'GetUserStatItems' test.out

#- 56 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'bb8zHeSTNA1fC01M' \
    --body '[{"statCode": "1Aq8Wrm55xbmO1Gv"}, {"statCode": "loOeQfOeJNJniJHS"}, {"statCode": "CmqjzStOf237NAXL"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkCreateUserStatItems' test.out

#- 57 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'g7532Ssry3xTKz2d' \
    --body '[{"inc": 0.9657477352200916, "statCode": "evPHtOhXYhjfAVjv"}, {"inc": 0.4217711483673571, "statCode": "hWxmevfe6I5GYPIP"}, {"inc": 0.06333284480257795, "statCode": "UXXlIHEER6rPk9Eu"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '7Ar9KQZnjH8zaEjp' \
    --body '[{"inc": 0.4436087007247377, "statCode": "rHqwuTZdHfuyGbMH"}, {"inc": 0.7138650537175336, "statCode": "d86nYS6D8BrrZJWg"}, {"inc": 0.705897079991957, "statCode": "ruP8y9JzNSrfEYTk"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue1' test.out

#- 59 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZkCIEYnkxAYzAIMF' \
    --body '[{"statCode": "RKP8OzqNK2ukv0Mp"}, {"statCode": "yAbJiPDvfL3erjGR"}, {"statCode": "Toh3hPTZgNfGykY2"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem1' test.out

#- 60 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Xz81I0FUI9kZ3EuL' \
    --userId 'ydgvULX3s9DnALfb' \
    > test.out 2>&1
eval_tap $? 60 'CreateUserStatItem' test.out

#- 61 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'GjUmYJYiRbrLrpTz' \
    --userId 'y02OrXsGJfrgQhCe' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems' test.out

#- 62 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'lf3w2itch7KXKrml' \
    --userId 'HiSupVqozzjqmPJE' \
    --body '{"inc": 0.8419047118481657}' \
    > test.out 2>&1
eval_tap $? 62 'IncUserStatItemValue' test.out

#- 63 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'NTeepxmbGCRfhRb0' \
    --userId 'qbAdDKbqiMBjEIDd' \
    --additionalKey 'tmJtFhIuKeoA4XHv' \
    --body '{"additionalData": {"7zT5IEjrrn6jJD1d": {}, "VpK4Db0svOAfs2Gf": {}, "utn5QmllpCR1bGTM": {}}}' \
    > test.out 2>&1
eval_tap $? 63 'ResetUserStatItemValue' test.out

#- 64 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '65' \
    --statCodes 'AtQyAbjQmuzOm6fr' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItems1' test.out

#- 65 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'rSr2wZuEoIMI5Keo' \
    > test.out 2>&1
eval_tap $? 65 'GetGlobalStatItemByStatCode1' test.out

#- 66 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '56' \
    --name 'MalD8wcy47AQGQuh' \
    --offset '4' \
    --sortBy 'GGO0UlgNvZhBQ4o3' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 66 'GetStatCycles1' test.out

#- 67 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["trCZaPzAYbC7LTyw", "XeTPNmAsv1wnvoQb", "AODvxA29ZhAgar4K"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetStatCycle1' test.out

#- 68 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'rEmkjzgX2fxyAjf7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetStatCycle1' test.out

#- 69 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '9nacyXPOmoPkikIj' \
    --userIds 'EcpKwk2jGFKBiWjR' \
    > test.out 2>&1
eval_tap $? 69 'BulkFetchStatItems1' test.out

#- 70 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.32831389295929125, "statCode": "8P6sVzN3hHXUDGNo", "userId": "IQuktKhp39WZZryQ"}, {"inc": 0.2852016390849693, "statCode": "LduYKueoUJFYNFMU", "userId": "BN7NXbHup1qbPscR"}, {"inc": 0.8076147711752097, "statCode": "yZREtwL7OjWFWA5B", "userId": "3mNL5AVOzDuXXcLY"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItem' test.out

#- 71 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8468145779892344, "statCode": "89CMkg13Z2P3lyXP", "userId": "MAPrB36x82ld0Xhm"}, {"inc": 0.3971234925526672, "statCode": "PwuWFU8DHW58AezS", "userId": "fqgbzeEPwCqGMCG8"}, {"inc": 0.4657080076841642, "statCode": "hlflCTR2nhF0hpmW", "userId": "Ty9HIiC1IzgldqmQ"}]' \
    > test.out 2>&1
eval_tap $? 71 'PublicBulkIncUserStatItemValue' test.out

#- 72 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "aHPEXpBtq7Gcym2q", "userId": "peYkPIA8wDdzkU16"}, {"statCode": "2Cj8X3fyj98cx6Ns", "userId": "o9onlrUH1QKuhaom"}, {"statCode": "i6UZOIFIuyIyAJ3T", "userId": "jLNL7RK9S7BhWEBO"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItem2' test.out

#- 73 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["af6FKJyykzvow6k2", "7ebhUiwerv7YM2e1", "4AWM5mF0KEDUjSgp"], "cycleOverrides": [{"cycleId": "xGbJ7GODPW39Uh2i", "maximum": 0.8378604865057783, "minimum": 0.21761954437151354}, {"cycleId": "sjZ4OoNOAyBoUK2Q", "maximum": 0.47322581983423484, "minimum": 0.7094612327473211}, {"cycleId": "h9sRn2XaWC4fOn3b", "maximum": 0.06729195900661655, "minimum": 0.8088126257461778}], "defaultValue": 0.5248239695001256, "description": "TF3ViGChwZe6s0gY", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.011385473424900039, "minimum": 0.4792839255970286, "name": "1dofb9pSO2NJEW6w", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "RQeOqHWLOfxg54o6", "tags": ["PzEDONNmu1n2ZWbD", "8BQ8ZqO619S8HHgB", "kJLDpcKSQjnlgu5Q"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateStat1' test.out

#- 74 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'ca3PiLN1EKCJmFW5' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '1' \
    --sortBy 'LsFI4JPAfdbwhM4K' \
    --statCodes '["MaQxQNBFCMh0M2ku", "1AflvLiPIRgmNA2V", "MdHI6Rae7yeLShjA"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatCycleItems' test.out

#- 75 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '4' \
    --sortBy 'tapwhOId2x1bkX3v' \
    --statCodes '["yPlL2IWCzxpDyCVw", "XYemfokL6A6ggA8F", "oPg4YtWprCiGMEEp"]' \
    --tags '["45SM1Rfb33Z8fhhH", "tCT0C8ZPmqIBMkeP", "P0VApZo9dohBo2Dj"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListMyStatItems' test.out

#- 76 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'RhGElZQU1u7mWlmf' \
    --statCodes '["Pu4m11V51bQeCxe7", "PjmR037DwbLES4an", "uwz42uoYe2aTrPvz"]' \
    --tags '["aqAneynaUMvsCAnQ", "vQeDxSM7Y6wNMKQ1", "DLXMD8FnTLjMrcyS"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicListAllMyStatItems' test.out

#- 77 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'EbhHlG7kpcVA5iBu' \
    --namespace $AB_NAMESPACE \
    --userId 'NCX8XE2n6xWiDAiL' \
    --limit '99' \
    --offset '0' \
    --sortBy 'l858iX7xvHORNfoa' \
    --statCodes 'EnPS5mnCrOLmniKf' \
    > test.out 2>&1
eval_tap $? 77 'GetUserStatCycleItems1' test.out

#- 78 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'FmiGUefDpfKqdiuk' \
    --limit '94' \
    --offset '31' \
    --sortBy 'fEgBsxiCId8v093J' \
    --statCodes 'eCVWUnCrUjEswFFb' \
    --tags 'oCILSkDJfWm0E1PP' \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryUserStatItems1' test.out

#- 79 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'P8zkkMl4Y2VAZedP' \
    --body '[{"statCode": "EWLyEuTcmpYLuevU"}, {"statCode": "OAPL3lwlUBPrmz7C"}, {"statCode": "UYTGWIUCeL69ATxc"}]' \
    > test.out 2>&1
eval_tap $? 79 'PublicBulkCreateUserStatItems' test.out

#- 80 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'w19z03xpOLP8l27b' \
    --additionalKey 'Y7O7OK0km4jfasCT' \
    --statCodes '["uFHgQQA9NiK0PzsK", "sfFttMN3LVBYkINc", "GEyQQzVTPk4X6Blg"]' \
    --tags '["FRjAnmIvm97l20pv", "wwBgrCAUWOpaxcHO", "u8iqCDk7SeztvGNf"]' \
    > test.out 2>&1
eval_tap $? 80 'PublicQueryUserStatItems' test.out

#- 81 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '5SYHfp2VbIrDRGeo' \
    --body '[{"inc": 0.7779398691599316, "statCode": "jwFMXrYwyDTP7Eor"}, {"inc": 0.28829642200000616, "statCode": "2F9fvKHvuZqgI6zQ"}, {"inc": 0.014362692999314586, "statCode": "c15xIRKcvVRHomHV"}]' \
    > test.out 2>&1
eval_tap $? 81 'PublicBulkIncUserStatItem1' test.out

#- 82 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'U86OCBXtPxlfvlmd' \
    --body '[{"inc": 0.4543537342389866, "statCode": "xOiW54xDCpvFozHu"}, {"inc": 0.4929158655108197, "statCode": "LO0dZI7qy4zUPqOc"}, {"inc": 0.7707176811633537, "statCode": "abB3FRDItUSkyk54"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkIncUserStatItemValue2' test.out

#- 83 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'xIPdezzqYLIhXnkk' \
    --body '[{"statCode": "8Ef7Cr5PF3tz77eu"}, {"statCode": "4jsaHWhQHWNmbm4l"}, {"statCode": "mw3HlRLFiuriLHuA"}]' \
    > test.out 2>&1
eval_tap $? 83 'BulkResetUserStatItem3' test.out

#- 84 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'ezUqHxQtsNMtH8ka' \
    --userId 'rsXLnAdAK4Xt1yV0' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateUserStatItem' test.out

#- 85 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'P8wUT5EcGDIObdNz' \
    --userId '55iJeeqJbut8fi4g' \
    > test.out 2>&1
eval_tap $? 85 'DeleteUserStatItems1' test.out

#- 86 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '8wOc9UBIQAtAcZWN' \
    --userId 'WfGYk4Pg7jaVT6al' \
    --body '{"inc": 0.9679606774521674}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItem' test.out

#- 87 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '69u9kGyV7u23iOrR' \
    --userId 'RYdhunj5DMrxv9mD' \
    --body '{"inc": 0.4623857459466989}' \
    > test.out 2>&1
eval_tap $? 87 'PublicIncUserStatItemValue' test.out

#- 88 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'oybhPihCyfAV2HdF' \
    --userId 'SlXa49sRM5KsFkzI' \
    > test.out 2>&1
eval_tap $? 88 'ResetUserStatItemValue1' test.out

#- 89 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"LIL2fKbZOTKQCdwl": {}, "eE8K6p2FuMSaEInJ": {}, "hNXA0Oz9Uyg67t8T": {}}, "additionalKey": "eSPFEjiPs6Refl5A", "requestId": "wjaqMlahKiiQ3BIR", "statCode": "GzV6oKMSg2AO2o9t", "updateStrategy": "MAX", "userId": "bBNeRdrYTg1Aqwxo", "value": 0.939773907062406}, {"additionalData": {"vygz7PtjuyPw8Yro": {}, "fruJYGTjV6wOAgMw": {}, "JlRmdFHxRWvqJSbc": {}}, "additionalKey": "YhuTw5seq8YznShD", "requestId": "1UOKj6XTHzXf53lM", "statCode": "395OHFdMtNoSOVsO", "updateStrategy": "INCREMENT", "userId": "Z5QV5tnG0W860bfB", "value": 0.09639277596579521}, {"additionalData": {"W5XfpkNyvvA5p5qR": {}, "jk6fzoLjVMPR3oVM": {}, "qbcyUudvTDWsVef4": {}}, "additionalKey": "Nfyx0elsfGDF3dmw", "requestId": "NB5CpKJKe7w94rXA", "statCode": "GdtquwJWrKPj8gSk", "updateStrategy": "MAX", "userId": "rInY2oGcoMrH5imz", "value": 0.3868796285143207}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkUpdateUserStatItemV2' test.out

#- 90 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'b8cukpwF3Dv2xxk5' \
    --statCode 'RqiVdOTMVBkogGDX' \
    --userIds '["kFrbVlam9THJT8q7", "qqfqEWqHtqGY8fQh", "LTekdiEkUQL03s82"]' \
    > test.out 2>&1
eval_tap $? 90 'BulkFetchOrDefaultStatItems1' test.out

#- 91 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'rjTAckThZ4yuElA2' \
    --additionalKey 'MEha0vKlMpyP8frB' \
    --statCodes '["BurdadYOOLh2xsoA", "T0psqf62ZtV3CKke", "Z9dghhDNbIipp2XO"]' \
    --tags '["DTzXVxod21u3LWV9", "xFycaccdftAR7Yov", "90F6Dzpy0F776EqH"]' \
    > test.out 2>&1
eval_tap $? 91 'AdminListUsersStatItems' test.out

#- 92 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'EEiGf7CLsMLivrUh' \
    --additionalKey 'NUodrj9EKfnBP4Cm' \
    --body '[{"additionalData": {"KTS9gaFaALr2fFyp": {}, "Ro162SMaTATMDh3e": {}, "1eF425T94LB2C2qg": {}}, "requestId": "UA0fiRr9dUXKwqye", "statCode": "KMXWkQfcM7ZX4LBz", "updateStrategy": "MIN", "value": 0.24473469288607874}, {"additionalData": {"D8FAZWlZKu7VO6iU": {}, "maHPDzovnqF97bY6": {}, "Fhq2vXFtoriMfBwu": {}}, "requestId": "8C6gJ1KZtu57KIK3", "statCode": "znwhxjnzQ5DCX7db", "updateStrategy": "MIN", "value": 0.41573127085087525}, {"additionalData": {"vXrJJTWMRcukFJ2B": {}, "kfKU7rwNE5eTee5Y": {}, "PRCFhCFI0vSyEY3L": {}}, "requestId": "fCKXvQVKGVWMSOYu", "statCode": "3NtECRwE80mSuvua", "updateStrategy": "OVERRIDE", "value": 0.1271671507383354}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem' test.out

#- 93 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'C0Ww3JvZkI5FkEJi' \
    --additionalKey 'Yo3FcnduZMUk0TOx' \
    --body '{"statCodes": ["VxcE6qEGNX44bNFG", "0ajbPRoxNLRLQCBM", "kA3dtB20XqSzL7hq"]}' \
    > test.out 2>&1
eval_tap $? 93 'BulkGetOrDefaultByUserId' test.out

#- 94 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'eD16Sn0oSWvUal1Z' \
    --additionalKey 'bPukDbFMS5Y1tKak' \
    --body '[{"additionalData": {"fy7nGOiT85GeN0kn": {}, "jNk7oXED9eEGPLA1": {}, "1sABPrtK25Ia9ZwC": {}}, "statCode": "SytrmoWEZYdJLcHd"}, {"additionalData": {"Odt4O5AnbmI0RYUd": {}, "amOABNEDmgyQCE2B": {}, "xFUWSQW1x1BXSqZJ": {}}, "statCode": "wet6fWXGgzPK4E04"}, {"additionalData": {"8FajopoDQ16SzTRL": {}, "TPAjeKTLTymL3TWa": {}, "Ah2OqMf67RrZ1z2b": {}}, "statCode": "Idyz61deB6GzzwQs"}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkResetUserStatItemValues' test.out

#- 95 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'QoYb2y1oWdwpHsMI' \
    --userId 'MLyrGwJkAPeqRzk6' \
    --additionalKey 'CPFWLjtbMXrWBAq6' \
    > test.out 2>&1
eval_tap $? 95 'DeleteUserStatItems2' test.out

#- 96 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'gOvC9a3A7EW3gi7N' \
    --userId 'xbwowlNeZwIKxGDV' \
    --additionalKey 'quNHJHdkWx9RSAJF' \
    --body '{"additionalData": {"eSnYk8cOugivJ1Nb": {}, "TXJUwJxJiKczjMhp": {}, "f0qQbYIHRX2wFiCj": {}}, "updateStrategy": "INCREMENT", "value": 0.30588495537686666}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateUserStatItemValue' test.out

#- 97 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"odBdxzrOPgU7ozbw": {}, "ZC3wVjTqNyhh1j3u": {}, "w5eNfZSlNsBDVwOb": {}}, "additionalKey": "gVQh5t4RyYZiBwXp", "requestId": "C4vkYovF3rzvzQRL", "statCode": "J0y3x1fcKtOZQO7s", "updateStrategy": "OVERRIDE", "userId": "sJ2c1bjyqc4Yd4l7", "value": 0.23790541367012363}, {"additionalData": {"XBdcNzN7C4ijQ8Qs": {}, "OMtrk3Fxht4UID4q": {}, "TqMgJzB6sL7Ui3EM": {}}, "additionalKey": "8MI71sNVBOCzpPsu", "requestId": "sjPFVie635TQF96w", "statCode": "s4B2LxMdeqjp33Hq", "updateStrategy": "OVERRIDE", "userId": "T8KzWBZdJx4COuKb", "value": 0.034649801911880385}, {"additionalData": {"wi6beP0FG0K6LxNS": {}, "ANX19wQ9JHRQUlzc": {}, "icQCL78lNARycsaj": {}}, "additionalKey": "YJubJS0ZgVQyfKoX", "requestId": "2Bw0z41h7n988lXs", "statCode": "leY8SO7UoOFd3CRi", "updateStrategy": "INCREMENT", "userId": "KLENmD8RLmqq9S0J", "value": 0.49277583968945915}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem1' test.out

#- 98 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'rdQkqexcIzvdx4kq' \
    --additionalKey 'Q2kAXcImT9C1c9jZ' \
    --statCodes '["OwmLJGm3rJ0gQUXU", "Sj9pSuYG1w7sV0tG", "ZfhZqtHsKd0ikned"]' \
    --tags '["BKBFrVutTESvon4g", "MB9IOfdF7F7OOEEP", "g1aySQsCVywkxhfL"]' \
    > test.out 2>&1
eval_tap $? 98 'PublicQueryUserStatItems2' test.out

#- 99 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'tCQOUcU1Ny6HxIen' \
    --additionalKey 'uLwVZlZDU6g7fAWW' \
    --body '[{"additionalData": {"G5VfuW3ilTqMDFW0": {}, "8SKvIjoICKkf1WHq": {}, "ipnX82zXbjXD5vVQ": {}}, "requestId": "DUrUXKWp745mZEEb", "statCode": "rxI9XeG5kAmEOKko", "updateStrategy": "OVERRIDE", "value": 0.7420730839818682}, {"additionalData": {"1tFFnmKuGXxYgqKa": {}, "T21NE9G6TToXJ3cd": {}, "tTHsnH2DJITAci6M": {}}, "requestId": "82q3N7OPvzzw0YKR", "statCode": "L4LroULzeX9uyJu9", "updateStrategy": "MIN", "value": 0.2995395124386181}, {"additionalData": {"jq3lpBOKyFmiNZLY": {}, "twr3dBkyJw19cTFH": {}, "RxBvT12lFRhsC2Im": {}}, "requestId": "pYSltYsOTPA54ozg", "statCode": "ko23MfR7qfk4q4jj", "updateStrategy": "MIN", "value": 0.23109661875856202}]' \
    > test.out 2>&1
eval_tap $? 99 'BulkUpdateUserStatItem2' test.out

#- 100 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '0YH4t7VpmQY8ozK1' \
    --userId 'dqbHnxOYWAvc7Q3W' \
    --additionalKey 'RR2L75Zhr6ykQTrF' \
    --body '{"additionalData": {"qIkoGhwZJ4k7lLE0": {}, "UDuv0J7J45qRpiRv": {}, "sZ2CPJeZE9WduJOJ": {}}, "updateStrategy": "MIN", "value": 0.2741643183737008}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE