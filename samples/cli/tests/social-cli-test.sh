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
    --userId 'tXMGtXj6lRG9MFbY' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'WMArdWUnm3qVXPGX' \
    --userId '4ABWxIcF9J3H5AF6' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["uueabu1nnXzqi58Z", "bD5MNRkVgv8cId5G", "za6C6VJjcSwOukt0"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'oX6kTz8sWlPOx9eT' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'KWMeGsZM0KDbrdg5' \
    --body '{"achievements": ["Vbg80Hwvq3KQNvQ7", "v9G09ag3gi0Yxxr4", "oNF7GylgbjSGmtRt"], "attributes": {"r07WeyhHfnmS1ryX": "gVB9JM02YpqO3evn", "T8SX9RqwQlbAW9MO": "7i87chcjmZ7xXqlH", "YguDPggB9PPhZV0R": "niAdzrl7rxff4rwn"}, "avatarUrl": "5FmZYMQe1KnU6ksw", "inventories": ["b59xdNO8ec84USFx", "WVcG6Cntb7QVCuKS", "Iu9mMPWgPvVBWTzp"], "label": "7wIL8xH7nwTmL7Ke", "profileName": "Q4RKp6U2n7zkmwr1", "statistics": ["JQjMoBndB8XVLi08", "9yAqianJdXXgSKZu", "l9IgeCYr5R2lGFIn"], "tags": ["EuXIzGZl0Ogoi62O", "KhTMmInZIgQY92fI", "MwnFrfEL5QL7EEte"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'BHpzXxIRmPBg7Lhv' \
    --userId 'OPkxZOUMFmAgGGFD' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'p4gcAdEp2FNADOy1' \
    --userId 'jEyMb8kGRdBQEoMc' \
    --body '{"achievements": ["8gHb9hBtqheow1Mu", "bKKG50vINo1zHKOI", "IhhDl74jyS71ggVS"], "attributes": {"eHBU7UslEvKlk7fb": "ONW4CElH7BdlY6tL", "CLRD0dYRXAitDvKp": "lPdcJGBnpTWUcgt4", "qzEZ7vN6iNBhOQiP": "6x9o1KGHIS22dBy5"}, "avatarUrl": "NNaZKdMZRbBwDE15", "inventories": ["Y63fBaNy5Jd9lvCU", "lNzTNQnqtRInEXgZ", "swa1WCXhdCRi1dqk"], "label": "bmCShsrNlD9eOVyW", "profileName": "RyWxWvP2Y95xmQ62", "statistics": ["oBQKNehMoNwBbIfp", "NlmA2XqsYcdP6PMf", "wIEzpY082q3ZiJmH"], "tags": ["hwPhwvnd2gn6eNkA", "lQJywZLyooC7pf0U", "4rDpN0IzpuMQRsGr"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'aAJrjvgRCdb65ed7' \
    --userId 'Mj7meVFktk6I82sq' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'H5fDPNs0IFAvvmjB' \
    --namespace $AB_NAMESPACE \
    --profileId 'llLcIhnGeb4Fnwk9' \
    --userId 'ViJU32N4NbwI02yA' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'VS4fxKFHHu26DVQ2' \
    --namespace $AB_NAMESPACE \
    --profileId 'VReFuMlc3AcBpNeT' \
    --userId '4je5xhCuY949ypeu' \
    --body '{"name": "jekKJPZ2ZlGFq9hX", "value": "2bEkI0EJljYbKeXF"}' \
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
    --limit '70' \
    --offset '58' \
    --statCodes 'sHD3N8FIpW4MKH0e' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'fCkiX3OixRekr9dG' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '77' \
    --name '8PrnKGDwhV3pF51m' \
    --offset '97' \
    --sortBy '2NIijPGUDGX0f0sY' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "piQy1Ue57a5BEhAA", "end": "1994-07-19T00:00:00Z", "name": "6xb5RzkBQkeg441i", "resetDate": 80, "resetDay": 31, "resetMonth": 5, "resetTime": "a0A4nMnBlTUDwuh9", "seasonPeriod": 7, "start": "1988-05-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["M8edFtUozLsH1iOa", "Pv4yaxMNwxXPTCfW", "kfxs374I8RBJExu4"]}' \
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
    --cycleId 'kuT7peEaqBipe5xu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'XejB1cj20Asu9QKO' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "EMTFHbh9WwnzfRG1", "end": "1981-08-10T00:00:00Z", "name": "WbgQUEh6vAn4QJMV", "resetDate": 1, "resetDay": 59, "resetMonth": 29, "resetTime": "NSNlzM9KH6eVfkp8", "seasonPeriod": 94, "start": "1985-06-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'JCXNi4y9Afm1KDz9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'W2vKPdFLYHUu3eci' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["TziSE2s3B9F6eAwA", "HlRzaaq2C9jYVot8", "OiTtFAUSDAu3jP9b"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'gZ6PADmwNk7qcPxx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'i4Z7XH4ntraxWMDf' \
    --userIds '7cMordYoDtYGS7ks' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5774296054777759, "statCode": "zCMfFOY0w53KLWHr", "userId": "n602DpuknHJdEZR5"}, {"inc": 0.026424696894202127, "statCode": "ahTB67AiMQBIgT5P", "userId": "hICdHMQMfRgNlRQB"}, {"inc": 0.8766966075369291, "statCode": "B68YVipDcpzSSv7r", "userId": "aCHBj6FfpUPVIkdI"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.28740801489792067, "statCode": "fJ5Lq4jmgoIl3AvB", "userId": "YIemsjKYcWFYAKyw"}, {"inc": 0.8138737682834252, "statCode": "nEdQk3ssH2MBwjjW", "userId": "sILNFGcIZBbxpXKG"}, {"inc": 0.8133470418694032, "statCode": "a9ts2c2mdTLCyIC5", "userId": "i4HRtrjPnzLCYNfq"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'c2EzSndculpJ1uVy' \
    --userIds '["gmlsG01L9p2Y00hn", "k5r0Ci1rDl7Nueu4", "93JhSeyvpbA1Oa8d"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "UnI0jPpWSK5jHomW", "userId": "OavIw04uWb8G9eVi"}, {"statCode": "KyeFuyqJaiurEFTH", "userId": "aBQXa358WIAsa3BJ"}, {"statCode": "FXhzdTcEmtlHEYRa", "userId": "w9sFHJnXxN4pKlY6"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'LBvVBhCGqVb7rCPi' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '96' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["P7Gtbozb6hb0YERs", "Jlaw4jwiilHy3bIE", "foTZJLs3eJ3tmEqk"], "defaultValue": 0.7567293293403857, "description": "6FWlz3uQPvGKJZ5d", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.8116760030500487, "minimum": 0.2061268267379489, "name": "pRV0OxG1JDvtzGXG", "setAsGlobal": false, "setBy": "SERVER", "statCode": "pvdYkfmOwshxP8xd", "tags": ["Pszj5UL9J6AvDOSD", "UaWlmkxDVUHlTNtK", "93OYLzsiLX26O29n"]}' \
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
    --limit '2' \
    --offset '12' \
    --keyword 'kOppote646Df6Xbw' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'w835tZEw2Ga0rsqP' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '0l0muBTB1Hdh5p0X' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Epn40LrwF8hI6ZHg' \
    --body '{"cycleIds": ["WQN2JHUhC9esDA4Z", "z7mHpJK9UFmof3sL", "8ZMfwgkRm82zGqqo"], "defaultValue": 0.13159933164281346, "description": "7PjEBYTLTJ5sAtEN", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "7gUdeug0aU1qaC1e", "tags": ["tiGCdSZHDT6mtjCN", "q57ECFL8vn8IKDlE", "jUmInPgkLLAdQXmq"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'CNMbnIs8Su93ZS92' \
    --limit '0' \
    --offset '14' \
    --sortBy '8lZ6BjxDb66X3j3K' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kC2ZHqdTdzIsqd3k' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'CW61L6Uo88G89Mfu' \
    --namespace $AB_NAMESPACE \
    --userId 'WGCTo36LolexKGRN' \
    --isPublic 'false' \
    --limit '90' \
    --offset '27' \
    --sortBy 'hkcF0QpEj2bYjLXb' \
    --statCodes 'dEzLt0gkxSCACBRz' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '9Jdi1YxfdS7tpo1s' \
    --isPublic 'false' \
    --limit '49' \
    --offset '14' \
    --sortBy 'Zks37LcooFXW5Q2i' \
    --statCodes 'Ly7n7t7YCjkHPFwP' \
    --tags 'khJgTlsEBDsQcGe7' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'mazTS1P3VMFHpotu' \
    --body '[{"statCode": "LG7SVjZbDc2WGHFs"}, {"statCode": "P1bunUeClgm7ES43"}, {"statCode": "ndJNpJIGvi2srYUP"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '8Ascpx29RinbDJca' \
    --body '[{"inc": 0.748135587268337, "statCode": "1IFphtdZKbzvfXRg"}, {"inc": 0.9366794056630369, "statCode": "5njcbCglQvx80xQa"}, {"inc": 0.8145573656234125, "statCode": "bUZBIwrNWG1BmBhs"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'EjiQrE4NMnOzcQei' \
    --body '[{"inc": 0.353762374285829, "statCode": "Q87tjSEUEZtgmUEW"}, {"inc": 0.12437608138251721, "statCode": "jk0oT8xwtWFHa3XR"}, {"inc": 0.8423587601902457, "statCode": "piW35GRf91CtlewJ"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZQHhtz21hg3C8V7g' \
    --body '[{"statCode": "8lR3BZHROlhqNrZt"}, {"statCode": "zlOgzqhtniKI9nfI"}, {"statCode": "aAv0hp018fwm43n0"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '62wkdrJJ0iIG45xV' \
    --userId 'lzCQvCaOy9OaJBVq' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'MmGNwMyo0Xs0ndLf' \
    --userId 'jYUSczF84V7gfP39' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Uus1hpBmbstY011m' \
    --userId 'Dq2PEMlFb725I7ug' \
    --body '{"inc": 0.3193069369401119}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'XnVU7ZxnTRMlvrnO' \
    --userId 'KKkvLiajiO9SX84f' \
    --additionalKey 'MJtdcvjrUjUJXMMp' \
    --body '{"additionalData": {"EF4fVPIrDogM7ka8": {}, "nHxBSuwaYX9aRHZW": {}, "cO2TOPDvOj1PX5N3": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '5' \
    --statCodes 'jkOx3ru7b9aTnvtv' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'mdizSNy8PTXVZakD' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '88' \
    --name 'FKLmNAqevE18ESuZ' \
    --offset '23' \
    --sortBy 'bNebr7s40zsHf0on' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["KXY5mA4LCIKqiIlg", "4Fz6hpq3ohdDIjjy", "Mpf8R2WXiZhzcNZR"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'Xo9JdCqHEVHOVFJY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'bBWOFAZvfpIQT88X' \
    --userIds 'yKYGBCKapn2BcFkK' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.014132282053060607, "statCode": "cmduFI3QkiPGkeHh", "userId": "8EzNNqtWxoKeAy4a"}, {"inc": 0.5482265600620526, "statCode": "2l7JHTLOJhnM9ty4", "userId": "ddkmipjyWLe7L2hT"}, {"inc": 0.6955990979561051, "statCode": "mPdhMUNnAft09D1z", "userId": "9daV3lkYxH7brGS2"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.03448031660933837, "statCode": "g20wdMeOVOoO6Nbw", "userId": "Lx0GV8Y5dlUZKhSU"}, {"inc": 0.8835443684031407, "statCode": "jmbpNMu4LehBxfge", "userId": "m4gf4Zpb43PXtAWx"}, {"inc": 0.4413237280812994, "statCode": "rmTwYfCRlb3CFwIX", "userId": "L6qLjoRurpDh5XAu"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "awVnABtlgnDj1ycE", "userId": "0gk3jZaAyIVJzgnc"}, {"statCode": "DjxaVojApjuZyT96", "userId": "qgFDT0QXpbyex10c"}, {"statCode": "i71h469at3kGniOY", "userId": "ZbQwXaYLfWECfsLY"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["kXaP8PF96v7I9gVR", "5jf0R7DDA2U7veiF", "ibNcK9UKsuT8DBOs"], "defaultValue": 0.4160848883883934, "description": "DBuws0g2pfUaQKEh", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.7878717651806149, "minimum": 0.6378544703306936, "name": "h17yiS0jjDLLlSYS", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "WQF8W7WMnDbKAuE5", "tags": ["IM6VqQ30rynrcroS", "5hb7ylnNe9fGgJBn", "hcYVl2ORNYlC7Ovt"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'jGJgQmXLBQhQOoWh' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '28' \
    --sortBy '5FGsd52fCVRhzMPh' \
    --statCodes '["JGxqFhHw8pveUYIe", "1PHkIS4ieRRZtPRF", "0M3T4pPfQq7Ysns1"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '78' \
    --sortBy 'YST7LtvPnKKSKWAa' \
    --statCodes '["FlsdZmo2rA5OoFVC", "yXuj9cbrKMdvXBYD", "Yz8O9d1By20yv6zT"]' \
    --tags '["ipl4dPq8BMuGMie9", "4fvMjGc10qO8pYPZ", "R5hkWfhfJg9RDPNw"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'mnLW34BU3647isEU' \
    --statCodes '["mY4iGyt8pLmSdtoh", "PwX30n2IpuQA5RBF", "vxUsdVNVWROUYUFG"]' \
    --tags '["lGVdpxQb2rchPRuT", "4rD1zXY854W5NHbk", "h0Kc5KY2TH3SJiIv"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'u7mUxP3xd8I3FH9I' \
    --namespace $AB_NAMESPACE \
    --userId 'KHUQ2wir9yblLLFX' \
    --limit '22' \
    --offset '3' \
    --sortBy 'I4Ujuk2h3YzQYmIO' \
    --statCodes 'e3M2QqICukerqjMK' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'UzwEL2Zl1FCVXzsC' \
    --limit '9' \
    --offset '89' \
    --sortBy 'WG2Z9w0haN6nuqmm' \
    --statCodes '51DaoMWkbUrl7YyZ' \
    --tags 'rXquYLsT2LvjftGR' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'cyNiFEUsOI6thmq0' \
    --body '[{"statCode": "0WvvjZLZzs3HpXlm"}, {"statCode": "VwnrEkwJu77Wge3Q"}, {"statCode": "zKGa95IORr4ErLiZ"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'QKkongPO9TcDIpc5' \
    --additionalKey 'Slb9cds6XPiQWlHL' \
    --statCodes '["rE5oJ3Wm3m7dMarx", "a4gMfQeN8jYkHTYZ", "GOKSpNfiTu1sTAih"]' \
    --tags '["DcKz7xtXkNNCUiEv", "zlE6CFtqXRtbQhW3", "6H2LkLVvC31U9DlQ"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'jo9Es4wdFLaUQHGL' \
    --body '[{"inc": 0.31597546998990456, "statCode": "Nf1ph1lb7hdhs4cW"}, {"inc": 0.7779781595836044, "statCode": "j7bjB8fx5ku1YKES"}, {"inc": 0.1534727114977118, "statCode": "3luAx1mXqPEmY9OV"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'LxSZPp9v9m8np3X0' \
    --body '[{"inc": 0.5288202431675381, "statCode": "bbEIijrn9r1HlMnN"}, {"inc": 0.5980434357580184, "statCode": "oNYu4jffNkk2ScBH"}, {"inc": 0.3441883326082207, "statCode": "CMtIcj969GPGPc1Q"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'Cw5M1bM6t6IEITZy' \
    --body '[{"statCode": "5YhQ8H0hcHtlyvZo"}, {"statCode": "3UAMobNJIMfqZkZF"}, {"statCode": "mNzzkx1yB4uVT89Y"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'AwTHcZpbERmSyU5C' \
    --userId 'pS1qo291ltDTll8D' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'S5lTXVbAjHhFZOoD' \
    --userId 'yVNml58fz0wenRTP' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Q7BeC6rrc4pwyY0J' \
    --userId 'ZszbAuCfEveQSaP8' \
    --body '{"inc": 0.36615332647826626}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '2S4cgShSKKOmxhNG' \
    --userId 'CEKUY4sZC8Vi2PNQ' \
    --body '{"inc": 0.08237467713976032}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'IVFJOLWmLaofr5rr' \
    --userId '9bTwOTct9NDzWIyt' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"xR3uQWUGmJF7GAqC": {}, "O1k8K8FOxji20rBL": {}, "IncTharMx2MMUcrV": {}}, "additionalKey": "b1Vjz5RUjEmnkOjx", "statCode": "kYeaQoKpHIDqQT4g", "updateStrategy": "MAX", "userId": "oN7Vwc7aDYZ2GxIb", "value": 0.455245307713642}, {"additionalData": {"WzyxZB2YPOlcm9H7": {}, "OPGnY2ZpuRK4qMn1": {}, "WjNlaFdKFF3569qf": {}}, "additionalKey": "ZO8phrIvyNDHiqcl", "statCode": "p9un4PHuGPkASqhb", "updateStrategy": "INCREMENT", "userId": "YtD9YvMtF83t5BgJ", "value": 0.8312517511351319}, {"additionalData": {"dw7L3hWYiCVbtnyJ": {}, "4vYKJYttCIJJPZuz": {}, "Hdl5BbUXWTK4t2Ez": {}}, "additionalKey": "eiEiEbEOfuPcnlF0", "statCode": "rbDWYxnK2tKvuL03", "updateStrategy": "INCREMENT", "userId": "ERTPaOQBEft5qSDA", "value": 0.7075743555872158}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'Z5eLCTkbcJP3OFNE' \
    --statCode 'FK9WgXrOfZSU8dxU' \
    --userIds '["2WA0VGCKWh2P75wz", "SaqTglomoYtfc1dY", "FyaqteDtvryrWq8K"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wsZo8MONBZAhJexn' \
    --additionalKey 'fSJcIPGroRWh8GJq' \
    --statCodes '["MMfXGCoHkgsD0cPF", "kXs8C3dmX6YEYzGF", "puVAyevJpH0K3T4X"]' \
    --tags '["k4TkNNil9BEio6ws", "LYJyPyvEvU0jRBBn", "OME6Y5wqq86SbyNj"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '0Zm26H54tIJhvudt' \
    --additionalKey 'f3B5BvkZgufmkfXS' \
    --body '[{"additionalData": {"gvPBw85kgsImSBJT": {}, "J0JMQbiCKS8bDazA": {}, "T81zthIHrklnZoDd": {}}, "statCode": "a1A85fTP07eHTQxq", "updateStrategy": "INCREMENT", "value": 0.26956933227771473}, {"additionalData": {"O3DI2ajwiHLgRTTD": {}, "NY8WNTwQeoAKkgwi": {}, "YpuOwnjsJVfqhngN": {}}, "statCode": "2aq0DLEdMeGUO6Xr", "updateStrategy": "INCREMENT", "value": 0.6650046517500394}, {"additionalData": {"Jedpovj3sLKS5eTi": {}, "gQVmnZ6OTkMad3Lv": {}, "JLH1xmeNri9LTJmS": {}}, "statCode": "b3N118i7NQRb9HWU", "updateStrategy": "MIN", "value": 0.6531128801958263}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'odHXwZWf4xwAe6uO' \
    --additionalKey 'aK7eM4vmULJFmQr9' \
    --body '[{"additionalData": {"49NaJxNH3ljcM9UJ": {}, "6Zt7UmjVx3HiNqCi": {}, "j3FjZVAEUBWxRskJ": {}}, "statCode": "gAI84XGYlttn1Sbn"}, {"additionalData": {"nLK8FJieub9Y92Wl": {}, "GVgBkKcPh8REPnEz": {}, "0bGLyCxRexth3Rv8": {}}, "statCode": "vOgheCxbD0lr0FZK"}, {"additionalData": {"hQDlypH0UBjrNy9P": {}, "sVV4grCl2lHnbNi6": {}, "a1XPb2ASJCNSPCU0": {}}, "statCode": "XfTakP2b4IaF681r"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '6GXXEUZcmAiVgCyX' \
    --userId 'xCFMRqV3n6z4DEhs' \
    --additionalKey 'YRp7KDAu6DVMp1qG' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'MZUShxSCcl1uf9we' \
    --userId 'O6oMq7ZoWSYGxOVv' \
    --additionalKey 'UIX2fawhG80IXEpg' \
    --body '{"additionalData": {"NxEoUTZ5wdojGjtd": {}, "TRXqnGCBowNQL0se": {}, "RUEETp1f8BhnJZ19": {}}, "updateStrategy": "OVERRIDE", "value": 0.8026575436196027}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"W7hK0uqTVCdIPU7t": {}, "Mu7JUNNVIQc1qZ2Q": {}, "aBLjphTR0mWuffYy": {}}, "additionalKey": "02tGAx2ovZOnh2Dg", "statCode": "BE8m74ZCzXA7EFzP", "updateStrategy": "OVERRIDE", "userId": "W5p1rsf6FQH72ZmG", "value": 0.6233727935796768}, {"additionalData": {"3rQqO7VWWqOxM1Km": {}, "xvSN3zivDA8WZrmv": {}, "YToOVvytQzjJ9VYB": {}}, "additionalKey": "lT1KA69VHJ8gzQuB", "statCode": "pTfdTX2dxc68tZ7D", "updateStrategy": "OVERRIDE", "userId": "jR01cLQBR3syk0sM", "value": 0.6728180820472275}, {"additionalData": {"Tt4tEAwEKXj36qrM": {}, "GJEyRH1vHraXoaON": {}, "NutkljiZA99kKl5A": {}}, "additionalKey": "N5VUHfpA3Ehe81ab", "statCode": "LGH4OP3pqMR1oUSe", "updateStrategy": "INCREMENT", "userId": "utbbSHdHGlldSqsm", "value": 0.9697964735074953}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '9YPLIrYajZYB7xmB' \
    --additionalKey 'IGKc7DDlUhgN1S07' \
    --statCodes '["7CaaxItmH8aZTFeV", "dwxfWxh5AsWztWQn", "hosPTTkzw4Hq1e35"]' \
    --tags '["mFrCEjpyyM1KMyrO", "I23xa1sACTbaz9ER", "Yswc4sHy4UFrScYX"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '3TBdP6Qqle3fcRfn' \
    --additionalKey '2rLmRRl8KACt57T5' \
    --body '[{"additionalData": {"edgOS26dzgFpS6NY": {}, "1c4qGYh7RoFDqRa1": {}, "8UxykVrQgwXdHQBU": {}}, "statCode": "hWexhaSSZARsXkA1", "updateStrategy": "MIN", "value": 0.7897567344497128}, {"additionalData": {"Pb4kAgvVkFuOjK54": {}, "nwUPtcGbSWiIEcd3": {}, "5Vk8JdzrFL5PMSiH": {}}, "statCode": "KfOmDd8aAilvqckB", "updateStrategy": "INCREMENT", "value": 0.8700702751836633}, {"additionalData": {"02JmmAukcNq8dKCi": {}, "MwwTHdcFWM5Msqul": {}, "aV7o4UOB2GB4Qyr0": {}}, "statCode": "q0JGkgNycyzCWOxj", "updateStrategy": "OVERRIDE", "value": 0.893415973478938}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'C2ob9NpllRbhOF4F' \
    --userId 'oRS9odDxRdQP0Lcj' \
    --additionalKey 'jPDtgI9xUKTJoLBR' \
    --body '{"additionalData": {"PkWPrvVZqPzWAFqY": {}, "yrvxiZDgs4k4EqBk": {}, "2443cVneX4gw90l3": {}}, "updateStrategy": "MAX", "value": 0.24591434296173065}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE