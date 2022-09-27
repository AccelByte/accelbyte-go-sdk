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
    --body '{"maxSlotSize": 7, "maxSlots": 5}' \
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
    --userId 'uPMzarxI' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'yp5AXN8q' \
    --body '{"maxSlotSize": 93, "maxSlots": 86}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'tLxnuZ6d' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'yX3r4aWe' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'ClgavIAI' \
    --userId 'MrzD1ycG' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'f2kGh7o7' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'hd0PmJRi' \
    --userId 'xUOYhAXW' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["W518lKT1", "AjuiO5HI", "aJ7BT2XA"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'h60iVK7i' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'gqfCYm7k' \
    --body '{"achievements": ["4Kp6Vu76", "kvPJpenX", "QKXnGxrJ"], "attributes": {"cxnYd5FJ": "RoMo1e0b", "3YS21fMJ": "GxxBs5mR", "H61cV9GV": "ACNWQPVo"}, "avatarUrl": "2b9YIFiy", "inventories": ["p3MMqdfg", "IoFEW3J8", "4UbYRnAs"], "label": "oCgG39Oo", "profileName": "MQyXGuXS", "statistics": ["CtentwVO", "21yyr9k9", "h1dVuQx6"], "tags": ["QMiwXq9u", "w7zJaWDL", "IrueFfk1"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'm8HWttIZ' \
    --userId 'Xo72M34u' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '68RvolDD' \
    --userId 'tPDmMpgf' \
    --body '{"achievements": ["k5DXhVue", "sHbpgTUD", "8wYEsFrR"], "attributes": {"LZHWkvno": "7rDtXxgL", "s9dhsqL4": "Lz2kw3qz", "JDLA69ez": "EiRQKnB4"}, "avatarUrl": "UlW5dyUU", "inventories": ["PtmcLDPj", "E6ZisTCP", "55yDA2sd"], "label": "7zmeRgPi", "profileName": "IuyNo3sk", "statistics": ["2mRujWyG", "8liqZkCO", "xD4rZL54"], "tags": ["u5ubAIsI", "BGI4S0xV", "icQRXoXM"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'HLAJBQyk' \
    --userId 'a0Xt6RuU' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'hexPAKjB' \
    --namespace $AB_NAMESPACE \
    --profileId 'IhGvNSa4' \
    --userId 'Htc3AUBt' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'w2EeMNiw' \
    --namespace $AB_NAMESPACE \
    --profileId 'VZA8GcSX' \
    --userId 'kLr9NnX4' \
    --body '{"name": "e9AkYbpx", "value": "gPSQBejO"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'wyKXnv89' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'ilMTX7tn' \
    --label 'hQ59TgKg' \
    --tags '["Yer8qR5k", "CcSBOupo", "sxhEFpUh"]' \
    --checksum 'PlB5M1wE' \
    --customAttribute '6RPceXmE' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'NhF1ccGp' \
    --userId 'ieiIhY83' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'oUVm2UON' \
    --userId 'LOXf8STQ' \
    --label 'w6Cmomwq' \
    --tags '["xYGDYtSv", "1xvuVcCZ", "KouYA46V"]' \
    --checksum 'rh996K8J' \
    --customAttribute 'VbepHofn' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'FPk4p8Gz' \
    --userId 'ZMKFOKyh' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'zOG2VP2u' \
    --userId '9DKI5zCX' \
    --body '{"customAttribute": "u5UnAHzD", "label": "gfvEOUuX", "tags": ["PgQQSEu1", "ItCUm2ti", "1ifVECnd"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'pDis1FDx' \
    --userIds 'JwkEr60z' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8200223611312834, "statCode": "j5Q7HFTV", "userId": "41Hs8vZL"}, {"inc": 0.7146908351895539, "statCode": "iQszAObh", "userId": "SRmcEind"}, {"inc": 0.18316519616546023, "statCode": "1PrY9VlK", "userId": "bXxyxT00"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.892398822295508, "statCode": "gcV9FMMU", "userId": "uEhuQvnT"}, {"inc": 0.13208121712551357, "statCode": "fVL24WzW", "userId": "YNmnk0zT"}, {"inc": 0.33641180753736166, "statCode": "jE7GwahR", "userId": "UulGF9dq"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Fv4QDjIW' \
    --userIds '["44EoBeoL", "R9JJaXRw", "qytGgocS"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Sx1RRc53", "userId": "mVFxxxMU"}, {"statCode": "dWiG3Qdy", "userId": "0k223bFh"}, {"statCode": "iOa4l8OI", "userId": "XLsWY8eR"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.4823893787526443, "description": "7Dd4qRQ3", "incrementOnly": false, "maximum": 0.3027801957347317, "minimum": 0.7556078076452476, "name": "22HrDOYV", "setAsGlobal": false, "setBy": "SERVER", "statCode": "7MExJiTD", "tags": ["lZfAQ4A5", "imHOeCP9", "A2CS76YE"]}' \
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
    --limit '75' \
    --offset '48' \
    --keyword 'XtKqj2vN' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'jKJGUgfY' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'pqXWz0on' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'll5sn0ar' \
    --body '{"description": "usQvF51E", "name": "l0uq3D82", "tags": ["bl2R4n5j", "oSx3UJgr", "Y52PXgMe"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '2qffjbi0' \
    --limit '50' \
    --offset '2' \
    --statCodes 'obFepQnT' \
    --tags 'pWlwTOLt' \
    > test.out 2>&1
eval_tap $? 40 'GetUserStatItems' test.out

#- 41 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ALLeJrFh' \
    --body '[{"statCode": "FMiK4o4s"}, {"statCode": "yrrfA84K"}, {"statCode": "aa6GGtfN"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkCreateUserStatItems' test.out

#- 42 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'FQmPzlxr' \
    --body '[{"inc": 0.07810160085085727, "statCode": "ecUdxOw3"}, {"inc": 0.5709941006523436, "statCode": "gQtYhYFi"}, {"inc": 0.07166545864249907, "statCode": "uRaSsGiH"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkIncUserStatItem1' test.out

#- 43 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'IjsTAPa0' \
    --body '[{"inc": 0.4411429822673255, "statCode": "Dxks8v4F"}, {"inc": 0.08178554824990714, "statCode": "QKdzn5R8"}, {"inc": 0.8287020198789945, "statCode": "StsiXp5a"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItemValue1' test.out

#- 44 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'QWd16r62' \
    --body '[{"statCode": "uXhnXJpC"}, {"statCode": "8wGCYVvC"}, {"statCode": "GLMoaJeE"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkResetUserStatItem1' test.out

#- 45 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Zfjrk2Vz' \
    --userId 'wlMbtY8w' \
    > test.out 2>&1
eval_tap $? 45 'CreateUserStatItem' test.out

#- 46 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'NmwAtlA4' \
    --userId 'gXaXAuLs' \
    > test.out 2>&1
eval_tap $? 46 'DeleteUserStatItems' test.out

#- 47 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'P2ERsqOz' \
    --userId 'cuipTuoG' \
    --body '{"inc": 0.3319608083414691}' \
    > test.out 2>&1
eval_tap $? 47 'IncUserStatItemValue' test.out

#- 48 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '5T0umPvD' \
    --userId 'vuIVH4Ds' \
    --additionalKey 'zlNCkIeO' \
    --body '{"additionalData": {"k7Ec9MXp": {}, "JRrJvEHK": {}, "NvdECSLH": {}}}' \
    > test.out 2>&1
eval_tap $? 48 'ResetUserStatItemValue' test.out

#- 49 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '0ayZ7TVa' \
    --userIds 'VTJGUmc2' \
    > test.out 2>&1
eval_tap $? 49 'BulkFetchStatItems1' test.out

#- 50 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7905738296545332, "statCode": "CSdzRvSg", "userId": "xO5Teulg"}, {"inc": 0.49478913841655037, "statCode": "lyK6JFTW", "userId": "80XSguMu"}, {"inc": 0.7345518549214033, "statCode": "joXohnVE", "userId": "E4eiU16Z"}]' \
    > test.out 2>&1
eval_tap $? 50 'PublicBulkIncUserStatItem' test.out

#- 51 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6905725546554277, "statCode": "f9KpIKf9", "userId": "sOmd5kNF"}, {"inc": 0.7264265969405977, "statCode": "EAwCpopa", "userId": "AE2VFj1x"}, {"inc": 0.012654954954166686, "statCode": "4b55MZgz", "userId": "fpUeIYA4"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItemValue' test.out

#- 52 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "1M6Iozwq", "userId": "tmVL8kwG"}, {"statCode": "55jJDUqI", "userId": "Im9Gpfnk"}, {"statCode": "1v5glpSq", "userId": "Y0NMdL2U"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem2' test.out

#- 53 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.299842178228903, "description": "2U65aaiJ", "incrementOnly": true, "maximum": 0.41185833037428055, "minimum": 0.21961459361620506, "name": "YPeXF4mT", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "Jb3xOQID", "tags": ["wmaRYo44", "b3r9JmXM", "Ch5quxH5"]}' \
    > test.out 2>&1
eval_tap $? 53 'CreateStat1' test.out

#- 54 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'JZFXIWDk' \
    --limit '14' \
    --offset '38' \
    --statCodes 'NqSIFyyT' \
    --tags 'CxGw7LyY' \
    > test.out 2>&1
eval_tap $? 54 'PublicQueryUserStatItems' test.out

#- 55 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'fFSSgrBx' \
    --body '[{"statCode": "rITKhiYH"}, {"statCode": "XFC5yfTJ"}, {"statCode": "83JZj3cD"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkCreateUserStatItems' test.out

#- 56 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'Cl0qrjKi' \
    --statCodes '["lu3nIgSn", "OWTlVLlA", "QBQKQ4De"]' \
    --tags '["YYWDKBjL", "UWceOktL", "4jMo34dW"]' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryUserStatItems1' test.out

#- 57 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z8ieKJu3' \
    --body '[{"inc": 0.3673431663618212, "statCode": "iLxUMXYa"}, {"inc": 0.02271531932664428, "statCode": "bkZ4wIGP"}, {"inc": 0.9409357721135394, "statCode": "PCUsdEDz"}]' \
    > test.out 2>&1
eval_tap $? 57 'PublicBulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'abVLu106' \
    --body '[{"inc": 0.33553424030936174, "statCode": "69glL5Zr"}, {"inc": 0.4728623782489536, "statCode": "A0geQrvb"}, {"inc": 0.5885892210448467, "statCode": "rAMDVWpC"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue2' test.out

#- 59 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'FM135QxA' \
    --body '[{"statCode": "oMOJLMz6"}, {"statCode": "JsuZYIBB"}, {"statCode": "vtYNifbC"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem3' test.out

#- 60 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '2yKS9vIC' \
    --userId 'IBm5cIg2' \
    > test.out 2>&1
eval_tap $? 60 'PublicCreateUserStatItem' test.out

#- 61 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ihBtfpx2' \
    --userId 'V62vj9Jb' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems1' test.out

#- 62 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '4VbV2YHt' \
    --userId 'X9ILKQti' \
    --body '{"inc": 0.5899826856521865}' \
    > test.out 2>&1
eval_tap $? 62 'PublicIncUserStatItem' test.out

#- 63 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'OEoXllpP' \
    --userId 't2ZKdHgK' \
    --body '{"inc": 0.8118521778524127}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItemValue' test.out

#- 64 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'hsYnb2Gu' \
    --userId '5R0SQARp' \
    > test.out 2>&1
eval_tap $? 64 'ResetUserStatItemValue1' test.out

#- 65 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"NA9ZHDEX": {}, "YtwDtzEF": {}, "tqit8q3Q": {}}, "additionalKey": "hzzLqA9a", "statCode": "xBgwZF7K", "updateStrategy": "MIN", "userId": "AR1lN2QV", "value": 0.0345038229369552}, {"additionalData": {"RaLclb0x": {}, "5y5As7RT": {}, "24bV99eV": {}}, "additionalKey": "UQG6hrhV", "statCode": "OiEPsiGz", "updateStrategy": "INCREMENT", "userId": "XrcqOOch", "value": 0.9821802261000501}, {"additionalData": {"NEob95u9": {}, "8wjvlE8R": {}, "jGmWZ7yu": {}}, "additionalKey": "qnWXxwzM", "statCode": "SZar8Iju", "updateStrategy": "OVERRIDE", "userId": "Ov4Xp4bg", "value": 0.7519730529603639}]' \
    > test.out 2>&1
eval_tap $? 65 'BulkUpdateUserStatItemV2' test.out

#- 66 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'LtzCORjn' \
    --statCode 'dOVaoifE' \
    --userIds '["LgYGTvpY", "g7ogEv6W", "zIHoGDpW"]' \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchOrDefaultStatItems1' test.out

#- 67 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '1nFRLIkx' \
    --additionalKey 'YLjhJHus' \
    --body '[{"additionalData": {"HPA8ayz1": {}, "Hn6D4QUH": {}, "r31Kw0Gt": {}}, "statCode": "yoNtgHCF", "updateStrategy": "INCREMENT", "value": 0.8062808326698493}, {"additionalData": {"MOOMBcK8": {}, "DT9bNRJC": {}, "dcSspEHY": {}}, "statCode": "ja6eBm0q", "updateStrategy": "INCREMENT", "value": 0.4875556097538727}, {"additionalData": {"LTrqEoR2": {}, "Dcwlpm6A": {}, "Ty5Igf8b": {}}, "statCode": "smbdbBsv", "updateStrategy": "OVERRIDE", "value": 0.3929704813083651}]' \
    > test.out 2>&1
eval_tap $? 67 'BulkUpdateUserStatItem' test.out

#- 68 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'RLuYBwGF' \
    --additionalKey 'SmScgrmO' \
    --body '[{"additionalData": {"IOVI3q8q": {}, "pmpwYRhi": {}, "xWnYiQrn": {}}, "statCode": "dDHev0Zt"}, {"additionalData": {"GCmjlpTr": {}, "TRmTNlcp": {}, "qmsDOwHd": {}}, "statCode": "F001pPz4"}, {"additionalData": {"J6kUqdLV": {}, "5eroHYeW": {}, "ZfYEIKaz": {}}, "statCode": "w7pxUBmc"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItemValues' test.out

#- 69 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'FPwo1zl9' \
    --userId '6fbPNPA9' \
    --additionalKey 'kHwgK2cj' \
    > test.out 2>&1
eval_tap $? 69 'DeleteUserStatItems2' test.out

#- 70 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'pihVGzJ5' \
    --userId 'qRaZW1LH' \
    --additionalKey 'D3NoJn4q' \
    --body '{"additionalData": {"fkritd9n": {}, "8Lvlishy": {}, "EBDfOw3Z": {}}, "updateStrategy": "MAX", "value": 0.5090902633808564}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateUserStatItemValue' test.out

#- 71 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"QAJrGl1l": {}, "xEJUgOHY": {}, "bX01rQIT": {}}, "additionalKey": "CAdQuCJV", "statCode": "8ctA1iz1", "updateStrategy": "OVERRIDE", "userId": "DVC6szUH", "value": 0.8705673877023835}, {"additionalData": {"uwuSzRMO": {}, "8fPyPYyP": {}, "psOlSn40": {}}, "additionalKey": "g7E1XZnc", "statCode": "8fd3gvHr", "updateStrategy": "INCREMENT", "userId": "BgCxgOqJ", "value": 0.9130010532603512}, {"additionalData": {"k5we30aH": {}, "moFxMvF5": {}, "ahbMVOor": {}}, "additionalKey": "BL2Q0VbU", "statCode": "avwf0lW8", "updateStrategy": "MIN", "userId": "5k2ho6r5", "value": 0.4823017694035402}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem1' test.out

#- 72 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'zosjvkTE' \
    --additionalKey '7p1smFez' \
    --statCodes '["8E2Qx8kA", "j4NL6ILj", "EMmI5Ord"]' \
    --tags '["sZULiCkn", "2MoB8STO", "duZLBfQY"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicQueryUserStatItems2' test.out

#- 73 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'cOqZGc5D' \
    --additionalKey 'fozvBtki' \
    --body '[{"additionalData": {"DTJPjL2Z": {}, "d2t1r1DI": {}, "tvqxTiGk": {}}, "statCode": "uSRakMIf", "updateStrategy": "OVERRIDE", "value": 0.13639496306558363}, {"additionalData": {"lwy6kuBk": {}, "OQ4HzeH4": {}, "eth1IOmp": {}}, "statCode": "G1OPKQhC", "updateStrategy": "MAX", "value": 0.8199587146882064}, {"additionalData": {"UGxfSoVQ": {}, "8jRU8q0b": {}, "9Z30cvcH": {}}, "statCode": "fNz0ytn3", "updateStrategy": "MAX", "value": 0.3172254880034452}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkUpdateUserStatItem2' test.out

#- 74 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'P3dIR97l' \
    --userId 'Tvy7vE0v' \
    --additionalKey '2CnznRvy' \
    --body '{"additionalData": {"9ppogEp9": {}, "uWEvVpZb": {}, "J8HPSHx9": {}}, "updateStrategy": "INCREMENT", "value": 0.01387497172777652}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE