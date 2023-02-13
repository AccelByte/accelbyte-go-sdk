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
echo "1..78"

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
    --body '{"maxSlotSize": 68, "maxSlots": 53}' \
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
    --userId '6CXyNJlp' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'SpIHs3ow' \
    --body '{"maxSlotSize": 66, "maxSlots": 4}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'KXQnfOLj' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'd0QFqJKt' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Ga65rI5l' \
    --userId 'zKw7mD7P' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'OydZ9i3F' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'ENFyTkU5' \
    --userId '3wtpaFjm' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["JwELQM6c", "aYT7O6Vt", "zOZporLd"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'FQhoGA3Z' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'T480cd87' \
    --body '{"achievements": ["uoGYsd5c", "rVDMNq2D", "6xnIMf5t"], "attributes": {"JyadUOHc": "EXD4Em95", "wD58gWvK": "GgdVnTWq", "vOtnS5I5": "smDPVo4t"}, "avatarUrl": "YRwcHw4g", "inventories": ["yJDeDLpf", "Z5298G8c", "7pzhX9t9"], "label": "QjxN74AH", "profileName": "mAgENYK6", "statistics": ["dA33qSUS", "RzdNM86M", "uJi7MWnA"], "tags": ["vMoCIzqF", "VVtr3Jjx", "OtZjCl1n"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '1rGnu2JE' \
    --userId 'daFWtPfU' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'rM1nSpe3' \
    --userId 'BclAfPCg' \
    --body '{"achievements": ["gaGHS5sC", "kZfxY3q3", "YWne8aR2"], "attributes": {"hUI7EqHc": "czJmQzO8", "mNX2jhHY": "9z6umtI0", "lc1epyJL": "mSf1civb"}, "avatarUrl": "xQG2i4Su", "inventories": ["KGl0GoTO", "2H9x8TQw", "x4yjgeJk"], "label": "p8p9WXdR", "profileName": "5VYZxeyb", "statistics": ["7heVoP97", "5kiybdc0", "kiPNtCAM"], "tags": ["jE9TSGql", "OCsCFUfK", "INPIQQhO"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'nkHDHTxr' \
    --userId 'Mmvbd8Bm' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '4SynvnA6' \
    --namespace $AB_NAMESPACE \
    --profileId 'shdTaNG6' \
    --userId '9lR25h39' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'KCTboKJE' \
    --namespace $AB_NAMESPACE \
    --profileId 'uWCHAQ79' \
    --userId 'N6GFvpV6' \
    --body '{"name": "pzZAIUYg", "value": "llNmCpHi"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'tol9FkTh' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'RAIvUB63' \
    --label '5vcolasG' \
    --tags '["SFnJYCqe", "lKSVgH6i", "N4P3Uyis"]' \
    --checksum 'lB8NriVs' \
    --customAttribute 'vlXEgZsl' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'w1etqMli' \
    --userId 'qYTjRxQo' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'ZUcbUhFi' \
    --userId 'VKX5LId4' \
    --label 'gI25kxjP' \
    --tags '["57a29SEg", "VRic23jd", "JNfpP6Pw"]' \
    --checksum 'VSxDetqt' \
    --customAttribute '4YOeMhDV' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'bBKTeu6k' \
    --userId 'kcxqvwlO' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'cncguQyp' \
    --userId 'SoTR9wq0' \
    --body '{"customAttribute": "XFJAz1pO", "label": "xFij042l", "tags": ["NEq8oVhA", "AOtBrrek", "Qx6ft3ut"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '18' \
    --statCodes 'rEa3dEpG' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'JcgWBLlD' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'yeRXmGJc' \
    --userIds 't0AqWSi9' \
    > test.out 2>&1
eval_tap $? 28 'BulkFetchStatItems' test.out

#- 29 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5569162603467558, "statCode": "dG9FJjeU", "userId": "U72YTWZG"}, {"inc": 0.35786255944952305, "statCode": "ARg6Lg3e", "userId": "43GE1UMH"}, {"inc": 0.48355031027196405, "statCode": "NCtBAcmi", "userId": "hYGRuTWH"}]' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItem' test.out

#- 30 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2383002846041431, "statCode": "PQSA6DVy", "userId": "y1JXdLj4"}, {"inc": 0.21083703244313257, "statCode": "zglOyDrD", "userId": "SFMerDS6"}, {"inc": 0.06594117587707005, "statCode": "dKBpILtr", "userId": "dUsrUbe7"}]' \
    > test.out 2>&1
eval_tap $? 30 'BulkIncUserStatItemValue' test.out

#- 31 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'UjsTR2oh' \
    --userIds '["N0p49VUv", "taBhNJLy", "LRC03jVo"]' \
    > test.out 2>&1
eval_tap $? 31 'BulkFetchOrDefaultStatItems' test.out

#- 32 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "TzqArJ3E", "userId": "R8K87Eay"}, {"statCode": "bSlhUyhx", "userId": "n8H3dcHN"}, {"statCode": "Qfbgrmys", "userId": "XFH9L2TT"}]' \
    > test.out 2>&1
eval_tap $? 32 'BulkResetUserStatItem' test.out

#- 33 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --limit '7' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 33 'GetStats' test.out

#- 34 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.46453441118768113, "description": "AEfve7xa", "incrementOnly": false, "maximum": 0.3861722376574531, "minimum": 0.29933951613554777, "name": "p5IRJV1m", "setAsGlobal": true, "setBy": "SERVER", "statCode": "X5D8Y21d", "tags": ["01pacvJO", "TehHt1hy", "Q2Gf7oow"]}' \
    > test.out 2>&1
eval_tap $? 34 'CreateStat' test.out

#- 35 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'ExportStats' test.out

#- 36 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 36 'ImportStats' test.out

#- 37 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --limit '5' \
    --offset '27' \
    --keyword 'uoYUrQjT' \
    > test.out 2>&1
eval_tap $? 37 'QueryStats' test.out

#- 38 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'frnrtTjE' \
    > test.out 2>&1
eval_tap $? 38 'GetStat' test.out

#- 39 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ku2SBMJK' \
    > test.out 2>&1
eval_tap $? 39 'DeleteStat' test.out

#- 40 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'N8EZPCNI' \
    --body '{"defaultValue": 0.8003353230169044, "description": "YiAGDDyb", "name": "Qezc3cqN", "tags": ["pYfaXZar", "X24A0oHp", "PhWY44x3"]}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateStat' test.out

#- 41 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'pG9NiXw8' \
    > test.out 2>&1
eval_tap $? 41 'DeleteTiedStat' test.out

#- 42 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '6XKxAjlb' \
    --limit '93' \
    --offset '70' \
    --sortBy '8piNP7Eh' \
    --statCodes 'MhLBL4jm' \
    --tags 'uAa6c3oZ' \
    > test.out 2>&1
eval_tap $? 42 'GetUserStatItems' test.out

#- 43 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'uoE4nmyy' \
    --body '[{"statCode": "qXOUvllW"}, {"statCode": "b8bOkNYu"}, {"statCode": "o0CkqXts"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkCreateUserStatItems' test.out

#- 44 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '2RxzJIn0' \
    --body '[{"inc": 0.09669246435201273, "statCode": "B1nsmzn3"}, {"inc": 0.2299853616619939, "statCode": "ZYPWH0JA"}, {"inc": 0.9494210245498073, "statCode": "QNRpUC5N"}]' \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItem1' test.out

#- 45 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'zTnSCkql' \
    --body '[{"inc": 0.5865221540612189, "statCode": "5ID58tGM"}, {"inc": 0.04663813371179015, "statCode": "dUnbJiGZ"}, {"inc": 0.3942219229935744, "statCode": "1imUAII6"}]' \
    > test.out 2>&1
eval_tap $? 45 'BulkIncUserStatItemValue1' test.out

#- 46 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '9JTeD0np' \
    --body '[{"statCode": "Pdz3EQoV"}, {"statCode": "Jb5ZNbFI"}, {"statCode": "fH0D0dbr"}]' \
    > test.out 2>&1
eval_tap $? 46 'BulkResetUserStatItem1' test.out

#- 47 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '60F2XdXs' \
    --userId 'k9fRy34e' \
    > test.out 2>&1
eval_tap $? 47 'CreateUserStatItem' test.out

#- 48 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Zwuo6FfC' \
    --userId '6p0nw58n' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserStatItems' test.out

#- 49 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '4AJnNJTm' \
    --userId 'haU5WWBa' \
    --body '{"inc": 0.4028642600131168}' \
    > test.out 2>&1
eval_tap $? 49 'IncUserStatItemValue' test.out

#- 50 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'k2By0uLX' \
    --userId 'TV5eMJnT' \
    --additionalKey 'KiW3OwQH' \
    --body '{"additionalData": {"gYGXNbuR": {}, "2HTJfyF3": {}, "v52pV92m": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'ResetUserStatItemValue' test.out

#- 51 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '69' \
    --statCodes 'HZuOcZPn' \
    > test.out 2>&1
eval_tap $? 51 'GetGlobalStatItems1' test.out

#- 52 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'dHCttItV' \
    > test.out 2>&1
eval_tap $? 52 'GetGlobalStatItemByStatCode1' test.out

#- 53 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'dupX8DkA' \
    --userIds 'hjyZGeHa' \
    > test.out 2>&1
eval_tap $? 53 'BulkFetchStatItems1' test.out

#- 54 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7865359922805207, "statCode": "HjnIX1bD", "userId": "YutMxaS1"}, {"inc": 0.4020716282153224, "statCode": "QWUVBRlE", "userId": "Fh1Dm4jb"}, {"inc": 0.9836894657173767, "statCode": "OIGtDE0i", "userId": "H9IFViP4"}]' \
    > test.out 2>&1
eval_tap $? 54 'PublicBulkIncUserStatItem' test.out

#- 55 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8010449087480327, "statCode": "r7xyhlLl", "userId": "8PKMKaEa"}, {"inc": 0.19324629201723353, "statCode": "JzE5YhRy", "userId": "b4JcON9x"}, {"inc": 0.8171204109920924, "statCode": "2CFQl1vY", "userId": "5GCpNCXd"}]' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkIncUserStatItemValue' test.out

#- 56 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "rv7ZfFkv", "userId": "hySWDIwS"}, {"statCode": "EUy0ZSNy", "userId": "7VB62O1U"}, {"statCode": "oZNgY0KO", "userId": "XBxitLMW"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem2' test.out

#- 57 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"defaultValue": 0.8422147953815049, "description": "tKJFg2Yp", "incrementOnly": true, "maximum": 0.17806171017538397, "minimum": 0.29777764122087336, "name": "5WFdxK6r", "setAsGlobal": false, "setBy": "SERVER", "statCode": "yA3iBDbd", "tags": ["qbqVV7hU", "fcevcLCu", "8udIgym0"]}' \
    > test.out 2>&1
eval_tap $? 57 'CreateStat1' test.out

#- 58 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3TVronuq' \
    --limit '80' \
    --offset '35' \
    --sortBy 'mz80EbJ3' \
    --statCodes 'rSGX2pIn' \
    --tags 'XPwZ6fcX' \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryUserStatItems' test.out

#- 59 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'zU5Occx7' \
    --body '[{"statCode": "FkOjnXHx"}, {"statCode": "lqBwTtXQ"}, {"statCode": "gWg9bZ7d"}]' \
    > test.out 2>&1
eval_tap $? 59 'PublicBulkCreateUserStatItems' test.out

#- 60 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'EQGKbJSB' \
    --statCodes '["E6VfdJ4w", "3dlgl9au", "ujSDr9Xa"]' \
    --tags '["1G7Fe011", "ZlXMxiUP", "BWP5gnzb"]' \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryUserStatItems1' test.out

#- 61 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'sa7hV4UV' \
    --body '[{"inc": 0.49854988451136883, "statCode": "qrLfTDfj"}, {"inc": 0.9725579489418027, "statCode": "Yqh8Q1SI"}, {"inc": 0.2481725402934576, "statCode": "aCtjr4uZ"}]' \
    > test.out 2>&1
eval_tap $? 61 'PublicBulkIncUserStatItem1' test.out

#- 62 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'eMCxrj2Y' \
    --body '[{"inc": 0.8229354879499398, "statCode": "KQikpuRD"}, {"inc": 0.41901088637583905, "statCode": "E9TIYQXz"}, {"inc": 0.18411197895769238, "statCode": "QsWN5MNe"}]' \
    > test.out 2>&1
eval_tap $? 62 'BulkIncUserStatItemValue2' test.out

#- 63 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'w80QRiuZ' \
    --body '[{"statCode": "ZVpgSXiN"}, {"statCode": "ccfCEKBW"}, {"statCode": "UqVjlCI5"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkResetUserStatItem3' test.out

#- 64 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 's9IWcGYl' \
    --userId 'B0HCJr8c' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserStatItem' test.out

#- 65 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'fsl0mCYy' \
    --userId 'ojzq7JZk' \
    > test.out 2>&1
eval_tap $? 65 'DeleteUserStatItems1' test.out

#- 66 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'tQWzcyzM' \
    --userId 'qKO9TnZO' \
    --body '{"inc": 0.9598927831028754}' \
    > test.out 2>&1
eval_tap $? 66 'PublicIncUserStatItem' test.out

#- 67 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'poS2G4MW' \
    --userId 'BtUcUJcp' \
    --body '{"inc": 0.7931978890791053}' \
    > test.out 2>&1
eval_tap $? 67 'PublicIncUserStatItemValue' test.out

#- 68 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'hCwaFnQE' \
    --userId 'uIo4GEhh' \
    > test.out 2>&1
eval_tap $? 68 'ResetUserStatItemValue1' test.out

#- 69 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"8J6w6cXN": {}, "tkWrWXjF": {}, "ViNSFHSD": {}}, "additionalKey": "g8eOEtBT", "statCode": "XfM0qZ8b", "updateStrategy": "OVERRIDE", "userId": "t4cNsx6T", "value": 0.714100535950141}, {"additionalData": {"QvOVFICM": {}, "qG7sUn23": {}, "HNMFuvZ5": {}}, "additionalKey": "cgVrdXyU", "statCode": "DSQ9hZqX", "updateStrategy": "MAX", "userId": "hEwc1sFT", "value": 0.5271385404741031}, {"additionalData": {"USCUSYvO": {}, "nVAIMYO9": {}, "N29YawNB": {}}, "additionalKey": "E966I5ji", "statCode": "XstY8ir1", "updateStrategy": "OVERRIDE", "userId": "k5dzBF0p", "value": 0.20631595979438166}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkUpdateUserStatItemV2' test.out

#- 70 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'tpSF7J2N' \
    --statCode 'B3e8ggCt' \
    --userIds '["VSxcMAhO", "mWqt5YdQ", "JXfxXHdn"]' \
    > test.out 2>&1
eval_tap $? 70 'BulkFetchOrDefaultStatItems1' test.out

#- 71 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'O10Oo65B' \
    --additionalKey 'DloGhD2r' \
    --body '[{"additionalData": {"B8GEVgD3": {}, "i8djYiFQ": {}, "jnWQGP0h": {}}, "statCode": "HXGFuyAl", "updateStrategy": "MAX", "value": 0.6403450435192845}, {"additionalData": {"ITcdnLm3": {}, "cXxVXzqu": {}, "aogAHaic": {}}, "statCode": "1I0FwKWJ", "updateStrategy": "MAX", "value": 0.3412057299190352}, {"additionalData": {"k0FAsuJE": {}, "phSWAiYv": {}, "Xrx9HxBv": {}}, "statCode": "QrwbywyP", "updateStrategy": "MAX", "value": 0.5160106294434011}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem' test.out

#- 72 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '8LD7clXR' \
    --additionalKey 'BRQtgYAH' \
    --body '[{"additionalData": {"hJEoKVFZ": {}, "NFXKqjYM": {}, "uZoevlsq": {}}, "statCode": "jBygfxDo"}, {"additionalData": {"X06HbB4N": {}, "sAhPBhdk": {}, "17a4RkS7": {}}, "statCode": "I2uN2RiZ"}, {"additionalData": {"r8GBoFMK": {}, "wTuIP0ly": {}, "skSjv7tM": {}}, "statCode": "F443Rk5z"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItemValues' test.out

#- 73 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'B041kxAB' \
    --userId 'cyGdz5z4' \
    --additionalKey 'Gt9mJ38K' \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems2' test.out

#- 74 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'HEQtXYog' \
    --userId 'RK1IfxeZ' \
    --additionalKey 'ustzk6i7' \
    --body '{"additionalData": {"LqzGm0hI": {}, "LbIe1nOP": {}, "4wjxQaAx": {}}, "updateStrategy": "OVERRIDE", "value": 0.41096631991709187}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue' test.out

#- 75 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"EQoYWSTD": {}, "o7mYC8eR": {}, "fJvcPExd": {}}, "additionalKey": "t3P26DWp", "statCode": "5coqjK8c", "updateStrategy": "INCREMENT", "userId": "dw2Hs8LA", "value": 0.5536337110028963}, {"additionalData": {"QmQl6fQq": {}, "4elcHFzm": {}, "uLk3aEM0": {}}, "additionalKey": "2ToGgWMD", "statCode": "6SA1hsd7", "updateStrategy": "MIN", "userId": "4g8hGJc2", "value": 0.5587638072343643}, {"additionalData": {"vZkF3WNh": {}, "zeDzhC32": {}, "USUgjHb6": {}}, "additionalKey": "9D8gzhCC", "statCode": "nIA5B1Ei", "updateStrategy": "MIN", "userId": "yATZUoL2", "value": 0.5870796355973782}]' \
    > test.out 2>&1
eval_tap $? 75 'BulkUpdateUserStatItem1' test.out

#- 76 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'HL88HTj8' \
    --additionalKey 'tQODQXWM' \
    --statCodes '["W8EnfV1h", "qlAM6OK5", "O6X3R9hx"]' \
    --tags '["MVHGz4it", "2ELiLa6F", "kCxMaYuX"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems2' test.out

#- 77 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'XqJsm15h' \
    --additionalKey '2YiKjmnL' \
    --body '[{"additionalData": {"CpfhXyaO": {}, "8pzUktMw": {}, "YvASUNX9": {}}, "statCode": "D0an5d2t", "updateStrategy": "MIN", "value": 0.09796412276360189}, {"additionalData": {"4VGmv2bF": {}, "VVXRsGw2": {}, "ImjBZQSm": {}}, "statCode": "O39p2ESb", "updateStrategy": "OVERRIDE", "value": 0.21445568547103122}, {"additionalData": {"y8iG62i1": {}, "chTbdOAl": {}, "jRLh1R48": {}}, "statCode": "VB00poQo", "updateStrategy": "OVERRIDE", "value": 0.5084659130242717}]' \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItem2' test.out

#- 78 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '0M9zFOij' \
    --userId 'QoEO3dI8' \
    --additionalKey 'iepqCrr1' \
    --body '{"additionalData": {"HUkeLxh5": {}, "gyQ2BREN": {}, "oW1r44Wy": {}}, "updateStrategy": "OVERRIDE", "value": 0.29291364230747696}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE