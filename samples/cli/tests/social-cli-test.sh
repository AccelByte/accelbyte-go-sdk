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
    --userId 'Wb9yJ48kSTlO4FO7' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'f2y4sCuuOApZJjwn' \
    --userId 'LvA4UUBCFejdZNOB' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["JLiwQBmc8qO0xvU3", "EWXn7GV6sYQnYVlJ", "MBtwqo7Spmx4wi7F"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'Vz8EsFCu4GHaD5qN' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'xQYvRT53flSglhFA' \
    --body '{"achievements": ["vNuvgPNgSWOQWgMN", "CZr0tYxwdra6WBGh", "o3ZJbNUXqx2VaVda"], "attributes": {"YPVWI8dOHOxeh2HO": "ZnLBgj3OU6PtQOko", "acvX5eOwNNXHn0fu": "CdX0r3F58WS07hnf", "2nnZOn3Vr2EIKrOL": "RZnIwTfKPQtZsmMZ"}, "avatarUrl": "Jkax7JvPZgHGapwF", "inventories": ["ArhE0kXdBCAC8cYg", "6jmpBknVtVPPl3gy", "tpxhhMQcgp2wQZgd"], "label": "NsUqt5UymdDNZEuI", "profileName": "nm1m3Hez5VwpPRom", "statistics": ["gCiZLa4TdZKyTRkp", "7b7Fb2SOgq2sJEjt", "b7hmiM9JhF5ZdNDm"], "tags": ["rYwexisIxLOAcdIv", "AnxmG4RZrfzXuDW5", "n9z35UgmvGHUJbWF"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '8Yttfhx1gDv3wvxv' \
    --userId 'MkDaQgZkEj8abpfn' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'ANFmOUwD0sgGzToZ' \
    --userId 'eRCAo8GWEhNdZZev' \
    --body '{"achievements": ["sairGTNTspaqfNz9", "A3p9bgHmejJImfkK", "RgOh9nxmNU1YnQdL"], "attributes": {"3xggvZJ1BC2SLvV4": "FoTmfGuDuOx9ru80", "38JzNmExpNAoLypz": "pWRVrahhALuFTLuW", "RVNgCiQ6kkeRCQRn": "qQ5w75AdNfVwiLWv"}, "avatarUrl": "DqLs8h6VYsmdXO1N", "inventories": ["D6QCpx7Br8md3vYI", "4ey86lHDvcVF3RjR", "JfRWm2xs7cfKXZlq"], "label": "2egvkBUMnUDsk7hD", "profileName": "ZF3VO84xV8YGlRWr", "statistics": ["EkGZAujuTZj5fhF7", "abl8OyET2gdEEA7r", "s3AKf3D1kfg88g26"], "tags": ["X9wmF4pjbLqOYPqv", "mE8TmJo9SVbKqurF", "dRebJPH2c0SZiMmq"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'u2P9zneRuSBFPm2b' \
    --userId 'SQeVjeHWPKAZXpsc' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'I1WAdpfpLNaI02tI' \
    --namespace $AB_NAMESPACE \
    --profileId '2f6OcQljZ2QY1uAA' \
    --userId 'vCLjRrK5MwXryEkt' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'P0LjwVwHZJaoxou6' \
    --namespace $AB_NAMESPACE \
    --profileId 'k7CRWbMKuXcSpocP' \
    --userId 'PpX5UbfKQOFykn38' \
    --body '{"name": "4tLz0RcYCbGJLhBD", "value": "oKZ9heASKZKjB03r"}' \
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
    --limit '90' \
    --offset '65' \
    --statCodes 'JW5sYqEbbxjYGOLj' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'Mz2gFVPWkqE8LOXR' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '58' \
    --name 'lR3So7mi6pvzglFc' \
    --offset '50' \
    --sortBy 'HTFFrktOUbgTINkd' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "3IOEOtZNGZcICsbg", "end": "1980-07-02T00:00:00Z", "name": "j2H6SPHUCYmRjnwp", "resetDate": 98, "resetDay": 87, "resetMonth": 41, "resetTime": "fvL4ykUloA5CHRAI", "seasonPeriod": 70, "start": "1996-11-05T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Edxzmirozt3DmWmb", "zp3RNE58gfazsKsy", "goP2kcNsXYwuKPQG"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'cdE2kkx8bkdazyae' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'LZMUPK0L3QeswsKg' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "Bf03gTclDjBcRSMq", "end": "1983-03-08T00:00:00Z", "name": "Wfxg042xWOohaOFm", "resetDate": 44, "resetDay": 15, "resetMonth": 51, "resetTime": "NdLf3xhCFsWYYrIi", "seasonPeriod": 26, "start": "1972-07-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '18rrUrOdb11QThIg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'AShBotfHFlpmheTY' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["WYKhIMbg9U6vkQGe", "Pr6HTBFwmy3tho0x", "6qInRmAwlW0Fo7Mg"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'GTMJPrP83BxH6eKp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'W8favXZWOV2H8vWh' \
    --userIds '6VTNV5W7zrOttEcT' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6772803597292388, "statCode": "1kFHPViF5LYznkON", "userId": "I11FwBSWeZvUynPQ"}, {"inc": 0.22297173391051328, "statCode": "trsQ80bm1mdrLL5C", "userId": "oje5NAibRWICtweM"}, {"inc": 0.4317907057686532, "statCode": "tvJlZ7AmO8SIh2BU", "userId": "q2yhpfn4d3GKlMEO"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.028986939176930737, "statCode": "83bLM8d443lBJAeE", "userId": "9PI5cXbfvp9l65fu"}, {"inc": 0.9661055754498736, "statCode": "21GrnheaF1Rmpfhp", "userId": "bWBOrJaJ9ulkeVue"}, {"inc": 0.04425585011070776, "statCode": "R3irVNuA2Gx25E8E", "userId": "wmxPf3xWI3x9W7LC"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '3IQHL9EAfDNqj4BK' \
    --userIds '["B57vWtJtskJMpsyC", "5cH2QimgyAjsI5fY", "nSuaRTyuJbvNAZOG"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "FO2x6JW6Tx5a8JTX", "userId": "FzdxfwZy7uJYNb9a"}, {"statCode": "npAUCYN0cChOHGhO", "userId": "TV28qXgm8QncsgS6"}, {"statCode": "1YFwVTUCjdacyfU6", "userId": "mTucnCuvtgKboqDH"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'fYb0PaB8o5NTVfW2' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '89' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["6c7B3oimb9Pu2P4U", "8uNzD6liRvWQu4YW", "vnlP4LoJMdnv7Q9P"], "defaultValue": 0.9395356088142625, "description": "X2G9XIsPZ26qlpla", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.03232662735858183, "minimum": 0.5844037064934152, "name": "MtrWEl06jkn61soX", "setAsGlobal": false, "setBy": "SERVER", "statCode": "cL0wIDJzN5FvVLZj", "tags": ["aEmm3e7vxzAKC6Vr", "iQEjWjkk5k2TbXMJ", "kWRsVc73DqbDooNb"]}' \
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
    --limit '95' \
    --offset '39' \
    --keyword '8bS7i755VymaLMNq' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'fjniibgmqBWfPvSW' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Oi2Ii975rZW0oIUz' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'GqBhYJcmBSkuXw96' \
    --body '{"cycleIds": ["yDCBjUC6RsZRRcLM", "qMmoqMnK2n6csd9v", "fKagyQSThsqIiIvP"], "defaultValue": 0.10822562492525922, "description": "bGQKNVccoOhuE2MM", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "wGIY1GrCN38I51pT", "tags": ["FluiEwUdPj107Q2J", "hFxxQS42IIvOnMGY", "TQGecL4ZmLHXeDNZ"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '0IsKlpxDUhTd2QMw' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'BqfgA9MyudgcigeM' \
    --namespace $AB_NAMESPACE \
    --userId 'ATHpqXZPsEDquBWf' \
    --isPublic 'true' \
    --limit '45' \
    --offset '16' \
    --sortBy 'YmX4wSynEQeO1uwQ' \
    --statCodes 'grTWDfBB8LZgyPh3' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '5NDSVAjlYCnbsIfk' \
    --isPublic 'false' \
    --limit '96' \
    --offset '86' \
    --sortBy 'Dcev8R9cnnNlBgPT' \
    --statCodes 'DnAirsyiYY2QVAt2' \
    --tags 'GdV3PzSziSoBRVNv' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'phLAWr0gNJa77Lfe' \
    --body '[{"statCode": "AZtAdAz331tSBpZU"}, {"statCode": "GmzjMSG8tUr1bNeB"}, {"statCode": "2RlrBu45IPXhVe36"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'RD0xMWI2BdyV5alJ' \
    --body '[{"inc": 0.8646276351235141, "statCode": "biLNxWXdHC795u8x"}, {"inc": 0.1372467838039283, "statCode": "j61ktyagur67pTHL"}, {"inc": 0.28001416468505735, "statCode": "3xbgkO2kU0qxyvaQ"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'UPyASzwNRPObIkQs' \
    --body '[{"inc": 0.2830919487236494, "statCode": "UAe4IpI1kLTSiUWJ"}, {"inc": 0.6147506019888841, "statCode": "NSSpQiCVRuRU0X4t"}, {"inc": 0.050030727907495076, "statCode": "eaIjt2PNw0kxAKUp"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'g4OBxnRULYwyCmO7' \
    --body '[{"statCode": "aP4r4vySSkvHo18w"}, {"statCode": "zWSTl3AymcAN84B8"}, {"statCode": "Aa43f4rBoF0uQOMl"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'AU39bmCGfD0DQwZB' \
    --userId 'asspTemvBJEi8Jg5' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'djA0kSnwwLCJT1bk' \
    --userId '36tfI57XtfY9V0m0' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'K7x713iMlYekrgY1' \
    --userId 'mixIyeJlltVqiH30' \
    --body '{"inc": 0.3088981819134846}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'rtIqX2x9FRRju43O' \
    --userId 'hmriOJp7wUNsBa9J' \
    --additionalKey 'W6xETbnYGtST47na' \
    --body '{"additionalData": {"VEKel1TtWsHjLcbh": {}, "mvQBwhws2NicTNM6": {}, "MVxSG9qEa6fHnIjp": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '87' \
    --statCodes 'cNjaXxQqwenEMhSu' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'AidpFR0OtMaDqCGh' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '86' \
    --name '3aIBdxX1iTffTdN2' \
    --offset '61' \
    --sortBy 'roYAaF7rJBjzTSWH' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["6wA4HIL1k8rhoSib", "nWnyohIdpFwfQ4V9", "zrGMrMmUMr8Gua7n"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '5frc1m8BIkyY98Hb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'LY9hHzmIyNaDzFu2' \
    --userIds 'JYMTRvsZY5mDh78m' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9007894544354254, "statCode": "2jSTKOqufHcJhdRm", "userId": "SL1tJKN4UNNlHBBS"}, {"inc": 0.7597293678137172, "statCode": "TJUms2xCV3Qt3ayi", "userId": "2xR3qnZzFuptMiUv"}, {"inc": 0.0692076693643997, "statCode": "tKv6PUWJQys3krew", "userId": "KfIAV2UNbcDg0Vbr"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2776133775326034, "statCode": "ohwxTdxxHilA4BgE", "userId": "NHR4z4lpFE8f9LeZ"}, {"inc": 0.6018789807386705, "statCode": "02X2OyzOfAKvCwvg", "userId": "H7t8AoOItBGjvrNj"}, {"inc": 0.06261418979716415, "statCode": "3dHdpXBBgUAimnpR", "userId": "c1Gz8HWm9uVYfSlP"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "qQc6FOwtBm3B0qAx", "userId": "3uzHL3DhXFxDyIzQ"}, {"statCode": "c7VyDcwwFGvL4Cgi", "userId": "Sepdb3XHCExAG3Vu"}, {"statCode": "H05wfwq3DEV5Hsm8", "userId": "OvehCi6C33sJpZSY"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["WhUXGavhQ4N8wryI", "z46nKJ5E4pgQWOz6", "hndGopWiROGFqEaU"], "defaultValue": 0.24930033537416085, "description": "IVsLArdqWFIg3prc", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.6049230904440093, "minimum": 0.19397723771454445, "name": "NbeWsrNZykAVjV8P", "setAsGlobal": false, "setBy": "SERVER", "statCode": "XVIWTMlIXtQ9ao9b", "tags": ["uSIW0kmjiwbxtjtp", "41YHZsyTJ46DTQTa", "YtOL20JMgiWsImVy"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'dSo4chUgEFaLURPB' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '15' \
    --sortBy 'oy04M4mOCJrJnEqV' \
    --statCodes '["FCZt26PtAy6AHuxH", "0OoZWMplayBoizUn", "ET8VdXXitMs4Sqyx"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '7' \
    --sortBy 'fWadRYTC0tx0aFNl' \
    --statCodes '["yqdtpUaRwOhvcfMJ", "CxPDIZPemgLxRLOs", "3XcMzaj5ZYW3XdDn"]' \
    --tags '["pJYsxzApgH8nT3gd", "FNF6hOVzLCCDq8xA", "FItQgOvnR8qUUwxL"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '200YoUNcFhXncwrg' \
    --statCodes '["wvzUu8qsCZjeESpo", "Nult2MVr47F6Jp2N", "03xEGRi7rvzBS6Zf"]' \
    --tags '["ejK6RFSW09CA2F8f", "XVWrGpKkl0iaHeWR", "9H4X8qlrGCfBgvvD"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'ZpimDc08XRIhQ6mJ' \
    --namespace $AB_NAMESPACE \
    --userId 'mA0ajDg3hqvxiWt8' \
    --limit '88' \
    --offset '67' \
    --sortBy '29G8ehKjLLDBg5RC' \
    --statCodes 'tP4BiGGn0CJg30Yt' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'YeT028C5nolcSy6x' \
    --limit '90' \
    --offset '94' \
    --sortBy 'AmfIwt3BnFojg6fj' \
    --statCodes 'x3RCjqqRGgk5LIkE' \
    --tags 'Zjx39aXR3HuNwiaF' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'vCZGmbVMPfJWBUH5' \
    --body '[{"statCode": "Pv2rPl2yMYr1RJ3c"}, {"statCode": "8EibOVSZbw4J1ZtP"}, {"statCode": "MzFRrKtciiGaNvjt"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId '1SKcLiCfq0JA1AqE' \
    --additionalKey 'pbisBneU2j2kRZfi' \
    --statCodes '["xhFImTkgk2tSiMnR", "0NIURmqbRuH1guwx", "1ZTEtgKBvBEKHdoT"]' \
    --tags '["k1PzTyp77wIz8Pc6", "q2o13rhL4jPiGx7C", "9sV1VAriArm09Utc"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'XRpwBMTGJLxmsvPJ' \
    --body '[{"inc": 0.7452920438644641, "statCode": "DeBbBZXZ2XzZ9qXp"}, {"inc": 0.2595357121051428, "statCode": "FFekHVZhJEW5Haa1"}, {"inc": 0.9007024872437148, "statCode": "FKSQSZhuXT0cfzHC"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'KgMA4Gd32TQRmZc6' \
    --body '[{"inc": 0.31075571573867666, "statCode": "7EZXBwDnzUhvUjWb"}, {"inc": 0.16083120459168154, "statCode": "FyEZpS7JJOX6PJbp"}, {"inc": 0.21102744841096555, "statCode": "RwiJg2W4Gt6t5yUX"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'W2fWOrHx6uM5rQ6L' \
    --body '[{"statCode": "PjPNwCrzJTGF1vSF"}, {"statCode": "TlEHexr5Uax00za0"}, {"statCode": "VlcgYzHUe8ERAs7U"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'ZHGw0uzGQTbYPgQo' \
    --userId 'q3ZJVziqWRDfZWZv' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'o5FlSUAGuNWj9fWF' \
    --userId 'vVRfLVPV7UKBWhII' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'iESdhnAWX62uxBav' \
    --userId 'nSrSeigPfaYlpDi9' \
    --body '{"inc": 0.5027836132748318}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'vir8SP9qcVUAziWD' \
    --userId 'eFpEWozPgPRKYXN4' \
    --body '{"inc": 0.6664395993812678}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'yUIipLG8NXCmxAzx' \
    --userId '1gaNnfuNuA4plGx5' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"K5hzIkoBxeLEb1HM": {}, "Qn1Ua288cmt5B8hA": {}, "ZmOICsP6qjsojdPT": {}}, "additionalKey": "1belirdzK2ZJR7l2", "statCode": "ocSceQ7JAgEGdWvh", "updateStrategy": "OVERRIDE", "userId": "BShM7IRhNqoSjQ63", "value": 0.22350036950478802}, {"additionalData": {"vxf1aXZMq1n9H68L": {}, "KO5xcZkiLjCrQ5f0": {}, "iMxnYFJZJJ4sEBrB": {}}, "additionalKey": "fze8vGsFo2vKmfsS", "statCode": "Y6w2i9jXNKoB1zuP", "updateStrategy": "OVERRIDE", "userId": "PTh3YvpUSvUsOE1T", "value": 0.5110937374620205}, {"additionalData": {"0cCGRghQpQuypAcD": {}, "SNoGxq9tpIYsGxBl": {}, "AOWEmav9T1ioBBUp": {}}, "additionalKey": "vGBy7QGJeynAfJYC", "statCode": "UqdubArVwjE3xIjS", "updateStrategy": "MAX", "userId": "cLKkCviREpQn9uNM", "value": 0.37484090136133996}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'ramSe2IR9a52ZKuZ' \
    --statCode 'sk4JqdpWKn4LfSHj' \
    --userIds '["bJpOoiDcdwPQk6fh", "KrHrZXeti4UUYcUq", "eSNQkaVUfZAbT5DX"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'D2U2rnPizQ9RlRln' \
    --additionalKey '8vmItDgMoPBaBUoG' \
    --statCodes '["VtIRl8qGKwz5kkU9", "Yd9JxlfS0rNGc19F", "U8FoRk5J3ztoObZE"]' \
    --tags '["K9gJAMaKxSoMSqE4", "EH3sBPLM7tC3kvjj", "gIXA28veMNUnI2Uw"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'NVQDtOHdwYdUHGsG' \
    --additionalKey 'KOA6b99nGZOPkhjd' \
    --body '[{"additionalData": {"yTuzLq8VK6PtGZnX": {}, "n6OTcLcvT7SMKpLP": {}, "IZGtG0Mmgf2pfh6S": {}}, "statCode": "ZcpaRrwwLBI01fhm", "updateStrategy": "INCREMENT", "value": 0.25976457168155664}, {"additionalData": {"FHolsgkXjN5LO3rm": {}, "GOlM6yJGRrXKq1dq": {}, "DmCgbZDWkgdd2bsn": {}}, "statCode": "46Mg8DOtUzT2wBxI", "updateStrategy": "OVERRIDE", "value": 0.9230266570146735}, {"additionalData": {"ODDGdq6l3p0OTg18": {}, "gW22IIgmhaE2OP0I": {}, "UKrU3XsMCwHosrgp": {}}, "statCode": "6IT5glDzf8ua8RC2", "updateStrategy": "MIN", "value": 0.49881712099201647}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'uPZLHsukQOrR50vP' \
    --additionalKey 'm7UBtLcvL4p7Hmbu' \
    --body '[{"additionalData": {"JYLjBx8enFxpXCNq": {}, "fXvssFW7JfihA0HZ": {}, "w5BDoUoDdSoxBMqL": {}}, "statCode": "HK5KIhgcFyWADDfo"}, {"additionalData": {"rIQQaunBz8FenHvR": {}, "O2onYo0dEYkgB7zc": {}, "xRjuYEZN0z5ab10m": {}}, "statCode": "0vgHbMFFI2J0xuvl"}, {"additionalData": {"mNGtECZtm5KgjPSv": {}, "fD8gagDA9PHURRfG": {}, "3R9z7QZdR9tAwwlz": {}}, "statCode": "F2j7U0DXDe5Xr259"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'DE3f7unZZg9X9VtD' \
    --userId 'dNh94Y1PhxbxckvW' \
    --additionalKey '37jZyyazohGUtFFQ' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '111y6lEh2KVUwLEJ' \
    --userId 't0FmhhNvkzuJDXBD' \
    --additionalKey 'v9FfD0xlven7snxC' \
    --body '{"additionalData": {"J6PK1pWZ0tUAb9Gb": {}, "G1D8Xb5zKiXAwkXK": {}, "WiFAY0woguFBu8Qk": {}}, "updateStrategy": "OVERRIDE", "value": 0.876134474142428}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"GYRmuIljReLdgpk0": {}, "rpw1KWARE1dvkzai": {}, "mDInYhSCGa3b61wx": {}}, "additionalKey": "Q7sX6DNpALohlNWx", "statCode": "8cZOPvNDIqKxltrX", "updateStrategy": "OVERRIDE", "userId": "t52yD34vrUG4gSlG", "value": 0.7352962564386554}, {"additionalData": {"I9PmZVbrrzeO32Pn": {}, "27HgZp4a3fZbMdiB": {}, "KCRSLh1elQjGaNhd": {}}, "additionalKey": "h6npJI9xxJgdorjj", "statCode": "nk9zK1S7Wxt14zOy", "updateStrategy": "INCREMENT", "userId": "d1119dstnwFuclvO", "value": 0.4190861041520433}, {"additionalData": {"jrAbNRlUb0N6ICAs": {}, "5ysm3iQeOiQLPsNX": {}, "Z0aWoSf4oIXFziUQ": {}}, "additionalKey": "vylqztIfIUjRAWcH", "statCode": "xUwOVkwh0vXU6lhA", "updateStrategy": "INCREMENT", "userId": "gYDQNoMHrrIhorhr", "value": 0.3520395186469746}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '7igEM5qHlk3Zcz8a' \
    --additionalKey 'i0GaoqNgAO7cwhuJ' \
    --statCodes '["JSxyyQxqZ8WuOY2N", "djG7ZFIWIa0vm26y", "XU0PDZKyjkG9XgBp"]' \
    --tags '["5l4ZRC6bYcplYYU5", "yJaZED5WwJywDo2N", "TVwazdpbCJRHQ9VA"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'hk2C28A6FxsdQdDj' \
    --additionalKey '393GqYcHgOsxhZTB' \
    --body '[{"additionalData": {"FbOOpmCCsFzNi3tC": {}, "yyYlm63SHKD7ABze": {}, "1CeOFTkjdud7E7fA": {}}, "statCode": "pKUH8LV0V8PHCGZb", "updateStrategy": "MIN", "value": 0.6924829973508433}, {"additionalData": {"yVXjI5IJAqB6KFpb": {}, "TxQlnJmfwpq0I7SZ": {}, "c2ncV4GsckmIuDTc": {}}, "statCode": "sQk2W5Y7jFLRJYmT", "updateStrategy": "MIN", "value": 0.15691375569278987}, {"additionalData": {"r6Y5QbHsHG7GwPPK": {}, "eeYaQn9Zpccg6hut": {}, "VFseoutfUozXSJng": {}}, "statCode": "3wxi78QPCv9369Jc", "updateStrategy": "INCREMENT", "value": 0.4962212234993263}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'xFVwc5BR2d4BsQiV' \
    --userId 'P2roEkeofWWquSS0' \
    --additionalKey 'MP5nVJ8XYbB9JEqL' \
    --body '{"additionalData": {"KEfnzHiBV3w9nlXJ": {}, "U5xqOBniSA8i9E5Z": {}, "Fbe84FsKkQnIG8CM": {}}, "updateStrategy": "OVERRIDE", "value": 0.7175707388600677}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE