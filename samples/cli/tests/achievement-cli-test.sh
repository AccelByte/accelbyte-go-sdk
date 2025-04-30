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
    --limit '91' \
    --offset '69' \
    --sortBy 'createdAt:desc' \
    --tags '["Rld6KqrqSMCGL3OP", "r6fIuZEfjk9MPEJx", "7iLlcGHGxUVXkYkA"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "EmBfZOdCImnkxpt2", "customAttributes": {"oWSGNsg6JFd61smR": {}, "2jHhg34DLYJvYdnb": {}, "KbYFsJl0VgNMbsXR": {}}, "defaultLanguage": "wTvZBGzjYJjRj5av", "description": {"W1IIyuXGhEawljvx": "hK3JWYc9IIGz1hlU", "rmT3UX0fsZsGfQ3m": "cLi871EmHXQP6z5n", "DpjEy3oy471yTOh8": "n7panQO2cgoFlcxa"}, "global": false, "goalValue": 0.8673903228659654, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "D3mCwfEtovvgkmYM", "url": "QeZzE9ahuPvXytBx"}, {"slug": "t6qfcxsF9Xw134Av", "url": "z2PA0XMcw5Tk7Ll6"}, {"slug": "VAqtt3Q8FAyX9MTk", "url": "cTODj0E2y03akpJS"}], "name": {"r9RW3XrHprG720pA": "MPyf2yxLQ46BdBRX", "x7ugEL47t75WBXlq": "loJ6dE8EZzsHUw41", "m6wVv46XNLTKi208": "50q5O2PotdYQsdHK"}, "statCode": "CzgxuxKdcx8dUHOd", "tags": ["MbMm1fjonRLXQqfy", "1Q2QFwhJMPOcLTwj", "3UMlQVCLPjYDtbmd"], "unlockedIcons": [{"slug": "lRVqwBN7oey7r2Ao", "url": "TVR1Zddt2cw33Wyg"}, {"slug": "r7LT64iq8R3P6wAx", "url": "uTccwJ5Vs3uZcHLS"}, {"slug": "FXkJEN9INWNh2uH8", "url": "DZP0k6GVdYMF3Euz"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["3HD8kaHelMDHeVk3", "l3tVO4wIxYZ9UYCj", "GDEuI7aXfTYyz3yM"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '8suhZkGZqBhBixJs' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'HK4dEpnZkNEVCXlV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'itZR3QqaaDhSn5W7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ipYI9mCT5YtvMpbj": {}, "tJjS6z935mnVceJT": {}, "rcxbFwKUgsG7ehwr": {}}, "defaultLanguage": "hL5Hon1964t41ftY", "description": {"nQOOnPiVHfQzWbKw": "z0QCh3YpIsBn7WNb", "lwiZRK7v4fb5pLqP": "CjG279BtZAXUvnNT", "cXGhn0gPU44sYBEw": "RNJjGh92GXKOsAyT"}, "global": false, "goalValue": 0.9736094509847134, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "vmInlVaRPJalGmlm", "url": "jkD8PCK5RnhQ1rBo"}, {"slug": "Q9eXJkS72TNuzmgx", "url": "sPWwIljdvIAAFoUn"}, {"slug": "c3OtxwdLbSCmdIW3", "url": "FH13jxxiomlezBo7"}], "name": {"jpLrOdGveBesuNSu": "KGeZSLZe7LhuCAtn", "VkPxo7O2yiqHP5LA": "SYjY0hxFTte4xSu4", "2m6H8toIgnMEPidz": "FFQxP7QjKjb3dw39"}, "statCode": "Zb47qQtFc6zrCufK", "tags": ["RpurPjvdSFh5H4k2", "0GUtSy6WtWg6ldqg", "59dgBe4Oz2EthirB"], "unlockedIcons": [{"slug": "I8qKLtLvBgkrDIPw", "url": "syICmoHROafLqlsK"}, {"slug": "L1ZW9ZZeIfYSqq2E", "url": "7pf3qEKsyzGxPrM0"}, {"slug": "xuPlLkpmJZHZonBK", "url": "Evd26h7q0ZO6TSaW"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'j4UUhJQJQgsoGkCi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'T26KqylxaaYnrCmj' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 94}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'HMwH3PtuqyPAQdaT' \
    --limit '72' \
    --offset '71' \
    --sortBy 'achievedAt:desc' \
    --status 'C1a3976JVNxAF45B' \
    --tags '["jB88yDcQPP2a9E2J", "LoqrRFNHIWJvIvjN", "Qe14GSSZ9Rfvu2JF"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'vyZvR6chuIkU8lMz' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '54' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'd3l1rB6f3yYU3EJJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "b1swt7ccwrsLwKmw", "eventData": {"eventName": "kOdBYVqgQ6JD7IEs", "properties": {"YkuOTTWfmWs5V8Kv": {}, "i3VFTuI5o7jl2ff0": {}, "g8TBhClooq3p4GWw": {}}}, "eventId": "8RVSmP6znJsaad6i", "version": "3oadJ9fFZ87WwArA"}, {"dateTime": "38xRf96SRHtS4VeL", "eventData": {"eventName": "gLGNCwl2EN772Xl2", "properties": {"wupqpbtGy2479q8f": {}, "xvkqKg5UxEeaEnjv": {}, "PF1chM5oLaf0yJ0q": {}}}, "eventId": "kgNenSEpvRfFfVlS", "version": "mHx8XHQB6yzpZzj4"}, {"dateTime": "WV7AxrLKyEV5FGg5", "eventData": {"eventName": "3MWpl8WKEHRZaBfq", "properties": {"6pYft7kJrpB2fTJB": {}, "1mQIyKe52B2q81VD": {}, "s05QqFtdldzHChlH": {}}}, "eventId": "lkguIzYQP7qbQXw7", "version": "uZNJLi6t6cOc9FvO"}], "thirdPartyUserId": "RC6CKXsSrMaN2pUO", "userId": "OwODFaOlzkgSJDNg"}, {"events": [{"dateTime": "Rbq6wGgbuZzaIi5h", "eventData": {"eventName": "qViPCIGbc14jTHhz", "properties": {"wVpdEFewxYoKkq4J": {}, "Juo01j8JJyEgdlIg": {}, "TGJQYWhFqIP3biuR": {}}}, "eventId": "E3q5LHOIA4VUvNCC", "version": "yi3FYzvRZyrYRFvo"}, {"dateTime": "ulCWgDDOFUuTpxMO", "eventData": {"eventName": "nDxe6w8Kk0niCMfF", "properties": {"U17hrtHl28L2I9qa": {}, "kzqz51jt4qX0fbj7": {}, "xK9ds7eD1410P4Uo": {}}}, "eventId": "7VeGNh47zJj2e79B", "version": "25EKWxZt2s0nVDlG"}, {"dateTime": "e6gdK3a26iSWDXF0", "eventData": {"eventName": "k1fQUV0SBvpodhOv", "properties": {"9aSCHIi9rNuDcR5B": {}, "LbwurZ4v7QjCC6ut": {}, "nl4eYSNOysXOrFbm": {}}}, "eventId": "qUuZA69YBt6Dx5Nd", "version": "lh4H0bArA5cCALDG"}], "thirdPartyUserId": "yX9bU2I8NZrae9EN", "userId": "auIazV2hWrg6ZP21"}, {"events": [{"dateTime": "k4wshP6CkHBHjUpW", "eventData": {"eventName": "MJSRNYngvm60QaX3", "properties": {"8HDRpE4eAQnSAvRe": {}, "cBUDOZqhLqQD7QBE": {}, "u5vL4lSEYHxdysBf": {}}}, "eventId": "fW0Fx3bgGlXI9d3U", "version": "M1ZgvqgDNWuDbSEj"}, {"dateTime": "baSpjIUi4WI10DKF", "eventData": {"eventName": "mj4sdxXfMEAm28Wz", "properties": {"3Cuw24SxlwoUMsD9": {}, "KVanjATQZlo9wdlC": {}, "g4NisE6REga7TYOm": {}}}, "eventId": "U4t7QBUpjx49PqSV", "version": "Kr7d8jtARXChcVNb"}, {"dateTime": "D8vrdQggJLCYjxUK", "eventData": {"eventName": "X2pusADQDcWcVQmu", "properties": {"b4r9LIazGLL4lQch": {}, "1lZHuL5oWgvpPoE3": {}, "c2iWkkGo8SVEvrEI": {}}}, "eventId": "UeyxWUg8wSYwJXaR", "version": "m2sgmf974u8qtNY3"}], "thirdPartyUserId": "3BTPoz6HUF7MSisH", "userId": "tnGDl7thtrog9c20"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --name 'ET2plSYhJmywlHY8' \
    --offset '70' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'AIDa9LSzc2ajus0F' \
    --limit '83' \
    --offset '1' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt' \
    --tags '["tKMRHFlVwx0Xm705", "sxDbM9fw3jtyRF6O", "t3YSxCUMFnHNuJhk"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ZwXKGSQFL06lJmmR' \
    --body '{"achievementCodes": ["exoDTLR7VW4pMHNd", "5pFpS3ZceyMZurDP", "pQVAKQ2l6iJVv8b8"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'FFB1uuM0zimarase' \
    --namespace $AB_NAMESPACE \
    --userId 'LMbPwP7DMG774u0g' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'ZaGQMOYAJHJQWoeK' \
    --namespace $AB_NAMESPACE \
    --userId 'WGR5TjhcdTuAjNnX' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ReqpjcvVz6Fmelf0' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'f3Js1U3DEcQkHyUX' \
    --achievementCodes '5poBSZJJLUEI8exe' \
    --limit '54' \
    --offset '42' \
    --sortBy 'contributedValue' \
    --tags '["0SKwllFH8fwF1rjg", "8mzwq3mJ5zzHzSDd", "CATmxprMkNCrxNlo"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '2' \
    --offset '51' \
    --sortBy 'createdAt:desc' \
    --tags '["NAMHin9OCnzt495a", "kyADGk2jedy2zFHm", "psIOkUDYdZdStgkS"]' \
    --language 'Z4rEHMkrgoPJ8FQH' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'Sbvz8Y9gQWfs0mKQ' \
    --namespace $AB_NAMESPACE \
    --language 'wUYqMPGOkYvhaYC3' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'I2cSxbpVy2qLe3cz' \
    --limit '40' \
    --offset '78' \
    --sortBy 'createdAt:desc' \
    --status 'MBwDXpmRUu3TI7tD' \
    --tags '["eJxPLj9OhIpgLeiN", "8bZlPvpEOpLEiCek", "5Pt1hLVpodc4JtYn"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'yBlQ4maHaU1KZJPg' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '73' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --name '8fVsssQEnWRDMqd9' \
    --offset '30' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'qIpuMmzfVdrmGtjB' \
    --limit '93' \
    --offset '47' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:desc' \
    --tags '["UCYmw1ghQ0P9EV5l", "zQ3hjUW1Au4TOsIG", "LImnqhOI59ehtTxJ"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId '1O9jRDnQdBEI6V06' \
    --body '{"achievementCodes": ["3kKwJU5ukkagWshJ", "zOVR5kDdY0Vqsb5D", "qn7j3hqpqmCSgkRA"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'Dg9gu0RGU9lqmBLq' \
    --namespace $AB_NAMESPACE \
    --userId 'jkg8zhyKrnSLwLez' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'CMAuQcF9IUlhY5pb' \
    --achievementCodes 'maXaZ8QvMdf27I5C' \
    --limit '4' \
    --offset '91' \
    --sortBy 'contributedValue:desc' \
    --tags '["YnJhGZQVfpa47gW4", "QbqeqNHjsHbrAVLG", "ZOBN7kLNzuJUxzSW"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '3w3xBetTfCLyNFaD' \
    --namespace $AB_NAMESPACE \
    --userId 'fvZW13nPnYCVwe7o' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE