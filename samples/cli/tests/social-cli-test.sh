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
echo "1..91"

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
    --body '{"maxSlotSize": 69, "maxSlots": 18}' \
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
    --userId 'Zs1EW8a9EQqECLz5' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'tt6Qrrgz4lOcksnv' \
    --body '{"maxSlotSize": 44, "maxSlots": 8}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'YgvW9MBywbTtfjIA' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'H7PDfBk4AY9OlVq2' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gLMjFnRBsvJkuF5d' \
    --userId 'cpverHHN29lqVmTt' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'id5XfGBDVil5ntdG' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'INjMglF0OTokN4Xh' \
    --userId '3PflK35OOHQlXua1' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["nK3EIBUSEzJY2qfR", "VcQnvX9OYtg3srsE", "mFsCsze4rPW738Eo"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'OeMq8mIsxyTPiqiM' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId '2I3xnpIDmXFZ4ASN' \
    --body '{"achievements": ["VWFcg0bWv7RWXxR6", "agY2MapW7NsHX9xn", "xYctKg0FgKtnqrjL"], "attributes": {"SrwzhO4KHcnkS9ZS": "SirakVpnxqRgNZDD", "7LSPzrL6DIG5S2Bs": "GCok4MtJFXzoKfSi", "tLwqMl2PIistIuwn": "DnP1SDn1jkNbbLxE"}, "avatarUrl": "lWEPTg4CGnh8h3oC", "inventories": ["T2gMyejFUQlQF8JD", "MBM5UpMtnROx0FP7", "J58XNg4qkbWY4ZJ5"], "label": "ehhGhnnD2Qw1YIYS", "profileName": "gyWqnraCt9HTA5oX", "statistics": ["QwmpcTS44F4OCTUF", "rbMZU5uxKBuQdfDj", "34xOW1Rgbl3IEEfH"], "tags": ["Ae7GxjEDirVbH2gH", "6t9ztlLsATEvQ0x6", "CjotzudOPGfh4CQH"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'l39WUoVG8M4gHWWy' \
    --userId 'HP0Y187oL8yXJgOg' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'MFMcaaA0hBcuR0LL' \
    --userId '5y4oZNktZhbDr0q6' \
    --body '{"achievements": ["xqgoixTjub3bxXgA", "y7JVDOpfAikYTy2e", "x7rMKfPs1jRXhcb4"], "attributes": {"cvhtV9ccMO5JzwKk": "1HJuIj4bnffsM0Nb", "adrnMgWJUeN5pqyz": "mpC1MKHUvubGSHLQ", "UoHrxZEpvNF2T4tm": "TIMuJWM5CTA1D51X"}, "avatarUrl": "djI37pI7HynRQNXX", "inventories": ["bcipA7Pfe5SyShdp", "DApMPiWWMgb4rJIq", "K2KGeSwxzRBaLMUG"], "label": "69BFB9t9cI99Tvin", "profileName": "YQsAgIhHl3aMm6zN", "statistics": ["Yk8Fzqp8k1g84K5u", "rcTIlqhlKJZdNYwq", "CucZ2NVZXJ3UbJfn"], "tags": ["qr7PLHlBEr6XkDpC", "1YMBKxVVk5UW976m", "g47uJbNn8PfZiHvc"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'LeryBeYfMkTK8Bpl' \
    --userId 'A54DJp8aWuekQRxQ' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 's9MSMX2kjMmlb18w' \
    --namespace $AB_NAMESPACE \
    --profileId 'eiUBdjEEuob2Spwg' \
    --userId '77ZHK0gB5b1ZA87q' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'z8RvfD3tYw8kROHn' \
    --namespace $AB_NAMESPACE \
    --profileId 'OiJoRl3hE8LRoLY1' \
    --userId 'fDT50q0f52PbLiJr' \
    --body '{"name": "2YNqFwJhilMBcLdI", "value": "T2tyXbIekcAuj77J"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'crCT8USsKkZM5Trt' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'UPS6Mx92pkgSEBlK' \
    --label 'IQkd7lta5egbIImS' \
    --tags '["kFGkkTEupoYUb70l", "7bE9md2khjPMqYfe", "ghHdgBkI5vsnwKmU"]' \
    --checksum 'Nsr7Au1K4mjCdhDU' \
    --customAttribute 'uyW691LdB5o9DWqR' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'oHDH3nxV3QoJiVv2' \
    --userId 'eFhWOg3qWsFduehg' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'bpG24T4dtojaCGr9' \
    --userId 'zgbFmoBLde46gyDi' \
    --label 'I40r3xzyM51VITZS' \
    --tags '["tNZnyVTyMZ2eqxAQ", "1uka3uPXMHoZFJY3", "h89mLVoP9FGBb7u0"]' \
    --checksum 'onmi4w6lsNZSa0Eq' \
    --customAttribute 'SmNdDQH10IMrzEZv' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'cpQcHVjZG6QtzNOT' \
    --userId 'cmmHnU3uCp9vZHaL' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 't94PbGEZ5uIQdsyd' \
    --userId '1ZRFeH1hC0qeOOjJ' \
    --body '{"customAttribute": "OLRkoHzaHKcVg7Go", "label": "PLnRaw6JjFlfjwmK", "tags": ["9O5ZdOvHirdyOFDc", "2UI0l2yzBSDOOKpz", "0IhfeNEAp6cAle7D"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '13' \
    --statCodes 'CQ9e4J7EAxGVkEWN' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'Me4se1DrnDU1CSEa' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '41' \
    --name 'TfjD2JA9pGRBHHrE' \
    --offset '25' \
    --sortBy 'lYjcApEYJ3i4icDq' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "j3XWKkwc8xFxKOxq", "end": "1971-11-22T00:00:00Z", "name": "kerpHIZ6CuFM72IV", "resetDate": 95, "resetDay": 83, "resetMonth": 30, "resetTime": "FSZwkuz5y1W0VwZY", "seasonPeriod": 10, "start": "1976-11-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["0kRY7bEAHG5gfvPW", "lDGaCYt759OcKo7c", "e77a8Mih2vb1xp2P"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'Zc7NTKtT1b7U9CsM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'TsQmuDznr3Igs88A' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "z0LdPxsG4xrSzV9y", "end": "1991-11-04T00:00:00Z", "name": "9samO2ZCs6RDXKOm", "resetDate": 2, "resetDay": 20, "resetMonth": 66, "resetTime": "gPd5u7x03N3IgzE5", "seasonPeriod": 8, "start": "1980-07-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '69Vs9TZLokBSXgiW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'oNCYfKxf1tobmVRS' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["8JvZS9HziwghE3El", "LQDucw0MuwDsFmnD", "95EeIA6FWRRgXP6L"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'JEc2ZC81M2G4XeSK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'hB73DEwDSCt9mJ0w' \
    --userIds 'J3cj4SxfwFqL1qWv' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.45805430889761445, "statCode": "IxVGkqcErqoo9Y4D", "userId": "g1UnPwqyx6ff9dL6"}, {"inc": 0.9301765741631364, "statCode": "Pu0x2xxRdKB66p0c", "userId": "S9tJL0mlt6iCWCNJ"}, {"inc": 0.21698561492973445, "statCode": "HvZ7ek7QVlPvC3jC", "userId": "Kc3btIzze8iLtmaP"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6969264946444506, "statCode": "kcGF6eT6IGOAKAFh", "userId": "MtvGjLMnQw7Kbo2H"}, {"inc": 0.13379514232189116, "statCode": "OfOswlDJNWC8sGjT", "userId": "KeX0GSYY5WVxlvjp"}, {"inc": 0.21064293993844252, "statCode": "YkTRT6NmAXIkLGeZ", "userId": "Grvs2af0nSPVpV3x"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'aCpKDfy30gxQAI3H' \
    --userIds '["FnlBaPVi4euYrz2f", "xiOCJcdZcxABm3fU", "ucl9EW4pmcx3yFjo"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "ecAFicj64uNOxPTR", "userId": "Q76bc2WwR7421M5k"}, {"statCode": "R4PEkkWCp9Wsp7wx", "userId": "zjYDgd2CZGgbFlht"}, {"statCode": "iPFvKoymkIUA1me2", "userId": "6Iq5bfwb6YwvvLEm"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'CGZQDJKqYZ2cPPCx' \
    --isGlobal 'false' \
    --limit '54' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["S2yYAH8CUhw4j1f8", "ePXY20W8yIid3yNY", "lsM7UUqnC4nbqiiq"], "defaultValue": 0.3273427844480262, "description": "01HimNkuDsRzxJrI", "incrementOnly": false, "maximum": 0.5845516846306433, "minimum": 0.41256453509044944, "name": "savlMi4YdNE12vNz", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "902HxhKWkSaWnALP", "tags": ["RsrnrAfm8rK13zhf", "xbnaynGkNuKvheyL", "rdnc3XqvJEMIo0Yq"]}' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --limit '16' \
    --offset '80' \
    --keyword 'ugJwhywNVK6jt8o7' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Npj23kxgfhIDHlmU' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'u5QYo2Vr0hWbFgWu' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'MMFQnfG72LBEvIPY' \
    --body '{"cycleIds": ["idPXyvLRPFsBSPUP", "Ju8xP7cd0GphqEnY", "NuGhf6SpPk5J8zOS"], "defaultValue": 0.7855983298690569, "description": "WRMqyx0aCMSJOdCS", "name": "0UcSY6D5yynPuaMY", "tags": ["5N2MVa5ePFl0l5sa", "GO4Nq1xcNgmw9nUA", "Kno9XaitbKhiJaaB"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'pIrNjqZL87QR1kpx' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'VU1Uduun3QolkPgJ' \
    --namespace $AB_NAMESPACE \
    --userId 'yRn2Xdj0BguDwMVe' \
    --limit '54' \
    --offset '32' \
    --sortBy '24nA60X46cMR3nVa' \
    --statCodes 'RSchnAB8yuQ19rL7' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '2RO5D6Sxmv1poJmy' \
    --limit '46' \
    --offset '75' \
    --sortBy 'MeZexojP4mDRFz2v' \
    --statCodes 'Ek1gTk1vFn8rjUbQ' \
    --tags 'CgIaWEcNxz8Gb9Hl' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ti5Axh2xxJ7LCwOa' \
    --body '[{"statCode": "iWBAi1MJK5WP8aAk"}, {"statCode": "RHAgfQ3ZZtnPgWov"}, {"statCode": "g7kZ0MPmkvX362LN"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'FUbKpIdii9YPJvMD' \
    --body '[{"inc": 0.16356972425972716, "statCode": "qW6kYCc3g9tCeQFe"}, {"inc": 0.545237008300571, "statCode": "73Cy6bOH9rmlbkmO"}, {"inc": 0.7390955760875625, "statCode": "rEK49FVQ7FIGoqmy"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '8cKBGJY9Ai1vEKef' \
    --body '[{"inc": 0.5250835201208259, "statCode": "Zj8LHokGg2X8Dsj9"}, {"inc": 0.4610357338480934, "statCode": "w0oJO20mrFdRmcN0"}, {"inc": 0.35918962631602414, "statCode": "nNNuMVW65zixoWtT"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'EA0BW6VBve3Z3zJl' \
    --body '[{"statCode": "zBwjNGF7Ay6Vj5oc"}, {"statCode": "gQmFK2wPumHM1VAm"}, {"statCode": "51c9TFldk54bx4Ei"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'EGEerl0uFU7WZHzy' \
    --userId '1oD1pbgyGk4p5pws' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Hm58cvKDmoHprHgS' \
    --userId 'enXG0wCSaAr87Iv9' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'gnq12FZYkx7TPYA6' \
    --userId '9XzM5hoTCBTtULDa' \
    --body '{"inc": 0.25321413343250443}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '0qVnNQYAcRrLtdJs' \
    --userId 'lNVEWhTWDxixOS95' \
    --additionalKey 'GxrZ0npFM6u4jLUy' \
    --body '{"additionalData": {"GFffJ7SJXARLyRAv": {}, "uB0Uqe7VEpvkBesZ": {}, "f2jtDk449Kp9dibN": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '9' \
    --statCodes '2GMoWTcVFuH6dyUu' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Jj3eg5FcIeBI68Pw' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '69' \
    --name 'huCUbB2MA6HjMkcj' \
    --offset '84' \
    --sortBy 'wZg75wJvgy3ZN6xy' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["swthhlM9dmPS8Gz3", "qwyLjfaNOZpoyWUC", "MqQNINprrBCwVKa2"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'JEjgZgFxq0GpmbCO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'RbhraDHvRGMewPqL' \
    --userIds 'sVMH6kcUHZJrtJUp' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4977576178478068, "statCode": "hiVZL8htyuJFSTOx", "userId": "ipZCrcZRYZqqnRrw"}, {"inc": 0.30189766959198094, "statCode": "bvhlbVerRM4jGu3t", "userId": "wDXEkLW1v8WCO3z6"}, {"inc": 0.6762136156916522, "statCode": "xMxaFDcDUe7Xh25E", "userId": "sKugGSGvRYzBrY3L"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.1547960791949623, "statCode": "nPfwoBXpgUOwSPA5", "userId": "RBETz9OIuPaKt1jQ"}, {"inc": 0.6671897846176259, "statCode": "txbF5el2eg0GySeO", "userId": "zZzWAE5rTXHYOA7M"}, {"inc": 0.8308311114507276, "statCode": "OFFPMGOjnUFB8Ybu", "userId": "BeGJzchMrZsiTwHt"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "8erKzO4yc2QfEupU", "userId": "NoIzZq3NRkqugICK"}, {"statCode": "COyrzm2xcWfQ3C6c", "userId": "BWDBeLboveBmI6QL"}, {"statCode": "wPPMNEh0sqhEMjUK", "userId": "UFqhqhq46z7vB9nC"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["kmFLUKf3YjWZzR1g", "KBxR06V4S8aNMeja", "GgdAEKUgu0pNSEye"], "defaultValue": 0.020346290514311582, "description": "Ln8NRV0cdn5SPcFK", "incrementOnly": false, "maximum": 0.06197605616181734, "minimum": 0.664248183699162, "name": "y9O8vxKiKmJqnaDt", "setAsGlobal": false, "setBy": "SERVER", "statCode": "zJCXOdUPIhxHS4ro", "tags": ["pa5xOfMhm2qV8Tdz", "YnYjrxxmccItXnvf", "aY0iXJ46ijXVhmBg"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'wcnSnRDpumYbmalW' \
    --namespace $AB_NAMESPACE \
    --userId 'Z8zoYSEOl9BukGyt' \
    --limit '54' \
    --offset '29' \
    --sortBy 'XfrmnViFVgJt83Sd' \
    --statCodes 'jdWxO0YrHgdawwao' \
    > test.out 2>&1
eval_tap $? 70 'GetUserStatCycleItems1' test.out

#- 71 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'qZ0gMdr5a4R0XkUs' \
    --limit '98' \
    --offset '54' \
    --sortBy 'g4nhAP1q1PYJ7oCo' \
    --statCodes 'UfvNekSpsgbCfV4O' \
    --tags 'f3ke93tnPqR9hxLE' \
    > test.out 2>&1
eval_tap $? 71 'PublicQueryUserStatItems' test.out

#- 72 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'rCxqgZh5OVa0lCy7' \
    --body '[{"statCode": "u4hNWXX5IDckFMu1"}, {"statCode": "AOUsf6Bun7E6kjwy"}, {"statCode": "OW3cPdk0le9R35Oq"}]' \
    > test.out 2>&1
eval_tap $? 72 'PublicBulkCreateUserStatItems' test.out

#- 73 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'rijKUDHXLJJaLm31' \
    --statCodes '["Shmp7AhECJQqGyMt", "MEt30EtcraowItfL", "OQSaqClWg88GbLYC"]' \
    --tags '["bxgwyXcDLehWnLcV", "MTtdh1VRsG5VGA42", "owmAowJCPcBjCqar"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems1' test.out

#- 74 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'zUhggxL3mQ7s5MEy' \
    --body '[{"inc": 0.1344355905002168, "statCode": "gjYhnMpFJtLWOiFi"}, {"inc": 0.3403255663202681, "statCode": "3P9cY2SbYxRs5xDm"}, {"inc": 0.09124437797090579, "statCode": "BjLaocJsLuiQj9Wh"}]' \
    > test.out 2>&1
eval_tap $? 74 'PublicBulkIncUserStatItem1' test.out

#- 75 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'px6s19idW1NKA71e' \
    --body '[{"inc": 0.1355195368379143, "statCode": "m9MvElKyC3BFBzmC"}, {"inc": 0.22226917238486033, "statCode": "iVrYxV6DQgtfKpJZ"}, {"inc": 0.9132987137797514, "statCode": "XfOOJLAvgdH0CEir"}]' \
    > test.out 2>&1
eval_tap $? 75 'BulkIncUserStatItemValue2' test.out

#- 76 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'nr1OmGPPVZgmeSJO' \
    --body '[{"statCode": "w3Bih0mw24oFptlZ"}, {"statCode": "f4e75nUKzrq5DUlj"}, {"statCode": "hzwTCgF5HNCGudXH"}]' \
    > test.out 2>&1
eval_tap $? 76 'BulkResetUserStatItem3' test.out

#- 77 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'dQewWUobLouGTOh2' \
    --userId '2HZibsOdOFXQztdR' \
    > test.out 2>&1
eval_tap $? 77 'PublicCreateUserStatItem' test.out

#- 78 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '5mXQkvNoA6k00iga' \
    --userId 'WRlNnVUqKDfAx2FO' \
    > test.out 2>&1
eval_tap $? 78 'DeleteUserStatItems1' test.out

#- 79 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'jnycftqLM9ZLTTSD' \
    --userId '7XZzoehfIvSHJAxK' \
    --body '{"inc": 0.10570426689254941}' \
    > test.out 2>&1
eval_tap $? 79 'PublicIncUserStatItem' test.out

#- 80 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'UXBuScFTm3c8xVoY' \
    --userId 'GiEmuzxEYppg5uON' \
    --body '{"inc": 0.021280056028652794}' \
    > test.out 2>&1
eval_tap $? 80 'PublicIncUserStatItemValue' test.out

#- 81 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'liIHTCq26n7spJSw' \
    --userId 'OGojDh1UZCUvXBCw' \
    > test.out 2>&1
eval_tap $? 81 'ResetUserStatItemValue1' test.out

#- 82 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"Wt3MRc2hmNKE7IvB": {}, "EdHXZqAQTIB1sDFX": {}, "yfh68JrUlmPgKT8j": {}}, "additionalKey": "lWuEw2nzMESxAX0i", "statCode": "PHfWTjk4lmnT7CG3", "updateStrategy": "MIN", "userId": "NirGR0EzUf16JFhz", "value": 0.5331051416796813}, {"additionalData": {"g2wHvM38IReCcvZr": {}, "L1nZdryLXUtfwGzX": {}, "fwPHwZI8Zl1e0HXK": {}}, "additionalKey": "LzMQe24pzNeCmurY", "statCode": "65Fjsyu1gjx8yfmL", "updateStrategy": "MIN", "userId": "2BkRTxavbVmqxVgv", "value": 0.9875165599768477}, {"additionalData": {"VAhoNCQvkgOvAujc": {}, "V1Ky036N3zcNzYD0": {}, "wWbMeMRbJu5F3HhH": {}}, "additionalKey": "CyJCape55ZOjNVgk", "statCode": "nUskRuCg5k9gR5PZ", "updateStrategy": "MAX", "userId": "uK14AAk43lYz1FGY", "value": 0.17169692867223907}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkUpdateUserStatItemV2' test.out

#- 83 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'ogf1cr4lsMhwAyng' \
    --statCode 'eATrx8iWrShWieyy' \
    --userIds '["xmc9rdW9GPhvj5UG", "GONSjKYPYUcKUxyo", "aaPvDKMuhHgfxzRg"]' \
    > test.out 2>&1
eval_tap $? 83 'BulkFetchOrDefaultStatItems1' test.out

#- 84 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'wmdB6Xw4gGI1W4Yb' \
    --additionalKey '8e8qRBruI6IAR9fe' \
    --body '[{"additionalData": {"IDD1bejOQZUWUGoD": {}, "StLqsdzonvtrmz5d": {}, "nP8YoHtwgg82G5k3": {}}, "statCode": "Qlz0wOdkUrAcF2dT", "updateStrategy": "MIN", "value": 0.599430925125273}, {"additionalData": {"HVBEluh18eCj6W7B": {}, "zm10za5P9uisD0NK": {}, "wbfb0nU4jHYwgGgi": {}}, "statCode": "uMeNHsU7nBrtndYE", "updateStrategy": "INCREMENT", "value": 0.8563646121043411}, {"additionalData": {"ZS0p8u9Iv1hROy6K": {}, "kQyieBkM6NrK72G8": {}, "iRcdNLSFTt0oEbmQ": {}}, "statCode": "dQtcsszp36rIMpz9", "updateStrategy": "INCREMENT", "value": 0.8705822932399689}]' \
    > test.out 2>&1
eval_tap $? 84 'BulkUpdateUserStatItem' test.out

#- 85 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'aF5CvHYhH2o60umx' \
    --additionalKey 'UOasubu1xS0oDI9S' \
    --body '[{"additionalData": {"IDGpiQtCGDyaEGTT": {}, "wS2MXBoh0q1oU72p": {}, "z5xQCZJaOsBuYxzl": {}}, "statCode": "EBWhy82kbwwHQQ6J"}, {"additionalData": {"TKFCROHlmClxIPK8": {}, "rmQShc4Kze4YaouF": {}, "pK8W2qUjpx2wv9i9": {}}, "statCode": "2cKlvkS1xs11qxFs"}, {"additionalData": {"cpB96RWwIggPK0hW": {}, "c0bMJNdKI6IIGtdd": {}, "x6jNbr69fE9hcy5O": {}}, "statCode": "I1wjKQ6Jj8vM8oX0"}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkResetUserStatItemValues' test.out

#- 86 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'qoUY841NDLYkxUsv' \
    --userId '2aufXLkgbbZrVQPr' \
    --additionalKey 'Bq3kdyYPzdtKZgzV' \
    > test.out 2>&1
eval_tap $? 86 'DeleteUserStatItems2' test.out

#- 87 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'QkAkrH8mwrgvsiHc' \
    --userId 'cIQ6koiZfpJlIwLN' \
    --additionalKey 'Nvv5avWJ1JQyQtQ6' \
    --body '{"additionalData": {"eGkCrzLJBIHbl4uU": {}, "AQ4C48iWfCRYjRuT": {}, "P3bjenFSBGo3NUM5": {}}, "updateStrategy": "OVERRIDE", "value": 0.19967481899253647}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateUserStatItemValue' test.out

#- 88 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"T4lFYleD8tej4OMU": {}, "xe6Cy7eC3zVIyUuZ": {}, "GobUyIQE3wcMKArs": {}}, "additionalKey": "jEnhZjgRTW2VinCD", "statCode": "9RAZ7vNMHqcNRvpk", "updateStrategy": "INCREMENT", "userId": "NmHFjySNjljBpMcs", "value": 0.47465680987702574}, {"additionalData": {"uASFZtvvFwWPKIH2": {}, "vWNZImsSJFcAH3ST": {}, "MY0pCkDt2C0wsJ19": {}}, "additionalKey": "o520ncyIf9qb5qN2", "statCode": "CKEMvmO339bDG5OC", "updateStrategy": "MIN", "userId": "Yd8KwR4HG5ZJsl9N", "value": 0.3574419407142886}, {"additionalData": {"MrOlu2webAgELQym": {}, "BvjT8SbqDhJRnsbN": {}, "Ce8mIzonPOZKkehl": {}}, "additionalKey": "860PB5oFtdsy77dF", "statCode": "Yn5OW2g7abufaHKh", "updateStrategy": "MAX", "userId": "4ehYe8fElWJqGhYW", "value": 0.8595078685335111}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem1' test.out

#- 89 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'I4MLD6ZVO6ySsPs4' \
    --additionalKey 'OZ0H6n0TlXJwzzwi' \
    --statCodes '["d4i9dc5i870JNXLu", "znZpn7CViMWDsp0K", "Y5VmHUE1cYjb6jI9"]' \
    --tags '["PcDLj5DEys4sgSYG", "CECk23Nw1q2aulIt", "SUszSrOlskEkOZ8J"]' \
    > test.out 2>&1
eval_tap $? 89 'PublicQueryUserStatItems2' test.out

#- 90 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'eZYkPkiyHTQVN5RT' \
    --additionalKey 'J44udh8la2r5o8VE' \
    --body '[{"additionalData": {"7AzbCaFJw0RQIxm4": {}, "UFbW44mVvx8Wapip": {}, "PxiiOq99sUM4CV0T": {}}, "statCode": "NUS709OuL1XeQYeh", "updateStrategy": "MAX", "value": 0.49924572151259117}, {"additionalData": {"xnU6QDlGOk8zqsMC": {}, "tKRxrZj295prSKqr": {}, "XaKvH7yDtlN7mGtJ": {}}, "statCode": "uqaF8jo4foZMtjWu", "updateStrategy": "OVERRIDE", "value": 0.23701991987777726}, {"additionalData": {"7Q0PeoFKy5v4LtZg": {}, "DCQQoSKaWk8h24Sp": {}, "KWcvUgE6DFgtk2Da": {}}, "statCode": "55wSqFBWDhOtnphe", "updateStrategy": "MIN", "value": 0.5174891137374072}]' \
    > test.out 2>&1
eval_tap $? 90 'BulkUpdateUserStatItem2' test.out

#- 91 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '8Q5VcxPK6gSVSXI1' \
    --userId 'MXGtweVUMuFCtSjy' \
    --additionalKey 'pWn2k4j8BXM6Bzhh' \
    --body '{"additionalData": {"FC1BXoUpMHSoZgGM": {}, "3tiIbw29LXSxRfJA": {}, "3nqHW1ax6nGs74HN": {}}, "updateStrategy": "MIN", "value": 0.36403655735876816}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE