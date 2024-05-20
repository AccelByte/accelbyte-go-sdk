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
    --userId 'pWmxxxHjq0L7sWHZ' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'UkazqCG3Jjnmz381' \
    --userId 'A7Qa2hINwuxMxqRB' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["RppZ3lqNrlwIyKe0", "KAItMOmP5itWuFAf", "BpvHBPQJLleMTRcj"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'nZzXfTXuG6TCcPBg' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'xc1pVaT95isecfor' \
    --body '{"achievements": ["lENfWqI6ZQrB6jC3", "MYOmm6bVKe4dRBXT", "3y5cqO5U7F23s2ZY"], "attributes": {"LDANYLleWIyYHPD0": "Ln8ft5fY905yVFHn", "49lLrlVB2HyPWYwE": "tNJWyrYt6ZI8YeFT", "Ug8ppdEgTm4eN8h2": "Jgt3oUCwnxTBRk2T"}, "avatarUrl": "tySPg3u6gtKHR38k", "inventories": ["BbV1XnSc2Fcyii23", "jZ1I5iPhfnjt50A4", "OqkjVkV6p3Y1DGyJ"], "label": "hmv5WJbKZzX75AAY", "profileName": "L1fychWY1tNAuBYx", "statistics": ["a4nZzFrNqxEXhSfu", "DTLuwmOTt3Z4oDCu", "Y6kEWwanR9LTgRWq"], "tags": ["240G62Ly7T1C9rmL", "hwFhHfbXI5JLqEXI", "0T6Twcg7b24kyCpX"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'nGzuFcjBjoeArhEK' \
    --userId '1kcSVTYsOnICevIJ' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'vFyQWuiiDrD99wdq' \
    --userId 'p8gtBdr5s3A6O5se' \
    --body '{"achievements": ["xxED5Fokbvwg9kGJ", "wAViLpWqFGWgiiWI", "vcUFKRW62Lhhu2jT"], "attributes": {"0vAOPpAOCTJix0r4": "ZQSN8gBRyKwzBL4F", "6MdQ9jfP6PxDWid3": "dGPiiGECZI4dfM9C", "z2l64i11FHq80tlK": "jzxA7rG4m8XzSEPe"}, "avatarUrl": "xjkh1qtnMsqmkApQ", "inventories": ["gmr5JKgCO5qh0TKp", "45FbxigxYH01Kw5U", "eTpJ9B1DbGvpWLEO"], "label": "GFLrQzEPoq7IgXU4", "profileName": "1ylwQ3DKctv36bPd", "statistics": ["jiPvjRpwwVKcSfTA", "QbKI2mv4M66AwoPa", "MX43MrQ1FJorL5en"], "tags": ["5jxWPKGUvKEgeoas", "ABOk9sCFzgD6JTEM", "f5Wsv1uKMhUIXYs4"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 's1xo6RwND7WJV6rX' \
    --userId 'oGV4W2umcfbpwWT3' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 't2eut2vkItgDDRXN' \
    --namespace $AB_NAMESPACE \
    --profileId 'phYXWKhrcNYt0qI3' \
    --userId 'Wu1L0K6XslJHNhTj' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '8MtGCdUtOyeA6BxN' \
    --namespace $AB_NAMESPACE \
    --profileId 'SYU0PTpWipwZNpdH' \
    --userId 'LQ78hjocM6IQ4MkQ' \
    --body '{"name": "qbS6aPEIc4TWfCNC", "value": "89MSoguBa6kMIqOV"}' \
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
    --limit '9' \
    --offset '86' \
    --statCodes 'XxiS2d4mulzEJ2xZ' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'Pj2EoVofWUPJcIL8' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '63' \
    --name 'pejnOqPJG4nj1H54' \
    --offset '67' \
    --sortBy 'MJI9qUpHA5ENgHnb' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "4uXl2WaJYmW23OfY", "end": "1987-05-05T00:00:00Z", "name": "jn1ZTsvv8XUhgGfC", "resetDate": 97, "resetDay": 66, "resetMonth": 55, "resetTime": "7cmmvcFx1pE5SNPk", "seasonPeriod": 20, "start": "1997-08-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["qdLCVRf7OhEAhGLJ", "nRmZku0psNDBbjbm", "VR5yA5LRQn678CMl"]}' \
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
    --cycleId 'K7OF9HARykm8olwO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'l2xb6NzOCqLI1IAB' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "WVXzpQ9lKILgl2P4", "end": "1984-05-24T00:00:00Z", "name": "8W59uDaPKvln711o", "resetDate": 80, "resetDay": 91, "resetMonth": 83, "resetTime": "CGT7uvPRFhBns6nK", "seasonPeriod": 73, "start": "1972-02-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'Uint91zJVGxxQAZR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'yrYxkAxNZuIGreqV' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["GI7tpGE6PUjl31t1", "xKFE3XSxeFy26KxX", "Y1OKkTCyxfc4izql"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'Q70ZWoLLPSqD482e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'HbLVy9rDLH72OIw4' \
    --userIds 'rxJVyiNOwHMsl29G' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5050217902147596, "statCode": "cakLjqPmnuBNHTYe", "userId": "XppbYARuPbcym0Al"}, {"inc": 0.9727593039234931, "statCode": "Z3GQYP331hiSUj4l", "userId": "j5E474TNFVFQI3XZ"}, {"inc": 0.2842900756418659, "statCode": "vw24jbKALHotE5Yc", "userId": "7Nrdw4W7cfO0Vzj6"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2095087181859595, "statCode": "TEwRL4Qt83swsK6T", "userId": "Eh1UKrbSwY8q5pUe"}, {"inc": 0.08204539002496714, "statCode": "b97XgzA9YDNXL9CD", "userId": "i3m00YjOccBA7hp7"}, {"inc": 0.39671479355727635, "statCode": "jhcBRNdfiD270UXv", "userId": "DRBR7hAB80CoyHEc"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '8n2N7gTKXiDj7zfE' \
    --userIds '["FEXbzNOwJbzmUVqv", "zXpD2kGp1DcgMiVe", "XZajHXFGL2fLY4yD"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "d1pkmXCIpseFfBeW", "userId": "bAavyv0e44N42yKy"}, {"statCode": "AjHYy3Pao4pamtkC", "userId": "1jcHjZnWN91t5fqZ"}, {"statCode": "HVUUxLqSVFyb4FoI", "userId": "Xxi6BGEV1FR61SYv"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '21RX4rqes5MIw3VZ' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '85' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["YzlkEmv3LtFJ7x8Q", "a7QjNSS961EKRSpT", "O9EHUqbMCbQ5fnTD"], "defaultValue": 0.3040305562787966, "description": "U7vShIbC3RDybxLO", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.7241124479019884, "minimum": 0.805011870673692, "name": "ko0huJ3aTJqONRFt", "setAsGlobal": false, "setBy": "SERVER", "statCode": "wdD2WuXqmb3NMvRK", "tags": ["YMUVRdW3WUElcKjH", "U47axzfiDb6tyZA5", "oclfjDMhDaVCv8FU"]}' \
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
    --isPublic 'false' \
    --limit '6' \
    --offset '9' \
    --keyword 'J9L78wq8sajnYDOo' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'BCdm3dP1az6vKB0m' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'gnFnXP3lzEZIrIFX' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'CExLPcXm4CPRTGlC' \
    --body '{"cycleIds": ["y0A5GXViAlTnkPNW", "vTSJgk1qjNkSqveu", "gHitvMktSGXPZLIw"], "defaultValue": 0.8400200081262452, "description": "ojZZI3PkOWonLq11", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "Zbw0QDt6ESFNosl2", "tags": ["hG525gBSzcOE5D59", "S7Ih9VwMMqUTsZA1", "2aiXsmvIIbyE8IAU"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'hox7WdXIJOtJClLN' \
    --limit '60' \
    --offset '61' \
    --sortBy 'K2ppZENH57QpKh6L' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '8HlcK8mHLT17DOl1' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'ZzgLFdh9HHeT6eh0' \
    --namespace $AB_NAMESPACE \
    --userId 'yhRmyJ3MnZjRorLO' \
    --isPublic 'false' \
    --limit '76' \
    --offset '52' \
    --sortBy '7HaWaxW9RkuLumU0' \
    --statCodes 'ImR6vl9HZ4PagYAl' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'B5Fzzrh61ctiETTR' \
    --isPublic 'false' \
    --limit '17' \
    --offset '59' \
    --sortBy 'ax9ZklO0lSGgGcpw' \
    --statCodes 'BvP7v5uGcqkb4hHl' \
    --tags 'Frv37EJqIIUyA3nF' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'SA26IYZn0eXQpwC8' \
    --body '[{"statCode": "6gkllaeo7TysIdUg"}, {"statCode": "lh7AdLBq0RY8h8TY"}, {"statCode": "WKIS7e7yx32DH65Y"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'f8GN2SuvkwiMx1b7' \
    --body '[{"inc": 0.36989513183865597, "statCode": "gGBDGK6jPukU2tNv"}, {"inc": 0.2214327144477748, "statCode": "twkpGWhRNCT6vIVE"}, {"inc": 0.709303026576198, "statCode": "EM6a4JbcVSPEgpub"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'dCrhXMsTcSSKqpe1' \
    --body '[{"inc": 0.8709596803380547, "statCode": "KeVOKVfIxAECl8ok"}, {"inc": 0.0926733824379744, "statCode": "3eE3nKx66rjyuQyX"}, {"inc": 0.5271607648101816, "statCode": "VHbzyIBcz5XmDQAY"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'DrR01nAq0TWmaY87' \
    --body '[{"statCode": "JLMrmXJE1hCGYaRf"}, {"statCode": "DLPB6YxGIPkbFrt7"}, {"statCode": "El8cS7k1QMs6u9JB"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '82nu8UkyMEtY4h0C' \
    --userId '9j8prVGJpBXaEvoH' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'WwB1i8J99xAJkoer' \
    --userId 'qcGHh3XwdgErlkDy' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'VhjaVGVGn43r2pYh' \
    --userId 'cq0N6TFqYat8v0Cu' \
    --body '{"inc": 0.7403655768692216}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'XwNKPDrknz2c8f1N' \
    --userId 'SbHs85IH2KwFoxFJ' \
    --additionalKey 'OvYlHnnsGyxZOiYC' \
    --body '{"additionalData": {"OrcOuMCi9eXR1jlT": {}, "51WLsPXnVhbs9ktq": {}, "Xr2CVCAGLhfOQVXT": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '94' \
    --statCodes 'S8V00qpDe7gbtiL2' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '8BYJL1eakTzd3Uhf' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '53' \
    --name 'InRVcAx8HZm8i9QW' \
    --offset '17' \
    --sortBy 'GiysdwnP4BcTHJmc' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["FdY7dcNW4N1YsLXN", "OROIFc4XwrWlbR2b", "6tAbNDx2YLRaCZSm"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'fpPM7AZ2HinljdoS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'I8tgW3Ey5NXKXdx4' \
    --userIds '0ideRy1Wi0zw3vVY' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3615073802197609, "statCode": "bUDUcRk7PQi66rcl", "userId": "DwDjZF5WRy3s1TtU"}, {"inc": 0.9735358208638923, "statCode": "lFSY3tmHKCnCxsIU", "userId": "VVGYD9Je7IgM12uv"}, {"inc": 0.1988849222849277, "statCode": "U46R7AQfxIcKilvQ", "userId": "FI7zFXlo4MHc8T0C"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9963148739121065, "statCode": "CnmfTm8zawpP1Sec", "userId": "GrNfRqKURsW5tfig"}, {"inc": 0.4796515095363615, "statCode": "j580zFNlooB2W1pU", "userId": "v2ibDn0sHP2A6VtN"}, {"inc": 0.11007638729284075, "statCode": "xrCQfrkifu24Rg0G", "userId": "GnNbXGWnCkhfFoPQ"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "637aE8Qa7DdZZ8zh", "userId": "ggFvDfNnbELNS44s"}, {"statCode": "7OvznmlZOPOF9zv4", "userId": "KYOQ9zq2rdHMxoh7"}, {"statCode": "kWHlbrMla9WqyZjN", "userId": "VghmddUkczsNtePy"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["ZiQtnhZ1xwCXkfC9", "pTKilpPNnJFG6BOU", "zj9AzQGVs8sHk9Mn"], "defaultValue": 0.8040271838666917, "description": "LcDvbL82pvLz6uau", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.08137415796721359, "minimum": 0.7471299488146707, "name": "z9OCqRPdAZGenPml", "setAsGlobal": true, "setBy": "SERVER", "statCode": "AU2TtK2dItJqFPo5", "tags": ["LD8AkzxOrADRYrKs", "UgWFge0X4Os1fTSr", "xyYrrp1f3Zdvp4Ua"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'F0mkiYPd4Qcn3VOn' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '12' \
    --sortBy 'cwevVUxTT4J7sseb' \
    --statCodes '["DDZjPylyRBRTn8BN", "aU6Xd19yqSyGRHma", "Ey0vYHebMSWn2OVP"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '95' \
    --sortBy 'HNaDPONBuncN4zx3' \
    --statCodes '["31UY2ItaskGlacws", "WfA1mzzjvL4dnwZl", "sYhUDXHdV7Lz2Fey"]' \
    --tags '["6ouY9081p9QfAhOy", "cx2CN6TEw0xvB80F", "S46sqhExsHqzRrJ9"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '7bpP8KJAAU5VkyvY' \
    --statCodes '["h0NWifiQB03gQ59f", "Vbl2aUI2ez56aLKW", "CJZdHBDaGiqaEGF8"]' \
    --tags '["jcNCmIbNXf59PLxe", "1nSF93aVEePTuB2m", "CaLXlB1llYKtAyT7"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 's9r6aT31VEp3jeXO' \
    --namespace $AB_NAMESPACE \
    --userId '6vDkRGJlHxHxKpBd' \
    --limit '39' \
    --offset '0' \
    --sortBy 'YlKYdyaq2ouCZmPR' \
    --statCodes 'NbbHGgtSfHd5UR0R' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3TbUnFSYs54Fihbx' \
    --limit '53' \
    --offset '30' \
    --sortBy 'Xf1nK6S588Z4YiHy' \
    --statCodes '7kikRUUnqw1OPUUS' \
    --tags 'WhwrmonWeNmJVfzx' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wDVX4I6Xp0yMzXlv' \
    --body '[{"statCode": "Mq0hvHPgoDrycNuF"}, {"statCode": "q2RTPJN7ftA3D5tq"}, {"statCode": "N0nf6CFtbp11aADJ"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'SexwesteYfMCcwth' \
    --additionalKey 'DHC9y6OOHpVIVN7C' \
    --statCodes '["X7GITkAHnOryj3On", "VqK0h6Jyyx75ou3f", "GMl8Jpmuy8MS6DZc"]' \
    --tags '["XGQhFYmqglKZdnsO", "zqINNBqwteic3iLO", "oa8x4I09imHJyZWp"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '1noPOXFMFtRyqix2' \
    --body '[{"inc": 0.8320106124200943, "statCode": "rC3MHWwQ4AJUgsoT"}, {"inc": 0.546075557528796, "statCode": "7U5Z4rX40pKAe3HI"}, {"inc": 0.9539024312743318, "statCode": "0jrtqO8EVeqMGWAD"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'KKeoHmHk2XlmN7EV' \
    --body '[{"inc": 0.5645268456122792, "statCode": "DYDmJGMAvK6W4pAS"}, {"inc": 0.6077741218370997, "statCode": "LYCvceGMDkkbO5ZB"}, {"inc": 0.8527160506400432, "statCode": "wnzjQYoW52flBTND"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'XzZisPpmNZC7tq1L' \
    --body '[{"statCode": "2JdS2MtPPP7JXBku"}, {"statCode": "w9tI7EFmF5e3eASr"}, {"statCode": "t6VcbThO1tZsvXtH"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '67WEIUawnR1a0YUy' \
    --userId '7hp8GePpgz7I1fmb' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Gj8Whgzisi3DzdzO' \
    --userId 'kc78JixFFAfhUDlk' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '4jJwU3IwaHOrtMr3' \
    --userId 'N5YYQPtl9RE4CSCD' \
    --body '{"inc": 0.8376516858822225}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'L2qqrLdsVObhDrKz' \
    --userId 'N5CtqWmhQl08x6UC' \
    --body '{"inc": 0.23412637538488013}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'S9OcftQQ3k1mEhel' \
    --userId 'CgqlxYQf88E54zuL' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"BKJwge68NDpXWANN": {}, "b4Y4JyY3Ne0H1O48": {}, "WBvRoW9DWFUTWVlM": {}}, "additionalKey": "AdF7jhhktcqfKxmf", "statCode": "dkgfi9fQU3yEpMbW", "updateStrategy": "MAX", "userId": "SAogKEVJcpN3PaX5", "value": 0.48697896913302563}, {"additionalData": {"eYlBTBEYoWGaX0FQ": {}, "LknE7056xs17pvy2": {}, "kNIEQIY4whQ968MP": {}}, "additionalKey": "QyNwVwMicx0ByfNa", "statCode": "DQRiuQ8zasIBPT4G", "updateStrategy": "OVERRIDE", "userId": "VLcaGlrT71HIclE5", "value": 0.937799277233264}, {"additionalData": {"OXVlDThlRvazfASY": {}, "elLDN0hxlaVgbEND": {}, "jxZY45LzLfDbKY9J": {}}, "additionalKey": "cfiLmvPMpGOoURSZ", "statCode": "Kz2dFjQ08xZTIRG6", "updateStrategy": "INCREMENT", "userId": "x9Ke4CDtOqftJsoW", "value": 0.3346370861743748}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'OAEVtgorzutKelfl' \
    --statCode 'n9r8zN65rkBF5uEP' \
    --userIds '["pYdtC14oXQuDsqer", "o3jhJgwe71kXM6DR", "DRo0i7zqNsgCMcRR"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '8GPXZPEjzy8igQaz' \
    --additionalKey 'X7a6khzYM1fJ7nG1' \
    --statCodes '["73gV4CNN23I7TWZZ", "TqvVcVJjEpix1HVr", "WHSLBS0TNrFCSefH"]' \
    --tags '["cd2Y8qpiPq54oyFn", "vzCdPIswAbOtXIOZ", "qxFVyqmHK75G7QHX"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'Rb19SmRcw34LcTOP' \
    --additionalKey 'dENX5iCGkytOZouv' \
    --body '[{"additionalData": {"AISwaxIabWg35CUF": {}, "aq4cnY0M18kCP3zj": {}, "Zwt4TliewV1p2sy2": {}}, "statCode": "qmXT9tbFRna7FYeB", "updateStrategy": "INCREMENT", "value": 0.0823359717169434}, {"additionalData": {"3pSaDVbdsKXD8TfB": {}, "ruhWw8irybHeB48p": {}, "QroG5K33y69IZEKW": {}}, "statCode": "cAxCBPs6sOoeP6r6", "updateStrategy": "OVERRIDE", "value": 0.2001260340540708}, {"additionalData": {"cWF5azop3YUmjY2Q": {}, "SI1tuH7Z5ZVziAX4": {}, "pf5acffmfhfb2AjK": {}}, "statCode": "Nh5axqV1Zb3Ktkmk", "updateStrategy": "MIN", "value": 0.8485118207203389}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'mgCxxb3GGYu8BCpp' \
    --additionalKey '66YLp9HKlb0JoKQj' \
    --body '[{"additionalData": {"xY55tgloGKVUbSzd": {}, "C5i2CFoa8Vq1MGr9": {}, "ADBInMc9IIzvAX1y": {}}, "statCode": "tHdvnbHJiPnz8jkV"}, {"additionalData": {"Ii26219zRcmiVHNX": {}, "EGVU4WEnag8YeLQJ": {}, "uRSSGV6X3qPMamP9": {}}, "statCode": "tY1EFZ4RKrvcYYPF"}, {"additionalData": {"Th8s6lbGaf2lg4Uf": {}, "nFl4QTdbdvkcGKHM": {}, "yObFH7tStNwLZI08": {}}, "statCode": "cCIVXtFNxnyPafzj"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'bJGSWe3E2ZpNE8tP' \
    --userId 'A4QpjH9pZIyOg3ks' \
    --additionalKey 'vpYKQylpRO9yz1xK' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'nzPuhslb8xAm6lxh' \
    --userId 'oWQ1MIlF1A7HWov5' \
    --additionalKey 'dGcewNrEWx8l4zBz' \
    --body '{"additionalData": {"M8faZkrCZPooHKsG": {}, "uCGrbsGLQZ3HhMp0": {}, "nxknQAq6kY1CAmEq": {}}, "updateStrategy": "OVERRIDE", "value": 0.11893312933652311}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"h2FBH0wm2xEhDVhk": {}, "hhu3rm1qFxsPKZAb": {}, "o3ZFMoKZuyODMjOA": {}}, "additionalKey": "qb9ue9d1v81TC6NI", "statCode": "uLC3emRvJOSRQQMZ", "updateStrategy": "MIN", "userId": "emDWpIqwuliIyBIh", "value": 0.1989167287297634}, {"additionalData": {"PCu20xewDVKyBX69": {}, "wEedhIi3xKukNWrf": {}, "RZKcuRplnpXwLsFG": {}}, "additionalKey": "EB3DovfyWo6kza0r", "statCode": "Zn7xP49cvgmyTaI3", "updateStrategy": "INCREMENT", "userId": "SeuSKhyfMEbcDEX9", "value": 0.6578499012613445}, {"additionalData": {"cfJE7BE4TNtu5ZVn": {}, "8PqOlhNrNYJmb5dO": {}, "xrz7Rnbsu6eUfR6Z": {}}, "additionalKey": "mGhOVpqmyGO4EMUS", "statCode": "xr7kswtYrOfJ5pYh", "updateStrategy": "MAX", "userId": "vGJDU2z4lkEsiRQy", "value": 0.8547796664635536}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'gtkzDJchdIA4likC' \
    --additionalKey 'N0g7jPTee7M7QfoK' \
    --statCodes '["mfYLXYf7ocIl1wPJ", "tYRZbvM6zAxRLXWS", "3g2ylPgETQ9jERIX"]' \
    --tags '["UW2be43I5zc2vOBR", "kbGLNFefOnsBKAvE", "qcyT3PFcmlgWoek1"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'H5Dr9t8pOCu7RxNU' \
    --additionalKey '2OFXpLiPywyPNEBs' \
    --body '[{"additionalData": {"7NrwPBFQyyz13l3o": {}, "wEIA2F6OUUGkoGMt": {}, "vdXDvwhdqKXWUh5E": {}}, "statCode": "TRJR8hJxSTiUiNtG", "updateStrategy": "MAX", "value": 0.94748855594285}, {"additionalData": {"QeLsBVNZVKswcc3W": {}, "Jo50WhTkgrLHyRKD": {}, "ogwNydepvDTRyAzN": {}}, "statCode": "kx38BgvYQfb7kTRb", "updateStrategy": "MAX", "value": 0.4525767277051026}, {"additionalData": {"CWeg1iByOmLjU8w4": {}, "Fa7QBRsaDD3pOF7M": {}, "PXrYqA3BTsSVrCpl": {}}, "statCode": "cp7hftIyoBBZxQEK", "updateStrategy": "INCREMENT", "value": 0.2985959137828702}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ViGMzB8ZRQzlpvD8' \
    --userId 'sSgxUrkXLxnLcz5I' \
    --additionalKey 'klmV6DL6kksCKIKK' \
    --body '{"additionalData": {"yvKSrH8Y9zZpEHgh": {}, "s3qF0HsaTPCPFgaN": {}, "BjdUTCqhbvbTNC6b": {}}, "updateStrategy": "OVERRIDE", "value": 0.6787851537673082}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE