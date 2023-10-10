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
    --userId '7ylM4jpk9xBOipTt' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'OmNwh56D6E5GAI0w' \
    --userId 'mctBNW9EPD09RDtM' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["0NqK0WngQeu796Xs", "I7g48suiUM9i2NQX", "4oYYXrgxpsZk8mqt"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'BPLPADv69swiEobS' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'b2LBfuT70O0bnTCb' \
    --body '{"achievements": ["UC5RZwTNQQ4A14Iu", "Slonp6bQabEgueig", "agRioszna712Xsvg"], "attributes": {"mWxiiqHD6d5pwanm": "A6MhdoFDLWLE6o2n", "kkLgfuKLldbys36H": "khVQgA6RI2eCzVcc", "DJSySfSOhB4Qdilu": "cGhRixIIaLt8tLZC"}, "avatarUrl": "qSQjSLWloLjZJBGQ", "inventories": ["9tGcTQJfwtFr01cL", "rYHom7sXEbmSw5tf", "7bXAJ8PRSIxzk6o2"], "label": "3LTRUgmRZI8sisyx", "profileName": "pzyxyWSqnLecpD1S", "statistics": ["FdIXFKUzS51B2YMQ", "M9TsHg2mnvMlx2wX", "ZTEPzsEDumoQIwzs"], "tags": ["psUjENWkQddx3taW", "Pfkf1TGkLXzjQrbr", "Tf8lzKhsINDG6Imc"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 't8V17dkUab5UD5oL' \
    --userId 'bmCKLfCOuYzwgJTb' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '50PKS1ys0pEnvN7e' \
    --userId 'TchSrNYlw6vITSk0' \
    --body '{"achievements": ["1ng0TK83N4W2gP9a", "MpKOS8zTU8OD3B5C", "Prphe36R5n9nrm9f"], "attributes": {"it158fDMCw7jwhsB": "c1iTM1VrgpzBrBx0", "4nwC5tgZHkg9zSzO": "dcDIppENoX9PVACJ", "ohgGVcTlUnj6aFXI": "TQcIeQYxj715H8Lg"}, "avatarUrl": "SqwzkUU9kVNjJS90", "inventories": ["QN2bFuzKVSfmHWAc", "a3JFNujzqUZJQHIo", "FJeD854ZB2TU0Z7A"], "label": "SpWGaMlYTXi9Eu8u", "profileName": "OXNWBrBXqlRAk74v", "statistics": ["74voSgMmZwB27e9O", "qciveQVcZTv2OPey", "aAxSiolPErzOZGMl"], "tags": ["tE0dBHNpz7t0KqIg", "Q5ywY9SvDbvSy3fn", "1VPbUlHP8dAJzmGM"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'tw56sGG04OBUW7JV' \
    --userId '1cpcwn8E2obDZvhv' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'pTzovqbBKJDUMShP' \
    --namespace $AB_NAMESPACE \
    --profileId 'PMR2L9IGAafnnTec' \
    --userId 'crTEpL5Hjm8s7Tew' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'mdFXDdvtgqjhwG48' \
    --namespace $AB_NAMESPACE \
    --profileId 'pCa8ZXtR7XOEomre' \
    --userId 's8d842aUecasEuuE' \
    --body '{"name": "4kGsv5Y5Hjvj2u8s", "value": "tLuXlD4rtObDI1yN"}' \
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
    --limit '20' \
    --offset '72' \
    --statCodes 'kMz3gSNapd6lbj8w' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'ZZXTdGjN9chgUhhL' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '28' \
    --name 'CYcBtrbqSNVUjHqw' \
    --offset '94' \
    --sortBy 'tNR6FpZtcFrjnMlC' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "ORuGVJK7v6FnecuP", "end": "1973-03-28T00:00:00Z", "name": "tpcchqB9S5JhA07N", "resetDate": 45, "resetDay": 2, "resetMonth": 2, "resetTime": "z2aHZpWS3zyubzyv", "seasonPeriod": 67, "start": "1986-10-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["FhewDCC6s5yzcq7C", "LTXzYWic5jbYHVw8", "DA44OwUYAqfwU3lE"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'bV8SvNhH8bOCOs9I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'OAymEYLBaavIabxu' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "nhq1xw7GL9R78Hfi", "end": "1982-08-23T00:00:00Z", "name": "bn2WBO0tIyC3jkHF", "resetDate": 77, "resetDay": 75, "resetMonth": 10, "resetTime": "4VrukwbOS73KqUiU", "seasonPeriod": 19, "start": "1995-08-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'lxjdFcnEOiffWpnW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'DhrYOvBfpQURx3Ae' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["HrNDu5cwr2jz5V2m", "ZDbELVFz69syJbES", "omntCrYx5V6Mp6aS"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'QLshPC6GqE9BW5Mv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'QzNscG6JrngV9g5b' \
    --userIds 'Et99igWrxKncSb5h' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4791236356050471, "statCode": "1iVIwW4sj0lOMg48", "userId": "IdKBxT3Lfzx4kqsT"}, {"inc": 0.040439412833681576, "statCode": "xmI4m1LNvwjqEACV", "userId": "oSmK9bRwdGg3JnTJ"}, {"inc": 0.6689100637205028, "statCode": "6Nkmtv9oAMqIe7Ar", "userId": "mjn6SH9aGN413TZE"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9343981238197298, "statCode": "YQZBFXRyJawUaqRN", "userId": "h4dceB8743YgVT8c"}, {"inc": 0.8598380632754471, "statCode": "MyWvNN3ucjMc1tMs", "userId": "RXuRlokpWJRudLNz"}, {"inc": 0.8196318918551606, "statCode": "niIzkWF0mV4KbXKk", "userId": "ziww95RZwblwuJN1"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'B3fwBukPXzdR1Uoc' \
    --userIds '["friFriLjcwPFL66P", "GH6Hh2QJsETAjOjX", "LwKVNNLGgUgyzMhj"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "qRO8SBEA7JX0qCGn", "userId": "Kg3hARh0poreGqwe"}, {"statCode": "VkK4Tk3ncHHXFKVq", "userId": "NLHtr8kQYk0hXhks"}, {"statCode": "kTNls9On9dhMM97U", "userId": "BsnyCUL013yErjC8"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'rOHorKXF9GU4BQVY' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '59' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Bcxd9k2v8Nou2pRZ", "o9PYvDPf4Yy3SfWo", "HbWqJLXeT7u0BlXS"], "defaultValue": 0.2053707170892315, "description": "ccc3m5pDioQd9UaV", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.625786003772984, "minimum": 0.05613410824140186, "name": "xDs2ZlAyvcaX94u4", "setAsGlobal": false, "setBy": "SERVER", "statCode": "TqXOzvZ23itOQyUT", "tags": ["rNVr5JH2VmZ0XrPx", "rJ7bvL66tHyAHsZE", "Lg5aDTMj77geDXgw"]}' \
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
    --limit '10' \
    --offset '95' \
    --keyword 'Qx1w9vs9ocrbah3K' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'lCG7uHbHoQdjCC3F' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'RCFkfCPWKgTTsNFc' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FeNIfkYjCj1vDP7q' \
    --body '{"cycleIds": ["Ga5mAY2T3CBgGS8s", "gJo7yBVJDxJvfpQr", "roRvklCL4Zi2poZQ"], "defaultValue": 0.4246502809765952, "description": "ErMrg8KPzKIWKyMN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "R8SSPbb9i6uptWFw", "tags": ["tkwF1YVUKW4uU8MX", "99I0IsvPAU3EQfGp", "8Ul2t5yMgPXStdYd"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Pp4Z01jPCDU7jr4z' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'JCOZ8B4r3iyNpCB5' \
    --namespace $AB_NAMESPACE \
    --userId '6YHwS1dy3gIk9gTa' \
    --isPublic 'false' \
    --limit '97' \
    --offset '97' \
    --sortBy '0TqsuG8txpZXxdCE' \
    --statCodes 'LQjZSIXtA04IZx2b' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'DIC3yJt3sadUdNJY' \
    --isPublic 'true' \
    --limit '82' \
    --offset '65' \
    --sortBy 'thprigIHUjUGgz5S' \
    --statCodes 's6590Ts0oCkAdx72' \
    --tags 'Or8fh1upZoTnsDlm' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'rLc4bcxyYxi6FiGQ' \
    --body '[{"statCode": "4XasOJgsOUCSVRoB"}, {"statCode": "VipPi1iArhpeyIf5"}, {"statCode": "5VcvrVVjR4YKyrU6"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'j5c3UviQfE93hEYO' \
    --body '[{"inc": 0.8312484759267178, "statCode": "oSUopa4OCpooPa9C"}, {"inc": 0.11758080519852065, "statCode": "MU2axy4iZJ2xJZ47"}, {"inc": 0.6857553522375988, "statCode": "wtCBhqYcjd7HRjmI"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'aSsrbIfY8PBZrDyL' \
    --body '[{"inc": 0.9607549071173501, "statCode": "tXGts6mQPq6uJ6eS"}, {"inc": 9.335902567020327e-05, "statCode": "20yYspaGYfJ2FsR1"}, {"inc": 0.5376319491901418, "statCode": "ZglU22hMNCFOicew"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'AjFcPbNQb8hesuhG' \
    --body '[{"statCode": "VbUT7D34ZAzBHlkV"}, {"statCode": "gjcfB6pdG4L7iaF9"}, {"statCode": "TsbxGJfnirozpFWD"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'lKYa5Y2UBz1WpvbS' \
    --userId '3QhLUiFHgmsMUoIZ' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ziBR3NoC3RGWhhqA' \
    --userId '0z5mAugIhspoHk7F' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '02mW9oUxoPGPEo1X' \
    --userId 'erpRqslUFYVAHw3m' \
    --body '{"inc": 0.19718167653528262}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '1m7zuVyuF0xwf6Ue' \
    --userId 'aB0ofg5fDIAiRVlE' \
    --additionalKey '6bhRym8j0tsJWDiC' \
    --body '{"additionalData": {"PqpNLYpfxKd8ujJs": {}, "Cgmwgk3Mkj0Di52Q": {}, "CXXHynUSdq8yECSx": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '27' \
    --statCodes 'RM3YDxt4v080lfBf' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '6T0IWlSGfg0loiQl' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '40' \
    --name 'ocVQq2hRYKJxDASN' \
    --offset '81' \
    --sortBy 'N0rv8ucGjqKkJPmi' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["OCJ0fK7ZzwZKctPU", "Uq40GqiCWtkwtSdf", "g3qorQI1k6eZd3CV"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '8SidDKHrLeeHlNge' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'WxBi5YIy1YgRzZwU' \
    --userIds 'rtZ4bRMjrb8bUY87' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.18357546522101542, "statCode": "QV95sypQruGjUyom", "userId": "cRsYybp4u2gimzdg"}, {"inc": 0.01750294968199595, "statCode": "4SgtZsb4OkuRppBY", "userId": "3nj2hxETQpvZxDxl"}, {"inc": 0.7113111387866967, "statCode": "RaKute997uKS4142", "userId": "ScRoDUtLdb8YQ60b"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5592916794273144, "statCode": "0wGYANOKCB2fRGKf", "userId": "gcSLK0axF6VJAwkl"}, {"inc": 0.5862269134861265, "statCode": "DJajrzPm0SRl9Lkf", "userId": "Uxxle7B62v7thq9F"}, {"inc": 0.3116233121319679, "statCode": "FIeLMz042D4v18uZ", "userId": "vButGUr6wd7hW7lq"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "2j1VP03ME89tZPT1", "userId": "zvu2wlpaVL7Wk2Vk"}, {"statCode": "K9uWdG7xlbEKPZWV", "userId": "rxCdEvr106UFbfA8"}, {"statCode": "nXikLtyss0DWQnwK", "userId": "NzLEnUPu1FrPzsCR"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["30PuyJHc78ING3WH", "a9eXLUpmqe5kqThD", "MjadjNijn9QumSCH"], "defaultValue": 0.6606417751970204, "description": "2iKi4CxSvasaA2h8", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.11683633927457227, "minimum": 0.8224535049333739, "name": "Zw5QTBIle6Dcv7C9", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "xJvaqAl1rdupGIfJ", "tags": ["cEQHzG60Px6hpC2V", "ZMnKiZDtpHHlIhuQ", "eRwfjTObGJXiElpq"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '2nGBgf80m6KbuLie' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '86' \
    --sortBy '1Kxztzih6pyl5L7R' \
    --statCodes '["J2xksDdIgc8g03dY", "21h5PvDOwf0mHw92", "UkvBf3fKpUXO2CPR"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '14' \
    --sortBy 'm8q4vBUnsx4nXI4I' \
    --statCodes '["V9irSAIgQJfztcZd", "UiAyFxVmJB4WVilk", "WgKay6CeAPV7RqpV"]' \
    --tags '["KiPhsq04QWkjtIdD", "YA2F2mBRvICOPPVc", "ifcqEBP8FX2vXdZR"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'Z3C5L3TTNb4k8iHH' \
    --statCodes '["eoUs9PlUm4HIXzlq", "V3rWZnSAgcCg6mq3", "MzSPPvPkJAp0rs1g"]' \
    --tags '["nG07x5tGgWF1mpNi", "ocpBNOIaNcF6VfK3", "ZrbbgAAWeBztbuF5"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'RZXRUSAt5gpe2ZEo' \
    --namespace $AB_NAMESPACE \
    --userId 'ZcV6ukgOc1KMWBBf' \
    --limit '35' \
    --offset '7' \
    --sortBy '0q2VCFTGXRCPNl9H' \
    --statCodes 'zjzIF0H30Tjowqo9' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Ptictvd2QnwvGwTa' \
    --limit '91' \
    --offset '66' \
    --sortBy 'VNczutb6lnPHuNiu' \
    --statCodes '6Y2AXQNNwi4c0ZVy' \
    --tags 'tgDxElIxxWvIhz9d' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'DyHGLk3DWvJQ6SnA' \
    --body '[{"statCode": "yQdMzlSYrqJvB4Vb"}, {"statCode": "uxDDJH61XzddyCwb"}, {"statCode": "6pS6ApDCriXdz0VX"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'ddiTsVlXbo86FgZ3' \
    --additionalKey '44i0uUYpXUxgYsmf' \
    --statCodes '["v9ZNa8CuFqagFoM0", "tOauqv90nYLuTvZi", "XcY8u9xYeR3qRycY"]' \
    --tags '["b8vZhBxt9ZSrXewW", "FtAzlNQhcQlpWOlr", "sZGRAkiYbQr7o7YT"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '8eRUI9og0NE68IlR' \
    --body '[{"inc": 0.7539131972571088, "statCode": "g5Um2T7y6IG7TlwX"}, {"inc": 0.18879771332805528, "statCode": "MU2Gfa5cZsWUGEwo"}, {"inc": 0.20257782721816198, "statCode": "t4maA7mdIOqzKXLa"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'TpoZWv3G5CUCNVRq' \
    --body '[{"inc": 0.23066545518249781, "statCode": "aUj8C5gfm0jAypxa"}, {"inc": 0.6864546950115491, "statCode": "XkjLWdeb55MzkMXS"}, {"inc": 0.1667551539214005, "statCode": "9C1xe6Z9vdAiYfqD"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'd0yvMNVGeJJWeghN' \
    --body '[{"statCode": "3UYdpPh0fPHDYFep"}, {"statCode": "VzJuQtXqa8IKQuRB"}, {"statCode": "Ylv2jYBdp3tyOyF4"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'V7baBDJHLTuZvmL8' \
    --userId 'nHrt3yLnw6LKqnZW' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'w1j7GZkfvjhlN0CQ' \
    --userId 'nPfLBbgUxBq8scPQ' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'r2xDHPb5ej7XChrW' \
    --userId 'nvtlfpAJchImv80H' \
    --body '{"inc": 0.5199175003844702}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'cWU69fsx7Dsc28Do' \
    --userId 'YYVb1MW1seIwu7LC' \
    --body '{"inc": 0.3664913424352395}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '5HUh6yMqWwNM6cCd' \
    --userId 'I6lzwL73pD2bayHf' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"hy5W4n30gqHjaf8M": {}, "MkJCTXUj79uN9iJO": {}, "g6rHiKSzth89zWo3": {}}, "additionalKey": "QGQmDMxwvrLVbttb", "statCode": "dKCm4cVv0UmzbPmu", "updateStrategy": "MAX", "userId": "ixfYJtIhjFrpnIqo", "value": 0.12713867637130838}, {"additionalData": {"bVavmAPKkRfyIeUu": {}, "lHHbMcCDy9fZ1xau": {}, "OJmvENDODZCuKPWF": {}}, "additionalKey": "5gUm80xsbyodDGUa", "statCode": "dx3XVdUXGvj4MRGw", "updateStrategy": "MIN", "userId": "dRyGrmRw6MqIrcl5", "value": 0.2963246120180486}, {"additionalData": {"g1c1fjbKOxt5Nma9": {}, "3aCSdUUJMweQ0SqP": {}, "u76elInXhMRK9ky7": {}}, "additionalKey": "pz8bDdXeOsnoWTZO", "statCode": "vAC6MxjXrtXNxFZC", "updateStrategy": "OVERRIDE", "userId": "UdfwmIAXWnIN4qxY", "value": 0.9628703111140579}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'Wn3DNrFnvH4XTs6s' \
    --statCode 'I4k0oxUShtIWUNgv' \
    --userIds '["WYhsVBJ3EgCMIM9b", "xgeNu4NNbRIdQ0b5", "fnxeh0WO8SfWNFFe"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'QkWxhLts0AwmNvJM' \
    --additionalKey '8506jO7SNRrMDjDC' \
    --statCodes '["sK0JD8SW2U7njOS0", "cUxFYcxa8fRXKMjF", "U4ElaiNwtIlBuIsF"]' \
    --tags '["1YOrupILEOvsUSD0", "zwRoChln3j8BBV11", "OfD6ZFggLrFs72T8"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'v4dYsZ8MllJUAcfT' \
    --additionalKey 'qD8nA88Maj5nWDlg' \
    --body '[{"additionalData": {"VGOafIJmOhjSMRpU": {}, "wSzQhkUk1YWKIhBR": {}, "O3bpxVPibRwANkC8": {}}, "statCode": "KbBfXHsMjJMHmbN8", "updateStrategy": "MAX", "value": 0.32328550043055115}, {"additionalData": {"Clx9oFRIfrHK5yhc": {}, "CND32WPbhK2UeEUz": {}, "qyzr3Ni7rJL6QOAZ": {}}, "statCode": "neuxAPhVwkMs0PiI", "updateStrategy": "MAX", "value": 0.8571560626586063}, {"additionalData": {"3vfqgNOSpIqEz4GE": {}, "0G2xxNprbRkvG7Hp": {}, "IkHeTZV2J5vxTqK3": {}}, "statCode": "SrptJyZGeRMUFQXA", "updateStrategy": "OVERRIDE", "value": 0.9490476997175289}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'WlRPMSTOFqCwfuR2' \
    --additionalKey 'AK4lTzl6rliHWyCh' \
    --body '[{"additionalData": {"pnr7Dx1PJYloypQM": {}, "mgKn5Y9R6nhrMUcp": {}, "uTZrmRnLVWBNakbI": {}}, "statCode": "IVRuT0anET4X1XrU"}, {"additionalData": {"I0CMysGX1ISdzn77": {}, "7BskpQTnE2vLwiE0": {}, "KDZQt2Nc3ZgrLt98": {}}, "statCode": "5PeYjPlk8HJ5OXZb"}, {"additionalData": {"klQA38u02Q0FZnMY": {}, "uZgIOztBOJ4kxeEF": {}, "NckCdpiGLTmU23lN": {}}, "statCode": "aFGx00efUw1lgWzE"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'woR5cDci2wtgMEs6' \
    --userId '6zuOuTpHPNAdfDOx' \
    --additionalKey '0gxs7pMMnz3qHrRq' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'PxxmJL9Q3rZgsXau' \
    --userId 'hzceZ3jpCZvskQJM' \
    --additionalKey 'X3nXDgbWKe6Qt2bi' \
    --body '{"additionalData": {"2UflHe0kAZ0D7ZOd": {}, "kYuVH2gSCMuHt01s": {}, "YvELIlhkEt9a8whJ": {}}, "updateStrategy": "OVERRIDE", "value": 0.7923378272481807}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"qStpZLcAvQL4aSq6": {}, "3EkSQETBjeI2QIZd": {}, "kB1LwzNOSbe9VHNe": {}}, "additionalKey": "Klxux4Wo67Rq9QUo", "statCode": "tfMLGZtMkNTjEWj5", "updateStrategy": "OVERRIDE", "userId": "142ayxIqyAs5Psf0", "value": 0.30023593655650316}, {"additionalData": {"Pi8cEkF19IL5aVZM": {}, "l5oSVx2sqbSdn54X": {}, "W9AnvC8Xjztbfe0J": {}}, "additionalKey": "OSfDzWAZcLnQn1DN", "statCode": "NQor1H3CmLE8o9JC", "updateStrategy": "MAX", "userId": "K4MpfyAD8k3KA8HS", "value": 0.43401438553755567}, {"additionalData": {"nBATzW33UjjUoGOn": {}, "6oHlJ5qFYFf2hTW3": {}, "83440DNbH6o6H8NV": {}}, "additionalKey": "qKL4QY7chXreuTkJ", "statCode": "2daqUlBnYydmnqFp", "updateStrategy": "MIN", "userId": "3xfiwxyjxPII6OIG", "value": 0.16845266859286845}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'QFalKyjYSCTerAKG' \
    --additionalKey '7gvng4hUoF3kVPaf' \
    --statCodes '["D2YpLl1w2TkRDivc", "QnKhO5pI2Z2LU6Ar", "kaHkL5XUtFwOvSKm"]' \
    --tags '["gTv4g7OTCWOBKTCC", "MH9FZh5pkVpMTejx", "pgR0vRQRrgqnV439"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'F4oFSDc0NfQXcicl' \
    --additionalKey '0CuXfN8VRSvvUkcz' \
    --body '[{"additionalData": {"WWlsfIhrBkE4VxgX": {}, "FRdl1wVULHnPwLsn": {}, "iD9aFOCCHlnKOZre": {}}, "statCode": "RQJ5agJLap9fVpTU", "updateStrategy": "MAX", "value": 0.3562463047033809}, {"additionalData": {"rB0KiMJVlFg8pflh": {}, "kyGkHikRNKkbXxZa": {}, "e38eLpFsMTMt8t8G": {}}, "statCode": "RQxe9IgtjnDe1dRW", "updateStrategy": "MAX", "value": 0.4731409285318021}, {"additionalData": {"dMrHfGE9jqZS9CWG": {}, "Otq26ADNIr9Yg1Ao": {}, "G1mLE7kf83eAg0PG": {}}, "statCode": "U3Rc1dKajWF7VAdZ", "updateStrategy": "INCREMENT", "value": 0.7153177310029726}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'kPaNJb7AoAiKMgPI' \
    --userId 'n8KJBcwYuqgU75mM' \
    --additionalKey 'Phb5DMPAdzgRs6JY' \
    --body '{"additionalData": {"B07qruUzULPAHhRI": {}, "FIhnqilGEOAFnFqr": {}, "ILHB2RwTwxTmogsS": {}}, "updateStrategy": "OVERRIDE", "value": 0.12531983267580782}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE