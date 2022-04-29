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

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"

echo "TAP version 13"
echo "1..70"

#- 1 Login
rm -f $TEMP_TOKEN \
    && mkdir -p $(dirname $TEMP_TOKEN) \
    && echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 GetNamespaceSlotConfig
samples/cli/sample-apps Social getNamespaceSlotConfig \
    --namespace 'FtBxyZcD' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
samples/cli/sample-apps Social updateNamespaceSlotConfig \
    --body '{"maxSlotSize": 98, "maxSlots": 55}' \
    --namespace 'pGlsQuJu' \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
samples/cli/sample-apps Social deleteNamespaceSlotConfig \
    --namespace '8vMf0IsJ' \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
samples/cli/sample-apps Social getUserSlotConfig \
    --namespace 'kTrd8IDc' \
    --userId 'V2zXnTKj' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --body '{"maxSlotSize": 99, "maxSlots": 3}' \
    --namespace 'PqamiBxx' \
    --userId '9Cs18EY8' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace '4ekItqRz' \
    --userId 'HU1oh570' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace 'KQBVaewc' \
    --userId '72krSha6' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace '8n3Ynozp' \
    --profileId '1C2KmIQT' \
    --userId 'uBdNEUsx' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace 'Fb8CJ17M' \
    --userId '7DJZaMSx' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace 'ECbZbygy' \
    --slotId 'oarORoeN' \
    --userId 'HSb8Rh3k' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace 'gs9qqJbn' \
    --userIds '["QsoBgiVp"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace 'P8Cm3yvA' \
    --userId 'SUoxdxxF' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --body '{"achievements": ["qmAGTJ8I"], "attributes": {"EdagEtp4": "w29KOu9c"}, "avatarUrl": "19R6XDqW", "inventories": ["HkkP8npL"], "label": "EKMfjiX7", "profileName": "jpkVZk3I", "statistics": ["aQYEmqGo"], "tags": ["dOEGt9gP"]}' \
    --namespace 'Oj0c6i0J' \
    --userId 'kvIas73u' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace 'cYnFAJ3D' \
    --profileId 'K5T4Eogg' \
    --userId '0Y39UoYl' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --body '{"achievements": ["pv5bVAgt"], "attributes": {"sDhUTDUs": "cbQDjbTQ"}, "avatarUrl": "uPMz2PTR", "inventories": ["lkyU89ZP"], "label": "Ow6zPFJ4", "profileName": "2cwmzBBS", "statistics": ["MNcoAAOj"], "tags": ["KNjfcYHm"]}' \
    --namespace '093aYgBU' \
    --profileId '1sqjyK0X' \
    --userId 'H45PaRSO' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace 'FQBtu23R' \
    --profileId 'EZ8hRVX7' \
    --userId 'LGOvDdYi' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'QS9i7mV1' \
    --namespace 'C91pjG9g' \
    --profileId 'pxL6ycTQ' \
    --userId 'dvln2LAu' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --body '{"name": "SQWEXL6L", "value": "FE1YHo9m"}' \
    --attributeName '126ZWc8h' \
    --namespace 'HtWvbNYq' \
    --profileId 'gUqslArF' \
    --userId 'PiHUIvaC' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace 'v8kU9dBB' \
    --userId 'pdsJLhsV' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --checksum 'yExrkxoo' \
    --customAttribute 't0B7WOfe' \
    --file 'tmp.dat' \
    --namespace 'rcZdpMci' \
    --userId '37Ds7YSf' \
    --label 'ExaI3uzL' \
    --tags '["teMbFAlt"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace '4hr7HmOY' \
    --slotId 'iBA5ltAO' \
    --userId 'XmlG6eh1' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --checksum 'dTdoTFpB' \
    --customAttribute 'IcuC1dQY' \
    --file 'tmp.dat' \
    --namespace '93OJnJ6T' \
    --slotId 'e9vD8ldz' \
    --userId '7Hu8AD79' \
    --label 'kdWunviz' \
    --tags '["U0q1pHyh"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace 'hERoGgdr' \
    --slotId 'ysMizBGS' \
    --userId 'RdP2l7DN' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --body '{"customAttribute": "SZ8Aq0Xi", "label": "PLQXSe07", "tags": ["ZddOGTMl"]}' \
    --namespace 'JjBwj9HJ' \
    --slotId 'HQKseEdS' \
    --userId 'XRDSvgua' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace 'uw1xT7eM' \
    --limit '44' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace 'l9MLH0Nn' \
    --statCode 'TJ2ulNzB' \
    --userIds 'vwJaQa54' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --body '[{"inc": 0.9327655923265599, "statCode": "llvA8RWS", "userId": "pabUt7xk"}]' \
    --namespace '6QxyWhfq' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --body '[{"inc": 0.23108827139420096, "statCode": "fJw2o8oW", "userId": "UqvPCZ2H"}]' \
    --namespace 'zT7NXmWD' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --body '[{"statCode": "lXsuNIdQ", "userId": "JR5lsNOl"}]' \
    --namespace 'vkfwaSbn' \
    > test.out 2>&1
eval_tap $? 30 'BulkResetUserStatItem' test.out

#- 31 GetStats
samples/cli/sample-apps Social getStats \
    --namespace 'suLCgTox' \
    --limit '41' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 31 'GetStats' test.out

#- 32 CreateStat
samples/cli/sample-apps Social createStat \
    --body '{"defaultValue": 0.7061940138883712, "description": "kJgvg6h5", "incrementOnly": false, "maximum": 0.5194259868655686, "minimum": 0.45923642317493263, "name": "iplEk4vj", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "4yqDt8QU", "tags": ["ZDpxlHas"]}' \
    --namespace 'inGcjrkm' \
    > test.out 2>&1
eval_tap $? 32 'CreateStat' test.out

#- 33 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace 'RMttgjDS' \
    > test.out 2>&1
eval_tap $? 33 'ExportStats' test.out

#- 34 ImportStats
samples/cli/sample-apps Social importStats \
    --file 'tmp.dat' \
    --namespace 'aIVBmft3' \
    --replaceExisting 'False' \
    > test.out 2>&1
eval_tap $? 34 'ImportStats' test.out

#- 35 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace 'g7p9PGmY' \
    --limit '67' \
    --offset '20' \
    --keyword 'X4MsisSX' \
    > test.out 2>&1
eval_tap $? 35 'QueryStats' test.out

#- 36 GetStat
samples/cli/sample-apps Social getStat \
    --namespace '28nARxWR' \
    --statCode 'pv5ou5xt' \
    > test.out 2>&1
eval_tap $? 36 'GetStat' test.out

#- 37 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace 'vd28OUfC' \
    --statCode 't8UJC5fl' \
    > test.out 2>&1
eval_tap $? 37 'DeleteStat' test.out

#- 38 UpdateStat
samples/cli/sample-apps Social updateStat \
    --body '{"description": "Nyj6HsTt", "name": "X8P3llna", "tags": ["aS9lqyyg"]}' \
    --namespace 'PcfkJIxf' \
    --statCode 'QZza8kNV' \
    > test.out 2>&1
eval_tap $? 38 'UpdateStat' test.out

#- 39 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace 'bDxVMq7H' \
    --userId 'Jk0F89xA' \
    --limit '5' \
    --offset '100' \
    --statCodes 'VfaENtrl' \
    --tags '0pTKZTXq' \
    > test.out 2>&1
eval_tap $? 39 'GetUserStatItems' test.out

#- 40 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --body '[{"statCode": "zHuBMYQS"}]' \
    --namespace 'A2jz1ZOp' \
    --userId 'dOjSyMdd' \
    > test.out 2>&1
eval_tap $? 40 'BulkCreateUserStatItems' test.out

#- 41 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --body '[{"inc": 0.43583001859639603, "statCode": "1JuMf7RU"}]' \
    --namespace 'yBHRj8Ii' \
    --userId 'RimRllHT' \
    > test.out 2>&1
eval_tap $? 41 'BulkIncUserStatItem1' test.out

#- 42 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --body '[{"inc": 0.9193436537879337, "statCode": "c40vFFA6"}]' \
    --namespace 'gpU7EW3x' \
    --userId '1dCpm55g' \
    > test.out 2>&1
eval_tap $? 42 'BulkIncUserStatItemValue1' test.out

#- 43 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --body '[{"statCode": "OeqQIqcJ"}]' \
    --namespace 'VKmBM1J1' \
    --userId 'IbuTrrkb' \
    > test.out 2>&1
eval_tap $? 43 'BulkResetUserStatItem1' test.out

#- 44 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace 'muT1whOq' \
    --statCode 'mEnDXIWr' \
    --userId 'BPlSay46' \
    > test.out 2>&1
eval_tap $? 44 'CreateUserStatItem' test.out

#- 45 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace 'mv71BAZA' \
    --statCode 'OjtFJ2vm' \
    --userId 'Tj7tT7TZ' \
    > test.out 2>&1
eval_tap $? 45 'DeleteUserStatItems' test.out

#- 46 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --body '{"inc": 0.5247328635832493}' \
    --namespace 'DdCkIsZo' \
    --statCode 'ArWwPHcy' \
    --userId 'FAdAtYci' \
    > test.out 2>&1
eval_tap $? 46 'IncUserStatItemValue' test.out

#- 47 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --body '{"additionalData": {"LIgRwFRr": {}}}' \
    --namespace '0gwB9tz3' \
    --statCode 'vp99XVlV' \
    --userId '8rK3tE6n' \
    --additionalKey '0smip1tw' \
    > test.out 2>&1
eval_tap $? 47 'ResetUserStatItemValue' test.out

#- 48 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace '3L7cUd9p' \
    --statCode 'qtv6JfPZ' \
    --userIds 'wcCVOXcV' \
    > test.out 2>&1
eval_tap $? 48 'BulkFetchStatItems1' test.out

#- 49 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --body '[{"inc": 0.01343721105578699, "statCode": "0TmCwtD2", "userId": "lAH01o6N"}]' \
    --namespace 'dcBIgzrD' \
    > test.out 2>&1
eval_tap $? 49 'PublicBulkIncUserStatItem' test.out

#- 50 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --body '[{"inc": 0.377125276256834, "statCode": "pFBYGmmB", "userId": "awMyoKyN"}]' \
    --namespace 'pdAasm8x' \
    > test.out 2>&1
eval_tap $? 50 'PublicBulkIncUserStatItemValue' test.out

#- 51 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --body '[{"statCode": "wUfzOlQi", "userId": "ZY4NbOQX"}]' \
    --namespace 'J7uOTzNM' \
    > test.out 2>&1
eval_tap $? 51 'BulkResetUserStatItem2' test.out

#- 52 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --body '{"defaultValue": 0.34205480909078156, "description": "q2tNl4CX", "incrementOnly": false, "maximum": 0.12793256765368222, "minimum": 0.8770860020485978, "name": "EUJRVK3l", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "0R1XRb0R", "tags": ["H8vS1sme"]}' \
    --namespace 'OlngrdTX' \
    > test.out 2>&1
eval_tap $? 52 'CreateStat1' test.out

#- 53 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace 'CzaPBtkZ' \
    --userId 'Mio4wcyh' \
    --limit '22' \
    --offset '29' \
    --statCodes 'VS3rYp8Q' \
    --tags 'tcEmCEVc' \
    > test.out 2>&1
eval_tap $? 53 'PublicQueryUserStatItems' test.out

#- 54 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --body '[{"statCode": "75UfeypW"}]' \
    --namespace 'jDNhzCL5' \
    --userId 'sWS2qwO7' \
    > test.out 2>&1
eval_tap $? 54 'PublicBulkCreateUserStatItems' test.out

#- 55 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --body '[{"inc": 0.9087512930575277, "statCode": "iEklkzLm"}]' \
    --namespace '88LpLuYR' \
    --userId 'O3C55yHp' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkIncUserStatItem1' test.out

#- 56 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --body '[{"inc": 0.3522267310082501, "statCode": "2JaqenDG"}]' \
    --namespace 'n7a2NUpl' \
    --userId 'WiLjq06n' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItemValue2' test.out

#- 57 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --body '[{"statCode": "6a0rW8Ef"}]' \
    --namespace 'kpaXtwYZ' \
    --userId 'JaQ4WbwN' \
    > test.out 2>&1
eval_tap $? 57 'BulkResetUserStatItem3' test.out

#- 58 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace 'msFYetjE' \
    --statCode 'urH8eloJ' \
    --userId 'zNKtRUaT' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserStatItem' test.out

#- 59 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace 'z1ETdsmw' \
    --statCode 'zjkkn9oi' \
    --userId 'Ql05g7cO' \
    > test.out 2>&1
eval_tap $? 59 'DeleteUserStatItems1' test.out

#- 60 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --body '{"inc": 0.874356633432329}' \
    --namespace 'Mb6Ojlo6' \
    --statCode 'DMNpP2qM' \
    --userId 'rTQ1Upjf' \
    > test.out 2>&1
eval_tap $? 60 'PublicIncUserStatItem' test.out

#- 61 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --body '{"inc": 0.7308393859750862}' \
    --namespace 'wJhy1jOV' \
    --statCode 'kkUlS795' \
    --userId '27EZ25Ia' \
    > test.out 2>&1
eval_tap $? 61 'PublicIncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace '8uCeZFlL' \
    --statCode 'tEVpDAEb' \
    --userId 'A82jy74l' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue1' test.out

#- 63 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --body '[{"additionalData": {"q0pDE5xR": {}}, "additionalKey": "wh5b45eb", "statCode": "pcM7ScSs", "updateStrategy": "INCREMENT", "userId": "AwIp9rRt", "value": 0.2062482449127394}]' \
    --namespace 'PcCxdbum' \
    > test.out 2>&1
eval_tap $? 63 'BulkUpdateUserStatItemV2' test.out

#- 64 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --body '[{"additionalData": {"eYgOdEBW": {}}, "statCode": "RQiW3KFf", "updateStrategy": "INCREMENT", "value": 0.043303642635736384}]' \
    --namespace '4081gRB1' \
    --userId 'GyLfLg4R' \
    --additionalKey 'YuEbgUDE' \
    > test.out 2>&1
eval_tap $? 64 'BulkUpdateUserStatItem' test.out

#- 65 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --body '[{"additionalData": {"cJyIvsPw": {}}, "statCode": "Or0BmV5i"}]' \
    --namespace 'FvfwFjTS' \
    --userId 'mIEqoLyL' \
    --additionalKey 'eUGmomGX' \
    > test.out 2>&1
eval_tap $? 65 'BulkResetUserStatItemValues' test.out

#- 66 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace '9sXTZ0v8' \
    --statCode 'pqLfc5Sw' \
    --userId 'GnReUULD' \
    --additionalKey 'X4QUIbb5' \
    > test.out 2>&1
eval_tap $? 66 'DeleteUserStatItems2' test.out

#- 67 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --body '{"additionalData": {"nh68ZnyU": {}}, "updateStrategy": "MAX", "value": 0.6835501069566925}' \
    --namespace 'W9hNBSFT' \
    --statCode 'tFrOmjkF' \
    --userId 'rFVA8t0x' \
    --additionalKey 'F34Xpt6Z' \
    > test.out 2>&1
eval_tap $? 67 'UpdateUserStatItemValue' test.out

#- 68 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --body '[{"additionalData": {"lTTic0kr": {}}, "additionalKey": "2a0nI2oo", "statCode": "7UHCJK5s", "updateStrategy": "INCREMENT", "userId": "0aCvIq3a", "value": 0.5171230937144093}]' \
    --namespace 'YIlewLRu' \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem1' test.out

#- 69 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --body '[{"additionalData": {"HY83bGj0": {}}, "statCode": "HTeeWXlI", "updateStrategy": "OVERRIDE", "value": 0.6843008472893907}]' \
    --namespace 'idqctDpy' \
    --userId 'gY0ax476' \
    --additionalKey 'ED4MMO9T' \
    > test.out 2>&1
eval_tap $? 69 'BulkUpdateUserStatItem2' test.out

#- 70 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --body '{"additionalData": {"w2JH0qhW": {}}, "updateStrategy": "MAX", "value": 0.5235086363368513}' \
    --namespace 'TgzJFRYw' \
    --statCode '6t1IKZLO' \
    --userId '6V4Ode46' \
    --additionalKey 'QmCidgdp' \
    > test.out 2>&1
eval_tap $? 70 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE