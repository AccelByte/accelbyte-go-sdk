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
    --userId 'MkIJytYuFyfJAzsB' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'copnUgjLlTs1bpsM' \
    --userId 'JOy5lITAcewa9Dfm' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["RaBtloTz8EGpfFLz", "TsyX5bMtdMYIuXTX", "ADoeBt1Pwbzi7SIC"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'q35eVYEqaqN8wsXH' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'aLFJKoWXanygrJ2Q' \
    --body '{"achievements": ["oz5keld8UajRjg3T", "VOMXZkx4FGgYZ6Ae", "z9z0HUfPxXZriF2P"], "attributes": {"69QL3ng2wj2RBB3d": "frlvysvnWTEjE6qD", "e4A6oM6Ba6w6trkM": "zy5Bsh8YxuoGtShC", "EkzuwCNYwkLpLyhF": "TAkj7WHlLvpTOysu"}, "avatarUrl": "mwzVumYvz5cMJVeF", "inventories": ["iBItlfjMUVAlvQZv", "fzY35iuFi21LyWuL", "mljZrIkIN7jeB3H5"], "label": "quWqujBvEgNYxx8J", "profileName": "uVINBMrjKiTL9v0P", "statistics": ["CExFf47MTNHGcL2r", "iPqbo143BRBQuqmI", "U2R4JVmEQJGe6XYX"], "tags": ["p3yWxS4WZLAgiiep", "1gvL4n92mWog0ZCC", "SEOgOyLF6SNTnRvT"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'GLqLV4rlwsBZtGqX' \
    --userId 'zIi4kG54pF6lT0tX' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'JZ0HxrPKWwymsoNT' \
    --userId '8NyDTsxOEBhVimLM' \
    --body '{"achievements": ["9Rtd0Harpaz46Q1l", "0VT4nCbQvCpdgNZT", "dYFH6ZxClr3LXoYk"], "attributes": {"Go17zK1ooonmZkrb": "k3ayxtmWF7emjV8e", "TpphQTtklBl5NeYC": "Nn5vFm4mMxSYFhj9", "9fB8F8LSFIIgSyZo": "AKuHPTv7eXgBurDj"}, "avatarUrl": "OYIUmqEf4Hm22g5D", "inventories": ["Gv3faoi3xIM2cdjr", "6CHWwDe97nXceptS", "hngkAy2gSTFkeuKj"], "label": "hgVPa2uLYpG2Ghnn", "profileName": "rb0ZHJeTNzS3XaUH", "statistics": ["4VJTsT08Pdi1LT5v", "7rWZwKJGnyeji4Bj", "NEQtTs32doWjlTAQ"], "tags": ["VfPwhFTSisF2Yld6", "VlUWRH8PQAgghcnH", "nEwM8tI6RGS3v09M"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'zbGv2YWUagtBxT8U' \
    --userId 'TJbP7MW87MqPw3Xa' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '103ETjbWvDiuWN1u' \
    --namespace $AB_NAMESPACE \
    --profileId 'EDC4wMDY1FB4f8vZ' \
    --userId 'cGipXkixSSktr961' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'tHCGcmD9yxH9IdwW' \
    --namespace $AB_NAMESPACE \
    --profileId 'i0mIhEXgepyg6H8G' \
    --userId 'rChYmPWoajVdB1np' \
    --body '{"name": "2EKyhHiYJbx2GOKN", "value": "SiDrPV1OiTtHA1Hx"}' \
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
    --limit '8' \
    --offset '7' \
    --statCodes 'mq3mw5V8QWZdfuEY' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'MTVvZ06GD8xpXMu1' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '5' \
    --name 'CTFdGvwQquyxj2yY' \
    --offset '32' \
    --sortBy 'rN77w4pJM3OyGN2q' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "g68FrghpZYPkl36N", "end": "1989-12-10T00:00:00Z", "name": "bJhIVArqcci6a6NM", "resetDate": 69, "resetDay": 46, "resetMonth": 14, "resetTime": "pI5gyJWNbrTakptB", "seasonPeriod": 38, "start": "1984-06-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["m1vW8n97xNnt5OBA", "3ekDPYH3BslZd905", "PbK1a1BAztIrEW8v"]}' \
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
    --cycleId 'teQogKUIATFmjeCY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'XF5OLt8Y3SPE1P1C' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "fDKmSBZm70lcifYk", "end": "1985-08-02T00:00:00Z", "name": "1T6LTr8mIwpAnYub", "resetDate": 98, "resetDay": 97, "resetMonth": 18, "resetTime": "XwqtCugPdGQqdmnD", "seasonPeriod": 17, "start": "1986-03-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'aQwsrNV8UohTdVl5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'G1QsTLGEe7maeO8j' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["j8Zd9hK68mWpV5C6", "ViLRGJziHbEd1Gu0", "x8MBbzr6hQgJyJhM"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'XblbQUVLN5zMach9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'w1htqh5T86yn7FlU' \
    --userIds 'KPjrD4k8IrYLU7cw' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5794870547423705, "statCode": "nV9VHusMz8huHvFt", "userId": "c8Af10Nf33YvY7jm"}, {"inc": 0.6631360091305297, "statCode": "8PE2tHHuIcb3lCvt", "userId": "330xxFYHcxAfSlaV"}, {"inc": 0.9381146984027474, "statCode": "P2QiYLYa9daSNHcu", "userId": "MO0uNKazNaILqmjQ"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7555853669753563, "statCode": "OzaiAngGpx0BAAQE", "userId": "81WsJrFH3IbA8Lfi"}, {"inc": 0.2017486158305284, "statCode": "RsS09iMfmPyMKgcn", "userId": "a3u653BktBVDkqfW"}, {"inc": 0.5867546304353939, "statCode": "hzEG7u3vkIVxuPhi", "userId": "h4TwZ2fkB07J9YSL"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '7yrAyRByGCehNKcc' \
    --userIds '["ErODI4PgsuIUT5g6", "Go5wPD3c48ejYe17", "sIiYikakPxOb9b2t"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "hHxl2E2KXe40xLE7", "userId": "WDKEilCobarvGh1P"}, {"statCode": "b9r80cfL2UlFNAv8", "userId": "VVBt19S6epPUHct2"}, {"statCode": "mZiPIGrZlMSZKcgT", "userId": "AihlXsnWrUUwjiAd"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'KTiQVAS5MBA6Fme4' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '61' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["tPoMFVbW9qDqCNxJ", "wG8Zunlw135HZRv2", "yoDQBTyRstiANhLD"], "defaultValue": 0.7229325129138855, "description": "haDxs9KWzVOFvEnP", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.5140153056446447, "minimum": 0.3409789470700628, "name": "RfLnauYi5pOo0UCY", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "VZGMfFQxPe1QMZIR", "tags": ["Yb1wwYGpwK1KA1Rl", "Heroppqadsh55FFM", "kkRqIFjFKciqXcpX"]}' \
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
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '22' \
    --offset '3' \
    --keyword 'c6C9ccpnfSXewH9p' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'vBbPXzABn49FXvT6' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'DOeOxL43Tw81hN23' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'XVmdgVzJ0LbcsWUi' \
    --body '{"cycleIds": ["hlWt29dr1KiKJNRE", "uiiIV407lLSS2cMO", "bg9fErQnFLwQihZO"], "defaultValue": 0.47673157819984147, "description": "lo60pPgzoiBXF5cj", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "hGjJJQlJEp2gX7wD", "tags": ["Wpcp1sEoi2mnpPkw", "au0yjTfEsS8jfaag", "Nbxh9jlZsscNCOvb"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'wagtTfbtsN6tLeyv' \
    --limit '33' \
    --offset '67' \
    --sortBy '82Rz367ib1Slemlg' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '5fD3mjJPgBh6unWj' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'ScVZYdvE4QiQJQfb' \
    --namespace $AB_NAMESPACE \
    --userId 'FPDjBT0x4Y3wco5a' \
    --isPublic 'false' \
    --limit '19' \
    --offset '50' \
    --sortBy '6fVxlFR8YKAJfnhN' \
    --statCodes 'RVi0JTuSUmh0ps7D' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Gd7CnjpO3zJDKiHP' \
    --isPublic 'false' \
    --limit '4' \
    --offset '26' \
    --sortBy 'YyvldL93wUCodkiu' \
    --statCodes 'uBUwqFczIV57PSyG' \
    --tags '3p83O9rfAn5uspmr' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Ec0HkloymSJ263sT' \
    --body '[{"statCode": "uaEHV6XqMehiU7iz"}, {"statCode": "yArwRjNFq2bQlgoD"}, {"statCode": "tAJupxs9lQgCGqhC"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'MMrS2w1LyDRkHVSh' \
    --body '[{"inc": 0.37954659423792914, "statCode": "5su1slwA1Si4P4uB"}, {"inc": 0.39466641043926476, "statCode": "AQX04XeHCmfJdyZ1"}, {"inc": 0.04169273224373371, "statCode": "HMjhkTSUv1gRDZbS"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'YERkkZrGxHrYKktH' \
    --body '[{"inc": 0.08308092503686071, "statCode": "CMEeosARfmCxH6n2"}, {"inc": 0.3033247562530218, "statCode": "si0gA0LGxOgW3yYp"}, {"inc": 0.7926059039275234, "statCode": "soXA66Rvk82VcDhP"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'RC3YJlkQ8HaQYhd6' \
    --body '[{"statCode": "CAalcIbVoDKrAjZG"}, {"statCode": "cPNFFVObEWIQvTJa"}, {"statCode": "UGTNVHxjNzUH1uE6"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'YdzTVVzzTAdzN032' \
    --userId 'buTaiVEeLgP4QZkE' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'm2kYB6fgqHqqvB7t' \
    --userId 'Ft67ON7IM4agWKcF' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'bwwJ2cBxIwMDUbN6' \
    --userId 'wEeUkjhL5AMc2zwt' \
    --body '{"inc": 0.6094215290034489}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'EhlQ8rHx1yENfqsI' \
    --userId '6aG1OACjmGJ6YO2Z' \
    --additionalKey '2y9PEGEMBCEHxpTQ' \
    --body '{"additionalData": {"SE68YRbKJjICmPU0": {}, "EGxMN2LNgc126HpI": {}, "9nXAJdNkmFwYlStK": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '34' \
    --statCodes 'WVI9HutWFjILLEk5' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '4lntN8DBrekAo2cp' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '77' \
    --name 'oPUc5xTHi22XjWsS' \
    --offset '10' \
    --sortBy 'pDwTch8JhsDZaPEZ' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["IBKQJmkwMhrY6Xqe", "pdPSCo9N6chU5MQe", "XlMx1EbSaXssmSK4"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'I75ary2OQOIYgKNk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'zGly9c1Du0aw4YAg' \
    --userIds 'DfimpDsAGiG1IQ66' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5386056234326049, "statCode": "fuGth2uZbwy4zAz4", "userId": "uo23gqVcmBjTRs8M"}, {"inc": 0.7928930673446363, "statCode": "3ICTvSQtwL2WzfHJ", "userId": "rqCMrOpNURRQWw4e"}, {"inc": 0.6390237617767829, "statCode": "h8PrrR5wzEXA9CIF", "userId": "kCICSaWVpX5oGKdw"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9289966599005244, "statCode": "OqbTsebe2Kc7mfEK", "userId": "xnfI8qfSabb3sYti"}, {"inc": 0.49788786946302355, "statCode": "B7S3u9pje4RYmozA", "userId": "yTZGZgeNqqNB2DEk"}, {"inc": 0.14101262652342683, "statCode": "3n4Yr3evH8asJmyw", "userId": "5gzbF7Ny2mRHlaHr"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "428j9XasVFC2Hu0B", "userId": "hVF1wyt6I8VS34z7"}, {"statCode": "OpNNKsmRzoQp8hTV", "userId": "jlm3VJ1tk9xnJr1h"}, {"statCode": "dRyu0PgDGUEISmJT", "userId": "Hb5ZpRPh2TKce8kX"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["WxfSQAhvD0BegKS3", "Zuq9il3rRKvj1Jox", "ew58QtdgOwSy0D1N"], "defaultValue": 0.759302113409156, "description": "FVsJ84vRPmu4DS4Z", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.04443289514857107, "minimum": 0.17874794555613815, "name": "tbEbOFtrNBdZMk45", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "GmCveUotzO99OHDZ", "tags": ["cbOqCObbAMHn3KPP", "BTI7nhwJFXtbfExz", "L0UMcoUy6ZI1UPzT"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'FlsQotTu30ha4sXW' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '49' \
    --sortBy 'sY4r1b1dGeCDIiEx' \
    --statCodes '["1gYEhf67Im87jPHC", "u2lffp9a2zQVz9IU", "ZqLCGD7vSduuWIbx"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '52' \
    --sortBy 'SYhctOLxwsj1Qx47' \
    --statCodes '["66hKvoo6yIjmlG0c", "Wx30aUIo1o27tTdX", "GFnMD09xQynuUUTR"]' \
    --tags '["vTAt7RSTVN1hl6n3", "aAn97FS8sjrlbOe4", "MBO3t0Npi4AiXihT"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'OWk5DSDJKrJTrkkI' \
    --statCodes '["2cyzBU9wQYgmm1TD", "saWaHfEW31NIZwTQ", "KCXCqOQZlzJV0jmI"]' \
    --tags '["ptj02RknP49IRMjd", "OAxQxSVZldv34wzw", "mZ5BOjhL7LfDgHxd"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'mQJy5vjHpoLIi6zs' \
    --namespace $AB_NAMESPACE \
    --userId '31B2ww9H3AGzXIzk' \
    --limit '32' \
    --offset '50' \
    --sortBy 'ws3KpBemU7SlbiZS' \
    --statCodes 'DQyFyzabtwiLpNND' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'oT1Kfu111DTkkhhX' \
    --limit '75' \
    --offset '83' \
    --sortBy 'dgNRwp7Gd3b7iTPC' \
    --statCodes 'emOavJfmHgiOhXo5' \
    --tags '9NURl5XO4W7Bicyh' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'LZRvv6F9fgw0F0ff' \
    --body '[{"statCode": "8lmnZmV1EHueyReP"}, {"statCode": "NjEX3jiFXXXk50CC"}, {"statCode": "nU4hYE7lQlIPiVAt"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId '12jTjTFVGwxtqFdb' \
    --additionalKey '0V5tAY6qG8UbYzQr' \
    --statCodes '["oiPzYogkuOgOfdhz", "Z9cLB5myw7KewHR2", "2QAX6REddj5F7MXp"]' \
    --tags '["6f4wyqtCgu8crLLY", "8tCv3QHZssnecgom", "0JgAgQreUoptPuPX"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ghe8TQjTM20v4xcx' \
    --body '[{"inc": 0.9996464392344805, "statCode": "d6k3oNTwbXCFSRiF"}, {"inc": 0.6292602140907431, "statCode": "uvJAvOynq4kRt65H"}, {"inc": 0.5330716074128744, "statCode": "aWlZADBeOsVYuNi4"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'zV4bMvkikNaBqUP6' \
    --body '[{"inc": 0.8834893985845631, "statCode": "lOzEF85ukGhZfwue"}, {"inc": 0.18490349132678485, "statCode": "Y0Dw6dmwvotIemCE"}, {"inc": 0.47778918369760004, "statCode": "Q9QGfSUNPnS6w21M"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZV4ypn8LuG894bp8' \
    --body '[{"statCode": "yZ51ybJV4JJVWHhk"}, {"statCode": "AdXvfIhkWBePPILk"}, {"statCode": "ctJPH8luYHC2dK95"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'EZnLt9Ijq5xQAfoO' \
    --userId 'zA0L6J4YJ5IJI3DC' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'dNMK4PDvh0MqDesa' \
    --userId 'L7HCtm0wnWLEA8nK' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'FEynrEOzIVFsvfOB' \
    --userId 'HyLvDFS9xAMVDMud' \
    --body '{"inc": 0.638104472331657}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'DOpu2ZfBfzoQ4QcK' \
    --userId 'WhvGJN9t7bfOo1AW' \
    --body '{"inc": 0.30255867273194037}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '2T9UPzDhP8Y5uwtJ' \
    --userId 'WUVY0Tarviba5rim' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ClYGOy7kwtaazS6r": {}, "84G1gxJTCC4hdlQa": {}, "gOntqQwrmvfp5JW5": {}}, "additionalKey": "ZZzwKcIRPM9e5bBG", "statCode": "aRfURb5TcwfmefOW", "updateStrategy": "MIN", "userId": "DEzUyj6pgsoam4wP", "value": 0.8368812076989443}, {"additionalData": {"ynDcF1WqAAn5WiJR": {}, "Ybbbu7Ejnu01mmmS": {}, "yNS6dRcM0eKrKbHj": {}}, "additionalKey": "UBIPcIC7Qho3Vgtb", "statCode": "mJJrxw1yEy4t5tfi", "updateStrategy": "MIN", "userId": "tIz4V9XWYq37n3Ur", "value": 0.7184137037035735}, {"additionalData": {"9P5LqABSVHb75Bmj": {}, "6SotxBrMrlvxYKPI": {}, "HXIxgPZOqlJoGyjS": {}}, "additionalKey": "r94ma5PrE6NzcySx", "statCode": "TrUUiGQB2pFy6dIt", "updateStrategy": "MIN", "userId": "JY9eSvdj5NIxJEAM", "value": 0.3147073543046771}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'xIMiZIPvkpcn3SPM' \
    --statCode 'LpChr5zsL99zjl8J' \
    --userIds '["jhbFUCr5ipMz5vQA", "nSgk2TyZsmzNVtD9", "VnWHx09gUGsR9izm"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Ltmrt9Jl5KsgygT4' \
    --additionalKey 'Vw8uxCGsRLiuBr0Q' \
    --statCodes '["zA2g5raatLr9WEt0", "zxBD3GAoMZMO8uIp", "fc5CzYsPEzxqClCi"]' \
    --tags '["GOx6AnzcuGXvtjYK", "fLCxBuKfRqo0PcTL", "pRUbjeQcjDBmRZnB"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'YChPbmmpEhViLKTR' \
    --additionalKey 'w2upWQc4bCCtv3HF' \
    --body '[{"additionalData": {"3VfcA79AExSp2nNR": {}, "uJtjGVeC9J4e9Xr7": {}, "DZDG2RdJFcCp8fuT": {}}, "statCode": "JQqVZgUkXKioPl45", "updateStrategy": "MAX", "value": 0.641699602300064}, {"additionalData": {"te0N50FaElRQ9IAM": {}, "RYOGs9KlgyT7L0hf": {}, "kCNJ7oA6zthOWbHL": {}}, "statCode": "eOsdGkjQ2HvjiplL", "updateStrategy": "OVERRIDE", "value": 0.6020403428416748}, {"additionalData": {"sHFVV4HGGgkTthxt": {}, "YbMucSZj157cGxKg": {}, "wJJKJYPmX9LSmJ4T": {}}, "statCode": "Rx7x6BmQW6RFmgWI", "updateStrategy": "MAX", "value": 0.03558661774259042}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'do3xVAzl2gSuj947' \
    --additionalKey '3AZZz0Hi2SUYDhvs' \
    --body '[{"additionalData": {"WAEDktSSFN6O3uxH": {}, "vq4twDsTaXWYpSWH": {}, "yZcmVqai1djGglJK": {}}, "statCode": "SBRflr1ZhLS0ml9Y"}, {"additionalData": {"kVpWdGen6nIeAjiA": {}, "j3gDbMq8GTS1IPoP": {}, "sCVcCV1zP3DjhypN": {}}, "statCode": "ypxc97B7l46lmXXy"}, {"additionalData": {"NJ06Rz7fWBwEBzEU": {}, "mXfJjFTA1YTrkIbk": {}, "DdRDa5Hp31XGRNk2": {}}, "statCode": "IXQdpM0q3brYylAx"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'QDAxE0F91D6X0mHt' \
    --userId 'imFnHIgaAhSUQ5rI' \
    --additionalKey 'bxhnA5pNFgyPWbp3' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'sz2QlurXfZiDO1dZ' \
    --userId 'qnNFlZREFpria4GQ' \
    --additionalKey 'UrmFdKYVtmbPfLJS' \
    --body '{"additionalData": {"tUix3NiRKpEAdesu": {}, "8OilermKCiFSNcx5": {}, "KxonjgY7gs0gyI6Q": {}}, "updateStrategy": "OVERRIDE", "value": 0.3848878999153156}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"0ekvSitgmTrIl1s8": {}, "JrA6GnMymZMKKdGS": {}, "SQGahxVPCDNjJKsG": {}}, "additionalKey": "x5siJr7igBrghrbC", "statCode": "Elsod1gK22ue2Qa9", "updateStrategy": "MIN", "userId": "KkEj77Nk5ONiFkGK", "value": 0.10025560423194724}, {"additionalData": {"iiWbqwgaLpVSHpfz": {}, "uDPpDE0QMdW1H7Oc": {}, "GuwizS6jSXzGPUU5": {}}, "additionalKey": "xYDyeNtqqJtZM9OF", "statCode": "K68mJZC1hb5sogd8", "updateStrategy": "MIN", "userId": "oW29LO5I0GEzeuxE", "value": 0.6006530783081454}, {"additionalData": {"fwAry68R0zIzjpC2": {}, "YRtBqhHKEMSIlvjv": {}, "lgxbpv0bkAeVbdky": {}}, "additionalKey": "qIGWiQpO3iz0U02J", "statCode": "mw0UyQ2p2IRiXpNg", "updateStrategy": "INCREMENT", "userId": "kFHcmeY5TeuIlipv", "value": 0.8675100380821712}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'v7HAFN55LS3RRSF2' \
    --additionalKey 'LDCiRDdSV8Ndf2wq' \
    --statCodes '["TysHwhX3Lb2NwMAy", "HguJNgexwajmwKoy", "QmAkfVUJj7Fa7JzZ"]' \
    --tags '["dp48e4hzaqCN9S6H", "xKyvtrgBXgNe0Poa", "3DtQIJlXSqdLWenW"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'BZqnEcd60xADovRm' \
    --additionalKey 'ARB1LQw5BgGx5lqP' \
    --body '[{"additionalData": {"eWqwBBaOIswt7Hdq": {}, "PhBLQq0pLjbh0RKx": {}, "yNrjHfDzrRRFhCT8": {}}, "statCode": "J9jmzhFG6r62ROFO", "updateStrategy": "MIN", "value": 0.3695221451933376}, {"additionalData": {"G0vR1DaI8EMzK829": {}, "RG25tMqrmklaBuYm": {}, "iknpjTzkZN86JsgP": {}}, "statCode": "Y6sPGUR8NwELoFit", "updateStrategy": "INCREMENT", "value": 0.537558726531341}, {"additionalData": {"ageTL7mt5X8FRILZ": {}, "pIPvwlBX7HYTy8OO": {}, "ahHdptspxVtxIMed": {}}, "statCode": "iePaYK0HyKMiTa21", "updateStrategy": "MAX", "value": 0.5245776994223017}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '4pLUQ6wkvdNBHM92' \
    --userId 'kywJK7QHFxbyXEwk' \
    --additionalKey 'JtqicCZgkeTAy2ee' \
    --body '{"additionalData": {"DOercZQuSiy4xPfk": {}, "bFk458X7DcZHYZSN": {}, "dKWhWGpYOXEQ7TCE": {}}, "updateStrategy": "INCREMENT", "value": 0.641873237000381}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE