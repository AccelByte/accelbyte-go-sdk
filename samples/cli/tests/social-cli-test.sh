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
    --userId 'LWVpUb6yH2CM5zpg' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId '6QgHNTeEep7csbMg' \
    --userId 'Iu3FZaHzlzmMO3gh' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["ZZIXdr8mXJrH4Vcx", "Lzzp6QLX5KyWRwcg", "6Pq5jjefXzjCh1IC"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '5R2nuJQkQGDIYTdP' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'wJl7gpj7eq5WQ0MC' \
    --body '{"achievements": ["XcbiEen5aFRMO97a", "nRIPqxniHJdbrdGp", "tDBU62Kq8mDLiMfm"], "attributes": {"Tp4pUrQAzrQJeEMK": "MeetJ01wpJo00ESg", "vQi5o2GV08Tt0G9F": "ao38uusBJxZkAamR", "NNFJb6UT42KQgIHC": "4Xuf2BHzrk8TeF11"}, "avatarUrl": "H5yqGhdEhpPEfqCk", "inventories": ["MiOXOIefoYrOr7Fw", "8Oqix9abGJrBYxF0", "YhVepuaxV0A8OZxN"], "label": "M4ypmSetoWQ1jdbP", "profileName": "Jd7xQEPr7tGlTUoz", "statistics": ["w5Z84lP8tZEc291w", "tLnFghawVGz7JEwZ", "xhKeVJy3QGAH7L8N"], "tags": ["evCWfWjZi1faQWEy", "zW3ShY1cj6WETLD1", "72DRhTPYdZY4hlXu"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'zQH0S3GDSlqpB3YN' \
    --userId 'X80bgGaHgh6Ab08m' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'WUqts2Llq0m8YmP2' \
    --userId 'VV7hx6VOLTFa3Inz' \
    --body '{"achievements": ["fkZbvxbKZLoHJeya", "rci98pjsdEIhww6v", "9qwN0rmrPRootZtl"], "attributes": {"yzqwDxY7i2wMnueZ": "mdaHn2TsUzh4LKAJ", "3E1n3nnHVvmi86lP": "n2Oz0e1DhorOptgh", "jy1JxWEcmLSPsva4": "BJcTL9KCbqGLVoMw"}, "avatarUrl": "PInND02aTZSocpM7", "inventories": ["fd1omKH0Ai2DO29v", "pkJ6yZCaowYSh3DF", "199lmzDfw6YqIZjt"], "label": "QWwfF8NcEZJTAH7H", "profileName": "aPB7eU67cpkxwcqE", "statistics": ["XTsTlWQMrjncYPVN", "78RSedqllpx7M9cc", "yPvSyZ3rwDm5cPxk"], "tags": ["HylYNSHRFlR5w26q", "6uNBhhiM1o7yOnTk", "SBh3hEReyIMWe43F"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'uK68WXeEjdkG89x3' \
    --userId 'bMKW8Haf4cx2ZYF2' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '9QjcB9yw2UY9oxH4' \
    --namespace $AB_NAMESPACE \
    --profileId 'YJbms0onDqtAT5a1' \
    --userId '5BXHlaAuzSRFJd9B' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '8cupP4pFh6Ts6Udy' \
    --namespace $AB_NAMESPACE \
    --profileId 'GeoEdwNkneFqwiAu' \
    --userId '0qCRFXgKeEhPkBc0' \
    --body '{"name": "gHK1ZsKb3cPclNlS", "value": "5fyAMijfNvhtTJiD"}' \
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
    --limit '68' \
    --offset '35' \
    --statCodes 'jKDTRl2GRoMoc3Lm' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'SL031m4ATRkNrW86' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '72' \
    --name 'PzmlInbXd3rfCR2K' \
    --offset '42' \
    --sortBy '1RhKbVgkKdVYU38N' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "TfjizPLmBNR9ILb1", "end": "1982-07-30T00:00:00Z", "name": "9aPMPFKMI952TEFx", "resetDate": 50, "resetDay": 37, "resetMonth": 17, "resetTime": "kswdWIjKnFmSFP3H", "seasonPeriod": 37, "start": "1986-08-21T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["skzSXna5LSKutkAs", "2mOH3zmQkQq8UZv2", "HpCm8ktHCfurgKkb"]}' \
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
    --cycleId 'ZQv40XbeU16qq37D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'RHH6gnGsdsVRU1eq' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "JSscZbQdhbjW2pB7", "end": "1976-03-31T00:00:00Z", "name": "ixgIegSQ2zeAwJxb", "resetDate": 75, "resetDay": 28, "resetMonth": 73, "resetTime": "dNUUdjW0DyYgpPq7", "seasonPeriod": 63, "start": "1992-01-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'DpYEVzTCoLHb4XCz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'VHTx4uMylwe82DHa' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["7iw4pnjgFZD4Ks7E", "f8tTvBW2KgXimUtK", "O3CPmKS6j6p0ZqLq"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'pY134lpYOB1Gxken' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'SE4YrN8wGLCKFbS1' \
    --userIds 'i9uj8i34R3NqeQMd' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8569397395197345, "statCode": "zvVduBMghbNHJSv5", "userId": "MoMjQZpgsF1mniyx"}, {"inc": 0.5497832482013424, "statCode": "Wg97qIIW80ukEAj7", "userId": "WSjiNrEjW1DfCzld"}, {"inc": 0.13596925747679667, "statCode": "K3DHT4o4Ov0dyXTd", "userId": "UerkIIHjBQNCbyl7"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.164604888056596, "statCode": "7hvZjj7HbCZuNJuw", "userId": "VDU4bobIDRWqh6U6"}, {"inc": 0.7758926256416255, "statCode": "YoO0iYFNnTDThQn8", "userId": "HLMhJHviMq1ZW3pc"}, {"inc": 0.6931823598378118, "statCode": "UOdljxlfhtxHA91c", "userId": "90SGP5qNMvGrPZlj"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '0XgVaVPBvsqvsuB3' \
    --userIds '["w22yX3NcuVdcSZI3", "Da1XtEsZJm0vcofP", "a1s8mne73rba7QuE"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "9qWteGGt4LwqwDuk", "userId": "84SbQqduIeW18eF6"}, {"statCode": "a8pPHbX7vjvDYNRC", "userId": "kob0M5BO7bNS7TFP"}, {"statCode": "LUeKFe6x1AuPfkzB", "userId": "6DoI9CnHY3CnXPuI"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'O2tbQwYEbvtknbha' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '42' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["AZqEWe4mCVmkVTty", "6s4PIGxitJSIST7G", "mVWq4fAtkcF909aF"], "defaultValue": 0.5544035633699382, "description": "1HUjFJyzIB5RLhq9", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.10800384226890625, "minimum": 0.5256799756555167, "name": "vcpNvHoGOPu0UK4v", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "Dlp1H1Xm2NcPv4oP", "tags": ["9P2YyWPgk0rsoDZk", "9VUZ7NlxnQTx6fzB", "JOeD3x79xL5TL50F"]}' \
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
    --limit '61' \
    --offset '29' \
    --keyword 'OiWjdhMsx3h3Bpk2' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'gSOq6BfaNm911N6d' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'CUdFjYK9ozjpDxea' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'iDGni04Hd8dmjkhS' \
    --body '{"cycleIds": ["KM01Cgb0S2xrDBOY", "5ziYpXzFPA4W8KCj", "vOhWd9gArAqObFK8"], "defaultValue": 0.6579699361017072, "description": "SxeYKOBnpYOW7lSy", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "gSNzsdGrJBGhSppB", "tags": ["5KwS2xZZIQXF9sei", "yokz9tdWG6vNbQSV", "UFOe95NoFaZqTAok"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'XLd9VAEwyqdWAlJ6' \
    --limit '38' \
    --offset '66' \
    --sortBy 'oQTjnGrSU367vdIq' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '5RvhD2kyAVzyqEVN' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '8ecmOARwVm0oVZQj' \
    --namespace $AB_NAMESPACE \
    --userId 'bwYet2Ux50fXqqef' \
    --isPublic 'false' \
    --limit '23' \
    --offset '72' \
    --sortBy 'fDFjdoTBjpa7COCk' \
    --statCodes '0VDdUERXJBQRNWWg' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'oNzvjr7YUj3EQGVm' \
    --isPublic 'true' \
    --limit '82' \
    --offset '25' \
    --sortBy 'e8YJ402DzjOHZqqK' \
    --statCodes 'ngxMc0VwGCFFSJpp' \
    --tags '9tba4LRD3G9tj72J' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'f25tSdo6dtx8hG5r' \
    --body '[{"statCode": "YBElOyLy9Id8C6Ax"}, {"statCode": "pS5jtMcRkRAj7Cwy"}, {"statCode": "YqdzEe1cSLim6Yvx"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'yp07NhCW1aBSvqBA' \
    --body '[{"inc": 0.8000917777160049, "statCode": "xVETbUVf78R3X2yJ"}, {"inc": 0.09233321499304004, "statCode": "B0l5hBAgVDRjJ0rH"}, {"inc": 0.18691554826912393, "statCode": "0B4SoXpWdGDmXxSx"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '2fPhaoMLNbRrrpDH' \
    --body '[{"inc": 0.5103224534721204, "statCode": "rlIg7CysLdQNxjy4"}, {"inc": 0.724966442741055, "statCode": "qYAkXRpkFb5ixiKI"}, {"inc": 0.731443371233892, "statCode": "70OuSTgM8v9H6Rx1"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'unQPDNeC5AMKu5hx' \
    --body '[{"statCode": "KTvTP2Cbj4rPj8tb"}, {"statCode": "P67B59hvbQmsRRml"}, {"statCode": "mLXsl2x614rYqcMH"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'lcCGAn0sYCIjlhxF' \
    --userId 'KUFl5xAa8en4aT8V' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'LZdulZMpu9368geF' \
    --userId 'chxCPlAInR87kr84' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'jngMY1MzIJynY1qn' \
    --userId '0gR8HBjCDC9BHtfv' \
    --body '{"inc": 0.8648111783067435}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'RgJ2YrWQKDgJUYdg' \
    --userId 'NNRd6wLP1wXGJ2Bv' \
    --additionalKey 'UdgXRafjSCjHmZFb' \
    --body '{"additionalData": {"iKSUTbqTOOduO8sa": {}, "vCxE2awczGjcY3tk": {}, "8TCXeQx7wfiwfRgk": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '72' \
    --statCodes '7fUmwDYM1UKlaN5b' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Y4wdNFItYVRplb2Z' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '75' \
    --name 'SY7bcoOidz5aOYdU' \
    --offset '36' \
    --sortBy 'fuKmBTOzjtyOg8Pj' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["otGoM6MUW7sNNv67", "eMzuEu91I5zXaPCK", "VnH3xa0P3vTA2NBh"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'Z4HZxJCo8Gcz9qXE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ESlFBQ6fX5QbzYEt' \
    --userIds 'XyEguzFQVdxCK0Uu' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9426704322755066, "statCode": "5GA516SYnWe5hWm8", "userId": "EqyIXkKHdvU0oZsZ"}, {"inc": 0.5960548017161709, "statCode": "bG9QwyNyBhlz2OON", "userId": "rzdBloIUAeNtRm8E"}, {"inc": 0.9213342744313539, "statCode": "9uxbIFT1nxyQ7bAH", "userId": "glRHvC7jIexzwDEA"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5351848001288266, "statCode": "d2SIEftMi6IA1Thp", "userId": "7JPIWCeTsXrBUUf2"}, {"inc": 0.065012033825109, "statCode": "CnV1NX2KZ2FKEf3e", "userId": "mQDJwSLfzhyZEBHS"}, {"inc": 0.7483666625411207, "statCode": "OqwGRhrhJ9chBlll", "userId": "CbvuH7BJde0HsXIO"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "o1APEa7v4QaB3I4I", "userId": "KlSWtYGnmhtqdcjC"}, {"statCode": "1MTBFXYtibY2P1dM", "userId": "nlp0RBgw0mjPp04T"}, {"statCode": "3wDGsmlmJnz5Gd76", "userId": "P1c8tECiT2YJWuK7"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["uJZPtDrUP8r43FWW", "JNIRJAlhQXs8qz0I", "2wSGYi6PBLcLri5k"], "defaultValue": 0.4875068862419839, "description": "5jJkbtfuWFIJUvF0", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.9632117016268469, "minimum": 0.366443711781559, "name": "C7ViyobQvAR76kcK", "setAsGlobal": false, "setBy": "SERVER", "statCode": "A5BIiIEgPLyyDhTX", "tags": ["xn0mABqD84LmT0h9", "qhWyyiul9BxKnaR1", "7hojpxlidGaE3rlH"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'r6UTEdjmCQmRhqdb' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '66' \
    --sortBy '3UPLUC7AIQrYy92Z' \
    --statCodes '["z5uqBc7pKosRnzMD", "EH1pRt5goAmKiapI", "wkQnQF6KuxT5WM5q"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '54' \
    --sortBy 'id8xUVK7OQrbopC4' \
    --statCodes '["EMSBh0tlGxh5AgJW", "8oPTfiDjYUcIkCVm", "o13OhkwH5BM6Wvl0"]' \
    --tags '["QxWQclIGPXFZs6Hn", "3rGUaKyPG3QunRIe", "fI5g96LxBw3gYDVs"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'wmLYGP85Krgtb4DL' \
    --statCodes '["UwywJEO9dVovyOIB", "se1qOvwpZkb30qqI", "VJJ3SOX8gVySmSvf"]' \
    --tags '["KfgFsjucIqOKu4nF", "4Yko1YuHDK6Jav5N", "k6UCHzc0uZcWPKVV"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'DCypWhksPSVFNb9U' \
    --namespace $AB_NAMESPACE \
    --userId 'Kovvh7a3cknz7t83' \
    --limit '38' \
    --offset '28' \
    --sortBy 'o8W1vr4PfsGg9qTU' \
    --statCodes 'QoUvAfVEsUYjYbFM' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'usmHcDF7cZTaSiPe' \
    --limit '93' \
    --offset '2' \
    --sortBy 'gNiDGqgoRiLpU0tH' \
    --statCodes 'rQSlbKTdn7mzzjWY' \
    --tags 'hAkXm6AG5Z7TmSSR' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'nfzLi6cI4iKG5isZ' \
    --body '[{"statCode": "754iXIjBK9z7fGOt"}, {"statCode": "LpLt8TnVlBGWjjku"}, {"statCode": "Y6EHJYfmuHckWpQO"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'OhhRVCVdx4isY7B0' \
    --additionalKey 'qOhoArFKjG0xDhmS' \
    --statCodes '["YopSD1vhD3shRawY", "GGnuDlJdxyM9rAyX", "W2iLlDLpEmQSfOAV"]' \
    --tags '["daIZfJwSDD0hkfhb", "6Bt2zKca3B1F8uof", "PC3L0rzpTfMjmsNN"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'RNLnYc6H2rcZ7uGW' \
    --body '[{"inc": 0.9046522808209696, "statCode": "rbGCWaFzbzPHazuV"}, {"inc": 0.19234611750197472, "statCode": "J1VKS4m1zjH8goIN"}, {"inc": 0.38723021740358765, "statCode": "4FQdXvdKLWirrm6S"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'EwRYBVhsSzZohFGl' \
    --body '[{"inc": 0.9690659039847296, "statCode": "XRLe6TNgaTyDgB4F"}, {"inc": 0.7368658207453311, "statCode": "acESbZiToOUdpjyG"}, {"inc": 0.4059094385607822, "statCode": "FpZOakRzRySzr58X"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'd2s5pdy6sC3IIZpg' \
    --body '[{"statCode": "XU7WTbisQj0qCr3q"}, {"statCode": "hzEZh26b4x63pK3Y"}, {"statCode": "zodTPdlJv9UmLxPC"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '7g7cR57Tr4mRRlJX' \
    --userId '2epoD5drxhuHJZlE' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'GNTPLWLmcaUhZTK5' \
    --userId 'u6bLxEeDVBBj8jow' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'HzZGROW7D2jTKvqY' \
    --userId 'A24Ku1SaUxoLSSDz' \
    --body '{"inc": 0.8605777244847582}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'YXuJFiAbV21Q3fvv' \
    --userId 'E3ZrX6fFaCgZLhC9' \
    --body '{"inc": 0.019668950617864}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '1r7kHYJa98p6tXqT' \
    --userId 'QcLHfAQEWo6OOhHC' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"KJmzjU7W96UTHNGg": {}, "iu6LdmWQ1WkNaWF9": {}, "GGmanSOdtQDRTARG": {}}, "additionalKey": "2XGOv3BKWwGenHZd", "statCode": "eMSsxWkd4N0bVMOz", "updateStrategy": "MAX", "userId": "ThQhFiymEWiwZFoN", "value": 0.2511611394003339}, {"additionalData": {"AjrtubAFvWCIkuPE": {}, "edmLy4h9YhAHOvZx": {}, "s7gwqHppiBbiviOZ": {}}, "additionalKey": "wEVPFfjlPwWf0LTe", "statCode": "olf2NXdbYjBX60iO", "updateStrategy": "INCREMENT", "userId": "Qswu7TSdbFHMrgod", "value": 0.02045138447603756}, {"additionalData": {"q2AgeSc7Dq9uVGWj": {}, "r0Jw55uHXOOzTlBP": {}, "yRg5g2chKKN3r7vG": {}}, "additionalKey": "vq3kUJ7dqHwOnwya", "statCode": "S5erVEGbkKOqKf7i", "updateStrategy": "INCREMENT", "userId": "73Ev7fDPFJQ7ejhQ", "value": 0.15497023397595044}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '0QU5nMWVstQ2ACFN' \
    --statCode 'ybglpgo4qyWRVa0u' \
    --userIds '["1nUjBtj3O4cdrmju", "npneNE5bV7jQsSUj", "Gesr99jtADjZeQVu"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'OIJWH8zAQ3r5VP7F' \
    --additionalKey '9nGOzdqOP1BzmKRU' \
    --statCodes '["KeaUAkNEKrF32zzl", "eRtOHGq7TFoIsFsl", "Sq5zIr1vVQhS7GQY"]' \
    --tags '["l7aaAUWPRnlgG8IV", "MwP4cIkBO0iWnxPQ", "4NtPQHyV09QCIkCV"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'LFBJaFuQZlqnhUKl' \
    --additionalKey '8zK3ForDnJr6CVsn' \
    --body '[{"additionalData": {"x7LrIvJ5DDEmclDz": {}, "nguGJwySnUXH8UTV": {}, "wc6l9SIExI7hbLeQ": {}}, "statCode": "7oWHtXjuqSQtYnDQ", "updateStrategy": "MIN", "value": 0.10810050095842161}, {"additionalData": {"cTihEIMj9IOeaLet": {}, "4Z1Syy8DAwTlPqbu": {}, "f7d9PdQBkoi9oDtI": {}}, "statCode": "aBAn7uJ6lIz3Q4ru", "updateStrategy": "MAX", "value": 0.953314421312341}, {"additionalData": {"aQWGCbcUWr9cZC8X": {}, "rzJNzcL0SYIhOkPK": {}, "FizB1dzhZPvcduQJ": {}}, "statCode": "PkQLTm0tRp64BET0", "updateStrategy": "MAX", "value": 0.11510730095070365}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'CU1ndG8hgotfQ5wc' \
    --additionalKey 'ZFvprty1pCoU0YzK' \
    --body '[{"additionalData": {"0Hu7I9CofRRpTGMM": {}, "zmA3AuCrKZ3SRKTg": {}, "zyCPSnenuEDCTsOG": {}}, "statCode": "Q7SsLzEbGf9viOva"}, {"additionalData": {"xIg7OOiQz6gQeJlQ": {}, "luuD7znMs8JM4DGI": {}, "wpQwdtgQjg6z2Osq": {}}, "statCode": "Ie0e9OznvDRzJj9P"}, {"additionalData": {"xjfMoq3abuOYnxNd": {}, "npbp5K7d0A6YxlTk": {}, "TmjaAE472zLn6BAn": {}}, "statCode": "fZUMRnXHStbH39Dv"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'rIRsKc3rv5NroMj4' \
    --userId 'izNAC25fMfgbPf5Y' \
    --additionalKey 'EROIWB01ysByaU1u' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'yHQbfNXbffDtqfCk' \
    --userId 'xJccPM4Hfh7gaGl3' \
    --additionalKey '8rf9kaoaFx9W2YAO' \
    --body '{"additionalData": {"6OrZXFZUFEyLNUnb": {}, "RjmxHAJ0Hdfgs9Jx": {}, "LGkAnHtwob32FKae": {}}, "updateStrategy": "MIN", "value": 0.3657621950897957}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"8UADGbVn2eZneTLT": {}, "dERIXdaBqxiQM04O": {}, "3WQrtNpH5EQp6Si7": {}}, "additionalKey": "ttpLicDPJmBQbfFi", "statCode": "LkEnTqMV2eFe46bi", "updateStrategy": "MAX", "userId": "goh0w3XbtmCQevnG", "value": 0.3913244857140161}, {"additionalData": {"9g1Awl6rCLL5t1XP": {}, "95C80MM2E2dM9OIE": {}, "mAG8VckNbnJC6AlD": {}}, "additionalKey": "qrWvVNhWLzje8v6q", "statCode": "zDipAlyTk29Tg7rh", "updateStrategy": "MIN", "userId": "61MeD3sB7O08B1d4", "value": 0.58489078948571}, {"additionalData": {"ijbjWcBDeMRst8f5": {}, "HQoRAuoGG0B78SCN": {}, "A1jMocU5RR0bLzNP": {}}, "additionalKey": "Uhq9dRA6mKTepNsQ", "statCode": "nSxQHSNzvHgPjOad", "updateStrategy": "MIN", "userId": "VxKKZHGQCpmWuKlJ", "value": 0.45454126307335574}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'dno7U8tOTaraA7W1' \
    --additionalKey 'sBshiBvM6viSLn8a' \
    --statCodes '["sucN8rqEb23wBl1Q", "Ou8PYnPXCn84N4Jo", "7Z9xuEzRTtHA5HP1"]' \
    --tags '["bbFiirKOxjE93amL", "BJ5BFLV90uIluxKg", "bzsOXLY26VJgUNu8"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'w7Gn1NibO6YUCgRa' \
    --additionalKey 'BTaVJ21qJYEQr3Sb' \
    --body '[{"additionalData": {"CPb4VeChXx5AyK07": {}, "cXoeMcLb2ZDiMkCK": {}, "ssAYlhGbcUmJu6xl": {}}, "statCode": "eeYHaJV1zUdkFPQz", "updateStrategy": "OVERRIDE", "value": 0.3251453110900583}, {"additionalData": {"DuOSLO2V6QgOiFXn": {}, "bzVfe2Qg6Aeey3sG": {}, "IHLRoATzFOorLP30": {}}, "statCode": "M3aMadtrUQtsB55h", "updateStrategy": "INCREMENT", "value": 0.8610955669705131}, {"additionalData": {"kg5MyROyaiJGq6Jr": {}, "MB1bbtQCIdvJ8T1J": {}, "Pqa45QGHBPLb7VjW": {}}, "statCode": "zu7LrMvixAIUhwQ6", "updateStrategy": "OVERRIDE", "value": 0.14791361639196832}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'WC2ZFuspcvQo1CT7' \
    --userId 'GPFibIcBBPD9sgqS' \
    --additionalKey 'HTXKWJJo1wXeeNLO' \
    --body '{"additionalData": {"6zOMRrqQGuzDVCtR": {}, "JDP0SJ8UA2OWe1Ok": {}, "qiYuyJkRNV1bx9St": {}}, "updateStrategy": "INCREMENT", "value": 0.025241845268723195}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE