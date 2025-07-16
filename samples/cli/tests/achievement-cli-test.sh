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
    --global 'true' \
    --limit '95' \
    --offset '8' \
    --sortBy 'listOrder' \
    --tags '["XHfXxZ58mMs5EsP8", "622NdIEJ4urQtq7Z", "AoswGFOr8nmt9SMd"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "rsoFIKIVuPXUC79G", "customAttributes": {"vWyXpNU3q6m6OLNI": {}, "apjAiCIHbsiwTIgl": {}, "SNT25BA8QIGCK1j7": {}}, "defaultLanguage": "uBA0YUyKd71reH36", "description": {"GC4li9f7MFXwUuxS": "yIJ4PwgQeMMIvwYB", "xJOYGNZlofYVCs09": "liOrdABRqTcdWjOM", "ugv0iT8SYY5CmjnL": "LyzCDaMcK2NhAgNc"}, "global": false, "goalValue": 0.8859389662073972, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "i3DzxDMw9fBva8yT", "url": "m5roWplBE4mPqeRl"}, {"slug": "EOon8tF5J9U4froZ", "url": "FBAn2usQmk8J8ZGr"}, {"slug": "60hTVGmffSBDsoSc", "url": "GYZjqkkZGe08MojS"}], "name": {"2Who4liX8xkxi14J": "CvLpoOALg9kesTKo", "eGI8diFrokBHsUin": "T3mLIkrBNjQYnxPt", "PqDkirZVmG0cHuqs": "I95bCMJl8vnDCl5g"}, "statCode": "c6GTjkhmbBNXdSc4", "tags": ["7KeGcI2CMxna874a", "kEAufK8EVWb1AlI1", "31eQiPc8o76akGEp"], "unlockedIcons": [{"slug": "eujinWG1jyNR12OJ", "url": "DFDekMoIzBYNfhzl"}, {"slug": "cxS4sRuRRaVUE97K", "url": "E5ZnwQgJn6jLkGWq"}, {"slug": "sTtMU1Nlbi00Xzzr", "url": "iTpMgoRVb0gxYFWa"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["ae5voK5QaBfxP5Et", "vBCm7reD6BjBVBzk", "zj3bWHohazoIjPNL"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'sgsfFJpxvGnX2s8e' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'eXSmUjWDGfihHXGK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'MnGxHdU5OVbNvTZf' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"SjQ4xtU3oFIDMAuL": {}, "nwpoups2i7nzdVAx": {}, "jpwEZuhFw1fHCGiw": {}}, "defaultLanguage": "mdVG0BvlqqQDjioU", "description": {"CMoEbyx67yV8m7jX": "wsvTUYoplUUTaJt5", "i3yFIzpWfAQPvBqA": "jXm2y7PdkNrs6g0y", "ROWItcYNj24iXxUx": "O7xcsYDFh2YMCD5c"}, "global": false, "goalValue": 0.7736735861683991, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "YhwlssmBMyhYsCvm", "url": "lUKF5ytpKzP3prkF"}, {"slug": "D06bPSZq8LnXACe6", "url": "2GxAMt2Xk4cdQsRz"}, {"slug": "DK5TOKlT2IU42tAt", "url": "UxssZFYzbmdsbyRE"}], "name": {"5tZ1rPgxb7RjAGoj": "M9XnSfeYW370grPN", "EWQQ3vUsINB6cZET": "6zpmNMXx7SkipLmF", "D2YF1cFqFhTN03Pc": "xamcK4vXKB77ZIjo"}, "statCode": "WxU07dB5lplgaBVe", "tags": ["HFdlUk2KEUft0yD2", "ZxQ8DmOz4nSyfM8a", "kn8lbRpbGaGY95ta"], "unlockedIcons": [{"slug": "jlKBQHatJtYL92ny", "url": "hKJjt7uqHGQqCTWo"}, {"slug": "wXsUjzIcE6R7KNvm", "url": "RBoUGkfuQ0ctmbMf"}, {"slug": "oKbdxeDXvpQiwH9X", "url": "NPrttZGQoSVmNp8m"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'zL7HeiqJBTZLvH06' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'uNrvH4vkWeix044O' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 31}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'jAyookAJ3RqpbypS' \
    --limit '7' \
    --offset '57' \
    --sortBy 'createdAt:asc' \
    --status 'HVp9Co0PLtaSDots' \
    --tags '["crjrHCkAFTenQWbT", "5Ur33GZNuvZa2Ai7", "gxFseSVT9SaIBVqw"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'zL1WGWmmUqMnAWM0' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '87' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'XR1oKFPhES5Jz6Te' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "lL3OlzvCeo8EvvQw", "eventData": {"eventName": "8OheslPNe4wGPbCP", "properties": {"LfD72bLzvzSPDGuR": {}, "1Rfq4TJhgZfFQWom": {}, "WpYqpKVsdKeRCi2P": {}}}, "eventId": "T0BAOBqJoDMEIdAX", "version": "2Osw2DLoQ8UJpITy"}, {"dateTime": "maa2BinEVSrtTEKa", "eventData": {"eventName": "Vt46gD4UUC9v8Qzz", "properties": {"pNckqmFFIj2y3jh5": {}, "aVomE9lfX6Ha1GQX": {}, "rFUI33SuAwEju6CN": {}}}, "eventId": "KZROoqqXnt1UD1xD", "version": "8tGDiFpGtdlzMKcN"}, {"dateTime": "LBynVtv6tMf6Q1V6", "eventData": {"eventName": "7RKaJe2bQiPeZBIZ", "properties": {"H1FrHMsRn15UzFRc": {}, "hPb2DFWQJlu2pXVq": {}, "qCINTP9O7EfALg0b": {}}}, "eventId": "QHiGGNHCAacNIhQP", "version": "pbomRq69BDdJUU1f"}], "thirdPartyUserId": "jB7lzJbGEZIeed6e", "userId": "qs69CjU0L7vqUfDy"}, {"events": [{"dateTime": "qGjGgL5i76C4Y3Uw", "eventData": {"eventName": "Cr1WMOjQfOmimJoO", "properties": {"PxsuPlvQxhXNhQap": {}, "3U6b89tB5bhFqrSK": {}, "BktW80TM52INc6Qj": {}}}, "eventId": "Opi8lvhsm8pXLlbW", "version": "VIfy7yONU31svFPe"}, {"dateTime": "9x4ZgBH9voNUgQqF", "eventData": {"eventName": "xLlMrnJOuL3vaSX1", "properties": {"z2tr3S7y5BAbGaII": {}, "Wmi7Qz85HxWTHfQC": {}, "yz7IuSV0laCrZsnD": {}}}, "eventId": "tqYxGgb3lJQ8Xy3p", "version": "GEhXA71RPS4X1LBz"}, {"dateTime": "fA2VgIws1l762eMr", "eventData": {"eventName": "PDzXOY8SftXG5ZTy", "properties": {"fkSD8t73LGMIkm83": {}, "GQQhdOQ3pnaCz5zA": {}, "3dimkhQFgLT638TU": {}}}, "eventId": "idfrkg5sVWTTcmcJ", "version": "9OBHbQx5avJE0YG1"}], "thirdPartyUserId": "CqL1yFR2YNB4cLxk", "userId": "H6FlO9G4OLQljVoh"}, {"events": [{"dateTime": "kkKulZHn7FXmfhzd", "eventData": {"eventName": "sc4oJvHnahH1KKGx", "properties": {"8NneHrFfO7nYTBrG": {}, "2NxegE11Bu7vj3aU": {}, "K80ej1KBGLN3jQmG": {}}}, "eventId": "z2C05t7jzDnOgtKU", "version": "VNgllbwFLT5z1lJd"}, {"dateTime": "EaeWFXKCcG7Ackfb", "eventData": {"eventName": "5yTo2YPrSVY36rjx", "properties": {"5IA3qqdD6Gwe2Kqy": {}, "Rm7E0yeczeHlLAgO": {}, "3KPaOFhQ7CRxLLmq": {}}}, "eventId": "7qe6XTp2a1nBKY2i", "version": "0Hq58FXZ0paWuYej"}, {"dateTime": "t8kMQTixiWjifBAl", "eventData": {"eventName": "1wSuutgugXb2kpct", "properties": {"o6BDQtMjePZINzkA": {}, "4s0whATrnHflQwOE": {}, "Go6F0nLw7auZFKLK": {}}}, "eventId": "WTjVoDXE7hskXs9W", "version": "gXmMFVEJK3CnwiaF"}], "thirdPartyUserId": "tvxTsUFk4hcyYZRq", "userId": "RFgbm1xw0GBldwxR"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --name '0h1nUjC3SujSsGIl' \
    --offset '71' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'mlQ649KZNcmcEBvO' \
    --limit '70' \
    --offset '67' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:desc' \
    --tags '["mEfFtmTrrWsTbVRR", "rnpTUtZOsOeSeLV0", "pDIlw2c3OhV3TuN1"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'rQGqxsXqVOs7cJKi' \
    --body '{"achievementCodes": ["o8EHzpViiPxdbZqC", "PfDgjB1RGBmKxrG2", "bS6NXZzpRBn8IK0k"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'IcYgtUNuk532d7bQ' \
    --namespace $AB_NAMESPACE \
    --userId 'DEdR3i9CsYmMnRLD' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '4rKBK22xvt0AyqJL' \
    --namespace $AB_NAMESPACE \
    --userId 'oSqjY5SovQnVlan6' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'qnT7guz6bCwmXNQ6' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'C3eduXh9eTknM2Go' \
    --achievementCodes 'khOjQC0pmOfZOpyE' \
    --limit '11' \
    --offset '22' \
    --sortBy 'contributedValue:asc' \
    --tags '["xCCSL1sFSgd8bQ8U", "O4XYWqaKzW3RjoOH", "cDPrtBYJ4Nr9R2zK"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '92' \
    --offset '93' \
    --sortBy 'listOrder:desc' \
    --tags '["E8emLOj25fO795nl", "CpdTuL9fQbDgtRXs", "dUoKq8POjVLsuRQV"]' \
    --language 'fXmyrZ8n05QzuLpV' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'lJnPCIZj4NBGH1Y1' \
    --namespace $AB_NAMESPACE \
    --language 'P293Om6S2mBOPOKo' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'q8eRSSUDTnvamUkI' \
    --limit '28' \
    --offset '25' \
    --sortBy 'achievedAt' \
    --status 'y9ngR7V1eNlNEzB2' \
    --tags '["LtZPiw1qXRDblNR9", "3oRnbdGxH8CR7Ok8", "WnBAMaEPFspi1aTN"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'ZHldHd1LLzUupA5G' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '11' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --name 'SDskzoAk6c7FG1ng' \
    --offset '86' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '90Q6LnSm1SFvEoUC' \
    --limit '34' \
    --offset '59' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt' \
    --tags '["KZnkw6mSZ4p4AcAw", "r30xg03STrp6685P", "s5simrVSOJt8AG0r"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'z6x56IlyuJSd2kPO' \
    --body '{"achievementCodes": ["Fk5vNHICgd5xYyd8", "JbRPYGNUicdxkqxI", "xhTHridiLxA7LFur"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '74OO4as6ipaYLkxr' \
    --namespace $AB_NAMESPACE \
    --userId 'pGOsswsBixVACVtA' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '9Y9LakMDnbj8WsGv' \
    --achievementCodes 'v65BWunucTkYgiOX' \
    --limit '88' \
    --offset '32' \
    --sortBy 'contributedValue:asc' \
    --tags '["TG3ZP2NUxJBt6YB3", "iCyr7X8PGYgrtU4p", "sV5CDxwPHOFq4jen"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'LhbbyzM5lTsrnT4G' \
    --namespace $AB_NAMESPACE \
    --userId 'c05ByJGjZUk5b5Be' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE