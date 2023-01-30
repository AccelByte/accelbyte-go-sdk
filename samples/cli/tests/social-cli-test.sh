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
    --body '{"maxSlotSize": 47, "maxSlots": 25}' \
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
    --userId 'kwLUr837' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'L1IC8NSG' \
    --body '{"maxSlotSize": 29, "maxSlots": 91}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'ZRZNlF9B' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'JbTgi9rX' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'SrFdGI0Q' \
    --userId 'CeO8Bu90' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'SP04MnCz' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'llzKuMno' \
    --userId 'tYxMoRho' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["3vht4YFP", "CNGBcxnm", "aabUMc9W"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'tOxttJMf' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'bZrsrL97' \
    --body '{"achievements": ["da7ui0Bf", "NK5y4G4M", "lLh4BSip"], "attributes": {"uVtfVG5F": "BiHfWxxz", "lYFOgQq7": "ftzEjycW", "1NApX1eH": "dgTD1iLJ"}, "avatarUrl": "eTEgEGuP", "inventories": ["ci5NQcwZ", "awnXi3pL", "3J8cCYKl"], "label": "5Upo9XgL", "profileName": "WzIRyGyU", "statistics": ["z2bqRLhw", "uZufjWzk", "6Vbxunfr"], "tags": ["ZqmnF3Oa", "qjOL1rSo", "AmhtMFS5"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'KnutqWwD' \
    --userId 'jvJOwoL7' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'fnKR2WG5' \
    --userId 'BoxjIUwQ' \
    --body '{"achievements": ["NHtYgxdd", "Rvn7iYbt", "L3nexvpc"], "attributes": {"w3bhXIoM": "o5PfG4lm", "8OXrkLaE": "LjS5FARP", "1LjSX59b": "ZS02sJGZ"}, "avatarUrl": "CE1mccJI", "inventories": ["6Xb6LZaE", "ysv7Fbez", "XgVIQ6wE"], "label": "luIC4Gku", "profileName": "RgbGDSOi", "statistics": ["VWn3p5lo", "6LW8vwqi", "ft7mtomH"], "tags": ["3CouODee", "fynRETuw", "y1kLSB68"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Lc8x1IEh' \
    --userId 'sbcPZuOc' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'DRPshvGw' \
    --namespace $AB_NAMESPACE \
    --profileId 'UScCrQIl' \
    --userId 'xQJJ9TjU' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '6EVo1w0j' \
    --namespace $AB_NAMESPACE \
    --profileId 'GbaX9KwA' \
    --userId 'bEyjdzHB' \
    --body '{"name": "VrWEdcu8", "value": "eFW4MXWx"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'veXBfLzI' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'lWd7Gi8E' \
    --label 'vudV2748' \
    --tags '["cu2qQMka", "QNHqOZvZ", "WeTuerqa"]' \
    --checksum 'pBwZscSN' \
    --customAttribute 'ZjEX6ZcO' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId '0QdcIsDc' \
    --userId 'TKPh6qsY' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '6N5bc5Xh' \
    --userId 'qd1bIPcp' \
    --label 'LDLdwM5F' \
    --tags '["qOwW6IWd", "YgHraueE", "tn22m5ST"]' \
    --checksum '2YPwubvz' \
    --customAttribute '8sxpERio' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'CIm4RQzU' \
    --userId 'OCpcnkpu' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'dCBWuWsZ' \
    --userId 'zfHiFxsr' \
    --body '{"customAttribute": "muhwVSel", "label": "pM3yvi1D", "tags": ["m6fVVsVQ", "35lsTunj", "kY0qNn4R"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '22' \
    --statCodes 'gvBanVoW' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'X4J0TKpr' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'zc5LbtPg' \
    --userIds 't18vnSef' \
    > test.out 2>&1
eval_tap $? 28 'BulkFetchStatItems' test.out

#- 29 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.04124836719739744, "statCode": "0nCsGW2P", "userId": "33CTAhzr"}, {"inc": 0.47503247116440506, "statCode": "HPmTeFOy", "userId": "7zQk2EX8"}, {"inc": 0.20264287558348915, "statCode": "EiKuNReP", "userId": "s9LkOPIv"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItem' test.out

#- 30 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4424968014913465, "statCode": "JvG5GWca", "userId": "LaWWkWBx"}, {"inc": 0.10972087488817939, "statCode": "HNlqeeuk", "userId": "Tf50jb5p"}, {"inc": 0.9305215621553271, "statCode": "Wmpkrgny", "userId": "Qa1PKe1z"}]' \
    > test.out 2>&1
eval_tap $? 30 'BulkIncUserStatItemValue' test.out

#- 31 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'uDYmGrp0' \
    --userIds '["7FZmVR1k", "WkKIBhDk", "grAxqa4P"]' \
    > test.out 2>&1
eval_tap $? 31 'BulkFetchOrDefaultStatItems' test.out

#- 32 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "G2NVAFgv", "userId": "4wIbITP7"}, {"statCode": "WJfNUFUm", "userId": "rpQX9lg4"}, {"statCode": "vhmqjHac", "userId": "d0B6afgy"}]' \
    > test.out 2>&1
eval_tap $? 32 'BulkResetUserStatItem' test.out

#- 33 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 33 'GetStats' test.out

#- 34 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.5447845123800144, "description": "UP17VvNk", "incrementOnly": true, "maximum": 0.6181853504819683, "minimum": 0.4358245282975455, "name": "Fcr7YGf1", "setAsGlobal": false, "setBy": "SERVER", "statCode": "4O9tXdcO", "tags": ["zqzIZIgO", "YCkditch", "JGJCGtjE"]}' \
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
    --limit '8' \
    --offset '39' \
    --keyword 'MrehcVBh' \
    > test.out 2>&1
eval_tap $? 37 'QueryStats' test.out

#- 38 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'cMQWRxse' \
    > test.out 2>&1
eval_tap $? 38 'GetStat' test.out

#- 39 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '9Xb60f51' \
    > test.out 2>&1
eval_tap $? 39 'DeleteStat' test.out

#- 40 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Qw29TFB0' \
    --body '{"defaultValue": 0.8427769725235618, "description": "2LLUjPfz", "name": "L9pB1fkq", "tags": ["jYZNr6Sw", "gGjZ4fdT", "rQLcB9tU"]}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateStat' test.out

#- 41 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'XdaW4b0R' \
    > test.out 2>&1
eval_tap $? 41 'DeleteTiedStat' test.out

#- 42 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'bRfGpNSw' \
    --limit '87' \
    --offset '14' \
    --statCodes '1bHPYA8l' \
    --tags 'UhwuHg20' \
    > test.out 2>&1
eval_tap $? 42 'GetUserStatItems' test.out

#- 43 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'feX6Ndvg' \
    --body '[{"statCode": "kuin9KFy"}, {"statCode": "XTaHQQnw"}, {"statCode": "wI0jbKwo"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkCreateUserStatItems' test.out

#- 44 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'SMMQXuO3' \
    --body '[{"inc": 0.6752396046521338, "statCode": "W35X5c58"}, {"inc": 0.784194884995653, "statCode": "aLf27zkn"}, {"inc": 0.7768262760661894, "statCode": "087fChuW"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItem1' test.out

#- 45 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'PxA2hjeJ' \
    --body '[{"inc": 0.33184909165416776, "statCode": "Nm4832z4"}, {"inc": 0.11149778860279558, "statCode": "JlVSt4yx"}, {"inc": 0.28033734867376725, "statCode": "PY8cIMz7"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkIncUserStatItemValue1' test.out

#- 46 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '1BLEoWXR' \
    --body '[{"statCode": "wSCjzRYH"}, {"statCode": "fTuH06yj"}, {"statCode": "x7YFI26O"}]' \
    > test.out 2>&1
eval_tap $? 46 'BulkResetUserStatItem1' test.out

#- 47 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'SQmY99ew' \
    --userId 's7OIP11h' \
    > test.out 2>&1
eval_tap $? 47 'CreateUserStatItem' test.out

#- 48 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'rkzD1LON' \
    --userId 'ozDsLwxc' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserStatItems' test.out

#- 49 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'BTdBJNKs' \
    --userId 'xl7AKkco' \
    --body '{"inc": 0.010507008622086977}' \
    > test.out 2>&1
eval_tap $? 49 'IncUserStatItemValue' test.out

#- 50 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Nhxv9tH5' \
    --userId 'rQHK6GsY' \
    --additionalKey 'VNQANL8S' \
    --body '{"additionalData": {"AOZY9Jex": {}, "uhzgF8tM": {}, "9BJ5IztL": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'ResetUserStatItemValue' test.out

#- 51 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '3' \
    --statCodes 'cs5sprin' \
    > test.out 2>&1
eval_tap $? 51 'GetGlobalStatItems1' test.out

#- 52 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'FKyJTb96' \
    > test.out 2>&1
eval_tap $? 52 'GetGlobalStatItemByStatCode1' test.out

#- 53 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'mvGYih3H' \
    --userIds 'knbXoXmu' \
    > test.out 2>&1
eval_tap $? 53 'BulkFetchStatItems1' test.out

#- 54 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4834584254712835, "statCode": "35PdUUYn", "userId": "tEDqF8da"}, {"inc": 0.6965513360869438, "statCode": "7YEqfLiv", "userId": "Jol43ADj"}, {"inc": 0.22275879085661887, "statCode": "KbtO1S3M", "userId": "gABXn6Hz"}]' \
    > test.out 2>&1
eval_tap $? 54 'PublicBulkIncUserStatItem' test.out

#- 55 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9029745303206105, "statCode": "R28JJ5wu", "userId": "G3B5aVgi"}, {"inc": 0.5944581857823329, "statCode": "KBGLvWEP", "userId": "UKJHefyI"}, {"inc": 0.7335826821166027, "statCode": "lX9rhOWw", "userId": "cFs3jXaS"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkIncUserStatItemValue' test.out

#- 56 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "tI0FdhUH", "userId": "jaar99Dy"}, {"statCode": "CvOYs3z8", "userId": "B4f1ifza"}, {"statCode": "3ELAuZai", "userId": "GrJ06tvr"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem2' test.out

#- 57 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.5053466390153447, "description": "WKTAffwl", "incrementOnly": false, "maximum": 0.3180613700245979, "minimum": 0.3089997185059774, "name": "mrkhsdLw", "setAsGlobal": false, "setBy": "SERVER", "statCode": "2HYazS9N", "tags": ["WUd0MdcN", "w26xANPb", "DP08oGRT"]}' \
    > test.out 2>&1
eval_tap $? 57 'CreateStat1' test.out

#- 58 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'IK8P6k7O' \
    --limit '98' \
    --offset '25' \
    --statCodes 'fTFXw3vU' \
    --tags '6gpqnzUV' \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryUserStatItems' test.out

#- 59 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'fcEcfAKT' \
    --body '[{"statCode": "Cf900Q7I"}, {"statCode": "gKY6PEuK"}, {"statCode": "tkiBbxCo"}]' \
    > test.out 2>&1
eval_tap $? 59 'PublicBulkCreateUserStatItems' test.out

#- 60 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId '2RzYfu1r' \
    --statCodes '["Wlz5cnHj", "f0jVrMF7", "AL0df3L1"]' \
    --tags '["mDqVdVCf", "zeh5OjqV", "Sd9xDPzt"]' \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryUserStatItems1' test.out

#- 61 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'yGPZjhSG' \
    --body '[{"inc": 0.23285144289134874, "statCode": "CDg6IBhJ"}, {"inc": 0.6154856182342338, "statCode": "1ZBm1Z4V"}, {"inc": 0.09082034725335075, "statCode": "de07liUN"}]' \
    > test.out 2>&1
eval_tap $? 61 'PublicBulkIncUserStatItem1' test.out

#- 62 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'b7Aivgu5' \
    --body '[{"inc": 0.056327111008732555, "statCode": "DFMNtjkh"}, {"inc": 0.09200847621996522, "statCode": "k79Sy3ow"}, {"inc": 0.4118190575809221, "statCode": "qZGU6mtJ"}]' \
    > test.out 2>&1
eval_tap $? 62 'BulkIncUserStatItemValue2' test.out

#- 63 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'awm7Sk5l' \
    --body '[{"statCode": "gaMxsotp"}, {"statCode": "5Xd2iNf8"}, {"statCode": "fW9d8zVh"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkResetUserStatItem3' test.out

#- 64 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'OXIe5zwE' \
    --userId 'IDynr1yU' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserStatItem' test.out

#- 65 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'EQugdNga' \
    --userId 'OP5BIdtQ' \
    > test.out 2>&1
eval_tap $? 65 'DeleteUserStatItems1' test.out

#- 66 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'X6jhd8QB' \
    --userId '4RW5Cl2D' \
    --body '{"inc": 0.5634606026935162}' \
    > test.out 2>&1
eval_tap $? 66 'PublicIncUserStatItem' test.out

#- 67 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'VyUvCJd3' \
    --userId 'XPezqy6i' \
    --body '{"inc": 0.23853493578424478}' \
    > test.out 2>&1
eval_tap $? 67 'PublicIncUserStatItemValue' test.out

#- 68 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'M6lhUv6J' \
    --userId 'fCdrOJpi' \
    > test.out 2>&1
eval_tap $? 68 'ResetUserStatItemValue1' test.out

#- 69 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"xHlRvgtn": {}, "tB4DcFxJ": {}, "4ET1T1Me": {}}, "additionalKey": "n0Xrqtlx", "statCode": "RUYT2wwU", "updateStrategy": "OVERRIDE", "userId": "cBOTYIYo", "value": 0.17208330154758866}, {"additionalData": {"WJh2dhIe": {}, "KNomySKc": {}, "O45A7jko": {}}, "additionalKey": "jlVYSZi0", "statCode": "aNCC5n7k", "updateStrategy": "INCREMENT", "userId": "zuH3SanM", "value": 0.5335737092381205}, {"additionalData": {"Jp0QZDS8": {}, "4XsVGA20": {}, "jtfOKevp": {}}, "additionalKey": "O7SuLnkv", "statCode": "hbJwml0k", "updateStrategy": "MIN", "userId": "kzEQrM0U", "value": 0.3125740000332412}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkUpdateUserStatItemV2' test.out

#- 70 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'avB12qZa' \
    --statCode '7dj8Kcgm' \
    --userIds '["Ta7bUSJM", "7jYQqa4V", "fJBEUNyW"]' \
    > test.out 2>&1
eval_tap $? 70 'BulkFetchOrDefaultStatItems1' test.out

#- 71 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'mrlyKAZh' \
    --additionalKey 'VQEotKYR' \
    --body '[{"additionalData": {"nlomdUwH": {}, "iBEjTlvH": {}, "93s0Znp3": {}}, "statCode": "UlOKt4na", "updateStrategy": "MIN", "value": 0.5589397191509172}, {"additionalData": {"P5kKVUtj": {}, "KLFOvthm": {}, "THIpPHp7": {}}, "statCode": "36F4kBOm", "updateStrategy": "MIN", "value": 0.2978799537397756}, {"additionalData": {"vXVEYKyD": {}, "4P9dGesL": {}, "2Bgww2w9": {}}, "statCode": "Cp6R9xeW", "updateStrategy": "MAX", "value": 0.5484249568615489}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem' test.out

#- 72 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'P9eHSoxi' \
    --additionalKey 'ha7LfOM5' \
    --body '[{"additionalData": {"KgOgSRcL": {}, "fdW6y7gS": {}, "4HRICz15": {}}, "statCode": "CUehOe9F"}, {"additionalData": {"1KmQQG6I": {}, "f6rMAVlh": {}, "rrunTJ95": {}}, "statCode": "hesRngzk"}, {"additionalData": {"BFOcZ8Jv": {}, "yMkp3syX": {}, "y4b0lsMx": {}}, "statCode": "v5R3Ky7W"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItemValues' test.out

#- 73 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '3H6C5T2x' \
    --userId 'tpwqg0EW' \
    --additionalKey 'LWs0ZP9D' \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems2' test.out

#- 74 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'G7mGusp6' \
    --userId 'nTbj2DNT' \
    --additionalKey 'ULapHFAo' \
    --body '{"additionalData": {"cL9b7rvk": {}, "RcmzBto7": {}, "z4sQfFMw": {}}, "updateStrategy": "OVERRIDE", "value": 0.3443707941934172}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue' test.out

#- 75 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"JqWUCfZu": {}, "3lau8Mgd": {}, "pm7F6Pql": {}}, "additionalKey": "Q9IhF4Gg", "statCode": "Uyswf6Bf", "updateStrategy": "MAX", "userId": "LvIhbSp2", "value": 0.10308106594795474}, {"additionalData": {"SyxyC0FD": {}, "Gi7JIpuI": {}, "F6l2VBAf": {}}, "additionalKey": "0sfFMJ4i", "statCode": "SJqD4tIK", "updateStrategy": "MAX", "userId": "6BxfU6VB", "value": 0.21788107418991987}, {"additionalData": {"9ot1Th14": {}, "B6OUnptf": {}, "cUojAygo": {}}, "additionalKey": "YhrCWNRp", "statCode": "MmBPbmz9", "updateStrategy": "OVERRIDE", "userId": "6rEyTaKh", "value": 0.1800925953391691}]' \
    > test.out 2>&1
eval_tap $? 75 'BulkUpdateUserStatItem1' test.out

#- 76 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'iNs6ibpJ' \
    --additionalKey 'qHuCNqQi' \
    --statCodes '["RxLFWFts", "UsXIbxna", "ICKmfNKL"]' \
    --tags '["jKdxzm1f", "wBmkqWwA", "bcTVjqP4"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems2' test.out

#- 77 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'kLcPydUN' \
    --additionalKey 'brtZ9dKp' \
    --body '[{"additionalData": {"N9Iq2jUw": {}, "fE4EtsW8": {}, "J8eRi82Q": {}}, "statCode": "6NCDEgXf", "updateStrategy": "MIN", "value": 0.025223639056740632}, {"additionalData": {"WL17gvBW": {}, "mcOjaWW9": {}, "1I6s22qU": {}}, "statCode": "zZosKMGz", "updateStrategy": "MIN", "value": 0.677725275150936}, {"additionalData": {"jvlsDZbK": {}, "nZGsCtbO": {}, "CPNVN0TN": {}}, "statCode": "WtJXgIgt", "updateStrategy": "MIN", "value": 0.3114249814696326}]' \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItem2' test.out

#- 78 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'nZrRmydx' \
    --userId 'nHlZtUNm' \
    --additionalKey 'NQ9kindj' \
    --body '{"additionalData": {"zQeQDIPv": {}, "FovVDZfu": {}, "qfs4zskI": {}}, "updateStrategy": "INCREMENT", "value": 0.6917386674942935}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE