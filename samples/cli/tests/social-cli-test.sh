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
    --userId 'jTBK2TQqSTwWRFN9' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'OQZYY35soH9tbQZp' \
    --userId 'm6Zkja4I7oaPXliW' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["N03RuJic0NadR2MK", "9oB6iR2nlck64eUa", "I0r44R1dlRUuST5Y"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'ePGGDTkNsavvNp4n' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'gyXDB56Sc7J9sWXx' \
    --body '{"achievements": ["0VvoJuUda6vP8Eid", "5wBjPKogiArqoDI0", "xtCNI428qifuRamf"], "attributes": {"DMYa6NnRggVya8Mb": "LCA0NK3ZvsYqL28G", "RLdB4ONUTsPgu2Ha": "SpoulVrFKA6aBlj4", "gVXOI0x86MnExAM7": "bPGJG5kDoMoHHqos"}, "avatarUrl": "KgJdCTgQuESYJtwu", "inventories": ["L5Q7munhy7eZu6Li", "wu24WeCvyziqLvwl", "5KQQnjwgdcWL9acX"], "label": "3SawRU4OqZ7rtXOa", "profileName": "vHVwOXnoGNU7jPx5", "statistics": ["7eCqF45gELQNwYpI", "HfE7qEGC6kaBvKho", "BBgOR3jiy90yTMZA"], "tags": ["NTeAttmOX8YcAbDQ", "8rUexiisvE9Kv71a", "w1q4gjjaF5VJ7w9u"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'yQmVP79CXbSFBeyd' \
    --userId 'FCnj0TrKTCGgiRFT' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'k2Ne8ntvXiSr82fi' \
    --userId 'dkfbgtGGCccrAWUz' \
    --body '{"achievements": ["0Rx3S7B1UEPXVWgV", "8RhqzX6jQEgHUJcc", "6EBwBY6mdtaLN22x"], "attributes": {"JG1kFdk8YH1cDOlD": "HuNzRZUPYd0Q8F2r", "fOdk1pMuuYUnCUFM": "Vfw0er3FSj4Y2ks1", "cGHSSJQxahZG7kYj": "iKMb9Ra7L0jkoUGb"}, "avatarUrl": "ERrsXNnAwafOXVI7", "inventories": ["mhCv5azH3tuhobgd", "qfz9ChrAJRZWKZFz", "9mRSVwcIPUwRwRHU"], "label": "1mkePpO8ZtlnvHxq", "profileName": "RFiXBZ2R4xUT8Jyr", "statistics": ["KDefQzCKFnjghR4d", "BctUzObH45NjfLf1", "DPkRRUx2eUUe735S"], "tags": ["WweMsaYC6KpCtZ7h", "B7okLRlKLaFMWEHU", "Dl2M08Jo865RMxzs"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'oknlDaPopgXIukra' \
    --userId 'eBkRxWpt0b7WZ4IR' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'qSPrfi8WG9EyrWP7' \
    --namespace $AB_NAMESPACE \
    --profileId 'rzZcQaMiHEH1kILl' \
    --userId 'Ieb9RFTGz77qzapf' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'lb25XAFBJqHd0nNe' \
    --namespace $AB_NAMESPACE \
    --profileId '1wV8xekQLdndY0Kj' \
    --userId 'Y9ROoZKYFIjgPsqw' \
    --body '{"name": "pYE1RJyXBEeL4vPH", "value": "zZxlfENOxpOl4FQ2"}' \
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
    --limit '14' \
    --offset '80' \
    --statCodes 'QzKbIaAHtn16NszG' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'rXkleNkr7Lv47jjt' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '90' \
    --name 'VbCLeAluT7vvjt0c' \
    --offset '51' \
    --sortBy 'YH41bhdqEpmWU02t' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "7bRzGSvtv67QaFip", "end": "1972-03-30T00:00:00Z", "name": "0SRgj8qcaLlVOOVf", "resetDate": 26, "resetDay": 3, "resetMonth": 73, "resetTime": "wZdo51bmtJKtNKKA", "seasonPeriod": 74, "start": "1988-10-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["eNM3C4asLrTZu7Nd", "kKyPiVT0woK4btf2", "AXdzlJ0JJYIGABxy"]}' \
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
    --cycleId 'aYG2lTRodSszVOUJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'Q1ZB8T4h7YQqeM9D' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "dxmUkBjdDEAUnjH1", "end": "1976-10-26T00:00:00Z", "name": "x77Jpnm65WPNOTwN", "resetDate": 83, "resetDay": 55, "resetMonth": 40, "resetTime": "7E81a5ym2ufbzfW8", "seasonPeriod": 88, "start": "1988-04-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '1PRHZPQmbj0R77OS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'VdlEjMbNDvCg9Zkd' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["zKhxj35bcU97AUqz", "Ovwncp2ZuIf8q8Re", "XIkmcCoIKHBdfdD0"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'Sh49wNoz6DA3221h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'xDHJqaaUTjEQkoIs' \
    --userIds 'D4L26ZSBDScTAIRZ' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.38697348600812553, "statCode": "dIipfkZtnc3ql67j", "userId": "CIGdsKJe8Y98E9ib"}, {"inc": 0.7344781180232038, "statCode": "YXf5O1ajrt4oUZxO", "userId": "1C0ZctLo5nWhqhOn"}, {"inc": 0.4781203590346016, "statCode": "cwfFT9fDRqOtYKtC", "userId": "PvVE4g4PeirA0cof"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.1542657143107683, "statCode": "zEPY56fr03y8jzzb", "userId": "i4Pg2yvHHvnWHNup"}, {"inc": 0.660584639644051, "statCode": "PaFNQMMBaZ1sPdDN", "userId": "4igMXlrUnf0qwao5"}, {"inc": 0.8702038368314413, "statCode": "XEeUDELkQv2p1iDa", "userId": "mZ78qHvLR4iWa63t"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Ua5OPsH7zgM7XgB4' \
    --userIds '["kjAkRN1WehfFPQoB", "vy6lAFURrp2yh02n", "e1rTKawNo5b5l8S4"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Oin5f02EkWqaluap", "userId": "bnaRTEm4mKjeWjmR"}, {"statCode": "vBuiRSxC6VNxYzMF", "userId": "IZvZ3wp8siIwfWNx"}, {"statCode": "X3mKbmnGvHeVgswz", "userId": "A6MCXKVU303Gn0SV"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '0MN890RAwNFEscQa' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '96' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["3dvNQaNPrbENk96Q", "M2hZO0yl4o668Lj3", "GP5TRRBNBmNzDXrT"], "defaultValue": 0.8772550325673216, "description": "M4I0HYczH0kJ46bM", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.08641748892687062, "minimum": 0.07646695975100093, "name": "ZLH9mPZGL5OesVNc", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "RVzudPY5zkOEvgdI", "tags": ["FVeMvloG7kcuXkpC", "WkLpOVfRUXycRwwY", "a6nmg45I600AQkGX"]}' \
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
    --limit '48' \
    --offset '11' \
    --keyword '3098YAXTnXdbDKVH' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'dNM9lKQuvxmraMSI' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'zSppiEov1o2TnGum' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ksMajosgQY90s7mD' \
    --body '{"cycleIds": ["pZ8SziLWkKCzwkZX", "cHW6pbSlMWpot88r", "WG5d1yOjaM9f9gA4"], "defaultValue": 0.9913597893246906, "description": "RDDX2UQYSZgPFwXD", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "rdx9Dlr5nsVIxOVX", "tags": ["AoBvyYk6SMmJ022B", "XMYQ0GZYY9Nxb843", "sDIXiCLzcyPT2RIS"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ngE1oyXX759S6mJK' \
    --limit '40' \
    --offset '11' \
    --sortBy 'RU6zulsCAn0MuynR' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Rd8hcKV4voWVB6xL' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'TGfTtVYRylgq4LNm' \
    --namespace $AB_NAMESPACE \
    --userId 'Z5gaQKk7kYkprZSq' \
    --isPublic 'false' \
    --limit '51' \
    --offset '41' \
    --sortBy 'kVQkvcF2r2oHLC4n' \
    --statCodes 'S85hFxULgnCWgqJv' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ROJ3dLMS7PmyVrgm' \
    --isPublic 'false' \
    --limit '82' \
    --offset '65' \
    --sortBy 'PoXcXkeNnQfvzJxS' \
    --statCodes '45xmBpa2ENbm3Y7a' \
    --tags 'p1BRJN7hbDQYWixQ' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'oh22ftgNcngTYY8O' \
    --body '[{"statCode": "nnMlJ5hH5DeNtLuI"}, {"statCode": "dvILjqztxmlEgJg5"}, {"statCode": "amVFqeMSESiv4mRL"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'LgfyGVXGV2cjScib' \
    --body '[{"inc": 0.17149053761876376, "statCode": "hRIEgFQkBOKbyAUf"}, {"inc": 0.8136858477644928, "statCode": "hzafhiSyeDqMvjnd"}, {"inc": 0.7037262481554268, "statCode": "cNyKPG9QHxschjct"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'srRsoQObtB7Dy89n' \
    --body '[{"inc": 0.8109098054932187, "statCode": "dl0PqO9NMIfzjDG9"}, {"inc": 0.3397478284293318, "statCode": "NCAi7Jz8iF3ipMCW"}, {"inc": 0.8541966355786607, "statCode": "o2oNqp4uRCXvC5se"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'G9MvEUWdzocaIrDq' \
    --body '[{"statCode": "YnRpZ0beiQyKYR0t"}, {"statCode": "HZzIWe7QvffCbAgZ"}, {"statCode": "6lYf257gYzfXh5wx"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'N9rjFPqWRbznp4iH' \
    --userId 'EG7aqzReFJgcb8Gi' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'fP2hnxLsrh5j9xS2' \
    --userId 'kXEJqgNGgGzuGKeR' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'idv59xf8BixVYHHb' \
    --userId '9WwnFnakqmqzqilD' \
    --body '{"inc": 0.05180033132924522}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '9xiyO2sOC3fHYstI' \
    --userId 'fzkuPbVH2oZ5eDyj' \
    --additionalKey 'm3HsYW9JK8vCVy3K' \
    --body '{"additionalData": {"Kgrpm0LJv9VjgxUF": {}, "1GMr1T3VYMKzALFk": {}, "YHjc98QrQE1aYepL": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '92' \
    --statCodes 'W1ftTPnRFlzWzloc' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'qqdrWh8ZxqgHIPo6' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '56' \
    --name 'dARTZ0EDHuYfw9LB' \
    --offset '4' \
    --sortBy 'norvkqj00BvDSwrF' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["AT6iVgfbm31jHlBy", "teUXBQEIbAOf3499", "GMZkXsgjBiDKciUs"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'tU5w9lyjPtOPTGhZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'AirMgxNoigYfqpjr' \
    --userIds 'WYGQ2XLyLtCyKtJ3' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.07710241997470024, "statCode": "S5dXIuLXw4YGj5VK", "userId": "K7eDSdZpPeRIeAiU"}, {"inc": 0.49858488833267, "statCode": "iwAEeMjVXdaWtuZd", "userId": "Cy3mhEgg0vu0282Q"}, {"inc": 0.059563662704009146, "statCode": "3wtxlEIu1iEhxJRf", "userId": "PZE3TymuhC3IosBV"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2494264026384041, "statCode": "3ePgZUMLzUnHoxy4", "userId": "LRSB7yRNxS9iNZW5"}, {"inc": 0.3049019042693232, "statCode": "7znUWkqESvwLfXw0", "userId": "ndQbEW4nqxex0NcJ"}, {"inc": 0.05173239181662237, "statCode": "rOKvjiiCJ9y8AXXj", "userId": "1XFS23o6964gz01q"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "LeqLcNmZ7Mdu3eJA", "userId": "n7K6x1rZLPwGB130"}, {"statCode": "Rsgr41OJr7CZ380v", "userId": "Bcv9NafPKLyqgNWh"}, {"statCode": "MZj2qx3YyyBmsITl", "userId": "ac0tjfTZ4gbSeylc"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["AVLnuN0raWAQw9WH", "qh4LlgYbfGtTfqHP", "ZG03Bg1pdncKyBX6"], "defaultValue": 0.8124264785492895, "description": "Myj8stmTwBvBqZxv", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.7241372120607186, "minimum": 0.12930771231064175, "name": "ri30mUPSSbWGA1K0", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "xrKoxCt5L1kdNHI9", "tags": ["lHmDh1PJlVSu8KiD", "hDJFeTLtKEGXdK5Q", "XTLXkT5im8OR5bp1"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'T3RG8JVnUHMDQNVb' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '80' \
    --sortBy '31wtHqtteiLGHtHT' \
    --statCodes '["rCmVnbhG8U25jUHL", "QgbNqXex5cMRY1ff", "ZqK61uQWC2RL9CeC"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '60' \
    --sortBy 'zrmc61ZQA1hUoL8E' \
    --statCodes '["Va8OqLmIbCjQszLO", "NABJCsw3HoGhRu9k", "kXZe099Eppll8I3q"]' \
    --tags '["bYQfjgRfuZuSCVdE", "6XHP8k1zjXlAoCJ9", "nAznNVqMVboypmcv"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'FmhCotma8E7m5XNx' \
    --statCodes '["1XKL0DfoEu8mjTuF", "i4KGBpxxBBkPLMez", "LQLfHfPS69oR5dD3"]' \
    --tags '["aGoZYLTtJDLtnK2Z", "x4yZx52F9x0AoWz6", "FNAbO8e3vZieId1z"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'umTIO1MszeD1H3pO' \
    --namespace $AB_NAMESPACE \
    --userId 'Qlxa4imy6MVqd0G4' \
    --limit '63' \
    --offset '26' \
    --sortBy 'oQdVuYHn0onsMFSS' \
    --statCodes 'dEl1m5bUIMdHNiRe' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'pTuM6qshhbVkMATc' \
    --limit '72' \
    --offset '87' \
    --sortBy 'xGiqXyADrhKop4YP' \
    --statCodes 'yLwhZvxHOmkkyK2w' \
    --tags '1py2yQOb1UPkjXtZ' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'hEhMPitD6oCAc16k' \
    --body '[{"statCode": "LFthISTqwEBAzaWs"}, {"statCode": "vFDoQeoDVssAQBya"}, {"statCode": "nqSy8Jy4jTZLdKb7"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'buqnwmnfbW9EfCwU' \
    --additionalKey 'jLOZikTYq9j9jkOo' \
    --statCodes '["AsLWZz13i2kYgts2", "gQQ44UztfLubd2ZN", "ZU6YzwUYmy4Z7CWc"]' \
    --tags '["yPX1WY0IbkUNwgGO", "eWjHv9fjX7rkqG5H", "YOANSELBuZezyFyD"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'oAVnu6SBfBNNs173' \
    --body '[{"inc": 0.9992735351368449, "statCode": "BSAlFyJA6dudU5TA"}, {"inc": 0.6609471671121577, "statCode": "DWkV6RcN6fVpBffz"}, {"inc": 0.6974491548065919, "statCode": "zdZanprR8OCaXKtx"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'sSb5OaP9H9V0eOiu' \
    --body '[{"inc": 0.23621712305031672, "statCode": "auTcCttE7jaOK0GB"}, {"inc": 0.30218544420370963, "statCode": "6E9LRtAs2i5fkg6O"}, {"inc": 0.21610835658436423, "statCode": "H1Bcut1P8pYBe2LP"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'W2wzMcaUTqvE3ZFe' \
    --body '[{"statCode": "ffFdxoAYGITkYZY1"}, {"statCode": "ELW97plRivo5jwmb"}, {"statCode": "bowOPcw6qDAgr4nX"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'SSQ0HLX3zreHdloU' \
    --userId 'ZA3MuW4GQGh7bom0' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'fQTXipk4hZWXpwm4' \
    --userId 'g09whHyQIpI3ErFI' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'RMOtoIgU7aZJEYIh' \
    --userId 'jWJBbmB7gDIwhGc1' \
    --body '{"inc": 0.07225364246411148}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 's8bhEb141lTVziQt' \
    --userId 'Q4fxfdjUmBTHFqpz' \
    --body '{"inc": 0.9325672325322386}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'jO0ddo55vOFIGOtp' \
    --userId '72oVFSk1DDdDSxhW' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"d6C0HPOZhiDaYyJl": {}, "3OJpXSZDCeZ4CmbI": {}, "1V2bXq997HQkhWKt": {}}, "additionalKey": "MKvwaCoPRCNo6com", "statCode": "GtcnIHfxbHvxQa8H", "updateStrategy": "MIN", "userId": "wettGWn4RtYtemfX", "value": 0.9048594179145791}, {"additionalData": {"V9p9QP63HDpz9MBE": {}, "VgoyqbClU4pNdREK": {}, "MrMrocep6qgIim76": {}}, "additionalKey": "tniLqlh2bOW60l1O", "statCode": "AlqUrbmV4HGZ0iyY", "updateStrategy": "MIN", "userId": "Cjfh040ShaxkklEv", "value": 0.16537548881480624}, {"additionalData": {"BruwhioFDkyVirIS": {}, "lJ4kJ4sR3JJtRvWD": {}, "hr3O7tN4pcqmHDGy": {}}, "additionalKey": "APzv1PjlNiyLtGa5", "statCode": "yeSB8ikyHErVAXZP", "updateStrategy": "MIN", "userId": "YVM1rwoTV8zlMBv6", "value": 0.6207834318171818}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'VPBkwuVDWWaNoTfE' \
    --statCode 'ACG3cZwKGYphZAUy' \
    --userIds '["EulSnHPPdwaCAWG1", "exYRd6b0OlvkTKeP", "vM7q6VfQwpPSh0Uk"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Z56O5y1Q5pSPNx9n' \
    --additionalKey 'APvmw0mfrmDwPkeI' \
    --statCodes '["pwxojLVRtNf1MAk4", "RjBu3Of38bpYXIkH", "BdQmEv2iIgxGcVeR"]' \
    --tags '["AB7iBqbiR6dh0XHe", "OvUjGurllpNOIWPY", "EYY3xEcdzVSdEcOJ"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'zbcuntzANctEpXW0' \
    --additionalKey 'kaNBPczKHQLuzcrT' \
    --body '[{"additionalData": {"TJJTJFxEcdO7teWg": {}, "JeZTk81pfRiPIAsk": {}, "hEVzz94jJlCrZYh6": {}}, "statCode": "SGegCw9oJhgvyM3Z", "updateStrategy": "MAX", "value": 0.453481161892767}, {"additionalData": {"CbIqvSVM846xZC1q": {}, "tM7hg2laqMjyTQ58": {}, "g9l00vpMRCXJEoER": {}}, "statCode": "URDoHLTeHAgZglAL", "updateStrategy": "MIN", "value": 0.9790763934474868}, {"additionalData": {"gJJtGzEVjum5ACcn": {}, "UVq0JkJhgwa8KTkN": {}, "rE92wZAA83nG9Kj5": {}}, "statCode": "xghPqghKVnZKtphh", "updateStrategy": "MIN", "value": 0.18665776659202682}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'I5h2DmKeWPFA2y2J' \
    --additionalKey 'dnF9BU1ZuLKWKNrd' \
    --body '[{"additionalData": {"PIUSPWz8H5p7MiC8": {}, "TB0ZaaxkICqHn0Fl": {}, "u5rw73DmNahplPUS": {}}, "statCode": "wXxV5X2GYUj5fgoA"}, {"additionalData": {"h3G5u8GLv1cXTAq5": {}, "SXqpICaJbtoFs36s": {}, "LHQCNvrzN7k0K9FM": {}}, "statCode": "lqoUYNCVnvI6I0Z6"}, {"additionalData": {"ifFrxbGiDeGb4vkB": {}, "rJZF9K1bPER6V0c9": {}, "6gCGXNP5TOASVGHS": {}}, "statCode": "idFgwE9B3cFVTvQq"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '6pc8n6YVYxUU975f' \
    --userId 'Zg42Ruev6veTtQqk' \
    --additionalKey 'DvyexXqxgs701jXE' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'lXgQvqFPXQPC8NwZ' \
    --userId 'Sfo8YMubBZ2khzSG' \
    --additionalKey '8BxQF0umim5J4E8T' \
    --body '{"additionalData": {"ruiLB0Oodv84B00M": {}, "3U9AYPjCHg3YmnoO": {}, "qizJvB7P9yhCGKiG": {}}, "updateStrategy": "MAX", "value": 0.5652777662982148}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"dwCRVv1GzQKNg607": {}, "0m7x3ve2viT1MDrC": {}, "wu0WHhbymX4LXyzr": {}}, "additionalKey": "OfTiaJsESeeMYZ15", "statCode": "y6w4DCMIx0EXNYhX", "updateStrategy": "OVERRIDE", "userId": "Sta0cjp9t90QvasG", "value": 0.465901818430969}, {"additionalData": {"kR38SZahbf7TGG7s": {}, "5HKVdBICFjUmzN9P": {}, "HxJumGAH3atOekvf": {}}, "additionalKey": "lArfzbC3yyhocCxh", "statCode": "4uln1BveKGbuvDjD", "updateStrategy": "MAX", "userId": "Bu9rMwjm4nBO3xPq", "value": 0.8085352206317272}, {"additionalData": {"zuKcR02Qm4Zmebk4": {}, "PG4ZSDn2X7IJ7lNy": {}, "9l8p5DPMDG4NFtTW": {}}, "additionalKey": "jxMfgOjkAxZUH0qT", "statCode": "F6v0yrTSMz9WVX31", "updateStrategy": "MIN", "userId": "s2Mh5YA50U33tMlF", "value": 0.060721703612584554}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'ggxNSZYVT1IZtshk' \
    --additionalKey 'HBEJ402CN6tHqi3j' \
    --statCodes '["a8vCU62eKeXfqC1u", "ajSO2uNjqDOI5qnc", "p6jwXQjm7gpvWVhl"]' \
    --tags '["4wn1Sq5NKBfkUM5W", "CkGJMcMQB7Aewm4V", "pC0R5kTlgjFhQSAG"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'iBXpoJ7Y3Sym8HY6' \
    --additionalKey '1zzlxpRFtgDoNZYd' \
    --body '[{"additionalData": {"vh5lz0NXCrUhDkcJ": {}, "TJXMXVVerQ8HaYJt": {}, "aaemoQ78DMBw2OqX": {}}, "statCode": "It4NfBj8w7KeW22Q", "updateStrategy": "MIN", "value": 0.9046737621724893}, {"additionalData": {"C9yDS3QsRi6wgxgM": {}, "8k4BsMY2FRK92sNl": {}, "GLzf7A4jiVKpsy8a": {}}, "statCode": "db85zLxkG1ARbOtg", "updateStrategy": "INCREMENT", "value": 0.7544397829469118}, {"additionalData": {"uNSzhCohfdfNziGO": {}, "FaGWGZUjmCAbpMZf": {}, "whbKNQPGzT5ddj0C": {}}, "statCode": "jaEt7dIE3vE0JKTV", "updateStrategy": "OVERRIDE", "value": 0.9750379733127784}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'LvrpviYjSHNBbV9N' \
    --userId 'vUVgUkZIjIXAE7J2' \
    --additionalKey 's3V9aMmTnUuI1QIi' \
    --body '{"additionalData": {"XNkap2WzPg8GB7jK": {}, "s9A6ppPzDUePzw6L": {}, "XrFzKC1SWKrr6PmX": {}}, "updateStrategy": "MIN", "value": 0.28960478842188786}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE