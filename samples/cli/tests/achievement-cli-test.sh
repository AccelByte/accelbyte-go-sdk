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
echo "1..28"

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
    --limit '55' \
    --offset '31' \
    --sortBy 'listOrder:desc' \
    --tags '["YAJICz6MWBgcdSNl", "fE4WHSeOEd90QRCN", "KAOTEjcWX8kOGeC9"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "WIMoSzNwwK0rap9A", "customAttributes": {"2w63yCBK9qs9vkYl": {}, "ad0LlMXvnT9JWESG": {}, "ub3OVt63QJjJmrZp": {}}, "defaultLanguage": "UTIlB8xJzo8QTbMs", "description": {"Syq0xSvZ9uyiONQQ": "LqYooGbSfseFp7UV", "0aGo1CrLSEHpw7Aw": "jBYEx2plJ7LcSjE2", "A7E61ezpuAmtcm5K": "zABSmDUEy4X4m84k"}, "global": false, "goalValue": 0.5348193164730525, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "jmHl4eJQSrvl76UN", "url": "aSJG7HKSvgSrgWmV"}, {"slug": "LZmYRAjB1VXZShjd", "url": "qvKDc8ASqSc0KrMb"}, {"slug": "REviicLFE7awhfeL", "url": "cXawxaj9seChp7B4"}], "name": {"erqx7Jslubn6mdKz": "X0785bL50i2r58BH", "0OE2g50XcELrLkXu": "F5R0MLet8WHhvKwv", "deE89UTN70GhJJYg": "Js2M1QOyxL8AWgcc"}, "statCode": "Zbloixf1ATTkAo2l", "tags": ["yC3P8iljsNNhYd1v", "lkDZr8W3QJlBypf7", "wsPqFZUW8NtezVEO"], "unlockedIcons": [{"slug": "9VcdjD8gKZiAAjKv", "url": "5OEt2EzYAUgnLG7R"}, {"slug": "ld23ABvlCjfFs4vK", "url": "K7nL0xdkj27EIgVM"}, {"slug": "F9q2oDodW3DNhauM", "url": "gUJlQh1GY9vXSJmY"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["PY6g2KicdV7cTLz1", "OO9u7Hb67MZS3p9D", "OwTbQz4x1K6QMvlI"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'QFyjyBJIEz1wNjEz' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'sUhsM7SeLSv5sskX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'p2xbPnxVTU1lVCkp' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"hdOvg4KPnlHodX0E": {}, "xHUf3PYTl3oepb6W": {}, "wxdDywMLoSqXULcr": {}}, "defaultLanguage": "T8m8M2aD4vc9wQSp", "description": {"qqLtYBacIfqKqEkl": "bvHD7no5jVEjwSyt", "5OB02ZwrI9DTHjQc": "V0SNrkHiegmPIHTn", "kctNQUVrUJPSY9jW": "rQccOTpfoD19awxx"}, "global": true, "goalValue": 0.3584794506947846, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "noNxAzXmFi47ShQP", "url": "Hc2eoLb2saMLkCp1"}, {"slug": "OnvHBFP3HNtoBkt4", "url": "736nlhF7qmAtKidq"}, {"slug": "3HCKv4TedQaVzDGE", "url": "7fiaYUvwFKHv5S76"}], "name": {"8ChVBNeq0DRa8hMY": "GvEFRkDMv2CFawxi", "F8vtJAzoSWry8KMd": "FNpUBqZZIPL6Kdv5", "X9jiI1TrhZ2AkOcf": "m2R2zMI4PULSgy39"}, "statCode": "YvZM0MEb6XOcF0x1", "tags": ["GwsN2WrSUt2YbKDM", "kVKyiDgpPsGrhPsw", "zLuVCODauRZTzx0L"], "unlockedIcons": [{"slug": "CCA9WoYq53OQn1Oo", "url": "Ajygw6HFIRUv7ebu"}, {"slug": "hSYIDS4ZgVCc1LUu", "url": "IHkYiUZIkZ2QmPhw"}, {"slug": "WZ5NgmijXJeB3Bnx", "url": "AjmOKUo3sYCjNLjm"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'QU7cy2dHWp91vwf9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '4VBOpMi6ky8bhwmJ' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 28}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'RqNnS7Zr09OaIfa2' \
    --limit '32' \
    --offset '61' \
    --sortBy 'qchIFjuJ1CWCJM4R' \
    --status 'BxgA2EPldu1s2FpM' \
    --tags '["NNnIMaX7fhOTqaWa", "gjCyYIU1nGvsE36Y", "dqKrLoiiOjMZsSvC"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'XEJRu5eEqPztcOlF' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '77' \
    --sortBy 'pLR3RFJQohuVS2eq' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'wKw4Ruq1c62RQlG3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "k8lIRQGHudXQq0hX", "eventData": {"eventName": "mHpJltxS8WGxUwN1", "properties": {"kbnVMwzZeKlyBCom": {}, "SajtaN0mg3pOpT1Y": {}, "4mqtrMoMpTJTHeSV": {}}}, "eventId": "iEK13X1dnnVWmQSu", "version": "ZbpievNqjm0DE12w"}, {"dateTime": "AhRrKVyLhtfemCes", "eventData": {"eventName": "4Vh1FiDFbsmWqOoN", "properties": {"5CX0jIFIAF681mn7": {}, "riE6Uw7bitK5xkLZ": {}, "pSKWx0hHkzbEqLGS": {}}}, "eventId": "OEUg8U72I4EKE0r0", "version": "zDrufSPe2M1XLv1k"}, {"dateTime": "21Q5s3GfvRvuPHS8", "eventData": {"eventName": "ljWiiXT4VNPIJW9W", "properties": {"N1Qg6EAzSmb3vNgy": {}, "0putzXvEI6rpkyn3": {}, "YmAdIHcNUGRfb1Ya": {}}}, "eventId": "dPe65IVAGOxAjLHc", "version": "w4QsjssCDgLSfj1Q"}], "thirdPartyUserId": "w40zaiUH7q6EVjtE", "userId": "4Xe9NPYpQNVhtCpt"}, {"events": [{"dateTime": "1eREm0rnDqLjNrci", "eventData": {"eventName": "dQjHheple67hd2kB", "properties": {"w7b4wXcsjZVSzajP": {}, "iT2PchtmsW9KRGQY": {}, "DNIzUKrJI3xiKAHy": {}}}, "eventId": "rrEZkvB2rpQL2nAD", "version": "E5FFoTco5VZb1GHZ"}, {"dateTime": "DcqjekKpD6eCUULQ", "eventData": {"eventName": "9AR470BYlehDzXb1", "properties": {"qYlIeRxPhVTlakLP": {}, "S7kYJc43BDZ7g4mN": {}, "a8UIrKXIk6cU2cWZ": {}}}, "eventId": "AKPy4GBdnEHaVDHk", "version": "gdWpNpTLZ52HNVuU"}, {"dateTime": "JsgzTqztjRVW69yC", "eventData": {"eventName": "RmTgNjZN761hHcsR", "properties": {"SIAtu4FyTeGYXDc9": {}, "o6jiw8eGeofERuV6": {}, "28s4kkWbVMwKqZFx": {}}}, "eventId": "P1LZrAOttNkOp23Q", "version": "1HrQ5xY3BoyyfPXI"}], "thirdPartyUserId": "NPtWzYk3mOhdBRXd", "userId": "cGICNlKzMgfMYcqn"}, {"events": [{"dateTime": "PwyFXyF0F02qvP8G", "eventData": {"eventName": "D9tf6aATbqLFeh3g", "properties": {"Ssegsr101KHe9Wrq": {}, "XbSOJ9fRuELYIPz5": {}, "w3MIOsLzsu86Q7qj": {}}}, "eventId": "HutXL0Pjtjfdym0r", "version": "X0SVpPFbW5eptnJx"}, {"dateTime": "2X3c7GullpfbG72J", "eventData": {"eventName": "NeDqVvx1XBA72En3", "properties": {"wsJQRXKWugfpuBMP": {}, "rZOpVNP8LmV7IgWw": {}, "oNjIZmD9Hyr3OWNU": {}}}, "eventId": "ozQnGgeiu96bgtBU", "version": "tpmDWtfuzTBDKUt5"}, {"dateTime": "94L9yI2dN8YUPIs2", "eventData": {"eventName": "SIJSZVG8ORfJR0KA", "properties": {"anetEuQHPBHVD2aZ": {}, "SPXl8FgCbvcYuQiv": {}, "KATPQJjjSIHgv2sM": {}}}, "eventId": "0FBiSmaFut8WH0xl", "version": "TOLfwZO7PeBkSqeN"}], "thirdPartyUserId": "7Zb2ieuaoYGqe9xp", "userId": "eTt1ALHEOK23NCFM"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --name 'nSlofgngy5vY99a6' \
    --offset '2' \
    --sortBy 'l612OoMJycI7y2Y0' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Y1t621cqwYBi7tTZ' \
    --limit '1' \
    --offset '53' \
    --preferUnlocked 'false' \
    --sortBy 'sw1O8g6fjYybWFln' \
    --tags '["nfV0vDpvtLplVF3U", "lwVNbXQZivV69pLx", "yOxo6rhGjXFUyPUY"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'yzux0Ev3rjJ7rvXo' \
    --namespace $AB_NAMESPACE \
    --userId 'w46Ms6M8twNEDpFi' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'MoLaBSDwi3SJOabE' \
    --namespace $AB_NAMESPACE \
    --userId 'xLQ8viugAD3aNupM' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'SE4QB81xrXZjjfho' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'bqYMZsPUc5YRtWOj' \
    --achievementCodes 'PGBofKaWsazdwdxr' \
    --limit '24' \
    --offset '86' \
    --sortBy 'd1X8zq7U739pgS5x' \
    --tags '["OV0iVtFJ7SnKpYG0", "06vtbOUMpzQhKYnB", "nc3FblIUuBxgi8lx"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '35' \
    --offset '88' \
    --sortBy 'listOrder:desc' \
    --tags '["ZhbpC5BnS2S1MZa4", "UQcX3jU200JE2cEa", "ZzEwzT00pK1v5yP6"]' \
    --language 'xEksRLXH085MPcXS' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'bXvVUzJ1Rp4OvV3v' \
    --namespace $AB_NAMESPACE \
    --language 'h5kCdCK94uzPtPP0' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ZTWaEgGdsg6us6hK' \
    --limit '18' \
    --offset '39' \
    --sortBy 'IyORmMRKYEOpwPEU' \
    --status '9lLmvhQpirDBcIDm' \
    --tags '["r2fIXF9ksgJcajU4", "sFNJoDL5p8DBQyUi", "ehx1UzAyJGgGiBZ0"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'PKZsqi3dUWVdTUNf' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '77' \
    --sortBy '6En1UYlEeDXXdTca' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --name '6SGwcdNbJFb9vJ5Q' \
    --offset '94' \
    --sortBy 'V83EB20uRuDVy2WX' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'uSQnGJ5PLPu9KglO' \
    --limit '9' \
    --offset '77' \
    --preferUnlocked 'false' \
    --sortBy 'IqTNZ6ZRiTvaniEf' \
    --tags '["qoI4shKtLI2n1zBE", "BPIGoVtg95VeJT2Y", "3hH1mp8yGbyJY1WT"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'nLaXY2HxzvgQ4J4R' \
    --namespace $AB_NAMESPACE \
    --userId 'wjLXlEB0I3q0wr3a' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'gxrTgJu6weRDqQcp' \
    --achievementCodes 'KNDHqHDwO9VoWnqy' \
    --limit '38' \
    --offset '73' \
    --sortBy 'PBvJLNhhbfY30xpR' \
    --tags '["nfWmSWRo9blnYdzD", "Q6hwEJzQtkLeISer", "cijNfQjhVZkCuWFQ"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'rOVNF0G0MQslgmC1' \
    --namespace $AB_NAMESPACE \
    --userId 'SoU1vNkv7w70H5O5' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE