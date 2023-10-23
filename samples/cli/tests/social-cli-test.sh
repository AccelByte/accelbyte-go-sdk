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
    --userId 'MmGJNKAaEgDIzGJN' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'XCrnl7GCvVfEnnoZ' \
    --userId 'hCL0AYg1kqhahF4N' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["WC2uNpP5JCsTt5eu", "KyWTmxTfGQPb0bkh", "9NhaWik60EvGJzpS"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'AJGzzKpLXEAIqRS8' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'g34PEbaZEsj4Fzqk' \
    --body '{"achievements": ["2fs9pR2YKwT9f08m", "dtnyIo8KVNFR3zAn", "fwk6BR4v9IXRK756"], "attributes": {"MjLNIP5bYlGKTk78": "dF8z0g9quDjr2iX1", "7AfWTZhgt8S9B9Is": "sDsjrDMwd1aoctzj", "gyZb6RQXItyELtk3": "2CVW9zdRxdwUb3YJ"}, "avatarUrl": "QwD6NIMsH4XbbyEF", "inventories": ["ZiL6P1OnUhN3SLv2", "5pBp3LsHgCdKate2", "zzKsWWMTaHiZdDwq"], "label": "REOcYMfHVR3NYeiG", "profileName": "23gTdsq0Lhwt45l9", "statistics": ["P6aSmTaXjasnbeXJ", "12EActRjXimg39EU", "D87tuYQsXIc9Vp7F"], "tags": ["CKLztVsrIE4ahDYI", "CLV7ckQSJFnDZHfh", "M3kGIzylsKqeCOan"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Puc1sz1QJLjCq13J' \
    --userId 'GvQNj0WBTQBymgRz' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'EArprL9YK0DVj7hG' \
    --userId '338iU727mYm4ZBD0' \
    --body '{"achievements": ["exLXBshn9S1MtcT3", "17ceXD58CMOgtZaX", "fKXBMMpMVB09yoY8"], "attributes": {"pkzfmQK3xv6VXB2t": "g13Ep8bYYoKwSNrF", "ORSBaxYLBuE7ZVMp": "ykTuRgk3tekCBiPt", "W1M7Q1eKXVzKbpBS": "RsPwLTJPZcWewM6G"}, "avatarUrl": "UrykLSbvEgbSVlg5", "inventories": ["lcLscmwb0ZY4WgTU", "CbOCsVFduMVCNGzk", "GY1LSCB0SPjT1eZT"], "label": "mYJHazD3aCOtnx5x", "profileName": "3gCa1BjS5p7wEfT8", "statistics": ["UwBiur34HmxVSag4", "3OVRaSrjKtNUuF1e", "AJUipqTbLpHqV9d0"], "tags": ["1GR1yrYv0Uxtd6LR", "RPW6qeb2HpWfpGiH", "D3UjvIe4oJz8TVef"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'EPFoulwiRzNEVz2N' \
    --userId '9HHVPnrqwd6wmjoI' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'xImu3gg923PS6KQ7' \
    --namespace $AB_NAMESPACE \
    --profileId 'w7ApGrDQFMFb8ygG' \
    --userId 'vYtZS8qMPWFwo903' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'QHdbWjPUHC0DBQ1l' \
    --namespace $AB_NAMESPACE \
    --profileId 'VRmRxC2lLuQ7FCS6' \
    --userId 'mKSOTfvnh8u8GHtH' \
    --body '{"name": "LJ3JFfySdmyCcMgq", "value": "CXax2mNawzIFq7Am"}' \
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
    --limit '66' \
    --offset '88' \
    --statCodes '52DckS1DJN8IdKAB' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'bfInttEs4t0ttnKK' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '1' \
    --name 'iAJuK3mmmBMTzLGy' \
    --offset '2' \
    --sortBy '1T6yWPrq0DvX2kv9' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "begNTMloP86dWfCi", "end": "1978-10-26T00:00:00Z", "name": "4LAVXncG9jioYTA8", "resetDate": 5, "resetDay": 81, "resetMonth": 37, "resetTime": "Ke6Tpy6rV3db1aUT", "seasonPeriod": 45, "start": "1980-02-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["NpyK0ZQKbcNreGOU", "CQGHVN5Gm06zUcAA", "CRTIDJwxZw2ttYqQ"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'c30p2WLsIRx02VWr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'JxVyCVxTHpdUEqYS' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "1nfJ9tfDvb7WQYzZ", "end": "1998-01-12T00:00:00Z", "name": "Y3KR6RIJZO5eN9eE", "resetDate": 54, "resetDay": 69, "resetMonth": 46, "resetTime": "QtX0oTxQPyLiGsOt", "seasonPeriod": 24, "start": "1975-03-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'swTZrRheiY0XI4yG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'E7gxh6UPTP56YrLQ' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["lDxDgugPUjwcgxUP", "0lu9OpVeuAgvbMPo", "MCR78Olv13bklqpY"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'MhCalQWIQEVTQDvU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'zv7GAnSKsQkSPC1p' \
    --userIds 'G4kJbUhLCvBadEAO' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7086536420867109, "statCode": "cSeTYIMqppksHcn7", "userId": "d4wibrJM4rQz0weH"}, {"inc": 0.3363491789541404, "statCode": "I0a2Axc3I2hYQhKB", "userId": "VfqzdH6KKqiOYvwW"}, {"inc": 0.4114484351487381, "statCode": "6d8DSpese2ZY0914", "userId": "C28OVIsD382b4cgM"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9083347752551901, "statCode": "zDKISvypFUQd0Ufh", "userId": "UcogL9XZLZ7vkawS"}, {"inc": 0.7018714255528217, "statCode": "NRM3irxdXnjp3ZJl", "userId": "6gHtLKxGvbUCWLFm"}, {"inc": 0.10259887073330765, "statCode": "lXJYg06ufyLXIjgS", "userId": "Rk7hbblJjx0abwpS"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '0JDldELydR1Cxfok' \
    --userIds '["HjoxRqOWCCH9An72", "vXyzeTZrkHnlE9cz", "cJiLGO6wgW25036Q"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "YaSFNwKO6p8K6GcL", "userId": "xrOUdM3saG4XUcRf"}, {"statCode": "psp5AmC4UNEa1dkP", "userId": "luh6gjfNQvyx1Brn"}, {"statCode": "d99YqJQAAvjgm6pR", "userId": "O9OFoZ5lFYV3TQvY"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '3IpnDOrL3Dlpe3ZL' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '79' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["n8JVKhkNGHbMLaUb", "ZcBA0K57VBG1EMzd", "d3N7GQ136kpbkJcl"], "defaultValue": 0.4607938843499718, "description": "yNLGR50xMwgA9mw6", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.07711518112737248, "minimum": 0.35370789725299123, "name": "GWg6M7sXHw62AnG9", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "SG3rTwbTQQBzM4Vm", "tags": ["lZuuqVBtwcu8Jbm2", "J1bCLNTUeqXTJIO0", "dKLCxV3EKCtaMNYi"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '56' \
    --offset '29' \
    --keyword 'TazzzB988te7Udcg' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'oM5UTlIKW7gsSsLD' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'HEjPeglU8WlQAwqO' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'CzaEYsQYPin54WS7' \
    --body '{"cycleIds": ["tMf89uFjI3E2P0uh", "0rnZDlydS7TDlal1", "jmNKdvHUzFJ6e9X3"], "defaultValue": 0.43728414755874945, "description": "dunQHjMU6kbaHUsm", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "J4GHKDze6dxVXdPF", "tags": ["MF4b2QKgY5GcBUas", "prP9S8UAMZbYA9BO", "RCkDaY5WCFz7NnFI"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Djsj5JefGPZc8POd' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '650RropZV0yyS4WR' \
    --namespace $AB_NAMESPACE \
    --userId 'iPHTpiJNZNhChQwz' \
    --isPublic 'false' \
    --limit '59' \
    --offset '23' \
    --sortBy '19pL297TsjIj8cRO' \
    --statCodes 'DFO8Teb9d3s7QIEc' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'R5KV9iA5nxrdlYeQ' \
    --isPublic 'false' \
    --limit '49' \
    --offset '6' \
    --sortBy 'A41nTXpDVhL1x1tQ' \
    --statCodes 'eraxfdQPUH724cx8' \
    --tags 'IskB1N71mbawzT9D' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'fkRvbGfCJaY8ZM6k' \
    --body '[{"statCode": "Wh6J9jixTnOqHoYt"}, {"statCode": "4NJ36xvOmky4KmWL"}, {"statCode": "oakU4yvV6Y2E1x1a"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'mM81jzcATbVRE3Sq' \
    --body '[{"inc": 0.6517274065618988, "statCode": "9PmQ37lTNCWbGcEE"}, {"inc": 0.4423426881365907, "statCode": "Up8zkRJ75M3pky2v"}, {"inc": 0.5552266672261741, "statCode": "51dshHs8lSYU0Wdy"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '6tXUl8lnC4KX2m2x' \
    --body '[{"inc": 0.9509122143953308, "statCode": "Lj1kHh5R68l0siEn"}, {"inc": 0.4470378306813768, "statCode": "1O9covnGz09ekmKk"}, {"inc": 0.03572415198833856, "statCode": "eKOHq3lUS24kdVrS"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'f23dwlFWnAYfvQlt' \
    --body '[{"statCode": "4YCJiSxkQ52vJJev"}, {"statCode": "GnS7irJyrV7l1Szw"}, {"statCode": "ZrUiRIXh7mZjhs9j"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'JeGeGI7iI81bsddR' \
    --userId 'cPaXlqh9G8OOOvmI' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'bqYGaxApttJfZkQt' \
    --userId 'Hcmk5moREWRhf4pc' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'AtRN4gC1isqoyZlx' \
    --userId 'izpAmdfVgGPMFZlv' \
    --body '{"inc": 0.6898248525974452}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'hfjlIgynwfUKZpko' \
    --userId 'xw8Nupu9cIqhoKH9' \
    --additionalKey 'taqfg3sFFPPkmw6p' \
    --body '{"additionalData": {"9ngDAOD4rXkok3wM": {}, "KTMdjzjvKDQent79": {}, "2xbn65khwCkYuKrp": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '29' \
    --statCodes 'ywaXVAJMWMTJGj2e' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'p6Uf8F8d1RCNsQdB' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '87' \
    --name 'mTBpUj36dMY1bsP9' \
    --offset '89' \
    --sortBy 'ADNMfWbm0zdSn5aC' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["fW0NaRyR3DiXN2Jv", "j50deG9eUd7pUZeC", "JPrkW8NbkvYH7nTq"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'YSZ31AzkqYpFcMGW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Q8ixfbs85PZo7JYs' \
    --userIds 'W1bI3TwU2niwzQWK' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9127729881815249, "statCode": "ipdl8gUqsX1sMqSj", "userId": "5TWxkriOwAC3u8ib"}, {"inc": 0.7862419133658541, "statCode": "6rLUJ0aRy7lith8j", "userId": "z4qEPEmlatqTDGGJ"}, {"inc": 0.8906280819889026, "statCode": "ivdZ6GPjbe2hxQf7", "userId": "H0qJHdqpoEzko1QF"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8213649136345896, "statCode": "fDV5MzORVGx9oFaA", "userId": "V8Up3PQK6m79U80l"}, {"inc": 0.41029564974037114, "statCode": "0MKVShXn9mwEkoXL", "userId": "wAFnISDsNPlBShIO"}, {"inc": 0.13989616554897044, "statCode": "ofKtLmjKrT016QlG", "userId": "jh431oRVtkmLuaNE"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "babL0pZKGa89lnJQ", "userId": "w53SGuvTp0vbXrMB"}, {"statCode": "G8MNslgJuKtWksl4", "userId": "jYXD9AxDXeiUyvpt"}, {"statCode": "xaFKtVYREF4NvccH", "userId": "dxMewujtNsETlysH"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Hh4lsHyqOMEns2k7", "BvQmhDRJH12zePL2", "p0cYlLZV6LyLZMjW"], "defaultValue": 0.6130906179068817, "description": "Eg1te4TSCOqoRSeS", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.28122055825619985, "minimum": 0.5763949195311874, "name": "jJipD2JIDdavdFxC", "setAsGlobal": true, "setBy": "SERVER", "statCode": "DUEK6l8aNTtpwCkO", "tags": ["iT9RshvFlj8jf1NI", "ND7XocXDIBOoXe6N", "bvxDdBPxZXEg0Y8W"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '0eo2O0loddVRJjQN' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '83' \
    --sortBy '0uOIlKVGEDA4RxIn' \
    --statCodes '["Y28mpbtt5PAdDloq", "Uqyhm2NnFCpIdebo", "nJMS5cvirACOKxL4"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '95' \
    --sortBy 'IJ5w2JVX2KCb6Sua' \
    --statCodes '["GTnYEBvZDiw7pwh4", "MtjamatBXhcS0jL4", "Hrhh870i3NG7mXCz"]' \
    --tags '["JHQpA9pgYDl7p1QB", "igxh6koujM9qSJiK", "CMNG68c6fHeYXaO1"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'FeLeipO8k1LyglM3' \
    --statCodes '["Aq6LZ39nBE55CX1Z", "gOf8LOUscCBmPvCR", "zSy3GaLh6CjsWi2I"]' \
    --tags '["HuHOXnXjZa6w8UgK", "4ZvdOEMWWXE37vif", "PpGqanWGXp0NIfLw"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 't8956WX0NixngP1M' \
    --namespace $AB_NAMESPACE \
    --userId 'Lmz5FW6bvQis95bf' \
    --limit '62' \
    --offset '67' \
    --sortBy 'i998ttYIHmmlXIWv' \
    --statCodes 'A4GKq5necPvhFI9T' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ZkARJVZCFwy8IvJn' \
    --limit '0' \
    --offset '91' \
    --sortBy 'hOjUBmVdsFP12INb' \
    --statCodes '63XVCO8stdJvtub4' \
    --tags 'ZYnrLOg5eICPpvGQ' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'IvH7bta4UWdgyNgf' \
    --body '[{"statCode": "pDvONzluDQlcemLR"}, {"statCode": "7oxn6bprSOKvlTtK"}, {"statCode": "5DB6bMjXW4zis9im"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'K3yEMxdbGNaZmwPb' \
    --additionalKey 'Sh3sePtX8lLjIx0u' \
    --statCodes '["hj2hg2i0dK5hGBnQ", "czqqFEDtPQng7Zlw", "xBQqGIWwdzXCxPoN"]' \
    --tags '["7NiCTFSlJ3lBJHfm", "VkNgCO1mhB77353k", "IcqJsV6cG2mVqMNs"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZZiYtRTAcZErHQpy' \
    --body '[{"inc": 0.10494992374328116, "statCode": "G9cmTGj50NecSpEX"}, {"inc": 0.299105829295076, "statCode": "pnTxk8Zk8t3kEvZa"}, {"inc": 0.13588668816986094, "statCode": "7tDAs2KjrHQoF2uR"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'LpPw2em0kZ5dgUbX' \
    --body '[{"inc": 0.04328814288634808, "statCode": "SVdbxr78SrCL4Av2"}, {"inc": 0.36437819861611376, "statCode": "obViXluk9AYFMZEf"}, {"inc": 0.9385525712348146, "statCode": "IWizRaGvlAy9aI0x"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'Uiowk6BB2yqhYSTq' \
    --body '[{"statCode": "ULOHZTydbo0YKHQ0"}, {"statCode": "xzIViL7gxK4JqEYy"}, {"statCode": "q0sZuQdP4NjT3ZtU"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'THRS1MEukmOA1mXi' \
    --userId 'Wr4fhhWizPDyiRit' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'G9Ckd5UXClLOsFVj' \
    --userId 'trlawFQ2yHnauJrh' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'ZG945dKlcE17PxYY' \
    --userId 'gCKE4TJaOPI3MJb9' \
    --body '{"inc": 0.3905880868516587}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'aUMQp1aDJoRIyXHr' \
    --userId 'wNPkHjxONQWkQxbv' \
    --body '{"inc": 0.1782072366316816}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '3f57zEMQ039YBzAN' \
    --userId 'fOy7YgCjMP8FLwrZ' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"lBgtRlSojA93j5NY": {}, "5yianHWBkSsU8qWr": {}, "3QGFbIwWCK9iVG3R": {}}, "additionalKey": "aiMuBvI0dT20A91r", "statCode": "27sDfikSGpLqYNcR", "updateStrategy": "MAX", "userId": "Z5V2oTZ6feaEROf0", "value": 0.28898765661861425}, {"additionalData": {"xAwamNL9mlW18vJF": {}, "wqACJrhHMLEEjw5Y": {}, "rMWbojYvOgGXqNqJ": {}}, "additionalKey": "yrDJUsnWcPkaodGP", "statCode": "XdiDht7hmTV5mDIs", "updateStrategy": "MAX", "userId": "mQFs1oLOKO10rJ6Y", "value": 0.4322276762573053}, {"additionalData": {"1RomnCMnkHFzpLQK": {}, "U22CTkOe9leC5vgC": {}, "mMANGfabt9ab0O1e": {}}, "additionalKey": "zrJ6wNFgInBu1X0r", "statCode": "oyJP4hRECuoJIRlH", "updateStrategy": "MIN", "userId": "ROvtImMnGMFd8iFH", "value": 0.7746036127865499}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '7pOVXNQ8mf4ftVF4' \
    --statCode 'LunNwdw0BNkjJ84m' \
    --userIds '["ExwlUhWY63pLpdmX", "vasHMWbBcZfRornU", "qVOwcbCOSPegL7mQ"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'v9iYIWJzHgBBMwZJ' \
    --additionalKey 'yucBOP631PuNWv9Z' \
    --statCodes '["4nwLySr4N7ePqyNy", "AyNead1gNUqzBeFX", "CoCQ9Ryx5EhCXlJ4"]' \
    --tags '["rDkOpk741CjgjHUT", "AEODsyErV25ijFUD", "CxNM95gJmFHLhZbJ"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '8Pew2KkMcvczEc8k' \
    --additionalKey 'y65s30rTaReYieDb' \
    --body '[{"additionalData": {"GnPN9cVAEt8xy2JN": {}, "Em9Oop0IummQJZQu": {}, "YmXX41GYr7TmFCNl": {}}, "statCode": "GhAvKh0CYUYQNmat", "updateStrategy": "MAX", "value": 0.12376414647484058}, {"additionalData": {"6zRoAJxis1YVWqhG": {}, "eAdISjR7t6qBrdbs": {}, "unk18ixffN4tjp25": {}}, "statCode": "N72AypaljR58cC0D", "updateStrategy": "OVERRIDE", "value": 0.7514064456285688}, {"additionalData": {"ruh0u6PBigPATSWm": {}, "iKi74gEnx3gRSUHh": {}, "7Wt7k3nrCmZquJRd": {}}, "statCode": "Yv3TC4TbKvFQnUFe", "updateStrategy": "MAX", "value": 0.9040800213321264}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'FTVRjAhLt8eHjtBk' \
    --additionalKey '2J3QlgWypt34Y4FP' \
    --body '[{"additionalData": {"kDvAxcTQcIPmAdOR": {}, "9DJQT9sa5nVqyfIC": {}, "fwWPEcWGTLZ5zgF3": {}}, "statCode": "mroZLIBt2JdAfZS6"}, {"additionalData": {"XiWjghAEpMFGVjbD": {}, "Z6VdwtCd2UQM9Diq": {}, "0mnRGEomWLyfUHp3": {}}, "statCode": "y4U9LEe9EAaZOkYL"}, {"additionalData": {"kw4fPkticGTLtt4D": {}, "eL2eewmxBi7CiBSR": {}, "JO9vSGSuOdo78bZw": {}}, "statCode": "Kwg4KzPSwFNd0V4O"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'NIfuV78oogcKL4yf' \
    --userId 'HIakv9dKUaFfFQz0' \
    --additionalKey 'TKe7yNQE54uCRKmk' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'h2QSc8PkMiEX1BdK' \
    --userId 'Y8AhexYRZTgS8iQL' \
    --additionalKey 'jMzAGuavYVhusAb9' \
    --body '{"additionalData": {"nHTyAhVNCQNv07gi": {}, "RPQqHvQ736TCfpGM": {}, "56e3qnu3tyMEuP82": {}}, "updateStrategy": "OVERRIDE", "value": 0.23547317549192037}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"e3xxisPXNv881d5b": {}, "c01aNTmf6KpUMWsh": {}, "rBwIJvlaVRhhmH67": {}}, "additionalKey": "UnVrT1uYDciC3zDN", "statCode": "kcqe7Pl2v7mUdbPJ", "updateStrategy": "MAX", "userId": "S5VUtOfIepRfA5b6", "value": 0.9424786990087957}, {"additionalData": {"hTJGtDLdzoBjaQrM": {}, "jJvG2ueATYCNS4NU": {}, "gJJiFyjMhJxVTf8s": {}}, "additionalKey": "whDjEJSr3ywTbEat", "statCode": "mHLpsJ8AZhOLHp8j", "updateStrategy": "MAX", "userId": "ih2vaBALtMerBgS9", "value": 0.1468756454493263}, {"additionalData": {"S2vi0ZDcWkTOmcrn": {}, "2watNKEFdYMb3V5I": {}, "y7DWqBuHeQtGRxyZ": {}}, "additionalKey": "wHl4lrwzGX9WpEBO", "statCode": "CyrUtgsc2Z4JSUvO", "updateStrategy": "MIN", "userId": "QARAEXi5wFAWtN2z", "value": 0.09368947562057772}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'wD4aVTWj7CdfwyYH' \
    --additionalKey '7QnNUFSFzC0J4mqD' \
    --statCodes '["ZtwYhzYglAlg8N6I", "zC1qk8jzWBCWPhV5", "xtCSmPcHGJEtplaw"]' \
    --tags '["iIK02eJ7VCzROTpL", "vd42RxLnpqtWMFY3", "T3YxzvVA22xbf0yJ"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'V2OZWpnfVHebCdIl' \
    --additionalKey 'mfPiRFNt1uVmthi6' \
    --body '[{"additionalData": {"0Uxj3GX7xAvgYEUa": {}, "MzdwHccNW3Zvyjdy": {}, "3WFArhALzUApEp3T": {}}, "statCode": "QEPdrftdC2808sSb", "updateStrategy": "MIN", "value": 0.5297685522386694}, {"additionalData": {"ubcLFzkZmp6l7gEJ": {}, "54uHxJuGjUMK4v4A": {}, "kYpBpNPypreabKRQ": {}}, "statCode": "kgV5qIVeDETv1Ra0", "updateStrategy": "MAX", "value": 0.6242301813298395}, {"additionalData": {"0snt8zE23f3QNi4v": {}, "A5jeSpy5HjkIoxlc": {}, "Up7YSGR7LNBSnmxa": {}}, "statCode": "uBu0ki4onNWVM1wm", "updateStrategy": "OVERRIDE", "value": 0.8092282060657898}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'XjEbmdtfS2FTHYS8' \
    --userId 'APqMHcVBqov1DmlO' \
    --additionalKey 'tdQdkbhgzxyiuQ3x' \
    --body '{"additionalData": {"gYkUZaGZ139kyFy5": {}, "sw4SvymEsYVi5r82": {}, "tcatvVQZqs6diFID": {}}, "updateStrategy": "OVERRIDE", "value": 0.1770398669333093}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE