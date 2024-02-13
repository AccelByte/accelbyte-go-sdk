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
echo "1..98"

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
eval_tap 0 2 'GetNamespaceSlotConfig # SKIP deprecated' test.out

#- 3 UpdateNamespaceSlotConfig
eval_tap 0 3 'UpdateNamespaceSlotConfig # SKIP deprecated' test.out

#- 4 DeleteNamespaceSlotConfig
eval_tap 0 4 'DeleteNamespaceSlotConfig # SKIP deprecated' test.out

#- 5 GetUserSlotConfig
eval_tap 0 5 'GetUserSlotConfig # SKIP deprecated' test.out

#- 6 UpdateUserSlotConfig
eval_tap 0 6 'UpdateUserSlotConfig # SKIP deprecated' test.out

#- 7 DeleteUserSlotConfig
eval_tap 0 7 'DeleteUserSlotConfig # SKIP deprecated' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'TtuD4XqtPptD1GNC' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'sXbkcFh3Pp5sLfzp' \
    --userId 'KWNo3CJXiOizF52R' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["6MLvx2DxKyaoe7Zt", "fY2gq3eYeCe5evrG", "HI8oBXBgrgUWwElZ"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'zSlcrjn2HBlW0pWp' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'M6UawUs0ni0UgB6s' \
    --body '{"achievements": ["9fK2t7cSE3SajL0h", "gbrnZkc0jWLiDsK4", "QrfgVfSGr1QyL0xq"], "attributes": {"TMhf69b1csjZtrS0": "3hcms2bWZel4c9ed", "kCX6C0NjHwaC15VP": "VXsRC0SDraEj5OuU", "ArRzVv9pt77a8K8g": "CUkWi0xnZyNPDlLi"}, "avatarUrl": "ZBYVekBL2HyInLj4", "inventories": ["aby5oqfTNkcVnJWT", "rw4E47objh1JIhYD", "UqCBZ2YdRuYZAcfy"], "label": "TD2KVklOPrMgvk8r", "profileName": "d8YSyZeyxFCDwrKO", "statistics": ["UmAYoM9COHIuQ4TO", "vOmiV2Z7Da1IOzr5", "uuqqZ9t8T9CLSDFw"], "tags": ["TMXMxAm8yto8eODA", "fSZ3BdDXUlf4ZEL0", "eExtRvsY1w5zANnQ"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'VfdABft3IXP4KIZg' \
    --userId 'SaU3xYEz4mEcYSft' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'NQRbWlucWy7Hx2cv' \
    --userId 'HZPqUFzjHps7yRvG' \
    --body '{"achievements": ["HsgPxKhzjHxFmh5O", "BB5TQ1Bk6i3kkdWb", "ndgfTmZYsUi6523J"], "attributes": {"m4AAxyhuMAcu5vga": "T3xfIN7gcYliABtU", "aIOzat0Rnw8scIcM": "8lcWlLIvE0UfPmBE", "EkW87c4f9P7tCFRR": "TNnjErRIIaBVHGKS"}, "avatarUrl": "uHci8OlSargTv1Og", "inventories": ["0Es31ZRQLa1CTebd", "bDgLA6WLo6YpZVf2", "Lj7NXS9GWTtU51z4"], "label": "gxu3PNBHv6BTwmJt", "profileName": "GGXSRCvaaKDIQHuZ", "statistics": ["t1rj611bDMQAbJrH", "SM9jIhswPcJuu1ai", "fOH9fnmn958WPdB3"], "tags": ["XEwQwd3FL2PdQAXI", "HqNc9oqTBm3y5Fph", "aLlFrb8A46I3XLYd"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'hOwthMVxCrRbQrqN' \
    --userId 'bRgAY2BVeNCQE0pL' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'BjXUD5on6JO3vyBv' \
    --namespace $AB_NAMESPACE \
    --profileId 'SbFNqcAxhwYt4sqi' \
    --userId 'nUUhvV28PI7lnD6G' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'RXPZGmIZwSMpKGA5' \
    --namespace $AB_NAMESPACE \
    --profileId '8HbTPx5Z1wrfhn96' \
    --userId 'oAVZTNl1xl91fGmB' \
    --body '{"name": "HYdQ6PIWtXyqAhTp", "value": "6alkZC6RtSH181Lw"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
eval_tap 0 20 'PublicGetUserNamespaceSlots # SKIP deprecated' test.out

#- 21 PublicCreateUserNamespaceSlot
eval_tap 0 21 'PublicCreateUserNamespaceSlot # SKIP deprecated' test.out

#- 22 PublicGetSlotData
eval_tap 0 22 'PublicGetSlotData # SKIP deprecated' test.out

#- 23 PublicUpdateUserNamespaceSlot
eval_tap 0 23 'PublicUpdateUserNamespaceSlot # SKIP deprecated' test.out

#- 24 PublicDeleteUserNamespaceSlot
eval_tap 0 24 'PublicDeleteUserNamespaceSlot # SKIP deprecated' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
eval_tap 0 25 'PublicUpdateUserNamespaceSlotMetadata # SKIP deprecated' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '3' \
    --statCodes 'vKT6GIeE9IkuZOYj' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'uGML1NOX2gErE4sp' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '6' \
    --name '2VJocnrL4gdCKDlu' \
    --offset '81' \
    --sortBy 'hOMwNVEZMurJK4vL' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "x4XoUiAxNUqqLLI3", "end": "1985-06-13T00:00:00Z", "name": "L38ezXc3uTv1O6dc", "resetDate": 69, "resetDay": 2, "resetMonth": 73, "resetTime": "Kggud55wcnejHWiU", "seasonPeriod": 39, "start": "1976-05-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["nT1ksTCk3pSUvqZU", "f6p3tap14obHOR7D", "sAraSGSC2MREHLM4"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 ExportStatCycle
samples/cli/sample-apps Social exportStatCycle \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ExportStatCycle' test.out

#- 32 ImportStatCycle
samples/cli/sample-apps Social importStatCycle \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'Ds0w5MxAbrqkKTfp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'UA6GBeHrHdp1NSXV' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "0otYlStPk1mI47bG", "end": "1971-10-22T00:00:00Z", "name": "xRpplbYBVsDcLwvL", "resetDate": 19, "resetDay": 77, "resetMonth": 85, "resetTime": "b8bl0icNz3Ekm05S", "seasonPeriod": 28, "start": "1980-12-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'InGqNgPG6TcKNn16' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'nTwnNRgqI0e9pBxi' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["YGwd6TNAtWCFP1F1", "5aa72cQJSjQO5APx", "doHFJquVmbhCkZbY"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'kaBVrUrptbj4Btyk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'z0xH9YKkuaaXftWF' \
    --userIds 'ka9cKhhUYw7STxXw' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6527446792827641, "statCode": "85Nd8QfHERF4RAhp", "userId": "dxBKVY9BFIOaHjXW"}, {"inc": 0.4456172787939723, "statCode": "474ZKFWL6pjl1xZo", "userId": "KagyoOqfmGdl5XRe"}, {"inc": 0.7039949145372603, "statCode": "5l5dZEf0DDt68nCH", "userId": "Hfk13yIRQXQ6ra0d"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.983701641639179, "statCode": "E6ylHi4GFyLx6R6Q", "userId": "02kSEwHzBIG6gDC1"}, {"inc": 0.016999153146555868, "statCode": "bxWcdAglw0UzDXjq", "userId": "M2TucQLkE3CDSkoZ"}, {"inc": 0.7360690869865931, "statCode": "NSrhM10bvEFkUtVS", "userId": "aQcrHPnqzgpE59gt"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'phaFPE7X5PPMYVjb' \
    --userIds '["vUaui2Xl2ErGEgPs", "PaNzvOS7wFMoUeVZ", "fJhp2ERmmc3zbpo6"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "9zhrNYIDdTvmMlMv", "userId": "1oLkT5TuyE7pKJxT"}, {"statCode": "GNRadLC8CnXbcmk8", "userId": "EXG8Dos5JWbBT4qF"}, {"statCode": "bfz7ZnK0EcuRcWqc", "userId": "zYQhMdmlgU4lX5ul"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'kUnTyBvcNTx1qTbE' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '13' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["KONM1Xn4xxlte15D", "v0B6WdgwD841fsGm", "hz6hDO3X9iiD6Ahe"], "defaultValue": 0.5964650039387904, "description": "y35DREYfjuLQbfIj", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.8601349783229432, "minimum": 0.35267183928759915, "name": "MhhvSrEjsEI9Vmsa", "setAsGlobal": false, "setBy": "SERVER", "statCode": "NyGvFMgBsRRV4KHU", "tags": ["sTlfDxLRVPHpkzjY", "zutw5dCDWi7zAJJH", "o0jfa6fRRsznv5QR"]}' \
    > test.out 2>&1
eval_tap $? 44 'CreateStat' test.out

#- 45 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'ExportStats' test.out

#- 46 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 46 'ImportStats' test.out

#- 47 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '20' \
    --offset '0' \
    --keyword 'bG4XMA0HTe7mEOap' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'RUh5RtXTOHPUuZ2s' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'xMBK7mayQuwND9Wj' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Nc3XJrF6Yqkn4mEe' \
    --body '{"cycleIds": ["mUWGkRUKDqJC3lxC", "phC1ee028oMEirXN", "auxfFyYoEn6NGI7j"], "defaultValue": 0.6537623265802084, "description": "Bi08uHgjwnhZKfR8", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "wVCSUbhzfAYgdYSw", "tags": ["2x9mVR4kJveY1BCU", "jynGKjUPRfGuXMEK", "0R8GXa52YvoAAE4H"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'VV1fZN2GwYGxk1fM' \
    --limit '36' \
    --offset '68' \
    --sortBy 'EK9eDox2ooDL9QZs' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'knlbdTJPlFs27C8z' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'RxYopWcYnJ11R2ka' \
    --namespace $AB_NAMESPACE \
    --userId 'gkmIl1folu0XFdbS' \
    --isPublic 'true' \
    --limit '94' \
    --offset '88' \
    --sortBy 'lAnwTGQNZdHUSGHd' \
    --statCodes 'bHo6lQDo7KrgAsas' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'PIsxyFw0dRuDigDs' \
    --isPublic 'true' \
    --limit '88' \
    --offset '42' \
    --sortBy 'Uphuocu0lF3ZPN0u' \
    --statCodes 'jfyq1231TCjAzZw6' \
    --tags 'shAWHH4WSCtnDlSp' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'E7foy1oPgngu6dZd' \
    --body '[{"statCode": "8apTjUo4Z05ug6BR"}, {"statCode": "FimTyx5qMGUUafbL"}, {"statCode": "atL3hJWo7LOKJyQc"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'L6T2mYHeTXJiGK0C' \
    --body '[{"inc": 0.6783043117656787, "statCode": "2JR4SR95jFDfYN6w"}, {"inc": 0.41387346108387013, "statCode": "6BZ13WTVzlngTraJ"}, {"inc": 0.7854182402901373, "statCode": "RaZBSty2CVDgFT6V"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'vHKmUSJvqoVQsJlu' \
    --body '[{"inc": 0.1734629332899148, "statCode": "w9gRYXLPIGcjVOWd"}, {"inc": 0.24852034206954965, "statCode": "nHVMnAkOGhhZlrHc"}, {"inc": 0.9054036910811599, "statCode": "2SWMjyA2SrNk7hV6"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '1qKlP1RO81uKSMjk' \
    --body '[{"statCode": "md4sU30f5A9M3JWz"}, {"statCode": "cBy7kfyNPBwmrHSl"}, {"statCode": "heBU6yAqGs3wRhn5"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '31ViMzUGykBMR87z' \
    --userId '8AjPDF2uQlAqQpEB' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '1zbkMUKEYwWIzkgZ' \
    --userId 'rBxLGK8tcjn8MkJp' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'TioXu7C208snMAmS' \
    --userId 'jdv4LCz8I2i07SSI' \
    --body '{"inc": 0.2979613125368292}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'gZb9stfKW0a0vF2Q' \
    --userId '2W59zl01QA19CsTC' \
    --additionalKey 'kx9os9GlfEuRvBuA' \
    --body '{"additionalData": {"RD27kriq2ljQx193": {}, "y9nkhJukxr4pqM1j": {}, "jXxy62aY7EFMPBBd": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '77' \
    --statCodes 'sWudS7nEjqxymLXb' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'luYYxXusiWTLYckU' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '72' \
    --name 'yGup5vJE4yjN8lsM' \
    --offset '92' \
    --sortBy '9EARtg3xnKeGZ46q' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["ct8gVgcC8tjfd6ub", "lYPtyrZbvtEMxVig", "xDvOqWBqulBc2dIg"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'ysCeiCHW5VfzS3HK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '3jPQOP1f0zKUFpm5' \
    --userIds 'IaXvM0aFd5PcUgGC' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.15418039192181032, "statCode": "KiPIKuh9U45QKJc1", "userId": "xvdBXHJp6pUMlP1V"}, {"inc": 0.10728045071030723, "statCode": "t8SLwtc25fQ4xgum", "userId": "BaiUvx4xJFzQqoDZ"}, {"inc": 0.3630055601150123, "statCode": "Gk9MBPYb4WehSzWE", "userId": "y5ma3FGqltSYkQpa"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7479454452385997, "statCode": "JsZ61NnC5wGGcKbd", "userId": "D6fbD8OZYRyzsFae"}, {"inc": 0.18722337703081426, "statCode": "qOUv41QrgzxYlMne", "userId": "OSar2f7IwpkoydzS"}, {"inc": 0.8047168441704393, "statCode": "HVv9xmxwVFwcAph8", "userId": "H4FbrGu6NN0eoujG"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "4K30cbohaggvnuHR", "userId": "vLHEk1M0aE1aKoby"}, {"statCode": "K0ugtheJIJcJvJga", "userId": "hf5GVzB94OX7cIQT"}, {"statCode": "FEpMTiUg5nwb50gK", "userId": "IV3WAcyuvsMxhVZj"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["zQCOtu50hGvfx1EW", "OgWmEn5DHqT9xPJs", "ozou5SXqraEhlHGf"], "defaultValue": 0.8982379145311179, "description": "Q95V5G9ZmUentt0X", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.4284932598151526, "minimum": 0.8581260864352999, "name": "v6CCXS31THiqIeuF", "setAsGlobal": false, "setBy": "SERVER", "statCode": "vzEoeZo9JLoZFF9t", "tags": ["wBxlnWdL2sCkktDR", "pwf6RkyxGJ5RaCts", "IiR9MPkUFcruTv8h"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '15yAsubuwfRkCcci' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '38' \
    --sortBy 'YjUOk2p5nZBKR97i' \
    --statCodes '["tBTojcV53cZyViEB", "IksceIY1bRGRUeNu", "QKzDD0iKcLY8MeBT"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '75' \
    --sortBy 'A3lAoA9zExDybrg2' \
    --statCodes '["756pinQSScf0vHLJ", "9dFKNmF1ljMJZa0K", "VOOfUiOe7wsAkCdZ"]' \
    --tags '["XYe9bXS3eqvyYo3S", "Ffk9804mvAV4jhml", "1HtkokPhVxUVwNkG"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '8cd3CypdNJjIZDAu' \
    --statCodes '["rp6H8wtMVDU4Kf6V", "VS0hDAlgVajthjeX", "93jL1FoKbvaaTYhh"]' \
    --tags '["UW01yKBwsFSZ8Mpe", "rLB1A8ZamHvkKjJj", "e5lqbEuHuqBki4j3"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'ZSLEPkbYMrqjKQZ0' \
    --namespace $AB_NAMESPACE \
    --userId 'UzyvsGsvsTbLu2Pc' \
    --limit '10' \
    --offset '36' \
    --sortBy '0Borhr7eKfPgt0ve' \
    --statCodes 'XHVFDIs2uKuWyp7b' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'pyWaUZBR1LpPkAmN' \
    --limit '87' \
    --offset '25' \
    --sortBy 'EBXVOwKAvolYUddW' \
    --statCodes '875L1l2c3XYHCW9o' \
    --tags 'VfUIPM4OqKJZF9Rv' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'cugYY9LzH8UJ9a9c' \
    --body '[{"statCode": "6QylaZI3pRsYJqJy"}, {"statCode": "Kb5xceKTuz6ZQkMI"}, {"statCode": "SFjWEOs5yKwifyzS"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'pycy1FjLWwA0NnN5' \
    --additionalKey 'xgGL2OOJgjcc3GFa' \
    --statCodes '["uCIDza5OXcuO5HfV", "CQD9TSKVVqua72JF", "LfvcWaR6Mjuh0K0Q"]' \
    --tags '["LZGXfPQcFoYzCWot", "E6Jrgc95NJWJRHDu", "SCwdzzxrn5PjIBLT"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'vaSCpHhic6RwqdDx' \
    --body '[{"inc": 0.9644878483021612, "statCode": "PR2W45B183IDwbK6"}, {"inc": 0.3109317932033717, "statCode": "xcQrWfxozfMz2oET"}, {"inc": 0.16524477217328037, "statCode": "iyeHVRD3fwTxaOfG"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'DYW2g31AjWvtZrqg' \
    --body '[{"inc": 0.9966201323050211, "statCode": "LDkdcyFUyNKinzFh"}, {"inc": 0.4358751106896248, "statCode": "xvuAL2XS1PFK2Mw4"}, {"inc": 0.8179337846388897, "statCode": "vUib52fZtAkFe7Iv"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'DnzRHJgDj1d4PARM' \
    --body '[{"statCode": "1TMBCUp6VfDwmn3P"}, {"statCode": "4ZmnqSc9qCQApqFD"}, {"statCode": "KlgtYH6tYOq0y4Am"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'hhNlDX642zuce8iD' \
    --userId 'XOeY80HNEYVF1FSC' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'fUdbbOgn5fjru6ZF' \
    --userId 'T3zIlkcCBHnZfD8U' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'iNLOYRltMh1Fl7R9' \
    --userId '1OL02f7sAwJQDTvo' \
    --body '{"inc": 0.16148610334293467}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'OfxTi5YKnOFLI3JF' \
    --userId 'EX6Rsk5TG8xvXDqz' \
    --body '{"inc": 0.03416750790762768}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'zhp8nG3SkixCK0JT' \
    --userId 'odPnkTmiJjnU9MPo' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"UVmar4HVBfoivjSO": {}, "yI69gtgB5HLYTx0x": {}, "zx0CtTa2z7DqtDOT": {}}, "additionalKey": "QlFMbOdX3xbfDlqP", "statCode": "2D4oPM16kx8Tx0aj", "updateStrategy": "INCREMENT", "userId": "bzbJZkFDjkBtoXzG", "value": 0.9967163881313834}, {"additionalData": {"vTmofDKt6pIp93H9": {}, "sn9zQQ6JwaEHr9Jc": {}, "T4ORfREE9J7rO2Lo": {}}, "additionalKey": "Wwm5FdSi1YyoNZcN", "statCode": "8IDjHjouSiADXfJP", "updateStrategy": "INCREMENT", "userId": "ShGh96wTd9szXoQ8", "value": 0.8448296261717577}, {"additionalData": {"LD0xQWrU1tDdKe99": {}, "xJVuq2B38HuzTJ3m": {}, "xLsYNVZ2N19iKZW9": {}}, "additionalKey": "nfmUmyoXHWfanpFt", "statCode": "FcTQGpp0EC9Sxpiu", "updateStrategy": "INCREMENT", "userId": "3f5e8E2VVApauLST", "value": 0.2568871289383883}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'J33X9ewv6I052YIn' \
    --statCode 'pUVmsq7NIYOZTrek' \
    --userIds '["VSnzf4NcqhWX8ckY", "JnXGrXsydFKT2mx5", "diNaf0mheqUg4l7t"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wwq6va5CWAxvxON9' \
    --additionalKey 'qObnWTqwxDsSxzrF' \
    --statCodes '["hFqfDTgArjsN8cXc", "AYTx9ClKrEbo77mu", "YJSkUXGnu3ecA6bk"]' \
    --tags '["jzXATLPhfhPSGm7z", "vBoHuKqsCc6QFjx1", "9b8bdCVEnwAOlwKQ"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'WsPfeXpAMFF1uuFj' \
    --additionalKey 'w3TtiE6MThTowqk2' \
    --body '[{"additionalData": {"WaDjI10owm9HlQD3": {}, "dbB7OGEaH87PUgao": {}, "jLRY9Z4BaWBLr4cf": {}}, "statCode": "DB4Mhp07JOJx0a2L", "updateStrategy": "OVERRIDE", "value": 0.7798532005403902}, {"additionalData": {"jjufb0C9HhDINX4B": {}, "NoVeJVx3I1TEhm9w": {}, "D1DckhqVsIhhVN7K": {}}, "statCode": "XCpTNvvYucJ8eGwe", "updateStrategy": "OVERRIDE", "value": 0.22213907895688845}, {"additionalData": {"H2ohNTvqxD1zlcjY": {}, "YLjIr6IJgobYVudZ": {}, "TFzsUgFOKxWHYcxH": {}}, "statCode": "duKbNxutNt2lWUHS", "updateStrategy": "OVERRIDE", "value": 0.5314206605302845}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'jx4GQlf5bHiPuB0i' \
    --additionalKey '3DDRq3k7UWd8pJIZ' \
    --body '[{"additionalData": {"Uo7fvEUp9dpDGm6c": {}, "CEJjAsyyBwWSdCmg": {}, "Jyat4NnCjvAam1AI": {}}, "statCode": "4i3TSkXfwiLmYm4V"}, {"additionalData": {"3NECGtfGHST9h35m": {}, "DHLGqo4qRQyiTL9c": {}, "XXqSxJQJMW9ZZHic": {}}, "statCode": "EFj6AxkxKovItNEo"}, {"additionalData": {"z9p5gPqlVh6Ip6Cj": {}, "8am86Yb74Vkp8z8B": {}, "QVyQliCQsTi8hMQG": {}}, "statCode": "u8zGkedTlgPKiJYA"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'DLjCAifShRB81TxO' \
    --userId 'VMCT8Uo6aTlwqRGa' \
    --additionalKey 'IMQ6GB60REIp2rot' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'H4EKOn4UWWqbmFD2' \
    --userId 'lWlvrR9753kjp04w' \
    --additionalKey 'xC5dLx0ZvkKSGyi8' \
    --body '{"additionalData": {"tJET9zStrJiLiZJR": {}, "OiyE69HI1j5XJzcK": {}, "jjdxG0cSkAMDwcnf": {}}, "updateStrategy": "INCREMENT", "value": 0.6188279896801389}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"mLroBS21t69GImHi": {}, "2nUnWaVvpvxu1r6g": {}, "YD4s9o9A33FVI8ml": {}}, "additionalKey": "a1gSd2HAQ2BbSp4A", "statCode": "y6MfrrR6hsjp6Zjk", "updateStrategy": "OVERRIDE", "userId": "QwyTRzFJtkENSnpi", "value": 0.416037292687629}, {"additionalData": {"LKnsvJxDLhe8DsYO": {}, "bSxOGAiclQqCatql": {}, "xn9baa9hEKKOjfjV": {}}, "additionalKey": "lukOtzaEPRNu27OP", "statCode": "Gbj1KcY3cnup58EF", "updateStrategy": "OVERRIDE", "userId": "U3fmDWlWBOsWWElA", "value": 0.001389341275343181}, {"additionalData": {"HXB65trTxnd1IeP3": {}, "WAhWPzazulphuXYg": {}, "FxHhUw9vHkkKYxpI": {}}, "additionalKey": "teBEwa6OzOFDlvVP", "statCode": "Ry3gLK8TK8h9ybWE", "updateStrategy": "MAX", "userId": "DrddlFu1YySU5ump", "value": 0.11792907050500467}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'MTwVPTGHSEv1Mp3N' \
    --additionalKey 'MgNopJveMLsMl1jF' \
    --statCodes '["AXmIAm6ByCwIPA4Q", "UapMK9kJMlic0BWP", "sivU6iQazyFmpLlo"]' \
    --tags '["3H9dSMD3zv5M4h0E", "JYahoC7Hj5MB53Xb", "sS63TQo9CXurlbGK"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'tXmqLIBX3ODK6vZA' \
    --additionalKey '4QQaVX6F3NiavHDa' \
    --body '[{"additionalData": {"6uRCWWZFX2rmcZk5": {}, "L6IHignW5fFbETU1": {}, "lNWZexXlAmEvKx3Y": {}}, "statCode": "qy2m4FUXcNiwt8wM", "updateStrategy": "INCREMENT", "value": 0.9111730150228773}, {"additionalData": {"uU8Q6UvQHcPTL2Ol": {}, "tBebAkZTo3XSqNP5": {}, "SrRoeqweH9VaR672": {}}, "statCode": "QmJQVxf8xEJMMVMt", "updateStrategy": "MIN", "value": 0.24340219379215833}, {"additionalData": {"X8feH3f50CErdoCa": {}, "w9Ml2xbO9P1hqnGs": {}, "vpGd8tfllqMi7I67": {}}, "statCode": "cVCzeilPaBz3jsPH", "updateStrategy": "MIN", "value": 0.9487588595828149}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'YXJt84zLrRjQLYEH' \
    --userId 'xjXimAeqhFTm1eIC' \
    --additionalKey '9YlAqVEXTzPHXsGr' \
    --body '{"additionalData": {"G208ISQLeNz3NaDA": {}, "qRBIC5XOU2LOHBkQ": {}, "kcghNr7ZLUEcD1SB": {}}, "updateStrategy": "INCREMENT", "value": 0.43373935636313876}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE