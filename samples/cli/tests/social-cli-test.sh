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
echo "1..95"

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
    --body '{"maxSlotSize": 87, "maxSlots": 10}' \
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
    --userId '4Dx0O2PgeUi5xRnG' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'U693AoixrKRDfee1' \
    --body '{"maxSlotSize": 60, "maxSlots": 2}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'B0nnDP6RR2ihAKz3' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'aGMr3o5c2AUGhItj' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId '9tqOris8LxF8JZQi' \
    --userId '1ka3wZ0YNxmsxwaO' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId '4778TWEIvesn4kWJ' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'ndKXErfl6F3srn36' \
    --userId '3abey0WvbCWIfyNe' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["0ZrvcC82zq9UVnr6", "W4TgjcSGIGh5SXM8", "ejAUYxhSpoIrV393"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'ICvzt7pZ8g9n1oSS' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'cbmUadbyKOV9ZZwN' \
    --body '{"achievements": ["zux2hYbc3JcmwjyB", "0MC6hr4pMUdpphtW", "lmgJb40RKZDvOwGw"], "attributes": {"UA9lW9CKWCBObai6": "zjL4HLgAPZT79q8t", "cPAmw0HPKOMAXk6q": "5DRjWnk3f1QMfH1x", "gWJg8sjdsPXoKwqd": "0J8omMJRSv8DAEHw"}, "avatarUrl": "0g4gEAkC0YxOWOzm", "inventories": ["lUVnZ6HuTyRRD2uR", "7e67NJLTsZFOChyq", "eYEbrOfsxwMKBBuu"], "label": "FWVYy7vpTo6ToNYO", "profileName": "aJP1iiDxtTVBLyyO", "statistics": ["uB6NEjyosGeWZVA8", "yf4iAF17qIZuTSK9", "IS34QvRA7CrkBI7S"], "tags": ["D0lgqGgYXNAbIpFY", "JPF3KtR9cqE4VQ9T", "PtLSe5QY8eSIeVKF"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'TMsdsUTokEb7BRxm' \
    --userId 'vYZ64BJ3JEgi5oMp' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'xCdyhAfQTwNZlRe9' \
    --userId 'uepyi5eFgnChWd9J' \
    --body '{"achievements": ["sOExDUI0h42MkBr0", "5CvOCvbsylCliUAY", "Z7fbMOAhkkwpQ4Xa"], "attributes": {"NJC7URxBMbUPjyvG": "fkYNlpASl6ib46Yx", "jqeAOmFSkIOf3SzE": "RhszApdUqItkWsD1", "OisEXJXrPp2upE5S": "7mHnicXayBoIQVCJ"}, "avatarUrl": "v6yecw8S1YHEqIgh", "inventories": ["NiPHFuGL7XeICq2X", "Jn3vJzgoeLUPngLi", "g3tooVBkZRTBKgAc"], "label": "18pcArZ0gRtAClDX", "profileName": "aiKId3aAY9Hzrpm2", "statistics": ["1xs02CxGXkp2YjFA", "gKKBCMvWwVGjiS41", "2D9CSDMDU53TVuf9"], "tags": ["sazpbGoUR4HvTD8C", "EkTWHkeFMtXy0ky0", "npwqBFGxKbLKKE4F"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId '2DwcJgs2Ucvs3Mlx' \
    --userId 'HHcyzZwSgJCRRpQ5' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'aM12Pdzr0r0x5JKU' \
    --namespace $AB_NAMESPACE \
    --profileId 'kvpZ8XtfkmuUMnbS' \
    --userId 'AkwbUKJA7DRwq7jh' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'x7p9ih3i6WzdIarI' \
    --namespace $AB_NAMESPACE \
    --profileId '9RZA7CUxEaMr6DCs' \
    --userId 'NHiLhr4AryvFpZ1Q' \
    --body '{"name": "uMokcjBNjZktrOWP", "value": "VL9ccxm9NasWG6m5"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'abOnseLqyonlUDRF' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId '7ZtChQm6YOTvtL1s' \
    --label 'qsO1FWh2Izqu5vkR' \
    --tags '["gDmlkl3t9vsBQr6w", "oKVwdAS4llzaSZBe", "haZmLuVKlrjGAhOg"]' \
    --checksum 'C6mKYxQtYCUFTN5I' \
    --customAttribute 'ykQTNqSOTtyOCBod' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'rLoEKQet6zVbIRfl' \
    --userId 'BWo9o4LfrjX3vhxs' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'HkR9KQnRdGRbJJcC' \
    --userId '4ohyB3FCCf94VeDH' \
    --label 'h4sbL1YGwM8NcMET' \
    --tags '["bCTQsC0aszUNJ991", "0MS3GULZWKv4LJP2", "3RJROIa3teFaIbxb"]' \
    --checksum 'EU32jy2DcdahGvrX' \
    --customAttribute 'XmXhdRQ9EpjkaHs6' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '9vPg98EObM36vWI0' \
    --userId 'LYKgrtu4jXQY6yai' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'ESQnRHS5dNKXtTFE' \
    --userId 'ZZrpFHDsPg057CQ8' \
    --body '{"customAttribute": "oF4PELTRMRJDoQa2", "label": "9yCgQqs1OUoacP1e", "tags": ["zNokz9ITv1MET5tk", "w2b0coQJermJGAGE", "M0q5V0VrMuF0D86K"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '7' \
    --statCodes 'rTdkO9MysjWJAI2v' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'zPlMpSeI8pnRqMnk' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '42' \
    --name 'Ypraoox2FP5xXFH7' \
    --offset '96' \
    --sortBy '4rNKAEuFFzpcgMTa' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "kcLitXl5UKY90vXN", "end": "1997-01-20T00:00:00Z", "name": "YwtaCMfUSEcEYPjU", "resetDate": 100, "resetDay": 88, "resetMonth": 14, "resetTime": "49XzGOTsO8c6hlWB", "seasonPeriod": 13, "start": "1991-02-10T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["jkV42UUYgl6d5Dib", "4DIjP3vixGLhgjlD", "cJ6gtEhcaYW8YfT4"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'TbS1yhCugzKYMoMc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'JaW9DkQ7Q1kl0xem' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "lazcyOdFGLwcaAi1", "end": "1982-07-19T00:00:00Z", "name": "KsxuQrZ128B9HwUH", "resetDate": 76, "resetDay": 91, "resetMonth": 46, "resetTime": "c8sPLJHKIbFed3x8", "seasonPeriod": 26, "start": "1993-09-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '2O4tREVa7Sa20Yey' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '2QYUUN1c9IAhUAdr' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["jNi6cD6KoR3zEw3g", "gbDFlRNtUUYzBw0o", "LIbZJJ5JamxWGawK"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'Nn6ptlDMoefWmJTy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'NTniVHXvUcONSVnq' \
    --userIds '5aclOIOzk4lR1EnU' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9564189553132693, "statCode": "zIO9IwqHPYIPzFnx", "userId": "23itmMavSKioWEQE"}, {"inc": 0.2056275516538264, "statCode": "dEz810blPZVQaPoI", "userId": "j3uSzxmK5kZjjRGa"}, {"inc": 0.5823507244788132, "statCode": "gFq4C2Gf9Kt5nanJ", "userId": "28gAodub57gAOIPu"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6575626778183964, "statCode": "Z3SwgaOzMDrnaATu", "userId": "8XDnJ5zmwSMhvtMN"}, {"inc": 0.03651867340641701, "statCode": "IaOZh1dcDGRfZMy6", "userId": "5PS2wq4D1IwUIOkQ"}, {"inc": 0.8383216742855154, "statCode": "JWscllzli0L3rjna", "userId": "khq4tKnrfI4qIe5A"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'TIqBMID4GSplM60h' \
    --userIds '["Ymc0lARDnnzu7AXA", "eUeDdEhszcQSd77t", "fTe5UH6cHkJNecjm"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "qmEVRGblDT8AhlAJ", "userId": "CZPGGMi2ve6L6Ol1"}, {"statCode": "nCQKFwkc6ItpiVPS", "userId": "IKH5tCY2jqGicrUM"}, {"statCode": "Uu1yqVvWuAwv6Hek", "userId": "3Ljz03mL5g2QUhYB"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'UCNnYRDLLpyf3PPT' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '30' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["4EFPzufd0PgZMPYw", "SCmzD0ikrB0mXyOU", "GYfh1pqY5EtupqJY"], "defaultValue": 0.8359850702640192, "description": "PtWyc8cLodSRQk87", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.37948609564142033, "minimum": 0.4825322275320454, "name": "7rPT8EXQJb8PekDi", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "esCQ8dbJQXsLmZuA", "tags": ["lByMd2vtqMUCNfS4", "HynFB2Yl9aYBJVLv", "MPhJhp3L4NNrTMoG"]}' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '12' \
    --offset '52' \
    --keyword '84J2XkhHugM7cfn4' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'cgDOd0dYLbNSFaaQ' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '4zy6JVD6bEIwpik5' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '3OCdBykpr2jqECpD' \
    --body '{"cycleIds": ["dW6DNcaBwj9YTcba", "qWzcf4ZZ9RinZURa", "NmKacubt8fWjpPYI"], "defaultValue": 0.09666134236214874, "description": "4eFwAH5yMcrncWy9", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "Bf9b1i6bL2ytGjpS", "tags": ["OowDvaQsz22TBlc8", "9SDv5kS0NvyvDXuE", "Wh0qmPtE1u4npQbR"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'maFK81wuHVMnAYVG' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'FVZfHITgzlhmy5sQ' \
    --namespace $AB_NAMESPACE \
    --userId 'vPHhdcjQgieTEjMq' \
    --isPublic 'true' \
    --limit '21' \
    --offset '17' \
    --sortBy 'YqM69m5eHreLzwbI' \
    --statCodes 'xAP4rX9VldFwkVoV' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '9YTyMTihztVkdeMD' \
    --isPublic 'true' \
    --limit '34' \
    --offset '97' \
    --sortBy 'eSHz9NQaZPByagVl' \
    --statCodes 'MFCe7QZPLG2CCT6W' \
    --tags 'G5q6IuCDm5zJsLLz' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wVKPanl7AMBCufBz' \
    --body '[{"statCode": "IL6HUCwUrqflgEyS"}, {"statCode": "uz2fbvLVHp5BnwHF"}, {"statCode": "kG8up3wKpr9lftEV"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'HCxnelrFXXwwD8Te' \
    --body '[{"inc": 0.5852892490638386, "statCode": "B8GeBTDrdQ1sAkPl"}, {"inc": 0.7789327566155514, "statCode": "z7kYCPCWgfHoOdHB"}, {"inc": 0.6081856181589801, "statCode": "uitAbE7a9xEtccRW"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'YSrkLosQO4cM5YI3' \
    --body '[{"inc": 0.2946444312274521, "statCode": "SUJkborHIK0dhqgq"}, {"inc": 0.6111797652467774, "statCode": "jA4ibTmoxRGmzbt8"}, {"inc": 0.5515896906711386, "statCode": "6wKhyHx1TnxmuRA2"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'X38TKOHRhvjixh1z' \
    --body '[{"statCode": "2cv8w8OdqxRMRyFf"}, {"statCode": "u5Uez2YCBfNapC9e"}, {"statCode": "nsQMcxQ3XvqQrwUI"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'pbYS7cwGFZ9318KP' \
    --userId 'zdd9KrWV7Nl2MPRp' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'FaNwR2Hx6ahBKVUc' \
    --userId 'LUXXbNMjSh43Rx3t' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Ib3P28NQypX0iAVF' \
    --userId 'wBRVjmghDoWPe7ql' \
    --body '{"inc": 0.5854105778257392}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '0DeRmpUjBEt6JEAM' \
    --userId 'wYGT0uLNRRimLFpp' \
    --additionalKey 'Xp9jFLvj4gyfHCxm' \
    --body '{"additionalData": {"dHrOHnyDyUI1HS5d": {}, "mvpbELkJ88ObFt6W": {}, "wrhOwl8B3Axmud2u": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '10' \
    --statCodes 'tfYKNU632JyogyT8' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'mzX6fXhyfsoruqK1' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '67' \
    --name 'reiIz3VNzxlcnlp1' \
    --offset '83' \
    --sortBy 'oW7Qc2ZaRmuSlnT5' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["UQ4S9iSs5OzzlnD3", "AAQo6lush14ECUhI", "KcsGXux45uFRq7DZ"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'nsk2zssJULc7usCi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '1uqtuIZQ29lnMC0J' \
    --userIds 'PrSfHHJW7uw7i2wf' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.37848427989231237, "statCode": "T9VfqxscfFb6CKVA", "userId": "8S6wpw20XYoZaCFA"}, {"inc": 0.23774410103770183, "statCode": "BUuFLzW4w4zYPkXg", "userId": "1u29Xg6M7zGs72SD"}, {"inc": 0.7778412029979166, "statCode": "TzPdZHRqrGCRa4fg", "userId": "FS31TY3VRestWheK"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9940442993232128, "statCode": "IizS25goAluqpQcd", "userId": "vdgIB1EEylCjeEYO"}, {"inc": 0.8936566975302702, "statCode": "A5ltTTN1l5RynbAu", "userId": "xKvmYal7ZI6wBTqv"}, {"inc": 0.10032270650231512, "statCode": "S1iycuJBmD0kHDyI", "userId": "uwKK5nz11lfASpDO"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Fl640t3DMNqAH8pU", "userId": "NeO0xGUk7a7ZMGtf"}, {"statCode": "zjH4Tm0pg6cmFizc", "userId": "yTxlu9wSQUpc7nHn"}, {"statCode": "71W9FirMPI0SvUHH", "userId": "JtgrOjcla4D06IQD"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["5mvofuqe4s6dmENs", "rQkRdYH7t8mlc1WM", "GDRMj5cBP9LCt8VL"], "defaultValue": 0.04628744095672366, "description": "L2XWIrrYRLPaJQxF", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.7852259134910297, "minimum": 0.1315818242813439, "name": "lssHixQvEehlPIYC", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "qu9MzFA8EVajWLKg", "tags": ["rtjHyK5aCHFhblfn", "NKzazs12ML0Zq8hT", "uVtDHZCuHSvCcebi"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'QI77BFUpvAqwiT4I' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '12' \
    --sortBy 'vd3oX2pbyYP4HyBN' \
    --statCodes '["A56Azp4NoysqUwBi", "sVfIovs6JyxA2X5q", "jZ6trW5UKkbaT9OH"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '8' \
    --sortBy 'yDEaEKGqyTaOlpvx' \
    --statCodes '["I5oKoTgHvVypKOOY", "VAhlJwRCYCmvWZDn", "Jq3yoJ7hrGnepXga"]' \
    --tags '["sT3X2849QiOSfTpL", "Zw6UbUUTTD00fsCz", "95mJFqxB17Ja7s8W"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '8CzfcBg7r5ksBqRL' \
    --statCodes '["pmOGxJNs2ISPMkQS", "380zcBV1BE0oCqGq", "NV6SS26fdizYRZmE"]' \
    --tags '["gEYKofL9uAfg6wuZ", "EfQgzKtG7XfLtoap", "BX7Fi74XCScqOJbG"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'nRTQJNUOAszExsL4' \
    --namespace $AB_NAMESPACE \
    --userId 'w3NxUkjkKYmakgbO' \
    --limit '56' \
    --offset '5' \
    --sortBy 'uzsytBZWsacjVJTL' \
    --statCodes 'gw8J76u7jFIpE7DI' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'imaUJoxDgZHgihkb' \
    --limit '40' \
    --offset '75' \
    --sortBy '8PN4KwvMVmLz5XWH' \
    --statCodes '1bhyZxwehwBzvLj6' \
    --tags 'ikkJZYkibQ8exvR6' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3DpEanTLS8Cp2K6c' \
    --body '[{"statCode": "gPs4hD0k9Z4QFTtc"}, {"statCode": "W2s7W2azsX6B8NOv"}, {"statCode": "LIlsm8qRwFx3oiy8"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'ABaQWWr4gz6Si1Nq' \
    --additionalKey 'YV3grqDUZXWpynEq' \
    --statCodes '["raOsy7Q4vPev5nVI", "oscnY1hdrDKVLYfg", "7XqPWBcUsEil3eQQ"]' \
    --tags '["jv60TIgjnHghyzWW", "zyriSUzReVBkBhAn", "iZDMXsGfpL82Rkhj"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '6pF7P6Cf5N54yfzl' \
    --body '[{"inc": 0.5458285957452488, "statCode": "9aC9XJYsRL6PV9ge"}, {"inc": 0.11915791548284904, "statCode": "DNqvSsX6wh6QRL2y"}, {"inc": 0.2790916111277779, "statCode": "A5SJdwfB7641iH4x"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'MN1fITp8AOlf7m8t' \
    --body '[{"inc": 0.9221004540326522, "statCode": "lBGo3gNpfLyxKwud"}, {"inc": 0.8023021347692537, "statCode": "rgK4cFHa0nQqyQI4"}, {"inc": 0.19360309825277355, "statCode": "fa0Xgs5em9Xi1MMh"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'ISbctPsiQ72wCn8y' \
    --body '[{"statCode": "G7d1CuRCSKvBGips"}, {"statCode": "uGMU4TOSiaJgWo2t"}, {"statCode": "gpkIz5pPY2fEai2Z"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'ecVJ8pQHqPcVhqDr' \
    --userId 'KZ5iEgCf7PtdGsaX' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'VaKlJJDNFCaAGP0o' \
    --userId 'ixUZMwXwbSzhrHBc' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'hkbNTxI7jkB0X79I' \
    --userId 'FCS4ipGyPkmFTRaP' \
    --body '{"inc": 0.005661104028322539}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'salIAtapRW0LOa2P' \
    --userId 'J4CtKJqyAHhBHzNT' \
    --body '{"inc": 0.43040678190450354}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'v7IwlcmFXDZ2AQQE' \
    --userId 'dKMY2PMVbEV20U3U' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"XFCBPtxB0YYDulPU": {}, "TIjz2b7yb4ZyZUWd": {}, "U9qeUANLXMaR4Cv3": {}}, "additionalKey": "uxLnNFGdlAZD70Sr", "statCode": "qUISv74TBZK2pvvS", "updateStrategy": "OVERRIDE", "userId": "9mGok7om5BYuUqBo", "value": 0.4570446075012724}, {"additionalData": {"GS0gNSgZzRkxwmAT": {}, "zPsyNleKVSgYZMUG": {}, "kFLGcAEIXx31pofs": {}}, "additionalKey": "iUntAPWdAG2myhln", "statCode": "pwt9SK8xheOBwvu3", "updateStrategy": "MAX", "userId": "lckwKlrs8M8wS7mD", "value": 0.5519298603894017}, {"additionalData": {"zhiLM4OxanXKbdS5": {}, "qwJf9ztXmBEU0lHg": {}, "r0nFUg31qOzIaSjw": {}}, "additionalKey": "e7o8Ll7TlupOHbR1", "statCode": "QNWWKpN1MtbUOkg1", "updateStrategy": "MIN", "userId": "OhfZCG6jT61gVW3T", "value": 0.348699325902339}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'K6mHrTazuoxnj3Hg' \
    --statCode '9PsG0DfvzwPb5Egb' \
    --userIds '["JPg1J5CmfDRiyCzC", "TP5LgzmaZAx9sxC7", "WWWtcivsGJRV9U7M"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'lR2zf4oCHHGFbg8l' \
    --additionalKey 'Vih2eF5mDiMq61jw' \
    --statCodes '["NssxO0q91hgyC7xK", "f7U4QNfXmaNFbqcY", "JMvjwGG3VUeEvJNQ"]' \
    --tags '["BNm7tEBbb51EMzkB", "1aSdbrpqW6zSlnFd", "eA7tM7T204HgoFm1"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'L4wfzqC8kdtaUf6w' \
    --additionalKey 'zc0ky6Yym7CFVeLG' \
    --body '[{"additionalData": {"mB2bXScWl72BmznE": {}, "bi2Z4X0BUM09ZvxF": {}, "fSFMZmWYm9PIpqcL": {}}, "statCode": "8OgDC3aN0NgQfdIv", "updateStrategy": "OVERRIDE", "value": 0.5677072213888525}, {"additionalData": {"NAHJGl06MmTl9x9a": {}, "XquXVj86i66ioYdW": {}, "7hDkfjbru2PrrSiB": {}}, "statCode": "6tfrXeV3vdeVSSBM", "updateStrategy": "MIN", "value": 0.5103179116821929}, {"additionalData": {"H5qfiHZ4cQyMuGzo": {}, "J6cYWJ3RX3gMAKye": {}, "ZO1hEI8xQybq76kL": {}}, "statCode": "wH6q3zTYUwou1iS6", "updateStrategy": "MAX", "value": 0.12049587948981544}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'bBjIW7UzhoTtnY8g' \
    --additionalKey 'ayEne59qZlS5lUSh' \
    --body '[{"additionalData": {"4FoR5hhDjkxEBR0z": {}, "wO3vGkvQtwmzYGwT": {}, "1z0cZWWHRaN7t4hG": {}}, "statCode": "BfusEFNorSYYsbPV"}, {"additionalData": {"tistkJxcGJFrQhIw": {}, "4Hy6wDNq6Cane5vH": {}, "YEyJRKm0azMdtloo": {}}, "statCode": "9phI9REAc7fMN1wh"}, {"additionalData": {"p4qHhPdSKSlktoN5": {}, "HOBHeYFCJofCZIzx": {}, "uZA6i4SV6spZfiYg": {}}, "statCode": "ShiM6nDQ3YvwiXp5"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'rSFMwwzZexpnQMR9' \
    --userId 'vAuPlp4B51Egh1k8' \
    --additionalKey 'huD3aMga5hW0WYt9' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '7oHqd6sEgT5IKzGW' \
    --userId 'y3zR8BI9Zq7wA3vN' \
    --additionalKey 'KNAJVmrqXmGWsKUY' \
    --body '{"additionalData": {"Ct3WVGWSIBr06dAR": {}, "qIMfh8RqGrD0l4cs": {}, "7A6pvcic63plk5I6": {}}, "updateStrategy": "INCREMENT", "value": 0.2404088869619625}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"pl8idjJ0qMa0Abyu": {}, "5C9Bm0XQ81xllqTg": {}, "ViMRFjyN8AQlVDzo": {}}, "additionalKey": "rAwi8cNJu5TlqzO3", "statCode": "rehTjZ4dJatKyetm", "updateStrategy": "MIN", "userId": "kxfEKa3UDVPY2omz", "value": 0.23904347445968244}, {"additionalData": {"PJKa77nxOs7KqFkI": {}, "5g9nn6zov5gjSs7A": {}, "aIUcUYUyOdcuKNtI": {}}, "additionalKey": "LlK9n9azURyn7lSy", "statCode": "ksHFnspirKK6owLQ", "updateStrategy": "MIN", "userId": "aaUoRG8wxObXe9Gb", "value": 0.4449028618931513}, {"additionalData": {"4gmmHgPmac1OxjBz": {}, "hJXyk3qSIAC0JqbM": {}, "NWjpn83l8PwnjTuR": {}}, "additionalKey": "rSw27eBG6twgFzLk", "statCode": "UUmaFHpWeO7YtLaX", "updateStrategy": "INCREMENT", "userId": "nPeBKtB1JdvxaZQL", "value": 0.13158050209701289}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'KAD8NGlrqpd0G7Kk' \
    --additionalKey '9R2CG0CeP8EiRwpF' \
    --statCodes '["5mZpnzki4XgMWW3E", "V6W12jNWrMhk0oNs", "4ZKxwMhzHSj0DTc9"]' \
    --tags '["BH84eaJWB5onVaDz", "D6iyHJUayCyjg2Wc", "wqypAWKHDJfa1obK"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'UX6ihhfFYD8a8TjG' \
    --additionalKey 'mcAeST5LlifQjdj7' \
    --body '[{"additionalData": {"BvzfTBfR2Tb9qc8g": {}, "wlWXRgmxzlGbIdbS": {}, "C8mM93b5WFWWNQi3": {}}, "statCode": "e0OwypJ57Am8kCKX", "updateStrategy": "MIN", "value": 0.3083447042577122}, {"additionalData": {"IoX1lTQOUaePCH1F": {}, "FdOOzCX0GC5JwBXB": {}, "84Y2kv751JKkdCXM": {}}, "statCode": "KJEX2LMQBFpnnZdO", "updateStrategy": "INCREMENT", "value": 0.07149078891676741}, {"additionalData": {"iaJRGhQBcfnnEKPp": {}, "WZD8BXYPkw7VfYAD": {}, "fTEw4L9HsxQ8qmHX": {}}, "statCode": "tUQnKPot2BgrwTBm", "updateStrategy": "INCREMENT", "value": 0.879242897935604}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'i6ipC3Ng9tEm0ykB' \
    --userId 'esMosgiASsCwaQIi' \
    --additionalKey 'xgtqGNTAesKi78ZI' \
    --body '{"additionalData": {"Gthbc8cwNQxps4VF": {}, "heDSrOM3rOE0UwL4": {}, "jV0YKimoEHHpIHcq": {}}, "updateStrategy": "OVERRIDE", "value": 0.518553509816776}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE