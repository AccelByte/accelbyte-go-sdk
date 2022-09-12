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
echo "1..74"

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
    --body '{"maxSlotSize": 6, "maxSlots": 7}' \
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
    --userId '8KHs8ItG' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'MBaDNpF5' \
    --body '{"maxSlotSize": 85, "maxSlots": 81}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'Ta7lPhoZ' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '49d8cUnu' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'NvcreO0d' \
    --userId 'PFZlYmuo' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'IEQviQ73' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'K6JZLJPn' \
    --userId 'jvrqPZsa' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["DRHOMYPz", "cPUj8yo7", "yDv2mgdw"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'HFwUDzyG' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId '2M67LmGl' \
    --body '{"achievements": ["FlvsAYGL", "u7CIscTK", "GrHWuNVs"], "attributes": {"v66u9G1R": "IITutI4M", "doid1BzC": "RKjKKnt5", "zHj1qLMa": "0HxCnYEV"}, "avatarUrl": "St28rFHB", "inventories": ["xN5OXP7S", "RvhTmJDP", "J1p2CUQ7"], "label": "0c6q4WkL", "profileName": "Hxb85nl2", "statistics": ["Ao9UWLDK", "CQBUFNAi", "0H1z0aMV"], "tags": ["4sPNKBvz", "9fDa1Fdk", "RJCk1m53"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '74HvKEiV' \
    --userId 'KEYcRyvQ' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'YkqcqUWA' \
    --userId '3DKYsU39' \
    --body '{"achievements": ["8IZxIKlS", "KyiAIpPA", "t1S2mfio"], "attributes": {"f6XGndym": "JaU8suOz", "1NFKrT74": "A6eIfWK5", "N2eLl7UW": "S4Se7gAy"}, "avatarUrl": "3zUCD2WI", "inventories": ["T7CjCRn5", "JPhT88Qq", "CMyWtfa3"], "label": "zUAz8fYL", "profileName": "05XDBe07", "statistics": ["zZF0mAcD", "oPaM9yCs", "fgJOc39L"], "tags": ["HyiIb2fw", "d9Rw0eX7", "OjWeT3Sj"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'NUC7680S' \
    --userId 'wVR9pLR9' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'fKh4Xoio' \
    --namespace $AB_NAMESPACE \
    --profileId 'jUzz2KtO' \
    --userId 'zG9skQ6i' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '160LGL7T' \
    --namespace $AB_NAMESPACE \
    --profileId 'IoqCuohl' \
    --userId 'x0myIiQx' \
    --body '{"name": "6aGEQG8t", "value": "JQPvC1G9"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'ByqRTSPA' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'nWqNGj9o' \
    --label '7lytFqfQ' \
    --tags '["VijCD8Vn", "5WujB3Qk", "dGhOoEmf"]' \
    --checksum 'InYcnja6' \
    --customAttribute 'S8xikS8x' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId '4YHqxw5e' \
    --userId 'hPcPCfkk' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'nM9EiQix' \
    --userId 'l2ofg5Fy' \
    --label 'adWsr95i' \
    --tags '["Wi11QPi7", "VIlgV7Ao", "3FericlG"]' \
    --checksum 'dqI5GUJs' \
    --customAttribute 'O54j6GF9' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'ODxlfgAw' \
    --userId 'EBeIgYoP' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'Re4Vmo1h' \
    --userId 'anUyvjQP' \
    --body '{"customAttribute": "Rj3niucS", "label": "3M4NeMQk", "tags": ["b2bcMacA", "FoPCTBAi", "BFiRxY5r"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'lTmr7gKa' \
    --userIds 'hbCSnghY' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7787187985132691, "statCode": "NjQstt0W", "userId": "ypBKCTqb"}, {"inc": 0.6496323036418551, "statCode": "SZxgNGj9", "userId": "ZGPeBZT2"}, {"inc": 0.26414519458325336, "statCode": "wARZDbn4", "userId": "REjcbKrB"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8071618586000393, "statCode": "dZhZoeKw", "userId": "Z5D35jGY"}, {"inc": 0.8553633521739897, "statCode": "YHxH4ZZL", "userId": "nFf5xTL5"}, {"inc": 0.5254197804118889, "statCode": "rTi4LApZ", "userId": "fFMj4I3p"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'XePacFvm' \
    --userIds '["uQBsoszg", "0WR8E5Sq", "HGlqnnrk"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "tttgmx8E", "userId": "pIXTsYXR"}, {"statCode": "FvRLUMKo", "userId": "UG0QILvL"}, {"statCode": "qAWn4GZU", "userId": "1i6H611R"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.9073417816981474, "description": "lpK5WQqw", "incrementOnly": false, "maximum": 0.0671592328666849, "minimum": 0.1888480258092945, "name": "D9DYpRay", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "2GzbCUg8", "tags": ["Dqqe1jLH", "h3NcmHip", "S7xmpQTW"]}' \
    > test.out 2>&1
eval_tap $? 33 'CreateStat' test.out

#- 34 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'ExportStats' test.out

#- 35 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 35 'ImportStats' test.out

#- 36 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '57' \
    --keyword 'lozkPFoH' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '1RkEs2LI' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'LjyDgNaM' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'L15ZCyYc' \
    --body '{"description": "vDecLdO0", "name": "zNSDOyd7", "tags": ["IOmsF5df", "DFBaNtZY", "JtnhpzpV"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'UwSPknuU' \
    --limit '4' \
    --offset '9' \
    --statCodes 'FT9eZbnE' \
    --tags 'tn4nrdlA' \
    > test.out 2>&1
eval_tap $? 40 'GetUserStatItems' test.out

#- 41 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'IUIziOQd' \
    --body '[{"statCode": "jMjIuRod"}, {"statCode": "BIAIr6Nk"}, {"statCode": "7iG8LY1S"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkCreateUserStatItems' test.out

#- 42 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'pYY4Zrf8' \
    --body '[{"inc": 0.7669205874776153, "statCode": "KJV76yt3"}, {"inc": 0.009156664003135195, "statCode": "eNJuw1lS"}, {"inc": 0.25953781824563205, "statCode": "JGMaQaG9"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkIncUserStatItem1' test.out

#- 43 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'XRquirH5' \
    --body '[{"inc": 0.5608392562381384, "statCode": "0kO9bgMp"}, {"inc": 0.31132591752656635, "statCode": "wIeaqzIy"}, {"inc": 0.05329493714870592, "statCode": "8Gdb8YoK"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItemValue1' test.out

#- 44 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '6iLu9TPX' \
    --body '[{"statCode": "5vbXkmvI"}, {"statCode": "5kZxKR7S"}, {"statCode": "LnF8E2ss"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkResetUserStatItem1' test.out

#- 45 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'AmaI78Bn' \
    --userId '8OGARzYJ' \
    > test.out 2>&1
eval_tap $? 45 'CreateUserStatItem' test.out

#- 46 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'CELpULub' \
    --userId 'XA0wQtas' \
    > test.out 2>&1
eval_tap $? 46 'DeleteUserStatItems' test.out

#- 47 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'LQcPRaKY' \
    --userId '54Ol5Nb7' \
    --body '{"inc": 0.962661173301918}' \
    > test.out 2>&1
eval_tap $? 47 'IncUserStatItemValue' test.out

#- 48 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'iIlaWLpO' \
    --userId 'f46Sh8sc' \
    --additionalKey 'znfIU4yz' \
    --body '{"additionalData": {"OeivctXY": {}, "QRP2JTCp": {}, "LsncLds9": {}}}' \
    > test.out 2>&1
eval_tap $? 48 'ResetUserStatItemValue' test.out

#- 49 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'A6bF0vV6' \
    --userIds 'nQaIJQHx' \
    > test.out 2>&1
eval_tap $? 49 'BulkFetchStatItems1' test.out

#- 50 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4121729755258281, "statCode": "VWQS5czW", "userId": "KtYQ2erV"}, {"inc": 0.20410334459535262, "statCode": "toIxok1B", "userId": "bmmcleE0"}, {"inc": 0.05899194956821652, "statCode": "dGVCi2Kp", "userId": "0ueM1nZ6"}]' \
    > test.out 2>&1
eval_tap $? 50 'PublicBulkIncUserStatItem' test.out

#- 51 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.44500685926412586, "statCode": "K2E2eKOY", "userId": "WbRlIDxj"}, {"inc": 0.011300865413360839, "statCode": "URNwHG2b", "userId": "jjniPcED"}, {"inc": 0.17540877337983085, "statCode": "rjqD2jDC", "userId": "uFG2aWd6"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItemValue' test.out

#- 52 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "qH3ZL4p8", "userId": "EazSFQDY"}, {"statCode": "r1XkHFUE", "userId": "NXSJrjWz"}, {"statCode": "E0nAD0kn", "userId": "GfpztqHA"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem2' test.out

#- 53 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.20521745913652534, "description": "7Jc7fuLU", "incrementOnly": true, "maximum": 0.6876611190059836, "minimum": 0.3712701164066383, "name": "jsR2iCMr", "setAsGlobal": false, "setBy": "SERVER", "statCode": "qjW5frqD", "tags": ["sLdbcumV", "t2hjN71w", "Ug17hYD1"]}' \
    > test.out 2>&1
eval_tap $? 53 'CreateStat1' test.out

#- 54 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'fYYeEIIl' \
    --limit '10' \
    --offset '82' \
    --statCodes 'fC3uUnig' \
    --tags 'hfb0tAPd' \
    > test.out 2>&1
eval_tap $? 54 'PublicQueryUserStatItems' test.out

#- 55 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'XRtBQi9Y' \
    --body '[{"statCode": "z7UoLqD4"}, {"statCode": "P8kkgj1d"}, {"statCode": "sJKGUTkW"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkCreateUserStatItems' test.out

#- 56 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'IcAOV1W7' \
    --statCodes '["S2u7qzdm", "07JA75fK", "T4h86SIi"]' \
    --tags '["c8lbQeLH", "zYEku9vt", "hFIPSd6n"]' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryUserStatItems1' test.out

#- 57 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Bzg6YWMV' \
    --body '[{"inc": 0.7756463840479458, "statCode": "83jSVuqG"}, {"inc": 0.7581954057584306, "statCode": "GL8zz0Wx"}, {"inc": 0.3732193117852447, "statCode": "Q8dCFIIj"}]' \
    > test.out 2>&1
eval_tap $? 57 'PublicBulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '3LKV3RFx' \
    --body '[{"inc": 0.8951769366357117, "statCode": "uyWSWMEP"}, {"inc": 0.833158443617761, "statCode": "5OkuQbzE"}, {"inc": 0.9798793483844181, "statCode": "1e0Z69qw"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue2' test.out

#- 59 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'zN7Odz3O' \
    --body '[{"statCode": "ADbZaaqr"}, {"statCode": "wczeGNGT"}, {"statCode": "jE1EcRNZ"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem3' test.out

#- 60 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'CUGTVR3O' \
    --userId '8DYpKXqX' \
    > test.out 2>&1
eval_tap $? 60 'PublicCreateUserStatItem' test.out

#- 61 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'xGRctmPI' \
    --userId 'sE7qPJug' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems1' test.out

#- 62 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'zwaTTTJc' \
    --userId 'lnPVjbyX' \
    --body '{"inc": 0.21770877752533346}' \
    > test.out 2>&1
eval_tap $? 62 'PublicIncUserStatItem' test.out

#- 63 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '8C27uVDv' \
    --userId '2jrplcPp' \
    --body '{"inc": 0.3911854616735042}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItemValue' test.out

#- 64 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '0NgvXajq' \
    --userId 'pGOCvbIA' \
    > test.out 2>&1
eval_tap $? 64 'ResetUserStatItemValue1' test.out

#- 65 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"oITw5DWU": {}, "4jCb1xXV": {}, "HSpYpCwv": {}}, "additionalKey": "sdFiJVqT", "statCode": "XFmdsikC", "updateStrategy": "OVERRIDE", "userId": "XBQ47emJ", "value": 0.2658366505909805}, {"additionalData": {"WADIEQOf": {}, "Cpv42HQw": {}, "GqMTNfhW": {}}, "additionalKey": "0Nzirdsy", "statCode": "9IqqNRPq", "updateStrategy": "MIN", "userId": "HCxVOY4R", "value": 0.46290635845049566}, {"additionalData": {"MaFj63p3": {}, "lUcL902t": {}, "MoTkIRYK": {}}, "additionalKey": "EHxNJNHt", "statCode": "rYzkbpRs", "updateStrategy": "MAX", "userId": "njgLEEmB", "value": 0.34174263348707157}]' \
    > test.out 2>&1
eval_tap $? 65 'BulkUpdateUserStatItemV2' test.out

#- 66 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'w52Sj1Rc' \
    --statCode 'kyNFxHxD' \
    --userIds '["mcsTVw29", "dhCEQ4oc", "9gmKVPPl"]' \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchOrDefaultStatItems1' test.out

#- 67 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'mgCxyVj5' \
    --additionalKey 'AHZRMMNk' \
    --body '[{"additionalData": {"hbz5xoAa": {}, "8dCiE5UK": {}, "pYHFRdVN": {}}, "statCode": "ycYehK2T", "updateStrategy": "INCREMENT", "value": 0.5784560045505648}, {"additionalData": {"Q8wubZX2": {}, "KSuTbJ6B": {}, "JXmytgMg": {}}, "statCode": "QQCTj1IZ", "updateStrategy": "INCREMENT", "value": 0.6103058267046558}, {"additionalData": {"Grc5hLyC": {}, "NicN9wdo": {}, "O5erDA4o": {}}, "statCode": "t53a4Uu2", "updateStrategy": "MAX", "value": 0.06941719578396155}]' \
    > test.out 2>&1
eval_tap $? 67 'BulkUpdateUserStatItem' test.out

#- 68 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '4LPKuBD9' \
    --additionalKey 'p5xnHi0m' \
    --body '[{"additionalData": {"Ui9TvKvv": {}, "fP65pSXO": {}, "jEgoSYta": {}}, "statCode": "p8umqps6"}, {"additionalData": {"EgFgfK10": {}, "iAVG3y6k": {}, "veEVqBnR": {}}, "statCode": "m3mee7FD"}, {"additionalData": {"pBipJcG3": {}, "fqTN4NkP": {}, "QPMM9taJ": {}}, "statCode": "eUqWIeob"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItemValues' test.out

#- 69 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '5OxQ9c1Q' \
    --userId 'i43NRf2l' \
    --additionalKey 'W3d3R5o9' \
    > test.out 2>&1
eval_tap $? 69 'DeleteUserStatItems2' test.out

#- 70 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '2m4OfE8J' \
    --userId 'jaXNP8EP' \
    --additionalKey 'MQ9Kp66o' \
    --body '{"additionalData": {"tF30DuO6": {}, "f7Woogwb": {}, "ADgImeZt": {}}, "updateStrategy": "MAX", "value": 0.7418803656601026}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateUserStatItemValue' test.out

#- 71 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"K0JbHjyC": {}, "FbuBCNPu": {}, "EKUcEVdN": {}}, "additionalKey": "ZC4IdZEJ", "statCode": "UZpRfOJ5", "updateStrategy": "INCREMENT", "userId": "O8HFmsq1", "value": 0.7065632650106908}, {"additionalData": {"aSjjhGlW": {}, "eaq5oN7U": {}, "xaLKqy2A": {}}, "additionalKey": "R5pkYIqo", "statCode": "TbVuZKTw", "updateStrategy": "MIN", "userId": "PgxHen6u", "value": 0.016681507260157713}, {"additionalData": {"CqAZGAhB": {}, "mNpUjhGr": {}, "uOJ3U8ts": {}}, "additionalKey": "8uGupFMX", "statCode": "vEBJbWy5", "updateStrategy": "MIN", "userId": "CVmEuF2y", "value": 0.8060979601148085}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem1' test.out

#- 72 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'tCkzyZJP' \
    --additionalKey 'RNYR9OBQ' \
    --statCodes '["YCUszUBX", "yjHY3eEw", "60KCsYFG"]' \
    --tags '["T64zqWot", "ICZwBlmF", "puIgBJM9"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicQueryUserStatItems2' test.out

#- 73 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '3NK77FO0' \
    --additionalKey 'jHmjUsfr' \
    --body '[{"additionalData": {"cVti2HhZ": {}, "eQl9OnhO": {}, "YSCav4En": {}}, "statCode": "4rRn9Kho", "updateStrategy": "INCREMENT", "value": 0.6505693709329857}, {"additionalData": {"N0PEUp4k": {}, "DuTtpVlX": {}, "0SApwcBV": {}}, "statCode": "tCDjzhEa", "updateStrategy": "INCREMENT", "value": 0.11535630725441082}, {"additionalData": {"XQIsTn5p": {}, "OA3QtHn7": {}, "wfcjjAJz": {}}, "statCode": "dJUlVaYa", "updateStrategy": "MIN", "value": 0.4954826808277376}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkUpdateUserStatItem2' test.out

#- 74 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'UuRXsDlu' \
    --userId 'WPHWG0LE' \
    --additionalKey '1d8z4sRB' \
    --body '{"additionalData": {"TZhg6d7i": {}, "c6Cv1pzT": {}, "NSDkgNQn": {}}, "updateStrategy": "INCREMENT", "value": 0.1267295050982168}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE