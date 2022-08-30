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
echo "1..74"

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
    --body '{"maxSlotSize": 4, "maxSlots": 42}' \
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
    --userId 'G8sjNp47' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'B8kvbzU2' \
    --body '{"maxSlotSize": 95, "maxSlots": 56}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'bYRicuc1' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'EARRAxdQ' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'tuSLvZ6G' \
    --userId 'y8aj8giE' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId '6kgTGfK9' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'RGfnFfZr' \
    --userId 'y9hncYiK' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["YLWwA9dt", "mhJh2pC8", "t6r9rFD0"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'bEA9wd5B' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'LNpnG6ol' \
    --body '{"achievements": ["ik2LFtrX", "jE0OrKAx", "ldYeX1zF"], "attributes": {"rEdXrnT3": "U7y3jNkR", "j3OhZYwB": "2OwkoYcG", "335c1QfG": "1CisTPt9"}, "avatarUrl": "uESs0OS0", "inventories": ["a4JxeHPA", "yjvCGovp", "S3nZEulW"], "label": "QuRgWACH", "profileName": "ilUNzzQH", "statistics": ["PbGfsWEp", "RKxWyhkB", "uMKE8WFx"], "tags": ["lrZQdCcG", "KLTfzlP8", "aqN2k2cd"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'TuJ3ceTK' \
    --userId 'IIP2cNrO' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'VkjbYIsL' \
    --userId 'ADv8cnaO' \
    --body '{"achievements": ["IZaFyIl0", "avAHqkEP", "mZ8RfPrG"], "attributes": {"AbmpBA2q": "A84SZUSa", "MiML5gL6": "yD2raKpq", "HzbpuW6l": "o3AAfx8S"}, "avatarUrl": "Bi2NwVom", "inventories": ["bnB9zxqx", "LfzQKoRm", "yXIvZxEQ"], "label": "zqepYo7l", "profileName": "AQxMZDXZ", "statistics": ["xDfDS6tk", "aOqwMKNR", "dRnOGBBR"], "tags": ["CDPcnadc", "69moD6oi", "Y88aCv9P"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'PkWnfw6E' \
    --userId 'GigYQvzw' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'kWJHqXee' \
    --namespace $AB_NAMESPACE \
    --profileId 'Lk2iaxgW' \
    --userId 'vko9wCUP' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'hEbIJdGR' \
    --namespace $AB_NAMESPACE \
    --profileId 'ZHYS54jk' \
    --userId '9UMP1HwG' \
    --body '{"name": "BdCrmzqw", "value": "ikAn3iLg"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'uW6pFvXv' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId '0KwPa8Wi' \
    --label '7bFYw37w' \
    --tags '["Jgw0PPvN", "oVoBPy8q", "e0RhiixV"]' \
    --checksum 'oSifAP1m' \
    --customAttribute '9fI9VywL' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'Gc1cZYtq' \
    --userId 'pSoDDrfi' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'bMMGiVzb' \
    --userId '6Gwq0uoj' \
    --label 'MYMcMrMS' \
    --tags '["Q9fHzS6b", "lcQc6gsg", "4Ir05X5f"]' \
    --checksum 'NfxmHIUK' \
    --customAttribute 'L3lM9XRh' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'xdnOMAhY' \
    --userId 'FQLYcCcQ' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'cfr5tfWr' \
    --userId 'Wk2Aj0ew' \
    --body '{"customAttribute": "Evc8eYXS", "label": "EJolcENF", "tags": ["VkrN6H6f", "TiVjmbUg", "RsSAdUFe"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'k4feIoBb' \
    --userIds 'oDHErt1M' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6092684609021901, "statCode": "qG32yUZH", "userId": "EAtrbtxB"}, {"inc": 0.7681793102646619, "statCode": "Itp1tjdK", "userId": "1Jlr29pk"}, {"inc": 0.5274360451264121, "statCode": "Vm3I5fzM", "userId": "RB94lUO5"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.37091168152857124, "statCode": "rFazFkzX", "userId": "82zaeVnc"}, {"inc": 0.7013523924939923, "statCode": "FxqdfSg2", "userId": "mHDO8Yoz"}, {"inc": 0.5690310837278352, "statCode": "8wB3OvRL", "userId": "vFBfr6Zu"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'uJyxq5UC' \
    --userIds '["1VMqZjPm", "ACkKLhm5", "MhmbqHhd"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "r4Pl4US2", "userId": "UkAV6XvA"}, {"statCode": "d5HfMHak", "userId": "LQtPcVLl"}, {"statCode": "vdbITO0s", "userId": "VCLGv3yH"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.9576234220356311, "description": "LTgBwYBt", "incrementOnly": false, "maximum": 0.625117500706479, "minimum": 0.6843816809850688, "name": "icOkPkyB", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "5Az4s6oY", "tags": ["2ch8zRY7", "0q8SA0mD", "E1uXTWhM"]}' \
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
    --limit '1' \
    --offset '24' \
    --keyword '9s39NkU4' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '1AaJ1CmU' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Xjgchlqh' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ZXMBaXb8' \
    --body '{"description": "Vny8f9WK", "name": "1ds7uIbM", "tags": ["NP6kSfUh", "JL27G4Pb", "idsr69my"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'YGJDQLfo' \
    --limit '51' \
    --offset '55' \
    --statCodes 'CwcLehaV' \
    --tags '69DGb9t3' \
    > test.out 2>&1
eval_tap $? 40 'GetUserStatItems' test.out

#- 41 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ocraCpeI' \
    --body '[{"statCode": "CqEOU4C8"}, {"statCode": "4C5EMy0W"}, {"statCode": "J4RzU9cI"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkCreateUserStatItems' test.out

#- 42 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'rbBXTX10' \
    --body '[{"inc": 0.9061364099009643, "statCode": "GHFGiVq1"}, {"inc": 0.1904886325295666, "statCode": "S1w4LBG4"}, {"inc": 0.5559344992731817, "statCode": "7BS1iKx2"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkIncUserStatItem1' test.out

#- 43 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'u6cSqJC9' \
    --body '[{"inc": 0.940765082527659, "statCode": "w9cZ8Kpn"}, {"inc": 0.34762072235043884, "statCode": "Pxp6urfn"}, {"inc": 0.44825947848339676, "statCode": "fPBaMNWO"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItemValue1' test.out

#- 44 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'lMyuXutq' \
    --body '[{"statCode": "rTl8KJkS"}, {"statCode": "EqxbZTeU"}, {"statCode": "5mUovrTx"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkResetUserStatItem1' test.out

#- 45 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'sIGfbHpO' \
    --userId '29h6ruNX' \
    > test.out 2>&1
eval_tap $? 45 'CreateUserStatItem' test.out

#- 46 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'fhQdTwLU' \
    --userId 'iqQYMeH3' \
    > test.out 2>&1
eval_tap $? 46 'DeleteUserStatItems' test.out

#- 47 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'tutAu9Tt' \
    --userId 'ck4uDjx0' \
    --body '{"inc": 0.38434913753568356}' \
    > test.out 2>&1
eval_tap $? 47 'IncUserStatItemValue' test.out

#- 48 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'JhV6gR9Z' \
    --userId 'RRE7Ysxo' \
    --additionalKey 'Ubj2LFr9' \
    --body '{"additionalData": {"BObWdJd6": {}, "AyA6q6vK": {}, "whSHrNCy": {}}}' \
    > test.out 2>&1
eval_tap $? 48 'ResetUserStatItemValue' test.out

#- 49 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'nQGmmNox' \
    --userIds 'jfQsXaY5' \
    > test.out 2>&1
eval_tap $? 49 'BulkFetchStatItems1' test.out

#- 50 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.07139136153528125, "statCode": "g5MrGqyg", "userId": "AwYUSkHk"}, {"inc": 0.5024687895232363, "statCode": "QNI37ETx", "userId": "K3wLM1Gp"}, {"inc": 0.21972873256920122, "statCode": "2ZDYrNzb", "userId": "Epn1Rds3"}]' \
    > test.out 2>&1
eval_tap $? 50 'PublicBulkIncUserStatItem' test.out

#- 51 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.11063422582308746, "statCode": "1zJRurrE", "userId": "ohUOaEU1"}, {"inc": 0.36465735151624235, "statCode": "QG1iWZ9k", "userId": "d5XWm0pS"}, {"inc": 0.24511203298998763, "statCode": "qFDAGDqh", "userId": "Ct9WYomS"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItemValue' test.out

#- 52 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "9OW6ePt2", "userId": "B2eoNNmo"}, {"statCode": "OwOms8Eh", "userId": "pHcrsaeQ"}, {"statCode": "Xc0evUZW", "userId": "ghYkhRmb"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem2' test.out

#- 53 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.8530698035701014, "description": "uRNj2Bwr", "incrementOnly": true, "maximum": 0.6147099995562475, "minimum": 0.8195695687231035, "name": "SH1kE8NH", "setAsGlobal": false, "setBy": "SERVER", "statCode": "TQSQtR94", "tags": ["4bNpDRQq", "zrNzRa2g", "smNjKzxr"]}' \
    > test.out 2>&1
eval_tap $? 53 'CreateStat1' test.out

#- 54 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'xhyPg6nh' \
    --limit '63' \
    --offset '81' \
    --statCodes 'CatnKkTx' \
    --tags 'oRUpJD2Y' \
    > test.out 2>&1
eval_tap $? 54 'PublicQueryUserStatItems' test.out

#- 55 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'fs2LsytM' \
    --body '[{"statCode": "WD7CT7zR"}, {"statCode": "j2fNsgMV"}, {"statCode": "0eHx2mIP"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkCreateUserStatItems' test.out

#- 56 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'VaUY7Ay2' \
    --statCodes '["dM5Ftd6N", "tBWiJYv1", "ffsUqkQv"]' \
    --tags '["sKJlqdvd", "NFxcyJKa", "ozoYheGH"]' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryUserStatItems1' test.out

#- 57 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'q5NnkFI7' \
    --body '[{"inc": 0.6338646628541433, "statCode": "G1vQoXuv"}, {"inc": 0.061705825511480294, "statCode": "GKMGM8Z4"}, {"inc": 0.08143719467873745, "statCode": "NVkoVA6h"}]' \
    > test.out 2>&1
eval_tap $? 57 'PublicBulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'L6RZ7ENY' \
    --body '[{"inc": 0.8542968874698531, "statCode": "ewcmG78u"}, {"inc": 0.036163646014656714, "statCode": "gq59z2hl"}, {"inc": 0.042500164476196645, "statCode": "WSr86vbc"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue2' test.out

#- 59 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'VmWA3YDQ' \
    --body '[{"statCode": "6opyzst3"}, {"statCode": "g8uxXQQk"}, {"statCode": "XV5zFzJ9"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem3' test.out

#- 60 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'WpEscoQk' \
    --userId 'WBze9utn' \
    > test.out 2>&1
eval_tap $? 60 'PublicCreateUserStatItem' test.out

#- 61 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'jZ88IWyZ' \
    --userId '9AMmG9nY' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems1' test.out

#- 62 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '2HBW9sd2' \
    --userId 'rCKsDxQA' \
    --body '{"inc": 0.11964785983062176}' \
    > test.out 2>&1
eval_tap $? 62 'PublicIncUserStatItem' test.out

#- 63 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'YYEQgKFb' \
    --userId 'ms7Hl0OS' \
    --body '{"inc": 0.9345537197316945}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItemValue' test.out

#- 64 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '0UD1afNq' \
    --userId 'XQ3JeUtM' \
    > test.out 2>&1
eval_tap $? 64 'ResetUserStatItemValue1' test.out

#- 65 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"7ABv1kgS": {}, "VOY7bkHk": {}, "cksZ6fBg": {}}, "additionalKey": "sTBlgwD1", "statCode": "aYr8nsJz", "updateStrategy": "MIN", "userId": "vB4372Eh", "value": 0.1597256692395771}, {"additionalData": {"BQVXpVW8": {}, "TMNvG94H": {}, "jMHnuSmS": {}}, "additionalKey": "qiuzf0jo", "statCode": "oMVFKyPL", "updateStrategy": "OVERRIDE", "userId": "nFnVfVbH", "value": 0.03968128641572222}, {"additionalData": {"NKKPxkmE": {}, "0GeIHn2l": {}, "yKA7Xwcf": {}}, "additionalKey": "k0iy2MN3", "statCode": "bFTTEVaN", "updateStrategy": "MAX", "userId": "fj5Uou4L", "value": 0.061650803650953545}]' \
    > test.out 2>&1
eval_tap $? 65 'BulkUpdateUserStatItemV2' test.out

#- 66 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'FdfyBn06' \
    --statCode '9rsirPWs' \
    --userIds '["2PaOpObX", "hYrGblAo", "RQ34dVUa"]' \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchOrDefaultStatItems1' test.out

#- 67 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '7capjiK0' \
    --additionalKey 'FvBm4nZE' \
    --body '[{"additionalData": {"DjJuwnfk": {}, "pzxXi7iI": {}, "OElzfaLx": {}}, "statCode": "BFxsO8TI", "updateStrategy": "INCREMENT", "value": 0.030832635648980866}, {"additionalData": {"heF86hTs": {}, "5cl7f59I": {}, "y0LLXN37": {}}, "statCode": "jYvzRp5Z", "updateStrategy": "OVERRIDE", "value": 0.7313196506483354}, {"additionalData": {"GMEC6WVC": {}, "9uWbCXHD": {}, "y5MfvhwM": {}}, "statCode": "PSoyGs9x", "updateStrategy": "MIN", "value": 0.20645922524596338}]' \
    > test.out 2>&1
eval_tap $? 67 'BulkUpdateUserStatItem' test.out

#- 68 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'uPeygkn6' \
    --additionalKey 'YCbVdC2s' \
    --body '[{"additionalData": {"nF15P0zy": {}, "UvPTVKIW": {}, "mgvqMsVQ": {}}, "statCode": "aL4hSpHh"}, {"additionalData": {"JmOraXso": {}, "1qS3miM6": {}, "4hgG3Ehh": {}}, "statCode": "qFaGRO8q"}, {"additionalData": {"Vp0iOjDu": {}, "TWlKuaYI": {}, "jwgJRwVJ": {}}, "statCode": "CGoWLDDS"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItemValues' test.out

#- 69 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'aXoVChuq' \
    --userId 'nB5erxrd' \
    --additionalKey 'wGITZjDU' \
    > test.out 2>&1
eval_tap $? 69 'DeleteUserStatItems2' test.out

#- 70 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'YeiOYtvv' \
    --userId 'ED1uOvnO' \
    --additionalKey 'FyvM9qmt' \
    --body '{"additionalData": {"pNEmFOXP": {}, "NRGVJSrU": {}, "HBVQVTzM": {}}, "updateStrategy": "MIN", "value": 0.08201446319687467}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateUserStatItemValue' test.out

#- 71 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"QV7YGhJ0": {}, "YW1tLpbU": {}, "9Wj3SYkB": {}}, "additionalKey": "RZM0Kbc4", "statCode": "NMPVFOWn", "updateStrategy": "OVERRIDE", "userId": "dyhnnIrE", "value": 0.06682541971439959}, {"additionalData": {"z1okcNci": {}, "vbeskFBD": {}, "87eNcsHS": {}}, "additionalKey": "riEC4ek0", "statCode": "HleSF1NO", "updateStrategy": "MIN", "userId": "YWsX4ezy", "value": 0.6457324589089198}, {"additionalData": {"MbXWhXza": {}, "Ktz5E8xh": {}, "q9I1irzo": {}}, "additionalKey": "LaesEYwh", "statCode": "twUHVzC5", "updateStrategy": "OVERRIDE", "userId": "8mwKtEoK", "value": 0.6898020712387147}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem1' test.out

#- 72 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '6iw9pQVr' \
    --additionalKey 'tVqRT5dD' \
    --statCodes '["psuHbfwk", "aX4Zz915", "b55ZQ9tr"]' \
    --tags '["LqifxXMQ", "21ecEC7X", "P4j8smSm"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicQueryUserStatItems2' test.out

#- 73 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'mjBOTVTM' \
    --additionalKey 'wwF8k5xe' \
    --body '[{"additionalData": {"xPQDcVIf": {}, "5RaQ92OQ": {}, "2ccYdHIk": {}}, "statCode": "my0wt5rb", "updateStrategy": "OVERRIDE", "value": 0.3528056997481148}, {"additionalData": {"G0UmzyeP": {}, "Tla9oZMe": {}, "Ow8LwwGL": {}}, "statCode": "6pqzktoS", "updateStrategy": "MIN", "value": 0.6337339683161809}, {"additionalData": {"MCuBus9x": {}, "GfguOwWd": {}, "XggayzTu": {}}, "statCode": "1qe95Uol", "updateStrategy": "INCREMENT", "value": 0.9725696013424968}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkUpdateUserStatItem2' test.out

#- 74 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'jIT1whDU' \
    --userId '5RrBC7Ne' \
    --additionalKey 'RCqv9M71' \
    --body '{"additionalData": {"N2J3NjWD": {}, "Mc84W96z": {}, "gPmrCuR8": {}}, "updateStrategy": "MIN", "value": 0.43638904277680857}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE