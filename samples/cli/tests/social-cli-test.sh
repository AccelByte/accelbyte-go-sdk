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
    --userId 'CZRTuPUnVKniYWXn' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Sbl8rIGIP9eJdnIc' \
    --userId 'Pkd8tUXV3sK8tiJL' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["qm0udtsP8whxqMrx", "jKH8HJLvJQR0a9IV", "7NJCEErW4aNk9n5V"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'xWWUj9ZnDSgqSJ5L' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'IlYM74icCUAYvOwU' \
    --body '{"achievements": ["cveDrpGc8G3NhNUV", "qC5jDlQYo4Vs67ET", "azqbhdtg8kJrw4Y6"], "attributes": {"I6xt7hlRDcpUAJO2": "CZ0VR0ZQN5Y3w41L", "gznVWzJNCFYqfrfY": "9i82mh0bo59Yn0TK", "0l8xzOPeGTABmM7v": "HNBFm3xjDe3Vynr5"}, "avatarUrl": "DirpAbw0vnqjhxq6", "inventories": ["K7yViBmWEN7mBDZt", "M2ay7zXOuGaf7AN9", "hVIGhNx7JKqKLFgp"], "label": "SZGzothFitO9EA29", "profileName": "bNOov8BBOap1MSNQ", "statistics": ["8yJ8Uz8yOlE2KacN", "x6IfCZQYlUPtpqKQ", "sScUz4lm5Z2VZ28i"], "tags": ["haZB8O0oS62dTrgL", "g9hVlHRThbqvXDLp", "MLWN7hgot6AhK978"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'NXEATRO59eUFfYtD' \
    --userId 'KdeLm7RtXM7wYny9' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'LRrG0zyhbefaxSts' \
    --userId '28zAemMUrk584sfG' \
    --body '{"achievements": ["8GbHXRg5aBvt6MND", "JYRcxS1EZLvutR1T", "aSiGIMrTOlw7IsjN"], "attributes": {"jCbApGBj8EekSUyi": "gRf3J7J509ewh8Ey", "r3PbMZTra49kwY9o": "SIlGOydaKObOsIrp", "PRDUqHcBK2reIA5K": "SYLrTQDszbDPCSXN"}, "avatarUrl": "rIrF8GiPMtu15v8A", "inventories": ["Yrb3nD4tJybhcrzg", "IacJCiiuyGmD2gVJ", "o7oI6G8HhFYtkPnh"], "label": "TO8hZVNB3ijBAruf", "profileName": "MkYp3SLe7F0xgo10", "statistics": ["ZP6EwW3ZNIXnPzCz", "ZM5HdkM2aWODjoxl", "5OSs6hemPi2qiQu0"], "tags": ["2oyvTGzgwtOqUUL2", "Y7Bgve3gxOefvkaN", "JKfvfDQQQklddrBx"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'jMNOCyodJfiGS5lg' \
    --userId 'A87umghtc497Gbgz' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'TVFsNqsrd1dFvzWt' \
    --namespace $AB_NAMESPACE \
    --profileId 'IVpS5LZSn1i7SQCQ' \
    --userId 'k1xJ3PlEfjZt2f7p' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'DzDlnCpJwr1SRGH9' \
    --namespace $AB_NAMESPACE \
    --profileId 'FRiRjFVQtB5hW75t' \
    --userId 'GTRDhcZf6Kw3sQme' \
    --body '{"name": "NUdAVWCtj4KVnIE1", "value": "xa45jEVYvEhNemcx"}' \
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
    --limit '83' \
    --offset '93' \
    --statCodes 'J6KTd8ezYq8uURNZ' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'DpfiNhwLWLIZ5OHa' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '53' \
    --name '8NBpx9vWYLS8Xfnw' \
    --offset '83' \
    --sortBy 'fhheUVSMZYboG6gv' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "qO6bKAvnnCJ3XCgG", "end": "1992-07-19T00:00:00Z", "name": "7M8xsauZUbN8Peul", "resetDate": 30, "resetDay": 24, "resetMonth": 51, "resetTime": "Iss6I5i5t5fpfNpw", "seasonPeriod": 30, "start": "1977-05-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["HncFP4fbyPOVNheT", "MwAEyWdsJRRVrboI", "XqNzqGcoFx4BFXyP"]}' \
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
    --cycleId '9cgGyuLv7boodeT0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'AczObvc8gRfVW34S' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "gRrLg2bXNjvFKf6v", "end": "1975-04-20T00:00:00Z", "name": "5YO8HDYSs2XOFKZA", "resetDate": 93, "resetDay": 91, "resetMonth": 3, "resetTime": "NKvkk3vlHMa3hbcb", "seasonPeriod": 39, "start": "1979-07-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'PgbVrYhKNH8dvkc0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '0hEri07HvP48c6q9' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["g9jKvsdJuUYs6QgH", "MtE0vzPqr2bSVVmH", "4nRCXbmuq9e8U4ca"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'F1abl4Lk7lto09E9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'X8DcF7BU2oIA3uz5' \
    --userIds 'kH7pTndBRzMa0YuK' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.0877536804722795, "statCode": "vLtWQySdCOIFUOl0", "userId": "VLurrqhSAjbCvS7L"}, {"inc": 0.06218623228594555, "statCode": "oK0i3rbdEbEGJ13u", "userId": "VQdrY7kkubVgTW9C"}, {"inc": 0.2279026733974755, "statCode": "LOZl1KoDL9QyQTfa", "userId": "Hw6A2eoJQf9jonsb"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6961926621559028, "statCode": "wGpS4nVCbCe0M68o", "userId": "cG0lVDcXFSq1weXz"}, {"inc": 0.8396985062160252, "statCode": "7hYy5u0AAFshCsmu", "userId": "memDGA5NpvcV9ahL"}, {"inc": 0.8110145111157101, "statCode": "0K611t7IVo1tTttE", "userId": "fwIUUeyZbIWUZylz"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'xFtcPkLMbWchLzde' \
    --userIds '["1FOWJFsi3H1yfFpk", "wxi6cJ22gmwLOBwQ", "4JfQlEC8gelXl4wT"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "3JrQcATSz7RnPBqD", "userId": "wzB1c2f3bjMJAEQU"}, {"statCode": "WunF2uo6X5p15i7N", "userId": "a5WIFRz3WXEvIiF6"}, {"statCode": "HdkxEjM3SSCtTfUO", "userId": "ckt4Z6gEgDeja40O"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'vMw8zSBILQMje2gu' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '22' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["QaHbPQrp42WsslZh", "YnCFBwuBVFkWQYyM", "RDCl9qwxfI5GOHdF"], "defaultValue": 0.9863497242017888, "description": "bCYs85TtlfV87qBR", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.2926274735580737, "minimum": 0.8601592497487485, "name": "Tr7QTaAxeaOCMO2v", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "apknT7yAAuQtfVPm", "tags": ["GpQg1NetPfguBXeV", "iQBKLnLvR80sC7Qz", "dMYQwO5VbzCmkQGa"]}' \
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
    --limit '27' \
    --offset '63' \
    --keyword 'd77olKAnarPyY9My' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'N8HrAcLus9ENHAqZ' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'JGoCWkxl3QwPX0J7' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Hvpd6si5HTHM5fDH' \
    --body '{"cycleIds": ["iE21FxfCPFxiqMWN", "06PxZp9jkZ3Rph06", "tVyfxhyKqN7ocoRn"], "defaultValue": 0.1864466192385149, "description": "3D3Iplt9lp2Hk6i0", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "dOLokPBIRZLRLGuV", "tags": ["B0zV09HhfWHmgTXx", "51PNgmE2qbhR4WdL", "fl3we2flupjHmvTa"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'G6FJTr4R41PQTxFi' \
    --limit '70' \
    --offset '89' \
    --sortBy 'WSijolRvCjyLvhOO' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'sqRCenghmJg5S5ct' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '3LK1cfVUakazsMpF' \
    --namespace $AB_NAMESPACE \
    --userId '1vSkxHsixSAAz09i' \
    --isPublic 'false' \
    --limit '84' \
    --offset '68' \
    --sortBy 'Mno3VGmQIH9kXN5Q' \
    --statCodes 'iPw5qOWeSQob1PI1' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'nsn9jS37YzMdPegv' \
    --isPublic 'false' \
    --limit '24' \
    --offset '71' \
    --sortBy 'wc8I44gL4yboocvW' \
    --statCodes 'yfywjJ2O6pPw5NWx' \
    --tags 'FnJG7VHDsciYuVWX' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'U6jWFjaEdz8wpqBN' \
    --body '[{"statCode": "3AZ4UBAzywFL3enb"}, {"statCode": "NSvFITR4TMoqzJrr"}, {"statCode": "GPKuO2d7vrERAQOH"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'IQCr2khlly679Sc4' \
    --body '[{"inc": 0.3783773371229142, "statCode": "rSi6hjIDw1MYYBwj"}, {"inc": 0.7190319158526577, "statCode": "lYcizl0BSJrHdF3h"}, {"inc": 0.28952808943947994, "statCode": "V4j6bcCVxcL4yDjc"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'n3gkiRLjaaq7gJ3M' \
    --body '[{"inc": 0.7647203484526164, "statCode": "o73XtxXK63CZWPC7"}, {"inc": 0.1155689778571477, "statCode": "FdB5soXCKtdF03jD"}, {"inc": 0.7225041669285632, "statCode": "kRgZpXHehToJVl4C"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'yQfM6QhFvyxd9nyU' \
    --body '[{"statCode": "HrpvGxr0eeah7eBT"}, {"statCode": "JowSvQSGOmNemJCl"}, {"statCode": "Sa0hkYKHKmEW4Ooj"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'v6bywkxejBAj7s5F' \
    --userId 'LfwIG91NtXmythNK' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'J64Pd4cSOc68I7Up' \
    --userId '1vF9tCNvbgDeObaG' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'yEvY2DvQxj80R1xz' \
    --userId 'vzVAPXl8TzKWwcCB' \
    --body '{"inc": 0.8311607935812323}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'LGWQ9evpytvV0HTm' \
    --userId 'g8zapcIv3dyDT7Xk' \
    --additionalKey 'FHasiVwTeLEMHMVu' \
    --body '{"additionalData": {"32tB0oQAtaAzwJYn": {}, "YzCENcCA29vDlfZJ": {}, "vgDzgR5IeLgSs636": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '99' \
    --statCodes 'fnHMzfXvwXJwEKqM' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'NOckxAaduT4LMytY' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '85' \
    --name 'UcPVr3F2XHZCfU4R' \
    --offset '9' \
    --sortBy 'f0vgZoCYKqLEpYra' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Hyo9kGblovwMXKPM", "G3b4bw4oexUADvdQ", "8PDAcn5LMhYDyKl8"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'lLw7pBhHdFOm9tUu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'iNekYHSfYNG2daxO' \
    --userIds '4dd2sRKnZWb9J8dc' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.14794288904561348, "statCode": "ovqOxlTi5tkIOJCI", "userId": "AQTzD8gv9dFkPhWU"}, {"inc": 0.7808499800512825, "statCode": "oSmFMD03sT3k3oz5", "userId": "uC0TlqFOxwWffRgg"}, {"inc": 0.4321362670232052, "statCode": "12CHOeRSAYSULDAs", "userId": "B3LsPAUsnxae3HBt"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9767806848517556, "statCode": "V2CnM50CvB7kLWnp", "userId": "yiA3ldl1oF1QNlUT"}, {"inc": 0.9700916036141686, "statCode": "T60tmgDy5VIhaZXW", "userId": "4lMfJ49YyC3F34g2"}, {"inc": 0.44444535326226997, "statCode": "mhKl8AUYuTxMv6wv", "userId": "CJcmCmVaRYJiIbKi"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "i1K3y3S6AXzumJhs", "userId": "t0N3JxmjqnAMVlWE"}, {"statCode": "ISXRRy9X5JNC0RAO", "userId": "Q62VyzgLJU5WCvlo"}, {"statCode": "pvmHD53pOPJVj0sC", "userId": "RRZYXMoD60stqSuJ"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["byEXu8UELInu7Bze", "niiJG2as2NWTU0BC", "T4unpxNoyTww0sSw"], "defaultValue": 0.8133616153860871, "description": "VjTFYheijjJzIp0N", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.34186439656799017, "minimum": 0.7708578526937365, "name": "M97FzWJhiGMtXDUd", "setAsGlobal": true, "setBy": "SERVER", "statCode": "LLQ6eBsEkN9lz8ng", "tags": ["Jlnn1LtQVTR8xE9N", "6ch5rFURlZEFRu0V", "ItEVEngnkkkvAEhu"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'IQTIuokupJM925Q9' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '54' \
    --sortBy 'lMl4upwUlzDrGplE' \
    --statCodes '["zhf4yp5k1b7SiaGm", "nojMxYoCuHi392X0", "WdQiY9DzKYdOCjZm"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '70' \
    --sortBy 'MtLdXOotAlfl7rF9' \
    --statCodes '["DgB5jFqTfQXaM54t", "DrJX5fpfXjm5Vtdl", "6lVKAkvxsrlO5GaB"]' \
    --tags '["e3dCRmtCXptrEO6q", "OvPV7aYX9iMotEYr", "tcGtIYF6t5mXwMml"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'PcVJ8WwY8A5PTs9M' \
    --statCodes '["5W7E4SeQS79vktC1", "cWzlykQlKw5VO1Ju", "zXb1Pk9q70W4k0Ix"]' \
    --tags '["1onJvL1xh23cHrB8", "0bLyoJg1saaP2vCQ", "lM4QiChxAVhcWqwe"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'eyOzG9hColQ1BZai' \
    --namespace $AB_NAMESPACE \
    --userId 'HEhNg3i5GRVukNDT' \
    --limit '15' \
    --offset '89' \
    --sortBy 'vL2CzZ8pefc7c8e7' \
    --statCodes 'REeZs8qCUrhzddlH' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'HHboi6CSVsAawOVk' \
    --limit '91' \
    --offset '34' \
    --sortBy '3S99GMhzyTpWhB1Y' \
    --statCodes 'JrFI9jAWidJUk9L6' \
    --tags 'GvJVzf0INGb2DRBI' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'cvq4sFUrMpS83asW' \
    --body '[{"statCode": "pHizmhzeVDwpx27o"}, {"statCode": "v8ZVLpEx3b6bRtzB"}, {"statCode": "2HTlHyZ1Robc1fiM"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'uuOvW7sLJUmkBNep' \
    --additionalKey 'lHG0foK6gDwWfMiM' \
    --statCodes '["mgwfH6uJWUfXtXLf", "WSG47sOwK7OnYnjy", "Zh28DpcbezTf2xrL"]' \
    --tags '["3kOKts23JEZlMNz5", "O9xrdpB4lVtUqdq8", "EWjFQhKbFn5qbtDS"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ATopOTlZPlDqqFPj' \
    --body '[{"inc": 0.5875617827449632, "statCode": "JOzZd5eGUqFmjS1k"}, {"inc": 0.32720818353225245, "statCode": "kH1K7EZJvALGfig1"}, {"inc": 0.6156695207271625, "statCode": "VJGOHoV5uxn8eghP"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'BJCFX9Jug1i6er9d' \
    --body '[{"inc": 0.8399975091228693, "statCode": "NKfafaiQM5tQqIOB"}, {"inc": 0.650706079596945, "statCode": "nsXygIKJ4jiRQFCw"}, {"inc": 0.9395897349519577, "statCode": "XxaJDY15LaBXIXUy"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'vMrORU08lB33gko5' \
    --body '[{"statCode": "GT7jRbLArJzcuAYd"}, {"statCode": "ZPg79kGpJJ4C2j0c"}, {"statCode": "B65At3wzETsZXEDj"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'JQnoafqVdbGZtjGZ' \
    --userId 'af4nI7mUvl67LFYS' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'KwJSpYUHmudGlkGX' \
    --userId 'gJaMGfvFeOMyxpIx' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'un8BOhOigF3IxhnM' \
    --userId 'CyjtXNU2j3iYIq0V' \
    --body '{"inc": 0.3226548869564603}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '6tYzzTcEVpfX72v7' \
    --userId 'Svu91hXIjg2kmIAv' \
    --body '{"inc": 0.5234005870643854}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'P0qXsYvLqYjImtJN' \
    --userId 'yMka6lwoIIzrOWXp' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"Helvlwwxn51XJkR2": {}, "ZJs8qj6niQXorQqv": {}, "F694gshDwIhD6Jwr": {}}, "additionalKey": "WLD6K269wBW8wPaw", "statCode": "yeNG7i4UvudHAqcy", "updateStrategy": "MAX", "userId": "VNOH5goblXsswRVI", "value": 0.7452881389115451}, {"additionalData": {"fl61Jyu28QnhxNQ9": {}, "omXV0rPcAEOr0tTU": {}, "e19s0DRHVFkXFBk4": {}}, "additionalKey": "CPpTE9QHtByYDIUH", "statCode": "z64u9NB7HV5uxIIP", "updateStrategy": "MIN", "userId": "xPgHVZsiR8NffJgc", "value": 0.20867856374136529}, {"additionalData": {"QK1c6SyDN6xNwWvK": {}, "NFbuR2HnGOfnz1Jg": {}, "wsdMFJCxGKwKlUZ8": {}}, "additionalKey": "pfjHkgQWCOjT31Rn", "statCode": "tK1oSYZDLAm5HGPv", "updateStrategy": "OVERRIDE", "userId": "Xc9qniGHM9Z9HYST", "value": 0.8160323623788134}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '6ezmFa8A0F8kHMOA' \
    --statCode 'VQFIoBpl3E45vb85' \
    --userIds '["qM4UfJ5NlX5sP3bw", "CeR9RyIXM30RsjMN", "95RPMpckJie0Et5S"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'QdC3hpEx2nAAxafn' \
    --additionalKey 'HbvtivxyFiqWsPUC' \
    --statCodes '["EJh2oXG9oAkpf7E5", "C0zylTxYvlRZQs8p", "xnuN3OhP3dGvEHAO"]' \
    --tags '["kszL5kbm70GjxpWB", "sN5V0izXuYim4xBh", "MXpT4uwZzko9u5Uf"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'NNnn5BJlf0wL7mp2' \
    --additionalKey 'kOZZIR8wOFtQSnMA' \
    --body '[{"additionalData": {"W8wlJlt9hJXEr1O3": {}, "K5SLUWzZZEJA968F": {}, "zqK92TR3Sz5y1YYM": {}}, "statCode": "ocifvkTC0b97CzhW", "updateStrategy": "MAX", "value": 0.513211895131839}, {"additionalData": {"FeZqMa2byG4sekAz": {}, "qMsbWJKyLsRFCLI0": {}, "d8osjocTln36Ueme": {}}, "statCode": "naREQ7nDV0J1fpfR", "updateStrategy": "OVERRIDE", "value": 0.486526704893106}, {"additionalData": {"TWbQYM9ohRuqBoTZ": {}, "ov0EaJLlHX3yfAZc": {}, "XNVy7o7jTNsnxZJ5": {}}, "statCode": "cKZ2nZ3yUCbsfOYs", "updateStrategy": "INCREMENT", "value": 0.9477358365145679}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'fGWAW29v9H8eATdS' \
    --additionalKey 'YzZO0a7bxVITpXP6' \
    --body '[{"additionalData": {"c458qUvtaAiygstp": {}, "SlME4oMwNTEZ9iLe": {}, "N9ivkQ5a9FFekO0v": {}}, "statCode": "alYvVVuQ6vKozL4i"}, {"additionalData": {"gxknaHZeWTpo38ax": {}, "3JDvZtxnSbu6rVtw": {}, "wgS7mANXt46y46nL": {}}, "statCode": "WfHKLij0GY0iTslQ"}, {"additionalData": {"uCfv0Wnsp6Oucj2m": {}, "33zDKDvcxUMyvuWE": {}, "HIcHM20cbzo0bjCr": {}}, "statCode": "XlBMb2wJvGZpWUJ2"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'HVVZLEUf1ihh7Wwp' \
    --userId 'fnE0NiOXuQEOwEAa' \
    --additionalKey '5b3MvJCVEbfrLTa5' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'mWtA8r5UlocENvPO' \
    --userId 'BnWvG1M7TgtDAwx0' \
    --additionalKey 'Sj2VIjjF8fS0yCdF' \
    --body '{"additionalData": {"MH6JgeD2F3K5SYmB": {}, "9ZG2QXdwaUVtuznr": {}, "l2QSQMSjVgNpEYpO": {}}, "updateStrategy": "MAX", "value": 0.02017334906424173}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"nq5ag2ulomJykehp": {}, "TV59oOYHpMJtaNc2": {}, "nC1SSPOI2KIg9Wo0": {}}, "additionalKey": "uzmv228vzkZ4s6bE", "statCode": "ZXo2P72ijrCk6rwL", "updateStrategy": "OVERRIDE", "userId": "FWjA4noR5TbWhOa0", "value": 0.8293374082169309}, {"additionalData": {"2eFabUfldyxH9k2t": {}, "HOyRLGmrkxcek6Nx": {}, "BcKKgNqTMvxiOzRS": {}}, "additionalKey": "pv6bKZLQ5VLAwnDT", "statCode": "HAYB1qrR06kPZzIa", "updateStrategy": "INCREMENT", "userId": "KsdG5Pvno3TaWUVi", "value": 0.15164791613253936}, {"additionalData": {"7I65PXb1l83ywbXZ": {}, "axqjBIDezZOtoylC": {}, "4uqNa2J533A19Xbf": {}}, "additionalKey": "eeI9Q4K1JBfmYyV2", "statCode": "8AZhAFQpXBdTQnco", "updateStrategy": "MIN", "userId": "KsBNEUvHYxL4NQVq", "value": 0.1319112081071061}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'RCQfkBoR28zWCpS4' \
    --additionalKey 'wfVoz8uGLhwj7sv6' \
    --statCodes '["6qWEBWvwOyTpSytv", "vDCWpwGm2cf6IQyP", "ddbGZXCStv0bZ40R"]' \
    --tags '["lPYTpaXKjHpmWe3N", "CL5qKFuGciXOvvUb", "gSHNmWfQFmoNIcIP"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'yAknWJhPo89GPxdf' \
    --additionalKey 'uj8CdOc4HyMZwDvD' \
    --body '[{"additionalData": {"w1G7Xov680zx9dPQ": {}, "zLoLfN48BdcqJzZR": {}, "SdbzfNfgwOCDOkyl": {}}, "statCode": "G19emmpmj2RBGdmS", "updateStrategy": "MIN", "value": 0.07303709298647643}, {"additionalData": {"z7S9LbXtZNqZyN0O": {}, "OpJEqvmMBYHQi3QE": {}, "Wldrvbl15qiVHS4l": {}}, "statCode": "OCcEH71ACPowyjcr", "updateStrategy": "MIN", "value": 0.011965728433159795}, {"additionalData": {"rPNEsSXkYgEu5cXN": {}, "JAgYrpnMGC01iMgB": {}, "8hTFhKkX3KtdFDTW": {}}, "statCode": "CqVGQe4k2V3jCItb", "updateStrategy": "MIN", "value": 0.07503269725788542}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'mdMmHPv05DoZ9aLf' \
    --userId 'XH1XtUgrUPKLLgyH' \
    --additionalKey 'fKhpsnZlcQlVvGpf' \
    --body '{"additionalData": {"t0XBAXLXOwJrB0Lr": {}, "tJQCL97VhVxokDbq": {}, "LvKdsbbJyNZMI63K": {}}, "updateStrategy": "MIN", "value": 0.5824008388294514}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE