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
echo "1..30"

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

#- 2 AdminListAchievements
samples/cli/sample-apps Achievement adminListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '5' \
    --offset '53' \
    --sortBy 'updatedAt:asc' \
    --tags '["9tLZqc3vSqE73Mdg", "zJAUqgFHmg0EdUR0", "MYOOUx5sXCIANPpk"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "y2JW4jethibh5fdl", "customAttributes": {"1AJUiairTFRdIov5": {}, "CyWAyIa4QcOIGhhn": {}, "wJPO2iHMc9Uth0PS": {}}, "defaultLanguage": "NsRnz3pUvSddqcuT", "description": {"IRG5qQzeadzRUQOW": "ihlonxQ5JvhKuBpC", "qcM1tPQV8ttuPzsO": "eNSJUomq86EKouOf", "aggQDA2JlkpPxv5R": "72DiCkjZ6oUnvAxP"}, "global": true, "goalValue": 0.8247276481197038, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "97NZcc0GRtUuDjmn", "url": "MMUVvGWZte52TV0L"}, {"slug": "FYiZU1jU917K2s1J", "url": "wp0EvFeNWzKUXr0O"}, {"slug": "ctfQe7AWHjjMFULK", "url": "CA0iRZcJ8yZs3IYt"}], "name": {"T1DY2Gy4CJCSz3To": "Eycstcvsmso7fPMr", "z1vOc2Xi47QzEBNX": "2e4aMP9NhrS6ns7k", "kEVAHo2c3xZFO46t": "QBDO6btDqq2mwkyt"}, "statCode": "7WuzDEyEMJhk9EJG", "tags": ["r0U1NNrsDBF6RpYs", "1MPQbIQtVFsM8yCg", "Q2T2pftXbB8BjdnS"], "unlockedIcons": [{"slug": "kvpLKyp9uoAtjvh0", "url": "5de3P55nJ2a5Xyhs"}, {"slug": "Y6SCAefc6a0ZtOEA", "url": "qxc9EAoL5gKjzjdv"}, {"slug": "rHJuTjmeJdZegEee", "url": "uTsyNBkmx2xNqfph"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["I8gGWkR1LKr7g7cP", "gwaaxxzkoyniy07Y", "nq2xJTIoHiTnpNre"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'tGmL8rc1wE2HC1B9' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'feqB8V357S8FfLWM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '9wu9oINAtvnaCCAb' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"UBT0aDwwLRuBNv3t": {}, "wZRhd787Zfv8X4jO": {}, "o9b5Tju5yfmMoAII": {}}, "defaultLanguage": "K78kYpyg27n9CWlA", "description": {"kbEZIJefAGiVW1Gs": "yxtduYkqgs01CuX7", "Kcumgs0M4sVZhBRV": "rmONINKYFo9S6vUk", "SuK6jE0YS003tRJG": "TNh5w6k84GOlOI0O"}, "global": false, "goalValue": 0.7346750197163541, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "1cjLFLZOxcpzsH4K", "url": "vzGVVIKYEfuIT4fm"}, {"slug": "gZsNoUNnFH78bcGM", "url": "0fL0z0Dimr2PhJ73"}, {"slug": "Y9GLnv0CX766q4dc", "url": "EWe0Jh4E8juT69XE"}], "name": {"k9QroVumWmHMWyqn": "Bj6qr7DcpDTo9nIa", "nteALV180mVPMtWi": "nWpJfkObNvYC3WN0", "cZLwTt86DEFqCnZo": "T8xRUIWDVO5pk38D"}, "statCode": "mNmf3Cpyh9XEFIRF", "tags": ["6b8b2jXQYfijLBb9", "dE9LfiRsyE4vX0wY", "hStPkdWO66ZRHgY2"], "unlockedIcons": [{"slug": "aNk4FeIRs7PYUmch", "url": "1DBD5f9VfSMFqA7o"}, {"slug": "IULXaiyCiCs3SxRp", "url": "MrhGQMdmJc7v79bm"}, {"slug": "CIgycL0CW6WSMrPk", "url": "7DI7Gq0Go31vdnxM"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Th4ceZAKjP1lQEJz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'OHT3E8vHuclKhfRN' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 59}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'jWQwYCAqu3wWGHw6' \
    --limit '62' \
    --offset '63' \
    --sortBy 'achievedAt:desc' \
    --status 'UyHMcnTkShwQlbFO' \
    --tags '["ZqtcQjZnZpLvIfOM", "45LMCh70sbb5RMiW", "Mwl9la7wycXa4OW1"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'F0T9OKMju2KfGzgk' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '59' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '6BDrzoWjIMw8sDNf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "B6PIpol347FgvvTP", "eventData": {"eventName": "GCUCzoxDz8BR1VQz", "properties": {"2RRvglSwV1Db9vYs": {}, "o2nEv0cCcPDZH1vq": {}, "g29bqlCvgRA1nqdi": {}}}, "eventId": "pgO3XOPv6bhdYPka", "version": "VwqgK1cmsRXPyRpT"}, {"dateTime": "du7yWUxAGUUuHtzo", "eventData": {"eventName": "nmQFCDinrp9eKDKO", "properties": {"qTOg3gK97K9SUvE5": {}, "UobyptJHqDk7biX9": {}, "scwSKjbbsaVkM33k": {}}}, "eventId": "Y1RAhYB1BpxOjA3n", "version": "7nA4zhSc69IRmLJZ"}, {"dateTime": "DLngjS2O68O0KwA2", "eventData": {"eventName": "fldajeDBzpG5omUM", "properties": {"WUsA11Mu0f0Dq8zE": {}, "zIWYnSXssbejTNgp": {}, "00ojo0NNTbjLnu8G": {}}}, "eventId": "0YhWMAPt4Vf3VCZn", "version": "hT5v6uL52fFFEb4p"}], "thirdPartyUserId": "cSdUU9c8yNLIuhUR", "userId": "tdlqGSJe1vXukUgA"}, {"events": [{"dateTime": "fpzK8fMytITjlhNw", "eventData": {"eventName": "zQ43ZDCE2htLMoXa", "properties": {"tO8V1UsmxJlm3SQc": {}, "ly1vO0m2cGjmmQu2": {}, "yzi3cYSckMj9zskP": {}}}, "eventId": "yhwsOVkR8O4bPTPT", "version": "D8ZdgbSBjiGuzWUD"}, {"dateTime": "uNgQu3OuXYK7CbKS", "eventData": {"eventName": "CPReWqAgLIwXL0qg", "properties": {"85CR3GNWKr4oBKUs": {}, "sxHSI9vChDtTJKjY": {}, "Ndd3slKg4v0moKVs": {}}}, "eventId": "yzF2wUd8GKd4vxTg", "version": "noFMAZwALpJROf0J"}, {"dateTime": "qoscjuBRqMblores", "eventData": {"eventName": "iljZX13QvN7HvBqP", "properties": {"dRTqt9Hmz9UHDnV8": {}, "9avWW8yo7tLAq3tw": {}, "5QBkhnoxSs2vnf72": {}}}, "eventId": "oc8rsvhq8ozKpGvO", "version": "tRL8A0gwHaCI0ai7"}], "thirdPartyUserId": "198JxPDF9tjMG8Gl", "userId": "E6iPeHb2NQpViQRa"}, {"events": [{"dateTime": "ssPBrSQEnxyGEsFS", "eventData": {"eventName": "WAoQY45LvUnwsTvr", "properties": {"HRsuNZ4d0Dfai0PJ": {}, "lcZfLEAoZNcvbe00": {}, "xzaMMiWwA3fcXMf6": {}}}, "eventId": "8PZLpGUPuqXmLn3V", "version": "0dhXRafMAYWMH3LC"}, {"dateTime": "tvbo8Mm9qL1nsYGc", "eventData": {"eventName": "8a12gmbb3hKWdu3V", "properties": {"PMcqoVpEMrbu951U": {}, "dgFTm9jH3cchQIJo": {}, "9ZTms3ONghBvC8yU": {}}}, "eventId": "LkVw3NovFgsngBih", "version": "SLVtCbU4eOma9Kx3"}, {"dateTime": "zfx9vPejaV4CugrG", "eventData": {"eventName": "AJg6ntjr2hMDds0Z", "properties": {"D3Osk4gxafaLNxCG": {}, "oPSrCj7uTNrDatRb": {}, "RcL0VGMXspsDI5Me": {}}}, "eventId": "EDSss0w4Fe0GEu3U", "version": "mZJ44N7lOuovl0Rm"}], "thirdPartyUserId": "u6tnGcwVS4foCmKb", "userId": "MIxUSZY3Nd7X2Slf"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --name 'uQP7LQhRUTTd4mOr' \
    --offset '20' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'sgn6NUExNofIu3ig' \
    --limit '93' \
    --offset '63' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt:desc' \
    --tags '["4GIADQ80TCeYxP3m", "ZDwCgl1kb0ZcQpKU", "uiVVZKpvLLUGErtK"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ySUDwTtDJScZwCsX' \
    --body '{"achievementCodes": ["DKqae7dmfRZtx7ld", "A8mmQE4w7qoN4RXd", "PgtLERUzlUAkZqdk"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'jOvZtimvJk7jPCqh' \
    --namespace $AB_NAMESPACE \
    --userId 'jlPcKTtGeG8L6Kkw' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'oa23s5jyH0P5JKMZ' \
    --namespace $AB_NAMESPACE \
    --userId 'HQW39tObXFmjTyjF' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '9divSyaOwQo5PdYR' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'zjkz4HHlPlxloYsJ' \
    --achievementCodes '0slJ3zsLtf8Sp7V9' \
    --limit '37' \
    --offset '11' \
    --sortBy 'contributedValue:asc' \
    --tags '["Mpxf7WpuZEUVNsFN", "cLBRKs5AKfUnbXnI", "jldWc9QDILtVg1Pp"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '32' \
    --offset '40' \
    --sortBy 'updatedAt:desc' \
    --tags '["IL52rLyjmETToqtW", "Dsq5tkqrspibXHI7", "5J28GQkiVLO13bAC"]' \
    --language 'tZMMNZYu6NCTqp9G' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'RyVwd9DIeLRKgEQI' \
    --namespace $AB_NAMESPACE \
    --language 'J9AtwaT30FJ5b72j' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '4QFj6F6AgYuF2Uof' \
    --limit '79' \
    --offset '24' \
    --sortBy 'achievedAt:desc' \
    --status 'OjVEs6wOBDAmVorM' \
    --tags '["BkvMEEk4a9PyHd58", "EgAcAu1xgC8BPAv7", "J0XH29kq3tnUXSl0"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'xdlSKOzzpmtv1dSV' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '27' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --name 'WyTyBlDRuiOsmO2o' \
    --offset '61' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'MvfyAaYSOVusaniB' \
    --limit '90' \
    --offset '80' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt' \
    --tags '["ecXVPhTDuUHVSR5S", "n5D0UyI4VuhmtU3Y", "43Au34P3dE3qjyLY"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Iy6fcdWSojSOGGGH' \
    --body '{"achievementCodes": ["n6wMV3UJr4jkFp1G", "vUrVEoxCMyCuZy3J", "PAgJYnPFhzss3A4U"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'qpOpFZ8VG1TDvXtU' \
    --namespace $AB_NAMESPACE \
    --userId 'jFEtdeCOTZQMdqBO' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'jyt7Fpo9nI2nRwkk' \
    --achievementCodes 'vk9iHNnv6dejsUNf' \
    --limit '84' \
    --offset '72' \
    --sortBy 'contributedValue:asc' \
    --tags '["0pmu5GhUN8Sw4E4y", "BS44V0TH4jBfwsDr", "MVW6vjI9h5YZ8C2j"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '3dNsdslMi2yvxs6p' \
    --namespace $AB_NAMESPACE \
    --userId 'gDzfaktcSOpNlLkb' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE