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
    --userId 'z3irl2389XwmlQlN' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'yLqIpBaWr87v9hEi' \
    --userId 'rDbLJKidgV6kILtx' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["zscJAwQnGCQH377h", "bnZZXnbSihkvB3Di", "OIIhiGb0rJqGK4WN"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'eMlQ3o0f7hXnyLrN' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'nWJ4TZf5G9W8bsZQ' \
    --body '{"achievements": ["oHcxJPJMxGugB3Ua", "ooG1ORkZu07kaYSz", "NIF3egwqtpzGC86e"], "attributes": {"8xaVA5QdgzhQnLYj": "O0TG92IBWH2Lcsxm", "7QmZXHBNLdOOO6jx": "MQ9PGqPxKAEmCtVZ", "fo4vCTPTBc31Bu8X": "J1mTYrErSaM76teB"}, "avatarUrl": "u7SGeaXw9lyJcVSh", "inventories": ["ZyBzrhg6Q56Vv04m", "THn2iQYLrgMdgZJB", "bQTcFkBsESr7s4Re"], "label": "dAKMAeRmqH0HX5C9", "profileName": "bnf2MGUfD91Jolqp", "statistics": ["qGEfA5GpGQzy4kS8", "Kcxwj338ROeXIcmA", "7ejBhKwNowsNnZjY"], "tags": ["Y5yZtbBndkbFtFhj", "tCcOT4mSQvyPaGUA", "6H6lA9L9r0ZIpXJX"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'IoTwquz8YTV4foh8' \
    --userId 'wSMdt0C394t9oBZx' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Reqar199093v4RTR' \
    --userId '2NaCrCoLYOEnBBMJ' \
    --body '{"achievements": ["u92vGacoakzTOBng", "7cYTbkvJeQbMwqRA", "41bFozQe9td86092"], "attributes": {"67TUXBiscHiys3sI": "2Ls3HDpK6ooTxxPE", "0fv1G6ubGre1Qsoe": "8je98pAwxswPvKlh", "EMPYMjgUgpQUJD4P": "Skn8i13PnehR5fRf"}, "avatarUrl": "si13FjfEWjLColIY", "inventories": ["svIZydl5gcXLKmps", "50zTtzrth2CXFe4V", "ofzKK8H6uggvcsRj"], "label": "gHC15Upm9YsLn24G", "profileName": "80uST4zFLBVgDxHh", "statistics": ["mzkmFtrD66HxvhKz", "Lk7JiC9gGWfUx43S", "BNWIB9f3twDPVzyY"], "tags": ["97eJBJHtIWuIoMHk", "c1HgbYaUHiN1XQM7", "D68IwxM65Xg2loSW"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'h6kS2yxkPlfVD0c7' \
    --userId '8bLg44j0RNyHvwAs' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'LmK31bz3bzHn1Djz' \
    --namespace $AB_NAMESPACE \
    --profileId 'E3UiBY7Ydu2DRnMq' \
    --userId 'EfqIxMxF3VSHBk0c' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'uGGqMbPiXgtdTXWu' \
    --namespace $AB_NAMESPACE \
    --profileId '0HwIz8QKGbV14A4W' \
    --userId 'cJLB9cc0h1h6KIml' \
    --body '{"name": "DYH3ygfRhp2vzEY1", "value": "4H7v32QyxxYkQBWE"}' \
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
    --limit '3' \
    --offset '71' \
    --statCodes 'mf8DClKnN5iD6P9s' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'kikBEMUXufl53Zay' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '45' \
    --name 'aecrZKvW3l0Zpa8F' \
    --offset '19' \
    --sortBy '6pwf1NLZoxzZNKS0' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "Gtmt69B1iRT4xF2Y", "end": "1980-01-16T00:00:00Z", "name": "k4N87ccyYgeGdKnZ", "resetDate": 85, "resetDay": 78, "resetMonth": 35, "resetTime": "cuHvfLVfBrHmT9vu", "seasonPeriod": 24, "start": "1990-11-10T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["IMd88AIr3ZyMVHZe", "V4kfxy530jeSFsj1", "no6ZcgkTeE6LRhfq"]}' \
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
    --cycleId 'tgo3Q1KUXmc0y5cq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'YLLGxMxEmkAvxo0g' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "HXF1k4OyfVAT0fkk", "end": "1995-09-27T00:00:00Z", "name": "TG9SOqOkihgeEJpX", "resetDate": 20, "resetDay": 59, "resetMonth": 23, "resetTime": "2YcrXapqiyvYKDCq", "seasonPeriod": 44, "start": "1995-04-02T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'yC1RwllcEMsnuknM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'flOXxSjUW1n9zOUe' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["kh0WfRUkMcZQoeFM", "jHOKHenoIpCwm284", "6PfVN98wNYWKdrBe"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'FzcLB1QCYhUjoL5A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'xa3HxGw4LAelvvyk' \
    --userIds 'mDqvUPWFrcQP62ox' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.008176133044052292, "statCode": "6PcUAZLyqLO02QnC", "userId": "mBV4BKVmUdbfhkXx"}, {"inc": 0.7640994703953332, "statCode": "0XrCnvvojT02pVdC", "userId": "rkv5Qg19wz1suDVy"}, {"inc": 0.3567225926394686, "statCode": "YIBvBIhUGeB2tdy7", "userId": "OH81XaNSkqHbSK1Q"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6667736768875396, "statCode": "QYne4ZNYTq3nZVRD", "userId": "8lONRPShnwAo6EUF"}, {"inc": 0.8690648873185661, "statCode": "OYVFpdHAmVeGbNpb", "userId": "RNG3ONZTh5nxJLcp"}, {"inc": 0.6234065459697029, "statCode": "QM6J4a29sNeTry1A", "userId": "7Qrv3a7ghABDH3VI"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Nolueu0C9AdPkKXG' \
    --userIds '["N4eCpJctjyOViQtH", "Elg7FWeuZ5KWvMQI", "qRuCHF0N0I2kJFbD"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "M5SnZP05HsGjqfsr", "userId": "99CBbdR1cCXLrQ6F"}, {"statCode": "J1MEK9ecNDm6g4BK", "userId": "6Jfvp4MxLBUVQiRY"}, {"statCode": "CT7pFMREmGwElP6i", "userId": "7GIGk7EBasfFQmFW"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'seW4E2LurBR0Dwn6' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '67' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["oT7eW4OFKYePi8We", "0KUmlXEKWPwXHdTD", "kn1kC4rzC2UznAfF"], "defaultValue": 0.14435896381358737, "description": "Qwa3BuQsExg8Xhu5", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.2962621097214114, "minimum": 0.2546757797787609, "name": "DcLnyI1vmVPBfhLV", "setAsGlobal": false, "setBy": "SERVER", "statCode": "3IU0Fx8EeRyz2m0k", "tags": ["yrH1wF3lo11EbxhD", "aIvhjYL8DJjaH9vg", "m2kNrJFTt4kX3nNT"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 46 'ImportStats' test.out

#- 47 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '24' \
    --offset '34' \
    --keyword 'yjZ2vzHQFpvddgFU' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'TzHtnIK7C9BSaRaS' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '6YCWbqZSXoeBWTJq' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ctczNne37M24VjD6' \
    --body '{"cycleIds": ["0yhZEf49XUuF9BEp", "PytVbP68nx9h3aNs", "DoC5vivmIiF43qSA"], "defaultValue": 0.49176785692415204, "description": "lpgwA2kpgCOFcIxA", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "rh1v0S7KWZvEhVHP", "tags": ["OzfUUD4iQ8VEkyZS", "7WZpshv3ktVe6VFP", "ocKuHw0LOTml96vd"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'JGns07zN6gmtz2Ut' \
    --limit '22' \
    --offset '58' \
    --sortBy 'QVQODC0R2CnidpMu' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'V2j5u3L1lyvMTK2r' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'WYawHnjAWkh1yzQd' \
    --namespace $AB_NAMESPACE \
    --userId '8iZWLtBrRo8wE7fL' \
    --isPublic 'false' \
    --limit '96' \
    --offset '1' \
    --sortBy '4hgnrBLNPcPUJtFP' \
    --statCodes '99HlQpHRzpUDD0lz' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'PtJrWbWlP2ZsEOmg' \
    --isPublic 'false' \
    --limit '99' \
    --offset '15' \
    --sortBy 'DHKRRfyxKMhV1fIG' \
    --statCodes '3iAP2Mosex57csOG' \
    --tags 'shq0xf9adN0i0D4o' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Av4wEQMJizivieQ7' \
    --body '[{"statCode": "yNbNuGAddKdspPlo"}, {"statCode": "v7eDNRNPJOQKrfqo"}, {"statCode": "kWYLW2TVTrHrkItk"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'u8l9YSpPB2Kut4Ti' \
    --body '[{"inc": 0.7064491838608427, "statCode": "SV1A7P7aXKqeckTn"}, {"inc": 0.9267236031633018, "statCode": "nxtxaMgYa2RbORs6"}, {"inc": 0.24939026288349286, "statCode": "L80CFu6jIylpsy1t"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'p4HP7taGBwgvb6HN' \
    --body '[{"inc": 0.9519044840284575, "statCode": "H3OyBEIFhFNIqNVb"}, {"inc": 0.4978443507745046, "statCode": "ElF3SMGkpzLM92Xg"}, {"inc": 0.05196903685018961, "statCode": "Fs7F55L9Sq48muGC"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'uO8FrRRZvL5qWcp7' \
    --body '[{"statCode": "3et8d8n8dHGvbOtD"}, {"statCode": "AQAwkcTvxAxgGX6j"}, {"statCode": "v3semajYZJGGHnaF"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'bDt1kTmz27FM8n3m' \
    --userId '13cJ8kGLRNpIQS9s' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'wEcEc730wR9A0BSy' \
    --userId 'v8mx87KJDuDADAWF' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'WtMw8xtXbWa025VR' \
    --userId 'vSiwQzX5v8n7mINd' \
    --body '{"inc": 0.5409450680295814}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'PxKKsMlAt9eTgsv8' \
    --userId 'u7CoFP6L479fgrD2' \
    --additionalKey 'HNWYVlqliUmWRMdL' \
    --body '{"additionalData": {"dH1xvk0EbKfi9Z4b": {}, "U5FvagxiCljIrU4I": {}, "xsFqJCWOlMjuPsuF": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '53' \
    --statCodes 'nPB7W1breS3oYI58' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'fISqCNvE4CDr5EaY' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '38' \
    --name 'dQPKI6WZs13KrypU' \
    --offset '5' \
    --sortBy 'Ndq3Khwlt08OAD1T' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["2q273P9R7qtsgBg8", "0TjirSMGJPnmIfME", "tLnKRogEWLCFeY8v"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'yVdyBp1NQN69EZp4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '259S4dMuqC78J4OR' \
    --userIds 'KqVgFlJ4VEm3Lc5r' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5327747179523257, "statCode": "ocwdIvxVkDcomrcw", "userId": "eTt3jIXm8H9srV0C"}, {"inc": 0.25468980490852633, "statCode": "QfpYjVgDoaBNNda7", "userId": "VTpUg6ymlVbm6Jk3"}, {"inc": 0.943588688756212, "statCode": "kmt2Qm3FATcpJAHw", "userId": "D1w0SlcYX9VJlMoQ"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8643142267139169, "statCode": "UMD2gQjbti8gmCb6", "userId": "9JvAny3fMq3uyfGe"}, {"inc": 0.289982936790517, "statCode": "xhFk0nAmtrFFjGfv", "userId": "uGRpPMkENe1gnBkb"}, {"inc": 0.9374239242858527, "statCode": "l5hSa44qpSqkBqXh", "userId": "W0cBeff4tVUqQ8Hb"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "GVPM3Ncfte8IIlB0", "userId": "DLhQUZLfC4HDG2Wd"}, {"statCode": "BBTWBAQmNzFkarVd", "userId": "Kjxtwrs6aaiySVkp"}, {"statCode": "NZ0rqeJPS6lfi9ya", "userId": "UGnC8Ji2tJ62fA94"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["1tXm8dTPHaUyZNzQ", "4xTyhXPE7mFOYVUz", "GbCLWHLRWp0jk5o7"], "defaultValue": 0.6510199001961847, "description": "x6ggRXqpHC5o8rAg", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.9958353988025727, "minimum": 0.8593265291458091, "name": "ZiwZHX9Ge5lqUJIk", "setAsGlobal": false, "setBy": "SERVER", "statCode": "3DLdcRhpetStDLBg", "tags": ["7kOE4hbB0fKNhfts", "b7u5mMQ01YXqKxHZ", "YIsOQp19MxJIAvgX"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'VXoI4A48vxSMOIxm' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '72' \
    --sortBy 'qlbgvF4ywAKGqfwY' \
    --statCodes '["k0gYLzpdWuoGUvON", "tdRqep6vwlmPf5if", "j8SkpqFPEgJmAFZv"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '65' \
    --sortBy 'HPrt0UuQFZ9vK6UN' \
    --statCodes '["Uatq9Ypb2tfF4GZ9", "T3oeQ0OjYH72AjsG", "59jZAwGVchgO83eE"]' \
    --tags '["fDRTK0XdSaBLhizL", "B7QJFP9piMYHgYWx", "x9SepuTqLzmIeoOo"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'm6MG1XR2uS65cApA' \
    --statCodes '["ovx4GBZmYqSfkgh1", "7ZNQCTMlOLBR97bR", "BCuPTz7QjQXJMIYE"]' \
    --tags '["VYXZAKgIArvmOKmX", "BtOFTRSqjOXA1ivN", "5czPtyvmS7dtwTIK"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'AzCb7fXUGG9icT8a' \
    --namespace $AB_NAMESPACE \
    --userId 'JY62TktbA0gjtYqM' \
    --limit '34' \
    --offset '82' \
    --sortBy 'UUBXrBbDNEn1pbCd' \
    --statCodes 'T57cgbCCeysHr73J' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'EOxuJ51UaeQ2iBfb' \
    --limit '63' \
    --offset '20' \
    --sortBy 'W7FPCL8HOJTxrDkU' \
    --statCodes 'OGGyQ33zlRH8NHgP' \
    --tags 'n80hLf7UC0lQCOc4' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'egFOZVvnqTMYXUGO' \
    --body '[{"statCode": "3kn8yWoQEpKPjtoL"}, {"statCode": "Xl3uOd6QdHjqyClS"}, {"statCode": "ntuuec78A7WSaDgj"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'MEegrB2dn6rMvqyc' \
    --additionalKey 'OWPTbnYnrI005GVY' \
    --statCodes '["mkmPsKTRHeKD3dq6", "WULpJZa4fJHDt3de", "XtKJq5BXJYpCHbpr"]' \
    --tags '["zLo3m34MEbS4yNjO", "S3NkGsOGiWElZ77N", "BcDfbNCwL1LCSsHb"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'XfrcDfo69AjNuzrK' \
    --body '[{"inc": 0.880467004443891, "statCode": "tEnXi0WYHulaM6Il"}, {"inc": 0.16902509969311763, "statCode": "phq1yuXVJBuZJN0g"}, {"inc": 0.5202281633809813, "statCode": "cK28Ioznp2WIjSVe"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'WXAm7I2N5yZMtLdj' \
    --body '[{"inc": 0.7167190896941421, "statCode": "9T9d6NXwnC05EujX"}, {"inc": 0.5625807428071584, "statCode": "7QBKdN6pOa6dd3cl"}, {"inc": 0.07361137632577919, "statCode": "1addmFVZXbOSLQ74"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '1WqG9zmbxA41TvRu' \
    --body '[{"statCode": "rFUNzQmSCwvr9LoC"}, {"statCode": "b3d7o2UHmiHRlOBE"}, {"statCode": "njqvBpEa0qzgf5vJ"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'DZ7IS61GKfsuHxzy' \
    --userId 'CSDl6kudFS4gJlZm' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '4MgBoclgNnoUbD8F' \
    --userId 'VGN3O34VTC5oJOr7' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'VQpXgNcpMFe5hZTH' \
    --userId '0gAQeZ0EGNwLnmh8' \
    --body '{"inc": 0.7536450491404209}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'wmsPrbPWzNWLjOEb' \
    --userId '1Kh8rBYaydQpyL1p' \
    --body '{"inc": 0.9955316886210303}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'fX931Xdj3lVdihFL' \
    --userId 'JGEMVzypFpkuFRqr' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"o33wLeYUCQADsZEU": {}, "FFsx9HjMwBLvo7Vm": {}, "aYZ7HsVZnb6auuTN": {}}, "additionalKey": "pw4f28OeffSfVexF", "statCode": "xwCFhnhsemWblydw", "updateStrategy": "MAX", "userId": "H6bDXYIgP2Ukkt5p", "value": 0.9707386756054254}, {"additionalData": {"mwO0heKpaTQ59J6N": {}, "oAX9TbvTMFg12Yxe": {}, "4rYp9wft1ewHrr2r": {}}, "additionalKey": "Lb0HMt1bOAyxyh7U", "statCode": "CA1XagD5rlTYKaC0", "updateStrategy": "MAX", "userId": "AX4wwiJeZxcgvH46", "value": 0.04670482546822785}, {"additionalData": {"Sw42Y1iJv3YDn0td": {}, "n0SBJalr8qDZWn0M": {}, "qfItBaEfTnib5Z2V": {}}, "additionalKey": "Eu2NwZPKdvEdbHxl", "statCode": "dHB6WuUkY6ChNrit", "updateStrategy": "MIN", "userId": "QpJb6WeSisKT9WZb", "value": 0.4764741240272623}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'pCcnbvouogR2nP8o' \
    --statCode 'Iay4EAVNHQAMTVxw' \
    --userIds '["bkuPq4xLhCdQ7UCE", "FRgzdAadgYCb2Bk2", "JEaGR3xpEcGtBCVo"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'o7GOOMpmLKQfCJU5' \
    --additionalKey 'Wu1JIATDUIjAbWm7' \
    --statCodes '["bj8S6932mFfxRjhL", "Yf2fgR4EAlCYpo61", "enfAOKTrvp00k1FQ"]' \
    --tags '["O7b6T3oiTkgqWPpd", "mvG9Qqafnc5sdIvF", "LOHRqssIeKohE9gH"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'c0qEItxSFTOJhKzq' \
    --additionalKey 'kk0mVvB5m8sui6kc' \
    --body '[{"additionalData": {"1cMojUaYPDQUgjX9": {}, "QN9t5lHPh4z3H00t": {}, "PtmDRlxxQNJg4itj": {}}, "statCode": "vNzWUvKfw8w26Cc4", "updateStrategy": "OVERRIDE", "value": 0.046388421691477943}, {"additionalData": {"reWOjHlWBUShimpu": {}, "u5UuRGI4UgvjFdTq": {}, "YyZxtTGP5nnDRUHt": {}}, "statCode": "rQg2IHNjdeBjfg1U", "updateStrategy": "OVERRIDE", "value": 0.9068517426780537}, {"additionalData": {"Pw6H7nZZkMwwwae4": {}, "Tbzb0QJ7aYbszPIA": {}, "lOD5tq00guXAQ6aU": {}}, "statCode": "MLwwMVvIwQsJ0LAm", "updateStrategy": "OVERRIDE", "value": 0.25248128765865374}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'BHBYG7vcdfjdU64g' \
    --additionalKey 'mvkDajAKyBc0Upu4' \
    --body '[{"additionalData": {"gNxffFDQZxEmezkJ": {}, "0MEKklXgz7M4rLZ9": {}, "WZMqrviIUPlUFM6W": {}}, "statCode": "voNP1JsKv13ZSP1c"}, {"additionalData": {"giSuiG4POUqm7MsV": {}, "Qs2caZbl8j1sp0ip": {}, "Jn0aYjXH10oG1SqI": {}}, "statCode": "8J81Mqge4J6V9L4m"}, {"additionalData": {"nWexqgMd2d1uC1KU": {}, "zqELHwLgtg1JGuu1": {}, "XuRBzzO24LaSvet0": {}}, "statCode": "dCkRzc2gaw3P31Cp"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'LMIIQ0AIrsQnjaaA' \
    --userId 'wJiOvfdmYFzbnOi3' \
    --additionalKey 'NpO4coZ7Hd6FYJJS' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '9Pa0HbTOmoPIDnAd' \
    --userId 'el2nD0lcSsZGWC1z' \
    --additionalKey 'cwFh67jm4cFMhHaS' \
    --body '{"additionalData": {"NL74us2GaxbF1QCR": {}, "PBjgMkTSW1qdMifl": {}, "tMOKzlegtljgbjwv": {}}, "updateStrategy": "INCREMENT", "value": 0.8763778925157062}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"26eS1tyCpTY9xCeW": {}, "mhAbMGfQPMyMcp7R": {}, "DbI8I9S1WthG6iF4": {}}, "additionalKey": "ka72CMxcQJUBzI0N", "statCode": "u9zLiWlqpgaopGwW", "updateStrategy": "MAX", "userId": "9Z4jIOZGAZ3u11fb", "value": 0.217984008354701}, {"additionalData": {"TuTdi1SOmXwHx7ci": {}, "gmr0lPnSsM7Ktf4f": {}, "n7sZc3MFlufOcZ5X": {}}, "additionalKey": "DMumtWbMVH9TFoy7", "statCode": "xTB80qW2gxSAUCOB", "updateStrategy": "INCREMENT", "userId": "XQMnSMkhcs50fbis", "value": 0.9758617545369824}, {"additionalData": {"6TNpVdx3Ic793vm6": {}, "Tn4drm5aTIYvOqy6": {}, "Ma5wJV3aRoLyxHsE": {}}, "additionalKey": "L9m58zgISGlNeQZf", "statCode": "x5CDxcTKTSqVPMuG", "updateStrategy": "MAX", "userId": "U0yMv5mxrmoeJ8K2", "value": 0.7261270574784757}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'BA0Bq7XFLQ3doWKY' \
    --additionalKey 'yDZGoHAfqzaFUpLU' \
    --statCodes '["YSwd1TVg15I4Dyh2", "SVzIkfW0RI3oPQpL", "kRd53mH2ql565woR"]' \
    --tags '["hEd12L0GZnH6pbiG", "bm31OypFbSYSwjuD", "rIh1BCyIwy2NZdw8"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'rl7l8TPg9w6wy3QQ' \
    --additionalKey 'aAPye8vVbkI9QKo4' \
    --body '[{"additionalData": {"tZ7P7jvJGnL0hKlp": {}, "FZx4LMd8yL3Dl0Zd": {}, "BCQbebq7VnnBL8nQ": {}}, "statCode": "m4uKmeyfHC3t8K4T", "updateStrategy": "MIN", "value": 0.8890661847711889}, {"additionalData": {"rUeWxkWvNOIcSB6R": {}, "k7wEufWNDlSAUde1": {}, "wsIGKxDhVLbEUM5x": {}}, "statCode": "UwBsvX7GiQpFl19u", "updateStrategy": "OVERRIDE", "value": 0.2681997792773546}, {"additionalData": {"t6Lt5smkwCS8RY5j": {}, "62xPSBSJgdbCuCxT": {}, "eT3ohakwL2f3hFl7": {}}, "statCode": "Ci8c5fZiMvKxS6uv", "updateStrategy": "MIN", "value": 0.1221840699479192}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'DySOBp5Tqj6DqbSR' \
    --userId 'E8pC9Y9XNTO6mMBc' \
    --additionalKey 'A9o7XMFT6pKHihJb' \
    --body '{"additionalData": {"M8tG70QDUvdDybsM": {}, "ghDxXbu2rIwz3Ioc": {}, "6y6ZOILTz2Fat6vL": {}}, "updateStrategy": "MAX", "value": 0.21518682280099144}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE