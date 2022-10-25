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
echo "1..75"

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
    --body '{"maxSlotSize": 83, "maxSlots": 48}' \
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
    --userId 'Mcn2Ra2r' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'slL9GGRy' \
    --body '{"maxSlotSize": 75, "maxSlots": 24}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'LeaxPROh' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'spVcM7Hv' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId '2Hex7rhF' \
    --userId '9MdbgO8V' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'iwzkZh6d' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'ap6x62r1' \
    --userId '0aXkrqZs' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["B2dR4hwr", "3qdIY3mi", "LFBFL716"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '9Qjogell' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'gwI2roCd' \
    --body '{"achievements": ["tgsGGU89", "1vqzd4y6", "AZRSZlH4"], "attributes": {"BIEYF3Gc": "0Dztgwen", "NHvqN3Hd": "NCORKVU1", "PrHzaAPa": "0d2dyBKu"}, "avatarUrl": "hGAa47T0", "inventories": ["l3uVGKll", "feezIyQs", "vNDBboIi"], "label": "EErKw0KF", "profileName": "nYcpFdSW", "statistics": ["b5KiRMgS", "Lryz70JQ", "gMFCxusY"], "tags": ["SLhp6bkj", "wwHmplFT", "An8oRJCF"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'BPYdDyQn' \
    --userId 'VfUAfF9z' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'zXWA8jVd' \
    --userId 'qOxXUFtH' \
    --body '{"achievements": ["eDSPvidX", "PFjl4GaR", "XcduWYHr"], "attributes": {"nVYBbZ3j": "Fup3NitH", "ShBa4Fdw": "2wKfYs64", "0OCIBf9d": "F6q3pB3R"}, "avatarUrl": "rKip4X0s", "inventories": ["pwAcB9Ho", "XzyZwJfh", "RUUNtMCh"], "label": "IrJazeYe", "profileName": "NQ6EYOQr", "statistics": ["pf4S2Or0", "kI5rLg5n", "koPvh9SZ"], "tags": ["83MWxQXD", "TQamJToZ", "KSEvkNze"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'AtSL1oMG' \
    --userId 'zRFbNTvM' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'REAkrQzO' \
    --namespace $AB_NAMESPACE \
    --profileId 'JmM5nrfz' \
    --userId 'hBgHTiao' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'pCJeY3cp' \
    --namespace $AB_NAMESPACE \
    --profileId 'SBsGuIhR' \
    --userId 'hInvebup' \
    --body '{"name": "P8iG4xD4", "value": "C69gyCrE"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'ogx1v5p9' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId '4L7fZOK6' \
    --label 'W03kgATb' \
    --tags '["4kgOBESD", "PO47hzqq", "A9JHZ85F"]' \
    --checksum 'i7j2YruK' \
    --customAttribute 'yc4mfFUg' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'zRhvsimw' \
    --userId 'qcLMSVeh' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '6XyLuwhm' \
    --userId 'E0aa9dav' \
    --label 'CHJ92IsB' \
    --tags '["xvbCK9St", "kmWxFVrs", "wDWSJK4i"]' \
    --checksum 'LhiPjTSR' \
    --customAttribute '93jbC0HG' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '1uEECMZO' \
    --userId 'v0lnzkWh' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'q6ec52hm' \
    --userId '0VePR78m' \
    --body '{"customAttribute": "I1ogmC0L", "label": "nIWB5ta2", "tags": ["XmHiLSqN", "lyMcyP0T", "Yeb8yKWk"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'wcEvhf5b' \
    --userIds 'txItnrck' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9726565843481834, "statCode": "Kcs5BYQ1", "userId": "ByWf3qSn"}, {"inc": 0.48541339444934395, "statCode": "blr3FYVn", "userId": "37Zsn2Kr"}, {"inc": 0.9049788320311667, "statCode": "0QSYXRoM", "userId": "RZ6T0ris"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7328666217930276, "statCode": "l4hfasxJ", "userId": "ltxe2UyB"}, {"inc": 0.42211595943859836, "statCode": "mSncrEwk", "userId": "Ww9h8QFt"}, {"inc": 0.8373218591312807, "statCode": "le42go95", "userId": "mz9Tvye9"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'iJJGh5Eo' \
    --userIds '["JQxZ6BxT", "0q3lrd1R", "hCBfxfHl"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "jfmxUtJk", "userId": "9C447E77"}, {"statCode": "YrU5UOoK", "userId": "5udvq1pN"}, {"statCode": "otXeZg9Z", "userId": "Wyp2ru4i"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.7940429719850443, "description": "RkL7OMAk", "incrementOnly": false, "maximum": 0.19628928328635742, "minimum": 0.38905969757591163, "name": "s6ZxWE5o", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "fxha5Ha9", "tags": ["urSDD60a", "tucTcpOK", "pGybQrOL"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 35 'ImportStats' test.out

#- 36 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '35' \
    --keyword 'AYLrnB8m' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'LeneAgQS' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'wlg9u11E' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'NMjtgs7Q' \
    --body '{"defaultValue": 0.5890984153517238, "description": "Kq8AU806", "name": "OXq1zkxK", "tags": ["k8McXr8Z", "Q7eMcTB5", "1gzmJHGP"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'RWBoBCws' \
    > test.out 2>&1
eval_tap $? 40 'DeleteTiedStat' test.out

#- 41 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Kkwh0XbF' \
    --limit '35' \
    --offset '13' \
    --statCodes 'wWsmkJr6' \
    --tags 'lIBE8mzs' \
    > test.out 2>&1
eval_tap $? 41 'GetUserStatItems' test.out

#- 42 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'IoOHZ80t' \
    --body '[{"statCode": "cqMeUjTe"}, {"statCode": "GPC8XAzN"}, {"statCode": "AesLH3dQ"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkCreateUserStatItems' test.out

#- 43 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'GPSmHVVo' \
    --body '[{"inc": 0.6898581548302561, "statCode": "L9gVJP9t"}, {"inc": 0.24390238276216192, "statCode": "pehvsnxs"}, {"inc": 0.7742616294014397, "statCode": "rM8MFvdT"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItem1' test.out

#- 44 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZqZGarF2' \
    --body '[{"inc": 0.7026783721947569, "statCode": "VVmyZP0C"}, {"inc": 0.4122345179989563, "statCode": "7n3IcUYj"}, {"inc": 0.09567352992808442, "statCode": "BQ614zYx"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItemValue1' test.out

#- 45 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '8WV1xKiH' \
    --body '[{"statCode": "geWu1CW8"}, {"statCode": "XFNmydWQ"}, {"statCode": "mQKXehJC"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkResetUserStatItem1' test.out

#- 46 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'AavU4dwf' \
    --userId 'BPlwhQPL' \
    > test.out 2>&1
eval_tap $? 46 'CreateUserStatItem' test.out

#- 47 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'OvtH5c9O' \
    --userId '1pGopdEz' \
    > test.out 2>&1
eval_tap $? 47 'DeleteUserStatItems' test.out

#- 48 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'RI1aSDIp' \
    --userId 'PW1fytxp' \
    --body '{"inc": 0.923018007339031}' \
    > test.out 2>&1
eval_tap $? 48 'IncUserStatItemValue' test.out

#- 49 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'DncHLJD0' \
    --userId 'r2EJpc3f' \
    --additionalKey 'f2NE1irz' \
    --body '{"additionalData": {"5VNaQz5f": {}, "DhTxWe1w": {}, "m3IQqzQd": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'ResetUserStatItemValue' test.out

#- 50 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'pyV7Unuy' \
    --userIds 'TlN90Hko' \
    > test.out 2>&1
eval_tap $? 50 'BulkFetchStatItems1' test.out

#- 51 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.02881726426033271, "statCode": "Q7oPBzX5", "userId": "yL1P5KWx"}, {"inc": 0.8934045987836275, "statCode": "pq2eoceo", "userId": "evMcnDqa"}, {"inc": 0.4332463121935648, "statCode": "pfUygIki", "userId": "XEMdgrsg"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItem' test.out

#- 52 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5757118884943735, "statCode": "4tXcJckO", "userId": "5dWoWlFi"}, {"inc": 0.7254726786483189, "statCode": "z6zJqosu", "userId": "Ty7MfU5D"}, {"inc": 0.11635933434353407, "statCode": "rGttjad5", "userId": "VEyT3AjT"}]' \
    > test.out 2>&1
eval_tap $? 52 'PublicBulkIncUserStatItemValue' test.out

#- 53 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "pD2lG3RL", "userId": "G53kpdgp"}, {"statCode": "PKUrMQMS", "userId": "BzkaAEyr"}, {"statCode": "eOgfrvHm", "userId": "ukNhxfEe"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem2' test.out

#- 54 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.19554041447564063, "description": "llKl3Fy4", "incrementOnly": false, "maximum": 0.3882042141784512, "minimum": 0.26760579521572125, "name": "ZsIlEoU4", "setAsGlobal": false, "setBy": "SERVER", "statCode": "tZNWc352", "tags": ["E1Hx8czf", "3tdjXWeG", "uZU5sAG5"]}' \
    > test.out 2>&1
eval_tap $? 54 'CreateStat1' test.out

#- 55 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'uO7rdYno' \
    --limit '86' \
    --offset '71' \
    --statCodes 'BmUGQ05r' \
    --tags 'RMZ3iBfq' \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryUserStatItems' test.out

#- 56 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '1dYlGfXR' \
    --body '[{"statCode": "XsHBuhop"}, {"statCode": "uCSy2F2j"}, {"statCode": "UyVrfCqb"}]' \
    > test.out 2>&1
eval_tap $? 56 'PublicBulkCreateUserStatItems' test.out

#- 57 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'nUQq7TJj' \
    --statCodes '["j8jUWJno", "LEjVYQyr", "Dy2DKgbj"]' \
    --tags '["RVIGej0I", "7004n1r6", "jeZU4Nfs"]' \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryUserStatItems1' test.out

#- 58 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'qI0LVghN' \
    --body '[{"inc": 0.059553350246658865, "statCode": "r6SgSzM8"}, {"inc": 0.6841890907553037, "statCode": "nrvwmL4o"}, {"inc": 0.5573540027052714, "statCode": "d76VV7sA"}]' \
    > test.out 2>&1
eval_tap $? 58 'PublicBulkIncUserStatItem1' test.out

#- 59 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'ZUuDve3r' \
    --body '[{"inc": 0.3597717123440557, "statCode": "PAcqNmnm"}, {"inc": 0.040400639894738855, "statCode": "4w5WPjAe"}, {"inc": 0.0904697890085221, "statCode": "Q9yDAaIb"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkIncUserStatItemValue2' test.out

#- 60 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '1EXT44t7' \
    --body '[{"statCode": "L7hvoadd"}, {"statCode": "ByD2Pve1"}, {"statCode": "GPPMAKpC"}]' \
    > test.out 2>&1
eval_tap $? 60 'BulkResetUserStatItem3' test.out

#- 61 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'YyHeunlk' \
    --userId 'GS9ZVG7C' \
    > test.out 2>&1
eval_tap $? 61 'PublicCreateUserStatItem' test.out

#- 62 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '8tvncEQj' \
    --userId 'eKiP4toF' \
    > test.out 2>&1
eval_tap $? 62 'DeleteUserStatItems1' test.out

#- 63 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'aNHORZ08' \
    --userId 'msx5sFUv' \
    --body '{"inc": 0.37868306884353864}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItem' test.out

#- 64 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'OFXIjOve' \
    --userId 'fd5kwvWt' \
    --body '{"inc": 0.11218612181210874}' \
    > test.out 2>&1
eval_tap $? 64 'PublicIncUserStatItemValue' test.out

#- 65 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'wFdI46ee' \
    --userId 'mhPrUgNH' \
    > test.out 2>&1
eval_tap $? 65 'ResetUserStatItemValue1' test.out

#- 66 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"pUTFC5hW": {}, "sBNMmz0d": {}, "jo0nO4My": {}}, "additionalKey": "YQXlXuhk", "statCode": "WpXlFBmb", "updateStrategy": "INCREMENT", "userId": "u3k6ZYZT", "value": 0.42106501952869224}, {"additionalData": {"GSPHRsMp": {}, "TQM0qiuy": {}, "nkvyf9za": {}}, "additionalKey": "ly0yZg2w", "statCode": "lXNKwvmO", "updateStrategy": "OVERRIDE", "userId": "77oajN0Y", "value": 0.4092334920404016}, {"additionalData": {"ijlWy0TN": {}, "1HSWUiYx": {}, "XTm0wHA1": {}}, "additionalKey": "SzTUXBYW", "statCode": "lBVkKnAp", "updateStrategy": "OVERRIDE", "userId": "pVhJmb5k", "value": 0.4465631873142064}]' \
    > test.out 2>&1
eval_tap $? 66 'BulkUpdateUserStatItemV2' test.out

#- 67 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'BIyVX3ma' \
    --statCode 'TBFQhXM7' \
    --userIds '["L3ND6zQM", "SDzFKvmw", "e7r4nxcR"]' \
    > test.out 2>&1
eval_tap $? 67 'BulkFetchOrDefaultStatItems1' test.out

#- 68 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'l5d5j73F' \
    --additionalKey '9yye6V9Y' \
    --body '[{"additionalData": {"AQ9Shrlk": {}, "GX6mINgI": {}, "vz3DsFfn": {}}, "statCode": "omer35xv", "updateStrategy": "MAX", "value": 0.21620081971630256}, {"additionalData": {"Yleeif5m": {}, "96HvGqBP": {}, "IXguTzqE": {}}, "statCode": "v0gOLg20", "updateStrategy": "INCREMENT", "value": 0.15448451301217725}, {"additionalData": {"NSIofCoB": {}, "nD3ZGOV0": {}, "djFZl1ZD": {}}, "statCode": "HIblBiUR", "updateStrategy": "MIN", "value": 0.15892440632061178}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem' test.out

#- 69 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'btforhTB' \
    --additionalKey 'Q24qeLeC' \
    --body '[{"additionalData": {"Iaenfqrx": {}, "h3y3KYBw": {}, "2jpCm3g9": {}}, "statCode": "ncotOJYU"}, {"additionalData": {"68CVF3Zk": {}, "VMSODhQa": {}, "wOgZaUQU": {}}, "statCode": "ntTQpngx"}, {"additionalData": {"tSkx2rNY": {}, "6JdD9VZy": {}, "QBtnx5oL": {}}, "statCode": "mC5ZB4i3"}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItemValues' test.out

#- 70 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'efiXGt2Q' \
    --userId '9DqaebXS' \
    --additionalKey 'lWHlV9Ee' \
    > test.out 2>&1
eval_tap $? 70 'DeleteUserStatItems2' test.out

#- 71 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'vLXx9pTA' \
    --userId 'MQvBmq9P' \
    --additionalKey 'IOxhXuJT' \
    --body '{"additionalData": {"L5qoYVb6": {}, "01dWlN5F": {}, "0TsndxQ5": {}}, "updateStrategy": "OVERRIDE", "value": 0.6556672048497847}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateUserStatItemValue' test.out

#- 72 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"yEpsG3hI": {}, "zXxTsaQS": {}, "vFTkfLzt": {}}, "additionalKey": "GaftVWSW", "statCode": "F6T0lCBQ", "updateStrategy": "MIN", "userId": "KDQQxxSi", "value": 0.996650875772237}, {"additionalData": {"QWNxSOLB": {}, "jZnVvybE": {}, "Ws6ZiPva": {}}, "additionalKey": "IVdBpGGk", "statCode": "F6hCzbUv", "updateStrategy": "MAX", "userId": "33xwOekE", "value": 0.7808001493140132}, {"additionalData": {"OuNwSvTs": {}, "wwL18wmD": {}, "BJDZEZSj": {}}, "additionalKey": "Mt0iegd0", "statCode": "t65sjCE9", "updateStrategy": "INCREMENT", "userId": "3Dz7H0LE", "value": 0.7568847242824932}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkUpdateUserStatItem1' test.out

#- 73 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'LnWGsPtz' \
    --additionalKey 'aEETSGqR' \
    --statCodes '["0hTekozd", "sZjJ5kzy", "KPhzUV2P"]' \
    --tags '["uljjM5bU", "wpqACn8o", "YVgqHG8L"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems2' test.out

#- 74 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'ArbdhBTL' \
    --additionalKey '3sj4WNom' \
    --body '[{"additionalData": {"mBMZK9dl": {}, "dPvxYcRc": {}, "FQmgVwQ6": {}}, "statCode": "EkILRyNr", "updateStrategy": "MIN", "value": 0.24740742371771796}, {"additionalData": {"YEpNMoX0": {}, "9QPMJuxd": {}, "Abb9O3Q9": {}}, "statCode": "F49hspdg", "updateStrategy": "INCREMENT", "value": 0.38703362864495017}, {"additionalData": {"LE3KcZvE": {}, "7Zlx9v8w": {}, "GvInWykc": {}}, "statCode": "CXACLcKu", "updateStrategy": "INCREMENT", "value": 0.21383215722562687}]' \
    > test.out 2>&1
eval_tap $? 74 'BulkUpdateUserStatItem2' test.out

#- 75 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'IbC6Icez' \
    --userId 'KTvjdJXp' \
    --additionalKey 'JgcRaVOt' \
    --body '{"additionalData": {"jpYeKV4P": {}, "E51ibN76": {}, "h3maCryv": {}}, "updateStrategy": "MAX", "value": 0.045124217718089055}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE