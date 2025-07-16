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
    --limit '12' \
    --offset '57' \
    --statCodes 'XSq9fz3Ijw838wXz' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'kpKbA4mwaxRPRrb4' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '26' \
    --name 'UDSPaSJPAv0Dkk6w' \
    --offset '12' \
    --sortBy '9bCqrF5qgM0uAQYi' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "xfpciQu5dwPNwRk7", "end": "1996-06-04T00:00:00Z", "id": "CUTSpBQfUBmEua7h", "name": "0SiKj3eNq6rJdM1Y", "resetDate": 42, "resetDay": 62, "resetMonth": 22, "resetTime": "Suhl3lJSRcjFeiW6", "seasonPeriod": 44, "start": "1998-02-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["iwmeJVUL4bdEGclK", "hNpPPCBSxpzUGLBn", "7xGvhynOLFlzW9PI"]}' \
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
    --cycleId 't3y1bFmctlgzcQRi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '3ZZpVE6D99EYjgyJ' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "kO0GQlyhJXBAEq3u", "end": "1999-04-29T00:00:00Z", "name": "eUEU3WjoOyBozfTE", "resetDate": 33, "resetDay": 59, "resetMonth": 4, "resetTime": "cQpYEu5Hpd1hEqtd", "seasonPeriod": 81, "start": "1979-03-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'wjCREEFLXrpECd14' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'TgsFLPeFwvoMs69J' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["lESjrKg3qNDo91U3", "yvS5pWjxhLEqoW3s", "DXJzGLYTI6iBSCJQ"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'YiuRLzFx8hNNGcdu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'nIKlKj4M73eOaBJJ' \
    --userIds 'rdEudRFynoiqGzzA' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3155372801173002, "statCode": "yA0G4oxOcGOHQNh7", "userId": "DMDB6py7X9XICQGs"}, {"inc": 0.9926841870806792, "statCode": "8SzFPoLXKzpuXzpm", "userId": "uKUqd3ajTvCsapTj"}, {"inc": 0.011342696584902057, "statCode": "pwTKZkKaaxfu4KAj", "userId": "RdhyEdbL91iA3CmO"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.567593247360506, "statCode": "oO47pWbv0FkwmvY5", "userId": "ehAACoYYEsb3pUGo"}, {"inc": 0.13225002583204104, "statCode": "kEGuAziSshFlKooI", "userId": "RfDI2e27LOUzB1IT"}, {"inc": 0.24261443782725067, "statCode": "D8K0ZA14wT8ZmosL", "userId": "OAqnYniR9QqDxnUc"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'q6GsYOb2TX0S46uF' \
    --userIds '["WqoNrJWADXT2QpzD", "RAJfLgK6NgU7TdLH", "Bu50DGttoS2Zo8Ay"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "3Z19LhGqWv6XMEZM", "userId": "47X1h5FFLp89grPR"}, {"statCode": "3rv2WWFGNBdNpsp6", "userId": "0qtP5GtzQoFzglY6"}, {"statCode": "XK0JdbgtuZKOLm2V", "userId": "K1nwx2cU2Z2Yfzky"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'T4NRsFWRtK4DBcWo' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '1' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["5daDaNFrd27eWhMT", "RbdXhd4YLW7baAVH", "CfogN8AZPICpJnOX"], "cycleOverrides": [{"cycleId": "tHcOkaf90IELyWJM", "maximum": 0.5930443684811211, "minimum": 0.7214256884213486}, {"cycleId": "K7Zs4pioAbmAJexF", "maximum": 0.6006952387463177, "minimum": 0.12215153773446141}, {"cycleId": "IbbYSK0VNAYA6AwZ", "maximum": 0.058128098923139415, "minimum": 0.7182794886407737}], "defaultValue": 0.4024411126495807, "description": "on6iXjdYsC9uf7QF", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.6123175444576923, "minimum": 0.46265611909055226, "name": "lPWU172eg4sStElT", "setAsGlobal": false, "setBy": "SERVER", "statCode": "tyreSRdkoYgJeY8w", "tags": ["AvGa8qasXlY0dZu6", "5LBq4lPw9wlAwKxe", "pYI2MZSuAxA66IxQ"], "visibility": "SERVERONLY"}' \
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
    --limit '100' \
    --offset '86' \
    --keyword 'dm9zrHIzC1yHQzUp' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '5QRyLvGICqs9fZKB' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'QFDRlGNP4CUNW23s' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'bxLMCb2skIVDeSlh' \
    --body '{"capCycleOverride": false, "cycleIds": ["zNKd1TeAmDuQCNWS", "3ilefNxMhalAZvag", "d4eMZvAJ6lLibF2d"], "cycleOverrides": [{"cycleId": "kHsb8h2XAQxpehgy", "maximum": 0.3983691277279754, "minimum": 0.9047149760778895}, {"cycleId": "dheRh5aZFbMmGaxK", "maximum": 0.7262876044640557, "minimum": 0.6625320682049862}, {"cycleId": "SYw1mABuhLbqtON7", "maximum": 0.670027877797849, "minimum": 0.4248155345921003}], "defaultValue": 0.09343768391619545, "description": "F4sheiVqTpnTFthl", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "mQkMyJrQbTXZAmJh", "tags": ["1gma5axTkr8QUjFI", "dtlssRtkTifD91x6", "CFdUNB4TLBSQYJQp"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'HaLy9qgw1C6w6igb' \
    --limit '61' \
    --offset '10' \
    --sortBy 'DiMZmvP1jcEJsFyI' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'q31z5ccPFhz7PiOP' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'wjgWeDyZtUXh5Hxa' \
    --namespace $AB_NAMESPACE \
    --userId 'VlvENOl84OHDK8Te' \
    --isPublic 'false' \
    --limit '61' \
    --offset '99' \
    --sortBy 'T7zNTK3776zkQGAi' \
    --statCodes 'jynv62qTjjosqI0a' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '4ytkXopuTOcgoiTu' \
    --isPublic 'true' \
    --limit '87' \
    --offset '36' \
    --sortBy 'GakIeLELJCSXa9CW' \
    --statCodes 'XZCDXHSMa0j0iQ1X' \
    --tags '8gufzYxTyMEVY5Ie' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'qzH01kwceMgEwkW3' \
    --body '[{"statCode": "bFmj1RyeHyD9St8b"}, {"statCode": "pkdkW5xUC43Vj9lD"}, {"statCode": "kHoB5bxcyQMLm6cv"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'IRsQgVAjki1e9MD6' \
    --body '[{"inc": 0.09767855438147166, "statCode": "o7abItfdHB0tWuCT"}, {"inc": 0.05164327373641975, "statCode": "E0D1ApEcn36QqD67"}, {"inc": 0.4276062128925443, "statCode": "CycQEU5YseM2pyu8"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'SUrDtGH3gGHCGcY1' \
    --body '[{"inc": 0.6522014122164074, "statCode": "XL30cZt0pmjiM7nT"}, {"inc": 0.2825313636700023, "statCode": "UBnE1kLoa1rYUryN"}, {"inc": 0.7845665274725325, "statCode": "LDr4yW94727r9K0K"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'uxJ1bLRV6f9J6u45' \
    --body '[{"statCode": "XQ4V8vI1EaUyOySU"}, {"statCode": "dXtVwVLdyVSQ459A"}, {"statCode": "e4E0VkCQUoK0uER6"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'ZY6temQehKgQinOg' \
    --userId 'TW2zk4cNHR9xos6F' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'vLbKAsM7xt13TnxQ' \
    --userId 'Dy38Vmu4hwzfOhAX' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'RIXvYJ5yNYUcYrWK' \
    --userId 'ucy4yRWGUpl2ZbN3' \
    --body '{"inc": 0.09817328241643875}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'efczTO4ioTqRduMe' \
    --userId '1lx6LlUHTZE3oihv' \
    --additionalKey 'Mcf1gae9oYty5OuQ' \
    --body '{"additionalData": {"4v30iX9Z15bDKSRJ": {}, "lAs4QFayAAvJD3ou": {}, "vjtCbECmOYrjvqSA": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '37' \
    --statCodes 'NyNK9O1OgiFIAqHO' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'QP8ozWtyzyRgK4TF' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '92' \
    --name 'RhZCygnM8YZdzBgC' \
    --offset '94' \
    --sortBy '8aVHs0rRWivZ5ddw' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["5xa8uDojjLk9zc4g", "IkR9RLJYQTFaDDkb", "DH7zJmlIoD9mpwNP"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '8SwiLatOfpt4FLn1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'PcaAgiaX7Z3RiTNX' \
    --userIds 'UpQS5DM81uBHLAky' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.49854509866858665, "statCode": "nrZ55qsFIaeeUvpt", "userId": "1uFXIPVKKILs216V"}, {"inc": 0.2553033392969518, "statCode": "E64rD73dkt5aGS6X", "userId": "WuRb4jVEiH8m6gAz"}, {"inc": 0.6702691829629036, "statCode": "Da8II86glHpfZtvr", "userId": "8NKWboZdwucxkxag"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8451948669034441, "statCode": "Pp0NrKBuJcpH13ac", "userId": "59yNt6lw5N4xrJ38"}, {"inc": 0.4392403459446138, "statCode": "jdjzl3OG8iqq4HSX", "userId": "d6vRnLdbePJz977w"}, {"inc": 0.8969122783504562, "statCode": "hNZjNVm46i1CsDiq", "userId": "kptV80cYYGRSqzZr"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "5PmTUP4KXFD9kpm1", "userId": "Ou2AJauDmhepug1U"}, {"statCode": "RjUXbhyfPtKisWbp", "userId": "2I7cZrkTCyYjnEAc"}, {"statCode": "kojqDKGI9siJCEhR", "userId": "qhDFGILd9IBcmxvc"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["rnA2rPIYs1S8uogu", "yYmo0CO10c4fbG3S", "Da3k9IH0zLKljp4E"], "cycleOverrides": [{"cycleId": "Hr77iEbjm4ibsDrz", "maximum": 0.4992645419456714, "minimum": 0.2777330657173873}, {"cycleId": "7SNevYLeP4fDgOD3", "maximum": 0.16922349065785625, "minimum": 0.6406963388284069}, {"cycleId": "NiQEtFm4Ud8YtxTj", "maximum": 0.05589587624915837, "minimum": 0.05529427314805346}], "defaultValue": 0.8280207938575065, "description": "GIekFWTh4IUocECu", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.257986584817401, "minimum": 0.6053205246398776, "name": "49PBpTtqc7KVUhFz", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "k5WzED2aWClQwyKg", "tags": ["3aUq3q9x6ZRq6NR8", "l0q9EyQgtqGlTEQW", "vaF3c0iSNcW7Zz2e"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'vZ9jmnfaxzJ1RbjK' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '44' \
    --sortBy 'YpZFvN4F4hLy5OAi' \
    --statCodes '["L3R77hTXbyvljEVq", "EvZzuIRpFw466b1i", "2m92OU4ObWNPKJPw"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '93' \
    --sortBy 'O6s1xFbT5SPLttgT' \
    --statCodes '["Ecb5tz6QUkcBfAP3", "Uu9M8dt9gY0TFMPv", "oOD6CCPKDexPdX7i"]' \
    --tags '["okXfYZwsUcqAFHVR", "h5SdfmFG5HQsd47D", "dp6mTsP8DND2XqkE"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'pjZzf7HjogCpEtCi' \
    --statCodes '["PoFaOk5qxVvft6Vh", "BkaRFZO0TEueU7Nj", "tIpWFt92YVLhSX3G"]' \
    --tags '["oKr1vYT59TtzYObM", "9m9R36eCRGRMtPLm", "LfVomQO89oRw0bQe"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'OBCeDZRH2rTpIlUJ' \
    --namespace $AB_NAMESPACE \
    --userId 'VDd1aEkgZxOsYHfN' \
    --limit '31' \
    --offset '26' \
    --sortBy 'gzHHDfOyJD7NBYap' \
    --statCodes 'l9P37Ixm5WRk38zu' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId '4YkxUWWgn4Vw7nst' \
    --limit '97' \
    --offset '80' \
    --sortBy '3C2qzsryEFiaJ9Lc' \
    --statCodes 'TPFnvUeZy4BGGSRK' \
    --tags 'PCBFerjTET9nXKpz' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'woHmwadVjCZkCrPC' \
    --body '[{"statCode": "ZBI17WEX5Zkm0ybg"}, {"statCode": "TNUINNyIOp5QgSMb"}, {"statCode": "AH7LRAqPGREbMoRe"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'UCEFGuG2gjWrHIEk' \
    --additionalKey 'b57s2UJs3FBWKOh7' \
    --statCodes '["77dtiIwFcsCm0jny", "qZUCebbSsNTquHMn", "wlMe8Jh0xlOS6w2Q"]' \
    --tags '["kYIxQmqb9LVhCRM8", "Gf4qlvBCg8ywVXru", "6PPIk1yEqxXbZHxm"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'wYgEfY9KL9RKr6Pp' \
    --body '[{"inc": 0.98790740922371, "statCode": "dv8mZ5Rf0GetPUe6"}, {"inc": 0.09426878173647502, "statCode": "aSSDC1ZoJhxhT1cm"}, {"inc": 0.6874622634103873, "statCode": "r5Ro8wfz6D96RjKA"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'c13bT9b0dTr0cJqo' \
    --body '[{"inc": 0.6690582872955495, "statCode": "23RV9YausczPvwED"}, {"inc": 0.0989600802489965, "statCode": "W4TFUJdBpiU4PuRb"}, {"inc": 0.5082774088303791, "statCode": "MkTsFmCi8B6rIoQz"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'w7AwiHdZHoK7GpPi' \
    --body '[{"statCode": "QDpu7jrVSAqgW9q3"}, {"statCode": "otplEldbPVk64lUZ"}, {"statCode": "Jq1Gq8mQeuemJBWY"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'xpXACa3ljzPkxadx' \
    --userId 'ta5B3B0usWFpZoCF' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'FruIDU3SCZZH8E8e' \
    --userId 'Bhx8juRlVXTfxEUA' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Ym6gBvaeXkhiVV6Z' \
    --userId 'T1UpsAYpVkFrmcYY' \
    --body '{"inc": 0.529400714446031}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'AwyJlaX3T8Q4BWcg' \
    --userId 'pmyBXrioerz0AAUU' \
    --body '{"inc": 0.8630497627390293}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'rimI1IgLHdWhklHZ' \
    --userId 'hmA9lwkAntAtJy56' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"nKFvqUE3fbAfHtRT": {}, "On8DuAn91ChpZnjl": {}, "9g5mDUNPrW7MmcBz": {}}, "additionalKey": "zX6nrDyrxZ4sn8nA", "statCode": "UdqcddVXIIfnCayr", "updateStrategy": "MIN", "userId": "Vs8g4Di1ipWq3yCE", "value": 0.7485579841423413}, {"additionalData": {"D3TFGf2xQDqVjt4Y": {}, "LHrODNwkdlx6Wu1Y": {}, "R7fBlMHZU1tXrpdb": {}}, "additionalKey": "TelSqPap8QzK4TVN", "statCode": "9WqmvTHkTPHNC9Xx", "updateStrategy": "MAX", "userId": "PWDNJCYHK3VhOG0y", "value": 0.6434780291890301}, {"additionalData": {"98lzhGn6AleX7WP2": {}, "GbO1lqeX3CSIERyc": {}, "6bqK0Sb9DkvAdhzn": {}}, "additionalKey": "C7QOOWxr30hdgD2T", "statCode": "ZiAxpgBURU2C1MBQ", "updateStrategy": "OVERRIDE", "userId": "ZuAk4HmaxAurSGox", "value": 0.3212379055421837}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'AE1xucJ644tbaMb6' \
    --statCode 'r9Oema434NCdOWwF' \
    --userIds '["bKi5oZ1ynjhYUehr", "hPyr2Hao3HxY83yi", "mdIuj8mY3jP7Nj0C"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'YydMItkCiWwouFSO' \
    --additionalKey 'ADf5A1luxuUZImkS' \
    --statCodes '["ej4M1mbBxmf7deC0", "7QGEfAfmI2MFyEzs", "n8PLUbGxlp1iQCP5"]' \
    --tags '["eRoruRbkJZjGl2tB", "WTTdYmVeGft7Sqq0", "3a8rqGaduVsPnNE8"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '9BFXPLXFpOmMKHMT' \
    --additionalKey 'MoOMDm1Ek6om9Mix' \
    --body '[{"additionalData": {"QUKQLPpBdBHGDtgz": {}, "SgqcLptEo3BjkNdt": {}, "Ez9yoo0jk3mhImOU": {}}, "statCode": "b82hykZTVJ8Yh6YX", "updateStrategy": "MAX", "value": 0.4360360974430568}, {"additionalData": {"WO2pm2ghvuzGTyyx": {}, "jNQRWnfMZN69LlBQ": {}, "ewalnu2BGtz0DmK1": {}}, "statCode": "eC4MEFBTSimtIBXq", "updateStrategy": "INCREMENT", "value": 0.5975143349932696}, {"additionalData": {"IAsjstFYxwndIIvS": {}, "KOmuT9mlNSX6pgcN": {}, "zdFxge9lxHyvB6PW": {}}, "statCode": "jDgEk6aXhsrI0PMF", "updateStrategy": "OVERRIDE", "value": 0.7410892009525676}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'QWTndJHyHPFUpTQy' \
    --additionalKey 'GcoMU7PfCefnT163' \
    --body '{"statCodes": ["IsPDmbIbj7ZaJt5L", "XHvSVqD1DgmyalHH", "74S0rVLvHGK3rD5J"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'FNraIBWtlTD2Newh' \
    --additionalKey 'iwdoCYTYCn982KEy' \
    --body '[{"additionalData": {"c2JLXRYsJCJf3K5G": {}, "0UHChjxNXW9YeOGh": {}, "ObaOy094mrLwT5l0": {}}, "statCode": "WAOsEn65QHEziPCD"}, {"additionalData": {"nrY8FSpbVDERZIsJ": {}, "WTf5RQxEk4d0Absz": {}, "B08Fi74AlVRc5iVB": {}}, "statCode": "FSxXKYtTbTBcgxdi"}, {"additionalData": {"CMoCmHzjvrWz938N": {}, "09vajFsyNGeZNYCf": {}, "4kIrTNe8s6qK0V8o": {}}, "statCode": "8XaSeCYCQmS6qvf0"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'hcQ923k9NIvHfA3A' \
    --userId '1DXJ1F3S8YQD6sSg' \
    --additionalKey 'uw4W0LRi30BDrOhY' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'seUKfHlyJvvpET7i' \
    --userId 'WY3SV6ci6gz0zU8X' \
    --additionalKey 'pbXPl5uBdIDecGlU' \
    --body '{"additionalData": {"l1IoZcbY1Y9nJTGY": {}, "MMcDfyyWM5wXqlXz": {}, "jnRcM0K2lJWgWDGB": {}}, "updateStrategy": "MAX", "value": 0.6381916863903523}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"hvSev2t2QjISyiuk": {}, "UxVKwii7QJdjStkR": {}, "EtQGSr9UDH42RFPB": {}}, "additionalKey": "C2s5qR3eHJLtT7eX", "statCode": "psm4ff0187LglZfy", "updateStrategy": "MAX", "userId": "1PP5l4SXm4MqvQJE", "value": 0.25672719074704875}, {"additionalData": {"YQvGMQNJSYckHYaD": {}, "nf56CejjzyFLMnk4": {}, "OzJZR5t5ofHgLxel": {}}, "additionalKey": "8lh161O4vGbqWx6m", "statCode": "VDIOHtfSyyn88QQ9", "updateStrategy": "INCREMENT", "userId": "IdaK6XjKWIw5TX5s", "value": 0.3798325052623418}, {"additionalData": {"ayMlZQfOrTCCWTBn": {}, "oOuLm2vTfANI4vgp": {}, "bmYqzBcuwaU8UFbT": {}}, "additionalKey": "AImTwaP5QhVF2m2P", "statCode": "VY7Go3wbSn4mG44c", "updateStrategy": "MIN", "userId": "cm4PjK9YJxOH072k", "value": 0.9348198803141572}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '4NyP0eLBXLoRWMX7' \
    --additionalKey 'ujlZG9zeygjwuxK3' \
    --statCodes '["cee34qEcXk5hJvvg", "0k3i29OcCFS5gPVW", "HlygEsfyeQhKJGC3"]' \
    --tags '["r9BdfPVNwAU1LjZ7", "cAgM0uz2Dm9xP6SY", "rIuAJhvDZ8pU18UL"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '0oKJh7Fo0bOVHthh' \
    --additionalKey '6GeKxMJcNvfxyM3o' \
    --body '[{"additionalData": {"osSJrs55ne6uduJs": {}, "9zbKKntRshF5826t": {}, "BqdCmxZwo4M3xkI9": {}}, "statCode": "W2uO0N36hu2fWtQw", "updateStrategy": "MAX", "value": 0.3334334371983866}, {"additionalData": {"mFUNQ6Wmd4OrKpZX": {}, "6pMaBHGkOIY3uX60": {}, "o9d36ILNPb2E4ysP": {}}, "statCode": "bpPdwlcRkhT0b3nb", "updateStrategy": "MIN", "value": 0.9098769879288467}, {"additionalData": {"XlozMhLsezjm43Lc": {}, "eBsqBQoAhfR5Ptld": {}, "iuzLsHjV1g9HnAv3": {}}, "statCode": "8hZACebVRxQgnBBM", "updateStrategy": "OVERRIDE", "value": 0.13136967866388127}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'MNeKp6NtCoZQoGXS' \
    --userId 'H7n9xZU8CWdeP7AC' \
    --additionalKey 'fti3ngBRxk46pV68' \
    --body '{"additionalData": {"Z3YW7Ll3NZAfoPtI": {}, "eUSCPrYvRnB1nKgb": {}, "xu2UwBiRdqshpryp": {}}, "updateStrategy": "INCREMENT", "value": 0.864415209105251}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE