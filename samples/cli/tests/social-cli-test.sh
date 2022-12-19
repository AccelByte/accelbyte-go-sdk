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
    --body '{"maxSlotSize": 25, "maxSlots": 43}' \
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
    --userId 'LDlrrbD0' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'NrREzoUj' \
    --body '{"maxSlotSize": 64, "maxSlots": 89}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'Cs8ZWrVe' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'J78XuoNM' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'y0nz9QW2' \
    --userId '25NvOF7F' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'cuj1aPOZ' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'wDKbJJoI' \
    --userId 'dypOetqS' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["Ozf1hG37", "hBgVrRG8", "h2tJGOqZ"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '8617RGpA' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'SlS3vEtc' \
    --body '{"achievements": ["Au6xxhgx", "L1AM4SKW", "raSlsyLB"], "attributes": {"LznO1a0X": "1qxYUxQi", "cUvg0LuU": "7NWoZFh8", "hPykvvIS": "dk70fM9d"}, "avatarUrl": "XMRZTtmI", "inventories": ["pgzXRLot", "q9uMjSAl", "QKEUMw5S"], "label": "Dbd7LhW4", "profileName": "k1OCJcU5", "statistics": ["bXHsVfH6", "7GalGb9n", "1RF9cFXL"], "tags": ["dOJTallm", "b97ux9rq", "Nq9E9lZm"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '0ChkWPXw' \
    --userId '5pIGXjya' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'F5MpVhXH' \
    --userId 'YzS4zC8x' \
    --body '{"achievements": ["uZCpK9rC", "OKQ4kzjV", "xRP1T1zg"], "attributes": {"sdH94hgG": "ozeaZEpz", "VuUbM7qJ": "l64Ta8cm", "efkZd8Mo": "SYW5eysN"}, "avatarUrl": "7xanN94D", "inventories": ["WAlgHa2x", "He8KzoCp", "PHxzASnr"], "label": "Vgq1sJox", "profileName": "IJINfecF", "statistics": ["swPgA7Df", "koSa8I7S", "LMXTtJTi"], "tags": ["bnXslUZ2", "fmdNuoWt", "pQncMXDg"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'f8ioFI9s' \
    --userId 'oMAfJN12' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'AgsiLyhf' \
    --namespace $AB_NAMESPACE \
    --profileId 'XZZJaIgh' \
    --userId 'jYJijTo1' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'z8jTVTSq' \
    --namespace $AB_NAMESPACE \
    --profileId 'CKPG5kFI' \
    --userId 'by450ya6' \
    --body '{"name": "A1EivL8R", "value": "gr4pxdZR"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'Sop2NAY5' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'Aj0Dlsqa' \
    --label 'V6EZQy1H' \
    --tags '["S1lj4GAz", "QyBvxNsg", "Gh5K92xA"]' \
    --checksum 'RCunb3Nk' \
    --customAttribute 'GWN2GtNB' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'fh8HHnY2' \
    --userId 'TsQv4RiF' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'a7QYzrK4' \
    --userId 'KtiwHaxM' \
    --label '0Vf6VdJf' \
    --tags '["fHKHT3LD", "zl1qD6Br", "kWHPJg1l"]' \
    --checksum 'iGbbXKEX' \
    --customAttribute 'CUJ4KCjd' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'Uft8Bywp' \
    --userId 'f3WKDFkv' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'yWIZsORK' \
    --userId 'x8SWwAn6' \
    --body '{"customAttribute": "Bnii9nTT", "label": "EQOQcGe4", "tags": ["8HhXEfte", "MxJjmu9y", "I59DNQX6"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '3imwSehH' \
    --userIds 'd6B4ObSM' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7443410271803087, "statCode": "7th2cDFL", "userId": "TBYDtv21"}, {"inc": 0.2503939560505878, "statCode": "Alxwq1ov", "userId": "2bwLErFC"}, {"inc": 0.6972490800003096, "statCode": "Vz881gGO", "userId": "ZZm057fI"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.29297595621989114, "statCode": "4ZTAl07c", "userId": "xiYsykGs"}, {"inc": 0.11969806997883936, "statCode": "4qDppgoN", "userId": "b9Y7YR0P"}, {"inc": 0.19474230264821568, "statCode": "aPTuAPxB", "userId": "7oCVX9Jc"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'DpU42NFw' \
    --userIds '["posTDnJG", "0ZOsB6LL", "BZ56Tydc"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "8paiEMZx", "userId": "9QW5oRK9"}, {"statCode": "90hoVnm3", "userId": "y1BtjLu7"}, {"statCode": "qT8lJftC", "userId": "0csPSNlX"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.6129810918697036, "description": "gxvVM1Uk", "incrementOnly": false, "maximum": 0.016021117835704368, "minimum": 0.07532163166066397, "name": "bmQf0OzF", "setAsGlobal": false, "setBy": "SERVER", "statCode": "J2Ky85Fy", "tags": ["zm6vtdty", "zkJM0aXg", "T47mSNga"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 35 'ImportStats' test.out

#- 36 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '72' \
    --keyword 'w5WE2kp1' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'xB2dBfdL' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'HLBy1xSZ' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'HYZKNYlK' \
    --body '{"defaultValue": 0.012824815169278914, "description": "3KtA27zY", "name": "LZQV7hzJ", "tags": ["YWKmCW8A", "rEjcUu0R", "eWRfYnBM"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Nv8GjhCF' \
    > test.out 2>&1
eval_tap $? 40 'DeleteTiedStat' test.out

#- 41 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'qSLLPh3P' \
    --limit '31' \
    --offset '29' \
    --statCodes 'KF1BTPAG' \
    --tags 'PTxFZSNq' \
    > test.out 2>&1
eval_tap $? 41 'GetUserStatItems' test.out

#- 42 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'UhIxz19B' \
    --body '[{"statCode": "UvBZUBlO"}, {"statCode": "DuWVnuar"}, {"statCode": "z7nh3W3C"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkCreateUserStatItems' test.out

#- 43 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '0A1TX4dW' \
    --body '[{"inc": 0.9548743415075651, "statCode": "s3QRWR3t"}, {"inc": 0.939120254634686, "statCode": "rkMj4r50"}, {"inc": 0.23226874467601522, "statCode": "UEa1gDhC"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItem1' test.out

#- 44 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'OhhqyY51' \
    --body '[{"inc": 0.020076610923182137, "statCode": "ZU1QLpqp"}, {"inc": 0.3373727519152627, "statCode": "ybmaEvM6"}, {"inc": 0.32349785439514844, "statCode": "trglkQMp"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItemValue1' test.out

#- 45 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '2xbBmbLy' \
    --body '[{"statCode": "FIDApbpk"}, {"statCode": "sGV01FSH"}, {"statCode": "FMnZzz20"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkResetUserStatItem1' test.out

#- 46 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'm3KwCC2B' \
    --userId 'YumoLYIL' \
    > test.out 2>&1
eval_tap $? 46 'CreateUserStatItem' test.out

#- 47 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'RLQOgbsY' \
    --userId 'OjZ4ekJ0' \
    > test.out 2>&1
eval_tap $? 47 'DeleteUserStatItems' test.out

#- 48 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '94YJBgq9' \
    --userId '87NqCRAX' \
    --body '{"inc": 0.372190722062539}' \
    > test.out 2>&1
eval_tap $? 48 'IncUserStatItemValue' test.out

#- 49 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '7dNYYPxn' \
    --userId 'sbgs5l6C' \
    --additionalKey 'AjZDzWh8' \
    --body '{"additionalData": {"HAFNiATS": {}, "zmwdEgkC": {}, "r63Eawny": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'ResetUserStatItemValue' test.out

#- 50 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'cgJ3TWQN' \
    --userIds 'dVaAngRy' \
    > test.out 2>&1
eval_tap $? 50 'BulkFetchStatItems1' test.out

#- 51 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7774083635006919, "statCode": "BC6YrOmN", "userId": "LaiQoU5i"}, {"inc": 0.508672514782493, "statCode": "o3sTJAk3", "userId": "KBPpYvOz"}, {"inc": 0.3798377805517048, "statCode": "iDNcns6Z", "userId": "yt4g5w2H"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItem' test.out

#- 52 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9181407940037082, "statCode": "KFHIKdSt", "userId": "8lV19Pcb"}, {"inc": 0.26504071475131163, "statCode": "C8dkJdUh", "userId": "wdVR5LSY"}, {"inc": 0.8975460490169577, "statCode": "IzMBFZqs", "userId": "dqVMI7yb"}]' \
    > test.out 2>&1
eval_tap $? 52 'PublicBulkIncUserStatItemValue' test.out

#- 53 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "x8ZeKr4e", "userId": "6g2vGkiu"}, {"statCode": "KBWwYLsS", "userId": "BNrthOSE"}, {"statCode": "VRIZ6zj0", "userId": "00nalxpw"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem2' test.out

#- 54 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.6344303419228364, "description": "glMCcVgH", "incrementOnly": false, "maximum": 0.6150361573814355, "minimum": 0.31127590187724474, "name": "HSxSMeob", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "seXxDkWH", "tags": ["lmxLd06O", "7WDAaJh0", "AktLSS9G"]}' \
    > test.out 2>&1
eval_tap $? 54 'CreateStat1' test.out

#- 55 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'FnWlo4P5' \
    --limit '1' \
    --offset '49' \
    --statCodes 'vnz5Twj2' \
    --tags 'RvEmiaj9' \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryUserStatItems' test.out

#- 56 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'RiWZo38G' \
    --body '[{"statCode": "8L36Rytb"}, {"statCode": "heUEAyPX"}, {"statCode": "hmDg8OnM"}]' \
    > test.out 2>&1
eval_tap $? 56 'PublicBulkCreateUserStatItems' test.out

#- 57 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId '2FdvAI4B' \
    --statCodes '["8cCA1XsP", "lFdtiM6E", "s92n1ke0"]' \
    --tags '["CTLPSgAf", "I0PbTwcI", "6v6nveGj"]' \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryUserStatItems1' test.out

#- 58 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'qgQjFpBS' \
    --body '[{"inc": 0.8579866505604685, "statCode": "hxvUzwe5"}, {"inc": 0.357647535433786, "statCode": "xxlGKWav"}, {"inc": 0.35281517692744113, "statCode": "a3xRs5sq"}]' \
    > test.out 2>&1
eval_tap $? 58 'PublicBulkIncUserStatItem1' test.out

#- 59 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'QsGJHr7w' \
    --body '[{"inc": 0.5413791839519153, "statCode": "yMUGRqfn"}, {"inc": 0.7162128053637402, "statCode": "eXOObTjq"}, {"inc": 0.5848640324840858, "statCode": "rL12VwMg"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkIncUserStatItemValue2' test.out

#- 60 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'zpTUjXZ9' \
    --body '[{"statCode": "Lhl6ciKh"}, {"statCode": "lAzhVWXm"}, {"statCode": "U3RR0vNm"}]' \
    > test.out 2>&1
eval_tap $? 60 'BulkResetUserStatItem3' test.out

#- 61 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'mssIV2em' \
    --userId 'IvnXIagV' \
    > test.out 2>&1
eval_tap $? 61 'PublicCreateUserStatItem' test.out

#- 62 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'm9BqH5d4' \
    --userId 'Y5HvgN7i' \
    > test.out 2>&1
eval_tap $? 62 'DeleteUserStatItems1' test.out

#- 63 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'pxI1ORzF' \
    --userId 'SFqZN0rw' \
    --body '{"inc": 0.6382871642191547}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItem' test.out

#- 64 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'U1k5XA5x' \
    --userId 'MTU3ribE' \
    --body '{"inc": 0.9705138261927447}' \
    > test.out 2>&1
eval_tap $? 64 'PublicIncUserStatItemValue' test.out

#- 65 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'JHhpqbBU' \
    --userId 'rwoWWsZY' \
    > test.out 2>&1
eval_tap $? 65 'ResetUserStatItemValue1' test.out

#- 66 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"A8GPAQrk": {}, "OoKZjdJE": {}, "sNpRZJ2V": {}}, "additionalKey": "RHzEm5Bq", "statCode": "HopG73pO", "updateStrategy": "MAX", "userId": "bb7itKxp", "value": 0.9462558781356174}, {"additionalData": {"IjT2VSpC": {}, "C8OylszH": {}, "0RGgAS9n": {}}, "additionalKey": "Sjd6bjT7", "statCode": "6KY7oYm8", "updateStrategy": "OVERRIDE", "userId": "oR46BdsH", "value": 0.6344654430354073}, {"additionalData": {"oPFv84YD": {}, "X2nZ9f94": {}, "slvslCTN": {}}, "additionalKey": "4wYz1JEu", "statCode": "zfvV9hDk", "updateStrategy": "INCREMENT", "userId": "KTPBII3f", "value": 0.8720666790886987}]' \
    > test.out 2>&1
eval_tap $? 66 'BulkUpdateUserStatItemV2' test.out

#- 67 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'jTCFMHw7' \
    --statCode 'p1G6Mna5' \
    --userIds '["5AjUZ3Ja", "7dMVLimh", "Ni28daTt"]' \
    > test.out 2>&1
eval_tap $? 67 'BulkFetchOrDefaultStatItems1' test.out

#- 68 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'JxlsDHJk' \
    --additionalKey 'h8ropbPC' \
    --body '[{"additionalData": {"vAXc5kEy": {}, "RnTnoDh5": {}, "UiSjQWCv": {}}, "statCode": "HcFDMC2i", "updateStrategy": "INCREMENT", "value": 0.05643009925801379}, {"additionalData": {"GsII8B2G": {}, "TXqFsg1c": {}, "XQOACwtH": {}}, "statCode": "4fKbp8VI", "updateStrategy": "INCREMENT", "value": 0.27719802383586123}, {"additionalData": {"4csdGhdi": {}, "Bm9lsqSM": {}, "qWgTqndJ": {}}, "statCode": "Nudo9rXu", "updateStrategy": "MAX", "value": 0.6538355424681567}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem' test.out

#- 69 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'sEmgmew5' \
    --additionalKey 'usbZoJkF' \
    --body '[{"additionalData": {"0KCcAKSz": {}, "G5TgjsY8": {}, "HdQnlS80": {}}, "statCode": "R8JVy5fe"}, {"additionalData": {"D9AlXqpm": {}, "sPiqmAKX": {}, "cqRo3Z48": {}}, "statCode": "4w3v5OGx"}, {"additionalData": {"op80HMoq": {}, "mdlZzxUj": {}, "Pj8Z7SZl": {}}, "statCode": "q1oOl9nP"}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItemValues' test.out

#- 70 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'cshevAjo' \
    --userId 'jO4fxgMz' \
    --additionalKey 'CXzX2UPP' \
    > test.out 2>&1
eval_tap $? 70 'DeleteUserStatItems2' test.out

#- 71 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'D8twzenZ' \
    --userId 'dDKSd2RO' \
    --additionalKey 'wyN5GSUX' \
    --body '{"additionalData": {"S7DMxo14": {}, "8TwG7YFi": {}, "HDPV9b4w": {}}, "updateStrategy": "INCREMENT", "value": 0.8782994824121074}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateUserStatItemValue' test.out

#- 72 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"lyx1346h": {}, "8zyMZCF2": {}, "1ChEgmsD": {}}, "additionalKey": "QCRJGVhg", "statCode": "lHQNBadE", "updateStrategy": "INCREMENT", "userId": "00ncFrdv", "value": 0.24833406113740764}, {"additionalData": {"43Dpjk24": {}, "q6CkrTIY": {}, "QiBDYIJD": {}}, "additionalKey": "LG2Nt891", "statCode": "YXHWUiIN", "updateStrategy": "OVERRIDE", "userId": "i53lYGqj", "value": 0.1694274359878768}, {"additionalData": {"MRFPbgaA": {}, "h5CiOIo1": {}, "rwEsbKQS": {}}, "additionalKey": "LWQn3KPq", "statCode": "MU14QtyD", "updateStrategy": "OVERRIDE", "userId": "iWYmwEeF", "value": 0.04900268066813995}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkUpdateUserStatItem1' test.out

#- 73 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '333WsxzU' \
    --additionalKey 'SRKFXUD3' \
    --statCodes '["bAkGJM5M", "odFu8iQ1", "pxPeGZo5"]' \
    --tags '["fOn0cj3e", "eBTzX9nQ", "imgyQLLg"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems2' test.out

#- 74 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '8LUCvm22' \
    --additionalKey 'kUSqE0Eq' \
    --body '[{"additionalData": {"ECCxooRp": {}, "An9XzcA4": {}, "qMFm5vfQ": {}}, "statCode": "lpZQlHHz", "updateStrategy": "MIN", "value": 0.7291586669965724}, {"additionalData": {"RxRYMrVU": {}, "Q9XTR0jC": {}, "MuaZsVAv": {}}, "statCode": "gLL4sdIm", "updateStrategy": "INCREMENT", "value": 0.8797234112105545}, {"additionalData": {"NIIQKXfH": {}, "mW6KOQYv": {}, "X1PTd3XF": {}}, "statCode": "BEsowx3d", "updateStrategy": "MIN", "value": 0.9901738611069937}]' \
    > test.out 2>&1
eval_tap $? 74 'BulkUpdateUserStatItem2' test.out

#- 75 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'sPbBa96p' \
    --userId 'An5YuXno' \
    --additionalKey 'hzGjhhkz' \
    --body '{"additionalData": {"ZlfyzSsy": {}, "dJf8s6nA": {}, "1gCJdYmc": {}}, "updateStrategy": "MIN", "value": 0.026751982201231317}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE