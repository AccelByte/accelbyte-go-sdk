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
    --userId 'hherO8eF4d3TgaIM' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'NwtlS1BHFMxOCWn5' \
    --userId '2xjrLyreZjW1Oat9' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["xUZn3irURJ2zwed0", "dSlozMZVySl0ilPX", "6QWEYhxi6GSEscWA"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'TKjEa13TFb5fqfGz' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'f9F4RReBJHFwqZGi' \
    --body '{"achievements": ["IJJbK67LuB5HWvPa", "7H58li1cxNgVc9Rp", "Kk0rAghUnfl1wqGt"], "attributes": {"UsyUzkfAdoBM8Cys": "tXMywCt6MlYvSDK5", "iwfMAYRwKwvmhQeQ": "lzBAmG3S79wad4pM", "CeNUnD3g7zQ7DbvT": "z7TCLhk3YpAAYIQj"}, "avatarUrl": "2fOIXfA6orYM0NsE", "inventories": ["m7MtqeYwO0xT3FqB", "qMmIXuiLbSzjm2A6", "j30wXaYUdPnpysPN"], "label": "2UqJYH0SZmQuHu18", "profileName": "epBdheRbT00VzQ9c", "statistics": ["aiDoE052jEVPMrlq", "H9uXRh9liRt5BSjI", "l6DMXtPinn1v1KIC"], "tags": ["4PP6rMvymQtOh1QG", "QE2L9j6IbSn5uDxi", "gT0mKa5bSNWb6LhI"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'dFNFsGTcAVY3zwQs' \
    --userId 'cnJLUN1n2YYpvNAi' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'l78ixxyejloEBtNA' \
    --userId 'rvKr9jk6gimUTLwQ' \
    --body '{"achievements": ["4jkRksOA1RXmzIwV", "TZq0SPhDrYpqNZWb", "zkxy6TSbrOca7MQs"], "attributes": {"DFlEVNQTQT7gY81L": "c972rzyHpP9bjFly", "GHCqxaOsNVegropG": "7JYxcELTZnazn9Vu", "yt7memHbITIZiSOW": "2CgimvHjQpF0HXYW"}, "avatarUrl": "R0ZL9M0KeRn4LWPY", "inventories": ["CxLGd2sTEwBFHSwB", "mbzRSoxWlT4QQW8e", "OgqY5yYVlaYFBQ3C"], "label": "erbhNTICknpLCO1b", "profileName": "nVbhMhbnMqFPLKcK", "statistics": ["tCYAjI8CKB96f4RS", "j97h8sBH30oY0ALG", "rqg3gjfrHGTMzPhG"], "tags": ["0legCH65ir0JPCM1", "3M4aIBmoCrzCKmMK", "ycXGDhAFMlapLt4N"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'nJ8No40WlyMWzRMV' \
    --userId 'APhVcaTgSMR4WnJR' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'hkVysP2cxlmNOC7i' \
    --namespace $AB_NAMESPACE \
    --profileId '3sSE5Z42jRpitUkI' \
    --userId 'xjRZtTl8RiZttCdJ' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '8sUcLsvGe31TgjOj' \
    --namespace $AB_NAMESPACE \
    --profileId '2P7u8lIK0pMyJSWH' \
    --userId 'cPhKaRXUIechFjzI' \
    --body '{"name": "Je0Ytsj3oZNFfAK1", "value": "t0PefeChlzpzH0S1"}' \
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
    --limit '47' \
    --offset '95' \
    --statCodes 'tOu1VhEbulHGyFsy' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '5T4BwsAUFLP2i3zM' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '56' \
    --name 'dO90KAhkEiEXhngA' \
    --offset '81' \
    --sortBy 'dlterQGO6MR9WO93' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "zXmBkoTagusv0IAD", "end": "1985-09-17T00:00:00Z", "name": "sJntScUuwb0nZUrh", "resetDate": 40, "resetDay": 26, "resetMonth": 64, "resetTime": "Bn9eIU1kYHZgb4zS", "seasonPeriod": 7, "start": "1998-06-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["bh9gdNsvfRAoHu5k", "U3QhDd6TStmVVvzg", "cNoX2EQYTiE1oTvs"]}' \
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
    --cycleId 'BLlTnBD6Mtlb7fhE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'qYSqETeEDFyzUIIT' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "nrK3qkU5g6Tli9pF", "end": "1973-12-10T00:00:00Z", "name": "MKpciTm1bwbaRomE", "resetDate": 79, "resetDay": 84, "resetMonth": 54, "resetTime": "4nmOPV62nGEtrqBc", "seasonPeriod": 90, "start": "1974-04-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'gLXmm25Fqqkw23sS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'jNDKKBjtCfqpMARM' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["OKj0WMyCPxBSZe1U", "1jePR2nswxe1z6ov", "ELIr5aLgcXmWf0l2"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'qaQdFBAVEvZYCVSt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'LMlc3HqA7VMGhV5s' \
    --userIds 'SBRRkmevs1PKthLv' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4179714274727455, "statCode": "Cuah813cf0Ko38lz", "userId": "uul0q4yzFk0Meufa"}, {"inc": 0.40674990103296416, "statCode": "SUKPZc023BvmJFgQ", "userId": "q7WQIPiEClsq4rDK"}, {"inc": 0.582413930510829, "statCode": "67WsmzVOD7K1uQtq", "userId": "lpS0mzKz0L2cIfoo"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.05034629352538178, "statCode": "gHBibSV3cndTyV7B", "userId": "pH7ZrrZkpAMq42BT"}, {"inc": 0.8387249709829193, "statCode": "1yVGDSgEjrXNEMsr", "userId": "xEXoOeewh54agPUL"}, {"inc": 0.685552388085819, "statCode": "cOWNVgGSeEVfw0ub", "userId": "hWlr50J69lFQtuMk"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '3Lm5Kh7RT3DPbGX0' \
    --userIds '["sZNlBEYWbhJEaNXr", "yFb1uDUAaN3BYRNt", "38zR1a4fVzuPCRsg"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "ErVmv7k6cSwl0hux", "userId": "Ize2SchnEO5DLm5X"}, {"statCode": "4I3sC4OqfTk9mce3", "userId": "bYWefx5q26xytB1k"}, {"statCode": "WOA3Hw5fPlW99spz", "userId": "JfVPFuI9kZejA03d"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'DIbdt13mnwlec4b5' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '52' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["f6vF0GzdqsmKl6ev", "DAt3FmCEdhMumyD3", "Go6kfe8qgypqQpKb"], "defaultValue": 0.22909043255090822, "description": "1wtGMLWrVmAoB2Zj", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.9733287978716039, "minimum": 0.7050981399248966, "name": "WYDpX0jBHWvsNzU1", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "lQGsQHw2CEN4dW6r", "tags": ["qwm88SCU2A2GKV2p", "sTtnp4oAOw9qqdxH", "qT7wr3julErbm6tY"]}' \
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
    --isPublic 'false' \
    --limit '69' \
    --offset '22' \
    --keyword 'PwfuQuhrEZT8ufP2' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'azyEyIC6AQF8jZD3' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ByoeCIBRDcyiXMiX' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'H9XjDIKp1sB8x2b7' \
    --body '{"cycleIds": ["2t2SO0aBOwbz985O", "8N9CRTR6ur9JnJzY", "cnlWMfzImU0GqIOp"], "defaultValue": 0.6826777939698094, "description": "9LDfLVQyml81lYTO", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "BPneXfd28nLZ82WJ", "tags": ["ci9ndEPsVfkAbWJY", "N7wymsFMMVdarx2k", "zD69iYCFIoeDzpUa"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'p7BDCGtnPGLmND1b' \
    --limit '50' \
    --offset '42' \
    --sortBy 'qbkH0RiIIxosx1kf' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'BG5ipASNtv9EhUR4' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'jjL0nGRECtYbWfnU' \
    --namespace $AB_NAMESPACE \
    --userId 'Q4bVxiHUN97P5ZYN' \
    --isPublic 'false' \
    --limit '3' \
    --offset '75' \
    --sortBy 'BENa4oy4q6Gp1vIx' \
    --statCodes 'JayLX5yjYWor2Qn6' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'dQo4LAslNdSX4ue1' \
    --isPublic 'false' \
    --limit '69' \
    --offset '24' \
    --sortBy 'ZtGktRX12qaSxvvW' \
    --statCodes 'FYwcpFB0QYQ4OXho' \
    --tags 'jcMYzQWLKhl460zl' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'hN60XXdfOx0KGNpf' \
    --body '[{"statCode": "lkBCSA3CBkJro39i"}, {"statCode": "azVjrKwwBwuzOAg2"}, {"statCode": "rRUa5FYyriGX35q5"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ne1uJ632UsfacHpP' \
    --body '[{"inc": 0.06313995218206148, "statCode": "wGB45vWN0hn5GvXq"}, {"inc": 0.27779291066689904, "statCode": "8R8sNn83CxT2VUHt"}, {"inc": 0.6917781592457957, "statCode": "FwXwCLIJGUU6dd5g"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'jWfBu1TPld0iDf3j' \
    --body '[{"inc": 0.08721430829040433, "statCode": "xP2QUi4a85SIgSrB"}, {"inc": 0.003346419388238875, "statCode": "RndKUFpzRMvV9Ym0"}, {"inc": 0.05333058081220177, "statCode": "a4rM3P7FrVK0kZbR"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'o0TDVvAplhX1B86I' \
    --body '[{"statCode": "DEWwQsKBZZRULqFI"}, {"statCode": "lfDFd3oN9ko8QwvH"}, {"statCode": "LaCMbZwmg34FWO9b"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Xt8fkeQSOE7rsXlM' \
    --userId 'nJozVoZxAa0AM23k' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'RfB1nD0OGQjEpl2c' \
    --userId 'wNYFqPz2E0AuF6N0' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'DWGlg0viEKgUmfFG' \
    --userId '5sSiDAha2BcEyRPT' \
    --body '{"inc": 0.7022046694893012}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Zjpt1ZtjenCwcimZ' \
    --userId '0uZvzY4OIH4IjOVr' \
    --additionalKey 'T1JQIEyeMhZ8mdtO' \
    --body '{"additionalData": {"Dt9WFCSSWfp72eeB": {}, "gaKf3kMBGDNtD4g5": {}, "M1ugEPqGQaT6jZtn": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '55' \
    --statCodes '4iJZ644DQ8ujb2jA' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'YMJoa1bIFZwHO3Wn' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '7' \
    --name '5ExrO5i58azQDJ7D' \
    --offset '16' \
    --sortBy 'OYMF2JLtIlb0IBTr' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["JW4LhUMv9vMQAZSM", "0jTULQtGywq6SWxk", "f4gbZ6dlVNtDwWL5"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '5F4TCm0AOKJtEP6w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'v6AsD5OpZCYq2oSY' \
    --userIds 'lnfq54TxYQU18gfw' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2974672669795638, "statCode": "IH7HhtKiPCyl5txu", "userId": "cy8Yon6CQ1Ou1aX7"}, {"inc": 0.5645411204748463, "statCode": "0dJLUKSe5bpz1JWD", "userId": "w7ua0PDr7QaxXOza"}, {"inc": 0.591642215806435, "statCode": "jZ6BVrj3ERtcuaGq", "userId": "dnnQIpF9vnSwAE6a"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3206805629952043, "statCode": "mNzG7tS8o32CEJk8", "userId": "2za8Z8hRwSvEZxdj"}, {"inc": 0.23462663834952902, "statCode": "saa1qJ1YMev37Oc5", "userId": "zWMiDjQpIaqePcT6"}, {"inc": 0.20892666452331587, "statCode": "clWqDs70icY0aPjG", "userId": "5r5ipf35oqdtgFMz"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Vr3I9hH3rKtdRfwW", "userId": "dFoJZtEMlpIDNDEd"}, {"statCode": "nNdLC8vZBO43KxDR", "userId": "9Mz273o133herIVv"}, {"statCode": "P6smgvWL69XiRRHt", "userId": "6C7L6zCWffpJ0UR6"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["oqOqAI6IFmfjdzP8", "UkWxkxHIdNKULLDf", "RdKGR8ijtCmXv9W9"], "defaultValue": 0.38174692632559815, "description": "njWOsN3IMgHQ6T8K", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.2755693373498439, "minimum": 0.7852529646950356, "name": "9bxDwAqH4IJbreeP", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "ywxrd5NE2oraAIwI", "tags": ["uODFyBhhD7gYp7VJ", "HQ8rf3MxQ57UJV9S", "XxFhVuNsTEFdXxoD"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'aVbTZ1Yh4BnUZ1l1' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '90' \
    --sortBy 'URt2cmJ3rnk2i9sP' \
    --statCodes '["PzP1yipY7mQH0m7o", "0cfwqWCbToUnNvI7", "sieExPrL6scaOF6n"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '15' \
    --sortBy 'I8WgCcB3CSP5bovh' \
    --statCodes '["BoARa1X59EaHaIZL", "E6F0BKuSmjoxIF36", "KvIKWru1UjojU3tx"]' \
    --tags '["8GlDDWUlHVZEmBKB", "56mR9kFNslZvGsC1", "2v0KxHcbQ8ApzYBH"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'in1edgZCKiKODTBG' \
    --statCodes '["KP9ojUTeeHjYheMd", "tBrR1XeJZqN96g00", "ut02KL8yZDoluJx1"]' \
    --tags '["VYBnSGEZdEOum0D9", "S51hN88pTfdyJ2pP", "y925YD0w0wQUZfi0"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'BD5Xg98yyncjxnzR' \
    --namespace $AB_NAMESPACE \
    --userId 'w5cJgRCpqlzOUTMz' \
    --limit '98' \
    --offset '46' \
    --sortBy 'kHhPBzj2dRpzPISi' \
    --statCodes 'VtDCW4yztY9enKrj' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'nnujNyvQATbgmOc1' \
    --limit '79' \
    --offset '17' \
    --sortBy 'PvnzSJqMhPhjxbMC' \
    --statCodes 'c9T67Yx0WTpQb48b' \
    --tags 'viQZi61w2C27aTh2' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'awkgtll5fhca4pAI' \
    --body '[{"statCode": "srbg7nPAwYaWsXBf"}, {"statCode": "kQD40pfcrOOc54fj"}, {"statCode": "JRWZIKB0zyX7EGSn"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'Jof1JLFzGjtjs4Kg' \
    --additionalKey 'PWz6ZSzV7Tyd671Q' \
    --statCodes '["PWq1OrAZPeiJ2ouI", "AC73YPWvfQ9p0Xvm", "JVVhgGiZ8qf5lQZ0"]' \
    --tags '["XATVkcVDd0UPf0x2", "Znb5tKNaU2MKoJOF", "lcn7NFg4iTpbz8Ra"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'NH7NqNZvA5Ax17cV' \
    --body '[{"inc": 0.6527082089766246, "statCode": "F2dStqX2zYtgKWpN"}, {"inc": 0.20878669014201068, "statCode": "KPkLHqi8CY0A86lO"}, {"inc": 0.2664110111909641, "statCode": "UAzjYn2p5DcdanU1"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'PPnrtAlOex3pIAWS' \
    --body '[{"inc": 0.1292306000078245, "statCode": "vM4eAULZNy3AIkXk"}, {"inc": 0.4918974990551953, "statCode": "n15uCFedVh2UzwT7"}, {"inc": 0.9604700912062244, "statCode": "g27LAGrfef9D4coG"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'uvIpo68k0GjuvV3z' \
    --body '[{"statCode": "xSYjEdaUpcbssjMw"}, {"statCode": "BnSUyR171xbp96m6"}, {"statCode": "9KuHxWb5OpR1KT1h"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'bbmGfbYEFYN9h3JI' \
    --userId '8LIfLvvFEz3Jrlmk' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'pyvXQVP4nW6Hajlr' \
    --userId 'u3fgV4XSqNkfISOF' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'ajPhG2ApM6NwRjIs' \
    --userId '4UELwKz2icoK74pt' \
    --body '{"inc": 0.646116876719965}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'VJYdVt7Sfwx1arIJ' \
    --userId 'fwW9UZL7OhT1q8A7' \
    --body '{"inc": 0.6209236581501327}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'UqJwrV0rhQLKe4ix' \
    --userId 'Ma9zDIh4xHqu6DSn' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"WHmGb0WFYTixn4Jy": {}, "2828RF0bEge82jl0": {}, "lKHC8GyUHJyk10UV": {}}, "additionalKey": "iru2p1ZTAAZVUJ1Z", "statCode": "bobBOj6jAKiT2ke4", "updateStrategy": "OVERRIDE", "userId": "UFG025DfU6BLbxvj", "value": 0.7026197291699825}, {"additionalData": {"ufVym0Z3tNapDNPZ": {}, "P7Vk2zv8ifimfD0N": {}, "7lzwOGctiIuXfkpV": {}}, "additionalKey": "28krTjQTns8iDdwI", "statCode": "mXKUiH0shQ7aw5Bb", "updateStrategy": "OVERRIDE", "userId": "G5tKRH7DE2ivwz76", "value": 0.469637021574827}, {"additionalData": {"bSxVPHL5npOORJPO": {}, "bdMAtoujon2WEblM": {}, "KW80P4yu1XjWJXOw": {}}, "additionalKey": "YwrlHEPTQrBX6tC9", "statCode": "8K0RulaNnLVafsXZ", "updateStrategy": "OVERRIDE", "userId": "lQVQIhMEw5oSB6nK", "value": 0.011318425872037685}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'll3CcjCHwgnfTIwp' \
    --statCode '2qN6OsiN7YcWFYYc' \
    --userIds '["aC547Xc5bsFFpNrp", "alxrrt7JN1PdXBB1", "e25Yn4rijlHblCAe"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'tO2oEpr7Y2hS0BeW' \
    --additionalKey 'bEEup6fVnIC6l3vp' \
    --statCodes '["nyf01YqJgnLtLMt3", "0DoMBPYfKfhkix1N", "dmfN74w5Y6Mrk3yY"]' \
    --tags '["nCpyWSao2VbN6TPi", "PdgcUB2wKzNT8DW6", "btV7OhW54XEjLaLm"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'mMaabKueAUDORJDA' \
    --additionalKey '1vvDR13bC8Us8Zbe' \
    --body '[{"additionalData": {"AAj1cmUOk3D6PSxd": {}, "YoNZcacOy5QTVqLP": {}, "wjwBk038MjT340Ey": {}}, "statCode": "BfZM9dej7XRzHvEX", "updateStrategy": "OVERRIDE", "value": 0.34871658849163967}, {"additionalData": {"ZgLM7p9qVUQZ6AHd": {}, "RlVeN5gtCmaSQKJd": {}, "ZVeSqCyNlB5ZVqMt": {}}, "statCode": "T7pxFPcwlnL4Nsec", "updateStrategy": "OVERRIDE", "value": 0.12767265197096944}, {"additionalData": {"HhzWxt69Hu5TuOQW": {}, "no2yLzNx4AEu4AwI": {}, "rkfWPF0chQYqvKkb": {}}, "statCode": "C9WRogmHnfM9SeoW", "updateStrategy": "OVERRIDE", "value": 0.888993056544488}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '9vkeBOlta4XkxTqV' \
    --additionalKey '9J01O5awAgkxaecV' \
    --body '[{"additionalData": {"Vmv0WHBYhwTeViF3": {}, "M5lbnWsvNJichzGW": {}, "WPypaoqlYmkrQvjx": {}}, "statCode": "FBDKcAe8zprgwwIr"}, {"additionalData": {"pTdpWHgAJu6vUQjB": {}, "2uLqsrc3cM1tm4o4": {}, "7HoqWWiDi8xCwGvW": {}}, "statCode": "sySrPjzsHXw9EOsU"}, {"additionalData": {"WgjAKkAcu9UCQavM": {}, "4GOfHnlAr83wQp9p": {}, "Mhb5gb74R4uhfYVo": {}}, "statCode": "qV9NiUFP1BNGcTDY"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'IyIgxqr7HN08fuee' \
    --userId '6kMHG67wuxAu5SbW' \
    --additionalKey 'WFcrPvEgMQO0h4fl' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'RFxJKdMjb8JyDuvQ' \
    --userId 'Jlm7zxWTAaixSv1i' \
    --additionalKey 'MNp3W8T0YSPURsHm' \
    --body '{"additionalData": {"T5x8cbzr8JAas6mS": {}, "IC3RlNU33qWXAGBX": {}, "dCIDNEHaP1MGKVkj": {}}, "updateStrategy": "MAX", "value": 0.11972898525609843}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ukKsiInvKmDkovJK": {}, "TUxvTv3fwd1mHX43": {}, "TPAmJZ9mC0Q8EVf2": {}}, "additionalKey": "sRGxrE0Ctpe8POAu", "statCode": "w7L5ZJtGOTJhFziA", "updateStrategy": "INCREMENT", "userId": "lI5SilwBFPJC5vQg", "value": 0.10576877419918074}, {"additionalData": {"DxmdLEJgMFdHrr0b": {}, "ks2c0mKBvBYSZRRa": {}, "NycCzEnXYwGphPBt": {}}, "additionalKey": "B3NHE1R0OlnMlQGj", "statCode": "g5OAbSNtvjROvEqM", "updateStrategy": "OVERRIDE", "userId": "6z4zTwMm1rEwgBGw", "value": 0.4820979593944802}, {"additionalData": {"ik8ZdtTi1tI96F3D": {}, "i1bXSom24p4VDwai": {}, "fyXQ76TolKgrSNPs": {}}, "additionalKey": "2UNAu72h1GBKZjkt", "statCode": "nxwUQdzAhHT9F5dI", "updateStrategy": "MIN", "userId": "WExGnSDD5pSdivpL", "value": 0.3031676679334879}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '3lC3X6Yu3KcXhrsN' \
    --additionalKey 'DsObdTLvRlIR2Q0C' \
    --statCodes '["lVJEoXwFjECuiPDs", "0isDq1yP2yiCPhUq", "CI998ZesmmIB5r2W"]' \
    --tags '["nNVdv1i09o7qM8eT", "1WrNg4TfNeGLLjpt", "Wnw8okrXqM19kyxp"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'jo0I3QxQsiNJydIR' \
    --additionalKey '4jzwt8e7AWpY6x6B' \
    --body '[{"additionalData": {"PKtYJzxdQUil1t38": {}, "tq4n1XZJaQGW0tqv": {}, "ZKeUdBRVET4uB3SU": {}}, "statCode": "WXHaQKPVsFAvCkPS", "updateStrategy": "OVERRIDE", "value": 0.36854906466660076}, {"additionalData": {"byCFmjEzDLqfrzVR": {}, "qSPf4eNtIF7S4SLw": {}, "79VYyYC4inkXaNQq": {}}, "statCode": "8xjq1QtfkoCqxETi", "updateStrategy": "MIN", "value": 0.569270290363159}, {"additionalData": {"2jxtQvZR2C7YleKf": {}, "yb3mCIAJg0M5oawq": {}, "2cWTUxcMgplMGJCO": {}}, "statCode": "bFWBwtO0u1SYsJvk", "updateStrategy": "INCREMENT", "value": 0.7021969698494585}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'wmoTt01tFcR8RWc0' \
    --userId '5yHT913umvQjRrh2' \
    --additionalKey 'Mvm2aRpyjC3E6CUg' \
    --body '{"additionalData": {"gDWZ7xlh3jQVIOTl": {}, "ZOXd7honexvaJqqz": {}, "YuhGWaGm33CfFCKn": {}}, "updateStrategy": "MIN", "value": 0.925107990542136}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE