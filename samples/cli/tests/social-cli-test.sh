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
    --body '{"maxSlotSize": 75, "maxSlots": 54}' \
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
    --userId '01kNNnzN' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'gJW4YNCv' \
    --body '{"maxSlotSize": 87, "maxSlots": 98}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'kC1r6Vju' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '5G2WS8hQ' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'yOssa8ac' \
    --userId 'eSxsC4ms' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'x6vAwcKM' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId '3YYHcAO9' \
    --userId 't2wwUcp0' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["MC6pkM7u", "oedWu5yj", "aaG3R5XE"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'FotsrMN4' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'umPFAHcU' \
    --body '{"achievements": ["JFkNPoZT", "1wImrDiF", "hpHW9cpt"], "attributes": {"93IsgHFd": "jDVvpqp8", "tbNCk5SA": "9e5wZw1H", "n4bjPtt7": "YESQ7z0R"}, "avatarUrl": "K57es2N7", "inventories": ["7ZtdhbnF", "ESgNa0hM", "LgRClfHy"], "label": "UgTryUcV", "profileName": "e5QBxsPf", "statistics": ["ZzFRgfQB", "YborlWP6", "zpHfRE3Z"], "tags": ["xhvUBpst", "VM8cX4WW", "apggiWdV"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'TVL6YJ7J' \
    --userId '9xnT7l2K' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'e17PUzg5' \
    --userId '6WpjISRM' \
    --body '{"achievements": ["n3fuZnPP", "TVP6IBxU", "5bu3qq2G"], "attributes": {"rwhMtbjM": "4Omx0Gn9", "OkudEvao": "SDJJcJ5e", "xhllgzbB": "FB1mBYz8"}, "avatarUrl": "fDu0BSzB", "inventories": ["Bbbgkt3r", "6bw0KBC0", "xcVAMsQX"], "label": "jkOcQJkO", "profileName": "oLEQMgi9", "statistics": ["pAcMmdMU", "JdWCsqZv", "MW02ZMKe"], "tags": ["gho4CFGk", "4D3xrOQ4", "V42i4bic"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'YaTnFUz5' \
    --userId 'AzVhypuk' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '7O6qO2Pe' \
    --namespace $AB_NAMESPACE \
    --profileId 'BAP67dIU' \
    --userId 'Zdhk410P' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'rh51HpMN' \
    --namespace $AB_NAMESPACE \
    --profileId 'APMXWw8m' \
    --userId 'd3lXFJJK' \
    --body '{"name": "60Uc1d3I", "value": "bDxWiyCo"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'ua0alg5L' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'MDXfUW3O' \
    --label 'TSRRZVzT' \
    --tags '["C6TT7Nis", "zVNbFfCg", "GoeRXDki"]' \
    --checksum 'oV5lkeCe' \
    --customAttribute 'o2LCoBE3' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'r63ohBn5' \
    --userId '9kfoJ1yt' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'hM4hPNVm' \
    --userId 'HPpxerP4' \
    --label 'RAmiM8wE' \
    --tags '["hB9fqPjs", "t9ljZnR8", "UF5PMbxc"]' \
    --checksum 'C9f3voN4' \
    --customAttribute 'sigTGlI7' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'jNBU1BmZ' \
    --userId '77JYQi90' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'nps77b86' \
    --userId 'yX7yyZ9n' \
    --body '{"customAttribute": "IVRunY8x", "label": "w4nIKHRx", "tags": ["MRL4qJ1z", "wGieGk53", "QUm8fUU4"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'z7hyjJQN' \
    --userIds 'MVXSuCiL' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9011987561768018, "statCode": "ZufILZ4M", "userId": "k8cSdoxy"}, {"inc": 0.45539245201431433, "statCode": "dFCQrO5A", "userId": "cBrF7YwA"}, {"inc": 0.5959475159781701, "statCode": "tNiyiz2y", "userId": "V8Y3UpxV"}]' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.36690605323928727, "statCode": "fr7OV1wP", "userId": "oi5Js0U7"}, {"inc": 0.3469046777726522, "statCode": "CHQYZUyO", "userId": "FBx7oW9c"}, {"inc": 0.24004869805934792, "statCode": "gxqKDBmA", "userId": "bmxnKQyO"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'aZCHK2aQ' \
    --userIds '["EYyrHmmY", "u2Lha5sm", "1difhFPC"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "OBdtE4xa", "userId": "AftV1Vqy"}, {"statCode": "DWvNF6vv", "userId": "p7yHBDZ7"}, {"statCode": "mYwsCwt9", "userId": "RFll4ZT5"}]' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.8154645421606695, "description": "CagZNr1w", "incrementOnly": true, "maximum": 0.4195617398285335, "minimum": 0.5950766479196886, "name": "e5gMqL7K", "setAsGlobal": false, "setBy": "SERVER", "statCode": "1afc3ZW2", "tags": ["AduRxZ9N", "ofmU1Lok", "oBXOB1xM"]}' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 35 'ImportStats' test.out

#- 36 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '70' \
    --keyword 'AUX8mrKU' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'xhTz0WvP' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FT05l2ku' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'pgrIILxv' \
    --body '{"defaultValue": 0.20515615413263133, "description": "5vtSemD7", "name": "w049my1G", "tags": ["1yvp6JAn", "DdSYuU6Y", "SHJ5gVBj"]}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '0JdJPHAO' \
    > test.out 2>&1
eval_tap $? 40 'DeleteTiedStat' test.out

#- 41 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'mZutYVSV' \
    --limit '22' \
    --offset '14' \
    --statCodes 'khVx5D9a' \
    --tags 'hHkAqQcp' \
    > test.out 2>&1
eval_tap $? 41 'GetUserStatItems' test.out

#- 42 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Xk3iE8HG' \
    --body '[{"statCode": "Iwj5kEby"}, {"statCode": "H8g8v6qk"}, {"statCode": "ErKue1wT"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkCreateUserStatItems' test.out

#- 43 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'sTerzPRm' \
    --body '[{"inc": 0.2090056726458862, "statCode": "X3Cf6njV"}, {"inc": 0.05105444152480332, "statCode": "a9K6wqzj"}, {"inc": 0.6603186705622515, "statCode": "pNw7qVWc"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItem1' test.out

#- 44 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'BN5oKrt1' \
    --body '[{"inc": 0.5041256330673888, "statCode": "V7Zdqo0c"}, {"inc": 0.29354697729374124, "statCode": "olHDwEjh"}, {"inc": 0.3340167871798958, "statCode": "nJOhjweG"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItemValue1' test.out

#- 45 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'KzucTDqz' \
    --body '[{"statCode": "yhxZRzxa"}, {"statCode": "enAO6628"}, {"statCode": "QEZTcCAx"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkResetUserStatItem1' test.out

#- 46 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '7n3W9bvu' \
    --userId 'DbuRyIyd' \
    > test.out 2>&1
eval_tap $? 46 'CreateUserStatItem' test.out

#- 47 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'yieyuBd0' \
    --userId 'hbkjGUN8' \
    > test.out 2>&1
eval_tap $? 47 'DeleteUserStatItems' test.out

#- 48 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Jb8Hd2Hv' \
    --userId 'bFpsL8da' \
    --body '{"inc": 0.9024044753030755}' \
    > test.out 2>&1
eval_tap $? 48 'IncUserStatItemValue' test.out

#- 49 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'mPMvAf2h' \
    --userId 'i1lDatpX' \
    --additionalKey 'EW3RuCza' \
    --body '{"additionalData": {"4X8WPEvk": {}, "vfuKj5cH": {}, "nbMATE61": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'ResetUserStatItemValue' test.out

#- 50 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'IL3pgI1a' \
    --userIds 'qT86xpEm' \
    > test.out 2>&1
eval_tap $? 50 'BulkFetchStatItems1' test.out

#- 51 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.10879980295458203, "statCode": "c6kNYsKL", "userId": "EFkBm1KG"}, {"inc": 0.2143469500312266, "statCode": "ub8CkJM2", "userId": "BL0ClhkV"}, {"inc": 0.9178339388010898, "statCode": "plVoQnh7", "userId": "Dr2C6UuD"}]' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItem' test.out

#- 52 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.43453125337957943, "statCode": "UtViO6Ow", "userId": "WAUHK0Cs"}, {"inc": 0.925676617784909, "statCode": "G1kFBmqx", "userId": "lbQ4fKX4"}, {"inc": 0.22415886802373475, "statCode": "v1pBlS8n", "userId": "7Edgsx38"}]' \
    > test.out 2>&1
eval_tap $? 52 'PublicBulkIncUserStatItemValue' test.out

#- 53 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "SVm1tcqK", "userId": "o7xejgTp"}, {"statCode": "IJ51UKAA", "userId": "9LcHSQMN"}, {"statCode": "PsXfWaQU", "userId": "uGTsklY5"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem2' test.out

#- 54 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.7734274131751087, "description": "qVWrxkaR", "incrementOnly": false, "maximum": 0.7324685973034601, "minimum": 0.586122158257266, "name": "XxVcPWoI", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "IGSQAI7t", "tags": ["Q6sG5dYN", "zoS0vgQs", "I5CkQgoh"]}' \
    > test.out 2>&1
eval_tap $? 54 'CreateStat1' test.out

#- 55 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'JyccKMPC' \
    --limit '64' \
    --offset '43' \
    --statCodes '3swPX6vl' \
    --tags 'ep0ZEqj0' \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryUserStatItems' test.out

#- 56 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'e715URBP' \
    --body '[{"statCode": "ML0qG4es"}, {"statCode": "owU0FRfE"}, {"statCode": "j1zwv1HW"}]' \
    > test.out 2>&1
eval_tap $? 56 'PublicBulkCreateUserStatItems' test.out

#- 57 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId '2GBGSi5Y' \
    --statCodes '["017JWmpd", "1hqg5Pii", "EvNAyArp"]' \
    --tags '["lekeKA02", "HTa6yt11", "bwTjSdrD"]' \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryUserStatItems1' test.out

#- 58 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'XYj7hDCi' \
    --body '[{"inc": 0.24489024404952042, "statCode": "rqL5rhak"}, {"inc": 0.19161564193304403, "statCode": "IUvuHI4x"}, {"inc": 0.15139301556088514, "statCode": "Km1fOkIX"}]' \
    > test.out 2>&1
eval_tap $? 58 'PublicBulkIncUserStatItem1' test.out

#- 59 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'uZ11jpB9' \
    --body '[{"inc": 0.5722801229048634, "statCode": "frLkZVkG"}, {"inc": 0.8303016127687953, "statCode": "7Xe1WQUg"}, {"inc": 0.5625528378958317, "statCode": "eMKYUVyS"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkIncUserStatItemValue2' test.out

#- 60 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'Fk9dLzQi' \
    --body '[{"statCode": "unyzLmFy"}, {"statCode": "gylrSlx5"}, {"statCode": "Nrtbe8bc"}]' \
    > test.out 2>&1
eval_tap $? 60 'BulkResetUserStatItem3' test.out

#- 61 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'kQKfUyk8' \
    --userId 'NOUd7xRt' \
    > test.out 2>&1
eval_tap $? 61 'PublicCreateUserStatItem' test.out

#- 62 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'YaKe9c4s' \
    --userId 'gzL52ow0' \
    > test.out 2>&1
eval_tap $? 62 'DeleteUserStatItems1' test.out

#- 63 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Zd6oDTox' \
    --userId 'qVNkpg6k' \
    --body '{"inc": 0.40174577136145606}' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItem' test.out

#- 64 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '1Nf5METu' \
    --userId 'YkeWIQnP' \
    --body '{"inc": 0.31511077606231563}' \
    > test.out 2>&1
eval_tap $? 64 'PublicIncUserStatItemValue' test.out

#- 65 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '3OrlqDuF' \
    --userId '6BAv4YHk' \
    > test.out 2>&1
eval_tap $? 65 'ResetUserStatItemValue1' test.out

#- 66 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"E2nIUeez": {}, "dp2r4Z2D": {}, "SghArPL8": {}}, "additionalKey": "wt3KWqRZ", "statCode": "54m5VGPF", "updateStrategy": "MAX", "userId": "bSl1UgO4", "value": 0.3077904404538149}, {"additionalData": {"ZC2vpPTt": {}, "s5AuqZSn": {}, "d2s2DDE3": {}}, "additionalKey": "XbyQra5s", "statCode": "M5wHXauq", "updateStrategy": "INCREMENT", "userId": "rTMIQdMo", "value": 0.4171617932857036}, {"additionalData": {"Lq3gsqRA": {}, "2nMGNyxd": {}, "CNY7A4z5": {}}, "additionalKey": "k7q96xba", "statCode": "HjW3xiHF", "updateStrategy": "OVERRIDE", "userId": "Maqqb04B", "value": 0.8310407759361562}]' \
    > test.out 2>&1
eval_tap $? 66 'BulkUpdateUserStatItemV2' test.out

#- 67 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'U9jfigmo' \
    --statCode '5oLPH72A' \
    --userIds '["CBb8bCqn", "LsEkgJXz", "vXk1oTTV"]' \
    > test.out 2>&1
eval_tap $? 67 'BulkFetchOrDefaultStatItems1' test.out

#- 68 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'YZIZJjqc' \
    --additionalKey 'aLDUgXhr' \
    --body '[{"additionalData": {"WdQZ3OL8": {}, "mkStkALS": {}, "591yWUQ4": {}}, "statCode": "nXqwA31l", "updateStrategy": "MIN", "value": 0.7409373664156984}, {"additionalData": {"Hxeuy11q": {}, "hB8QsW5k": {}, "vJJbyfgX": {}}, "statCode": "Nk56THRQ", "updateStrategy": "OVERRIDE", "value": 0.49407931614831435}, {"additionalData": {"VSHe3ynJ": {}, "4NeCk9TU": {}, "w0sd8l5z": {}}, "statCode": "5hnVCR7w", "updateStrategy": "OVERRIDE", "value": 0.15824400910787684}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem' test.out

#- 69 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'yUbuukKN' \
    --additionalKey '57SkiNny' \
    --body '[{"additionalData": {"p5nQpmKa": {}, "TNIZsKXB": {}, "f3FZHsuu": {}}, "statCode": "EU5PPuY3"}, {"additionalData": {"Tfgmg1SV": {}, "twShT0RA": {}, "5UvyTAgI": {}}, "statCode": "yTnnRC9Y"}, {"additionalData": {"R7M0EzJu": {}, "4f1F7Fls": {}, "VaEktteC": {}}, "statCode": "wf03gvvN"}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItemValues' test.out

#- 70 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '6zbmaf83' \
    --userId 'kDBGZvKU' \
    --additionalKey 'nSvpBZ1U' \
    > test.out 2>&1
eval_tap $? 70 'DeleteUserStatItems2' test.out

#- 71 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'iCRcFdkN' \
    --userId 'G59NE0fN' \
    --additionalKey 'OlVGOhvl' \
    --body '{"additionalData": {"5SVcquqJ": {}, "NEqLpztg": {}, "MPWUDJhr": {}}, "updateStrategy": "MIN", "value": 0.16165900499169983}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateUserStatItemValue' test.out

#- 72 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"OEPo3kZ2": {}, "CXaEdN0Z": {}, "uD1IL6YV": {}}, "additionalKey": "aPMO2ew7", "statCode": "kVvcyjNW", "updateStrategy": "MAX", "userId": "wGUFPPlR", "value": 0.07641581163859956}, {"additionalData": {"gWW9L143": {}, "vLrZfNvg": {}, "l067B4xE": {}}, "additionalKey": "IbAZwsLV", "statCode": "43kZWAsR", "updateStrategy": "MIN", "userId": "Kjnl02LF", "value": 0.46974029521618665}, {"additionalData": {"0hIZkTsi": {}, "TmmDttI3": {}, "E2GzRLds": {}}, "additionalKey": "dhbp0Xme", "statCode": "WFCxViqf", "updateStrategy": "MIN", "userId": "GrpiEx46", "value": 0.47770710437889274}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkUpdateUserStatItem1' test.out

#- 73 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'WC8PVklf' \
    --additionalKey 'ocqSYBVo' \
    --statCodes '["5m87hZLv", "EdLBcraP", "oRkV07U0"]' \
    --tags '["M9AZTd8h", "ba0ZCNFr", "IQ42WYZ7"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems2' test.out

#- 74 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'xngNkv87' \
    --additionalKey 'jOWffvTK' \
    --body '[{"additionalData": {"a60U1pwH": {}, "VTpZEHin": {}, "xazGnY0K": {}}, "statCode": "4IuxNfdn", "updateStrategy": "MIN", "value": 0.35457455392562853}, {"additionalData": {"SoaCuPdG": {}, "L6zZXDxQ": {}, "sGfqqRQa": {}}, "statCode": "w8W4QoKh", "updateStrategy": "MIN", "value": 0.8161112942188952}, {"additionalData": {"NiSVygoj": {}, "scixxUuE": {}, "MQbE3pcY": {}}, "statCode": "dAYTUTM6", "updateStrategy": "OVERRIDE", "value": 0.8863827558778147}]' \
    > test.out 2>&1
eval_tap $? 74 'BulkUpdateUserStatItem2' test.out

#- 75 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'o2tFoUCT' \
    --userId 'E2TU5omM' \
    --additionalKey '5e4cflJV' \
    --body '{"additionalData": {"fxM9Gr4R": {}, "Foccy9uP": {}, "7xuMyw3q": {}}, "updateStrategy": "MAX", "value": 0.7148597407773951}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE