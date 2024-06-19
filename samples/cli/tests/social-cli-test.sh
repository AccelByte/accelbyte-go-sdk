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
    --userId 'mgoQIMh2XTe8DaCe' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'pC6ABf2iABALQUbK' \
    --userId 'mcydn4Y97VfUu8x0' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["5QfKdk7a1BjQT0Ig", "i0GEIWihk911KYNa", "AQILywek7eZkIbub"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'SP1cmutFe1ArMdBu' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'uaU59LH1VPGplnPa' \
    --body '{"achievements": ["GwMIcPpTBAizDvsG", "7IEeQllQXNkpsWQX", "HZg3hlYpZJlgD4it"], "attributes": {"yvozN50L79bhzs3b": "d3Nf2ezBOLvKzDUJ", "fUCKtWeQQI5oETXO": "aLkT542glNI4orlU", "iKx8BF2YVwvZ9yJO": "wl9t6VfP2UUtaJ7Z"}, "avatarUrl": "m78jDZlHGOtCDjTg", "inventories": ["i9r5WGQVRzHLR1OM", "rtlRdlkROe9ecSE2", "V712XCMHGmRRfqs5"], "label": "Zw3snsA72tOB1DTZ", "profileName": "Cb5O4ZHh53moKdap", "statistics": ["mGemckZZvNEcbTow", "5VXBxVPh3Ua9T2kF", "elATDmAXibkr40Ed"], "tags": ["0xoP9o7bODFxGkhc", "uabfk7TfR4By6v8d", "mhtKyLCiiJo4O9PR"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'EMbfVSUWWbLDusg7' \
    --userId 'gGYrwdg6ghg6aOnh' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'QFwWTSwhJKue0ASY' \
    --userId 'iWdlxK7ZDwNyoQzP' \
    --body '{"achievements": ["x4uXHFWPbB8dtVr6", "g7mji6cYJdLDo2TE", "JPwpZlPlyfkKMR8r"], "attributes": {"kej1yKwgIJHRv1XS": "2tBVDDIYCxMXKB6V", "vu74XEU3EiQoopQX": "xfChjmDnXtM7gZOD", "PfAyxHMUMOtTfyN1": "wqf7Ys0vYUxYRnAn"}, "avatarUrl": "lzTJKm7qFC0CrwFB", "inventories": ["VclmdwGRhPtOZ9X6", "5TrTPfuMQPmpaFjC", "gHkrDQFaF1SpyHpy"], "label": "RyecQAiWeH1m5r12", "profileName": "3jLQ2j9HRAgLlUNZ", "statistics": ["BGawDiwCEV6KDt0x", "ZAVBzvXSJG9YP6Cg", "XzT8WhGiPKJH62jZ"], "tags": ["b4JDLI7200U4wp69", "AhQ2Rqbs1hi8Jlrc", "D9sdSZ3r6foGuvCw"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId '7zlyxhfBXS32IjEe' \
    --userId 'cnSt8S6c2EntYN5P' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'ML6Ze0x7DdYAIzbT' \
    --namespace $AB_NAMESPACE \
    --profileId 'niZ5amLkCzTGNddG' \
    --userId 'dRQ0DcPSKsofwxp1' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'XJtv1rCbQlhCe4CP' \
    --namespace $AB_NAMESPACE \
    --profileId 'Bb3XUDMLkSkiSXuT' \
    --userId 'k59vFd38Zgv7p5Pj' \
    --body '{"name": "LzPjUbiN7nIUUpHc", "value": "MMv8BKmn9NvvjO1I"}' \
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
    --offset '57' \
    --statCodes 'CkY5ztEREPX7sLet' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'mltbWyJwX7h8A4RC' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '37' \
    --name 'F3KvwbKOhIoAmNKt' \
    --offset '12' \
    --sortBy 'JEDm6I8RxIpaY4LE' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "D5BDn9iIvUgl839o", "end": "1976-07-12T00:00:00Z", "name": "FwUDZ9DSS45W56MX", "resetDate": 48, "resetDay": 10, "resetMonth": 95, "resetTime": "cN7o2lnYcEVEdFNW", "seasonPeriod": 38, "start": "1977-07-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["LDrIq5xiABspXi05", "v9N1k6ZhpX9KPhdg", "dyH4c4bNbaQd4Ptw"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'jt8BaJtaMVxuX0dk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '3BtXB64VA62Qdnxh' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "fDu4x6lHkXMh52Uj", "end": "1985-12-21T00:00:00Z", "name": "6jTAM9l3nvRV2qkG", "resetDate": 75, "resetDay": 63, "resetMonth": 63, "resetTime": "ciSCYBe3mmaBSHMq", "seasonPeriod": 10, "start": "1995-08-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '3ivZs1UXotYHn66q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'w0dgitxcsEysdYab' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["OWL7oam59nfXhOT4", "D5ICXkJEJ95KZ8SS", "lKLRsRKeaMW8hUdV"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'd6VnuISIoea03tLg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'wY6oVN0j1P8z3Lp2' \
    --userIds 'g2pFYw3HYdC0KwK0' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9721256638569218, "statCode": "HTOzVrGkcJ3K9lo0", "userId": "FFMwJoCWNayuRo9o"}, {"inc": 0.4335091664587636, "statCode": "mkwKDCvGB5P6k5Br", "userId": "rA0YKNNrHABpInc0"}, {"inc": 0.3517918504666575, "statCode": "ksBdmCL0Lr2DG5K7", "userId": "zRgMQq96ZZ0kHvcZ"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.16831892553228933, "statCode": "6zigtex2GD0zcC4W", "userId": "iUPfHrCdXKWGwiaz"}, {"inc": 0.6627452827292782, "statCode": "xBlWlKdiXoCJYG4H", "userId": "AUR8Ny1SrnWkjxXn"}, {"inc": 0.5492194592652369, "statCode": "a37OWbGahmw6e527", "userId": "jta4c4duoKtnuV9Z"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'hgfbwMUQAnx1fiBr' \
    --userIds '["AhsyB9jpjfw4ujIA", "SyAD3bhZsJM8Y74k", "GcByaauC4PRjk7jU"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "lrl8Ntf3DTKVuGy9", "userId": "QXXnpADE9bz0dKwB"}, {"statCode": "SXzlISZHNwdZYFbB", "userId": "lmJHgkLOwykpJ0yZ"}, {"statCode": "gpBmx36YNhTEr9xw", "userId": "Q2NwMZReJSGATvbW"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'PoGUI6bOABoDV7sh' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '29' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["xwZOv7cq2J4ouIYq", "ZFqC67nIoYKEqyux", "hubMW5EdVwnPTWgU"], "defaultValue": 0.6958780628859156, "description": "mADw6WzUKmBETXif", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.8981849036181111, "minimum": 0.2653036967465334, "name": "iGLlLn66ujr1zCmf", "setAsGlobal": false, "setBy": "SERVER", "statCode": "LFoO8aoVvtZq98pj", "tags": ["oYcavISRbb7FT9oU", "s56srX2h9xGbE2zF", "PoJcFduCw93R1KW1"]}' \
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
    --isPublic 'true' \
    --limit '3' \
    --offset '63' \
    --keyword 'J4ORzt0PfVkRzxfW' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'fVO67RWYNv48cy3O' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'we7lOOI9ECwweOUk' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '2fn9NsnQ2WTBn2Sg' \
    --body '{"cycleIds": ["TphuQZRlVuEKjQfj", "zu3ibuUKWxX6Agx1", "xZXu4M1J7vuuwtZE"], "defaultValue": 0.4476929155066587, "description": "wFEzX67YCA2va98G", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "XrDDjvs9gnCZC6S9", "tags": ["xFCdLqp89YYmjc4O", "Km3ffKm6BzH4LQ6x", "1RvMMHbaBdcvhM19"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'kGXIMgJiptrDxJUd' \
    --limit '61' \
    --offset '23' \
    --sortBy 'KiaGvVnMWcOikxuB' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'KUegi6hsIR00md0D' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'GOWWuPnaX3y1KS31' \
    --namespace $AB_NAMESPACE \
    --userId 'vPxDGgmkkb9W5PNV' \
    --isPublic 'true' \
    --limit '5' \
    --offset '11' \
    --sortBy '2o6fRqCwMIwtEkZ2' \
    --statCodes 'blt4rUgr1SICkD3Q' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'abPcHvyO3hxoxISv' \
    --isPublic 'false' \
    --limit '14' \
    --offset '35' \
    --sortBy 'jYm0yv948QN6cgKs' \
    --statCodes 'LBhqwCuPehjNeICX' \
    --tags 'y906jymb7fTHX5SS' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '5K89FAuxpaHMYPgc' \
    --body '[{"statCode": "w8vNxXJro0QUWf9T"}, {"statCode": "igFy114ybhjmSL73"}, {"statCode": "4jCkeLqQDyRhql71"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'u575VwFg5b1DHM27' \
    --body '[{"inc": 0.9494125416526086, "statCode": "oFdP11EM5133MUep"}, {"inc": 0.0007495142993297899, "statCode": "zSHG8ZVcVSzJrI3m"}, {"inc": 0.0741776015136083, "statCode": "KWSV8lgsGMqzhoKO"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'o51h3bu39CGzkhLT' \
    --body '[{"inc": 0.687132069368956, "statCode": "GuWNdT8bHVkRJAMl"}, {"inc": 0.5599786414741218, "statCode": "qcV865cppsuAgdxh"}, {"inc": 0.8730467300596708, "statCode": "LDtQwTfJTTe3tq26"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'wU6OVJIRsL7IJMbv' \
    --body '[{"statCode": "e0aT4MBB6N7cVJx6"}, {"statCode": "ZUehDZG7nRyDhI99"}, {"statCode": "vYO7obXui9CxipU1"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '377S0CSpciMfrN0h' \
    --userId 'QjxmCO4OuRyZxoow' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'eQdx4eQXZtGRLQZ4' \
    --userId 'hzNAwGngqReK45MO' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'pvcQHphDmDlyTP7w' \
    --userId 'z56TgBbVN7Um6VJQ' \
    --body '{"inc": 0.9867439749289836}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'rgmZNqTcQiAj3z1F' \
    --userId 'k7QuDqC28wnu4f4g' \
    --additionalKey 'liMriuYiCu7svNQC' \
    --body '{"additionalData": {"keHZgWjyVL2TEtFq": {}, "DpBlGVQN83GO1UCo": {}, "FRQ9ADXly8DadYNz": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '92' \
    --statCodes '7bvPmSQAGAgJoOm7' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ukBteGvBUWJjFFs8' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '19' \
    --name 'qPlyAQu3FK0z4tbJ' \
    --offset '32' \
    --sortBy 'LSmv9yi9knE8TPee' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["r6egXqW3xOLHcdzK", "rfcZGiwdEpkAV6aC", "G8AEgwT4bhvVJIa7"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'YFu168ZPSYo0edSN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'VolBhEeXoowVHist' \
    --userIds 'Co6h9rKE1HDD7S7Q' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5175118314221759, "statCode": "xlNTOL75TZNJYNbW", "userId": "qfXaDYXZNsfv5wA5"}, {"inc": 0.2947420102621924, "statCode": "dq79LJ5p2N8vCZuR", "userId": "BM1Py4LAUuWTak3o"}, {"inc": 0.4284690562179707, "statCode": "CaAd9IfWiuBgtMN7", "userId": "30QcJGsfjONBHU51"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4138963581065358, "statCode": "CxXZRjSVXhnyFBlL", "userId": "fteo75keRhsK5OaY"}, {"inc": 0.587346989347889, "statCode": "2O9WJ9Ls6PdH3ZVl", "userId": "4MRMxcyzXNJFnxWb"}, {"inc": 0.5123791917758311, "statCode": "SLr97IbC6A6bLyoQ", "userId": "HchyTjZaRqGmZMRy"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "nJWuCoyuiHPiDvtU", "userId": "aovhbzfdRkgGllIr"}, {"statCode": "tBmrul0V4UW082sr", "userId": "QM7UIqZPKEEQDx0C"}, {"statCode": "zjA6944zdU78ElnW", "userId": "rNTy2JugejUZuw3k"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["8BcIP9UzrASPNueh", "lAIZ6GIQDep7LF7R", "naQC5dCz2m9jro2B"], "defaultValue": 0.20393797004963732, "description": "7HANEagBQqFkrWah", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.5813687131493186, "minimum": 0.5276218174790802, "name": "d6myB1MiLNL2drg4", "setAsGlobal": true, "setBy": "SERVER", "statCode": "jB2Ds7Z3JbmxyIbK", "tags": ["6eTluqXiE3PoPP2U", "0VZ1dcrpUmNiFmg3", "40rUh7YMcBrJdJHj"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'USqPwWr6TYilssvq' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '27' \
    --sortBy 'SqgLQohU9U5BBm3S' \
    --statCodes '["hSqTYhIwWbhqsIMx", "ONlSVDST3iygFJjw", "JdYtymiwIiCHWmdt"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '22' \
    --sortBy 'ntfGvJ114u7P86Qo' \
    --statCodes '["W5cE3y1l2PS0NzIv", "1kwHXdZy32agGQyv", "gHoh1yM2Jlhrxust"]' \
    --tags '["idnZclKvkhZCJhaS", "l0YtVwEV3ACo3j6L", "hpEC3oFrvrVNlYMV"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'TEk1sdO0zqGq8rll' \
    --statCodes '["93AkSnCl31NecbQL", "O5zuVLeF0nCIWb22", "AXqwwSTRrYQ5Z75D"]' \
    --tags '["UweWJUNzkLsH79Hm", "AvNmMOlrOOubDcPf", "7um8sS80Q13rkx2R"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'dIZJGbtUuzu0VMmf' \
    --namespace $AB_NAMESPACE \
    --userId 'I5kYnOLOCScNNtm0' \
    --limit '15' \
    --offset '40' \
    --sortBy 'kJwGgOaUYreuZAkI' \
    --statCodes 'Kf2pnmJ5Z2c4ePo1' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'WJvJdp5yqn9SDtie' \
    --limit '79' \
    --offset '78' \
    --sortBy 'vbYPTYgkOrlfU5Bt' \
    --statCodes 'eEZeEif4Fz9IVXok' \
    --tags '2T4c9pqLlHY9UV4V' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'u6ceTNtAlDHkzefg' \
    --body '[{"statCode": "5HM7QPqwhzLVytcw"}, {"statCode": "YLSs8q7IDqpzt0IX"}, {"statCode": "VMx4QiZhk32qtl1l"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'aPvvS25EIk6qDSMr' \
    --additionalKey 'cwuGPUYKPUYm9vwM' \
    --statCodes '["ZTf7z141WFHTjvyL", "aebXCoVm8FreElzC", "5YyHf0EpSo0JMbH5"]' \
    --tags '["NrnjM68pEpN4NR65", "ZU4fFQ648sm6SnJc", "se3kmTzAj9BgeJAq"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'v9DwCgmcTeoW4QCB' \
    --body '[{"inc": 0.17531883603039555, "statCode": "hLU5iP7qd23CzbPl"}, {"inc": 0.7945158991020772, "statCode": "aptscozipiMHsbYv"}, {"inc": 0.5777272770902896, "statCode": "PUvJoyFa4WLwGi8g"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'Eke9GR30a1qu1TId' \
    --body '[{"inc": 0.8609266919461185, "statCode": "PDaYXc7SLcPDHY7P"}, {"inc": 0.8974837879132173, "statCode": "hQsE1EKoNdbmEdjh"}, {"inc": 0.4318394067269056, "statCode": "I0bm0b8471HHyP4z"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'inX4tn4hnfRsvXRm' \
    --body '[{"statCode": "fbfcz8et0jsINcWq"}, {"statCode": "3k0Jjq5zMuAGUjyr"}, {"statCode": "FIqKWLK1VStucqGq"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'iHFwt3eKzikSrVdo' \
    --userId 'BTLYlfb9gJkrjU8G' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ttCzjB7ihXxYLmYd' \
    --userId '0MihpaGRdmYgxGYz' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'okFTisZnqY5pZZQN' \
    --userId 'hw9oMrxwJ1oSjPqf' \
    --body '{"inc": 0.08398425606271143}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'vK6J370n6D4mJjJO' \
    --userId 'ddijGmCfr1wsMmz3' \
    --body '{"inc": 0.9712269764514493}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'SQrAkWR1dyCsA2qm' \
    --userId 'z2ezk3HDED7A3lSm' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"9tXwPaM7mWYoIKas": {}, "nEZNSWmbpjFe2xoz": {}, "hBKcS5Vgr6MntDyb": {}}, "additionalKey": "GWNknAraoRN3ehdR", "statCode": "u5uulhyZtiXmefuD", "updateStrategy": "MAX", "userId": "JWjRyqmZE0ERVZ98", "value": 0.30180542494628704}, {"additionalData": {"zIKVZXvksI1aXYgY": {}, "hyJUMFxCCIGWtOF7": {}, "YC2to6NKRSfq8ZWt": {}}, "additionalKey": "6ty44deV47PLC0dv", "statCode": "PtazrLJNmY9mkOtf", "updateStrategy": "MAX", "userId": "FxcSPza3m9U1uKzM", "value": 0.3902207929427741}, {"additionalData": {"8nrwShulsr5xL3ha": {}, "dsFfOHBq97nTkczr": {}, "1yNCqWLYdqSh60ic": {}}, "additionalKey": "7zWaKRfN95uWaUfM", "statCode": "xXykZZDRz1GlTNeA", "updateStrategy": "MIN", "userId": "yuQfXJ2WuwR0lJF5", "value": 0.010375072960660203}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'cY2TFKPOcLngRPbI' \
    --statCode 'mLO1gkxiistUyW2h' \
    --userIds '["QJrPM8J7qX9oYd7k", "KxcD6tSv8pQm8oT8", "Q6ESHeCLcvBBP5WW"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'zt2SmxZoRARoGMNj' \
    --additionalKey 'YkLMqQuO4zdDGjDE' \
    --statCodes '["SYZilg23aB3ouebM", "MhLxaP1ERKRhp2o2", "8qStLAYQ4duZMhNA"]' \
    --tags '["sSrM5LULKfTdBzuT", "yQiyvVWPKbqlaYiU", "2MdydRjHHXOO5tdt"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'DyvpIdYlf9ckPhm3' \
    --additionalKey 'gXj78V0wO0J3i1mk' \
    --body '[{"additionalData": {"8X8ccPvdaC6E4NB2": {}, "cQK4OTbivdqFEse6": {}, "UvhnCKfeGu39JkI6": {}}, "statCode": "SWxqKRB37O3CR52p", "updateStrategy": "MAX", "value": 0.391731858476551}, {"additionalData": {"0b806MTt9NUDv7Bl": {}, "vjCDjfvi1wdjxPLI": {}, "pRDddCwPGqvJlkmW": {}}, "statCode": "qPYw7NUQrU5fCADT", "updateStrategy": "INCREMENT", "value": 0.08186053506745516}, {"additionalData": {"JVu3LzHoQUjDhN5b": {}, "B9ritVMcFexz9lGc": {}, "c3HmqEGUOxFNU9Jz": {}}, "statCode": "1Dy5SidONT02r3Fd", "updateStrategy": "INCREMENT", "value": 0.706301342027298}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'q6NoYOo0Chpn7MOe' \
    --additionalKey 'CIfC0C0TDcLIy5tc' \
    --body '[{"additionalData": {"SycdPtknls47ZCyD": {}, "AcDHoHVAvLsRQb6i": {}, "wDY1Pz38VKIjB0Af": {}}, "statCode": "4Qwp5VwblOROIVRR"}, {"additionalData": {"XGUHu4CNJm04Kr1q": {}, "5JEAYfir4xaEeHhz": {}, "Se9ajWnye2bgMujA": {}}, "statCode": "dkyyBdfnigwtVc4q"}, {"additionalData": {"KM8iQuhKrtQuOuD5": {}, "Z2OSXKYozTkSBfI1": {}, "cm8wMhZ7uj46HvBo": {}}, "statCode": "Spx1U2t4fDFYZnOH"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'a4ImwfdVnvVzrh4l' \
    --userId 'y5gi1ihWW9vHbYRI' \
    --additionalKey '9Dr1WAmFJMUYpXjW' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '4OzYqL8o6kUCsN1H' \
    --userId '1VqDE0qQ36ofByHa' \
    --additionalKey 'GoMJiUSGrzGrouxM' \
    --body '{"additionalData": {"OlmlumCQhWOlc7F6": {}, "ieBbHWqPIAp56y5L": {}, "cDzZuladKrEV6lWZ": {}}, "updateStrategy": "MIN", "value": 0.9606739336067003}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"QJvdL4A5V7bD9Men": {}, "7c0Q5tRV4HF08QVR": {}, "PZiDaDfkQke7qar0": {}}, "additionalKey": "BqWpEngGaSQalbBp", "statCode": "pqZmt8MteQFrBaEX", "updateStrategy": "MIN", "userId": "BEyPtuP7uGrWoLHF", "value": 0.1483476686803572}, {"additionalData": {"wguxmcGqSSKk47nn": {}, "EAJbbmVej00ELPC8": {}, "MdKgdAPH3Sj5BmP5": {}}, "additionalKey": "5d9ahAFE6IvFtT58", "statCode": "AaluFzPFBbXkgWGG", "updateStrategy": "MIN", "userId": "PFvnlxmLhDGR1pYW", "value": 0.14589257302808278}, {"additionalData": {"2cOCmfgK4Cao5K5B": {}, "6yMRtulwu5BbNKH2": {}, "Jd8xs6KYQEhm3xmT": {}}, "additionalKey": "va6Yeyl6xy8mK2qz", "statCode": "K4aYAViMw0bDCCvw", "updateStrategy": "OVERRIDE", "userId": "cZIVOFmowsqMg5AE", "value": 0.9919416578417627}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'xyC9eD4ttURciKYp' \
    --additionalKey 'mTKrCOKZ4uL2j1Gc' \
    --statCodes '["TGE4tvl0QIjQUvON", "eYuJpdWvGfpmkLKZ", "5ItDtwLc9CmRMx8h"]' \
    --tags '["SXoUrm8888Uz2xEp", "vc4jN7YfDCk34VBu", "RoNiMW2QmrHRHQ8k"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'Epw2gDaMigra07si' \
    --additionalKey 'cAGT8sFwpbbNLC1H' \
    --body '[{"additionalData": {"FFTXxB1KzpsztJ34": {}, "zkud9AxY7QqH6SkD": {}, "oEgmMV0aAGNc359R": {}}, "statCode": "vCn8Bpn1BdHtvutg", "updateStrategy": "INCREMENT", "value": 0.2149440999191975}, {"additionalData": {"rCBQcO2Wm5Rcy75f": {}, "QsNWiz0RSznAyysV": {}, "HfZWijAkz59OEprE": {}}, "statCode": "IWYWxzKOtWJxBT8P", "updateStrategy": "OVERRIDE", "value": 0.06505568829115171}, {"additionalData": {"qgxJugnTnxYypXoN": {}, "6ksdueuHkQeSg2TZ": {}, "FwmTDQmukjkbnW4x": {}}, "statCode": "oYXfpBhd3ePTZndZ", "updateStrategy": "OVERRIDE", "value": 0.20578056131109113}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'vNl7I38xkizKBzh1' \
    --userId '8AR9gtyVaFEVi1ax' \
    --additionalKey 'XLqdzKnx1ioRU9zV' \
    --body '{"additionalData": {"i0T8orbwPlsM1wk0": {}, "JwmnDf0sAgmiqGgZ": {}, "UrUkcn4PdPjLjXKW": {}}, "updateStrategy": "INCREMENT", "value": 0.31788859291443683}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE