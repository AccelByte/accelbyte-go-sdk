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
echo "1..89"

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
    --body '{"maxSlotSize": 31, "maxSlots": 89}' \
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
    --userId 'p8bHTQ60' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'fd9rdpov' \
    --body '{"maxSlotSize": 72, "maxSlots": 8}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId '9MHUHFER' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'NVdq18f5' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'DhQbbhzy' \
    --userId 'Z7jud8cv' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'BrWbTVK8' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'dW92uZ69' \
    --userId 'Mg77IjTO' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["XQUjqJg1", "hKr50TjX", "PUnhemiV"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'eDRmrRFV' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'B3XP9QuM' \
    --body '{"achievements": ["4Oj53km2", "yL5PC3IV", "ZlaHkM9y"], "attributes": {"JtvRbjmU": "qaAAvwHl", "WUPzCqUP": "LLkcYiU3", "6NaYGNYI": "c03FUECg"}, "avatarUrl": "KdpqYTpF", "inventories": ["lN3RL6MH", "eox39Mbh", "SKokbmw1"], "label": "irl8gyfP", "profileName": "I74scK5o", "statistics": ["JSB2mMvo", "Z2gjSWEU", "UjkhbBvD"], "tags": ["EKbDLWhN", "VQwgvfX0", "9A9gLzH6"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gHBRktoL' \
    --userId 'Poy2PRKo' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'oDe6F6qU' \
    --userId 'IK8bLQIJ' \
    --body '{"achievements": ["4eLEDaFa", "crPt1k4R", "AIAI2zoO"], "attributes": {"jNOfP3JO": "SJvnPKwX", "ROwMc8Qp": "QIsSCFWf", "3c7KIIBr": "fPuGmvJs"}, "avatarUrl": "YR03Uy8e", "inventories": ["AkeZae75", "vZpZFn85", "F5qU5NKo"], "label": "CdwAae5R", "profileName": "mLFEcg4B", "statistics": ["fy0jnbX1", "jfcR38IO", "jdHfy2D3"], "tags": ["W50jNvV2", "drAWk7Jb", "jinFhaig"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'q1FlbTgs' \
    --userId '7Xqc7XjU' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'Ob6Sqeub' \
    --namespace $AB_NAMESPACE \
    --profileId 'AcUl9Dq5' \
    --userId 'uofhNfGL' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '6JlzSRrC' \
    --namespace $AB_NAMESPACE \
    --profileId 'vKsIWnxC' \
    --userId 'pQkY2VMw' \
    --body '{"name": "d9CmCiP8", "value": "ouMqx0iz"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'eVbWD7e1' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'DL95boTb' \
    --label 'cWB798eq' \
    --tags '["f4cGp2XA", "Aa6FWFZ2", "FKJ7kSlG"]' \
    --checksum 'eJhFddlA' \
    --customAttribute 'AVttjUkk' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'db43k6NJ' \
    --userId 'wLoRVF7G' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'O1VgaAdE' \
    --userId 'kgTH0K8u' \
    --label '79iXt7Ph' \
    --tags '["6CS4VYeO", "vnPMYlnN", "6qwPza7x"]' \
    --checksum 'ytWHU18Y' \
    --customAttribute '3gMw8nZG' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'ECjbWp4G' \
    --userId 'u8UnL2hY' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'LHWI92oB' \
    --userId 'Cccns6tt' \
    --body '{"customAttribute": "fM4Bt9F7", "label": "c0rgjya9", "tags": ["GdMNbfPr", "wWWpmqTv", "5CB2YjqP"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '37' \
    --statCodes 'l5NnweD9' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '0dSFdWUp' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '51' \
    --name 'BzPjAAJY' \
    --offset '50' \
    --sortBy 'vgi6sthk' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "AGmz0Byl", "end": "1985-03-24T00:00:00Z", "name": "fjarJY36", "resetDate": 1, "resetDay": 8, "resetMonth": 86, "resetTime": "VXq4GenU", "seasonPeriod": 47, "start": "1993-09-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'PLDmHfN4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'GetStatCycle' test.out

#- 31 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'ab1ZN7TE' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "0agSGn0E", "end": "1976-09-03T00:00:00Z", "name": "hqJ3cyF0", "resetDate": 41, "resetDay": 12, "resetMonth": 71, "resetTime": "1RmqpF9T", "seasonPeriod": 42, "start": "1997-04-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateStatCycle' test.out

#- 32 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'AlniOfUJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'DeleteStatCycle' test.out

#- 33 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'fOvJdBMY' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["zOQyGDHj", "kRIKECGP", "iwPkeAjn"]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkAddStats' test.out

#- 34 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '9cKeHIxa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'StopStatCycle' test.out

#- 35 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'AVuAn0EE' \
    --userIds 'Xy5xKPp4' \
    > test.out 2>&1
eval_tap $? 35 'BulkFetchStatItems' test.out

#- 36 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.12597068575551784, "statCode": "eXSszqIF", "userId": "Jpkdl6Tc"}, {"inc": 0.0675851067293004, "statCode": "zKIvtYsV", "userId": "J8EUUZr1"}, {"inc": 0.10266310284948377, "statCode": "NDBp7hiv", "userId": "v1mJsvFc"}]' \
    > test.out 2>&1
eval_tap $? 36 'BulkIncUserStatItem' test.out

#- 37 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.18472788362024883, "statCode": "V8Q6BIlb", "userId": "RrK9VOC9"}, {"inc": 0.13715198934536033, "statCode": "XlD54C5v", "userId": "2AxXa2Pt"}, {"inc": 0.6943492506969416, "statCode": "IMy67kHM", "userId": "hEh1ILvv"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItemValue' test.out

#- 38 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'D31CJI7Y' \
    --userIds '["CLeVtk9g", "CZTd3unQ", "ovFJ9aBw"]' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchOrDefaultStatItems' test.out

#- 39 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "6G0nfbPE", "userId": "veu67C8X"}, {"statCode": "BrB4caiw", "userId": "yIORZoEl"}, {"statCode": "sjgEnGXz", "userId": "qzlUY27t"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkResetUserStatItem' test.out

#- 40 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'vIw0Am4D' \
    --isGlobal 'false' \
    --limit '2' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 40 'GetStats' test.out

#- 41 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["FoncWsDo", "JkcPXpY8", "Q2o3jndw"], "defaultValue": 0.5113591478584096, "description": "m7CzCBCp", "incrementOnly": true, "maximum": 0.0718602353306339, "minimum": 0.10406421705762225, "name": "bRfKIFCn", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "kMMcdPTf", "tags": ["dgwIOP0i", "wcBWyelA", "bij1wDMx"]}' \
    > test.out 2>&1
eval_tap $? 41 'CreateStat' test.out

#- 42 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'ExportStats' test.out

#- 43 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 43 'ImportStats' test.out

#- 44 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --limit '68' \
    --offset '81' \
    --keyword 'tHdHtE03' \
    > test.out 2>&1
eval_tap $? 44 'QueryStats' test.out

#- 45 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'oAbybT6k' \
    > test.out 2>&1
eval_tap $? 45 'GetStat' test.out

#- 46 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kYjudipx' \
    > test.out 2>&1
eval_tap $? 46 'DeleteStat' test.out

#- 47 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '8LsijMUd' \
    --body '{"cycleIds": ["Kk9UL2oC", "88tu60l0", "IQht3oGW"], "defaultValue": 0.30188736967568275, "description": "7CMbMxwe", "name": "trT3Ctzz", "tags": ["PXPyXlSg", "sJtvYsfD", "zDdcFH9F"]}' \
    > test.out 2>&1
eval_tap $? 47 'UpdateStat' test.out

#- 48 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'HrKw25Md' \
    > test.out 2>&1
eval_tap $? 48 'DeleteTiedStat' test.out

#- 49 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'nPkM7Dod' \
    --namespace $AB_NAMESPACE \
    --userId '11M8R7AU' \
    --limit '35' \
    --offset '63' \
    --sortBy 'ff5JmE00' \
    --statCodes 'HsK501I4' \
    > test.out 2>&1
eval_tap $? 49 'GetUserStatCycleItems' test.out

#- 50 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'NV1lsjkb' \
    --limit '100' \
    --offset '57' \
    --sortBy 'OEPY7MOV' \
    --statCodes 'qzUjQewH' \
    --tags 'gULNzBIw' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatItems' test.out

#- 51 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'NdvaClrY' \
    --body '[{"statCode": "i63AZCYz"}, {"statCode": "klMpG8Pk"}, {"statCode": "l8LaPDwf"}]' \
    > test.out 2>&1
eval_tap $? 51 'BulkCreateUserStatItems' test.out

#- 52 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '9MZi1Frk' \
    --body '[{"inc": 0.6124042179328948, "statCode": "QYNRubBg"}, {"inc": 0.17478287933610048, "statCode": "2MnRwGo1"}, {"inc": 0.1517570821409353, "statCode": "e6YnLFmy"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkIncUserStatItem1' test.out

#- 53 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'nvi1rYFA' \
    --body '[{"inc": 0.364721332742145, "statCode": "SBWtu7ft"}, {"inc": 0.8413384337742909, "statCode": "BpmecJ4t"}, {"inc": 0.44031525428626017, "statCode": "fvkWlFmC"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItemValue1' test.out

#- 54 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'AlODiJTl' \
    --body '[{"statCode": "xZPc9Qjm"}, {"statCode": "bAcoxPkP"}, {"statCode": "oClYLYRc"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkResetUserStatItem1' test.out

#- 55 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'iymiFpm5' \
    --userId 'mHYDLATZ' \
    > test.out 2>&1
eval_tap $? 55 'CreateUserStatItem' test.out

#- 56 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'iH01Dd3F' \
    --userId 'gjWmtiT6' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserStatItems' test.out

#- 57 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'mf1kmMf2' \
    --userId 'Kkkxd94N' \
    --body '{"inc": 0.26137856489729905}' \
    > test.out 2>&1
eval_tap $? 57 'IncUserStatItemValue' test.out

#- 58 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'jo7gBKkm' \
    --userId 'TXnK4pnh' \
    --additionalKey '5nw4MNv3' \
    --body '{"additionalData": {"R8bWePVr": {}, "4LI1Sq80": {}, "lgksO8mv": {}}}' \
    > test.out 2>&1
eval_tap $? 58 'ResetUserStatItemValue' test.out

#- 59 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '19' \
    --statCodes 'barhk7Yc' \
    > test.out 2>&1
eval_tap $? 59 'GetGlobalStatItems1' test.out

#- 60 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Dww2KSCy' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItemByStatCode1' test.out

#- 61 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '15' \
    --name 'x9Frf79E' \
    --offset '90' \
    --sortBy 'trbg057K' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 61 'GetStatCycles1' test.out

#- 62 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'jwUNwv5p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycle1' test.out

#- 63 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'IIRfUF5O' \
    --userIds 'o6XsPI9E' \
    > test.out 2>&1
eval_tap $? 63 'BulkFetchStatItems1' test.out

#- 64 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5727050120027648, "statCode": "2svYbka4", "userId": "E4LSFEMk"}, {"inc": 0.2721043220100169, "statCode": "EIdqmk0l", "userId": "zGWaLvPM"}, {"inc": 0.76064531066308, "statCode": "F1Yad2SN", "userId": "5o5mCNMx"}]' \
    > test.out 2>&1
eval_tap $? 64 'PublicBulkIncUserStatItem' test.out

#- 65 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9304244073180246, "statCode": "npVVzqrd", "userId": "MPB23bh8"}, {"inc": 0.0006320551417616782, "statCode": "1EpdENC6", "userId": "6snvY6kE"}, {"inc": 0.817701369582044, "statCode": "5GeZdyc5", "userId": "JU1FWPrN"}]' \
    > test.out 2>&1
eval_tap $? 65 'PublicBulkIncUserStatItemValue' test.out

#- 66 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "TgP7orR7", "userId": "hndRt41N"}, {"statCode": "u1VdcMaU", "userId": "3kqABcfz"}, {"statCode": "mV6UQw6t", "userId": "31PHyd1w"}]' \
    > test.out 2>&1
eval_tap $? 66 'BulkResetUserStatItem2' test.out

#- 67 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["49P2mgPN", "PTsGRc8G", "3sgASDQ0"], "defaultValue": 0.08634317700526806, "description": "GeD1MIK2", "incrementOnly": true, "maximum": 0.4597879637596829, "minimum": 0.508109568486564, "name": "duvJoULr", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "RAh27Urx", "tags": ["BlIep7d3", "e5ZPRIVD", "9yp2Zooe"]}' \
    > test.out 2>&1
eval_tap $? 67 'CreateStat1' test.out

#- 68 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'x9zk4qC6' \
    --namespace $AB_NAMESPACE \
    --userId 'yX5Tyzkx' \
    --limit '85' \
    --offset '29' \
    --sortBy 'CRiEg9cI' \
    --statCodes 'sLFVp84M' \
    > test.out 2>&1
eval_tap $? 68 'GetUserStatCycleItems1' test.out

#- 69 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'GL4Qsakr' \
    --limit '10' \
    --offset '50' \
    --sortBy '3HYplCqm' \
    --statCodes 'BnRs1144' \
    --tags 'B0LfKBpi' \
    > test.out 2>&1
eval_tap $? 69 'PublicQueryUserStatItems' test.out

#- 70 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'AM45N73S' \
    --body '[{"statCode": "PsyAufW1"}, {"statCode": "Bx5o0dGk"}, {"statCode": "VY8zex3k"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkCreateUserStatItems' test.out

#- 71 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'aWpuHQsx' \
    --statCodes '["zBm5LHVY", "y7kLM6sd", "LdCXzG04"]' \
    --tags '["KDdYReaB", "SCdtG5km", "P1CzZKjG"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicQueryUserStatItems1' test.out

#- 72 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'KQUzIrjC' \
    --body '[{"inc": 0.6698309665871918, "statCode": "lWngeVwE"}, {"inc": 0.07461275400764134, "statCode": "udGegGMu"}, {"inc": 0.8034831921758807, "statCode": "HLeZ7z2s"}]' \
    > test.out 2>&1
eval_tap $? 72 'PublicBulkIncUserStatItem1' test.out

#- 73 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'jhWp1oIv' \
    --body '[{"inc": 0.14922343129393334, "statCode": "sKi2Oirc"}, {"inc": 0.8435544482073802, "statCode": "0gfa5NHm"}, {"inc": 0.6666337795473293, "statCode": "Zj2SLFsY"}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkIncUserStatItemValue2' test.out

#- 74 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'kU3aFGfJ' \
    --body '[{"statCode": "7TqCoHiS"}, {"statCode": "lrxq70pD"}, {"statCode": "QQMQhcNn"}]' \
    > test.out 2>&1
eval_tap $? 74 'BulkResetUserStatItem3' test.out

#- 75 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '0scqPSY5' \
    --userId 'yeWCUNVu' \
    > test.out 2>&1
eval_tap $? 75 'PublicCreateUserStatItem' test.out

#- 76 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'bnqbM8b3' \
    --userId 'ukOv98Eq' \
    > test.out 2>&1
eval_tap $? 76 'DeleteUserStatItems1' test.out

#- 77 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'OWLJrcub' \
    --userId 'rRajE9lO' \
    --body '{"inc": 0.35176267902058056}' \
    > test.out 2>&1
eval_tap $? 77 'PublicIncUserStatItem' test.out

#- 78 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'OCPdWW39' \
    --userId 'MbTlzLEi' \
    --body '{"inc": 0.5975674168458099}' \
    > test.out 2>&1
eval_tap $? 78 'PublicIncUserStatItemValue' test.out

#- 79 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'fo8l5kbv' \
    --userId 'gFZGeuDL' \
    > test.out 2>&1
eval_tap $? 79 'ResetUserStatItemValue1' test.out

#- 80 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"9tszZ6wz": {}, "7zeexXBy": {}, "AyhYx1qG": {}}, "additionalKey": "AZjUNL99", "statCode": "F0x19wba", "updateStrategy": "OVERRIDE", "userId": "mLj0aqnV", "value": 0.4434045444694298}, {"additionalData": {"pcSk1RCt": {}, "u58TwXqv": {}, "QnEbIZZS": {}}, "additionalKey": "kwUElIks", "statCode": "x0hqP9Fg", "updateStrategy": "MIN", "userId": "uYZuqHjm", "value": 0.38302357598408954}, {"additionalData": {"1gFhHIXT": {}, "6LzY7VxH": {}, "McMrCLY2": {}}, "additionalKey": "CTwYmU1P", "statCode": "qnQHM4Dy", "updateStrategy": "MAX", "userId": "hNTzmI5e", "value": 0.8781778761820767}]' \
    > test.out 2>&1
eval_tap $? 80 'BulkUpdateUserStatItemV2' test.out

#- 81 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'DWkllpx5' \
    --statCode 'egNYEdrW' \
    --userIds '["eHfYOjM2", "1AKrorLy", "wRnJXt47"]' \
    > test.out 2>&1
eval_tap $? 81 'BulkFetchOrDefaultStatItems1' test.out

#- 82 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'wbkbHJN9' \
    --additionalKey 'N1ZyiLMd' \
    --body '[{"additionalData": {"qUY2pzWb": {}, "dxch8xK7": {}, "rG7vfjnG": {}}, "statCode": "XZAZpMSv", "updateStrategy": "OVERRIDE", "value": 0.23508994975815334}, {"additionalData": {"ZkF9wKWW": {}, "IC9vZDtB": {}, "TNVWysPs": {}}, "statCode": "AwkvNW5H", "updateStrategy": "INCREMENT", "value": 0.5320560797301316}, {"additionalData": {"TkAYuEeO": {}, "5YRQx9Fx": {}, "UwxDNgYO": {}}, "statCode": "P7U2hzpg", "updateStrategy": "MIN", "value": 0.7475648482870532}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkUpdateUserStatItem' test.out

#- 83 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'j4BZT2L7' \
    --additionalKey 'tp07A7s9' \
    --body '[{"additionalData": {"bTZtC8Px": {}, "TUBddhnx": {}, "fjujhct6": {}}, "statCode": "kEnZCnRG"}, {"additionalData": {"zL259vMO": {}, "egOSCTwe": {}, "gF9nVxQZ": {}}, "statCode": "WLAkni97"}, {"additionalData": {"MLQm5qtW": {}, "zztzRgr4": {}, "ekClk8qJ": {}}, "statCode": "vO1RcQle"}]' \
    > test.out 2>&1
eval_tap $? 83 'BulkResetUserStatItemValues' test.out

#- 84 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'fLBRboDN' \
    --userId 'yiSb2uCz' \
    --additionalKey 'hMrBaHva' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems2' test.out

#- 85 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '1GzXu9pT' \
    --userId 'LD2vYiBW' \
    --additionalKey 'kGY4RYDP' \
    --body '{"additionalData": {"fPy82Xf3": {}, "zthEvrTV": {}, "s09RrfHJ": {}}, "updateStrategy": "MAX", "value": 0.18141673432908745}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateUserStatItemValue' test.out

#- 86 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"30kd8glD": {}, "AJ4gA7YK": {}, "kW4I0Xxx": {}}, "additionalKey": "2m2J7K18", "statCode": "HF0QUsiP", "updateStrategy": "OVERRIDE", "userId": "83lVFiRg", "value": 0.9622399336845561}, {"additionalData": {"LGUj6AOS": {}, "GtpA6cJK": {}, "V9q1QEKr": {}}, "additionalKey": "BrbfFZIT", "statCode": "Y1DEirUQ", "updateStrategy": "INCREMENT", "userId": "ULeLtw6J", "value": 0.9114453248030401}, {"additionalData": {"UCU7wSHg": {}, "VSyX6YOW": {}, "Ocfe4aGk": {}}, "additionalKey": "hzVomPUl", "statCode": "1oGpR62B", "updateStrategy": "MIN", "userId": "6MrEpChp", "value": 0.5456222258579567}]' \
    > test.out 2>&1
eval_tap $? 86 'BulkUpdateUserStatItem1' test.out

#- 87 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'TLx9kzM3' \
    --additionalKey 'F81EO3Xc' \
    --statCodes '["QPQksJGF", "DCFfnV1E", "hzqvZHyO"]' \
    --tags '["GFnggACu", "tlcWkF7q", "dnF3jpPG"]' \
    > test.out 2>&1
eval_tap $? 87 'PublicQueryUserStatItems2' test.out

#- 88 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '8M7zUWFW' \
    --additionalKey 'wuyOrMpL' \
    --body '[{"additionalData": {"M9GgYWV0": {}, "sJbu62aI": {}, "sLvFIpBt": {}}, "statCode": "KaflPCZS", "updateStrategy": "INCREMENT", "value": 0.5820528104507248}, {"additionalData": {"UpD7SVM1": {}, "qDPB7paV": {}, "Ab3atSHP": {}}, "statCode": "T3fszU0Z", "updateStrategy": "OVERRIDE", "value": 0.8232568498335848}, {"additionalData": {"Vuaq0DHP": {}, "AxfDpP3v": {}, "7yBCxHlB": {}}, "statCode": "Sb4MfmOM", "updateStrategy": "INCREMENT", "value": 0.3922509458371223}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem2' test.out

#- 89 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'RjwEose9' \
    --userId 'V9I7Q3nS' \
    --additionalKey 'RSQFnaa7' \
    --body '{"additionalData": {"Hl7GIokw": {}, "EAy3vPfZ": {}, "HJKkyxvP": {}}, "updateStrategy": "OVERRIDE", "value": 0.7079283158389426}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE