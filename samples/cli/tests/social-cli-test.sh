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
echo "1..78"

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
    --body '{"maxSlotSize": 10, "maxSlots": 56}' \
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
    --userId 'F8MaKPVg' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'qhmIXktS' \
    --body '{"maxSlotSize": 3, "maxSlots": 19}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId '480jWEOd' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'd8HSOi1s' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'GsI9hhdV' \
    --userId 'iJuJU4hd' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'wAvkhHfh' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'FbLEU173' \
    --userId 'k186g4xG' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["LGMI1QgP", "xOe8CEqN", "SsjSxF70"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '0cIhrqnR' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'hAZlvifk' \
    --body '{"achievements": ["J7R6D9Bh", "ckn2gPkL", "dX9tLigy"], "attributes": {"qAk1mCpl": "Xvt8jx2O", "tBmySRhk": "9AHOhj9u", "tJ8t40pp": "1PhYQu5u"}, "avatarUrl": "CAJPdRoh", "inventories": ["KCt68Tx6", "NRLlXmyQ", "7rTYwwVq"], "label": "H5vAxW9F", "profileName": "mckoJjOC", "statistics": ["pua3SIVm", "zFpJBFdR", "3T5ohLVx"], "tags": ["WFORS1iK", "5rRT5rHq", "dPxJ3k97"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '8ZsFMBAG' \
    --userId '3SP1d3jH' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'jGPlsJJt' \
    --userId 'XWepx7ic' \
    --body '{"achievements": ["4T24InMU", "GkD1yFkX", "iXSOWWTj"], "attributes": {"1iYCapYO": "jX9b88GB", "iIkTApKa": "3v7OJRxp", "JT8y4kOg": "zm3ARlkX"}, "avatarUrl": "fH1b5qkJ", "inventories": ["EST8nKLF", "pjnBKRfj", "5lGnelRf"], "label": "Ex4aaeD2", "profileName": "jvdeGjm8", "statistics": ["BTrWZmcc", "6ggmty7v", "k9K4ZHUt"], "tags": ["w8Fzosun", "JGXxDj73", "0hcWiC01"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Bt0mmGLm' \
    --userId 'e1cL6D08' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'Zk5eqcea' \
    --namespace $AB_NAMESPACE \
    --profileId 'rggVyjRN' \
    --userId 'ikRgLeHR' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'mooheaU9' \
    --namespace $AB_NAMESPACE \
    --profileId 'tqXDDQjA' \
    --userId 'LjNsg3s3' \
    --body '{"name": "Uq9AEoqT", "value": "iGQo4Hx1"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'Oxxudfk2' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'J9vWdn7y' \
    --label 'tuA8zp9a' \
    --tags '["4TArVYCa", "F8G1Fam0", "hp28KU0I"]' \
    --checksum 'V5xyP4QU' \
    --customAttribute 'E8UQo4cG' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'ixDKnKzi' \
    --userId 'wEa6N2Uz' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'O9nEW9SQ' \
    --userId '3akAjG6H' \
    --label '2h1tKqwE' \
    --tags '["KghUleXV", "OScKFnS2", "jCVT0XVK"]' \
    --checksum 'kxW48pPu' \
    --customAttribute 'cdIbAUzv' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'MQbWw659' \
    --userId '66zielA7' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'WvmVQvas' \
    --userId '0addJ8OD' \
    --body '{"customAttribute": "ODo7zZSa", "label": "WfCU3pyJ", "tags": ["WUB9m2oM", "Dxekm2UJ", "kEl3iRGN"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '12' \
    --statCodes 'DDL8we2u' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'ogu0jNS6' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'FulbyuW8' \
    --userIds 'APp8LZep' \
    > test.out 2>&1
eval_tap $? 28 'BulkFetchStatItems' test.out

#- 29 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.017336298753600432, "statCode": "H6Yi2vK2", "userId": "5fvdt9xi"}, {"inc": 0.8598711884691117, "statCode": "SF2ewYCE", "userId": "IRNov8U4"}, {"inc": 0.7389778156781138, "statCode": "fJTPfo0W", "userId": "Ir9HQsLB"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItem' test.out

#- 30 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9050894289196387, "statCode": "gfFiNa1l", "userId": "znchcvnu"}, {"inc": 0.9060921815966742, "statCode": "uK7gIw9K", "userId": "1Jp61bdS"}, {"inc": 0.9817422381625801, "statCode": "q07GvTbB", "userId": "opxBRKCA"}]' \
    > test.out 2>&1
eval_tap $? 30 'BulkIncUserStatItemValue' test.out

#- 31 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '40q8Q8PG' \
    --userIds '["W0n4NDpU", "1dnQJ5hr", "RFQVUtk5"]' \
    > test.out 2>&1
eval_tap $? 31 'BulkFetchOrDefaultStatItems' test.out

#- 32 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "CCNk2gF7", "userId": "8ikIdATh"}, {"statCode": "CGsV4L62", "userId": "91EMCtFS"}, {"statCode": "Jmz86EBb", "userId": "y6uWPwde"}]' \
    > test.out 2>&1
eval_tap $? 32 'BulkResetUserStatItem' test.out

#- 33 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 33 'GetStats' test.out

#- 34 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.8186615297274933, "description": "xO2Av6hY", "incrementOnly": false, "maximum": 0.8069853248294367, "minimum": 0.3540337521918253, "name": "6ZY1wPrE", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "XEcLeFTo", "tags": ["omYROpuu", "UfnhpnTv", "Lj8o8qwr"]}' \
    > test.out 2>&1
eval_tap $? 34 'CreateStat' test.out

#- 35 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'ExportStats' test.out

#- 36 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 36 'ImportStats' test.out

#- 37 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '21' \
    --keyword 'F89yERSj' \
    > test.out 2>&1
eval_tap $? 37 'QueryStats' test.out

#- 38 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '0lWtUh5p' \
    > test.out 2>&1
eval_tap $? 38 'GetStat' test.out

#- 39 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'TmuhY6PH' \
    > test.out 2>&1
eval_tap $? 39 'DeleteStat' test.out

#- 40 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'NYXGV84J' \
    --body '{"defaultValue": 0.6206896365330381, "description": "bk2b88GW", "name": "Qc3i3AtK", "tags": ["ljGqjunw", "g4dbvmV2", "IOejz6O5"]}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateStat' test.out

#- 41 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Uwef92QP' \
    > test.out 2>&1
eval_tap $? 41 'DeleteTiedStat' test.out

#- 42 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'LGdTHzAY' \
    --limit '54' \
    --offset '62' \
    --statCodes 's1cVBGa9' \
    --tags 'yzs7SVwO' \
    > test.out 2>&1
eval_tap $? 42 'GetUserStatItems' test.out

#- 43 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3o3BLXKI' \
    --body '[{"statCode": "JgUPRwY4"}, {"statCode": "ha6dZ8hd"}, {"statCode": "5WnNyoei"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkCreateUserStatItems' test.out

#- 44 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'KbUfLomu' \
    --body '[{"inc": 0.9012618875225388, "statCode": "KtrqugER"}, {"inc": 0.39059644649161707, "statCode": "zxH7Pc0u"}, {"inc": 0.5333191733255094, "statCode": "sDTnEJpW"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItem1' test.out

#- 45 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'rFGR4Q9h' \
    --body '[{"inc": 0.1182135793383794, "statCode": "wAxvpoft"}, {"inc": 0.954920227791188, "statCode": "2BFQduj5"}, {"inc": 0.24020157516446983, "statCode": "CxiuGMZb"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkIncUserStatItemValue1' test.out

#- 46 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'BccQ2kAK' \
    --body '[{"statCode": "oGxp8lgc"}, {"statCode": "3rnjCeAH"}, {"statCode": "RoUXfuBR"}]' \
    > test.out 2>&1
eval_tap $? 46 'BulkResetUserStatItem1' test.out

#- 47 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'OPKm9Niu' \
    --userId 'qdYGnMrn' \
    > test.out 2>&1
eval_tap $? 47 'CreateUserStatItem' test.out

#- 48 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'SSISjQf1' \
    --userId 'aMr272Bq' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserStatItems' test.out

#- 49 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'uCLZRbNh' \
    --userId 'vlBYL4C1' \
    --body '{"inc": 0.3825493713234669}' \
    > test.out 2>&1
eval_tap $? 49 'IncUserStatItemValue' test.out

#- 50 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'VzI8bncv' \
    --userId 'GrZpYlQZ' \
    --additionalKey 'DOwnAa9f' \
    --body '{"additionalData": {"GOofr7Ae": {}, "aDzIZ0aE": {}, "kEHgdNvG": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'ResetUserStatItemValue' test.out

#- 51 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '86' \
    --statCodes 'ggAlIGrh' \
    > test.out 2>&1
eval_tap $? 51 'GetGlobalStatItems1' test.out

#- 52 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '6mAQwjNx' \
    > test.out 2>&1
eval_tap $? 52 'GetGlobalStatItemByStatCode1' test.out

#- 53 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'GiI11wcj' \
    --userIds 'UdBy8dQy' \
    > test.out 2>&1
eval_tap $? 53 'BulkFetchStatItems1' test.out

#- 54 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.831665626505745, "statCode": "VM0Z5QQ7", "userId": "uFPtv5gr"}, {"inc": 0.29347158169799037, "statCode": "eW2nofj7", "userId": "ICfuICfT"}, {"inc": 0.7201637326955223, "statCode": "fxkQ54vb", "userId": "RP3T0jWJ"}]' \
    > test.out 2>&1
eval_tap $? 54 'PublicBulkIncUserStatItem' test.out

#- 55 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6493871481866961, "statCode": "Pi5n97AW", "userId": "7g0FdSf6"}, {"inc": 0.2455792797248011, "statCode": "lrv2HNZC", "userId": "rKqsaaao"}, {"inc": 0.023183652979367753, "statCode": "HkOWiGvj", "userId": "tjd6ufeG"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkIncUserStatItemValue' test.out

#- 56 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "kC9C1uXv", "userId": "FIfslKdN"}, {"statCode": "GNMEJWtC", "userId": "HgOvN7ms"}, {"statCode": "YmMTSxC6", "userId": "YcGY0U3S"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem2' test.out

#- 57 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.14720177566572235, "description": "QSTeNzXa", "incrementOnly": true, "maximum": 0.6539418384784437, "minimum": 0.15506070290290308, "name": "EEo2O0hh", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "B1MBg5Rd", "tags": ["VaeiKcRS", "2ndYlybz", "Wf33Klh2"]}' \
    > test.out 2>&1
eval_tap $? 57 'CreateStat1' test.out

#- 58 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'mobDrC6h' \
    --limit '49' \
    --offset '16' \
    --statCodes 'qfjz75eR' \
    --tags 'oJlZYNTY' \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryUserStatItems' test.out

#- 59 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'xb0Rkod3' \
    --body '[{"statCode": "fSO0QDSb"}, {"statCode": "wZ7TgG3B"}, {"statCode": "h3eQEuy1"}]' \
    > test.out 2>&1
eval_tap $? 59 'PublicBulkCreateUserStatItems' test.out

#- 60 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'fyGG1pEL' \
    --statCodes '["5OEeU8Wk", "htKz0Bc9", "QlJuoPue"]' \
    --tags '["e8P0VxJa", "JdtxKJ6Z", "CdStCS5X"]' \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryUserStatItems1' test.out

#- 61 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'aVFXxj2Y' \
    --body '[{"inc": 0.23919550197449457, "statCode": "DvfoIAt9"}, {"inc": 0.7749878060888545, "statCode": "M1us9DnS"}, {"inc": 0.6163125316690318, "statCode": "DCDIs57v"}]' \
    > test.out 2>&1
eval_tap $? 61 'PublicBulkIncUserStatItem1' test.out

#- 62 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'uFR9hFHJ' \
    --body '[{"inc": 0.5877447893359693, "statCode": "liJPnBdW"}, {"inc": 0.02613836648933876, "statCode": "dkrrtRVX"}, {"inc": 0.5259196847259441, "statCode": "7pkYl2h8"}]' \
    > test.out 2>&1
eval_tap $? 62 'BulkIncUserStatItemValue2' test.out

#- 63 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '8P0nujue' \
    --body '[{"statCode": "ean78dHH"}, {"statCode": "AZBMlU73"}, {"statCode": "ASOjcW1L"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkResetUserStatItem3' test.out

#- 64 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'CKSC9grZ' \
    --userId 'G7spfbIv' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserStatItem' test.out

#- 65 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'khjyPu6t' \
    --userId 'YTri0BrM' \
    > test.out 2>&1
eval_tap $? 65 'DeleteUserStatItems1' test.out

#- 66 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'eY6rG3rV' \
    --userId 'gAfFN2Mv' \
    --body '{"inc": 0.12678251235897453}' \
    > test.out 2>&1
eval_tap $? 66 'PublicIncUserStatItem' test.out

#- 67 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'eilRIysB' \
    --userId '804lc8NM' \
    --body '{"inc": 0.6887409109753109}' \
    > test.out 2>&1
eval_tap $? 67 'PublicIncUserStatItemValue' test.out

#- 68 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'qUx3jaV6' \
    --userId '9xwEBJax' \
    > test.out 2>&1
eval_tap $? 68 'ResetUserStatItemValue1' test.out

#- 69 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"pKAAwqK2": {}, "zEAjr1xt": {}, "wPB21P9i": {}}, "additionalKey": "AkQ3Ies1", "statCode": "c94y9flM", "updateStrategy": "MAX", "userId": "gDYVoZQV", "value": 0.08931290672495173}, {"additionalData": {"IrxHmIbE": {}, "wVDYSaZQ": {}, "6to9VDET": {}}, "additionalKey": "ItlgBvfz", "statCode": "fyH6r7b3", "updateStrategy": "INCREMENT", "userId": "yJl3jCIM", "value": 0.2485567235450662}, {"additionalData": {"nojzEyGP": {}, "cjnJbluX": {}, "IeJBDWdR": {}}, "additionalKey": "aRkPLHSI", "statCode": "NbNVjS5b", "updateStrategy": "MAX", "userId": "W6z59SbN", "value": 0.029061363966682463}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkUpdateUserStatItemV2' test.out

#- 70 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'uM1x8b4v' \
    --statCode 'FsY9FWsE' \
    --userIds '["7yDLzjui", "Vt4otleN", "5Yb7tvHs"]' \
    > test.out 2>&1
eval_tap $? 70 'BulkFetchOrDefaultStatItems1' test.out

#- 71 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '7fy0oIjd' \
    --additionalKey 'dp0iYeZc' \
    --body '[{"additionalData": {"6zjPkuR7": {}, "my4lQnJo": {}, "lGX9eGhD": {}}, "statCode": "ihKmIUg2", "updateStrategy": "OVERRIDE", "value": 0.416663335257213}, {"additionalData": {"OeIj8YUK": {}, "e9j3QuSn": {}, "UjaIyNVw": {}}, "statCode": "MdkBSt2i", "updateStrategy": "MAX", "value": 0.6788206761778448}, {"additionalData": {"yanWKTRf": {}, "8trJgl9e": {}, "sqE9RbhM": {}}, "statCode": "7WzrfFph", "updateStrategy": "MIN", "value": 0.8777487906891676}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem' test.out

#- 72 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'zqLaBzZc' \
    --additionalKey 'bAwgzOjw' \
    --body '[{"additionalData": {"ArraB35x": {}, "5y5xmNkW": {}, "JXwAmYE9": {}}, "statCode": "ncpovB6K"}, {"additionalData": {"P8n62ZaN": {}, "moqhKPyM": {}, "hDKgtVZc": {}}, "statCode": "dnppumHu"}, {"additionalData": {"JIWfMB06": {}, "z8JCsZmK": {}, "UP5oxpR0": {}}, "statCode": "0NZzFoTr"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItemValues' test.out

#- 73 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'A0X5XdRz' \
    --userId '8WnwewQA' \
    --additionalKey '0YJKw6UE' \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems2' test.out

#- 74 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'RHfDA3m9' \
    --userId 'rJ3Yv2Xz' \
    --additionalKey 'acsM3hF0' \
    --body '{"additionalData": {"N8I4yrR1": {}, "gbpn070L": {}, "x0rBFvwO": {}}, "updateStrategy": "INCREMENT", "value": 0.5588741923215821}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue' test.out

#- 75 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"MxiqUmZ3": {}, "JQqytExb": {}, "l7VFLxQq": {}}, "additionalKey": "ELjbfmvO", "statCode": "g04t7ESo", "updateStrategy": "MIN", "userId": "K21zJ8mc", "value": 0.7846082939688575}, {"additionalData": {"OKR4PYD6": {}, "ONZcRxgk": {}, "d5yjs9Q2": {}}, "additionalKey": "0QD6JqH2", "statCode": "VYxIywhE", "updateStrategy": "MAX", "userId": "1O7Bv3kr", "value": 0.5253278703568591}, {"additionalData": {"INLTepFP": {}, "k42YMa74": {}, "M6kwMtEa": {}}, "additionalKey": "PHg3WJ0B", "statCode": "Jl7zKy6q", "updateStrategy": "INCREMENT", "userId": "BokvDl4S", "value": 0.1454221866169605}]' \
    > test.out 2>&1
eval_tap $? 75 'BulkUpdateUserStatItem1' test.out

#- 76 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'QfORVzpd' \
    --additionalKey 'uGLuVyvt' \
    --statCodes '["RI8kOTex", "upTag8j0", "RchCFfMF"]' \
    --tags '["TUO5bvwQ", "qHiaOb3k", "GvNLS68X"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems2' test.out

#- 77 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'I0r81lZu' \
    --additionalKey 'wCaJGPr1' \
    --body '[{"additionalData": {"Vitnje5k": {}, "kxWbMiOy": {}, "l3gAXlqa": {}}, "statCode": "2HXUQ3D3", "updateStrategy": "OVERRIDE", "value": 0.2766808819361418}, {"additionalData": {"swlCiaPe": {}, "nTc4j5ci": {}, "lUOOO5tz": {}}, "statCode": "dDXS60lw", "updateStrategy": "MIN", "value": 0.6786202209629849}, {"additionalData": {"KnOPX1Ay": {}, "MR9hG30G": {}, "2hhEtJaT": {}}, "statCode": "Wg4F3bMK", "updateStrategy": "MIN", "value": 0.6909498517889625}]' \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItem2' test.out

#- 78 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'tmcT80IM' \
    --userId 'k3aohNe0' \
    --additionalKey 'A64iJ7Xc' \
    --body '{"additionalData": {"cTV6OILT": {}, "tPBQW0aM": {}, "QUx7O63P": {}}, "updateStrategy": "MIN", "value": 0.8932428786011645}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE