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
echo "1..89"

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
    --body '{"maxSlotSize": 83, "maxSlots": 82}' \
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
    --userId 'eiIm3IOh' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'fCWE4j7W' \
    --body '{"maxSlotSize": 39, "maxSlots": 2}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'gnOazGCH' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'BgRUBCJB' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Ug5HdYbX' \
    --userId 'RyZNr37C' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'nfVnDJTJ' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'sIQHc5WR' \
    --userId 'NjQxSgxN' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["lTaCeFTP", "su6J5PBk", "Jafz8yGq"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'kB2wKLg7' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'GRi0zDWX' \
    --body '{"achievements": ["xGlNW2eG", "fVFVhmJA", "f8lTtvYG"], "attributes": {"q2pXZ4oz": "SRpVtnq3", "b7enFRyh": "L9OmltNh", "ZqEOnu0a": "Ok8tfXfW"}, "avatarUrl": "akZWG8Cq", "inventories": ["dMbrAq9R", "7LIa5Ok9", "ghrj6vml"], "label": "mCMHkNOu", "profileName": "W5gQdAtG", "statistics": ["zhhZQuNy", "OxbYWWF2", "5O6UhVYW"], "tags": ["rWxHPpOp", "ZYQo5BRp", "b6682Syc"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'WstFfGvm' \
    --userId 'mYhbz6qH' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Ve0pOn9Z' \
    --userId 'XufisRLp' \
    --body '{"achievements": ["foQf6Q5y", "P7GtDVnE", "W27tBbfL"], "attributes": {"ikJ2LAB3": "k8M8zmC7", "R7uYhJF5": "WlX1oPwc", "kh5jjaMS": "OpcAz9n0"}, "avatarUrl": "4eywJXFB", "inventories": ["I8ersLlv", "P5WOTdgu", "JdwTpxwl"], "label": "AII3zLkw", "profileName": "2e1WTHb4", "statistics": ["uZGF2YWu", "hM7D6YYi", "3Cz5zydI"], "tags": ["ExUXS71j", "JraufqVl", "t3WY6UMi"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'ZmdHGYj4' \
    --userId 'QqCKzgLP' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'vggV1ZDD' \
    --namespace $AB_NAMESPACE \
    --profileId 'SZAyVqUG' \
    --userId 'AXXkl1F7' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'J4REQhaF' \
    --namespace $AB_NAMESPACE \
    --profileId 'OKkX5AWn' \
    --userId '06NVqjqm' \
    --body '{"name": "FYFgp6S9", "value": "PoFeO3Bj"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId '43hBzTgD' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'IlrTjRE7' \
    --label 'Aqp9YYIb' \
    --tags '["jJS23PVd", "NJVocUi7", "tpimZVzC"]' \
    --checksum 'lD5fSp7q' \
    --customAttribute '9VTjUAgG' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'sDc3cyis' \
    --userId 'tEaG0ZB6' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'pkoyBQhH' \
    --userId 'BjyWrn8y' \
    --label 'DqSRzlK4' \
    --tags '["D2EwpcZV", "4CUWs4jj", "11qbDbcd"]' \
    --checksum '1Sw0bg2w' \
    --customAttribute 'H0UY8JF8' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'ROQdOVVu' \
    --userId '3LSNhd0I' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'u78IMsvn' \
    --userId 'nq5oty9q' \
    --body '{"customAttribute": "Hg0Hgii6", "label": "hFYMyYfl", "tags": ["d64wTEbx", "GuW1muif", "QPB1nlGF"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '50' \
    --statCodes 'c2a8S0kR' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'dbU28Ywi' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '90' \
    --name 'Bvvz2BvZ' \
    --offset '46' \
    --sortBy 'UN5QLdEN' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "TT2R0UuL", "end": "1971-06-12T00:00:00Z", "name": "uYQfkcR4", "resetDate": 50, "resetDay": 66, "resetMonth": 72, "resetTime": "FGrv8729", "seasonPeriod": 54, "start": "1974-12-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'cnAKIKh9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'GetStatCycle' test.out

#- 31 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'BryNNs9Q' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "bdXGSQiF", "end": "1975-08-27T00:00:00Z", "name": "11ISONvc", "resetDate": 13, "resetDay": 42, "resetMonth": 83, "resetTime": "WioTxRrX", "seasonPeriod": 77, "start": "1972-05-16T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateStatCycle' test.out

#- 32 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '2e7imWkx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'DeleteStatCycle' test.out

#- 33 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'QPlUk62W' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["LTeHTsZh", "AFweB0Cv", "fyzf2LlN"]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkAddStats' test.out

#- 34 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'H7ZLG9FS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'StopStatCycle' test.out

#- 35 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '1PWKDp0D' \
    --userIds '2fMfvFwI' \
    > test.out 2>&1
eval_tap $? 35 'BulkFetchStatItems' test.out

#- 36 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.22319757969387377, "statCode": "RNKhPYEq", "userId": "bC0BACYa"}, {"inc": 0.4956888067886719, "statCode": "5M206iRX", "userId": "Wj2tSx11"}, {"inc": 0.5686628459549469, "statCode": "9lzL03ir", "userId": "7MCZSfQX"}]' \
    > test.out 2>&1
eval_tap $? 36 'BulkIncUserStatItem' test.out

#- 37 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.76246840755572, "statCode": "oPX6iT8E", "userId": "xbl1oiqD"}, {"inc": 0.6026588930803839, "statCode": "fXRCZ3kZ", "userId": "QT6JGHVp"}, {"inc": 0.46223982770524275, "statCode": "nvlOMhG6", "userId": "gv4lMkAC"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItemValue' test.out

#- 38 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Bgr9RaMT' \
    --userIds '["Pwi5tPsd", "7AKK0xp1", "4TkcyQUM"]' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchOrDefaultStatItems' test.out

#- 39 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "6ALH1wIv", "userId": "xG5xsAGk"}, {"statCode": "C56HNtth", "userId": "AFWrwGYT"}, {"statCode": "NiSP2hfL", "userId": "C4cWOpFw"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkResetUserStatItem' test.out

#- 40 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'KfBcJ3hv' \
    --isGlobal 'false' \
    --limit '27' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 40 'GetStats' test.out

#- 41 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["7uZYl6o5", "3Cjjcva4", "pvCk8Bh0"], "defaultValue": 0.9168462330786797, "description": "9qv2wzXs", "incrementOnly": false, "maximum": 0.9667287954292408, "minimum": 0.5329439293842404, "name": "aCO4dV7T", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "0oLDFhxS", "tags": ["yvyMRv54", "VMVSN47r", "kxnPBHuT"]}' \
    > test.out 2>&1
eval_tap $? 41 'CreateStat' test.out

#- 42 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'ExportStats' test.out

#- 43 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 43 'ImportStats' test.out

#- 44 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --limit '57' \
    --offset '52' \
    --keyword 'pnaSUiLs' \
    > test.out 2>&1
eval_tap $? 44 'QueryStats' test.out

#- 45 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'mqSEzAEb' \
    > test.out 2>&1
eval_tap $? 45 'GetStat' test.out

#- 46 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'B6BJGfsP' \
    > test.out 2>&1
eval_tap $? 46 'DeleteStat' test.out

#- 47 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FWIau5ir' \
    --body '{"cycleIds": ["eK457hqA", "CHjYBTue", "yXmn8cnR"], "defaultValue": 0.9144348372154616, "description": "1eCYVYV6", "name": "qtji9KkL", "tags": ["Az3yCS9J", "wtNZdsqR", "hI31YNLV"]}' \
    > test.out 2>&1
eval_tap $? 47 'UpdateStat' test.out

#- 48 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'AadQjenO' \
    > test.out 2>&1
eval_tap $? 48 'DeleteTiedStat' test.out

#- 49 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'AiKpvspG' \
    --namespace $AB_NAMESPACE \
    --userId 'NqIPbkWS' \
    --limit '84' \
    --offset '8' \
    --sortBy 'DDyotpid' \
    --statCodes '4iwsRusO' \
    > test.out 2>&1
eval_tap $? 49 'GetUserStatCycleItems' test.out

#- 50 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'JZsYqoiu' \
    --limit '14' \
    --offset '86' \
    --sortBy 'OnRWRZMu' \
    --statCodes 'lGtyYAtC' \
    --tags 'y00s6uvf' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatItems' test.out

#- 51 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'meZFAET1' \
    --body '[{"statCode": "4lV0lE4n"}, {"statCode": "OWqT0Dfw"}, {"statCode": "o5OME2Yd"}]' \
    > test.out 2>&1
eval_tap $? 51 'BulkCreateUserStatItems' test.out

#- 52 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ej2Fp6hO' \
    --body '[{"inc": 0.4539172455572197, "statCode": "BSb0rIy9"}, {"inc": 0.9093694102416163, "statCode": "vurwwkI6"}, {"inc": 0.4866212585440437, "statCode": "dtNfa08X"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkIncUserStatItem1' test.out

#- 53 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'KrNKdVp7' \
    --body '[{"inc": 0.37567762767527857, "statCode": "aBdWvCzl"}, {"inc": 0.2847012850578672, "statCode": "K40cYWzM"}, {"inc": 0.6594702614048877, "statCode": "NKpBJUwS"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItemValue1' test.out

#- 54 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z1mojT3e' \
    --body '[{"statCode": "g9slhNij"}, {"statCode": "LNbHltZR"}, {"statCode": "zzTMqpO0"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkResetUserStatItem1' test.out

#- 55 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'dL5eFQRE' \
    --userId 'Ml88S8ao' \
    > test.out 2>&1
eval_tap $? 55 'CreateUserStatItem' test.out

#- 56 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ZlDm1tnP' \
    --userId 'gjD9gW30' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserStatItems' test.out

#- 57 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'kP7aJ6La' \
    --userId 'g93OTenL' \
    --body '{"inc": 0.6162792461203359}' \
    > test.out 2>&1
eval_tap $? 57 'IncUserStatItemValue' test.out

#- 58 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'TiCYeXi4' \
    --userId '9zfQRxaH' \
    --additionalKey '1sSDDp7T' \
    --body '{"additionalData": {"XRBK866a": {}, "4gWZPKfS": {}, "ccsX5B0O": {}}}' \
    > test.out 2>&1
eval_tap $? 58 'ResetUserStatItemValue' test.out

#- 59 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '19' \
    --statCodes 'pfs99onF' \
    > test.out 2>&1
eval_tap $? 59 'GetGlobalStatItems1' test.out

#- 60 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'egLTwZm6' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItemByStatCode1' test.out

#- 61 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '21' \
    --name 'hiVbUyzo' \
    --offset '48' \
    --sortBy 'XouTiA5T' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 61 'GetStatCycles1' test.out

#- 62 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'gSNFg50E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycle1' test.out

#- 63 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '7f3WZ6na' \
    --userIds 'VFsyNjpl' \
    > test.out 2>&1
eval_tap $? 63 'BulkFetchStatItems1' test.out

#- 64 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.41092721753321815, "statCode": "eRgssHyw", "userId": "APltYzfE"}, {"inc": 0.45947675968719426, "statCode": "J76C3W9e", "userId": "iAapicuF"}, {"inc": 0.3356839483622934, "statCode": "8FUCCTeq", "userId": "5TKcKvqe"}]' \
    > test.out 2>&1
eval_tap $? 64 'PublicBulkIncUserStatItem' test.out

#- 65 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7206239304273471, "statCode": "v97zWdPW", "userId": "sGKo8sAw"}, {"inc": 0.9606651280790285, "statCode": "D772Jnjm", "userId": "SD1v5Wqj"}, {"inc": 0.13858166347191836, "statCode": "ia8qzOY4", "userId": "kuQ4eLLe"}]' \
    > test.out 2>&1
eval_tap $? 65 'PublicBulkIncUserStatItemValue' test.out

#- 66 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "y1w6xAXN", "userId": "0phMAObB"}, {"statCode": "0Xi8zN0Z", "userId": "dRWTDCpn"}, {"statCode": "WJ3IoyrZ", "userId": "gJ2LfNFg"}]' \
    > test.out 2>&1
eval_tap $? 66 'BulkResetUserStatItem2' test.out

#- 67 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Z6teoE5o", "L3uWlYZL", "5w6ch8AV"], "defaultValue": 0.595903068779185, "description": "1v3N3omA", "incrementOnly": true, "maximum": 0.9287111265609157, "minimum": 0.11492859950298906, "name": "qTvgeZ8W", "setAsGlobal": false, "setBy": "SERVER", "statCode": "7y45bzyw", "tags": ["9uyD7JMf", "Eo0xcy7d", "u2lyjDXQ"]}' \
    > test.out 2>&1
eval_tap $? 67 'CreateStat1' test.out

#- 68 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'AOVS0HK0' \
    --namespace $AB_NAMESPACE \
    --userId 'NuXIhXQx' \
    --limit '17' \
    --offset '65' \
    --sortBy 'RALyW2H4' \
    --statCodes 'jjNa3Lip' \
    > test.out 2>&1
eval_tap $? 68 'GetUserStatCycleItems1' test.out

#- 69 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '7htyGmLq' \
    --limit '59' \
    --offset '31' \
    --sortBy 'yeo3NCcQ' \
    --statCodes 'wd8IWTJV' \
    --tags '21qBilzm' \
    > test.out 2>&1
eval_tap $? 69 'PublicQueryUserStatItems' test.out

#- 70 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'LdoBTaTD' \
    --body '[{"statCode": "yw4WKILD"}, {"statCode": "4U69uK5F"}, {"statCode": "KP7VupzF"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkCreateUserStatItems' test.out

#- 71 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'Fg0PI5Yl' \
    --statCodes '["mk8OtP7T", "t5puyD7b", "FTb5yqXY"]' \
    --tags '["rZYjmjo4", "lSJIqkPy", "Hk2oR8uJ"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicQueryUserStatItems1' test.out

#- 72 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'IFezjFAD' \
    --body '[{"inc": 0.6945329426970142, "statCode": "Bu6LmarL"}, {"inc": 0.9161377851932049, "statCode": "2SranUp2"}, {"inc": 0.8499777240274653, "statCode": "HZUQ2lMU"}]' \
    > test.out 2>&1
eval_tap $? 72 'PublicBulkIncUserStatItem1' test.out

#- 73 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '1AGxouOl' \
    --body '[{"inc": 0.3183258644592811, "statCode": "PNtBVOxy"}, {"inc": 0.8395346168100248, "statCode": "eP1IGbqx"}, {"inc": 0.4585185346028382, "statCode": "x3xzNhMj"}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkIncUserStatItemValue2' test.out

#- 74 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'sdLdd2Mc' \
    --body '[{"statCode": "OkMzvkHB"}, {"statCode": "QmtxGLsC"}, {"statCode": "IDIms9oM"}]' \
    > test.out 2>&1
eval_tap $? 74 'BulkResetUserStatItem3' test.out

#- 75 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'x33YimU4' \
    --userId 'aOLk7F8s' \
    > test.out 2>&1
eval_tap $? 75 'PublicCreateUserStatItem' test.out

#- 76 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'zOqtSBkY' \
    --userId 'b2IpuZ6o' \
    > test.out 2>&1
eval_tap $? 76 'DeleteUserStatItems1' test.out

#- 77 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'jrxni44p' \
    --userId 'ltmYxUR5' \
    --body '{"inc": 0.7901439907618748}' \
    > test.out 2>&1
eval_tap $? 77 'PublicIncUserStatItem' test.out

#- 78 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'hft3Xe2q' \
    --userId '6Wla6wml' \
    --body '{"inc": 0.21840121102369958}' \
    > test.out 2>&1
eval_tap $? 78 'PublicIncUserStatItemValue' test.out

#- 79 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'rfGyjEfF' \
    --userId 'CpS64iZe' \
    > test.out 2>&1
eval_tap $? 79 'ResetUserStatItemValue1' test.out

#- 80 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"hVZTh1KY": {}, "tCileZiF": {}, "lg5yIDTR": {}}, "additionalKey": "siKqvmzt", "statCode": "1p3FZD1T", "updateStrategy": "MIN", "userId": "I6uRGBGA", "value": 0.39482954404902226}, {"additionalData": {"1sMC62d2": {}, "Y4gekUhT": {}, "U2kK3NbH": {}}, "additionalKey": "KbXi6h81", "statCode": "oRICTyNp", "updateStrategy": "MIN", "userId": "DK3hSoOb", "value": 0.12790568823344872}, {"additionalData": {"xvySnbKG": {}, "Z0TFBjOv": {}, "Bj3sFRSm": {}}, "additionalKey": "66qRw8BX", "statCode": "xFZOnIxn", "updateStrategy": "MAX", "userId": "b3QXHc2L", "value": 0.7818279483003021}]' \
    > test.out 2>&1
eval_tap $? 80 'BulkUpdateUserStatItemV2' test.out

#- 81 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'mpNZ9kQV' \
    --statCode '9txVpZGZ' \
    --userIds '["T71qZ0L1", "CbQOuaoK", "pqXdLdL0"]' \
    > test.out 2>&1
eval_tap $? 81 'BulkFetchOrDefaultStatItems1' test.out

#- 82 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'Es7xbcdl' \
    --additionalKey 'tb5viAcR' \
    --body '[{"additionalData": {"tnZUu60X": {}, "PCTqgtgU": {}, "LEPxXshd": {}}, "statCode": "3fDB4rQE", "updateStrategy": "MIN", "value": 0.08056120790676968}, {"additionalData": {"ePNBtLzo": {}, "M7U0Vko5": {}, "kHxvChNa": {}}, "statCode": "BBd2Z8Kl", "updateStrategy": "MAX", "value": 0.3159687725304432}, {"additionalData": {"izG4GDB3": {}, "l0V2Sj6w": {}, "s0fdxgZH": {}}, "statCode": "icGNx2bV", "updateStrategy": "INCREMENT", "value": 0.21947687159100115}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkUpdateUserStatItem' test.out

#- 83 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'Nvl8XVYK' \
    --additionalKey 'QlrrHdUh' \
    --body '[{"additionalData": {"Qoe51s3G": {}, "E37uV4u6": {}, "flcEsxNc": {}}, "statCode": "HxvOqx3x"}, {"additionalData": {"DZhTvkxI": {}, "Py4DZ081": {}, "K4YMmIQA": {}}, "statCode": "jiuojWB5"}, {"additionalData": {"lbbEJcGs": {}, "Ql77qbia": {}, "g9emIBAe": {}}, "statCode": "tvdzfkn0"}]' \
    > test.out 2>&1
eval_tap $? 83 'BulkResetUserStatItemValues' test.out

#- 84 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'VKzKEBeP' \
    --userId 'TM7NIoMB' \
    --additionalKey 'zCR41eul' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems2' test.out

#- 85 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'wCxPmkFV' \
    --userId 'tJQ7Ydt9' \
    --additionalKey 'zd19xzoT' \
    --body '{"additionalData": {"SO9CofrJ": {}, "ckbaS3Ee": {}, "dOwQgF4c": {}}, "updateStrategy": "MIN", "value": 0.3676188766973443}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateUserStatItemValue' test.out

#- 86 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"3EuegZ3O": {}, "6BsAjHcI": {}, "y9tktHJq": {}}, "additionalKey": "XMPhnUgY", "statCode": "6nRAgTKS", "updateStrategy": "INCREMENT", "userId": "vFThajrQ", "value": 0.4729668829910646}, {"additionalData": {"1kcyBunR": {}, "Y33svnqO": {}, "xXW19wSj": {}}, "additionalKey": "XXK42L9e", "statCode": "SanUpRPy", "updateStrategy": "MIN", "userId": "1HZkbLLt", "value": 0.9390037295049094}, {"additionalData": {"GjAouyTA": {}, "s0goHj0B": {}, "ppCWjVdQ": {}}, "additionalKey": "oyfjofYN", "statCode": "djlUL5Mg", "updateStrategy": "MIN", "userId": "un9fFHYp", "value": 0.3102687569257747}]' \
    > test.out 2>&1
eval_tap $? 86 'BulkUpdateUserStatItem1' test.out

#- 87 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'LyU1QjrI' \
    --additionalKey 'FwwuiEIx' \
    --statCodes '["X8epNPqa", "UnlW0zKI", "Wa43FLdF"]' \
    --tags '["5yFbqZBx", "FKKV1CoE", "HnFvQTDO"]' \
    > test.out 2>&1
eval_tap $? 87 'PublicQueryUserStatItems2' test.out

#- 88 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'wplQRiIw' \
    --additionalKey 'yO4aqEoz' \
    --body '[{"additionalData": {"rGvqFmku": {}, "vugi5E7k": {}, "k7G1RAem": {}}, "statCode": "Ici292bv", "updateStrategy": "MIN", "value": 0.5156061977839359}, {"additionalData": {"e1F4QNpg": {}, "tlLfyhmi": {}, "PcwCIRNk": {}}, "statCode": "oBNvSo8m", "updateStrategy": "INCREMENT", "value": 0.1824194086551032}, {"additionalData": {"5g7Vbdvz": {}, "wvKoqRl5": {}, "SXQhBGf1": {}}, "statCode": "iLUKFsk5", "updateStrategy": "MIN", "value": 0.6216660685301428}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem2' test.out

#- 89 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'rsRncBTQ' \
    --userId 'CQU02RFM' \
    --additionalKey 'YC03lSR0' \
    --body '{"additionalData": {"yUlYpkjY": {}, "rYcmbDtF": {}, "m6sjKj6D": {}}, "updateStrategy": "MIN", "value": 0.9960284389340164}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE