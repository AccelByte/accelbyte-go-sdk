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
echo "1..86"

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
    --body '{"maxSlotSize": 33, "maxSlots": 36}' \
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
    --userId 'pp2WvcJY' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'n4DdPvlU' \
    --body '{"maxSlotSize": 85, "maxSlots": 10}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'UoKaClGh' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '5nwbkeTB' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'NvdRdCOd' \
    --userId 'W04OekFS' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'jkm61L60' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'UZAu3y61' \
    --userId 'WfddFym8' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["fh5RcBSJ", "KqtQd0Qn", "x9gZLK66"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'KIRUhkzx' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'pw4Bneu1' \
    --body '{"achievements": ["uhucZCCK", "wKsuYVFr", "YOYuzNLG"], "attributes": {"LJsenBQB": "QexulEBF", "hCTTPcUi": "skDnpf3M", "Ctp8uP7v": "3OxVLd0y"}, "avatarUrl": "AzxAedtH", "inventories": ["s4KgTkji", "DQjtAaL9", "uk2WgmlI"], "label": "An1xunce", "profileName": "mbqc8v6c", "statistics": ["IwEB898L", "yRCc7RxH", "2oHXLbYF"], "tags": ["eGBKacPj", "dmiSqaRh", "g2ZmbqMH"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'a0iKavEH' \
    --userId 'tTzTvBQ1' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '4MtdgjiV' \
    --userId 'L7v87U8X' \
    --body '{"achievements": ["ipwHRd1F", "bM1YQY0V", "UEZs5UOU"], "attributes": {"7chrhEzH": "f0TZhzId", "SCeI1jcI": "wRB8p7Um", "769VqVqZ": "EaQE4P6Z"}, "avatarUrl": "GgWV0ZE0", "inventories": ["1NA9P3cq", "a48kSSWb", "zaLBtRFA"], "label": "cR5nk5W2", "profileName": "0jdoI9he", "statistics": ["RiJRg5tU", "BeYr6Kmj", "0uoC0ssQ"], "tags": ["0XS7sGxS", "VrTdKq9n", "CpzxGROs"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'bgMVWD54' \
    --userId 'qUUZDIRq' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'Q5cayB0M' \
    --namespace $AB_NAMESPACE \
    --profileId '6tK1spIr' \
    --userId 'IjXeryQZ' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'nDxE6i6o' \
    --namespace $AB_NAMESPACE \
    --profileId 'GkTAfzEK' \
    --userId 'kqF1A4Ba' \
    --body '{"name": "uoeA2r1t", "value": "cs3C4mc2"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'CSz86CAo' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'unPSo455' \
    --label 'QkBXwRZ2' \
    --tags '["ogRNuj75", "P3XBhfjC", "cgP7OSqV"]' \
    --checksum 'R1c6VRMk' \
    --customAttribute 'bU40JUEO' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'P7g4ANro' \
    --userId 'g2EMhCgD' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'UDEauJTN' \
    --userId 'UXhlckhn' \
    --label 'kR6RXYk0' \
    --tags '["DhcHX2Vi", "dhRObMLm", "KRuvKrwF"]' \
    --checksum '8ZwBwFFD' \
    --customAttribute 'BKXb115B' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'a2knoMUR' \
    --userId 'LZOVu6gT' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId '0vKmXCcv' \
    --userId '0JeAduSW' \
    --body '{"customAttribute": "1RPRUJ3L", "label": "wr2JMeQU", "tags": ["MJxPx9nH", "W4yPSKWm", "rMdeSBzE"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '70' \
    --statCodes 'mGW0TFLv' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'SIohp8ZX' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '35' \
    --name 'W4UHSKXQ' \
    --offset '41' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "PmiPVNUe", "end": "1975-07-20T00:00:00Z", "name": "HLo2AEGN", "resetDate": 46, "resetDay": 84, "resetMonth": 96, "resetTime": "oR5ynTOK", "seasonPeriod": 94, "start": "1993-02-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'uDSY1qbO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'GetStatCycle' test.out

#- 31 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'TvGYmm0u' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "uqMdpLMJ", "end": "1995-02-04T00:00:00Z", "name": "G2C082hN", "resetDate": 42, "resetDay": 97, "resetMonth": 71, "resetTime": "JLR4QOzM", "seasonPeriod": 25, "start": "1983-09-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateStatCycle' test.out

#- 32 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'c69js4c8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'DeleteStatCycle' test.out

#- 33 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'JtKCckhk' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["N13we72G", "LHB3jJZ5", "zompkQjk"]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkAddStats' test.out

#- 34 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '6R4ZyMmi' \
    --userIds 'peDK1rjV' \
    > test.out 2>&1
eval_tap $? 34 'BulkFetchStatItems' test.out

#- 35 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5240887051439208, "statCode": "sA9c58BW", "userId": "NN5XSQSw"}, {"inc": 0.3758566383934665, "statCode": "JZ2Aiu1c", "userId": "aBVE9Tzo"}, {"inc": 0.7013822749476739, "statCode": "62SOjG3o", "userId": "hCrw8QDc"}]' \
    > test.out 2>&1
eval_tap $? 35 'BulkIncUserStatItem' test.out

#- 36 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7053611149721, "statCode": "CNISj7Vg", "userId": "n2JQlBae"}, {"inc": 0.3416932334715256, "statCode": "6Zel8QFs", "userId": "9WyhKDSz"}, {"inc": 0.9647377847499047, "statCode": "vfLS5SoG", "userId": "KmqQjr3d"}]' \
    > test.out 2>&1
eval_tap $? 36 'BulkIncUserStatItemValue' test.out

#- 37 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'OtE0tZzi' \
    --userIds '["ciHuczo9", "IFoKGgy6", "gJzx13ad"]' \
    > test.out 2>&1
eval_tap $? 37 'BulkFetchOrDefaultStatItems' test.out

#- 38 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "oHxt2bhm", "userId": "iV1nNPCW"}, {"statCode": "UvUDAvgO", "userId": "sbI30Tmf"}, {"statCode": "JVdWnpZb", "userId": "WyNfJSG8"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkResetUserStatItem' test.out

#- 39 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'qb6IxYfv' \
    --isGlobal 'true' \
    --limit '11' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 39 'GetStats' test.out

#- 40 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["X1RT3uMZ", "znHVAxmB", "whLpwwXg"], "defaultValue": 0.10115501706460839, "description": "m5ADZuFs", "incrementOnly": true, "maximum": 0.5926505141770002, "minimum": 0.4512756318769343, "name": "tOEjJp0m", "setAsGlobal": false, "setBy": "SERVER", "statCode": "sI9HbVZd", "tags": ["LPqN0tN6", "4qXQmvnP", "l6ODE9hc"]}' \
    > test.out 2>&1
eval_tap $? 40 'CreateStat' test.out

#- 41 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'ExportStats' test.out

#- 42 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 42 'ImportStats' test.out

#- 43 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --limit '34' \
    --offset '100' \
    --keyword 't8zRpNF4' \
    > test.out 2>&1
eval_tap $? 43 'QueryStats' test.out

#- 44 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'J78iOAQM' \
    > test.out 2>&1
eval_tap $? 44 'GetStat' test.out

#- 45 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'UEd6hp34' \
    > test.out 2>&1
eval_tap $? 45 'DeleteStat' test.out

#- 46 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'cwmNmi1V' \
    --body '{"cycleIds": ["ciWieR9C", "z5SJncYc", "358QMhmP"], "defaultValue": 0.4543070933819118, "description": "Z5rmrqHu", "name": "gAbgDhub", "tags": ["fSvxJX7W", "u9ABDzG4", "xbDzJ1fd"]}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateStat' test.out

#- 47 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'PYTibHiX' \
    > test.out 2>&1
eval_tap $? 47 'DeleteTiedStat' test.out

#- 48 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '6xToCgYI' \
    --limit '10' \
    --offset '71' \
    --sortBy 'pOC31LQu' \
    --statCodes 'jv14tBH0' \
    --tags '1Tg1gwag' \
    > test.out 2>&1
eval_tap $? 48 'GetUserStatItems' test.out

#- 49 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ZgdrJSZn' \
    --body '[{"statCode": "0eW7Kawv"}, {"statCode": "dt2KNexI"}, {"statCode": "FkzoAtOa"}]' \
    > test.out 2>&1
eval_tap $? 49 'BulkCreateUserStatItems' test.out

#- 50 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '5731wkCf' \
    --body '[{"inc": 0.8824198219706847, "statCode": "RGgBa0Kr"}, {"inc": 0.8973389774878971, "statCode": "J4OFiJYc"}, {"inc": 0.4338742506040102, "statCode": "IZzLAwh4"}]' \
    > test.out 2>&1
eval_tap $? 50 'BulkIncUserStatItem1' test.out

#- 51 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'mInJ1JAd' \
    --body '[{"inc": 0.5786264317809832, "statCode": "n8sF6maY"}, {"inc": 0.8526317980036048, "statCode": "ojoOMyy3"}, {"inc": 0.31244484845174025, "statCode": "yqR1QjlL"}]' \
    > test.out 2>&1
eval_tap $? 51 'BulkIncUserStatItemValue1' test.out

#- 52 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'TCYwEhW8' \
    --body '[{"statCode": "Pz8EwWug"}, {"statCode": "qo9A4kij"}, {"statCode": "seV9vBYy"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem1' test.out

#- 53 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'CvXWiEWl' \
    --userId 'YWuPdVal' \
    > test.out 2>&1
eval_tap $? 53 'CreateUserStatItem' test.out

#- 54 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 's6nSd2Nq' \
    --userId 'bx9pgvn4' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserStatItems' test.out

#- 55 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'GzaHXtXE' \
    --userId 'dclmI1xn' \
    --body '{"inc": 0.4265598075091974}' \
    > test.out 2>&1
eval_tap $? 55 'IncUserStatItemValue' test.out

#- 56 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'ZxiFDo3X' \
    --userId 'gratRSmR' \
    --additionalKey 'eJafie9L' \
    --body '{"additionalData": {"4JOn5yFo": {}, "9xXU3QYu": {}, "VhQ7hRq0": {}}}' \
    > test.out 2>&1
eval_tap $? 56 'ResetUserStatItemValue' test.out

#- 57 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '34' \
    --statCodes 'RZTlPRwE' \
    > test.out 2>&1
eval_tap $? 57 'GetGlobalStatItems1' test.out

#- 58 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'lfCa3PnK' \
    > test.out 2>&1
eval_tap $? 58 'GetGlobalStatItemByStatCode1' test.out

#- 59 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '40' \
    --name 'OrF0mvLN' \
    --offset '77' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 59 'GetStatCycles1' test.out

#- 60 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'V5IEDbri' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetStatCycle1' test.out

#- 61 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'cQ4k3Mdt' \
    --userIds 'yGts4Wxn' \
    > test.out 2>&1
eval_tap $? 61 'BulkFetchStatItems1' test.out

#- 62 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5244468215280741, "statCode": "FkvP92K6", "userId": "JXp6Yuua"}, {"inc": 0.9473429371959537, "statCode": "Zm790DAs", "userId": "4VCQ35jc"}, {"inc": 0.9574476097343405, "statCode": "N8UfcMUW", "userId": "MiUx5uUd"}]' \
    > test.out 2>&1
eval_tap $? 62 'PublicBulkIncUserStatItem' test.out

#- 63 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.08109896364809566, "statCode": "qIJwM1tj", "userId": "za6FHsY5"}, {"inc": 0.06733422897806218, "statCode": "dlVo0n9b", "userId": "U0GT7FvO"}, {"inc": 0.382371507752444, "statCode": "JnX84R9c", "userId": "b6RT3Lsm"}]' \
    > test.out 2>&1
eval_tap $? 63 'PublicBulkIncUserStatItemValue' test.out

#- 64 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "aPfStUv3", "userId": "83fCjTZy"}, {"statCode": "yAGh1u3d", "userId": "1Q9qNmCx"}, {"statCode": "C95TZZAr", "userId": "BTJtswfK"}]' \
    > test.out 2>&1
eval_tap $? 64 'BulkResetUserStatItem2' test.out

#- 65 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["0aAzzZpj", "Q7hMIaPp", "AhKnWq0a"], "defaultValue": 0.22446007017692093, "description": "LDCrQvCx", "incrementOnly": false, "maximum": 0.9525647004959206, "minimum": 0.18043086834844657, "name": "937PtzlL", "setAsGlobal": true, "setBy": "SERVER", "statCode": "wS18sVVm", "tags": ["VAW2Oejq", "5Uy3u1YR", "MhXS4R7y"]}' \
    > test.out 2>&1
eval_tap $? 65 'CreateStat1' test.out

#- 66 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'nOBIdq5u' \
    --limit '2' \
    --offset '16' \
    --sortBy 'OMz6OGdY' \
    --statCodes '1JuM2gFp' \
    --tags 'X4pk9XUz' \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryUserStatItems' test.out

#- 67 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'NdUxpBjt' \
    --body '[{"statCode": "vSF9YTwh"}, {"statCode": "Ud8HU9ZJ"}, {"statCode": "BUfkFKBp"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkCreateUserStatItems' test.out

#- 68 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'zwp7N9Ol' \
    --statCodes '["fCamHkzJ", "Irosz185", "e2grlAk2"]' \
    --tags '["Pqn80gu0", "z4msGuZ0", "7aKjCkLL"]' \
    > test.out 2>&1
eval_tap $? 68 'PublicQueryUserStatItems1' test.out

#- 69 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'zk7ABo6T' \
    --body '[{"inc": 0.7692067956081525, "statCode": "YLLcKKs4"}, {"inc": 0.3001061457216736, "statCode": "fOajE2qo"}, {"inc": 0.15461143858566173, "statCode": "Sg63SklP"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem1' test.out

#- 70 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '3XPt2x8R' \
    --body '[{"inc": 0.8575572377006562, "statCode": "UTg2Q7bR"}, {"inc": 0.9222362780455766, "statCode": "n4YE3bh4"}, {"inc": 0.958411389290989, "statCode": "6gIOUOhP"}]' \
    > test.out 2>&1
eval_tap $? 70 'BulkIncUserStatItemValue2' test.out

#- 71 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'kcc77cH3' \
    --body '[{"statCode": "Uj1Yepph"}, {"statCode": "bSL4MdEZ"}, {"statCode": "vx0WOxFl"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem3' test.out

#- 72 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '4EFlfpp6' \
    --userId 'KCkgP624' \
    > test.out 2>&1
eval_tap $? 72 'PublicCreateUserStatItem' test.out

#- 73 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '6yIYnN2f' \
    --userId 'eh51ENhz' \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems1' test.out

#- 74 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'y1jcbmB5' \
    --userId '9mZ00GOn' \
    --body '{"inc": 0.38681695958537277}' \
    > test.out 2>&1
eval_tap $? 74 'PublicIncUserStatItem' test.out

#- 75 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'xH8M3PGg' \
    --userId 'T9DBC7CD' \
    --body '{"inc": 0.16621334214171757}' \
    > test.out 2>&1
eval_tap $? 75 'PublicIncUserStatItemValue' test.out

#- 76 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'tB20jD9X' \
    --userId 'W3gdX8BZ' \
    > test.out 2>&1
eval_tap $? 76 'ResetUserStatItemValue1' test.out

#- 77 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"mH8yZlLo": {}, "uhslvnuR": {}, "iH6x1BbJ": {}}, "additionalKey": "sPJI8Pt3", "statCode": "Q3ZVS8l2", "updateStrategy": "MAX", "userId": "vqvnK8bx", "value": 0.24198158712953233}, {"additionalData": {"BN3SS6hW": {}, "OiGUtPeD": {}, "z3P0cb38": {}}, "additionalKey": "oMIo3iTC", "statCode": "UURZjG5R", "updateStrategy": "OVERRIDE", "userId": "sIMt0F4w", "value": 0.11097718093243036}, {"additionalData": {"nOlACzkX": {}, "v6CttM80": {}, "a1UtPYF0": {}}, "additionalKey": "E0nkv8iH", "statCode": "FeHUkZv3", "updateStrategy": "MIN", "userId": "O4OSmiPT", "value": 0.2828230388899664}]' \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItemV2' test.out

#- 78 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'txNj8Hpb' \
    --statCode 'JtGNI35u' \
    --userIds '["XPq98J9V", "AOHLFm1P", "bnWtt6fu"]' \
    > test.out 2>&1
eval_tap $? 78 'BulkFetchOrDefaultStatItems1' test.out

#- 79 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '5to7mBGj' \
    --additionalKey 'ABvJJTio' \
    --body '[{"additionalData": {"yH1pXwte": {}, "0iL6Jbhh": {}, "T7TGuvV1": {}}, "statCode": "o2XLpuhN", "updateStrategy": "MAX", "value": 0.450247127968294}, {"additionalData": {"NL2XCyZo": {}, "d0gbb8yP": {}, "pTUvR1qm": {}}, "statCode": "5rvUegNB", "updateStrategy": "OVERRIDE", "value": 0.05923085934915262}, {"additionalData": {"TFR5IkTk": {}, "wS5e3uLR": {}, "y7JDuHg5": {}}, "statCode": "1WQk2qpq", "updateStrategy": "INCREMENT", "value": 0.42024091886197235}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkUpdateUserStatItem' test.out

#- 80 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'Bg8I9b9z' \
    --additionalKey 'H094n7Er' \
    --body '[{"additionalData": {"51KsH6rN": {}, "htq3xm4V": {}, "CAV2LhIG": {}}, "statCode": "VNJJdDmf"}, {"additionalData": {"1FfWheWw": {}, "I4cqvpcJ": {}, "3O9RfjiU": {}}, "statCode": "k4jlxfEj"}, {"additionalData": {"iCAsuvAo": {}, "kSzgDkH5": {}, "FqwH4jPL": {}}, "statCode": "x4RV62Qd"}]' \
    > test.out 2>&1
eval_tap $? 80 'BulkResetUserStatItemValues' test.out

#- 81 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'YtY0eoLl' \
    --userId '4YUvxEmM' \
    --additionalKey 'jQRm3VB9' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems2' test.out

#- 82 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'yoCfHxq6' \
    --userId 'KQhCsl4R' \
    --additionalKey '0gDbQafQ' \
    --body '{"additionalData": {"WxYSOAzd": {}, "0QgIlN5G": {}, "dzBfQaSV": {}}, "updateStrategy": "INCREMENT", "value": 0.6187119005021458}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserStatItemValue' test.out

#- 83 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"isgaKRkU": {}, "R9qvupdA": {}, "YHPT4tAx": {}}, "additionalKey": "snUCKkE6", "statCode": "fvtu9U5Q", "updateStrategy": "MIN", "userId": "Jf9BNkZL", "value": 0.33317917986636636}, {"additionalData": {"QKAC1bGy": {}, "2TuqbpbA": {}, "Iukh9o8Z": {}}, "additionalKey": "0iCeQtXC", "statCode": "hiXt4ANk", "updateStrategy": "MIN", "userId": "zFZ4KpPf", "value": 0.20696005515456994}, {"additionalData": {"3AQisAZ5": {}, "gDwze14x": {}, "rYI8yE5O": {}}, "additionalKey": "Hx6VIcRM", "statCode": "QOo8oZt1", "updateStrategy": "OVERRIDE", "userId": "GmwFv5jH", "value": 0.6266112951938688}]' \
    > test.out 2>&1
eval_tap $? 83 'BulkUpdateUserStatItem1' test.out

#- 84 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'fU6iGeEw' \
    --additionalKey 'DIVrin2h' \
    --statCodes '["zY3alFwW", "XuDj8bP7", "h7V1kAAr"]' \
    --tags '["hjGaqDL9", "wE2FIZq6", "zcvrgMfV"]' \
    > test.out 2>&1
eval_tap $? 84 'PublicQueryUserStatItems2' test.out

#- 85 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'dxZukyfg' \
    --additionalKey 'I5bLLFfa' \
    --body '[{"additionalData": {"ZynPxxSe": {}, "2TA7QD1y": {}, "X39CTwQf": {}}, "statCode": "gDhdIuDM", "updateStrategy": "MIN", "value": 0.8533692572441445}, {"additionalData": {"BmVjnn8w": {}, "L1vbQEub": {}, "vxiu8VAi": {}}, "statCode": "A4XbyCW9", "updateStrategy": "MIN", "value": 0.548786569639574}, {"additionalData": {"cPEutinM": {}, "j6P2RMO9": {}, "lrZAPqiU": {}}, "statCode": "CuqeHO4S", "updateStrategy": "OVERRIDE", "value": 0.028221537920072204}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItem2' test.out

#- 86 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'RpYqvrru' \
    --userId 'h3np06Xv' \
    --additionalKey 'Pbo61NVL' \
    --body '{"additionalData": {"2uTdyqiG": {}, "sPiOsrjA": {}, "EPQCBw91": {}}, "updateStrategy": "MIN", "value": 0.9907521471835368}' \
    > test.out 2>&1
eval_tap $? 86 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE