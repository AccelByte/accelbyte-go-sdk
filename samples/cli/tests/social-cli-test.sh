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
echo "1..96"

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
    --userId 'LiEK6PsmDQpPfDGF' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'lJsnjprt5gjBRATK' \
    --userId '2LaBBGfrtWwfblbM' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["mciPbn4ALbHaC8bF", "mYrcAXTsO5CV0va9", "d0TvOqtv0nstxb4i"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'GV9JNkPtTW36YxRs' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'g7P4F0TOybAIjUaI' \
    --body '{"achievements": ["9Kga3XK714Z5nyss", "7cj9jkcqacN70tmB", "3UjQlmKIBtjhJZs9"], "attributes": {"xmFW1SZnNTJNZ8UA": "0It2sTH2dgFoLL2O", "DzIvAnPfkDwj5LhG": "SHtZs4m8uLX5zf49", "THcQBetuQFXmSMRd": "7rW9w2XmuoooQfpa"}, "avatarUrl": "B9uGqegKAvOWx95v", "inventories": ["sytOZaUg7XnvLfo6", "5vfQ5Z6DPHN0laeD", "YUi0kuDlsj0vCzLL"], "label": "QyY2sC1GCIrwqRNW", "profileName": "eCZM6Zo3bzz6O8XZ", "statistics": ["VuqItTuMYHekE4Pr", "24sgCeFZyvbQ6diq", "wKKp871hskLAEBXS"], "tags": ["IxMphzxkRW40GfOA", "KiVVPNiGMrHu2cHg", "WWBIfQ3iTkW4tAmr"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'UDBtuwOadWZpWtbn' \
    --userId 'MecZL4b8teZXXThs' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'MqxPXRkx3pe8ubuY' \
    --userId 'ypaXzuT3DJRpGv5R' \
    --body '{"achievements": ["wR0otB44DnxHFG6o", "fmN0gB5mn1fOyJld", "qpePvqvJrwLiBhJT"], "attributes": {"VzAoXELIXg5ODjo7": "AgYtoPw6AOYmcLNp", "r2f3INyJwX7tWE1N": "nGC7UF2QHaDeGgUX", "MXXh158ScrrlY0cm": "ifgAalCODaPE445j"}, "avatarUrl": "k55EuXUG2bq3pn9k", "inventories": ["eDQV7paxHeQyjAZJ", "wb8hGuoXZH1gI671", "uRkcqkS9rOiiMynE"], "label": "t2IfuX40Qde5ngbq", "profileName": "sm91IxoHNEFVmkkp", "statistics": ["35aCGH2rQhIkPDvy", "f9exxsLGkn3LC2lV", "gTRiSFYGH2BEcpVt"], "tags": ["LypREudNiBWfSaoV", "AmheM8uynE99H5mR", "OX90CMrV4SKwka1z"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'jUAY8nLisq7eGtLq' \
    --userId '8xgpsiYz06NHqEc1' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'HK4eyBuuJh2AaZjg' \
    --namespace $AB_NAMESPACE \
    --profileId 'e1zI74p9yMq2r7eV' \
    --userId '4x2eEsuD5h65YD8O' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'E3Qwuvdbo9dxwnFc' \
    --namespace $AB_NAMESPACE \
    --profileId 'Oy3xrayOgFyonTxD' \
    --userId 'x75nYETeDbU3iWbp' \
    --body '{"name": "26fAZx8o3lNBUToI", "value": "6KrihBNmlAlKqBG3"}' \
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
    --limit '7' \
    --offset '75' \
    --statCodes 'm8BBcJF0UIxCiZVH' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '9LZhw5MoIEq5HRaE' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '3' \
    --name 'KGs8ifUfmjYZWydO' \
    --offset '46' \
    --sortBy 'FBS6YcGS5pHacslF' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "G0b4qr5yHBgnR3xt", "end": "1974-11-13T00:00:00Z", "name": "YBNHfkI7RnmMeMaf", "resetDate": 19, "resetDay": 77, "resetMonth": 60, "resetTime": "K4iZAydQjAFfsCb7", "seasonPeriod": 37, "start": "1990-06-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["f38rzZJ1YnvcU9Dp", "6hcd97HEUJDxOY34", "VGOkDlcSTpLSVDrJ"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId '4EcyDTBiwBtRpFJl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'PEdSF8gPKnplyYOU' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "DAtx6EfwqKrIIDmw", "end": "1972-04-08T00:00:00Z", "name": "CEj6ePe4i8REtLsW", "resetDate": 53, "resetDay": 76, "resetMonth": 82, "resetTime": "MaQTzVmuliUzmkRg", "seasonPeriod": 0, "start": "1981-04-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'aruyvibzdxSWIZdG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'VfXgGmnVDaMPz0mi' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["4yVu41mOnx3ax7ar", "Fj0BklMFOpPGbjgT", "dxaforT20ScLCgQ8"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'Wlnl3cw6E5ohgJhU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Ti8epI41ej2LOl6n' \
    --userIds 'iDsiOO7hOn32JKe2' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3605109979668135, "statCode": "Ph3n713TWLBsk7ug", "userId": "HISRlhqBBTNLdGpP"}, {"inc": 0.20677154583247592, "statCode": "8mdSKIIqpabTsovD", "userId": "4oct4KKQyYEKK0iC"}, {"inc": 0.022961193526377044, "statCode": "tdBmOrQC8KGFRbru", "userId": "QXkvQl7S5RFHpgXK"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.1403948689899438, "statCode": "3IIIDk25gpIpVOAY", "userId": "VZIFH9OoE63GFJHG"}, {"inc": 0.5721325554650474, "statCode": "DB4fHWGOCBjGWeKN", "userId": "8tl0oN02UaypOJKw"}, {"inc": 0.031829753511841474, "statCode": "llW5cgRSvJrMxMWu", "userId": "iXWVsHICH42AfOS2"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'X6dOwYWPJ6w66qQi' \
    --userIds '["tDLfZ3EAoPVCfnBp", "18UyacNKZmgDA4fu", "FvQJWUhS6fUzqRjp"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "3xZtxrtxtRpgl7bT", "userId": "BRdkbtUOkwRZBmpk"}, {"statCode": "9nS4RbN6MPpNHuQC", "userId": "xjjjXJ2HONyQ4m9f"}, {"statCode": "ZFIqID38LbsKFpwf", "userId": "o8tKLkZE6MHmojnP"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'wfHuMkKqTQ5g6puT' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '75' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["jp0yb2ZEymCowkNn", "JOsfmZQCkZI7sGSk", "vvMS67jkhrme5CqF"], "defaultValue": 0.8294945984763388, "description": "SHKlX2bwPhNcv114", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.7655958383972619, "minimum": 0.34068456133244074, "name": "cgLKGH8DTw3issKF", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "gU062S5Z2tOjhDLl", "tags": ["jGvVa0vSsbKIXvC8", "uvhUjTVtKwBpaPdS", "KVT5urAjCTEpXGRR"]}' \
    > test.out 2>&1
eval_tap $? 42 'CreateStat' test.out

#- 43 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'ExportStats' test.out

#- 44 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '86' \
    --offset '16' \
    --keyword 'pGMtiUgvyOyksZBC' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kxJlwSpDI83LCmgv' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'MoWlTBcwO1J8L0j5' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ZrfU4Vl6IaCrTQ5F' \
    --body '{"cycleIds": ["jsOJ4Ty47rmzB4hI", "NMLQsviUTYfZ23pU", "LRVFespYqt61LtDb"], "defaultValue": 0.572838411567277, "description": "TpzEjjDCBjLqo924", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "zash5DP39hpG43PG", "tags": ["hjSYoNnLGUrLBIl5", "bH23HSvvoq1Icr7u", "Mt8HVE3g1YY4JncR"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'qIjvtrQ7QbxchsLP' \
    --limit '58' \
    --offset '26' \
    --sortBy '53Ae5BaBe3z2ol2F' \
    > test.out 2>&1
eval_tap $? 49 'GetStatItems' test.out

#- 50 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'YSf96eCyf5Ho0XiT' \
    > test.out 2>&1
eval_tap $? 50 'DeleteTiedStat' test.out

#- 51 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'FnRWLEf0K8bmQRMf' \
    --namespace $AB_NAMESPACE \
    --userId 'twqyUXpIlwZudlqu' \
    --isPublic 'true' \
    --limit '62' \
    --offset '64' \
    --sortBy 'GGK4XqrJBvCaUz2o' \
    --statCodes 'hMDf1638MGSBeoC8' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatCycleItems' test.out

#- 52 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ShqW2TtUzLabveAz' \
    --isPublic 'false' \
    --limit '77' \
    --offset '88' \
    --sortBy 'RCYuktd5eS8s5n3v' \
    --statCodes 'rGardHwSmW6Rj7Ih' \
    --tags 'gZKtYJSyuczxrO1o' \
    > test.out 2>&1
eval_tap $? 52 'GetUserStatItems' test.out

#- 53 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'nZwzGRXQkRBPACKP' \
    --body '[{"statCode": "xxWH6GnTy2lK7uEC"}, {"statCode": "NCJxbzqor9MWkGuW"}, {"statCode": "okoFUZtFbH1TIpgL"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkCreateUserStatItems' test.out

#- 54 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'j6R0lp4q8wzHtqC4' \
    --body '[{"inc": 0.9320251963926152, "statCode": "BD1e22UP1SZIK5sk"}, {"inc": 0.2676659294891548, "statCode": "cSBsfuhfacoUrbn0"}, {"inc": 0.36277211402814147, "statCode": "3vjWlN0x2eQBU6jj"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItem1' test.out

#- 55 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'Xm8HC9EchRdyUwKQ' \
    --body '[{"inc": 0.19775775527460815, "statCode": "Zwk7NTRXsNA25ldz"}, {"inc": 0.48949433184314706, "statCode": "VzTDieRLFdCKIv1D"}, {"inc": 0.7132279210259969, "statCode": "5VG1RBnNxi67DG2k"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkIncUserStatItemValue1' test.out

#- 56 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'pVDjIBoUZuHedWo9' \
    --body '[{"statCode": "0u2XAgoMgZa5CZMS"}, {"statCode": "DcHkV1OV4uTH42s4"}, {"statCode": "NVdCIeuZ8NYnVfug"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem1' test.out

#- 57 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Pu1OcIIOXzDTZkus' \
    --userId 'CX8spUNKo0aH4wVM' \
    > test.out 2>&1
eval_tap $? 57 'CreateUserStatItem' test.out

#- 58 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'OyXLsA4ZK5wrXkF4' \
    --userId 'tVA6vbY7H8tBeDxC' \
    > test.out 2>&1
eval_tap $? 58 'DeleteUserStatItems' test.out

#- 59 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'aFB1Xdf6BBMpGlqU' \
    --userId 'rKziCbU0RDZlYrtO' \
    --body '{"inc": 0.6906603671380646}' \
    > test.out 2>&1
eval_tap $? 59 'IncUserStatItemValue' test.out

#- 60 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'pvzJXWjz4q7M1Rjo' \
    --userId 'f333GlGvNtbLfCNE' \
    --additionalKey 'G8URfj9Cbvq0sca9' \
    --body '{"additionalData": {"9wT1v8ghpl7cHpdb": {}, "Aet3HMW3hifo2zCj": {}, "MO48MLU59DS3ec2C": {}}}' \
    > test.out 2>&1
eval_tap $? 60 'ResetUserStatItemValue' test.out

#- 61 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '98' \
    --statCodes 'rR46oTxaD173zm2u' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItems1' test.out

#- 62 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'zi3YoIHDtjiFqA98' \
    > test.out 2>&1
eval_tap $? 62 'GetGlobalStatItemByStatCode1' test.out

#- 63 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '41' \
    --name 'gKJIx6CbwEkRrvpv' \
    --offset '3' \
    --sortBy 'nONY8gWdX8ruXFlM' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 63 'GetStatCycles1' test.out

#- 64 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Psqe7DxHRZTeSiuO", "LD5httfiO7hNSFIz", "T988B4Bbxd1GmvC5"]}' \
    > test.out 2>&1
eval_tap $? 64 'BulkGetStatCycle1' test.out

#- 65 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'bilPBhrtGPu4CC7d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycle1' test.out

#- 66 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'dBTRaU3iOWCnfjvb' \
    --userIds 'gHqq6NdQKxIxyzih' \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchStatItems1' test.out

#- 67 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5570607328141511, "statCode": "PJKsSrJCNMV3oHya", "userId": "K9s2DfOEZaxaeYk7"}, {"inc": 0.5653194741939213, "statCode": "bIiN1pC8V83WwtXs", "userId": "tYgG2GN08EylT8M1"}, {"inc": 0.5895898187974723, "statCode": "HY9yh5KNYfUMZZiZ", "userId": "nBhlku2MA81wuZhl"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItem' test.out

#- 68 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3345495626528443, "statCode": "wqSNQQALkYotunKR", "userId": "wwl5c2wBrph6imi6"}, {"inc": 0.8552394862175906, "statCode": "rrpzcqzUcPhB7mTn", "userId": "XWAUX5p2hwYIlRaM"}, {"inc": 0.12602360092559273, "statCode": "TZUa8COOF1Ow8Xop", "userId": "qiqr2KcXpgi1Sm66"}]' \
    > test.out 2>&1
eval_tap $? 68 'PublicBulkIncUserStatItemValue' test.out

#- 69 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "oWKtyxXE8w8Kwo6G", "userId": "KdxEjRz2i5ZfKpOx"}, {"statCode": "67lRdviyYTOff0JW", "userId": "PcUjp6f0YydsI9aj"}, {"statCode": "T9Te98lmgua90S5h", "userId": "ldKdklFByUhQobec"}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItem2' test.out

#- 70 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["RBWSNu7WDrlP27Ad", "5UiLJ5BCb1cH2VoF", "pX4vXieSohZLCJpQ"], "defaultValue": 0.9408816870065089, "description": "mEsZsIIUvsxkuZ8Y", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.7684427741776904, "minimum": 0.5807071710814319, "name": "JhXOfzzQ4OM9BqsM", "setAsGlobal": true, "setBy": "SERVER", "statCode": "0XEBiP6FHwHgc0vM", "tags": ["9iUzm71HSEePWbP2", "muciPqd7hMf36ERg", "gRKNL0FR7I4IgzDe"]}' \
    > test.out 2>&1
eval_tap $? 70 'CreateStat1' test.out

#- 71 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'oD3arZL32PtXzGd2' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '72' \
    --sortBy 'nTijY4HUFUrFiIfc' \
    --statCodes '["Ye9Xf8tCCW2jLaGV", "1Bh7dRdYbXuywQT5", "doIVD0Vs4PbipWQ9"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatCycleItems' test.out

#- 72 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '84' \
    --sortBy 'sw2YEhC0e9LKZXXz' \
    --statCodes '["dRTGleilEHcN0aP0", "Dc333BHS8sFoDyQ5", "cbAyW8ZV0riDHmzl"]' \
    --tags '["IRxxyFlmaXiMCTxx", "tIpXUBui8ZRsmVNq", "AM8LBGlQCb4ej7me"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListMyStatItems' test.out

#- 73 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'qxnPV69Ch8Pr6MxW' \
    --statCodes '["pCB77WwV3E8vbOpI", "YSEQK7LuSFifzC7p", "rH2YiLlDB3b3PvVt"]' \
    --tags '["mtMLh0iVXM1NwtyN", "b9wtX5wRizwyFDsu", "HSxNF5a3roTTA2UR"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListAllMyStatItems' test.out

#- 74 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'SATEqTva55YnNr9e' \
    --namespace $AB_NAMESPACE \
    --userId 'G6QxK9j7MdLd62uP' \
    --limit '13' \
    --offset '50' \
    --sortBy 'MaNzuAZ7PPes4HfY' \
    --statCodes 'Gzd8Nn5oGDiFvIbQ' \
    > test.out 2>&1
eval_tap $? 74 'GetUserStatCycleItems1' test.out

#- 75 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '0Rutr5DjWrxhLTtv' \
    --limit '41' \
    --offset '47' \
    --sortBy 'J5FRser4o19x5UkL' \
    --statCodes 'PERc6GiXwydoRHrJ' \
    --tags 'leuQzP21DzKWsMl6' \
    > test.out 2>&1
eval_tap $? 75 'PublicQueryUserStatItems' test.out

#- 76 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'zvlQA1Fp2vZIGazu' \
    --body '[{"statCode": "p9Ot6CoXyMWZSbVz"}, {"statCode": "pQ2VP5dMngOctjP8"}, {"statCode": "jiQbYmxz9iLjzWCT"}]' \
    > test.out 2>&1
eval_tap $? 76 'PublicBulkCreateUserStatItems' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'qVoWlkoH0lT6PipO' \
    --additionalKey 'XtKAf93wR6fs1yYS' \
    --statCodes '["BIcQJ9DroV5dau10", "cDfdvukfUuAJStZC", "ak7myBDE0eQxHyos"]' \
    --tags '["kkhMKOBdunEAgAT1", "NOlliLBsNzzUVjec", "C0GzQr9I4Rhi7Slm"]' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '6M453TntIHy5fuHp' \
    --body '[{"inc": 0.9440080403980666, "statCode": "Uk6gcoR1PHz8QaeF"}, {"inc": 0.5115497795579598, "statCode": "bxiMe8kFfU5r5sQ4"}, {"inc": 0.14759263267478728, "statCode": "CU2d435A3RBvsUiZ"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkIncUserStatItem1' test.out

#- 79 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'DkmWnpN73xvJSPLq' \
    --body '[{"inc": 0.31130853728517927, "statCode": "rD95m1J9oDdj5gxM"}, {"inc": 0.5544051851982605, "statCode": "SmTwYsuqeOX22zhr"}, {"inc": 0.26690577988541897, "statCode": "A4CJ66smEW5GGv0m"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkIncUserStatItemValue2' test.out

#- 80 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '3zzdolRA61cGbjZH' \
    --body '[{"statCode": "TeWMM8iF34d0U9T1"}, {"statCode": "Hufez3Krn7FUSMyP"}, {"statCode": "z6q9MQ6V5AYnELQ1"}]' \
    > test.out 2>&1
eval_tap $? 80 'BulkResetUserStatItem3' test.out

#- 81 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'qh0IvMWGc0o2jrMX' \
    --userId '4XguRFg2MwLzZwFr' \
    > test.out 2>&1
eval_tap $? 81 'PublicCreateUserStatItem' test.out

#- 82 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'CHgEwKFpGgZOy3rZ' \
    --userId 'i8EErsed0rAh1hVl' \
    > test.out 2>&1
eval_tap $? 82 'DeleteUserStatItems1' test.out

#- 83 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'kbN6CTkaRRh3UC6t' \
    --userId 'uL5ACNKA73LQotPf' \
    --body '{"inc": 0.12191044764990411}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItem' test.out

#- 84 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'eW7KKdazofXyDpcA' \
    --userId 'ID9SoTDZQXsdPMmU' \
    --body '{"inc": 0.6511796436962238}' \
    > test.out 2>&1
eval_tap $? 84 'PublicIncUserStatItemValue' test.out

#- 85 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '6Q0uND0SUBvIw5zV' \
    --userId 'PlbNNsMzUmCDcTlL' \
    > test.out 2>&1
eval_tap $? 85 'ResetUserStatItemValue1' test.out

#- 86 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"lqRiEPJhmnpdXEYA": {}, "Xa24qIwA2LbSydza": {}, "3wR8dTkNx9uGXbgz": {}}, "additionalKey": "juC1iZXcULFNRVuQ", "statCode": "eSCVQTyeEWj9UeAZ", "updateStrategy": "MAX", "userId": "kWTsv9Xp78qzF8mq", "value": 0.4750706325875177}, {"additionalData": {"k5dIttE6jqHiDBKR": {}, "M2ryxuk3mFXeNF8a": {}, "4B85KH1ouAAZNrDF": {}}, "additionalKey": "TcPtkL7Qvy9OhViO", "statCode": "OvqQRMLw9thbzeJB", "updateStrategy": "INCREMENT", "userId": "uXPFBz8d4y6uftHg", "value": 0.6591683260258735}, {"additionalData": {"M5iHc8Il4BoHF6FH": {}, "fgUWsol7W5B6dtsP": {}, "rXFTclrJW4IY7005": {}}, "additionalKey": "3gG0ujFxOc7G6TJe", "statCode": "XRmJFfxZzXvIqgq3", "updateStrategy": "INCREMENT", "userId": "4uIMQqqoFWdnUisf", "value": 0.24937041944696836}]' \
    > test.out 2>&1
eval_tap $? 86 'BulkUpdateUserStatItemV2' test.out

#- 87 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '3ZckEdMobNPyV2SV' \
    --statCode 'WEv3cZ0eKjHuE4pP' \
    --userIds '["owBCnJMaz2cikSZo", "k1uI8s8Qq630JFsU", "lR1BHQqK0Bx2Ofps"]' \
    > test.out 2>&1
eval_tap $? 87 'BulkFetchOrDefaultStatItems1' test.out

#- 88 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'oQ0PgGNuNuq0c4sc' \
    --additionalKey 'UWAYjxrS5i2GpYRy' \
    --statCodes '["OJhvJCGsrrY00FBW", "lwUkdGiYgJ6N7qMX", "wxBf88TiHlVF8DTg"]' \
    --tags '["GjDaG4LmgajaLtZ7", "uVIwroOQgtH2DFsC", "Gj1WS4if0RSasL6J"]' \
    > test.out 2>&1
eval_tap $? 88 'AdminListUsersStatItems' test.out

#- 89 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '1qeQluYsPS7z31I6' \
    --additionalKey 'Me5yw4OkEjaZ0Ocd' \
    --body '[{"additionalData": {"Wx31lDpp2yCZ9HZ1": {}, "ZjG0I98Fr0ag47f4": {}, "pTXWk62mySbCs5aV": {}}, "statCode": "hQdt8pmV8clhinZF", "updateStrategy": "OVERRIDE", "value": 0.9857301258296939}, {"additionalData": {"I4yYiKAiydxcv4hd": {}, "6ByswDIgwjjCO12s": {}, "ruqbqAQ3eWRhpzrL": {}}, "statCode": "ckEoy45cXnRT0oWi", "updateStrategy": "OVERRIDE", "value": 0.494624261352421}, {"additionalData": {"Ip3QcrQ1Nn2Tk6Mq": {}, "lJ8bzLFvMqAn5YQR": {}, "mrxLtdGMSfLZR5xJ": {}}, "statCode": "gszVllnevSUFH3hM", "updateStrategy": "OVERRIDE", "value": 0.22304996713527403}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkUpdateUserStatItem' test.out

#- 90 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'n2JVW0TAFQN9lCLa' \
    --additionalKey '3jOvow8LI0X6Afkw' \
    --body '[{"additionalData": {"Xl3sC9bySIj3FXe0": {}, "TNkiu1tXdM6mLlRd": {}, "ARYlexRtEzgn2WDA": {}}, "statCode": "FXA7ZXU1gnLcnH9W"}, {"additionalData": {"OiyDdFfUCg2c7bWg": {}, "XkF6D0RRYrbLq9b2": {}, "dOjHcS58GdCNQuYK": {}}, "statCode": "UPCHNnO6tsXkLvI9"}, {"additionalData": {"YcPGlJHgeNeIaAM4": {}, "3yowpR0ItEaTuF7k": {}, "AFke3zoLwRn4mD8G": {}}, "statCode": "Ltz24cHxnOw3ZcOW"}]' \
    > test.out 2>&1
eval_tap $? 90 'BulkResetUserStatItemValues' test.out

#- 91 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '5Q48YlCOhz5li0Gl' \
    --userId 'x4R63VOi13wrnfqG' \
    --additionalKey 'P0TK6pZvkjcSzHRi' \
    > test.out 2>&1
eval_tap $? 91 'DeleteUserStatItems2' test.out

#- 92 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'ue4CAUP4Luepkys1' \
    --userId 'J6ZBzYkqaAgTbiFt' \
    --additionalKey 'bf8vADovm3Xfm0MN' \
    --body '{"additionalData": {"8STTffi7Wp7sSf9H": {}, "Yx4Rf0xilJfgdeXD": {}, "pNraRrDse4JFBw9N": {}}, "updateStrategy": "OVERRIDE", "value": 0.2909404293085667}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateUserStatItemValue' test.out

#- 93 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"k7bFcj6MapHKLCkt": {}, "jiNFN7KKFlWJLGYs": {}, "SGXVE4KzEFNaeg7C": {}}, "additionalKey": "0IXTb7Bt9DvlAEI1", "statCode": "sdSAFTVh24jZWpbW", "updateStrategy": "MIN", "userId": "4ZhpQrkp7bQoPegu", "value": 0.6081085457024537}, {"additionalData": {"NRK4NqWDEW0V5Qfu": {}, "vSA5pzxpBQ9IULQ7": {}, "D3OHwGNWuEsMMA6x": {}}, "additionalKey": "GupoJas7omsSdC7E", "statCode": "OivhKKbA02sjjHmZ", "updateStrategy": "OVERRIDE", "userId": "HX1sZQh4I9cBiWnV", "value": 0.4236675177899435}, {"additionalData": {"a5nPGVcK7MnsHrbR": {}, "Dk5rakT6OeNcc5Ol": {}, "kTDgThTgbCQE3EuZ": {}}, "additionalKey": "MtwfRrNAeE6WxWwC", "statCode": "Xcua0oXKPg2sWtQq", "updateStrategy": "INCREMENT", "userId": "SIy6IvSG2OH9Qgh1", "value": 0.7605981691672055}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkUpdateUserStatItem1' test.out

#- 94 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'wdBbYtS9ekGsTX3R' \
    --additionalKey '8CLTCCtUOMh0OUW2' \
    --statCodes '["VMSl6e1fXoiLQis9", "JNxBpRa6m3D4Pi74", "W8Phicqafsq7urO1"]' \
    --tags '["jBkNOmXraYO1WLgK", "pQiqYBrZDt5HcSEd", "WXRoO1r63Rbjg9Yv"]' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryUserStatItems2' test.out

#- 95 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'ED5KeT3au2FR7Zwi' \
    --additionalKey 'MqqZjXbXzjAkEKlh' \
    --body '[{"additionalData": {"BQjO9ZZbgmgEpbTd": {}, "xJp4HGtpXBPB3WrY": {}, "VBhOZNNeXx9p65Y4": {}}, "statCode": "vOYEJzdizFzXm0nm", "updateStrategy": "MAX", "value": 0.30707430019253845}, {"additionalData": {"5BsUo5AauIO55VxR": {}, "R2lvTAHmjfVWKzIy": {}, "WRol4R0s2z58UPR6": {}}, "statCode": "s0x8gNSozTrmfw3x", "updateStrategy": "MIN", "value": 0.16468182861098313}, {"additionalData": {"qjelpiRTxKc0wcdu": {}, "028n1HGOpK5ohu7W": {}, "ESzsmHhBMHZ1zl2y": {}}, "statCode": "DJJHKAZ9wjiKqufV", "updateStrategy": "MIN", "value": 0.300314804271281}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem2' test.out

#- 96 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'AqAWpniLDMzjnQ7q' \
    --userId 'QcxCv6gMqAnoQsDA' \
    --additionalKey 'WEfhE1wTT53A8ZB2' \
    --body '{"additionalData": {"Ay86jbfTIOTiQ8Xe": {}, "NJtaljyx7jJ2enOd": {}, "AEygUA0NGufQpW8X": {}}, "updateStrategy": "MIN", "value": 0.18580801959283355}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE