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
echo "1..99"

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
eval_tap 0 8 'GetUserProfiles # SKIP deprecated' test.out

#- 9 GetProfile
eval_tap 0 9 'GetProfile # SKIP deprecated' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
eval_tap 0 12 'PublicGetUserGameProfiles # SKIP deprecated' test.out

#- 13 PublicGetUserProfiles
eval_tap 0 13 'PublicGetUserProfiles # SKIP deprecated' test.out

#- 14 PublicCreateProfile
eval_tap 0 14 'PublicCreateProfile # SKIP deprecated' test.out

#- 15 PublicGetProfile
eval_tap 0 15 'PublicGetProfile # SKIP deprecated' test.out

#- 16 PublicUpdateProfile
eval_tap 0 16 'PublicUpdateProfile # SKIP deprecated' test.out

#- 17 PublicDeleteProfile
eval_tap 0 17 'PublicDeleteProfile # SKIP deprecated' test.out

#- 18 PublicGetProfileAttribute
eval_tap 0 18 'PublicGetProfileAttribute # SKIP deprecated' test.out

#- 19 PublicUpdateAttribute
eval_tap 0 19 'PublicUpdateAttribute # SKIP deprecated' test.out

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
    --limit '49' \
    --offset '28' \
    --statCodes 'RrYU76LjS7QJQFic' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'VyQf3WCl4mKtOo11' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '78' \
    --name 'ZMSSlVtm1fhnR58m' \
    --offset '29' \
    --sortBy 'iLY0sbzJ9vyHq6qb' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "rdmmPIHJAOrfN8hQ", "end": "1996-10-13T00:00:00Z", "id": "Q0jU0T6SqdQGS7UI", "name": "SKdMxd6jMa0295rL", "resetDate": 93, "resetDay": 68, "resetMonth": 61, "resetTime": "xhOSfKMZqGIZEbGW", "seasonPeriod": 51, "start": "1976-06-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["zbnV3joaLZVw6cKQ", "ZKt2HjIfatP2xhmG", "GvFAl6bkGYWUh2hA"]}' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'cPrkaiZxe9H1Z0Sf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '87elbnKUqJtRWpNq' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "AKgpN7JrS6JP2lJV", "end": "1974-10-04T00:00:00Z", "name": "tpLHGOfG9ijo1N1i", "resetDate": 71, "resetDay": 54, "resetMonth": 41, "resetTime": "gfFaGht3NFGr9fX7", "seasonPeriod": 91, "start": "1980-10-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '5NsyCZQyegb8x9lM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'AqRZsIiBL074C66l' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["7wYsVeZfatDiryfd", "jjr1cyUEikCJGjqW", "XurWTNUsbaiiwogO"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '4Av0Qxz6TnYRTAxy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'DWE9JfPerar28e6Y' \
    --userIds 'TfUw10a1hGq5U7HY' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.15758193227317774, "statCode": "Ge57wbGoVVqeIFMF", "userId": "9TYR1MCsy1XzLAzO"}, {"inc": 0.04347124681644543, "statCode": "tbp2A2SF6JV5bmRC", "userId": "w6nPfRKmwXgAUIgW"}, {"inc": 0.9406342799029065, "statCode": "xalpBBnnlVnjTmdP", "userId": "8wjrwkByWidOBRZy"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5602028064255571, "statCode": "SS0VmNnuytQ9xasx", "userId": "JKkTC3VQSAZVNXaK"}, {"inc": 0.693311215731226, "statCode": "9rKxe7tRNW72gP4s", "userId": "xWIqfdzIrfUp6Atv"}, {"inc": 0.2079948485655302, "statCode": "wJqTrQJLfGQjaR8y", "userId": "KvRLN9WAkw434vfc"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Dtxa3CqPFEys2Zcl' \
    --userIds '["y1OSkLLi5WPK9TYz", "SsCuFwNCwwQK5tpw", "KMGmXSTsM9Nz1Ukx"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "0SJ4ahnVV1vB2v9u", "userId": "a7Fm8rr7UNqzC1gA"}, {"statCode": "caJFLi95xW7NafS2", "userId": "H3Xl3YAPuabNWcJy"}, {"statCode": "tYHLnzloRV9EIsUY", "userId": "LoEVCciOkgql5tj4"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'mXmkyNNX2HLubPsS' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '78' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["d2Bd4bSdKeK9VYHD", "Ee4w4dYTr9zXVNYQ", "RuYkDTgGomGu2V5h"], "cycleOverrides": [{"cycleId": "7SoKRqJTFylDgcie", "maximum": 0.97627915224755, "minimum": 0.4013509422571384}, {"cycleId": "pXspqrTjxdKim5AM", "maximum": 0.4798147392494071, "minimum": 0.18456706408435675}, {"cycleId": "0Vi3zDhXx4anXHlP", "maximum": 0.5341833252932648, "minimum": 0.009088792895433184}], "defaultValue": 0.8998060080704414, "description": "FzNK29JNBkKqufCT", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.9333004489370534, "minimum": 0.40356659376222337, "name": "ZsVuObe09yIsiDfB", "setAsGlobal": true, "setBy": "SERVER", "statCode": "5KMKJZVXjbbHrNXv", "tags": ["KHIblkzvG2qMZ7IE", "fARTCqz0IUW6QbEM", "2ehrZolLqPXxlMOT"], "visibility": "SERVERONLY"}' \
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
    --limit '36' \
    --offset '11' \
    --keyword 'uEFxnaCu8NDWAvs0' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FnhwfvE6pWzzUy0X' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kC86pY1nSGoqRx9Q' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '7Zi02l5qWARCUedW' \
    --body '{"capCycleOverride": true, "cycleIds": ["EH4E6FJQcscZvJKZ", "Sjvhb2g6p2kPcxIT", "uPWsO3TxOCRQ2t2g"], "cycleOverrides": [{"cycleId": "j3scFCR3d4mCB5lQ", "maximum": 0.6015736033688188, "minimum": 0.4410092528363747}, {"cycleId": "kt4OzrRTgVvt8Gys", "maximum": 0.7266094018701162, "minimum": 0.394046796656383}, {"cycleId": "X0m7xAILqC3A2y1T", "maximum": 0.9588231350584042, "minimum": 0.7416666648776816}], "defaultValue": 0.2099185724693946, "description": "MTYD8YpaHrmmm4KF", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "vxUrGm63DaJuJ1EW", "tags": ["FztN0MMlimS27X6M", "UbuBABNzAOvMSGwi", "8zyeNNSfGldvPpor"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Eusnfkd3r0g904wZ' \
    --limit '21' \
    --offset '88' \
    --sortBy 'eJYP0iJjt1KsQeMz' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'CxD4LJ5wnV28wjSK' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'KsKqZDR9fiuV4Xci' \
    --namespace $AB_NAMESPACE \
    --userId 'DzNB1mHOvTHbz2BY' \
    --isPublic 'false' \
    --limit '10' \
    --offset '49' \
    --sortBy 'BBRa3fZfEUS6uNrt' \
    --statCodes 'Q4Art461gwWOdkaw' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'JqWW9Mscwsprayqe' \
    --isPublic 'true' \
    --limit '34' \
    --offset '62' \
    --sortBy '3xKJRTwq5n6dZ3Ss' \
    --statCodes 'ojnuRdWINXqbooKw' \
    --tags 'JmCq8qsCbLKvcW6g' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'd9XHv3UmkBnuE0b4' \
    --body '[{"statCode": "AjWj811axOwI89KR"}, {"statCode": "4wEPdBixabJXmfdV"}, {"statCode": "KXwrcbbW1JTpCDKO"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '6srdgFiOHd5pseLW' \
    --body '[{"inc": 0.28533580993465524, "statCode": "mjJ8khUozI2F2fg8"}, {"inc": 0.21041329716463142, "statCode": "siVZTsP3nvL15UUP"}, {"inc": 0.4011155668331011, "statCode": "vVN51qtKFrnN82ZX"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'l8HUTjqATrmmVknW' \
    --body '[{"inc": 0.18210048460766204, "statCode": "umcpVzbkHGDqiFOY"}, {"inc": 0.793008653059518, "statCode": "Xb0WetaCRLPD1h5p"}, {"inc": 0.011687379346371762, "statCode": "hSh78KctBcIehO1H"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'EtihgKqJO9atyIXQ' \
    --body '[{"statCode": "STWbmYqZg7SpXsrX"}, {"statCode": "jQRD4x6TdTecvird"}, {"statCode": "1eVM4ctcZGMh7NtZ"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'p9rmjPN7IYvrZkyp' \
    --userId 'Sp7ow4tYpAii14Ks' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'evukPWlNb9Hy1hNk' \
    --userId 'iPOfHIg6gqF8x18P' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'dVjFySrbPllelkIr' \
    --userId '8xvR2vwyNikumgTM' \
    --body '{"inc": 0.8709390111773498}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'R7XqzVCavreAMrwg' \
    --userId 'WioThl3JpxiZgVsq' \
    --additionalKey 'lYFdRcOXY855gYAm' \
    --body '{"additionalData": {"G0I0OsURT0xA2oxo": {}, "qaZMEonq4ZQiCogC": {}, "SVGzsSsFaHd90j2Y": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '50' \
    --statCodes 'qTye6CoEREv7lPwG' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'QaZNQfOXhesEYF6p' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '29' \
    --name 'Jq5dhDMwLCn7JQ0C' \
    --offset '78' \
    --sortBy 'rPi7Swp2jy9f3bsw' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["vrKW1idVba4G0atj", "yXZqwFYWwTSK7EX2", "leT1Sf6SlYdLnFxB"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '13CijAmxlU5w3pc2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'mDmEeTC8eFvb6oxQ' \
    --userIds 'e8sUxAeSpdln8fJm' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.02649650449604024, "statCode": "hF34EmLahxEpgYRw", "userId": "x98kPQ1Vg2Ld2SPe"}, {"inc": 0.9938010304596995, "statCode": "Bss4idsHGIpKgeC2", "userId": "9OyXjSk2p6lmxE3G"}, {"inc": 0.9963787647367518, "statCode": "WAfNDCfwI8GOFEDC", "userId": "bj0jowCYAaQS30IW"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4473301667664117, "statCode": "jsAdO5XWPPFio0HH", "userId": "eOlucfgU4KhEbMQu"}, {"inc": 0.9826682974992026, "statCode": "Z68ynWkyTv2mmu6h", "userId": "lY8Iwg30EwWO1axA"}, {"inc": 0.0978658624230564, "statCode": "DtJLuDPedWFuioKE", "userId": "il9o0sDw717nqkEY"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "SVOLEo58IlM5fBdi", "userId": "yVQkXn5nCbqiukuU"}, {"statCode": "QJMuRmReuoeuElJx", "userId": "FH7BbnCF57nN0U7o"}, {"statCode": "0ksYXmuHitCMQg7O", "userId": "UXMseQg1IM0Nxpcj"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["pO9U7GaJJ67qIZWW", "BxSRuBDt7AhiK432", "wb6rgPG5YeUjRwQG"], "cycleOverrides": [{"cycleId": "MdgakNUdXUTgsI2B", "maximum": 0.8951073957464679, "minimum": 0.9317999885984602}, {"cycleId": "EYieI06VCQTdtZpC", "maximum": 0.7204406525042458, "minimum": 0.8123447712813409}, {"cycleId": "jdEyW4opggtJ8lFI", "maximum": 0.6004168773965636, "minimum": 0.3958132756318564}], "defaultValue": 0.15752524172819427, "description": "xOCSJuIJT4iYRU4L", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.8067603593134194, "minimum": 0.15457253547224736, "name": "68WjJURf45ftPHx9", "setAsGlobal": true, "setBy": "SERVER", "statCode": "1whhPRZa1LbRE0Op", "tags": ["2j9SiasOtqMXtAAE", "vWiF8doe4FztEvvi", "P227DE3bepKynhMK"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '2Vwe2UfIfMDuwa5E' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '71' \
    --sortBy '4EdcI8uxAik96TbC' \
    --statCodes '["dpPqsxRdhLs62gDl", "ubrEbMgxdxTiuSNJ", "nT11Z1asXR9ULSzf"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '95' \
    --sortBy 'VGhusXOAx2zJTmvG' \
    --statCodes '["GQ33r0pegIkREwHg", "hQYgIMFSIZf3HpYW", "TNQxTxy7xhLdfPH7"]' \
    --tags '["oYYstVF9SZSzjvo8", "QTeYHOcswonHwYpR", "Td658QUekZdOhJC3"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'nlFaFqboWDpAk7eA' \
    --statCodes '["H1PFPwxtyVM6cdXs", "fbrckYwL2BEzw0FM", "NGotNbf2tcltLUis"]' \
    --tags '["zTAVxjowg8qLCoZw", "nMkGPCFYvE8T1Whd", "Q4DD7xZT7HbkVFI2"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'd5X41OOO8W9rgLos' \
    --namespace $AB_NAMESPACE \
    --userId 'nEt00zvQ47NpzJgx' \
    --limit '63' \
    --offset '70' \
    --sortBy 'e0CCvwDjGK7ETs93' \
    --statCodes 'RXb6laazNHAXO7bk' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'VcXTYdUw4R8QBfqm' \
    --limit '0' \
    --offset '4' \
    --sortBy 'DSNA9UpCG7ksc9jV' \
    --statCodes 'DMYBNy8P1ne48qNa' \
    --tags '47Hf9M9Gi0hukkV2' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3GFr3DTQNYS8yNp9' \
    --body '[{"statCode": "vBnrlL5nw6LZ0vTK"}, {"statCode": "vxsFCddagkLqqhRd"}, {"statCode": "j1jtvRlAB5165kKi"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'InmNNeGKolCF5czd' \
    --additionalKey 'Qa4mIMRTclC2Z9FL' \
    --statCodes '["wFjyxkhN3pYowSfz", "vvrKPBUWSROF5dqN", "i2IeRz7c3lNLlW2T"]' \
    --tags '["Df1wwnTs1uiRokub", "ExQkZquj6wYwakRQ", "JhBCf7YBedA3rMEr"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '3yywfLaWEmmvO7Op' \
    --body '[{"inc": 0.8997979286586811, "statCode": "ibHafX6K2nXPuCxf"}, {"inc": 0.9898318701372727, "statCode": "H4rkaYhxazdsye0C"}, {"inc": 0.6724368449948841, "statCode": "mXqvGPFKlzj1MJ1R"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'ZymJwsfvCc0CZLLe' \
    --body '[{"inc": 0.7349278590640452, "statCode": "HWzOUTaIayy4BsNi"}, {"inc": 0.28434848066633456, "statCode": "VkZsipY0V0ZaH0A6"}, {"inc": 0.44177291188972667, "statCode": "VKOOyvc2ZMDk6Aqt"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'h8Z48bLGDj3t8WBi' \
    --body '[{"statCode": "c7UzSFiOLNMPjBXh"}, {"statCode": "21GEOfa0BDab2JE0"}, {"statCode": "HKdkQYAxjTcHJTLJ"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'TtxNk8rJWHxqDIlh' \
    --userId 'iI5eYPF9nqgvAeBa' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ley1sxZ6svZF9wfH' \
    --userId 'sevypdPvJqe8eszN' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'l8QjdnaTwhv7ZOgG' \
    --userId '7UFxUOLiAB6XWq3H' \
    --body '{"inc": 0.4483629675869576}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'OHBtAavtZ36Q3y6p' \
    --userId 'twFduX5gsrZdD7k8' \
    --body '{"inc": 0.16035270910465904}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'qKrSY1B3d8WT8BQb' \
    --userId 'bHt9TUdyZpscv0b5' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"lbTi7dr5rJLyquw8": {}, "Mp0FYUmyjhunNKsL": {}, "Yi23sKggsxgtDDbo": {}}, "additionalKey": "YSLXvl3tR9Yos9Sp", "statCode": "PXJZXW4VX2kQLuLX", "updateStrategy": "OVERRIDE", "userId": "VI2liPVxACcucl17", "value": 0.007387437044814482}, {"additionalData": {"zmzVdtcOEnpAqp4C": {}, "bNjU128C4lyTB0Rs": {}, "RmVLgmVAIq7RRI37": {}}, "additionalKey": "W73kuE81tqtoSp2v", "statCode": "dqfnRiXy5H4bmtcE", "updateStrategy": "MAX", "userId": "xB21YWe6y7psoAW7", "value": 0.09702576833202381}, {"additionalData": {"L9J0x7PTGtaBy2JH": {}, "vfeSEYqYd866F7dB": {}, "yoaH5BMC16Y5czAy": {}}, "additionalKey": "MElgSPtYNXODVqPT", "statCode": "FaE6iYU7ZQWTiSLc", "updateStrategy": "INCREMENT", "userId": "4H9KWHSytODUu2FK", "value": 0.10556372948381199}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '6D4buf4XwtYKG1Yk' \
    --statCode 'HeD9zwASuIJr5Z8n' \
    --userIds '["GtVRIiYp1mVFcA26", "STKMvEj2BqGnwk5w", "3k394Ipcj8RMYRS5"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'xMCHGNZunVKT1NMr' \
    --additionalKey 'GOE6cukXlqdePbGP' \
    --statCodes '["wuIboBzUHHvRImGT", "G5PwYmgcEEHmWFTI", "owrrO8pDiE64NAai"]' \
    --tags '["S3tzlqsOj6YrKgF4", "poBUodMS4ZVg6LPW", "PnmL4lZ0wvnpnHec"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '9raa1OwG9WyD54TR' \
    --additionalKey 'ukOgE1xVHFwu6anU' \
    --body '[{"additionalData": {"4aH4h7ATHutmu5jH": {}, "2zaCZvmU7NAMkBaF": {}, "sRwI7JIOKVJ1KbDu": {}}, "statCode": "8vkB3SD29SJhpnVx", "updateStrategy": "MIN", "value": 0.5951278075818829}, {"additionalData": {"vjSnV2Z0r0n8PJpk": {}, "UgpidvoeU8qbWYxZ": {}, "qCnfx77q0gdCIArk": {}}, "statCode": "qQTmnBlbxcMoEoQb", "updateStrategy": "OVERRIDE", "value": 0.12844834907899738}, {"additionalData": {"OjEx2sg5yCf5CMfg": {}, "nLI8W69A7hcLLnMh": {}, "pJdPnxGwIwCFlK9P": {}}, "statCode": "XcDIIPQLPKnD2T4y", "updateStrategy": "OVERRIDE", "value": 0.9997708277341794}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'K8iUW4QXbs26haCN' \
    --additionalKey 'jvyqIJek4iGwT9z1' \
    --body '{"statCodes": ["vJdYAPFpaFlXDiMH", "MP7Wt51Rq57vya7T", "KhWNDvYLsNeLKNLI"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'kkbBYOT5zkwpL0uY' \
    --additionalKey 'G3knl2RixcypGEVU' \
    --body '[{"additionalData": {"c6D0wBI89V2sPKYW": {}, "Fp9i3aSIPIyuenxp": {}, "l2JEnZGYlikMpH0d": {}}, "statCode": "gmF00bxTl102CU9M"}, {"additionalData": {"wWGGk70WXurw8AXg": {}, "d7FovE0PHAoEeS7R": {}, "xrStJUssGpxll2hX": {}}, "statCode": "rBSMOP898mbOLbDW"}, {"additionalData": {"1XkB3CzvhL5SmaiM": {}, "FxKCHllquuunexIc": {}, "oGvooulIRVRgRgZf": {}}, "statCode": "l92n2SzawUp9Xgc4"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'qX5tw8EzCYXJ6cBO' \
    --userId 'nUScanuRCV8IdFv5' \
    --additionalKey 'opRpptM4JGxwulrQ' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'izg6uKJd1fg3nemp' \
    --userId 'OSwGUtcX0lE27vP6' \
    --additionalKey '8Mr4WIQApZz8334M' \
    --body '{"additionalData": {"LbkiPSojEPJGJH76": {}, "ebfoR112gwYelvxJ": {}, "I0yidR74PYjUGeuo": {}}, "updateStrategy": "MAX", "value": 0.3244685243658485}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"yjOR0R8WPpfPeMLy": {}, "jcovJgrPyRh74acq": {}, "LQ5Dgt6hFldRhmTb": {}}, "additionalKey": "EamnIIihB8jNxDaH", "statCode": "JsarDyPQYifA6PwC", "updateStrategy": "INCREMENT", "userId": "sVK4wYlb2ioddJ2H", "value": 0.3131878409789096}, {"additionalData": {"HnZHBWeQifADoRnU": {}, "SJn9cerPwagWPwf0": {}, "ImULGfzQOeBOimG0": {}}, "additionalKey": "mYbTdbdi84aoREfM", "statCode": "JmiIm2UEn12CnN2a", "updateStrategy": "MIN", "userId": "5IKD74GKUBpkVjCZ", "value": 0.7442052002480092}, {"additionalData": {"xl53ezbmARkcJNJm": {}, "5aFPMfjkryEFdpNz": {}, "rshQRf9ehVtWbPAA": {}}, "additionalKey": "50rAZKNRw8PxMEeB", "statCode": "Hysey5LpnDbCyUm1", "updateStrategy": "MAX", "userId": "pGIaosWlv7KTBi0q", "value": 0.6090344038140509}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'CaONylWymsRzqUTe' \
    --additionalKey 'rATOwAOf9mO1mNwv' \
    --statCodes '["rQPKIC7YBhjTcdXb", "1AV7YmiyxBjGs45x", "kJ6LpfRWoRZycP54"]' \
    --tags '["eVNrRGOhHO9r5Oci", "OkEaSG7d9jwffmzf", "TPY1Z0bLLfEgpHUz"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'PbSW04Y8KrSnOv1p' \
    --additionalKey '3MrT4zt8TfISDQX9' \
    --body '[{"additionalData": {"djHNt4kbxDyF0anV": {}, "mvlwLOMFOqpsuQt6": {}, "32vp7HUNsOtFUFER": {}}, "statCode": "7IfIQgK10iYq73ab", "updateStrategy": "INCREMENT", "value": 0.6555389139922523}, {"additionalData": {"mi7us45bs9dLSrqX": {}, "ClL0v78mXn8un3VQ": {}, "IirEN22ljNu2sHKA": {}}, "statCode": "qniSdZh45H6FVJJU", "updateStrategy": "MIN", "value": 0.9385698403930051}, {"additionalData": {"IILzkS8NmXIR2PHC": {}, "rb4Wb2ETGNmS6Ls5": {}, "noxZ0dvyxgXtc3wo": {}}, "statCode": "HU21nbxRYfxEUtOK", "updateStrategy": "INCREMENT", "value": 0.05447133043158825}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'yDXJ4eZmD9EvnfVL' \
    --userId '1omQOOnnddD8YJPi' \
    --additionalKey '47aSJ8nZ9bjNqa9m' \
    --body '{"additionalData": {"ou2btim3y6ypXjBI": {}, "ZGZX2bQGWxuGAt0W": {}, "FW5iGqIiVY4Okb5I": {}}, "updateStrategy": "MIN", "value": 0.0664470071801071}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE