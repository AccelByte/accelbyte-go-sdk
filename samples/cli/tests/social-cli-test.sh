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
    --body '{"maxSlotSize": 27, "maxSlots": 9}' \
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
    --userId 'gs1BwB5x' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'Jkq8wm7W' \
    --body '{"maxSlotSize": 0, "maxSlots": 25}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'mieHimxo' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'aHyEGzu2' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'zEnePZCu' \
    --userId 'ejWHn4MP' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'avAj0ldd' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'hpO20DBZ' \
    --userId '2iRNOMFX' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["TPX7VwT2", "W5G2qehR", "aaO1Xkbr"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '0WbwCIK9' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'DB0RxKjy' \
    --body '{"achievements": ["qNYfWz6I", "S6ZlyIev", "XuwnOKKC"], "attributes": {"vEgS7yHs": "fEVAMrxr", "96P5ZANI": "rn1WCRHL", "BxekxG1d": "Tl2YxR5v"}, "avatarUrl": "5gQ9UYxO", "inventories": ["gkxfNTwR", "Tcvq6tzB", "coL8RMwQ"], "label": "Iv7Bwt0l", "profileName": "SXfcmvGS", "statistics": ["2d7cxLPn", "stc44U6R", "Iba69xSq"], "tags": ["WRtDpX6L", "uwuSXkg2", "RFRSYvAJ"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'YQjXBMOM' \
    --userId 'GDFvEyoS' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'dy3Ac5g7' \
    --userId 'LJ9HvK6X' \
    --body '{"achievements": ["XhWlc8Hq", "Ys0xbwCK", "t6zOdws7"], "attributes": {"eVNRiE2H": "LdNvmrBT", "EO6x79Va": "B1iYQVBz", "BjRs30y3": "zyARstLn"}, "avatarUrl": "H3TM5NZE", "inventories": ["WYS1mjhB", "fuC7D6YU", "mn4e7WJh"], "label": "UkaWel42", "profileName": "AmxZoz6d", "statistics": ["9Jq6zGBl", "27TSBCfB", "1vjfCDss"], "tags": ["kCLkgJaG", "mgn47UFm", "BawZey3G"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Hsz1BF62' \
    --userId 'DX4TCHJv' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '4AHMTt6G' \
    --namespace $AB_NAMESPACE \
    --profileId 'cOb0X6jI' \
    --userId 'I25BhruT' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'KMlY92u9' \
    --namespace $AB_NAMESPACE \
    --profileId 'sxSMbGTF' \
    --userId '26J4HT6F' \
    --body '{"name": "2ksuo7fH", "value": "NZMDraCK"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'xhZtG3ur' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'geDa34B2' \
    --label 'hyUM5SZs' \
    --tags '["2payMulr", "oCP5E76u", "UxVsQZdU"]' \
    --checksum 'c6YO1XSW' \
    --customAttribute 'CDdArv4T' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId '82S06TMg' \
    --userId 'DdoSniT4' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'jPTuv2eG' \
    --userId 'lczDXcnm' \
    --label '5XujcNQQ' \
    --tags '["l2hWyFzv", "rZSnhQvI", "W8QoonAW"]' \
    --checksum 'X9Q8i9o8' \
    --customAttribute 'kb0xVuio' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '4nalRc8U' \
    --userId 'KY4r6Sov' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'E2j3Qbz8' \
    --userId 'hKWxTgda' \
    --body '{"customAttribute": "vkF0nHZZ", "label": "kA86LL0E", "tags": ["ySlSBOG6", "1TohVTSy", "feluSvA1"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '14' \
    --statCodes '1z5NSDhD' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '61vtWo2z' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'lUieiN9S' \
    --userIds 'rw93OiFa' \
    > test.out 2>&1
eval_tap $? 28 'BulkFetchStatItems' test.out

#- 29 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5342227412522929, "statCode": "goK1Gxou", "userId": "aHxc5qN1"}, {"inc": 0.8895868224535738, "statCode": "K7zKopzc", "userId": "J9bmuWaB"}, {"inc": 0.7762132067984873, "statCode": "Wzs1Bn4G", "userId": "0T9tzrdQ"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItem' test.out

#- 30 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5415800013897809, "statCode": "G1TWPPwT", "userId": "tnWxIqQN"}, {"inc": 0.606476951782688, "statCode": "lr44b77h", "userId": "2NVQHQUn"}, {"inc": 0.957385677514188, "statCode": "uzXqqWhU", "userId": "7A6lzvvU"}]' \
    > test.out 2>&1
eval_tap $? 30 'BulkIncUserStatItemValue' test.out

#- 31 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'MYEEK84O' \
    --userIds '["6I76lUWY", "W3O7bjXS", "elYOGPCE"]' \
    > test.out 2>&1
eval_tap $? 31 'BulkFetchOrDefaultStatItems' test.out

#- 32 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "DDkuJzYJ", "userId": "Hw8i7vJw"}, {"statCode": "zrQnUdVx", "userId": "NHdf0P5F"}, {"statCode": "O5nafjZg", "userId": "QL20Fqk4"}]' \
    > test.out 2>&1
eval_tap $? 32 'BulkResetUserStatItem' test.out

#- 33 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 33 'GetStats' test.out

#- 34 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.10805219578170666, "description": "y0AavwFh", "incrementOnly": true, "maximum": 0.3164904651085281, "minimum": 0.44352509444131705, "name": "iKqvaXdM", "setAsGlobal": true, "setBy": "SERVER", "statCode": "QbHXRLGs", "tags": ["R0b5ZNc3", "AuLsVd6f", "RnNGUjfW"]}' \
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
    --limit '92' \
    --offset '57' \
    --keyword 'By7vRhOc' \
    > test.out 2>&1
eval_tap $? 37 'QueryStats' test.out

#- 38 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'OxL0jNqJ' \
    > test.out 2>&1
eval_tap $? 38 'GetStat' test.out

#- 39 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '7yufqZmo' \
    > test.out 2>&1
eval_tap $? 39 'DeleteStat' test.out

#- 40 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'PXWrW3br' \
    --body '{"defaultValue": 0.8627001575381381, "description": "AAOEpiIh", "name": "VefabdVg", "tags": ["53cm6igV", "tFY2XAHZ", "UT8DBkBj"]}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateStat' test.out

#- 41 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'cCSYXYQO' \
    > test.out 2>&1
eval_tap $? 41 'DeleteTiedStat' test.out

#- 42 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'LSDiFFX8' \
    --limit '79' \
    --offset '2' \
    --statCodes 'Ytk5YxwO' \
    --tags 'IxXgbSgb' \
    > test.out 2>&1
eval_tap $? 42 'GetUserStatItems' test.out

#- 43 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '74edRsCi' \
    --body '[{"statCode": "To0IACgC"}, {"statCode": "kNXFPXOk"}, {"statCode": "J7oZveBE"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkCreateUserStatItems' test.out

#- 44 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'VdgYqy6d' \
    --body '[{"inc": 0.02876410104828042, "statCode": "FcW5cMCR"}, {"inc": 0.057941525712415176, "statCode": "B7OWs3N2"}, {"inc": 0.2468079019803172, "statCode": "m2skEafZ"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItem1' test.out

#- 45 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'jwx2aS58' \
    --body '[{"inc": 0.05501517959076274, "statCode": "4cCsVAZS"}, {"inc": 0.7287017509375582, "statCode": "9ruEcIGv"}, {"inc": 0.33261292855660174, "statCode": "SYeYItQB"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkIncUserStatItemValue1' test.out

#- 46 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'JrcLJvS3' \
    --body '[{"statCode": "KRj2gVZN"}, {"statCode": "K9VoymSK"}, {"statCode": "UxkjiBQz"}]' \
    > test.out 2>&1
eval_tap $? 46 'BulkResetUserStatItem1' test.out

#- 47 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'twMZk7cR' \
    --userId 'BKJecOdH' \
    > test.out 2>&1
eval_tap $? 47 'CreateUserStatItem' test.out

#- 48 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'DXSeI84l' \
    --userId 'sWGHHazf' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserStatItems' test.out

#- 49 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'TEeJUoAg' \
    --userId 'NVDzqmdU' \
    --body '{"inc": 0.4253117439914986}' \
    > test.out 2>&1
eval_tap $? 49 'IncUserStatItemValue' test.out

#- 50 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'aFPlJYvv' \
    --userId 'MeEoZhud' \
    --additionalKey 'FLWJd8Xv' \
    --body '{"additionalData": {"TEwI5ltW": {}, "FugsdC3U": {}, "k9wc9ECR": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'ResetUserStatItemValue' test.out

#- 51 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '97' \
    --statCodes 'x4e36ipE' \
    > test.out 2>&1
eval_tap $? 51 'GetGlobalStatItems1' test.out

#- 52 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'tiGXUsNK' \
    > test.out 2>&1
eval_tap $? 52 'GetGlobalStatItemByStatCode1' test.out

#- 53 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'PwdzHYBM' \
    --userIds 'THbaK0kb' \
    > test.out 2>&1
eval_tap $? 53 'BulkFetchStatItems1' test.out

#- 54 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.27947246118024227, "statCode": "ESX7SS8k", "userId": "6VwiIJnu"}, {"inc": 0.609774441222182, "statCode": "Ja2ModNy", "userId": "Gmw4UQrK"}, {"inc": 0.522986980012388, "statCode": "wRiRUjeK", "userId": "893aneOv"}]' \
    > test.out 2>&1
eval_tap $? 54 'PublicBulkIncUserStatItem' test.out

#- 55 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6885558293649859, "statCode": "qKfQKq2O", "userId": "anPnJNec"}, {"inc": 0.72674361283226, "statCode": "thYsIdf9", "userId": "pov3vKHs"}, {"inc": 0.8796238694492786, "statCode": "zWjdeVhi", "userId": "vB2rIS6O"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkIncUserStatItemValue' test.out

#- 56 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "6YWzlZwa", "userId": "N9GQyvXR"}, {"statCode": "7WVKF7KE", "userId": "rkqsc32f"}, {"statCode": "j6R3GidO", "userId": "67XMxgr6"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem2' test.out

#- 57 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.29241677661028553, "description": "uHemZMOZ", "incrementOnly": false, "maximum": 0.8879876250126202, "minimum": 0.825805918201858, "name": "zNDY1aha", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "0uncDGMm", "tags": ["MjxOA9Qx", "veP3c6r1", "XOcn6JXd"]}' \
    > test.out 2>&1
eval_tap $? 57 'CreateStat1' test.out

#- 58 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'QAVhKLpk' \
    --limit '66' \
    --offset '80' \
    --statCodes 'PX5wU7RQ' \
    --tags 'iWn91u1Y' \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryUserStatItems' test.out

#- 59 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'nUZDYYqa' \
    --body '[{"statCode": "mG8Qy6D9"}, {"statCode": "pQXt2oWk"}, {"statCode": "FDrNhHYG"}]' \
    > test.out 2>&1
eval_tap $? 59 'PublicBulkCreateUserStatItems' test.out

#- 60 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'MgnH1pYf' \
    --statCodes '["zJOdXMoe", "IsIJYruu", "8rEMZdAZ"]' \
    --tags '["0eGhVjYP", "V0EzDMJQ", "AHZrJvkD"]' \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryUserStatItems1' test.out

#- 61 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'wjC0HkKj' \
    --body '[{"inc": 0.3832596147963211, "statCode": "Uwt8pm6v"}, {"inc": 0.525168625944228, "statCode": "oPdrm8vb"}, {"inc": 0.5696080642744226, "statCode": "v2eaSucf"}]' \
    > test.out 2>&1
eval_tap $? 61 'PublicBulkIncUserStatItem1' test.out

#- 62 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'VjV2b946' \
    --body '[{"inc": 0.024017666099112378, "statCode": "RnpLnyN6"}, {"inc": 0.8686826839337369, "statCode": "nO7wQFIZ"}, {"inc": 0.16733322112022064, "statCode": "Zb6EZhaI"}]' \
    > test.out 2>&1
eval_tap $? 62 'BulkIncUserStatItemValue2' test.out

#- 63 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'rgQmVIcO' \
    --body '[{"statCode": "7tcTcYX3"}, {"statCode": "46GXGL6u"}, {"statCode": "Rs4JucJx"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkResetUserStatItem3' test.out

#- 64 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'tUo3QDEH' \
    --userId 'Xiyauxa6' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserStatItem' test.out

#- 65 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'sofZiEX6' \
    --userId 'hhE2j1P9' \
    > test.out 2>&1
eval_tap $? 65 'DeleteUserStatItems1' test.out

#- 66 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '5D5DqGnN' \
    --userId 'PmqGm78N' \
    --body '{"inc": 0.5968910328838765}' \
    > test.out 2>&1
eval_tap $? 66 'PublicIncUserStatItem' test.out

#- 67 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'h3QjVeZU' \
    --userId 'Ug2TBB45' \
    --body '{"inc": 0.985698925658442}' \
    > test.out 2>&1
eval_tap $? 67 'PublicIncUserStatItemValue' test.out

#- 68 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'z8QpyTjL' \
    --userId 'tCJtO1N8' \
    > test.out 2>&1
eval_tap $? 68 'ResetUserStatItemValue1' test.out

#- 69 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"dDUsV7pk": {}, "pfwFQSEh": {}, "qVBq484H": {}}, "additionalKey": "sBnmY6FK", "statCode": "6mK27djP", "updateStrategy": "MIN", "userId": "SR1Wk2a9", "value": 0.004382317687741222}, {"additionalData": {"xx6qbrMO": {}, "MEmWJLBg": {}, "yQRzFsbA": {}}, "additionalKey": "VuphDjC6", "statCode": "5xQye7Tv", "updateStrategy": "MAX", "userId": "qa3j9dKE", "value": 0.7940729530504843}, {"additionalData": {"WTBXPwub": {}, "qgRmCqy5": {}, "9YJ238Ow": {}}, "additionalKey": "QROF8CoD", "statCode": "kcq99JOO", "updateStrategy": "MIN", "userId": "bgOzsrwE", "value": 0.03509236466445398}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkUpdateUserStatItemV2' test.out

#- 70 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'v8cWNlUO' \
    --statCode 'RhxbdGeN' \
    --userIds '["qaGbket7", "bKhtSqxz", "3Nbgd91h"]' \
    > test.out 2>&1
eval_tap $? 70 'BulkFetchOrDefaultStatItems1' test.out

#- 71 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'QUYj21kk' \
    --additionalKey 's8EvqqpK' \
    --body '[{"additionalData": {"qjsO9L4i": {}, "NOJdomOX": {}, "VJ1Vlqdh": {}}, "statCode": "cy8OgZxv", "updateStrategy": "INCREMENT", "value": 0.4417796796476229}, {"additionalData": {"4R1mPZAq": {}, "4Y5LW4hh": {}, "zF4POavy": {}}, "statCode": "xKqkJFWV", "updateStrategy": "MAX", "value": 0.5280906578616453}, {"additionalData": {"rjXa6HiZ": {}, "JPcqKjTr": {}, "9ssKrUVm": {}}, "statCode": "RyN6GyuK", "updateStrategy": "MIN", "value": 0.5670783296421844}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem' test.out

#- 72 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'dmnhAM1z' \
    --additionalKey 'vfA92s0Z' \
    --body '[{"additionalData": {"KVkxu65T": {}, "iEylyqOx": {}, "H6kQSYeS": {}}, "statCode": "0vzgHMgj"}, {"additionalData": {"dc01tprp": {}, "XfS6BlEy": {}, "Zh2haP5y": {}}, "statCode": "ZQ498mC7"}, {"additionalData": {"5kFITksu": {}, "z9aglmmo": {}, "WWWCk5iw": {}}, "statCode": "e2icn2EJ"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItemValues' test.out

#- 73 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'w7c4ydi9' \
    --userId '07FvlIAl' \
    --additionalKey 'WKs7Wko9' \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems2' test.out

#- 74 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 't1PjoxID' \
    --userId 'fv9J1cTk' \
    --additionalKey 'xJmg6FZl' \
    --body '{"additionalData": {"MWWXbfxL": {}, "JDjSrjVN": {}, "32EOi1dS": {}}, "updateStrategy": "MAX", "value": 0.6242096617609963}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue' test.out

#- 75 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"WS0Fs2PZ": {}, "yjV9yK3K": {}, "zrglFyLp": {}}, "additionalKey": "vwnyl45L", "statCode": "3IbYVBtL", "updateStrategy": "MAX", "userId": "jMvOQDhj", "value": 0.12811706891854813}, {"additionalData": {"UYIUD90q": {}, "WKvrEmDW": {}, "LAfnF4T3": {}}, "additionalKey": "KxBC92Ra", "statCode": "rqliLhWG", "updateStrategy": "MAX", "userId": "T8ksJod0", "value": 0.4488637131928108}, {"additionalData": {"JRRSFSGf": {}, "HMuTAoOX": {}, "2RyyK4iZ": {}}, "additionalKey": "g7zFPlNM", "statCode": "EWAdEsli", "updateStrategy": "MIN", "userId": "Tgd3uol0", "value": 0.9397609175224155}]' \
    > test.out 2>&1
eval_tap $? 75 'BulkUpdateUserStatItem1' test.out

#- 76 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'lF29wzly' \
    --additionalKey 'nnbG3c7O' \
    --statCodes '["Q8kPoVyj", "tPAzu7AX", "HykJICo2"]' \
    --tags '["rIOli3NN", "gmOW4FkU", "6zoZ41Qk"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems2' test.out

#- 77 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '6o6WVSna' \
    --additionalKey '6LlYvnDY' \
    --body '[{"additionalData": {"nWTjG67A": {}, "NC0Ii6KL": {}, "9qmzfPf6": {}}, "statCode": "YNmMJ3us", "updateStrategy": "OVERRIDE", "value": 0.8777069290789538}, {"additionalData": {"Xh48LwMi": {}, "pOcxkmx0": {}, "mZFqG625": {}}, "statCode": "SQRL7Lcd", "updateStrategy": "MIN", "value": 0.20346753674941198}, {"additionalData": {"nrw9jfwx": {}, "WsmRfYSB": {}, "8adYMCGk": {}}, "statCode": "1x2TM5Kt", "updateStrategy": "MAX", "value": 0.36733306225246687}]' \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItem2' test.out

#- 78 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ERk8APlz' \
    --userId 'tV06s5Da' \
    --additionalKey 'Sfb9jCnU' \
    --body '{"additionalData": {"lR0BIeDt": {}, "G97iKzTY": {}, "xhfAqRgd": {}}, "updateStrategy": "OVERRIDE", "value": 0.837303344593218}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE