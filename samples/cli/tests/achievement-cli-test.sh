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
echo "1..31"

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
    --global 'true' \
    --limit '46' \
    --offset '15' \
    --sortBy 'updatedAt:asc' \
    --tags '["ElP327w2p3CjE5xl", "wQk6MYHfhyLEJQ5Z", "5JuzSDV9jAo6yrBE"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "VkqLSWQBybHMJ3Ee", "customAttributes": {"qQwSNeOPLxPRYcih": {}, "60eIFVYehCDIOVgS": {}, "BcSdhP3evSHS0sRz": {}}, "defaultLanguage": "AThMmrqpZcx5A14b", "description": {"ycV80n8vn5UmjWLT": "SKZ2fwmiCifILTlq", "0msgzSmFtJrHHwTp": "yCZBoeipqqJDmSF2", "fPHSFyKnjuy0mv7O": "cEMqfwjWeuXiJ1Hz"}, "global": false, "goalValue": 0.442604706939389, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "ANwVppDLcbu7IkUc", "url": "FT7cImH4SwGbtLzN"}, {"slug": "e2TqhI1DSeYlAlK4", "url": "7KAG1kKkwmbTUjLQ"}, {"slug": "FYb3UU9UVDrLzgbf", "url": "IRoDwAVjW8OrVtfP"}], "name": {"d7D8Gc5h5gqXMAJA": "XJEdtLTh2fn14fbv", "M1WVAhmcST7C9ndH": "iMGOKMqDYEp5PlyC", "d2WvzEFDUWKd6C3V": "Njp8BDIDwbKc7Nxu"}, "statCode": "pfN5DCwy04zoAnaz", "tags": ["nuNmjZA3TybZc4eW", "QSfHQkYetZsyqDmF", "ztMG1vXIeXOSUJMm"], "unlockedIcons": [{"slug": "ntFWueXTKVAhVenb", "url": "qa3H3Zr1G2XFkFyS"}, {"slug": "Sv1my9TrP7SRBABF", "url": "9RHYb53Be3OnNvAZ"}, {"slug": "sjT9lDuadR35WiGz", "url": "NC0gCoK9A5Cwjron"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["l0AppApRGlLJfO8m", "itZKQchJVfni7KiS", "1nPysUSeaTjjg46t"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '9MTKOIJahnU6JqCv' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'PB8aCz1EuUXZv0t8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'LbGEqa5n7JunVLqB' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"8kNlvkPuHrN7PIvO": {}, "T64cxcUpIq9SbR6W": {}, "UzWkTXvEZCZFHYz8": {}}, "defaultLanguage": "L2WJsRQ4VJ4TEAh1", "description": {"uAxjMSV7fIQBe3mM": "kqXyEVBcqFWvRIoJ", "5PtKA3RjQPO7hdGf": "aSLW3mpQyJccCgFj", "FzzAcEHwYmIBu4YA": "cRPZQm56If0w1Sl5"}, "global": true, "goalValue": 0.6483773147718607, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "HrbyvBO2kUYfN02s", "url": "Vu7gj1pF0G0dOl9A"}, {"slug": "hEIi9xPp67mYOAQT", "url": "bWpfLGrK97mwuNfe"}, {"slug": "MS49EYiQT6XqtKqe", "url": "84bsta7FlLHiRJRm"}], "name": {"IjsU4tC494kFofIk": "1ZOPV5WrRSDt8QSc", "D9PevrKoMZLYFjhp": "EmvUrfuP2k0o1QxJ", "KemBVjVPF2kNOGtM": "Tffq8Xar5KrsYqw9"}, "statCode": "dPJ0vjNBgAJYG8vK", "tags": ["nfhvdSvwJSXB1ROz", "8VZ89eic7RGlFPJC", "QsLXoCxnkIvLHrzs"], "unlockedIcons": [{"slug": "3ShIWXgBPAR8r7wO", "url": "dnTsZj5efK5relrh"}, {"slug": "zCcivUvDwnlukwhd", "url": "3HGqI5cwpFs957wV"}, {"slug": "Xk5gDAqCxE0Z0v2f", "url": "2ePbT1sDW9griI8y"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'dTCD4JUFCOKVyojn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '5R1zxZzvAzVvEZ3T' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 66}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'gy8b9xFtcN94tWBT' \
    --limit '86' \
    --offset '8' \
    --sortBy 'achievedAt:asc' \
    --status 'x5Dfp5mWoSCsBAXA' \
    --tags '["HDWCPJ1QcBMTf3Nu", "aJCJLRxntCjdSqLk", "S7GMDCNObhFfWkxf"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'IiRcRZCPLgF2GxVb' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '41' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'yH6mtJ3f6BlIEgz6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "jULabV5XA3epZKmD", "eventData": {"eventName": "JLcAZTpyEyeDkraX", "properties": {"PHF2lz1YwVzmKr5l": {}, "ZsuFIPwC6yZnwmyU": {}, "mfumMPQmg281G3xT": {}}}, "eventId": "TO9J9lTEfsdCOwV4", "version": "gVm5JtqOyyT0jeJf"}, {"dateTime": "NDRNTXdIO5xu1FE7", "eventData": {"eventName": "yz388pUn8bmb4cDi", "properties": {"TmZdBjDS5seJMyqv": {}, "M6Hu1ZWLxclCWrKz": {}, "v8qEjIP9w1V220yu": {}}}, "eventId": "SGyra8fszW206jdj", "version": "Yc73lImnaHZrJ9L5"}, {"dateTime": "4yHMhDHdro9OFeTu", "eventData": {"eventName": "XvI1AUFdabHdccm3", "properties": {"5SHhBSPyeOOtluSC": {}, "mUD1wEm2Dka33XHu": {}, "x1iRqAgxIe9yB4LX": {}}}, "eventId": "idfIYhqJno6o6lb2", "version": "cLlmACO3ZPscfEjI"}], "thirdPartyUserId": "vDQy0yxImDHP3eMl", "userId": "xonSeuG55sRPqFpU"}, {"events": [{"dateTime": "kObnWyaOlHPLGkN9", "eventData": {"eventName": "g9da0yHwCKQpv0Pw", "properties": {"fRzA3JdRapdnIlqw": {}, "ZkMmgSf5ZvsAs9Qo": {}, "f2eSKE0uBaYT0jg2": {}}}, "eventId": "7y9MlYZIXMYSvBCt", "version": "vVa54bXMwOv4nnWE"}, {"dateTime": "W36KmveR4QgVoQPb", "eventData": {"eventName": "UMAijHOR2F8kwYWc", "properties": {"RFiUDR5m4lX6iZxM": {}, "wH2XETejfwwEk3CL": {}, "oZAiCcUNGD6DFetG": {}}}, "eventId": "i8aqiIws0rEN2beP", "version": "t67UBSORO9ndiuO6"}, {"dateTime": "Q72SVoHlkrYzZI9q", "eventData": {"eventName": "WGHRFczucN90cGwg", "properties": {"Rartxi5XfiWFrNbs": {}, "iWeUoEi6CguqlHTq": {}, "6BaQZtZge3pAVkwZ": {}}}, "eventId": "2NpFMuQp0pN7hDIr", "version": "nNV9ASo3jghccPJI"}], "thirdPartyUserId": "iyYkGFIFHZSdDbNT", "userId": "mypSVW724HX5WZS1"}, {"events": [{"dateTime": "rXGsAeCkiIGwgFAZ", "eventData": {"eventName": "VU7s5ScA1nEzPEAP", "properties": {"zKWSZqksqo5liDkQ": {}, "846SqRheK2B8zPIN": {}, "fromWfUAPHFbipEN": {}}}, "eventId": "zXR7akeHvEOrEYyF", "version": "EyXSgeyYIuz9oRDR"}, {"dateTime": "PWAK2nK44YvsMPP4", "eventData": {"eventName": "a6bAvmSDhgvA89Bg", "properties": {"mMDW2dOrJyqYjt7D": {}, "uZQyLj9aGEWpvXK7": {}, "ofcXRu2IyPma0CIq": {}}}, "eventId": "UrvjAHVKKoj5NSOs", "version": "5l2Sn10hyAjvEfSK"}, {"dateTime": "dNZBXROrN762Ic0R", "eventData": {"eventName": "Gizjbul3V9wlCyUa", "properties": {"LEX2C0jCN4aIbj2W": {}, "lYaV0KOrfYG3Yebe": {}, "lh7hikGgUFv458Qj": {}}}, "eventId": "8Vx4eX8yGVnyTNf5", "version": "3laYWHbQinklKZoi"}], "thirdPartyUserId": "V1QeaT3SS0nSWRUz", "userId": "sA0oGTNCkKZaWORh"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --name 'eGDteQZrRB1mtlBh' \
    --offset '97' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'hNn4uQEG8sHEqlYR' \
    --limit '68' \
    --offset '7' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:asc' \
    --tags '["D4neatVtyzImHpbX", "zqSR5Mo5HdXMKnkt", "84bxQRL4NRVtMJ6z"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBatchQueryUserAchievements
samples/cli/sample-apps Achievement adminBatchQueryUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '0y5tZDc0eImLYfMv' \
    --body '{"codes": ["9OQdlf8HFwOgOU9e", "geizmMxNj5zdMNml", "lf0huHSNwevrOnMt"], "status": 58}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBatchQueryUserAchievements' test.out

#- 17 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'JAib2Vug3Mi8FPvP' \
    --body '{"achievementCodes": ["k6fO7mUP8dAOoYDA", "fc9Xr2cPZSCyTkWT", "Rf4YpaUg1JE2n1xJ"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminBulkUnlockAchievement' test.out

#- 18 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'ltwSaCeFnu8lIA8i' \
    --namespace $AB_NAMESPACE \
    --userId 'Jq7R3k5uKoJjEHRS' \
    > test.out 2>&1
eval_tap $? 18 'AdminResetAchievement' test.out

#- 19 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'EjCqu6lpwnZMNXky' \
    --namespace $AB_NAMESPACE \
    --userId 'iPj0hz5BgMkK3kUa' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnlockAchievement' test.out

#- 20 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'YBRDOXdZ7nUzxg27' \
    > test.out 2>&1
eval_tap $? 20 'AdminAnonymizeUserAchievement' test.out

#- 21 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'CDnP0G0HkvsxTrv3' \
    --achievementCodes '3diFBDIoEu0BR0SV' \
    --limit '91' \
    --offset '90' \
    --sortBy 'contributedValue' \
    --tags '["6DvWHWDd90kgYMu6", "H0PZaYeChzR48nHR", "dM09lNkzQ8FrbRg1"]' \
    > test.out 2>&1
eval_tap $? 21 'AdminListUserContributions' test.out

#- 22 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '34' \
    --offset '7' \
    --sortBy 'updatedAt' \
    --tags '["HdPRtmL0PcIjKr8q", "fnx5cSjchEXUL7u2", "LPinexwDO4izoDQD"]' \
    --language 'RwZZnvQeE8TH96Mp' \
    > test.out 2>&1
eval_tap $? 22 'PublicListAchievements' test.out

#- 23 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'Hn0ayuGmrLaUIfGV' \
    --namespace $AB_NAMESPACE \
    --language 'ak28w2BgHZoLAEon' \
    > test.out 2>&1
eval_tap $? 23 'PublicGetAchievement' test.out

#- 24 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'QCiqFCH5hWP9xZaG' \
    --limit '92' \
    --offset '2' \
    --sortBy 'achievedAt:asc' \
    --status 'iGOnqqLj0TY93qHJ' \
    --tags '["yjFQiwBcCSOIjCye", "WjDhZ5sQxpnK2k6J", "iF7PNPNI50uFf9Re"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListGlobalAchievements' test.out

#- 25 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'RrUMXukWjhlogBPP' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '53' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 25 'ListGlobalAchievementContributors' test.out

#- 26 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --name 'lAiXmi56iBchaQiR' \
    --offset '13' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListTags' test.out

#- 27 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '0STJugGiZxJsVNr9' \
    --limit '59' \
    --offset '23' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt:desc' \
    --tags '["ZnScEB0iP0p5r8EI", "Y73SnLDUpVFdU5Xm", "eM0ts7w5lPOPKJVj"]' \
    > test.out 2>&1
eval_tap $? 27 'PublicListUserAchievements' test.out

#- 28 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'A0e4A3LkDht8olaV' \
    --body '{"achievementCodes": ["KhLxozxhdw5yjImS", "Y27wEXJnoFRsDYbX", "jLjvfKib9BUNBgxN"]}' \
    > test.out 2>&1
eval_tap $? 28 'PublicBulkUnlockAchievement' test.out

#- 29 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'Fet6xEYZXStiI2zM' \
    --namespace $AB_NAMESPACE \
    --userId 'OzRROygLSMBBNpyf' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnlockAchievement' test.out

#- 30 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'U1r1LRcCGmiA0KyD' \
    --achievementCodes 'dlL8P9OHmH98Exsh' \
    --limit '56' \
    --offset '19' \
    --sortBy 'contributedValue:asc' \
    --tags '["3axSZyxkF1dwrE85", "RvSIDZOyAvROhL5U", "dNHxzOXgiMQ22kif"]' \
    > test.out 2>&1
eval_tap $? 30 'ListUserContributions' test.out

#- 31 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '20U5lMou2TML5Dop' \
    --namespace $AB_NAMESPACE \
    --userId 'HFEIoYVahG8T6aSe' \
    > test.out 2>&1
eval_tap $? 31 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE