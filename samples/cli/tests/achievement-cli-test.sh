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
    --global 'false' \
    --limit '21' \
    --offset '6' \
    --sortBy 'listOrder:desc' \
    --tags '["eP5s34a2nq14mIoB", "zMbuBT4u4rFrKmZb", "JV9bVr06xogfztaE"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "OJTz0F4Zxd31dJ8j", "customAttributes": {"rXvY9doIv9BuzhFZ": {}, "4d8kOLslmpHximug": {}, "9GkkM7pwux2zpXlO": {}}, "defaultLanguage": "9wNFtuLP8I2VQTWm", "description": {"tOpi9lHPSi4AvknI": "zSb8CCE66Esawo8w", "KmQkWyEkKgVAKnum": "iUA1xWXK2sZOJmzZ", "ymj8qYVPoZy1uCbm": "rhnIoEf55Lb6m1mT"}, "global": true, "goalValue": 0.0053918401906730695, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "B0Trr990ABorBnYx", "url": "GZ0dRj2q33CcLUhE"}, {"slug": "2OzvYimGQbo5OPUw", "url": "qLL5QQNgg0KjLMm2"}, {"slug": "MOACw0BOQocF90CH", "url": "DRrFPBVRYDUob2al"}], "name": {"2pgOFKYCjaDUmH7o": "sPR6pELctOlPunQL", "liod6IdFmgPrZuaB": "uXdpBJzWmn2J760j", "xJ8C2hUh8B0b0BXa": "qOsZBsrfQvfurpuo"}, "statCode": "ZluuoAmLAMv6AbQ8", "tags": ["u5nqZ9m6GBE2qJnq", "hZc9dWVyPqZcjNN7", "WcdxteCaudCra3kU"], "unlockedIcons": [{"slug": "zDkuXRCQAnyqpFn8", "url": "HN0yj1BvwfN654vC"}, {"slug": "bPp1hCaLGlA3gwCR", "url": "Lnkh7f7TwBZV1ZKu"}, {"slug": "FwXXqD2c7HR7Xtxi", "url": "Ljs14GZcRh5y2aa2"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["cSB62Vs2q27rugu5", "W2ghUnyWNrNs0QLe", "TKwtTou3oLVU3jrr"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'aJ7zVjVDsEecgLaL' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'sQE60kE9fNvjty2z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'y5QkFQLQCz4dmGu9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"KYY2GXNC323hmxK4": {}, "e2AMchsu6teuCI3k": {}, "x2yg98ErjLGyrM8Z": {}}, "defaultLanguage": "nQ8RCfHxePDUzHGR", "description": {"GCd4Ndhu08pl1RSD": "OGERYkpc0q706B4P", "qUwKgahKNx83Tpht": "HtWXjk8ZOySieztT", "cSMZwUNQlNK69pna": "VGEEItSHkOtsZ40z"}, "global": true, "goalValue": 0.011583610674446132, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "ICqk4y4EKaUbcXz6", "url": "0gQTvIkjQ4oMyaW0"}, {"slug": "tuWxjfcRUgsiekv9", "url": "2KMxPcNBpa8Qxeqm"}, {"slug": "ge3Jur0DTkmPL4A3", "url": "JTzSR0ero2ZFf1m5"}], "name": {"CPYtwJhOjzuiYNYX": "283yFEr9pD5t1xXt", "F7ilZCsL4x277lzg": "keX53QRpHlP33ndP", "ZGdAlkeYPUh39ca5": "KNbt0jvXZ56EY4Xp"}, "statCode": "j7ZLc8fc77mgpqg8", "tags": ["tHJhc7vaDqtSzuFj", "6fVrGNLknEww9cfa", "s5mPMn7nhQ1lNHNF"], "unlockedIcons": [{"slug": "m6gQJzSQifEClau9", "url": "Lgx2Ki2YSshfGzbf"}, {"slug": "GsZ1G0j3yWkQ712a", "url": "gXc1ThbUzQRI3Qrw"}, {"slug": "eAgRBCbgwNRP29vN", "url": "Lwb72j2Hi23NLQZ0"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Gdx7bk3fswrwGiw6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '6b8hBTX0Si9oU9uh' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 56}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'oWVn21JD2JdwOZaZ' \
    --limit '22' \
    --offset '100' \
    --sortBy 'dFlK4lYJv6fXwVx3' \
    --status '7KW3v5EXLF4qT1GE' \
    --tags '["Yzkc4xcYdLLNPbuq", "yeKAKJle2iauDx98", "a8EsrF9k5qhgnKGy"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'mC46XR4DATOxGFRi' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '4' \
    --sortBy 'RwtBYPsw5g6eXEP7' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'k6XN1YhF5AfmCHoD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "EtEaLEJ8d5ANys0b", "eventData": {"eventName": "uK5P5WxzPDCRvmEq", "properties": {"qVUOoiY5Mj14M4Ii": {}, "gK9EIRKEBXkwWHIT": {}, "M5mUqTRAIG8a0HJ9": {}}}, "eventId": "L2oJ3EWrzVCGkd2r", "version": "rT264zgsIMx4Nd3E"}, {"dateTime": "eKwmyvnA5ymNTSdi", "eventData": {"eventName": "Jf2CzNVdmyaMlYoX", "properties": {"QmyKtQUEyMVT65H3": {}, "bfpsN0VFETnuzCH5": {}, "v0nJwNYTP9Pvc39x": {}}}, "eventId": "JnWan2S2ERXeV0Mk", "version": "iBaOkNJ7yhMvzH9S"}, {"dateTime": "dGHAg4yQMhtk3gRb", "eventData": {"eventName": "fFYg79ERuQLkft6q", "properties": {"QVylwhX0Xy1RnTG5": {}, "4bVjqsao51iXL3QL": {}, "RJuCN9JbOcVaQhRh": {}}}, "eventId": "1QD8n6GVIg4WQmdu", "version": "KknMFV3PdaNsSxUd"}], "thirdPartyUserId": "aw6jHHncu6xjKmUE", "userId": "OvkCzpc9TSQ5IZgA"}, {"events": [{"dateTime": "1nmajpvD8p2rtqZb", "eventData": {"eventName": "GYP6qBk592GOV4Me", "properties": {"oHq6Cxr3p53cMubi": {}, "SLmpMDJVUArH0VLa": {}, "JaJ1NPPdeQazwtVK": {}}}, "eventId": "pHIbSyDUgsAWmxCU", "version": "m0MNpkpeL6JI8NXT"}, {"dateTime": "kLYs4lK6Jc9ACgBr", "eventData": {"eventName": "qDzKA88WNJapDfDj", "properties": {"EN4SeZIXGkar4AvX": {}, "GTe53LKkWDxP7H4f": {}, "ddvo70eoPPSc2QRJ": {}}}, "eventId": "ofHnoXTPzI6JDZAp", "version": "5jrfwaLVAbbViyZq"}, {"dateTime": "IieLnBMS2nARu9Di", "eventData": {"eventName": "qmaBhYe8Z70EfDyw", "properties": {"ROKfXRYzIzPrsUSp": {}, "4QrFOBS2Gm3sZtUB": {}, "67SysEgaIOMyEzUD": {}}}, "eventId": "qenCpIvBlNzBz4SF", "version": "NjaOizZ3hosSatCf"}], "thirdPartyUserId": "pRcw3V6Lu2ToTVOu", "userId": "ZQzABZVwGmRldrcr"}, {"events": [{"dateTime": "TXWUNjzYXvuzUw7m", "eventData": {"eventName": "dDA70HjCN45MT1eL", "properties": {"56gwWDvyS9CPecb4": {}, "H4QOXEwaDETCT5Fg": {}, "UUao85xjEgxOeMY9": {}}}, "eventId": "GPBouYyvLLPB20Y1", "version": "LVmOwrfwAAkPLM9S"}, {"dateTime": "M7wNoSOf8zBbHPs2", "eventData": {"eventName": "xE7WWCsnuwxGJeUe", "properties": {"EXAwFw2fRVRPCpZP": {}, "SQHgFvb9LLLG0Nt4": {}, "6SyxFJATArRHeqgN": {}}}, "eventId": "Ikmq0OQ1KhsclcgF", "version": "ByGx96ZHecf1hyLX"}, {"dateTime": "mzUNkQd4jhe7kahA", "eventData": {"eventName": "gDPJhMgRfOJOXpGi", "properties": {"Im0ELSRCcQxEjzuo": {}, "hIlpimSljExPTuzc": {}, "XB8IOpND9tHamkZf": {}}}, "eventId": "jyqnwwVt58PLDUtL", "version": "J7C1PHdJoRuDrhgy"}], "thirdPartyUserId": "kuYs7RY7JAoMLCFd", "userId": "YnY2h5QEvMkLdxlf"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --name 'sPLW5HVf5si0xwIE' \
    --offset '10' \
    --sortBy 'vFNLTl9tkX5szD5f' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'y6Oi9gahaXSJQfBy' \
    --limit '88' \
    --offset '57' \
    --preferUnlocked 'false' \
    --sortBy 'jJS4wcRc3tQx9uNl' \
    --tags '["FbYe1WfWp2IIxaAE", "PglMfiplb8wY2s8z", "xCSORooNkGu9cO0t"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'lThggyDv5zzCbSUU' \
    --namespace $AB_NAMESPACE \
    --userId 'UBbj9MqVkBa7EkCU' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'Ua3PZ1rYWzwSk6iZ' \
    --namespace $AB_NAMESPACE \
    --userId 'HK4ggvrHk8NCIhWv' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'BeKXpSj70jg3qlti' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'B2SGjA28X8xKGV7w' \
    --achievementCodes 'Bm5DIAxXGHko7U0W' \
    --limit '13' \
    --offset '62' \
    --sortBy '0v4nLCsUGunB0G7f' \
    --tags '["tsweK5EZK89Yta6s", "8UTmLPg1f1tS2TSy", "E80WgBS8uvATg2P7"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '60' \
    --offset '96' \
    --sortBy 'listOrder' \
    --tags '["af4aCk54SJjMcLXt", "g5WTTyVodxDKlWhm", "nB29t2bJFy0ZxxIf"]' \
    --language 'oYdI8j7Npukr29XP' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'Cr4EXCmPd57uNwy8' \
    --namespace $AB_NAMESPACE \
    --language 'OA4KrtqpkBGFix2Y' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '93NqTWYuhgA4kQow' \
    --limit '16' \
    --offset '13' \
    --sortBy '0fv2QclI3tqGyuV8' \
    --status 'zst2s0Y8xa5FzlHu' \
    --tags '["iTnWGIbNW6OBg55v", "M75LrZyddqtEHM0k", "SvuU0KnQn8gllz6v"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'HeYhsfdxofCXXR7X' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '44' \
    --sortBy 'hq96jFuoZv8hPUkD' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'OK6S3Wyo3SR22s5w' \
    --offset '37' \
    --sortBy 'qNjCReHFWxBqvP7S' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'P1k7zl2ojtIKokKu' \
    --limit '98' \
    --offset '53' \
    --preferUnlocked 'false' \
    --sortBy '5MAGKUyucstwfAQt' \
    --tags '["kUmDVr1FLO1fdpQ3", "YBbpDpL8M46uIybz", "PDtYvP394Bq9ktpH"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'EoG98Kgwe9AmKrtQ' \
    --namespace $AB_NAMESPACE \
    --userId 'TMTCx2W8VWqlM0jk' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'yYJpdsWud8YQERkF' \
    --achievementCodes 'lYba311qSon1dZN5' \
    --limit '56' \
    --offset '82' \
    --sortBy 'rFApOh9NrIIjlmF8' \
    --tags '["jIthMVahxuE43FGy", "OwsnDjGKlIxlJj8B", "KOXsXem9MQBR0j7d"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'QaeDqXIBUi1KnCxb' \
    --namespace $AB_NAMESPACE \
    --userId 'JnfJVRAojF6ObfLH' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE