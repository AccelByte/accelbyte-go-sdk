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
    --limit '40' \
    --offset '87' \
    --statCodes 'X9x3xUBAq5BHOuLk' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'EvN5xOz5j015rYA8' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '22' \
    --name 'naDHgXpBTQnnIHA5' \
    --offset '37' \
    --sortBy 'NFfMxotN7W3TDg5B' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "0eUYifvsaXgkDt2L", "end": "1995-06-07T00:00:00Z", "id": "NsfUsjFeGiTzHa4i", "name": "Sdd8sXxMQMEZZWUT", "resetDate": 84, "resetDay": 72, "resetMonth": 49, "resetTime": "NUVTtOd9WbmCFVoR", "seasonPeriod": 52, "start": "1979-10-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["ke6rvcc0CkDWWvxX", "vkYfBSA2wrFnQANm", "vIAJzXnQtMFGzIp8"]}' \
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
    --cycleId 'sfOq4rYYb3e5wvbJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'TDdk1EDmJBGvYbPE' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "sScsIoQLMEbNn5y8", "end": "1987-12-15T00:00:00Z", "name": "6WtolQe14RLNfINQ", "resetDate": 19, "resetDay": 70, "resetMonth": 36, "resetTime": "GGe23UJA5LqIgIOY", "seasonPeriod": 30, "start": "1975-06-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'x6Qhvh20yUyoD1Lf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'FIlmy5FQcqJHsMoj' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["7kAQUkSBqDld1aon", "Ls3ZvUhU9DCLU7Jm", "j5QpXK4kTQLmTjPT"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '1mRuZbtIpIm2OABp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'v81fk6MbhGfFWkRr' \
    --userIds 'Yn8qEH5EGThM8xJl' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5442086316586076, "statCode": "ZaMKEFoJ7rfFWfwL", "userId": "u52m9rYO7Zlhb7aq"}, {"inc": 0.6623420648729973, "statCode": "sWNASvbiziM3Iqtf", "userId": "cFjBbsmLfSlJYWSG"}, {"inc": 0.9704059580259748, "statCode": "KGypwrWGPmHAzfTL", "userId": "xs5iXTS2soSygBGH"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4985858344463011, "statCode": "WLrmIfosm66GBspt", "userId": "G1r991852vdDGyUW"}, {"inc": 0.716806871408635, "statCode": "6qhWKJVzQ4vlIJH1", "userId": "lJEEVz3Hgu14GcZf"}, {"inc": 0.8533930795248894, "statCode": "ovbnlnuAjjFyQRcE", "userId": "edNlZr9BMdei6fiH"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'WOCvKb4YBACIghYd' \
    --userIds '["m3XkWlSPoJXRKSE5", "dt9muVSLiZp0wzUq", "gjtp530v2MgqDuBc"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "TX0mFAr61sx9hVNM", "userId": "0mHHq6qWo4Cu1qea"}, {"statCode": "VC7XHO32Id9Hvtrh", "userId": "zYPNalNku34IEz0a"}, {"statCode": "XmenIYn7k1ZEeuHD", "userId": "MDBPLx39fVgaIY4g"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'zXFjwvL6bQRHK1JH' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '12' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["Qyu6iFckcoNN7Ddi", "gjrMy1mEJ8aYlYKu", "NmWZiBmtBX5WPLiH"], "cycleOverrides": [{"cycleId": "GCPCMNhB6mmK5RXn", "maximum": 0.9112048510256189, "minimum": 0.10063560513660474}, {"cycleId": "CanfZsaQSperZiLn", "maximum": 0.10169080758396687, "minimum": 0.21918388395180388}, {"cycleId": "Npo67ZKdK3WpbHZT", "maximum": 0.5041879717477438, "minimum": 0.5220947500353827}], "defaultValue": 0.18267870675769815, "description": "e17fa91mqWI24bTJ", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.7854456096193274, "minimum": 0.48740529719494297, "name": "tkT7qYGoEkKysvSV", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "zql6oU8fELMNNL24", "tags": ["hmAvYhOf0lEOJCAD", "h2MJuN7ylHx0gMTp", "zOBWVi4UrglG6Tpn"], "visibility": "SERVERONLY"}' \
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
    --limit '55' \
    --offset '80' \
    --keyword 'I4C3E5Y4BgzJszVm' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FNFG9c9lagvJ8gFV' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'cfG26JLtmszMi7WG' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'BcTOCCtQVV5UTqcx' \
    --body '{"capCycleOverride": true, "cycleIds": ["xee6YphefBWnRXv8", "fL4nYCViUCwCIG8X", "NoYwJNX6cejWDYE5"], "cycleOverrides": [{"cycleId": "Zui9r30EkYIdsloD", "maximum": 0.09117684089258382, "minimum": 0.2097140747476567}, {"cycleId": "7mfHwu3zpkv0tAPd", "maximum": 0.741900441311339, "minimum": 0.776380780575011}, {"cycleId": "qpNzySg7bx5CFo7d", "maximum": 0.6703978696057424, "minimum": 0.17056465424595924}], "defaultValue": 0.668165401031107, "description": "FnMx2d0Eg3wkVeJE", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "py9nGs0Pvxv1JeE1", "tags": ["8DCeVhXPEkqFiXP1", "d08aZrC6RSAM3YYc", "bk6ekDsBrqEHxU58"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'liGk1kr61AqAyxrg' \
    --limit '13' \
    --offset '20' \
    --sortBy '9uiYR8IFEGiEyR3F' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'En81CBF0rI6pjfVl' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '8PZHohlFq7YL8kqU' \
    --namespace $AB_NAMESPACE \
    --userId 'dMHj15gTcTpgdgKD' \
    --isPublic 'true' \
    --limit '68' \
    --offset '69' \
    --sortBy '07Fu09u66jkkavnU' \
    --statCodes 'FZZfb7ELE18WbUOL' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'OTwL2JUX42YWsVQA' \
    --isPublic 'true' \
    --limit '62' \
    --offset '77' \
    --sortBy 'OGe72UPoIYLL8Lxn' \
    --statCodes '2qau8i4BjlqUFWlp' \
    --tags 'XFBehp2M0V12hhkr' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '4VgGtdqx0xU5BP7R' \
    --body '[{"statCode": "b4mp7Ir2ARcr4qGp"}, {"statCode": "l9tgzDg65wgLQg7J"}, {"statCode": "9uNehG0ZfIQs6T1N"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'PWSmZIHU1FijGpy4' \
    --body '[{"inc": 0.9712922910978927, "statCode": "nJy3LblTlmMnBDCs"}, {"inc": 0.7301983166710609, "statCode": "adcXATSa88XGGrdo"}, {"inc": 0.6401171052861229, "statCode": "Zmy7yafOo6WdpcAs"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'Jl0lokcPBezaSZNG' \
    --body '[{"inc": 0.5587598364698929, "statCode": "EQ5nG4g3tRusFwF9"}, {"inc": 0.38722224574915864, "statCode": "cP0zbOwWZtv9inW3"}, {"inc": 0.9047823514274249, "statCode": "NINqIO261WiBtH1F"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'upRFZwlOWkXnlTEx' \
    --body '[{"statCode": "mAWogjLRsmynedjy"}, {"statCode": "I4hkMQvwbssuAar8"}, {"statCode": "rsBWruCtQeZaQUwH"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'L4DVpEkXSMy7cjog' \
    --userId 'sZjb9vukyWPJq7l5' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'OgB0d6UfJzRcmMr2' \
    --userId 'wtMlszEus6mneNl3' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'JXcBKloJS3wRiByQ' \
    --userId '2cMyMUKKaCn5rMcB' \
    --body '{"inc": 0.4911491088992481}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'p8dHzP5D9AJnljEL' \
    --userId 'eBmW0SeY7wmNlINI' \
    --additionalKey 'HCTK9x8vqkBJDZqK' \
    --body '{"additionalData": {"qfF0CmOp4L0GkqZ5": {}, "9klFRGbShW0V2YJk": {}, "TY1i2ldVIdo7AWd3": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '30' \
    --statCodes '5zCy6Km4FW2c7Axf' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'LDGgZ6QU8tDK9nTu' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '18' \
    --name 'HceAW7hkiKfk1pTD' \
    --offset '20' \
    --sortBy '65D2jnsv5NR5b1ks' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["KJjuV6ppC7eqecAD", "dy2VxUTh7Ir0vtdJ", "ga4yUrWsUkVvflk0"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'IxxuaMkpN6kV75Fx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '7EP2tKW0LVPGN2QT' \
    --userIds 'bjoevgAGpdLbgyve' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5498907692339834, "statCode": "704A0Q2YHgnSVKBT", "userId": "fhIudiZx3uVpXMPY"}, {"inc": 0.5816353787290015, "statCode": "PRlQKWoLCd5pQSIg", "userId": "eCHf2o6OfAMhAIM5"}, {"inc": 0.1229358027661005, "statCode": "uY5YsWusrvqcRQqt", "userId": "fe85qNMpx9A6C1O1"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2860638617653992, "statCode": "zBYkeu4CBOTAxQjQ", "userId": "kM84XiSfkcI7iZcJ"}, {"inc": 0.9431157820031842, "statCode": "Gvep1wag7Ce6gQ0z", "userId": "s0moVk12C6Ilgeju"}, {"inc": 0.22797588452594553, "statCode": "CBnZjLx8YQYZSbNJ", "userId": "6t7ipwLMFzYZ0IEq"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "fCD32cbq2SKiI5LT", "userId": "wlk79438sDIQteLa"}, {"statCode": "AhOwTl8pkI1G9Jsh", "userId": "1Hjn2Bx0qPwtK97W"}, {"statCode": "9MOgSgRnyZJFW65l", "userId": "XlcBt2dmbdgcPuVI"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["LsLQ49Mgt3Lk1nae", "Rgoj94O15kBU1pH3", "VmeQ12l7FUjH6Kns"], "cycleOverrides": [{"cycleId": "W6gAFszUHuZMKlTP", "maximum": 0.4881764659546707, "minimum": 0.9850019773754669}, {"cycleId": "cdxZmGTfqavpWjED", "maximum": 0.6194687644073957, "minimum": 0.8673539492147377}, {"cycleId": "6EuLYAIXwx6Teqhj", "maximum": 0.13402875928651858, "minimum": 0.361554563848986}], "defaultValue": 0.35634517159682333, "description": "aZ1FEJy6s4fDSTyC", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.8387209507450621, "minimum": 0.8143663294652016, "name": "xibpgMR75cPj7Crm", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "fRhU4YZbRwQEQUb1", "tags": ["quogvsYndDHnfaNX", "ysx36SJDlrORuxVq", "42OdYK38erSvEtTd"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'rGDYf8MvEnNqrpnk' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '71' \
    --sortBy 'ViqNgYQOScLHBUTX' \
    --statCodes '["FQhLq1I3Ncrwi9iS", "B1TKVPJshOVlPv43", "S9A2YADCfqsNd9Gh"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '66' \
    --sortBy '6I9cJmD6qxO0ji6V' \
    --statCodes '["r7U11o7MXnMi6zzr", "B9EVygt1blQcXcQ1", "4Ke6CnHdL7L02wKx"]' \
    --tags '["Usbg7yJNtsPkpVlC", "Hf3IACQDb2y9vEto", "s69ncIUXqVWy6wzH"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'LSxFrm4ogv1Iqy6e' \
    --statCodes '["AhPjvvnaAhQmB1Ri", "7K4wTaGfNrgGd5Ot", "0RJTpJM1HFt7SCsv"]' \
    --tags '["EiXtlyV29iktyajw", "QeF6eNqCLPa8Yp74", "HO3r1hM5AshxG9g8"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'CW5Lz34kKfA85YaT' \
    --namespace $AB_NAMESPACE \
    --userId 'tlNUU9DqwaRVxVnl' \
    --limit '100' \
    --offset '86' \
    --sortBy 'z8clDmfjaIvKkgZi' \
    --statCodes 'JxSlAdg4jnIheDT7' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'rOiRbN9kE6jUUOVy' \
    --limit '23' \
    --offset '13' \
    --sortBy 'i9EOiXSJWSsTyFtV' \
    --statCodes 'pXF5GI7ADf3F9dQy' \
    --tags 'XtqgJqBB2n8u2bC0' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'MPTmEURuah71ce8g' \
    --body '[{"statCode": "tlWQJdjc8cbWLT3b"}, {"statCode": "NbUleAekuofqV51n"}, {"statCode": "qlurFcZkM38PBRyj"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'NgEWm8XZ7r5aLJ5r' \
    --additionalKey 'pHG8qRb7rVrKYmg4' \
    --statCodes '["mBmdA0Dz6uYl4CRe", "xMVYxlB5wjo1jIli", "inldiLMlIcnVUzRI"]' \
    --tags '["LN4yLo0DfPMwqzXF", "Eb3gDzJ3PnKfseJ5", "YHxEMMaS6XDahbCx"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'vdKNN9B0Wl2YFpH7' \
    --body '[{"inc": 0.7553448287175705, "statCode": "h2P2YqONyuMR6591"}, {"inc": 0.5349418693017524, "statCode": "DvqKaiLHU5ooYa2A"}, {"inc": 0.4143140729676117, "statCode": "FugzO5yKzdIHDTD9"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'M8YeZwSkvI5vt0Gm' \
    --body '[{"inc": 0.31092974016010677, "statCode": "jx1cFZ3hVoSBLRox"}, {"inc": 0.8457334104586263, "statCode": "rsoMNxNUZAMOSD9f"}, {"inc": 0.9362476578535498, "statCode": "vcffDCIuSWizv746"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'Zs5GxS0byA69scED' \
    --body '[{"statCode": "ILz06heu7OCG7OmN"}, {"statCode": "nqNfRthCXKy3fA6E"}, {"statCode": "1s1i965H0BZf11nk"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'B19wKlHJp7K1dq2a' \
    --userId '1SIeVqpSyGlGD9Js' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'eEgvd2HNHDXXX8ym' \
    --userId 'rI87K6rgjtoObFRg' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'impMTDvgWzrNKZVg' \
    --userId 'q3iCtXaUOvvaRrhk' \
    --body '{"inc": 0.3038549370697412}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'cpouzRS0lm7ta9hl' \
    --userId 'i7oT15CQARaLLy9O' \
    --body '{"inc": 0.01677447048635039}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'p0HMg1VdmwRV4wPz' \
    --userId 'QHPwKbbwOlFtocyf' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"OyM5jN3pIMQUZvCd": {}, "67Ep8KYGOWD4BnaH": {}, "yikUaxemeH0EhUFZ": {}}, "additionalKey": "OElcagoGwwFfOUAu", "statCode": "C383CZ6tAhZFsdIP", "updateStrategy": "MIN", "userId": "e2wKXoAX62ehf0rx", "value": 0.34904811897927857}, {"additionalData": {"sLugrrlwYrHbstSb": {}, "x0qChdpLDWCJisEA": {}, "hLAUX1mM0ud9d4jH": {}}, "additionalKey": "vKXwfJeUXVHTyVQm", "statCode": "FYj5cyCAcfCWlp3C", "updateStrategy": "MAX", "userId": "AISv28c12zJZun8n", "value": 0.43938138725423237}, {"additionalData": {"ByIzTeALlsoAmJAU": {}, "NsCWVDDyj42kNP06": {}, "nbJqfYa8hvEIDz7f": {}}, "additionalKey": "sIEg6DMufvHkZe2v", "statCode": "CTZyv754YXsCFxoE", "updateStrategy": "MAX", "userId": "k7vFMsRlqhNllZAq", "value": 0.5538124801386572}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'v3VsltA0J39pKbWt' \
    --statCode 'j7yzQuTSZ6dyDrPB' \
    --userIds '["A10xj3bLSiPc6tiK", "aptFNWLoJK2hcMAK", "sb8xPJM7bJrp4WLB"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'qHRqQ4vXlxOrssgm' \
    --additionalKey 'HGzghlGhrNvv41uf' \
    --statCodes '["MfHnV3pQMYBkycdL", "U701DwaJP1J1NKkb", "E8B5uF5GO7fBjplv"]' \
    --tags '["wHTUrJWvl1cl91bu", "TDncR2ZYnXI35Lrm", "zCvlE0ONOPPDzeyf"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'gpSvWuhlTnedZEqg' \
    --additionalKey 'pB7SGDH55SUEQl14' \
    --body '[{"additionalData": {"0iw5hTocrHNnCdnG": {}, "JGCfEmBbg5kv1t3z": {}, "XbNkXDlKlRp5bRJO": {}}, "statCode": "veFwu49jb23xiLxR", "updateStrategy": "MIN", "value": 0.044778156064057884}, {"additionalData": {"aKs8NfD2nFZFYhq3": {}, "cPBovR7brM4Nk67M": {}, "VM6K1VfhxxIbsiDw": {}}, "statCode": "EOB1gYrfOVTTkVZk", "updateStrategy": "MIN", "value": 0.08583447574568237}, {"additionalData": {"hwXz6PAafoKDNDmg": {}, "GxoQNeifAoDGIcKg": {}, "d3Il38j5CE1GAYwe": {}}, "statCode": "9AMoqUyGzF2ewvmF", "updateStrategy": "INCREMENT", "value": 0.0010562671758356235}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'Is3lPzw5DpWuWRSj' \
    --additionalKey 'kVfcyc7Djgf1ZrBJ' \
    --body '{"statCodes": ["5q1OPI9nvYmCsCQ0", "XCRTxG1cpwaBsxWF", "AUbAzUgRiMWukh2V"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'NXg4EsdY3YFioCrM' \
    --additionalKey 'moa9kfxwOU5Yq94x' \
    --body '[{"additionalData": {"yF8KgU4RACmyUcvy": {}, "0wBbZRrlLs1K6o6d": {}, "TKzB9m4qIMB253TN": {}}, "statCode": "aRbayOABE5HEoJPE"}, {"additionalData": {"d5NWrcWHTvoEocIg": {}, "uK79uJ5cm0Dc6BYv": {}, "j9nQ8CHHgPexUrhe": {}}, "statCode": "ayqwAAZCiXwiANxF"}, {"additionalData": {"CKNVa6AngbnoQs7c": {}, "8Ctwe1kRaUVJ09br": {}, "A9cLDEezEeirbTwd": {}}, "statCode": "KlZROQnjPPOHAA6u"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'nX5v6uyQqHkbcAnw' \
    --userId 'mlpFAHhGyJhEIa6A' \
    --additionalKey 'JJCJp3eFwVbRKKtB' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'WDfKh8fsCCJI4VUG' \
    --userId '2Wq9ygbHoq5JGcqk' \
    --additionalKey 'BVsG8tWIZD6yYPJB' \
    --body '{"additionalData": {"vtisO3ni0uRxZjmw": {}, "CVMql29hzRbrNlQf": {}, "6ku0CGXZdvdfHWM9": {}}, "updateStrategy": "MIN", "value": 0.7769709588562164}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"bfxIhe6i2trkIQVh": {}, "RgD5dq7C5DBzDq1g": {}, "vlnZBGYSfWjapwSN": {}}, "additionalKey": "lMVgWkDS7gCTSSpk", "statCode": "AhPwKCrUK9YAl7YC", "updateStrategy": "MAX", "userId": "NcBHKuVMwpvCrHj3", "value": 0.7846093649473155}, {"additionalData": {"NQG8gizNLzq616uF": {}, "URqP4m1BFWpjdMDz": {}, "qVrK9ebhsiJjRx7a": {}}, "additionalKey": "MA9ScWYjJLx2uwXV", "statCode": "WA0sbanpzjlqv2uf", "updateStrategy": "MIN", "userId": "ATcbkTWGLihhVdpT", "value": 0.08863648975045368}, {"additionalData": {"Hws5nJDUgr4QHSep": {}, "wldhsBoj46l76Uxr": {}, "tKfiLQgkxgLxOyZk": {}}, "additionalKey": "5GRpaA27Fn3UeW4o", "statCode": "2EG5ayBmN1xU8gd7", "updateStrategy": "OVERRIDE", "userId": "Q2f09OrH4oRVSYkj", "value": 0.8139377414660723}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'JlBj5eOsH3d6MMXZ' \
    --additionalKey 'ihFRvkGZTC8bXNb9' \
    --statCodes '["0CaFGHDP3HjCpB5H", "6iQ0vDLQRlS2mgVY", "iqxo6UqOLsEXIEjx"]' \
    --tags '["dTxrkbiNGRsnoK1i", "r3iDbRXCvXEm2mqA", "9IG5yUgYusSD2rv2"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'IhWEeEMM40HW8PFD' \
    --additionalKey 'OacRzzFYKAOOv3Yr' \
    --body '[{"additionalData": {"M1mlv2Tzsn9Wh1hI": {}, "tWChwjYOGyNWcRvq": {}, "5Ijd7VWdwve8gNpV": {}}, "statCode": "hawfWOm5N5SIfTNw", "updateStrategy": "MIN", "value": 0.7893255542396443}, {"additionalData": {"rEF8MjPkZLoq4caN": {}, "L59CdNqprSUghSi2": {}, "cwM4EyU4nMjsMcUK": {}}, "statCode": "hbXEdVfPcYg1n3tt", "updateStrategy": "OVERRIDE", "value": 0.00864449579391724}, {"additionalData": {"MZGLmiQHY8xIDg69": {}, "BdrK8stgXfpKDfLP": {}, "QL4pEjWjD7dfg6Gg": {}}, "statCode": "VbMTxcslE9ewlldz", "updateStrategy": "MIN", "value": 0.13505820990080797}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'NByrInnKR0zmtKpK' \
    --userId 'JmAt66SdG5Mo02Ss' \
    --additionalKey 'rMxndbWvozpfrz9L' \
    --body '{"additionalData": {"Zbuj72WfOpLQYD0B": {}, "3eXCJvMP83g1jHy8": {}, "zcCArsNezfio1jPD": {}}, "updateStrategy": "OVERRIDE", "value": 0.9897768972623869}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE