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
echo "1..27"

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
    --limit '78' \
    --offset '64' \
    --sortBy 'updatedAt:desc' \
    --tags '["VdhXOliUAwBlcccl", "f7A2mfzS9kt55MTr", "r4DpfpghlvVP8cQS"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "jDd9qpBK8WEjcjKy", "customAttributes": {"hFMLLjbiYlc91FRc": {}, "Qqy9fkPTWUdz1ORL": {}, "aOFBMulKFMMBo2c9": {}}, "defaultLanguage": "VbQ6VSiLg1DyhDyo", "description": {"4stOgfAJe9x5mCEJ": "U6FeeSj7AOwLXutd", "JJDgPnLbegO9ae2R": "LR61TeEJ3VnOmhax", "h2GDyGXMd0Q6jXk7": "mUuwLa9GLoOSIuLP"}, "global": false, "goalValue": 0.06779653106924222, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "Zt7bopmO2YsISxSS", "url": "osLlhID20dw3xS9q"}, {"slug": "3fzw5KuMp0B4z9ej", "url": "BfLKQ58faLjdodem"}, {"slug": "1nKGIvcMCyPU8Cvh", "url": "ZPRsDxGQO1yFiQAg"}], "name": {"gNWXOCGHBKg60QGC": "XhoMGXKpOOwHtiCK", "fNrPCecFfmBLJn3b": "r0GD3f8ePpTe3L0H", "FSconmRfI1dmcSOW": "Dlxp7NKrkDA42OlV"}, "statCode": "inghHrxcQQzEIoUA", "tags": ["yNh2KFI3wpzBE1S0", "Ck0PK0u6Zhb47VEH", "lqdSpTC4YJTjyhZP"], "unlockedIcons": [{"slug": "mKHdfS5i9U1b8K8u", "url": "8smaP1caxDiHiN3f"}, {"slug": "7sUFhHIpfGWiSfcA", "url": "WMBv97KpzM6IYZKl"}, {"slug": "WSlgXd5X20B7reyU", "url": "vGIcYcOcy7EKSPWH"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["peOqBno0Q1stTfIB", "ljzBnkKmdaQpug2J", "Oj7uNhkJxzMl525I"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '0K3g5dJGCenYdChM' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'yCYsWEcwCs7OHfGb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'qAcncQqS9iPAWA1F' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"OoPJdNQbYXjZAfNT": {}, "8mgrYqKo0LjsCPsT": {}, "pwMc5zXudKwM1Z8u": {}}, "defaultLanguage": "IqrfoU9nSvIUq4LI", "description": {"t6os2KVjOBuB92ew": "4efoE2qrVTz8BS4S", "Ogzf40UivAAEkzw4": "75jBjUzXyxalo0s1", "hVfWBJRVVURLaxy9": "ArV8UyklNXHuNZLX"}, "global": true, "goalValue": 0.7052407962441412, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "jzFUaGWqFVSdNxTR", "url": "v811h4FoJsWmMPTZ"}, {"slug": "GHI8d6DKyRh19zhG", "url": "2kPpDaA13SqqzII8"}, {"slug": "L9LjYmqzrGbUpBp2", "url": "MjQlRlYhH0L9rbcF"}], "name": {"bEzXdMGfg5FIim3N": "jJepSZ6MKPPUCms0", "qsnqpUrMBwnECYiZ": "Oe9PnUOnn4uiwsK5", "pUJJsM23pxjOqQc0": "hDz3mobxGTFHmHp4"}, "statCode": "QASRdZANlr9NGqF0", "tags": ["7iTcWKeihVm4xLTh", "DLXYdZQsjyK0984O", "N42zo7iQWanLEIQC"], "unlockedIcons": [{"slug": "dl8CF0hLWCMu3TJb", "url": "zGA6Ccmp3qCACxod"}, {"slug": "0rR9Jn3HDaxeap7z", "url": "zG1d7cu6bLTNA8WC"}, {"slug": "PvXmo3thhQnK5kdV", "url": "vi5V0QGkm5qAHypQ"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Q8x54SVneoyprsGW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'OzC8F0P7RsnFsrIC' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 76}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '1qbazYJ5S7miJxuh' \
    --limit '0' \
    --offset '97' \
    --sortBy 'G433aqFraeUjEJ0o' \
    --status 'rc1je7j9rHXxMTMN' \
    --tags '["HpSoieaDNO5YT4yg", "7qgjW47d6hU4lNMQ", "OvLu0mK88KksXpgA"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'wB6ddmA2KppIWotx' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '76' \
    --sortBy 'tJlPhg6l7OXAiDmh' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'Jq7pB88Ajd0R7QY2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'ZqUazTQHGxdv5JRC' \
    --offset '21' \
    --sortBy 'fzcIXz9XHm9h6x0n' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'xTbyCSKfYV4DYPwh' \
    --limit '86' \
    --offset '74' \
    --preferUnlocked 'false' \
    --sortBy 'wAIo1aIubSw4SPvn' \
    --tags '["aSRk6U6IGtW8XOTH", "6IvVPxUnTI9F3zKp", "5M2cbJC10taJt2cv"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'apjdczW4xYNktBdF' \
    --namespace $AB_NAMESPACE \
    --userId 'MB8c2ZRGZUcVNwgy' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '3OalSCCl6vaP2LnH' \
    --namespace $AB_NAMESPACE \
    --userId 'XqHnbj4OQ8Ey71gI' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '0iBPezJsjFa4BSh6' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'rrqmvhxlxZDZa6px' \
    --achievementCodes '8GZocdjyaPnk5pOd' \
    --limit '47' \
    --offset '40' \
    --sortBy 'PJ9bZ8VcliE9k59W' \
    --tags '["yuGIkw37iae7TdQK", "vYf81tcuZZYHWdkW", "N5ToRRJbWlIAkAlJ"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '74' \
    --offset '17' \
    --sortBy 'createdAt:desc' \
    --tags '["PvU20TKWz6rKoJnk", "LOCRJLtgU4gvHy2f", "JhCI4rCqe4460i0U"]' \
    --language 'fkRjHDuwtMEM3ui7' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '5qkERwliv6aSt8IN' \
    --namespace $AB_NAMESPACE \
    --language 'b652erLCmdGVCd56' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '6VuC736PDPR63VM8' \
    --limit '4' \
    --offset '11' \
    --sortBy 'Jl57KoCLTaWNSdSE' \
    --status 'YuxbBiIOASl28ncM' \
    --tags '["gdPhIgCUAu7gA6Nw", "LzPa1IvUgsvOZLgN", "q5etwsKbossRgjKx"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'LpgGB9QlOUHaHSdf' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '83' \
    --sortBy 'h1HwIAcxRNwM7RTE' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --name 'LEYNxeg0wzrs8rYF' \
    --offset '4' \
    --sortBy 'fWdOf1LSU8QjwHOq' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'QG2r1v14Hkce5dA2' \
    --limit '82' \
    --offset '2' \
    --preferUnlocked 'false' \
    --sortBy '0Jrq9f3ZLat8MGL5' \
    --tags '["MeRlN0vtu9wipATZ", "zT9CfFOlIaqiNIPO", "7l3DGv11WkzTmchg"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'BjPxawgsesS9PUe5' \
    --namespace $AB_NAMESPACE \
    --userId 'Efx7Tkp1yIlzDnp4' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'JtYRJ81gm0jcfegg' \
    --achievementCodes 'bIp5rRb18LRMyuJZ' \
    --limit '91' \
    --offset '99' \
    --sortBy 'w7x4cg49yotcLpQC' \
    --tags '["xEiZqvbaz40xx7q8", "PJ9chmk9JQkUPqUR", "69ClQiQM1rWFZFPF"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'zZNgR8YQNtBfWhlS' \
    --namespace $AB_NAMESPACE \
    --userId 'dsvPr3M7deccdgFA' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE