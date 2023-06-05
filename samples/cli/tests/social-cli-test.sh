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
echo "1..94"

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
    --body '{"maxSlotSize": 40, "maxSlots": 68}' \
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
    --userId '1TxavZC4Y2NqogPQ' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'IrpokZ4nPq3UJnux' \
    --body '{"maxSlotSize": 31, "maxSlots": 50}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'm650YBe3hmxlTqFR' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'kh93uTZDrTbUh38o' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'DivpXCpn5ucXNHbk' \
    --userId 'NyKDv325dbAjhLC7' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'Q6ycpOkVra1DGcLl' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'QrMDL2NTAcoobseO' \
    --userId 'xDz4o6i1wG3Kqstc' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["C2BTop8nwFYIa4VY", "GGPXb8nQv3IlHFFj", "ZUa9zeBgiliWPg9Z"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'UOL37YMqsfl250nr' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'tRfiGIHMeOteLTPh' \
    --body '{"achievements": ["gqCWM332gatQXyNP", "9KSaKip9HLRZmAn7", "Z2YdQx2oXJrCkahB"], "attributes": {"2JCPCbgJYbTmpMpf": "SmTYp0j4ZXrTHBpT", "lKYYV33mFBckU8Fo": "mfK7GIEjX0NeT30s", "Jw7C5S0K5kE3BL2k": "UsHGt1egw6bBkc8f"}, "avatarUrl": "Jbb0LxUhXhZJazag", "inventories": ["MpQDMokinARMtIme", "KGREaRYQRQ7i5Ipr", "nAhykcJpMaitOOKQ"], "label": "tYRi0XtgfT8QWMD0", "profileName": "W2FudqkmzY4JTWwy", "statistics": ["3XEBmXBzVRqSjBk2", "WF67IB7SoegGAsnn", "H2N3H2sMU0lfwryS"], "tags": ["QMRqWDvXLnSA7wan", "luPdrJUa1CXF85Or", "4huDDNjQx3JzlNCp"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'sa5X32MEvOJWwSrN' \
    --userId 'MNGCSgq8aXhu0AXy' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '1rzTZpMrGAyYUbBA' \
    --userId 'LPhNiMPzEi8waxOO' \
    --body '{"achievements": ["o2qKl7AaZdcaLUCE", "2uuhCjInGA2dAP4l", "3nqhWIy0OjwjrACe"], "attributes": {"C688ldvHXBDsNmeY": "RBwp2NxwdJ0lPCNB", "84Mrjrc5nB8xqjGd": "cHpE0YWI1ok81oev", "texTig8kDMmz5jTc": "ZAFBZxBjYOTIvABN"}, "avatarUrl": "5lqUqCmYajrCJeNk", "inventories": ["DChwuedPdo6gfznk", "8D7alkkiArrWg60i", "HjbjJGCffeIFOO8c"], "label": "UBQdfNfOQGtzRiuZ", "profileName": "H0G5DGx3pIOnYndW", "statistics": ["fyDkWWjJkY2ohJq9", "ZiK3dmi2ThRbRxOr", "VCKVNobOaqYe9IAe"], "tags": ["qfWRubFj0HgVjaL0", "u8Xaq3AT1EfXxByc", "AnDzSajVMetmRxVO"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'sCmdxd0lBgbVX95d' \
    --userId '2IziqHOf0YUpMolD' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '0NBwyjgUwsZ0BFY8' \
    --namespace $AB_NAMESPACE \
    --profileId '9lXgPRvOY9hp77xg' \
    --userId '4fx0aEqjcshZkOB1' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'NMzbytclASxSbSva' \
    --namespace $AB_NAMESPACE \
    --profileId '3xcfDA2W8CWKqEgE' \
    --userId 'sUyIW7fHQrxqjFMs' \
    --body '{"name": "PeYdm66NzWfzATTo", "value": "oVgtpzURASjnMgOE"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'DKIz3DszRLSxAvrQ' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'V6hZCxL5WFfLI2H0' \
    --label 'pHth1y1meJogNEjz' \
    --tags '["OAI5uWOKrGquDYLZ", "zaFDHRo4FVaf7VPo", "YpJZdNGjX8rej87H"]' \
    --checksum 'Ot5xBhGgPHyoBbZv' \
    --customAttribute 'HyZ6Zt8jA5iVDsP9' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'W0016HI2sJ3F5K6w' \
    --userId 'AHGZZ0oLfZxluECQ' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'i2GLwDGwJjPgiOFa' \
    --userId '5ovcUVObRLilcdAd' \
    --label '1c25TwEdn018Tjjm' \
    --tags '["gsUQ3o1ky1reu034", "EquRGlqMNa2WGSuI", "eaIjSrgZFtIId5OQ"]' \
    --checksum 'wRVpBotdM0epNtvx' \
    --customAttribute 'XsKCJmGe8Pi9i7OP' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'VbagLWf9szO9F0OA' \
    --userId '1QAa484d14M0eOgx' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'mY8QF0Qtlfpb91wW' \
    --userId 'DGQF2KJ4Nnwrp53Z' \
    --body '{"customAttribute": "tVNdqpJJ8YwKpsRL", "label": "rwaP8RXNqRy3ZwJI", "tags": ["sZfs6NJV9rClBnjg", "j9wCpeWKxtblJDy7", "JE9Xl0JlNp5qY3gz"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '60' \
    --statCodes 'hn4wlCANK1mS0FUt' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'eEr2D8sOsUacnbPJ' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '56' \
    --name 'xBNGFqjnG5jvIMbh' \
    --offset '69' \
    --sortBy 'GCXqVCG8LXmEqlKv' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "9ucMFIBIf30aGaCC", "end": "1994-09-22T00:00:00Z", "name": "4yQhXXh0y79RGDo9", "resetDate": 64, "resetDay": 60, "resetMonth": 97, "resetTime": "7oOE3J0ZFh6z30Zy", "seasonPeriod": 74, "start": "1999-02-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["QHBuiQT0mhGMx5b5", "YqaMVEfDxrr1nPxj", "QkRSKYG8ddimR5jJ"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'zMaT4PZ7FgsmYUEn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'c3ZYg2IX6Z9OC95o' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "gE0sSrRLA7LAZtYS", "end": "1978-11-27T00:00:00Z", "name": "eg47JCpAcaq7n0wm", "resetDate": 22, "resetDay": 38, "resetMonth": 96, "resetTime": "LEIaaogoxBtw5de0", "seasonPeriod": 70, "start": "1987-08-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'WdCK2HgXeK9ZGCx6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'pUZKyPIkOE2JDJUJ' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["pAw7UNpgaqbLVZnD", "PttcRCVq6yUDQCT3", "mahrDE5rFCpQjRwe"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'ADvOjq2AR8ZElfGZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Y8YRjBAgDGA7k7O3' \
    --userIds '9xx9QLTXy2RXhmzf' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5418304540129406, "statCode": "HSQeyuECcL4pHTfm", "userId": "Ag13LiKEfe297G7P"}, {"inc": 0.23849811397689624, "statCode": "nGSsUFfSEVlxQFlM", "userId": "S8l9qHArEZivApH7"}, {"inc": 0.4642229769313305, "statCode": "U97BnU7gq2BW5SJV", "userId": "SpHixfGLOAlpqlXP"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.16780159187377297, "statCode": "s7GFfkjilKOLDLxO", "userId": "whdRL6ptX1FC1ZVv"}, {"inc": 0.9938139546279277, "statCode": "snAsd7Hy3g2SgR1i", "userId": "3OzCKby2jhr6fJ0l"}, {"inc": 0.05646691111672009, "statCode": "BaXA5bBAkDBvMBLm", "userId": "47BYHU6fNapnlcHw"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'q9ZmsdRj2seJCBOX' \
    --userIds '["rUd4YFT1oLeAA7bt", "ToqawR5IPrrGdBRk", "WVRb1bxwny9DSh3P"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "p0Z6nEpfxkEs6vuq", "userId": "QnwQTAGwsTxEflkW"}, {"statCode": "HJFOxFu4VGZFxkeL", "userId": "8dnwEUeFL1XJXV6l"}, {"statCode": "YUNKo64K6rvQE55D", "userId": "rspiKedr54AWFm8S"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'hhHEqkQabxzCR7zj' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '92' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["HnqSbKOjwYSa5yJt", "6iKKhUwBTiZqt4ly", "c4l7SGvL8oT6lle6"], "defaultValue": 0.5493386622906475, "description": "KlgSzn7CZOyNXzEW", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.2468216995219935, "minimum": 0.6459006002944979, "name": "RMOGUWcbsZZuSB38", "setAsGlobal": true, "setBy": "SERVER", "statCode": "XpCQE5hM3W9h0bPY", "tags": ["52CBm6fzxgcRr5xV", "S0wxoSJ78nMNhF6S", "MhvsRWkGtwhRa2Ux"]}' \
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
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '16' \
    --offset '0' \
    --keyword '5gdeJ1Tq5TGDO5JI' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Lccj92W1Qc0GeFL2' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ITfTvBzE6I1OX156' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'SDioBF3QUV3sKhfe' \
    --body '{"cycleIds": ["XDkmtsre3kxD1QA0", "o2gxDMVulPaVmAYP", "bLG5EJIfW8ZVFd3y"], "defaultValue": 0.5016452602324669, "description": "ah0DhlqIseQWvPi8", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "YlVS6raJYRk8rZ1x", "tags": ["gYd4w4EPPekqCOpW", "3IXtVCqu68sINXCQ", "R8uV6vvR4M9zUOIX"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '37nYoMUaBIWbsiEn' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'WiUPCJ8R1onaTXis' \
    --namespace $AB_NAMESPACE \
    --userId 'uFewcfnCU2EKkcWO' \
    --isPublic 'false' \
    --limit '14' \
    --offset '64' \
    --sortBy 'Ney4ChP687U5zEgS' \
    --statCodes 'yLMkjlwJR3RpgR8n' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'yShtsSflGG8krN6v' \
    --isPublic 'true' \
    --limit '38' \
    --offset '45' \
    --sortBy 'C4ShWZ8vr5UX3vsh' \
    --statCodes 'bQi8CJqc9WpvZU9Y' \
    --tags 'cNktgIZgV44gYt2u' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '9vcqLyLqSXtrqe6V' \
    --body '[{"statCode": "qqc1fmygO2LuOIBD"}, {"statCode": "HcbRwSh5XAQYxEfV"}, {"statCode": "5vEjr5tBDgRtF3Kf"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'IyJ0KFwYFjF8iuZ1' \
    --body '[{"inc": 0.4111255192034705, "statCode": "hfr69mP3iVJ2AuWS"}, {"inc": 0.9878225586415156, "statCode": "5e1jji4hVmiiQ5cB"}, {"inc": 0.18920497159107763, "statCode": "hShH12BwQq12l1Nh"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'GUBOHoms7oKXVkVL' \
    --body '[{"inc": 0.5877944247175289, "statCode": "jiBq9GwQ1fsz7oVe"}, {"inc": 0.9980778593122068, "statCode": "zhHlNNI5pVxCme6j"}, {"inc": 0.26155391274153306, "statCode": "w7kLnima2NYBom7X"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'jYd4kyajBVC4BkRy' \
    --body '[{"statCode": "6ValVAw9EbMO0Llr"}, {"statCode": "uD3eoISMzXeSkcWM"}, {"statCode": "DTrSGNt7WJYLsxd8"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'cAOdAY1lMAQqluMr' \
    --userId 'JtxlenE2QicPVg6I' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '9azcb0IoscSjDHU6' \
    --userId 'isiEGJoMSIPzsFdR' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'yREfyOEFgiVDtfD4' \
    --userId 'F1aVFEylF7xR5KcD' \
    --body '{"inc": 0.28882954860633847}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'q8QqqxaRMSc1YTTo' \
    --userId 'sanY3TTOCE1RhKtn' \
    --additionalKey '6tfn4kZ1aQjWa91u' \
    --body '{"additionalData": {"Gos4GVbqhzRBoPDM": {}, "36WqfqEk7DSYYDsS": {}, "Boz8BthDmBbs3sBa": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '83' \
    --statCodes 'xe30qXLIUzSEnaOm' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '5XpQeidu1ZhVeSwf' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '23' \
    --name 'CMJPd1ULhNG6eGDc' \
    --offset '64' \
    --sortBy '1EwMWSOdnsS3tvod' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["xG3VWIikZ3zsyPNR", "tQ6yyYy8qnxLBmfX", "ALTxTm9qPDp4Epk7"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '7QrgigVG3kB9CrAf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'M0TWzd86xX1vN1lg' \
    --userIds 'qYEwsULkdkFOjMfv' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2393047409891622, "statCode": "y624qT50v1dw2zbX", "userId": "06kb5M37ioFlIFD7"}, {"inc": 0.5915474760274014, "statCode": "vGhNlP9QFt78OGFB", "userId": "cdYGEb3ZEmfiy5Yg"}, {"inc": 0.8690410506162796, "statCode": "7ybnLr4j6K7UnUXR", "userId": "ZSLoLcdISfS4HgRL"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5477303565362576, "statCode": "lNQeoCMQ9aLrfwBD", "userId": "DpFtejW0Fc7TeaLT"}, {"inc": 0.5601139287979232, "statCode": "rIcxd0UKA4qSZdYV", "userId": "J7wnavgfv8IzxMIh"}, {"inc": 0.4177826632453584, "statCode": "cRjRyGoDv5JIJSIT", "userId": "ibGOav0Q109HoGjS"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "S42BB9qSLePTYn15", "userId": "4lud2Ogl4iXKW6iX"}, {"statCode": "mc5WbP0VQCp4zgfk", "userId": "LTAzhoTeC1zkRCyQ"}, {"statCode": "Yfp1HGVKUE0xK2Pz", "userId": "pdfRpWsfcMfSk0GJ"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["MvVYkFdsfVtrXulb", "Pz6Fj8xXozCbyz2J", "U4bAq5W4Jjvm10oI"], "defaultValue": 0.03428626672657853, "description": "iOStthL5D4eAwx8s", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.31653819450841814, "minimum": 0.8644921649808561, "name": "BOjIudbbVA1MT9dQ", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "hAh2hFk9hx56DNUv", "tags": ["wjr5zcgCCRCF9O6R", "purxr6E4x51Rf14h", "7h2PsNy2nEWAMlwD"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'WEX0ZUzKG7mRbT0X' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '44' \
    --sortBy 'd4GLe1KMJF3Tdw7i' \
    --statCodes '["GQIzpOqiPInxbZ4U", "unupjkpUkNKqj6Tx", "3esiyhKkUukp7vtw"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '74' \
    --sortBy 'uRn5BNzUMckA7dWE' \
    --statCodes '["hR15OgBMVp1FORef", "Efm18O22M30xp680", "M8tqtORsfbAP3KK4"]' \
    --tags '["4LjQyhQyhbU6qKEx", "9lVN24Fd4oHmvCqN", "syp0FG5MPM5q0AaS"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'm8ZNirRygl2BQcyJ' \
    --statCodes '["dhULieXUxYefcmkl", "zBJodlk89QA0OiOW", "kraKwCQinM0PVVpV"]' \
    --tags '["bgz9HQPF3PIIqRdd", "xpuAbxDg090vNsiD", "0PLowQSbmO9wygE2"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId '7uMmHaqDINQD6hBc' \
    --namespace $AB_NAMESPACE \
    --userId 'jEAyJ02E4JAHgxlH' \
    --limit '27' \
    --offset '27' \
    --sortBy 'cnOFPNNd8FzLYwcp' \
    --statCodes 'wAxeIvf0kNhInhzK' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'OWnR5LN5Q1TgWy8l' \
    --limit '81' \
    --offset '64' \
    --sortBy 'GeYT9TT2Mm2019v0' \
    --statCodes 'tZoWQVJ4gPlAwzPO' \
    --tags 'A88f8keMIyEExLAp' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'NqGUuOGwrQLe6hBv' \
    --body '[{"statCode": "QrTXwTmhl7OejNh5"}, {"statCode": "y0yxLqIJrnqP4lGZ"}, {"statCode": "TbCtPj1BxqMbM7mX"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'IashU9ENmJTAyTkx' \
    --additionalKey 'ySLJCZ5Xmhu5qzVY' \
    --statCodes '["lefnV9phb0n4JZep", "vjvcnXwJcjEVrPMS", "uUZFZ3k1yikTtVOi"]' \
    --tags '["yH4wCGSZ0EbnToLH", "oBSTlQFd9MqNrEJL", "hiAX89aauvu9Tb48"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'WlNtp3cCUFD4CFUT' \
    --body '[{"inc": 0.4438517115322803, "statCode": "fCKpiKXjRuZwK3MA"}, {"inc": 0.6097362702757998, "statCode": "hN4AZVQc8L8l377D"}, {"inc": 0.4307004819036898, "statCode": "L8sVbJwYWFtfzwKA"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '7ITheAk6cRxSooum' \
    --body '[{"inc": 0.9407948934226044, "statCode": "YGu2STPmr7tpyqVv"}, {"inc": 0.9817770525510726, "statCode": "Ofm168cidsBzZ7er"}, {"inc": 0.23855962504625516, "statCode": "A2EWBUH3pQVJUrxh"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'HhGsAXsA5ZoWZKp8' \
    --body '[{"statCode": "2SOACFdzt7EfcID2"}, {"statCode": "73PeLxScInEvFWkN"}, {"statCode": "ACQASGDdPmC4zUlx"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'zJMfqxty7KU81Dzv' \
    --userId 'XrPp2xGCUv7d3tFA' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '6le5ghrmPSxRJ22J' \
    --userId 'Ud18qwtfH08tP1on' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'CNfPTc3SdA9bzfUT' \
    --userId 'FbyaPKWsGqgMiwSz' \
    --body '{"inc": 0.6020772560766722}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'NkRJ1FFRCCFEhktf' \
    --userId 'LB8LDs3H2Pffbtsa' \
    --body '{"inc": 0.5953661805712787}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'whs6ZM5pXZpSSvNu' \
    --userId 'CjCBAItl8sDOYHZA' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"Gl92RLyINC2b1bvX": {}, "0NE0SE1NPAXAvVGG": {}, "5mFV7cd7ahjCFt5T": {}}, "additionalKey": "k48HBELzpA237oGM", "statCode": "SQuGXEACe1z4IV0V", "updateStrategy": "MAX", "userId": "QHMf5IYgYvZixP4K", "value": 0.12336569572853351}, {"additionalData": {"uRUtfVXeL65VdAZk": {}, "m6hqD9w2tITpcfZ7": {}, "8WLuTmI8wV6QKme0": {}}, "additionalKey": "lCTuLZala2O9iigb", "statCode": "whDwHxKyLXX3GP02", "updateStrategy": "MAX", "userId": "mbDknKzgN2pBxSV5", "value": 0.7205440519815534}, {"additionalData": {"azrZKgnKvd9iFCum": {}, "2x8n3XrbeoiB92SC": {}, "ax4QpHZ0JgKcP0gp": {}}, "additionalKey": "xPXDRNVckuMJOxOh", "statCode": "YjrycuouwSEOaLHl", "updateStrategy": "MIN", "userId": "Ft6GXES4uBEA6s9e", "value": 0.18419458893870666}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'RRznHOHZBPnQdpwb' \
    --statCode 'BDbs4revDFIbVpel' \
    --userIds '["zVyEyPad3jRE5DGd", "7371v1WJ8s5FKBSK", "Jf6WKCdwtSwEgmpy"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'R03JIkXmkVmauZdq' \
    --additionalKey 'CG0BgRBeDxJtBPE6' \
    --body '[{"additionalData": {"i3X0RsNX8KbyrZa9": {}, "Vk7xR77SLKZfIR1o": {}, "oGKxwAaroRo5pEN6": {}}, "statCode": "qSNssm6K262auwJY", "updateStrategy": "INCREMENT", "value": 0.8871512703968553}, {"additionalData": {"MYvzbMvJYLpQV0c7": {}, "UzumuYUasOHAj0VF": {}, "osG5YBbZTrtgDeXT": {}}, "statCode": "vxA9PEqWyExYAg2J", "updateStrategy": "MIN", "value": 0.6251752208603935}, {"additionalData": {"EHltD0IdtM6wYn0j": {}, "iJi4D8n2yes9V8gS": {}, "e4ZENLdOkzwGWoIe": {}}, "statCode": "VFpsJcsBVh4arP4M", "updateStrategy": "OVERRIDE", "value": 0.6694609589100649}]' \
    > test.out 2>&1
eval_tap $? 87 'BulkUpdateUserStatItem' test.out

#- 88 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'q5cET7DUO2cCkxFT' \
    --additionalKey 'l5aAsck8t4m6tquQ' \
    --body '[{"additionalData": {"O27q6GhOYzkRLB4e": {}, "c71HJpneI7RmQjmi": {}, "hmd5eZlCua4jjqzR": {}}, "statCode": "SuqXoVf7c5ElTP0W"}, {"additionalData": {"ZADPFykdGgkPsBTO": {}, "ub2w5eSlOV1Oup3M": {}, "lQviSD82Zz3wmmoE": {}}, "statCode": "YzPlX6FmNvQHrCtq"}, {"additionalData": {"rNjQMLMyK0m28LYs": {}, "vGD47R7wGolhLXEr": {}, "q1NXhIWfzzj5tKxS": {}}, "statCode": "jmw26Ljd55HoCJOW"}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkResetUserStatItemValues' test.out

#- 89 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'FypLiGRjWJDEPFFa' \
    --userId 'oHcCB6E2WHvvdum6' \
    --additionalKey '0YxBWQJweLsOokZg' \
    > test.out 2>&1
eval_tap $? 89 'DeleteUserStatItems2' test.out

#- 90 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'euxyxC9yiI9r90dL' \
    --userId 'ff7ZskwjPGMScPva' \
    --additionalKey 'RcxHgJFuO3gtqcEq' \
    --body '{"additionalData": {"stNX5mdjTLuq4zuZ": {}, "Rxj6NZ4PbTp362xR": {}, "jRrPNHq02QYCovvO": {}}, "updateStrategy": "INCREMENT", "value": 0.7146893460524583}' \
    > test.out 2>&1
eval_tap $? 90 'UpdateUserStatItemValue' test.out

#- 91 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"Ygo7P74pHUGTrVVf": {}, "JG8GMiinMstt2Fy6": {}, "QTBL5ZeXxA23ghUR": {}}, "additionalKey": "QMbGypB3CnArgmVB", "statCode": "oHu9N61QqR2fEdCC", "updateStrategy": "MIN", "userId": "FtXCA1E5al48AKDT", "value": 0.031245960262424544}, {"additionalData": {"jw4Q9nIDimF6QCvm": {}, "wea8vR4LgudqT0vi": {}, "XKtV7Ql3JJasHGbg": {}}, "additionalKey": "7J9YHaUvWdwYKiHN", "statCode": "L0R8zbwR7PgxIgEb", "updateStrategy": "MIN", "userId": "KeDGlEx51mGthYge", "value": 0.4775434013775609}, {"additionalData": {"PpTOuKnaZDzKRIaC": {}, "oxxe8O3arAgZGYdf": {}, "9Pt0oAunMFcKFOno": {}}, "additionalKey": "a93mEMiHQMs0QVfW", "statCode": "gHAVNh2GqZAZkaoc", "updateStrategy": "MIN", "userId": "v5iHd0PFRSXH1S1i", "value": 0.9053471044106547}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem1' test.out

#- 92 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'viouN8g7DYAManan' \
    --additionalKey 'gbafKc5dDuPMpueu' \
    --statCodes '["QFw2sjiun0v27mli", "lwgake82ulTJ5qYm", "O4ih6B4V3KAQnZYg"]' \
    --tags '["S9ZAsFKnOUIDYPe7", "jUlTrp6H2OWJdRC8", "lzdM7c58P3xJ87gx"]' \
    > test.out 2>&1
eval_tap $? 92 'PublicQueryUserStatItems2' test.out

#- 93 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'Hqjz2iIkShrXALkd' \
    --additionalKey 'TD9VxuEQFC8QcOta' \
    --body '[{"additionalData": {"kx4zVIXNQGGHcWol": {}, "g5NYkaI9eDr21zlT": {}, "9InuQtUS9gouCmLZ": {}}, "statCode": "nsH3ue62tuMqjrKo", "updateStrategy": "MIN", "value": 0.966474786090824}, {"additionalData": {"AxG4tzBFdPyI0wEP": {}, "OnL7V6F8NOSwTTxw": {}, "79vOvLmPRu88GYjk": {}}, "statCode": "o28Ikf7Qk9yv0YG8", "updateStrategy": "MAX", "value": 0.4102245984757561}, {"additionalData": {"lTvcExDl2eiG8Erm": {}, "FPLqpwkn6VHbsaw2": {}, "dlAJTv91j9y0CIAy": {}}, "statCode": "hY2QS2pc4CeFLN6I", "updateStrategy": "OVERRIDE", "value": 0.6657192558980362}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkUpdateUserStatItem2' test.out

#- 94 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'SH0b7LRU0Mqc9QyT' \
    --userId 'UERRa2dgYuR1vuHS' \
    --additionalKey '7b0j6XLsSAIoOunV' \
    --body '{"additionalData": {"d9husgEGOUpgKavU": {}, "UUg32rnrPNxrtjnK": {}, "OOsQrDJ3xqg8xhkl": {}}, "updateStrategy": "MAX", "value": 0.9450066704967776}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE