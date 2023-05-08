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
echo "1..91"

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
samples/cli/sample-apps Social getNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
samples/cli/sample-apps Social updateNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    --body '{"maxSlotSize": 15, "maxSlots": 6}' \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
samples/cli/sample-apps Social deleteNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
samples/cli/sample-apps Social getUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'a3IUGd8VNE1VixpS' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'dvTHnuoXFAUgc5Pm' \
    --body '{"maxSlotSize": 95, "maxSlots": 34}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 's2jjqwNneHzOI68G' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'VvuceqlstkJrTqBE' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'TD3YfTfNjMTxfAEU' \
    --userId 'UOxJ7CFgqZlY1x2z' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'DhfZGyqT9Sy96AH6' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'EzCr5GkXHBYSuJ0g' \
    --userId 'LUM17P13cpV0MWAu' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["shkseZyOzmMl9hLg", "GJxUV1Yb50LR2fnt", "4fQhdPbLwQPJCWQc"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'NxbAsK9udpcEgp7q' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'bxECQND9FuwR1UPm' \
    --body '{"achievements": ["TkVF6wpVDP2qPKR4", "2ROThyLTyCpB9RNS", "ikHJFZbrn4ClmXbP"], "attributes": {"ZHhgKPoTZrFmVO1C": "PaEeJPbvyzdGnaMQ", "4FfvNQ8HfyhveYDs": "dfLFypndPxzPK2d5", "6pxlRID5gMxYO66X": "85pHaC5oKFVuWXtB"}, "avatarUrl": "Og6aSlK20VncrV42", "inventories": ["TbjEcELVClJrEpXN", "pv26sDdTebzpCub2", "LN0XA5OV430R49lo"], "label": "rBv4Wcj98UHP8zKi", "profileName": "MJ5PC87jkRercR4N", "statistics": ["HGJNZgt18AqjbLpz", "3oLnwDBgXqFKgf4x", "QMT0CsZgvfahnWIW"], "tags": ["aws9QIHY8Vrl835T", "j6jW4i37ZJWdH3SP", "VrAw0ACMPLDiBn8q"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Ilvv8Mv4qRGqVj61' \
    --userId '1MmnfK35oSEJoJpL' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'BdAh56WJuUcGRHIC' \
    --userId '7VoCwKafxg1zgE99' \
    --body '{"achievements": ["J74ze2qu6fHLTBQH", "be1YBwK4YgImTcaF", "Otfq2sNndkfET7MJ"], "attributes": {"xXEgPR2fzzX8qB64": "2Z63IahTIOO98ZOw", "RsKISHdGTSAItvXy": "F5Kj3FSd9xG5QU0Q", "FCWuwBu9utzvt4Hi": "1SapbA4NF4S8zcsu"}, "avatarUrl": "IbgueqzFOxtf1rKM", "inventories": ["LaeQtLkMnR1QP23p", "KZSKtTpkoOZ1GCXA", "0WEPc1lkLe1HGFkN"], "label": "VgURkE1B6Fbtt7tV", "profileName": "aJtqyOntWPlDNxVh", "statistics": ["xQizJFZlo6bXTrzl", "SxAc7BRfIkxLjfVm", "ODqONEqEYt98WwNi"], "tags": ["fRScU2ZJWUcKYVga", "FR1wtzSrS5muM6PL", "wnezyyVuXU0NMZML"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Qcjl2vBsfqafshGo' \
    --userId 'QeIicrYLqlpCITbu' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'PjUrvlRwRlf5yWWP' \
    --namespace $AB_NAMESPACE \
    --profileId 'jY0Ia9HGWynWhp7Q' \
    --userId 'ePJkngil5Iou8yuC' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'UNCDIIbmmkDzYd0s' \
    --namespace $AB_NAMESPACE \
    --profileId 'UFhfnqO8ctmh4xll' \
    --userId 'UL9xJs4ktoN3kcUR' \
    --body '{"name": "Y402gD9rmuPnVWzA", "value": "nch2cpIFfaOgeJEf"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'RT0CGtHUeR0eAWTN' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'HnjpcoHqzxtF67Vi' \
    --label 'XOXSLFc9LAfosmoo' \
    --tags '["aS3lkjgY9uPBytuI", "3lWmVCSSdyKuMaig", "hJ4X6Q2EsmumXRij"]' \
    --checksum '8xLXkhBQynL9Zco1' \
    --customAttribute 'CVcFmNi9aRpeTpuB' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'XpjWlNKhNIwjENuy' \
    --userId 'kXpjB2SpAKRUmKB4' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'p2U8dXywqPZrPnl8' \
    --userId 'FU8E3lIoEXmYgWuY' \
    --label 'J83cYOBsSl2EDkjU' \
    --tags '["BqF5cxC5B56SdUJL", "peL3fcWIaoeo2NSx", "L9aWHj1ux469ksbx"]' \
    --checksum 'asT8sNAwYPCfETvz' \
    --customAttribute 'FOinxfXnjpBgFa1h' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'OvEW7Z2C6UrABL9a' \
    --userId '3YFhmP2mPG5LgQEA' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'FsqqYuFs7XbEfpcv' \
    --userId 'fUplTKXZqz9o2rfT' \
    --body '{"customAttribute": "Y2id4tFrIEEyfZ6i", "label": "FW7DIlCndiTBsVrD", "tags": ["Q6FSjTeqSo7ocZvY", "zA3K5ATZjDQsc7X1", "cs7BwJx3Hxc6KE52"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '28' \
    --statCodes 'fm0HK6szm5j5Ysao' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'Cx7YvrZzZ1dsKUmi' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '35' \
    --name 'wzh6MQAYqfLioo1p' \
    --offset '27' \
    --sortBy '1snVhGFmz4FvN0Lo' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "GMWtnPlJMzQlzFX3", "end": "1983-09-13T00:00:00Z", "name": "zk7lUO9DzGU2SIQl", "resetDate": 98, "resetDay": 8, "resetMonth": 11, "resetTime": "bJL0cAwrctRYEZup", "seasonPeriod": 68, "start": "1976-10-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["EzHD5IUXGZfZn7VJ", "7JXFpXgOcYHT380P", "KZ84RnfJNkpMm4Eq"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'HICsBWFtCCg8lZ6E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'RefnpPHlfcQznE31' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "5KcJ9DKr2fIlIs0U", "end": "1974-07-26T00:00:00Z", "name": "Cz7WCC4DwLSZifj1", "resetDate": 16, "resetDay": 20, "resetMonth": 46, "resetTime": "M3uzdj5ftO1FrZOz", "seasonPeriod": 54, "start": "1983-07-02T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'zT4RlrBKC33pluBd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'GWQnlKNEmtiud0eH' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["S3t7g7bErrEPCGf2", "qJjYCRnSbgjwC5n3", "14LUjuxbGcv314yy"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'WenefJTqTczzz5wu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'TEdF1dwYZwEGmtg4' \
    --userIds 'su05CEz8FszNVW8Z' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5052174983097875, "statCode": "CW4QlosZsKKXMCs2", "userId": "UXenqhhW7HzU0yJW"}, {"inc": 0.17918420852624561, "statCode": "esazzBSnzumIcgKB", "userId": "f4JVE1XPC4y2auJ2"}, {"inc": 0.4997406696858002, "statCode": "b2E08ZKiHhrrTy4O", "userId": "47in4ZwgsPdX0ERO"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3706450809110243, "statCode": "EHMFuG10vOdor5QC", "userId": "ElE7XpeREInGDBFG"}, {"inc": 0.09426466835849212, "statCode": "kVYwqFrlcvEqA44N", "userId": "PW9jpSM0gs2qJU7a"}, {"inc": 0.4691034142799976, "statCode": "8ilFPXBDRWuqMnQc", "userId": "WluWJzmQy2CfzphQ"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'lzLnRpoLjOcQ8YSf' \
    --userIds '["f5QjjE1lH5SwrJlk", "rsa59aArbUcneZ9i", "UHPbYdIsvSjROoeq"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "SKGu1X9RxbyoqGbM", "userId": "PiATePtN1fLI9vMT"}, {"statCode": "SAtG16m0ONl4OoWJ", "userId": "zfpDjS4sADyeeZfk"}, {"statCode": "oak3hcFGXQ3BR5sZ", "userId": "g8CiEzYgMdtHCAHR"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '8CEGMNefpAywXoEy' \
    --isGlobal 'true' \
    --limit '23' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["hH0HhAFdByekvCW2", "HMuXAlOXe0yG2BfR", "0LLLPkkhau3iNoGK"], "defaultValue": 0.4893605840256152, "description": "2zctgjmY4uypysh3", "incrementOnly": true, "maximum": 0.06396468929754051, "minimum": 0.6943200371244536, "name": "CXgOAyk0DRGLdQHR", "setAsGlobal": false, "setBy": "SERVER", "statCode": "sGCDCeKVawrYzBhT", "tags": ["B9JK6JFXEr7D5ZIj", "TCgcAm2ycDNOeGgk", "xr0dmIC53kwyKxbl"]}' \
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
    --isGlobal 'true' \
    --limit '65' \
    --offset '59' \
    --keyword 'ApaZQ25Tg7EoWFzM' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'VjqNvQQegkhnDBGe' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'nw7ILXt4aCoq0Eqj' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '1uCbbQlWitTYTsWz' \
    --body '{"cycleIds": ["5s7WNDn5UNKtccWD", "PJjtUCUcTDzNeClr", "o7HEGKJI0J15bN6a"], "defaultValue": 0.6786371053884102, "description": "GrD00IncYCkrIaHw", "name": "57QM1ZjDuZ6tFFEN", "tags": ["6eKKiRUmd41ZeCXb", "hWwBDHMQthUppv8J", "EHiagMeVHtEPaS5M"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kpyGjhV6Zv7y9i5W' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '93u4cj5zgRNlWSpd' \
    --namespace $AB_NAMESPACE \
    --userId '4Mj4qmfeG25L1ehF' \
    --limit '42' \
    --offset '3' \
    --sortBy 'mifybl79fty3J7Qi' \
    --statCodes 'LDQz0jkRrupMoqJD' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3hrSR90KfUdh8kxt' \
    --limit '70' \
    --offset '23' \
    --sortBy 'DxT7YsG3hfN7Yp1D' \
    --statCodes 'crrUlm0jqTYO37SA' \
    --tags 'VJHxTqqcjMq2jXIz' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'aNOzuVe5hT0qdCl3' \
    --body '[{"statCode": "jTbXaw67qur67x5O"}, {"statCode": "KzASWsaOiw8uyC1I"}, {"statCode": "1NyGy1VBSqK25F58"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'm73pUYKL1dYNYdgy' \
    --body '[{"inc": 0.2116661430529604, "statCode": "sZNiYmy71wZTi2As"}, {"inc": 0.38318198678485815, "statCode": "u1LlucN4m9Pe18j0"}, {"inc": 0.7944931536601161, "statCode": "Y7QnJGEDGtcBWC3e"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'QmTw8JxLNlh5Ewuo' \
    --body '[{"inc": 0.044167466128376076, "statCode": "xvOFw2HcEDt4X7O6"}, {"inc": 0.7385157478053204, "statCode": "hgg0CrzIpT5H8eE9"}, {"inc": 0.7110397914196128, "statCode": "u5e0eetAd5kuSccn"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'bfZ4KRYfLg2lsAef' \
    --body '[{"statCode": "lx7WpRRLT02ppUcu"}, {"statCode": "ds79Mc45WL5SlFZu"}, {"statCode": "CDD9Xsbh2cCYX459"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'RTVi12keeVwj9Hfc' \
    --userId 'x13YyrPInw5bBVCk' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'D2JzevQYyHSQedey' \
    --userId 'lymTyAzN4nBREd2s' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'dQqk6fW1ndc65uw2' \
    --userId 'zvkRumYhY05OjdBS' \
    --body '{"inc": 0.8855106139406814}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Qo5zoRikkbKN2UCw' \
    --userId 'A0l2SO6yjQQrTYo8' \
    --additionalKey 'XWVO11SKLqKwjhkq' \
    --body '{"additionalData": {"tZxExssJYcVjBkHd": {}, "02X035ZrPTsiz0WR": {}, "JWwioxhsMqIpw60l": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '3' \
    --statCodes 'qElJAjpLMENPOnLB' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'zbPMXw3pewndgpk5' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '55' \
    --name 'lE1YfC02wIjeZwKZ' \
    --offset '24' \
    --sortBy 'AzPKBIq4rNsEqALe' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["fSNWgOnOeF3RdUuH", "gbg8KpWbrC4oQ7p3", "i1MROaEWpZBRcEBN"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '597f53UCodilDKiw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '4RhFeDzxX3McYZwM' \
    --userIds 'IxJfXmR0pwJpcITu' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.060322160316680584, "statCode": "Hp6pN8fV4HSgB5Xn", "userId": "D1CeUwrktKvts3CN"}, {"inc": 0.4228531803131149, "statCode": "PYcCSFbakYNYtWno", "userId": "rLTVdNvTwlOd3lqz"}, {"inc": 0.5762650950183323, "statCode": "KihqCwbuZ5UW8Wbt", "userId": "oDVHNKzBX3nR9k52"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.15410128739957962, "statCode": "NLVeAXR3A0tom8gd", "userId": "qMivsGpt8immawaQ"}, {"inc": 0.37018823783005017, "statCode": "jccLe12ne8t7EL1b", "userId": "kYzdhXT2HElGXVC4"}, {"inc": 0.534817351018546, "statCode": "500IQkYhNknpmDpA", "userId": "AQh23irG16UHOjkv"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "GqBW7rBxo9RuqIoQ", "userId": "4LfLPJIyid217PIC"}, {"statCode": "WbfBtvjK9eyDgB6y", "userId": "yy0saoMmwkJp5u3P"}, {"statCode": "baeyLxByRin6gbCP", "userId": "QYYAAqbCpz5DMu73"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["aCEaOHvtqAjjnwbG", "azUPath9pGRYNsX4", "tdH4wXsQYKHTLgbO"], "defaultValue": 0.9646740363792079, "description": "FzWNiuoWoxAEUfbx", "incrementOnly": false, "maximum": 0.24220390291471283, "minimum": 0.4687864304337911, "name": "GbLpP55xPAj2LRTn", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "7RzwwbZA0ijGWakD", "tags": ["sez9LSme4MRaLv18", "aJA5WVvpmWfgsg6O", "SfOTz9RJXwq2xJYO"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'KoInGVcqAtVWhmAO' \
    --namespace $AB_NAMESPACE \
    --userId 'TOgzObQEJAnSCmUI' \
    --limit '71' \
    --offset '59' \
    --sortBy 'b9ctUu8RuERUISF4' \
    --statCodes 'po0XLhH1SzTEziT4' \
    > test.out 2>&1
eval_tap $? 70 'GetUserStatCycleItems1' test.out

#- 71 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'sMhSpsFhSMhY3ZfM' \
    --limit '97' \
    --offset '21' \
    --sortBy 'jwfgOC0SFMbZCvrK' \
    --statCodes '0koxwMs7T7c2UQWW' \
    --tags 'KRelc1gJCsM0VXTt' \
    > test.out 2>&1
eval_tap $? 71 'PublicQueryUserStatItems' test.out

#- 72 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'kJymsk5jugfCSNB5' \
    --body '[{"statCode": "O504iivWj0L9hgcV"}, {"statCode": "FxW4WDafJrBndvk8"}, {"statCode": "oqwMRoUxzqY1zkMd"}]' \
    > test.out 2>&1
eval_tap $? 72 'PublicBulkCreateUserStatItems' test.out

#- 73 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'XvzLwrSuGjTqeCNC' \
    --statCodes '["BVQ5JNNd5dy9LCwX", "bTp2algTJmIU4zMi", "sVZd7pkCXPoDSOTz"]' \
    --tags '["JvXExevDyvC12wLq", "m8DA4nUeu3G4i9Xf", "qfjPUSq4sm2n9t9b"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems1' test.out

#- 74 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'RCXvxl0uwuCWJDyJ' \
    --body '[{"inc": 0.8355892228150149, "statCode": "zwhK0dHTpo8nQpK6"}, {"inc": 0.7066225772920417, "statCode": "Iw2Jb9yIWSS3qMk8"}, {"inc": 0.7104581437031514, "statCode": "2IW0P9rlXF6SYPSV"}]' \
    > test.out 2>&1
eval_tap $? 74 'PublicBulkIncUserStatItem1' test.out

#- 75 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '3Z6djRIvGoqiUbXb' \
    --body '[{"inc": 0.4955517290351785, "statCode": "FOZyoPjAVeiowtJF"}, {"inc": 0.8960854065493246, "statCode": "othRNP2by1SBmynl"}, {"inc": 0.33685582227089395, "statCode": "4CCmBPsHou7oARPi"}]' \
    > test.out 2>&1
eval_tap $? 75 'BulkIncUserStatItemValue2' test.out

#- 76 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'hawxtAf0382lXOE0' \
    --body '[{"statCode": "he6aXXMD9GVTJBtT"}, {"statCode": "id0iPgpdSGbMDbIu"}, {"statCode": "BPeo1Dq1f9giXaGm"}]' \
    > test.out 2>&1
eval_tap $? 76 'BulkResetUserStatItem3' test.out

#- 77 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'k1iCOvQmK1bZ0Pqx' \
    --userId 'ueX2raE0qtlA5ccZ' \
    > test.out 2>&1
eval_tap $? 77 'PublicCreateUserStatItem' test.out

#- 78 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'HAH4kWKIbxcnMQB0' \
    --userId '80uUBLTFYieJ6YmM' \
    > test.out 2>&1
eval_tap $? 78 'DeleteUserStatItems1' test.out

#- 79 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'eoS4OmN8DVa2JOue' \
    --userId '776IzHnzPI4EpbEl' \
    --body '{"inc": 0.3418478140500516}' \
    > test.out 2>&1
eval_tap $? 79 'PublicIncUserStatItem' test.out

#- 80 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Qb924y93BxJaGk2q' \
    --userId 'zbTpnEsBvrIXRkXY' \
    --body '{"inc": 0.6824729376058796}' \
    > test.out 2>&1
eval_tap $? 80 'PublicIncUserStatItemValue' test.out

#- 81 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '0WmRio54YzJLlHrm' \
    --userId 'N0reSZL5pHC02Eo4' \
    > test.out 2>&1
eval_tap $? 81 'ResetUserStatItemValue1' test.out

#- 82 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"MgOfGF7Tdouq7E51": {}, "6rnZwrt5ysZMoz0M": {}, "PxErJr6c3mXej4kJ": {}}, "additionalKey": "LPARYGM9nBJyjFYI", "statCode": "m0E6P6sBnE9kjbeB", "updateStrategy": "MAX", "userId": "DbPRlDRdjclq3ruo", "value": 0.6553920108726403}, {"additionalData": {"sJjiXTmFGnpAp5Qq": {}, "Pt7z6JWoIF2TjaRM": {}, "ccy2qJo9mosx5aiU": {}}, "additionalKey": "QF4huw3qIgH8FKsa", "statCode": "bX62myTxEEfhckVc", "updateStrategy": "MAX", "userId": "HDF2NDyJln4O5d78", "value": 0.9969307431322041}, {"additionalData": {"Hjzq27N6D7xEpE0z": {}, "vo3SH4UUN5R652w1": {}, "mB02jwPwBX2zk0mv": {}}, "additionalKey": "4HlHcwT7bamQy6wV", "statCode": "hLNMdB2ugSveUZ2T", "updateStrategy": "MIN", "userId": "x40wHFlGMclGdxAc", "value": 0.20810206908242124}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkUpdateUserStatItemV2' test.out

#- 83 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '16SIA1UrcvmUbOLB' \
    --statCode 'EyIVdaFA9a101zhs' \
    --userIds '["m7ogHyJZ5MDqm9X1", "MTY0MVtwOVWrknZ8", "R8GBFEJbo55pgh6v"]' \
    > test.out 2>&1
eval_tap $? 83 'BulkFetchOrDefaultStatItems1' test.out

#- 84 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'vkqU56g5EF70gwWQ' \
    --additionalKey 'bXF2cL7sOrKccq5V' \
    --body '[{"additionalData": {"yLOG3wUUfsc2PsFM": {}, "cHl3vscZqgkUcEsu": {}, "gkm5wA0IEvAMsbma": {}}, "statCode": "VMLmkzKKmIMlU6CJ", "updateStrategy": "MIN", "value": 0.7963242573415307}, {"additionalData": {"aXK6rWvVVoDN8EIW": {}, "qypKIRwbIxyOPEhg": {}, "RAAm44d5aS9EJLyU": {}}, "statCode": "GlmwKg1EDYRMD1PV", "updateStrategy": "MIN", "value": 0.10871539596219315}, {"additionalData": {"sFA1XORTzkRznwEU": {}, "D6xHLdBJETUsUIfg": {}, "WYdUVyhNBbAPt3GL": {}}, "statCode": "ISDG0BAVf1cWqoRw", "updateStrategy": "INCREMENT", "value": 0.37378041070756507}]' \
    > test.out 2>&1
eval_tap $? 84 'BulkUpdateUserStatItem' test.out

#- 85 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'uf33FZWeFbfZfJnC' \
    --additionalKey 'AicHYC2CYnPCgGSJ' \
    --body '[{"additionalData": {"1KASwtIjW7Gdjts9": {}, "yy5WVlSOAKl28UdU": {}, "2vAGxTLamosLoq5Z": {}}, "statCode": "PkenJHSf85KZgcbU"}, {"additionalData": {"HulDME627EVatFQr": {}, "aXshcqj0nKMhWBKh": {}, "2rB3DZxDOpjKgJH5": {}}, "statCode": "f2xMslOAVFCHAvQR"}, {"additionalData": {"tdHlGsH5lWAlSCmI": {}, "Hzs2XFgkoiKLiPh2": {}, "kZJRlFbj1Ni1rStU": {}}, "statCode": "QGiw34XqjlxxZLrp"}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkResetUserStatItemValues' test.out

#- 86 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'jqzlPry8pYz473ra' \
    --userId 'zmaZMYnvUSBr8DpN' \
    --additionalKey '5BYpv6teBhxVJ3O8' \
    > test.out 2>&1
eval_tap $? 86 'DeleteUserStatItems2' test.out

#- 87 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Hv1DuC0HIw8WuDSS' \
    --userId 'STQds0JimoA1ES2C' \
    --additionalKey 'D1vOzzig49bs9Nij' \
    --body '{"additionalData": {"TmnqqUGAZYB1oG0U": {}, "1eYEJa3syCbWaaIf": {}, "KhtpcydhQMvYDpvC": {}}, "updateStrategy": "MAX", "value": 0.928979765411722}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateUserStatItemValue' test.out

#- 88 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"aoUa1ymFqqQ1Iit0": {}, "nEBpZObvG5itmhzU": {}, "UAR3lvzKbMyMFPSN": {}}, "additionalKey": "gYmSYv3ITGb89SaX", "statCode": "5kOab9QoZjQmpklp", "updateStrategy": "INCREMENT", "userId": "bsVmppClcI0XvRnL", "value": 0.5800762602202288}, {"additionalData": {"5lq7bLlsfY8Pp6Ys": {}, "GTUXXFihSBWl6hW5": {}, "XONfzysiZlO36SUZ": {}}, "additionalKey": "M9KnGKzyOJqMw6qv", "statCode": "nhH9hAJi6DuRnDMv", "updateStrategy": "MAX", "userId": "lRCD3cVOvMBfUcoJ", "value": 0.05094102867488148}, {"additionalData": {"2Dw3ph9Slf6XoWHF": {}, "gdUCROQFYAqsQWT5": {}, "jbLOiPeMsECEUsLc": {}}, "additionalKey": "WpZcCr1mTXBbF4dj", "statCode": "WMlzN4jIQX7aA8Lu", "updateStrategy": "INCREMENT", "userId": "ex2Pv8qAUCDlpTmB", "value": 0.050990981635296695}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem1' test.out

#- 89 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'FHO2shHclRRo9U4g' \
    --additionalKey 'Jfcqy06Uw6ICbPVM' \
    --statCodes '["4J0Wf01GMOEl3xxp", "Oubwet3w7nPe1o9L", "Excfhjapfe0XQ8PM"]' \
    --tags '["TxSkYCqUPbcgms8o", "6lcSYgDnMAjnE9dt", "WArj15351voz1b0m"]' \
    > test.out 2>&1
eval_tap $? 89 'PublicQueryUserStatItems2' test.out

#- 90 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'm9tmh1XOOgnAkVQT' \
    --additionalKey 'YCkyxuQp283pw0ny' \
    --body '[{"additionalData": {"c6dtU1ESbKt4sb2M": {}, "I8BIJaH80dvuz2WI": {}, "jSqCbT5m5c3Oun6F": {}}, "statCode": "MvjMNzOE75optt2e", "updateStrategy": "MAX", "value": 0.37733225518160995}, {"additionalData": {"97ozobjV0dgO8itR": {}, "CsnwGm7rc0okiWky": {}, "ugRIIkEWH37fqRGp": {}}, "statCode": "SBGoYHvQ3D3JWRkw", "updateStrategy": "MAX", "value": 0.15012462314380237}, {"additionalData": {"1oV70ihJ9aEo6Mmw": {}, "1i1Ynbo5PVC5XKwd": {}, "Pxx4jvS7Xa4Ue2Rd": {}}, "statCode": "BDHvmNmkCuw46910", "updateStrategy": "MAX", "value": 0.6338337163531756}]' \
    > test.out 2>&1
eval_tap $? 90 'BulkUpdateUserStatItem2' test.out

#- 91 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '8F23JlVHUZX29ODx' \
    --userId 'U0AXNCTZeKgvRTnl' \
    --additionalKey 'a2DQ6hpC6BcJP9h6' \
    --body '{"additionalData": {"n7iijYLYh4ROqRNg": {}, "cSGMdw73jlIC6WK1": {}, "BqsdsuRp76shhvkA": {}}, "updateStrategy": "MAX", "value": 0.5004726051663753}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE