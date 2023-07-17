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
    --body '{"maxSlotSize": 99, "maxSlots": 7}' \
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
    --userId 'fwiowtQt7gxFHFiQ' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'w7eaPgC6ZAXWKOqp' \
    --body '{"maxSlotSize": 93, "maxSlots": 14}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId '8ECtoQZa19ZZzEID' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'MNtGpmY8i6CXnYtP' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'iOTY5GnzNhczmsjJ' \
    --userId 'R1cr7m0VReHJqTap' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'AzSROqu3tyySZVzL' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'V5V6OyrgnK9wF9GB' \
    --userId 'uyMC2abuR5YOG8WX' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["nVa4DHnxnBYqgNkY", "a0XuLss4oOEdztfa", "rZSeK4pn7jNDVPk8"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'PCeI0t0D7iWjyujI' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId '9ZEJCrezNB8vxdLW' \
    --body '{"achievements": ["TE23NQeFoNkH8xFZ", "NMkIfGsntxHZEHac", "K0UFdYVEP3kwMMjL"], "attributes": {"SVr3Jyoc04Jl212B": "kLW2pk8JTFAcBDQC", "rgTjJY9zYT9sT409": "R3ySkPe6hCv9nrRw", "7cAzHOKVuBQ2Yy5g": "n5CNxBGBZyKZm2AA"}, "avatarUrl": "aiz5lvqtHqlNyPDA", "inventories": ["aBxlVCytFVrCHXC0", "OioZBtzapSIZhcrr", "paGWpBRXu0a46VwC"], "label": "LcYFlgNB9Lb8AJji", "profileName": "pFNvtB8cm2Gsdt07", "statistics": ["B0DUAdAoI29mERH0", "dkDglHzUPGg3bWgn", "OGoteCWSLte0ibV9"], "tags": ["keneelh1zbYLZVGm", "IN35BZ671Zd2bZH4", "5AQG5tRTBVrqrJjN"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 's1FWyCVXhWvBrXkJ' \
    --userId '87E6jOKiAy7DUmkk' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '8nntzWwMyUnjvm6z' \
    --userId 'vX5giirkgSymCVuV' \
    --body '{"achievements": ["Ks4ax896XuGQB7Pg", "ZrAt10AFAi62d6Xa", "hVExSclPtRE2kADR"], "attributes": {"pJegjPo68jgqMw8w": "G63M1M3gNhKTseCZ", "bZ8MwVRPcFx6YvJ9": "24NkPK4hz7gTDmY2", "Ng6hJ4T3O1AIi0AP": "3b1f0x4wT4ggTQiV"}, "avatarUrl": "qsacAG5NpAyLPQkT", "inventories": ["BuGwc4m25FPlLqQz", "AKLHrPE2jLcWX6qQ", "VUcZtmCvcGiAUh1e"], "label": "eCF7NsX7CTa3K6hs", "profileName": "O57Gd9mqPZHiJo7N", "statistics": ["8uX8kThz5Ljv3dzo", "3qjNl7KjHxS5Q5n3", "3uS3nRvZg7c641tE"], "tags": ["noxrcxvJOe3Oj520", "ru2gCs6Ut65znq7M", "vi6vQNZUlNaCeFFq"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gBqtBEwFMN0xRj9E' \
    --userId 'RrkzxQ9JZMNzWGjy' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'KE04JyxI1NYS1Ums' \
    --namespace $AB_NAMESPACE \
    --profileId 'J0Lz6EPDrqi50w1O' \
    --userId 'bOyTMMAwPIK1UzoY' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'HSCloTnbxUnoe50B' \
    --namespace $AB_NAMESPACE \
    --profileId 'i48nErQ3roK9T8P4' \
    --userId 'k1xu5xU1VKgXj3fE' \
    --body '{"name": "F372fDMv5sOwzTUA", "value": "WMJly28Zqt4eSYfT"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'neBeh0W6enXqoyW1' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'pM3e9xe2XL24fK1b' \
    --label 'reFRaWi7Ra9Ubegp' \
    --tags '["X2plU8py3Kd7CXsY", "pFWBT5vUuWwRqEK3", "M1ZbLHgJNkeITh2a"]' \
    --checksum 'ZrGzJt6sUcSV2VJD' \
    --customAttribute 'D9uD995kP5mUI7bC' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'UymQ2jHCDeQQRYNL' \
    --userId 'G3jAeuJx49dlGMko' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'ptSoelCzNNmmD4nY' \
    --userId 'PvOOC9mc3xe1GnTR' \
    --label 'RDiR8LFQK942N8Pz' \
    --tags '["iq3XyAf3Y0DXHmdY", "GfW49c8nlELZDoN9", "ADiEv5tPGHABZjqe"]' \
    --checksum 'LEEYO76lzkOPfwWr' \
    --customAttribute '3Uu2SaXzSk7pUSGg' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'GOG1r8JiCdQBrVCq' \
    --userId '3d5zYaLCjVufSE5K' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'sUvhOXZhafOnHmb2' \
    --userId 'PsT2gGle10Q105GQ' \
    --body '{"customAttribute": "SX9sMq04Po1mudrK", "label": "LG5gE9s1JNwzpkDD", "tags": ["a1ubF9yUsHcX9Wxs", "fx0Coef6Nc34a98f", "y1dYWgOiUFETtplf"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '4' \
    --statCodes 'XqHTIx3umzLOTWAN' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 't79U8t68O1acP47y' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '28' \
    --name 'E63iA4dHcUhyYLJ1' \
    --offset '63' \
    --sortBy 'FS8mUAAMIVqAY8Fs' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "rEbsWlzvUiBYLSWm", "end": "1979-08-06T00:00:00Z", "name": "CiaxO1NuQkKOOYI6", "resetDate": 37, "resetDay": 41, "resetMonth": 19, "resetTime": "ZXM6JVsKB5uV0lxn", "seasonPeriod": 91, "start": "1975-11-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["2uzEnoSoxKIlW5tx", "SudHHGIvbJLiiOGU", "10fnQFIzzAfpSXcJ"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId '5LZ0DPrw71jGjJFd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'C4AsrhBY9ih1FASi' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "8WONpsN3SNUbDr2m", "end": "1973-12-17T00:00:00Z", "name": "cYeqDjmhId9mWJSr", "resetDate": 35, "resetDay": 56, "resetMonth": 6, "resetTime": "nr68AiI6huUEolN7", "seasonPeriod": 94, "start": "1971-10-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'MVCWNd9fdt04Rqe2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'rzW2UI9oBg1R6R1W' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["Dp2GMLVEQ0pop35G", "wLwklqmRlZlCIsWj", "76i7Hvx3ln04vyBK"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'WLTCTKl7bZ64TdhT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '5opd2225mcEsSULr' \
    --userIds 'zU1OZhJWJK8Bqy0E' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4052294261757077, "statCode": "4XC6aNPSL7z9FZzY", "userId": "HFf81Z0YsvGVJVAJ"}, {"inc": 0.34911736721422215, "statCode": "dFW06WC7raFolbQ7", "userId": "DsfB5Cf0cS62WORb"}, {"inc": 0.9055630047515214, "statCode": "iaUSw0Ryo2bsqZVE", "userId": "QErEqNmhijEKU9do"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2945635772414037, "statCode": "lRlBBOtcCfY0IIHZ", "userId": "2P7Y1ywDIRQz6clU"}, {"inc": 0.27946647677903114, "statCode": "jdYDTlCmpAs4PSUm", "userId": "bXq66yk4dE0a5Yx7"}, {"inc": 0.8824519633209457, "statCode": "rlSLzTRxPqgtd8jI", "userId": "LqXL9DVf8WCVxVgD"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'WSKCDeqUClpE5beu' \
    --userIds '["QFopgZavdEWXMvKx", "aA2EWf99RCufZCT5", "Ew8AWYR6vpFDTT0r"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "oFq7s74PLupTsekA", "userId": "wvdGrdkE6TOFfypY"}, {"statCode": "zOpiOiBsxWfBdlWH", "userId": "I49wMVqr7ixYEgkp"}, {"statCode": "KtOTczjlyCoOI0Ga", "userId": "7AI2nkr18KLUENSc"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'I893BbIqaCyiIceg' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '75' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["XnDaU1Buqlm40yPZ", "YPTWe6W7v4lezW13", "0G2IXBMaX8tF5uT1"], "defaultValue": 0.496729867234173, "description": "m8mH1b0Qs8i9D2Qm", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.9262296471351275, "minimum": 0.3557427725947989, "name": "VPhfe0Nt2jgo31bi", "setAsGlobal": false, "setBy": "SERVER", "statCode": "1gB74RgNcCAKz2Mm", "tags": ["3QNrU0RO82Iv7Lb4", "BdWebo3EssmsnKoQ", "nktVOpfLXm3NsYMr"]}' \
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
    --isPublic 'true' \
    --limit '7' \
    --offset '80' \
    --keyword 'LoayXcJ4I6R1DIli' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '6eNRfFlZLBaPqLTA' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ijcTR81gHynF1wnt' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'dcrfEH0felk1MK3N' \
    --body '{"cycleIds": ["b5H9zuVONpfhgbDs", "d15GzN28fIbWQe49", "sWK48DyScfCkP1ut"], "defaultValue": 0.810449488579778, "description": "9K69zRbQXpxI7vJg", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "bi2OIcJHqcZcFn95", "tags": ["OJNWBCXO5S7NrbVA", "2qctTZCu6X09GaBW", "ofQuFNjUDrLgcfKq"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '1MSXRG5iDwoxK4Sp' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'HpVwF8GhNbvco1Iu' \
    --namespace $AB_NAMESPACE \
    --userId '2MFxQCRMtHZpkJ2L' \
    --isPublic 'true' \
    --limit '57' \
    --offset '32' \
    --sortBy 'mwtVSO9T1pYAGnGs' \
    --statCodes '6S1oTgxniktk4yDI' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wJNYhCFwDJiWTnCq' \
    --isPublic 'true' \
    --limit '85' \
    --offset '68' \
    --sortBy 'KyCw1fd2OsAaAmCb' \
    --statCodes 'MsF1EacSwT2r78yv' \
    --tags '3upQ5h3Xvf2YMrbj' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'V6ycDqZk6UISVndh' \
    --body '[{"statCode": "Fl9Buiq0q3Fg2DNB"}, {"statCode": "d8r0sCh5VWzLD6Gr"}, {"statCode": "FKEkN8yWS6PmJvdL"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'oFz71eIElbDVlb5x' \
    --body '[{"inc": 0.07390520115258414, "statCode": "K8bDQ3p1jdjvl98V"}, {"inc": 0.9832375174471083, "statCode": "BWcHLTTQteysmxOg"}, {"inc": 0.42075354387523534, "statCode": "CE2JN4BGkxZcLtGD"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'tekxt9U01zDjcrxH' \
    --body '[{"inc": 0.7531824505124923, "statCode": "KBGjRCti2RgTe6tD"}, {"inc": 0.4270280894524835, "statCode": "gaC9ffrOkishpLYi"}, {"inc": 0.7832991803817702, "statCode": "yhonb4kQqIUgsN91"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'n9qrDJNEGWGUuVeu' \
    --body '[{"statCode": "YBZowrVWzdpjcj8u"}, {"statCode": "Lbj3yDt5pLI65QEX"}, {"statCode": "POc0v71rFa2yvT9C"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'BiP0h4G3hVWKrmL4' \
    --userId 'Ms1C7FpCnh8mQiUT' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '8zYFVMZcHXe6ecde' \
    --userId 'jy9OzlJdl8jwK63b' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'tFyymMfijq6rZMPG' \
    --userId 'cdMbw7Riy81MSa9B' \
    --body '{"inc": 0.08104404983285984}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '1hwTHuTaF1hg2sMq' \
    --userId 'SVFIrguGpAESszep' \
    --additionalKey 'uMQphVgqL1G2Ei1V' \
    --body '{"additionalData": {"YXvBjF5RiTIxT3KQ": {}, "T0YMhcLiqPNSgM9Y": {}, "FWdGTkv8MyiTgsU4": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '49' \
    --statCodes 'xUQqCmGHtNXu7cia' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'vXzIlC9FlCHZKvgm' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '20' \
    --name 'GemyRZsRLdgU9ZDE' \
    --offset '25' \
    --sortBy '63SHIx3ZYwIhBr4D' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["hA0ThMgz2kAFkkZ5", "FWj2iNUP45QpRgA7", "KJDR4p4EfUNUFj7s"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'd6MA22cz8lZA8JSu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '9FkY7hYZbPiNQWV9' \
    --userIds 'U4U2rtyBW8KfBNE3' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.779273392436609, "statCode": "kMlz8s4n6DeVriJy", "userId": "s2oZkwZjvXMK7kCC"}, {"inc": 0.19171628959201492, "statCode": "zR8STOZhLLGM6WLB", "userId": "rHjNellwS1Z8fN8q"}, {"inc": 0.1330188162284709, "statCode": "9tIGZdhBYuXVspia", "userId": "1u69A3TkaPXIyOy1"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.17881663748059917, "statCode": "RDoNoey0iM0mJj2I", "userId": "xrURGmIyEtsMvBvn"}, {"inc": 0.37701703397793374, "statCode": "WW8RO0y2FPe8q8xI", "userId": "KXKiUMYUdwm3Z0WS"}, {"inc": 0.6848578327635925, "statCode": "3o6HkJdpjKsqr8i3", "userId": "jsbI7rjcTjsit0V6"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "La6jLFN6aKQv79N8", "userId": "LvYjoIl7kQrdcWgD"}, {"statCode": "VTUi6ZWZiFKhARLI", "userId": "IGyUB47MBAOAbe4y"}, {"statCode": "6EqttnfFkAT28x6o", "userId": "xJeVT6flqmM3Utpx"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["mR0ONkvdqHAKjkni", "WUnfQIO5gmUBs96P", "gcw9daGt9VhFxMis"], "defaultValue": 0.39094642397102186, "description": "GNJ1MyRg0E02uoOP", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.9824575779604563, "minimum": 0.16872698430277833, "name": "HnCzzZxayELKcQJG", "setAsGlobal": true, "setBy": "SERVER", "statCode": "vhJ5Sr886Dqa1A4Q", "tags": ["oyoQqaZIl8hJx43M", "6znvjbUfsnE8lTri", "GfgcXSUVAgFmJasO"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '7WxHAWNxgT0t6O2R' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '82' \
    --sortBy 'HBLg1gqL154CmEDu' \
    --statCodes '["XRfoEqUpv3ODKJzI", "MWlERAaN5HWovZ2J", "k2khEToBxGxBMqGt"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '10' \
    --sortBy 'PRqCmxEoZ1EzT4lx' \
    --statCodes '["ThSLSKvWeo5G7xsL", "rISFKAG8geKjbKOi", "yEYsvbp7Gk1lzolx"]' \
    --tags '["oidJA7HTawEZQnuc", "z8WU6b0ZrpZZvtnm", "bx46aAkpmXHwvoOX"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '7NPnTayyV9fqqF1z' \
    --statCodes '["4uzXCS2S6jGoYNfN", "oj2j8HaAkdOSgh9W", "MWaz4E2mttyrVGGj"]' \
    --tags '["KJ7Wg34l9OYf3MyM", "87Yx6TptKqqXsljy", "czq2AxKnC7ehkTco"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'EPDpo2c3BL1rvT19' \
    --namespace $AB_NAMESPACE \
    --userId 'D4O3NCH98Bls7uTO' \
    --limit '20' \
    --offset '93' \
    --sortBy '4GXt2jaOvCI6YDRX' \
    --statCodes 'SDitPaYqekTDvlJj' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'kqnVe2bL4xnSrj9A' \
    --limit '63' \
    --offset '64' \
    --sortBy 'TYnT362HYBjE60Ho' \
    --statCodes 's0ZKoDXK8fIcEZQa' \
    --tags 'qVoS9aQbekBX4pWM' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'f5XNsXQMteryYTdK' \
    --body '[{"statCode": "3USQr2d5iS7KovVL"}, {"statCode": "5ho80QVKENuZF1r2"}, {"statCode": "qdZo0hIxSNDsXbsz"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'h7jmGRJF6BpemkkS' \
    --additionalKey 'GAwm8svRtXmsQxPh' \
    --statCodes '["0EgYVpAyMNk6H6hH", "ZhuZrpEFOzESAbxJ", "gqzXjVnvbnOFQld1"]' \
    --tags '["HL8wNWlmXtcTlkGL", "N3anWewWNNYYyCB0", "tFEbbm5sfQaEGpvg"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'D2ShX5DWEjMFGFfF' \
    --body '[{"inc": 0.13967368182539674, "statCode": "s9S3MhrNJAfKbCXf"}, {"inc": 0.5503792247570823, "statCode": "npdMnEOmQNZWNlPW"}, {"inc": 0.440403669068951, "statCode": "xccpy5F4vBHUFgN1"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'rvFSf8mlQj8GQ1oS' \
    --body '[{"inc": 0.08048028604036284, "statCode": "KKBPAls0zXAuSbvm"}, {"inc": 0.19955074988269617, "statCode": "WTaUHH8wfQnRp1VC"}, {"inc": 0.5064953572530996, "statCode": "OFcVotY9LibVPi0P"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'Efzoud0ZeKPxiTeC' \
    --body '[{"statCode": "DTHkiUW7MSdHVOcB"}, {"statCode": "GlCxcPoAgzIUi6pY"}, {"statCode": "rt0AvVRxJ6UaaPgC"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'EK68xvjIUI787TZx' \
    --userId 'vMVfFleDq6R7BBCw' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ierRRwTuRvhtJY7I' \
    --userId 'yZd59y2WPMbd2gIi' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'xETZOB9qvGiT3QcQ' \
    --userId 'B2WQOzcDckN65q4q' \
    --body '{"inc": 0.37224301921871605}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'gKBpRwN5zPJ1ZUJW' \
    --userId 'NXgRwEUWUQPu14ZO' \
    --body '{"inc": 0.9419721704888485}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '8DoGXCIktIlfZ7j6' \
    --userId 'w4Vmy54FE8Eu6YiC' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"oyYqeCTulpvp2rRB": {}, "qeX3X4OAp6LC474P": {}, "NLUcTooGntobaUcd": {}}, "additionalKey": "xCzI1I8f3rYOtT2b", "statCode": "IrEF2hEfbpxB3CYD", "updateStrategy": "MIN", "userId": "xZoMlmUOc6pL4nuz", "value": 0.40771505670115893}, {"additionalData": {"EoIZid0FqjvevgHF": {}, "bHhH8g97Lvxm7PAz": {}, "iWdVNRV67lLzlkee": {}}, "additionalKey": "IFwzSxGDVYvSL2pE", "statCode": "m2Rtg7Yxwkb8JQO1", "updateStrategy": "OVERRIDE", "userId": "59eFpHyl2j8BkS5l", "value": 0.9936565287037412}, {"additionalData": {"suW7DLmKacQ5dPZb": {}, "CiEj9tXAkPycr3jl": {}, "idU4yeGCs90UUB5q": {}}, "additionalKey": "5gg0U319ZCNE6wLK", "statCode": "uc3G9mJLFsoYV30l", "updateStrategy": "INCREMENT", "userId": "WgophOGrMo6WUyiX", "value": 0.11460394335367674}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '8AoRsO6Yu6MI8GAU' \
    --statCode 'innctwMUIRoUPxxm' \
    --userIds '["pcrdiCn8IBuISCf9", "S7rn2bd7yMYNg7Aw", "bxorzWDnpvo3Gzbc"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Fl7MCLwL1hvuuQhI' \
    --additionalKey 'coAL96MEphR6PaRL' \
    --statCodes '["kJ9u8ggM9JBt8Py1", "7P1juS9fItfFHnLA", "CnJrdgANnygJJVJI"]' \
    --tags '["ru88gfvVPQrQgunG", "4bqtrUm6e5G6YfM8", "GEtbHdlFrcB6LT88"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'JrG86s3vZfaatOPd' \
    --additionalKey 'HZfLbRGiefmXajGo' \
    --body '[{"additionalData": {"MmL8V7vLrcToqMkr": {}, "mTZSFJZiAzgEif3U": {}, "kQF4wPclr7yPzCN2": {}}, "statCode": "6ZYq9TTEElCyGM9r", "updateStrategy": "MIN", "value": 0.30313932294503243}, {"additionalData": {"BNbkRJcDoQUdbFMf": {}, "ztA9mDkyZFAxLhhv": {}, "xZbdRm5chhIWMDxu": {}}, "statCode": "Xq5WoHU8R6puhyOK", "updateStrategy": "MIN", "value": 0.26760652684101915}, {"additionalData": {"z9QNY7OzyuxPfEai": {}, "2p9di8AfUtLjoTkW": {}, "l7MzcFpclMmmpkBk": {}}, "statCode": "91c8GzidfaLLIKcS", "updateStrategy": "MAX", "value": 0.471739730347546}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'jr9YytljGcAUEQwr' \
    --additionalKey 'nQJ5USHht4DSVb0k' \
    --body '[{"additionalData": {"wJk5SyQyY9FTBmkF": {}, "dEd33Yi1URsoVhRO": {}, "umI8Hhf7V9mUckb9": {}}, "statCode": "RhwDAsRauiTNgzWg"}, {"additionalData": {"1Ku2tvq5Svd0jX0i": {}, "Ho3HGh18B2srfHTQ": {}, "fQcnPVMqlxB49pcQ": {}}, "statCode": "8Om82qJL1K3JwTJm"}, {"additionalData": {"aooCeZX3RArIsHX3": {}, "JWs9xP0Xp4Ik8NAw": {}, "CM73Jx5msAzpyKWT": {}}, "statCode": "c158Pe9tsVazBBNG"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '6vhuL3JBTher6VdK' \
    --userId 'lH3nJkwL46G6HLfy' \
    --additionalKey 'CqfcBK9B0Jiiz6GZ' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'eM1xu8TefHEaNybN' \
    --userId 'l1bX0GQ8g3TSPWUo' \
    --additionalKey '1NNg0sbVMlb0tr6w' \
    --body '{"additionalData": {"OSP8iNLFMIEkTvTc": {}, "jMbJPNErthpyxaMW": {}, "NyTKZTPJM53EAFEJ": {}}, "updateStrategy": "INCREMENT", "value": 0.9483295649382699}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"XZRj4jZChqC7gBf1": {}, "ZXGEdetj7FBFbj9H": {}, "I4Gyg2dASpt5YEwf": {}}, "additionalKey": "lLLftSkkCbEmbBxY", "statCode": "RgfebMvQPTgtTNb3", "updateStrategy": "MIN", "userId": "Ws1SJc49mMDFqBC2", "value": 0.3668367318346636}, {"additionalData": {"bKWJrUEYQd19HKkw": {}, "BP5i6xH2R9MHUeLa": {}, "dVVYqWlDJiOAf2x3": {}}, "additionalKey": "qEAfxgTytFuSvjbM", "statCode": "dMGGbem2JeUMfx2p", "updateStrategy": "MAX", "userId": "KcyhUzEEAWP0ZuTz", "value": 0.149951155941358}, {"additionalData": {"BDpJa0u6kYtGyhOP": {}, "IFlzMg9bdw0oaNNU": {}, "HXWgVUB5C1KPXU6u": {}}, "additionalKey": "KZ9m8MOzIDxgdKp6", "statCode": "waC1ivexGgrWDPcJ", "updateStrategy": "MAX", "userId": "SrcC384A71i2tGW3", "value": 0.672891467266438}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '7P2iMPtSokpM9VQb' \
    --additionalKey 'dsSxHel4AZQrz1mz' \
    --statCodes '["bPBWilIIG3g89Dxs", "muTi6xEjHx8tuhVE", "SKh0KMWLimqHz6Qb"]' \
    --tags '["xpymgTgW9n8Q6566", "ekiOMT4RUujTg8XA", "KbvZSwkG8aLSIxpb"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '5rF3gLYy8TgzjLZg' \
    --additionalKey 'Bno1H3PfzmSWSh1H' \
    --body '[{"additionalData": {"28w9tVjCHjd5TbBN": {}, "yLTDNIIKP7LvtGcR": {}, "0zMhoUr29jRUyjKd": {}}, "statCode": "DSvxyP9t2CugxJBU", "updateStrategy": "MIN", "value": 0.13918653217498667}, {"additionalData": {"IU39eh8dSBWyEDf3": {}, "JZ5mkib1X5U7Z7dy": {}, "gUCyLeyfIhVUfWCq": {}}, "statCode": "2Mpm7h7Efabo3XrP", "updateStrategy": "OVERRIDE", "value": 0.052053030231363207}, {"additionalData": {"W0X9uJ6c5Cr8RRQI": {}, "z27GH7MdBS9XoutC": {}, "AXWspZcgL73olX98": {}}, "statCode": "gBVpwyQB7e0b4bJa", "updateStrategy": "MAX", "value": 0.2744885410138058}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'KVn3c2RVwn2vO4WM' \
    --userId '4yhUCYs1uieQuPqG' \
    --additionalKey 'iroiBy0Mn6FyGPbo' \
    --body '{"additionalData": {"bjBEUo6wDPY4PqP3": {}, "R7jJq75bNxvhFgcA": {}, "Wvp3j5pm6qxT92J9": {}}, "updateStrategy": "OVERRIDE", "value": 0.061069834596265915}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE