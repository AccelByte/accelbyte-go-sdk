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
    --limit '86' \
    --offset '43' \
    --sortBy 'createdAt:desc' \
    --tags '["oPCJdFUq3GTZRwdY", "pFDqOPjvMBUP2qP4", "d7NgJjaV7EQOq6aI"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "7zwrzRsCPfFphU0T", "customAttributes": {"fqLO5405x0iBRoL5": {}, "xMykmNWbnXuTCOX2": {}, "UohNHi9hN2u3LrSa": {}}, "defaultLanguage": "VG0lHHbAgPGKRxoN", "description": {"jFRITJuEwSdC4fF6": "C3bTlX45flATNQlx", "c7Kz2l51UWP0rpBN": "N2FGS5PnahCEdUxV", "7TLdcCUcSfVhr7IE": "j7tsZSBBKTA071gE"}, "global": true, "goalValue": 0.6932536466572587, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "SCm6PbxdgPsUFDy2", "url": "NPWSyHHXl3aLUIxX"}, {"slug": "WN7OSqGOTaF4D0nD", "url": "oVAuK76AxT4cEhkN"}, {"slug": "AxtCTTudtHGCuOYQ", "url": "uBK89V3PGARXAcJ6"}], "name": {"v4FwW7Q1ziLCATRP": "iouDjdCGdewRKMGU", "drHaU7xBpgc4AKZH": "Qx1cdSIfmYUcy8Zr", "6twSPVMCnvsZFM68": "6UFU7WLOpxAKLWQV"}, "statCode": "0e4PQJ4xMTTxMafR", "tags": ["UpDWXSLfoMaHtiNh", "rfiAkBOazPhqYh1w", "QAAf09rRsWNKrv3R"], "unlockedIcons": [{"slug": "3jGEyTBVBVIYJJuK", "url": "qdEx1mjhvtd1aw00"}, {"slug": "JoHc3iAdjZZaJtq1", "url": "1w7PhAOom76mSUIQ"}, {"slug": "SXxdVsMR5pPfLyX0", "url": "Ag3satlmJ1ZsmByz"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["NIUzV3R8iFSH5QIb", "lzOlooCaJ6u5YsuD", "BjT3j0U8mNCR2wRh"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'XgpAJbQKM0edp0MD' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '5zn6nPFUlJ3qTs9H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'LoEu5HUnkUteizpH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Me9xUE288rIWMZdd": {}, "mVLmjFERC3zSDi5U": {}, "K3wAgkv7xt0rrxPE": {}}, "defaultLanguage": "RNgy3dYTDz6d9SWR", "description": {"QU4oHiSrpfeZEynx": "GloiyGrhHyz4JLJX", "bqvMaKsM0jvFzOWD": "BVPQYxctN0y0hqnq", "mmr5UcECTDlrO4Gi": "9TbZpM9iNZQ6Bhgn"}, "global": false, "goalValue": 0.9373807370865462, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "MtvAPcf2kuluDOEU", "url": "xP5pZKiDVH0HJy3C"}, {"slug": "cpyOLNfe0yWzB5dF", "url": "KQAbPkbJowrTPNoC"}, {"slug": "RW0LutujiX7OVBhC", "url": "Zt5awzHGOkRAbhYE"}], "name": {"FklcJA3FLKwyKdG5": "3MyBCmjs9cZIqNO5", "NYaxIRmqCACQggqz": "yr0X99MtQKBXHkNB", "yeOBMnEAt2bSAuOa": "1Ywf4TeSylM2IUHE"}, "statCode": "TQCkbDsMjgYCbbkV", "tags": ["G5xZpeVDN4nAtQ8d", "ajrOQd0R7ESGVe6i", "5Sg1CCp1S6tIaNX9"], "unlockedIcons": [{"slug": "vtIxk1triMRxjmVp", "url": "YEVYIBMbU7oRYKBo"}, {"slug": "aaP447NIEbf2PTxq", "url": "Gmq0t88A56Z7n0LA"}, {"slug": "uifaYQxrx1hCY2RK", "url": "cNuHIPZ3QKXztDDA"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'jmetmckSGCwF30ZA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'ZPJhEDlV2Alc0UBz' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 8}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'zsTiV7l1dMuYdl89' \
    --limit '64' \
    --offset '10' \
    --sortBy 'YlXgDtMXi9nWQLJt' \
    --status 'YqHCPibs7Wf6VbZ8' \
    --tags '["pGRYikWRhpourb07", "VZ1ANuvrjsAclL9k", "4jlN5KJi4ejoIZvz"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'TJAwxv7b8yqfLHaR' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '99' \
    --sortBy 'ULldjV0ftMtSm1E2' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'mAn5etC5RVyBJgfO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "pHLljtwGs97kjawm", "eventData": {"eventName": "iWidRiuuegurl3tM", "properties": {"FN7v8uUyplSz9IcI": {}, "pz11lSK3Ag3tT0u5": {}, "LaauZYIEK0wNlp0r": {}}}, "eventId": "IHxRKYJRYXaTRNos", "version": "aL2LuRpLyDVD2jTo"}, {"dateTime": "ZBe5Q34S200VuvpE", "eventData": {"eventName": "tbcJrRYLDAxM3dHu", "properties": {"mAIskNa00EKkqnyr": {}, "bjiaTBkz5UP2jgMS": {}, "NVlGpw6uLdlsRYr2": {}}}, "eventId": "AIuAoQ22VSag1bDI", "version": "NcjEdRD4DS5g1CNJ"}, {"dateTime": "1HofRPpn4KUMgjdD", "eventData": {"eventName": "zR0dLJJjY6PD6B90", "properties": {"FxqdBEubFvz8JYoF": {}, "zaXdoxhXvUXErsjb": {}, "jMNLQO6uYQEMSKhP": {}}}, "eventId": "w7zUwvwmZ0Lyb7Ro", "version": "NCLOAgYrlmORWsc8"}], "thirdPartyUserId": "TrJheEe4ZPxSzNYR", "userId": "gz4hNdnLodiSoake"}, {"events": [{"dateTime": "6S3TgKcaDhBODRJr", "eventData": {"eventName": "26JBVUCTuL7r1Y3T", "properties": {"7o5SyC3NlmXjuHco": {}, "mMh7MTF6etgzX67w": {}, "IX5HNSCkwz198bbb": {}}}, "eventId": "eAcJB06pKPEZcCQW", "version": "vUMEj1kQVYpsK8Yi"}, {"dateTime": "xexSdT1I8cXWmqIR", "eventData": {"eventName": "eJq85A2tNckw1ozE", "properties": {"179bC2uzXlDcjU0N": {}, "JcKGe5My3pU8QNbN": {}, "sElIC7DzBadAsvA4": {}}}, "eventId": "WdhGMc5FT4XLbll2", "version": "xA18or0baY58xgMY"}, {"dateTime": "GucMZsAGKnDcRM0x", "eventData": {"eventName": "XTcPaueKTML34bVd", "properties": {"kbq67rjEacWOT1sA": {}, "a5Nha0lQBijaFXmV": {}, "kwEZTGnmkNn6YEZH": {}}}, "eventId": "tuBNv9BWeuenPyvo", "version": "2ndwIDf3dsJmoi58"}], "thirdPartyUserId": "YloxsEkZxqcDQT1M", "userId": "qpQrUXyIKaEUJuMY"}, {"events": [{"dateTime": "1B2JP5U3MwEI1Kxg", "eventData": {"eventName": "Mf5uVxzJMJlnIXMR", "properties": {"C2ekwrIBt2pQlN8I": {}, "ur6FHPfIB5tWXqHN": {}, "ElGjg288cnBErERH": {}}}, "eventId": "7X0YcJlFbuO5I2Br", "version": "U1OAWMmz0EZoyfSl"}, {"dateTime": "RtI6UTTGmXiQja1r", "eventData": {"eventName": "9S5HISMSYxGuuAIS", "properties": {"W3c2OeKSNVtOW52l": {}, "Ns58ypXy1PaEndnf": {}, "z0sV3fJjqyzUqlCe": {}}}, "eventId": "6W2jgORxncj1wLJS", "version": "MfJjTm2bvxxO53Jm"}, {"dateTime": "NjyLDpETXCOKbjUa", "eventData": {"eventName": "ImwkAzsL2rcREfEk", "properties": {"F3Gyr8UH3CHUhdOx": {}, "FJ40bw47feot5oSN": {}, "UWq5DRQuvHqvFiIO": {}}}, "eventId": "gMldrA1QIkBLLd4f", "version": "HwojhpW6VuMgTxoG"}], "thirdPartyUserId": "watZmWRrVGXZpevi", "userId": "7DJhsjMbRlgkykgT"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --name 'SOLSBiZn9iSGrBQd' \
    --offset '56' \
    --sortBy 'Rn4CFoHjAhCt0ZPK' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'qZtjrJOc7BQvRNO8' \
    --limit '67' \
    --offset '22' \
    --preferUnlocked 'false' \
    --sortBy '4vEjWkOZqOlPa0CV' \
    --tags '["RcEQDdgntKUvzPKM", "EXEUhqaKkn3sePd5", "v0rqfWj41bgQuZaj"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'vFDIHnpA8XTh5dnA' \
    --namespace $AB_NAMESPACE \
    --userId 'K8jJZxPVgsawUGp6' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '1LrWXeeTnL4Gekyt' \
    --namespace $AB_NAMESPACE \
    --userId 'NSNShBQYIIW7Z2zm' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'WPuYxNDPcW9zDfme' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '0TP1UkMT5816OJsc' \
    --achievementCodes 'yow43IWDHH57ZDVg' \
    --limit '65' \
    --offset '29' \
    --sortBy 'dDlw2JFeFrqKsWyX' \
    --tags '["jm90ySKkUwhTkR3y", "UyGhZZYX0i3BrByS", "zbsNDO2zWcwlLwxd"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '62' \
    --offset '89' \
    --sortBy 'listOrder:desc' \
    --tags '["MoYRm3JZYQA3bIP6", "aKgJuHUAflrUpA8K", "xtstFFrkDOKjVI4d"]' \
    --language 'v89GAUVmvblQbmtK' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'rMtvWjcFT2RabeG5' \
    --namespace $AB_NAMESPACE \
    --language 'QnZgxy46OE7KpIbQ' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'NHWKhBowX1nj2Q0V' \
    --limit '17' \
    --offset '26' \
    --sortBy 'nb4fgL6eTKy4bk50' \
    --status 'g51SS9DlANmMWD0r' \
    --tags '["457r2xLTII6KEQvn", "sMrMBcJ5PsASZygx", "vex5d5SL5zjS9dwI"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'RSN4tf5PRc5pKTXA' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '61' \
    --sortBy 'iJoxaFw0c32ITIwD' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --name 'e8I4wbzD4Cees6rv' \
    --offset '46' \
    --sortBy 'TafmoV4QM6EeDqhp' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'pRu21PMmj0ahGWac' \
    --limit '40' \
    --offset '82' \
    --preferUnlocked 'false' \
    --sortBy 'MUdaIU2fB2Tbzb1p' \
    --tags '["1KpHN3NEO3KwBexW", "x3kEisyUeqQhFD3a", "bahPBBJ3XA9RQjnN"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'iDgpY8mWkY9HNsf1' \
    --namespace $AB_NAMESPACE \
    --userId '6vO8RVkyUwdSKxeU' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'Z8vZxVrF0odJhxYK' \
    --achievementCodes 'OV1hJ9u8rRCwxSgr' \
    --limit '39' \
    --offset '72' \
    --sortBy 'CGHGSxY91e73BZTQ' \
    --tags '["gzOsLE7YylUF2pt4", "pPeqUKCLYI1dYYAu", "B3nWSBRhop8Anyxj"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'r0GDjdh6yVgWA7Wg' \
    --namespace $AB_NAMESPACE \
    --userId '4Yl46KC3RGVPqZ7j' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE