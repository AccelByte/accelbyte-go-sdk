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
    --body '{"maxSlotSize": 40, "maxSlots": 89}' \
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
    --userId 'Of3Y4Czp' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'PjGopBRA' \
    --body '{"maxSlotSize": 81, "maxSlots": 50}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'afrLi9kx' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'wbvdrECc' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'IahOJojO' \
    --userId 'zXMH75zN' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'ajZDbhMN' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'W6OKsTgn' \
    --userId 'JZANQiah' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["g1zUS6LB", "PZ3eiAk3", "UM7XrUCC"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'Br1yR3WS' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'SFTi9Tdw' \
    --body '{"achievements": ["kuV6Qc5n", "JcQDPzbN", "jsIY0730"], "attributes": {"iEZjearo": "T5e13jpj", "Zz4GQt8u": "q6iRpWKw", "oVVxPAM2": "wmuNBDxc"}, "avatarUrl": "IsRfIVS6", "inventories": ["oJJcQbN4", "gLvGWEAQ", "emjLyhCz"], "label": "113bax3I", "profileName": "eJts7qay", "statistics": ["G5OD0RgB", "K3FqumK4", "PBqQMNS3"], "tags": ["cwKCC4dS", "AGONKhBm", "NA4d487v"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'ikhjzq10' \
    --userId '9L0Yc7p2' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'NlgAb0UL' \
    --userId 'lrcYrX2u' \
    --body '{"achievements": ["p8hjollr", "fBEcAJCL", "Jajvmst1"], "attributes": {"cx0SQNiA": "hACOZKUu", "nVzqQz5s": "Ozn1G3LZ", "0QSjXZ5S": "rmJ6RuFm"}, "avatarUrl": "JmO3Y0wr", "inventories": ["u76V8ETS", "4AIeV7KN", "kVSPB0kc"], "label": "4FvH6270", "profileName": "Ft03gXWx", "statistics": ["wViqdiuG", "25eJBQ4t", "JIPgMEjQ"], "tags": ["KRDjRtAH", "T4s3atR9", "gd7oLxAj"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'lktD73jW' \
    --userId 'ebPEWnFd' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'eDnOjGxK' \
    --namespace $AB_NAMESPACE \
    --profileId 'Ms1AAMUg' \
    --userId 'WEgZ341O' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'Fyc7GTdk' \
    --namespace $AB_NAMESPACE \
    --profileId 'KX5NTKqW' \
    --userId 'VB2SKLKI' \
    --body '{"name": "oMEZ0wuH", "value": "tumkjqu1"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'RBnJQEsd' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'TNdFZWtd' \
    --label 'pshGqaCp' \
    --tags '["f6m348iv", "jEY4CHOG", "XgxyxVFZ"]' \
    --checksum 'i2KBICxv' \
    --customAttribute 'yOo4Jc09' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'yUeApA1y' \
    --userId 'kEQC6zs2' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '9MlTUF5J' \
    --userId 'ghts9nDb' \
    --label '61YfpxPJ' \
    --tags '["gqvw29Aa", "x4Y0SSZn", "cUYNYJPB"]' \
    --checksum 'hivImFGy' \
    --customAttribute 'nKIf4v39' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'k6r61cAl' \
    --userId 'glwgsu43' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'D7WWHJd1' \
    --userId 'U1I3wc7q' \
    --body '{"customAttribute": "OSzSBQ6F", "label": "NbAn4end", "tags": ["I4zqwIpT", "HTSvzqws", "Jn0wIKVV"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'kj6kvUXB' \
    --userIds 'xTW1p1US' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.47242718792485416, "statCode": "rtmAJtQh", "userId": "58BO7fY9"}, {"inc": 0.6373866828414182, "statCode": "OR7hHxBB", "userId": "7eiBxlHe"}, {"inc": 0.963432342443869, "statCode": "FGftIj9N", "userId": "UP4Np7Ro"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5074044460573679, "statCode": "UqcOkkCu", "userId": "ftVNB9wV"}, {"inc": 0.5368242843805153, "statCode": "dyMOmNU3", "userId": "b07hx9Zv"}, {"inc": 0.1182702632896887, "statCode": "RpycAzlq", "userId": "UX00NP7o"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'UGKnnSNz' \
    --userIds '["Ch71HMce", "Oo7O3NPz", "fNPdxXWq"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "ALWlCWMv", "userId": "MPtk3hkh"}, {"statCode": "y03EXLXX", "userId": "QOQ6YZXM"}, {"statCode": "iHiPwyoo", "userId": "1WuQVTha"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.7962861942086565, "description": "IHh81GCi", "incrementOnly": false, "maximum": 0.7916696148226582, "minimum": 0.7891848141124935, "name": "zVgxJqbf", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "SmEnchGn", "tags": ["F2x4fSyK", "9W7hp6KT", "WQmbKU8h"]}' \
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
    --limit '2' \
    --offset '87' \
    --keyword 'mK6EZWro' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'RYewNwuF' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'soqirG8h' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'aP9qYCd5' \
    --body '{"defaultValue": 0.3991446938260311, "description": "rPo3Xx3U", "name": "pN6GFq2c", "tags": ["pfGSWVhR", "sJKEM4ng", "jlkPnD3A"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'F1ocqTNO' \
    > test.out 2>&1
eval_tap $? 40 'DeleteTiedStat' test.out

#- 41 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'lr2uCbwh' \
    --limit '98' \
    --offset '48' \
    --statCodes 'LgLWdLF9' \
    --tags 'rgG068GX' \
    > test.out 2>&1
eval_tap $? 41 'GetUserStatItems' test.out

#- 42 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'DEGfQvLs' \
    --body '[{"statCode": "XrGO40Fr"}, {"statCode": "yNEU8LE0"}, {"statCode": "0MKEJpMZ"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkCreateUserStatItems' test.out

#- 43 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '4nZ5OVap' \
    --body '[{"inc": 0.6742553708553186, "statCode": "UaNz0zFr"}, {"inc": 0.5962263456305468, "statCode": "fTkWpzes"}, {"inc": 0.3422386406197133, "statCode": "RTwmtRil"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItem1' test.out

#- 44 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '1fEpvVS4' \
    --body '[{"inc": 0.45494206941865123, "statCode": "b6j6WHs6"}, {"inc": 0.5498542557087605, "statCode": "fRHOSHnZ"}, {"inc": 0.4728092936814362, "statCode": "wfpVz5j5"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItemValue1' test.out

#- 45 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'mwp60bjW' \
    --body '[{"statCode": "BSde9Tlp"}, {"statCode": "cQZN1EpD"}, {"statCode": "95k9OM9e"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkResetUserStatItem1' test.out

#- 46 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'BuSl40qF' \
    --userId 'z9dDSO4h' \
    > test.out 2>&1
eval_tap $? 46 'CreateUserStatItem' test.out

#- 47 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '9g3bg9IV' \
    --userId 'jdGmiu5o' \
    > test.out 2>&1
eval_tap $? 47 'DeleteUserStatItems' test.out

#- 48 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'UMdShoTw' \
    --userId 'Nb3O604K' \
    --body '{"inc": 0.10574677641501706}' \
    > test.out 2>&1
eval_tap $? 48 'IncUserStatItemValue' test.out

#- 49 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'kQ8P4ZJR' \
    --userId 'CGOKShuY' \
    --additionalKey '7Kdi9AQX' \
    --body '{"additionalData": {"MBWu2Q9y": {}, "RHUAx1Hn": {}, "x5xJOAuD": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'ResetUserStatItemValue' test.out

#- 50 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '9s1ZvCSy' \
    --userIds 'U9erTAIc' \
    > test.out 2>&1
eval_tap $? 50 'BulkFetchStatItems1' test.out

#- 51 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3448429977409805, "statCode": "sDKNVGnB", "userId": "WjTwJAjl"}, {"inc": 0.4677961989689414, "statCode": "IVsQ2adA", "userId": "0H0yVWdf"}, {"inc": 0.19541613154160076, "statCode": "ynO4tudH", "userId": "xzefmgde"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItem' test.out

#- 52 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9029946100951388, "statCode": "NOsTrv9O", "userId": "fcOiXdtn"}, {"inc": 0.20154998705967575, "statCode": "rG2EIjrG", "userId": "uukvTgVp"}, {"inc": 0.11926403386136086, "statCode": "NIqVS0Dp", "userId": "cOKXAR1a"}]' \
    > test.out 2>&1
eval_tap $? 52 'PublicBulkIncUserStatItemValue' test.out

#- 53 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "AsgwautL", "userId": "w8VsR11c"}, {"statCode": "1P77AYUU", "userId": "lj68GIoD"}, {"statCode": "Bs39nEuP", "userId": "VcvXuPVW"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem2' test.out

#- 54 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.29829041873699247, "description": "tIjr2jaI", "incrementOnly": false, "maximum": 0.9928125180042565, "minimum": 0.28343740505395776, "name": "J3RfagF5", "setAsGlobal": false, "setBy": "SERVER", "statCode": "7DToMRrf", "tags": ["G0PxFhn0", "x091HQTX", "RyNwITLb"]}' \
    > test.out 2>&1
eval_tap $? 54 'CreateStat1' test.out

#- 55 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'maevhzn1' \
    --limit '100' \
    --offset '40' \
    --statCodes 'nbXsKhJZ' \
    --tags 'AjuIHXiG' \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryUserStatItems' test.out

#- 56 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'tLBJiJTb' \
    --body '[{"statCode": "NnPX3FC4"}, {"statCode": "DVJG3eNU"}, {"statCode": "MBMZO9sb"}]' \
    > test.out 2>&1
eval_tap $? 56 'PublicBulkCreateUserStatItems' test.out

#- 57 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'FjfJ1rq2' \
    --statCodes '["oYHa39OC", "nfPJwyM3", "MjaXjRqb"]' \
    --tags '["yQiSey2X", "1j9ml3Gc", "gO2BuxnW"]' \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryUserStatItems1' test.out

#- 58 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'HCp7NcDS' \
    --body '[{"inc": 0.16167237031355142, "statCode": "Co6H0Z8n"}, {"inc": 0.5046937067250927, "statCode": "BxFEhiqO"}, {"inc": 0.8710447326189366, "statCode": "OFJYBvyB"}]' \
    > test.out 2>&1
eval_tap $? 58 'PublicBulkIncUserStatItem1' test.out

#- 59 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '3DcRrEQy' \
    --body '[{"inc": 0.21758255611631128, "statCode": "fIFUSjeS"}, {"inc": 0.6882129948156704, "statCode": "aZncAFYh"}, {"inc": 0.7141147349110748, "statCode": "mWymlKsq"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkIncUserStatItemValue2' test.out

#- 60 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'vyncamjU' \
    --body '[{"statCode": "GAqP3v0s"}, {"statCode": "qHBykEPG"}, {"statCode": "uAZOpYbH"}]' \
    > test.out 2>&1
eval_tap $? 60 'BulkResetUserStatItem3' test.out

#- 61 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'ssIPcIuc' \
    --userId 'xdAR36FK' \
    > test.out 2>&1
eval_tap $? 61 'PublicCreateUserStatItem' test.out

#- 62 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'hCfXbVkf' \
    --userId 'f4YYmrsG' \
    > test.out 2>&1
eval_tap $? 62 'DeleteUserStatItems1' test.out

#- 63 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'OJAHcGHZ' \
    --userId '1Z8IfelW' \
    --body '{"inc": 0.8548731071853383}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItem' test.out

#- 64 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'qvHwYET2' \
    --userId 'tLZsVSrb' \
    --body '{"inc": 0.8845583069501353}' \
    > test.out 2>&1
eval_tap $? 64 'PublicIncUserStatItemValue' test.out

#- 65 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'y82A0LPo' \
    --userId '5PhWxyiB' \
    > test.out 2>&1
eval_tap $? 65 'ResetUserStatItemValue1' test.out

#- 66 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ejt9uCPV": {}, "q9hNniRG": {}, "E1zgz5AQ": {}}, "additionalKey": "bHCKNmdu", "statCode": "W0cm8CgG", "updateStrategy": "INCREMENT", "userId": "QyC4bEVx", "value": 0.09386223487355205}, {"additionalData": {"4dSaNiAo": {}, "UE1m4pL9": {}, "xBOM280F": {}}, "additionalKey": "Kdm4NRcl", "statCode": "QQDHp5Ar", "updateStrategy": "MIN", "userId": "fDJSXYR0", "value": 0.4256796397242204}, {"additionalData": {"cr2wjkgP": {}, "Vrzpb6I5": {}, "JnGER7bH": {}}, "additionalKey": "yEguvLtz", "statCode": "suSKC3Az", "updateStrategy": "MIN", "userId": "z2Z9eJZv", "value": 0.8888724057534805}]' \
    > test.out 2>&1
eval_tap $? 66 'BulkUpdateUserStatItemV2' test.out

#- 67 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'UAsk9Nzc' \
    --statCode 'aESFeZ66' \
    --userIds '["lddvhWYM", "PUOsWt5V", "wO34zT5A"]' \
    > test.out 2>&1
eval_tap $? 67 'BulkFetchOrDefaultStatItems1' test.out

#- 68 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'OCv3ADGE' \
    --additionalKey 'iZLfOvDl' \
    --body '[{"additionalData": {"PIfZT07U": {}, "1XCeUSKX": {}, "Me7tyPXq": {}}, "statCode": "IyEs83N1", "updateStrategy": "MIN", "value": 0.8429303052772141}, {"additionalData": {"3wapCLe2": {}, "pyf6mDf2": {}, "labbYjyj": {}}, "statCode": "SkX22j6m", "updateStrategy": "INCREMENT", "value": 0.14551160673305563}, {"additionalData": {"Nu5uGlU4": {}, "wLQn7s4u": {}, "a8VOJITk": {}}, "statCode": "d9SYv3eU", "updateStrategy": "MAX", "value": 0.8149521033005718}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem' test.out

#- 69 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'jiDXL2WB' \
    --additionalKey 'CWrPeoFF' \
    --body '[{"additionalData": {"csz5Rhqb": {}, "K2Q4JpQR": {}, "HKTbPzSr": {}}, "statCode": "g37HpMIo"}, {"additionalData": {"uNFRsrcy": {}, "dZFyCUWf": {}, "3Z4ON3cM": {}}, "statCode": "R4YCWIgE"}, {"additionalData": {"nk1kKANi": {}, "OFUWELOF": {}, "CBYAErJa": {}}, "statCode": "ZhdFqhJE"}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItemValues' test.out

#- 70 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'UgpmjrLf' \
    --userId 'm4njywDY' \
    --additionalKey 'rMsqQF6G' \
    > test.out 2>&1
eval_tap $? 70 'DeleteUserStatItems2' test.out

#- 71 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'kd1sQO6C' \
    --userId 'Z7EAuAT9' \
    --additionalKey 'FfUxIuIg' \
    --body '{"additionalData": {"ivyAhXf0": {}, "nCRldco0": {}, "9cHNHITo": {}}, "updateStrategy": "MAX", "value": 0.2707287883474052}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateUserStatItemValue' test.out

#- 72 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"3an7szgh": {}, "amtFtp4L": {}, "YoMCitix": {}}, "additionalKey": "E0L9kIrp", "statCode": "aD59Kb3L", "updateStrategy": "MIN", "userId": "lb6bdYU4", "value": 0.26821404947045013}, {"additionalData": {"Ir2SBzW2": {}, "2bRxjkvh": {}, "SkIq6Biz": {}}, "additionalKey": "VkMd4ECT", "statCode": "PsxVrGnn", "updateStrategy": "INCREMENT", "userId": "RtiswQzv", "value": 0.4006133153566308}, {"additionalData": {"eBMTxPYM": {}, "P9pR9rx9": {}, "o6GmewiB": {}}, "additionalKey": "rF5a86Xk", "statCode": "MakByg2g", "updateStrategy": "MIN", "userId": "3oE8PUW3", "value": 0.4789859655290426}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkUpdateUserStatItem1' test.out

#- 73 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'prysD6L9' \
    --additionalKey '5j4S1w55' \
    --statCodes '["efgGxnYd", "v8FcPP7R", "CaafIUy4"]' \
    --tags '["j294YnZG", "tLUD1Yql", "GVwFfHIZ"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems2' test.out

#- 74 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '0PgHI1hE' \
    --additionalKey 'nfSFdTLb' \
    --body '[{"additionalData": {"wYRCdAwm": {}, "IlpJn6Vh": {}, "sxuAzauv": {}}, "statCode": "oass7wwy", "updateStrategy": "MIN", "value": 0.1597773847856211}, {"additionalData": {"Vcm27XV4": {}, "qr7r1Nja": {}, "2tuUVXdb": {}}, "statCode": "Le9ve1lo", "updateStrategy": "MAX", "value": 0.44994117802294475}, {"additionalData": {"ceSrpLoY": {}, "vWilJEsF": {}, "CQ8tDyzR": {}}, "statCode": "hgVFXm8U", "updateStrategy": "MAX", "value": 0.13068587209908844}]' \
    > test.out 2>&1
eval_tap $? 74 'BulkUpdateUserStatItem2' test.out

#- 75 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'jd7qyvXb' \
    --userId '7OalC98K' \
    --additionalKey 'pacwAicP' \
    --body '{"additionalData": {"uHsHSXag": {}, "JA68FuH6": {}, "uc0Ztw4l": {}}, "updateStrategy": "MAX", "value": 0.12488999744777551}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE