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
    --limit '71' \
    --offset '53' \
    --sortBy 'listOrder:desc' \
    --tags '["QD2fvRSyhBHCLY9B", "HnP4xkkChXuybdrH", "EmMXsKkrV74dFtde"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "mMLqzHTr5HarbZIv", "customAttributes": {"BV0xoGZhhXNJ3VI4": {}, "j1IvsV3VxBIwsyPX": {}, "hTs5lWbhkzKgUdL7": {}}, "defaultLanguage": "taci8lmcZFmpZCTK", "description": {"U6kAFL931Xg1N6Jq": "Cc6bpy8X6RQyvd1k", "5AO0RBmNGlYzZXkW": "ybziobkRQZMvHjIp", "ZNonYlOOsc1WQTfc": "RhWk8pUGVBryOnK1"}, "global": true, "goalValue": 0.10928671656963229, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "W93ax55PIzJKWB15", "url": "XXfJWvzcP7KHpTFi"}, {"slug": "zWNJrfvJjpXKaFSv", "url": "YXI3dvsUDH8v72C5"}, {"slug": "jzoqUeMR7mpk4crn", "url": "wAXS5pzenQrhKsma"}], "name": {"kgt2QiNzxsDamgql": "nILsn3FtlnK34GrB", "Bq34efoMBJ9SWwxT": "gzf9KBY5ZUE5Tdy7", "uL5Xxz3iRXCp6zfy": "YgnyHPiM1smhdyDc"}, "statCode": "i6cPoAUfr4QDeLcF", "tags": ["22mjgsEcTRXwePHu", "JNJlaKvwo6A0YRDW", "AhwyzKXmPfEJZsdy"], "unlockedIcons": [{"slug": "Nq4yZGjTl7WUJfc5", "url": "lmuKt6hRInjsIlEg"}, {"slug": "jKdWNrndfHPdjc8k", "url": "kKuC1ATXyPlU9yRW"}, {"slug": "byjYZI8eFMuam6Jj", "url": "7cLaKWzY6hTIyNJw"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["QCBtldQnq93oakRR", "Sq9HSM5R79ub10Zj", "ttC9CjQB1zIHmEzh"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'aOHFQc39TwC3vUpP' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'm11qjizIwMc099XK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'qTbWZrIa3qKp1wlg' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zsuOgKEQz7bvMYyt": {}, "DnoCHR6D6bN5e0KY": {}, "svxchpuddOhNhcBm": {}}, "defaultLanguage": "v6tmyDAwy0ZUFQeK", "description": {"qoHJoicgc1M4r2XR": "RvY9VSBbI3T17vUG", "93h8k6glQka7AiLg": "otmjdQFrBYCLHtp5", "7oTQ3woHAcBAsKmR": "AxhIUiA7tNlwlqKG"}, "global": false, "goalValue": 0.5644178521602335, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "gMzDjOo7FgeTTZZk", "url": "VeTitOTZ03Gtm7Bi"}, {"slug": "UyRT7BqKoQ4Y1a9z", "url": "dIsu8np93UflHYiU"}, {"slug": "3e1B2EbMmij0BAdn", "url": "1KHyKsBTqEIIE47F"}], "name": {"7qYNDqUzRXxNSxOm": "dSygQD8S73TFaEM3", "LrhPh736WhUoskSl": "aIgXJvLOA8FLmfWh", "w3Gk7XbZhXIPIu4r": "IkTEQBZITaJLo9Te"}, "statCode": "sl1N05DEvXqa5JZt", "tags": ["IKlKPYuWjjg4QQhJ", "eH5MknQNvvI04qk3", "7wN6Nim7l5fj1BOg"], "unlockedIcons": [{"slug": "wnC8yoJrUyVi3Sz4", "url": "81u3URpC4jg17kgJ"}, {"slug": "u8zKHARqkYY2PeEJ", "url": "cMFkiMNAJEPJ6zGU"}, {"slug": "oNOSDKaJzPbNOzjx", "url": "vWPZctDpYxaziC5V"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Ux2hTbSwP0lwE6md' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'HGTVtM04yWSyWOnE' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 24}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '80HUEJFVfC9obbAH' \
    --limit '6' \
    --offset '89' \
    --sortBy 'createdAt:asc' \
    --status 'xLmeEypcPtLomMmp' \
    --tags '["PpTUzYdWT6JqXxGO", "sqpYBnIkKS8Hcw53", "S5WVNRpnCZjDPaKz"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'bUZkfU6S8MeCePec' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '58' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'EUuLKYBAnBjVqwww' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "liHtgtD7Rfbifg1G", "eventData": {"eventName": "es78R88C9qma2q78", "properties": {"fE57wld5PKuT2Vac": {}, "8VwCXsOQCEYgPZts": {}, "mLpYVIs09NmGvR2U": {}}}, "eventId": "E7ZLpyCN6dIuHluS", "version": "4yiRrGL3RpHtwke4"}, {"dateTime": "oUxBDSWtlwnQdjJP", "eventData": {"eventName": "fxo75hgJjYxDlJkG", "properties": {"R0qcq6Zpo2kfKvK7": {}, "rPNgFv6p38RBVGIo": {}, "KfU4gS4cUuzNZzcL": {}}}, "eventId": "EJ31Nuwttb511ibM", "version": "4g4Dn0zJrtOIzQkE"}, {"dateTime": "3krzPNMB3njdjxcE", "eventData": {"eventName": "OP7VS5DBg52ztowP", "properties": {"lMvVZ4wmuJfVrJTP": {}, "DW4tbM9h6BussZYn": {}, "gdqoBrvVzdb2nI4j": {}}}, "eventId": "l8ZpBN4L8u54JADb", "version": "dVrtC5xqznrXwAny"}], "thirdPartyUserId": "wPPXSX1pMtB1cUfK", "userId": "QQdWgG0rWDbEPBEo"}, {"events": [{"dateTime": "6wIzalPw8zeAzh5z", "eventData": {"eventName": "AsdMLv4drrijmumG", "properties": {"2XjfSpySd5srYbp6": {}, "ZUl9riQbGcbLX7It": {}, "JX4RQ5F9sq2aOrBc": {}}}, "eventId": "wHW8bGH8BcnmP83c", "version": "2JAgM0vJRrXrE478"}, {"dateTime": "no8gizQ7pFZugmg1", "eventData": {"eventName": "7tqwUVMw686Tyf9n", "properties": {"WgmPZkPN7DgouzR2": {}, "6ROPNOcZC6UnYwEp": {}, "6JIcnawhnnISUq8O": {}}}, "eventId": "73JOY549qz4GdydJ", "version": "LjhlhRHp8wdTcqLb"}, {"dateTime": "LTVuHke9WcldmzD0", "eventData": {"eventName": "U3hMcFZ3nVHDqYe0", "properties": {"yB4zUj9QgVSQHgrA": {}, "zIO95HFX5jRnDzya": {}, "c4XyDKy27vHSiDdd": {}}}, "eventId": "3B0r7La02XLvKy75", "version": "8e9xMPTHj7kz7SY0"}], "thirdPartyUserId": "qErLbqbMlVJuvKcP", "userId": "4QtHBmLIrCE771Y4"}, {"events": [{"dateTime": "62GHVesxNWUM0PU2", "eventData": {"eventName": "CIKcrzXpypwkOsxq", "properties": {"zxWd9x6dGmv0d7PU": {}, "d52eLn45mFWnpXBf": {}, "KwOkiwzTMrlBXpjQ": {}}}, "eventId": "pVDOlPH12eyb2Z0P", "version": "eZGRWPDZZYWXdbZE"}, {"dateTime": "hxdSH694lLW5UWYo", "eventData": {"eventName": "vFZa5znEFwktlAvX", "properties": {"d1dnWdq5l5i6mGj8": {}, "KnDxUrzURw9QHN0M": {}, "M7x0UeX8IJJ2UOvA": {}}}, "eventId": "2nS2C9z63TePoPp7", "version": "ywrhxX6Ydz6jG7vT"}, {"dateTime": "8EkIIJFqtL5YgWaY", "eventData": {"eventName": "xtVqWWfEl4CYR7GB", "properties": {"uFArXwosTXXJjLn3": {}, "vSMt6qFIGp13x4M6": {}, "cVI1CiOKt4h1ntlp": {}}}, "eventId": "EeGv0jqyKplPnytQ", "version": "Yn3F0kwqdZwaMrZJ"}], "thirdPartyUserId": "cB0Qnq2QrYTD0cvc", "userId": "ff3jqBTFWp17Xisa"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --name 'Az8CbDXS7CyBiqF2' \
    --offset '15' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'VGjCI9PyEwqYvt5y' \
    --limit '14' \
    --offset '59' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt' \
    --tags '["NFtWCEwy4HXSEWWI", "xarijLpURIobIxDd", "Ve5Ox4Q7EGJ1OYFL"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'iikfnSeaGG0H9Elp' \
    --namespace $AB_NAMESPACE \
    --userId 'xe8XNFid1vN4xXOt' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'RfT0Z2yY5hR9dEM2' \
    --namespace $AB_NAMESPACE \
    --userId 'cUPeTzoEdZPLKHZm' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'eSZQ92Wnhn1gSuZM' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'TDrVJApzhTUgyTDG' \
    --achievementCodes '1zsxCopYHGA44nyr' \
    --limit '5' \
    --offset '87' \
    --sortBy 'contributedValue:asc' \
    --tags '["qckpn2Gzcekgy4g5", "VO7IoMLYbxkhOxNX", "he02s7TzYd0rWwma"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '90' \
    --offset '50' \
    --sortBy 'createdAt:desc' \
    --tags '["kk1USqnLU3kCMqIS", "GLSyrQ1H7Xj7qz3q", "2zhIEHdlFUKpmIOs"]' \
    --language 'UyIZikKlRa2no1SV' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'EHG6sRIT6BTelVSe' \
    --namespace $AB_NAMESPACE \
    --language 'Qa3kovBTQ6lTSnoF' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'yUZASKUrKiza3cRU' \
    --limit '84' \
    --offset '18' \
    --sortBy 'achievedAt:desc' \
    --status 'NT7goAkB2cid7xYH' \
    --tags '["ZWRzpKbhVZpYOZHL", "F2aoWCFrXLkfeL1f", "KteOyuWn5DCbnb6V"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'Vr2hhbWrn9XCAbhO' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '82' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --name 'w0F3GmGJKlSYFscX' \
    --offset '61' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '97FV9ODPaW4WgdfG' \
    --limit '87' \
    --offset '89' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt:desc' \
    --tags '["LdL5SMFrXF5aGXYq", "4sCKn3PNZnB9WNFk", "ebMKrILhsPN6wqPM"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'PvSFBe5ATwGnrxKO' \
    --namespace $AB_NAMESPACE \
    --userId 'MJgQin378VRKoAsz' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'nVRCOkd4qhhfICTq' \
    --achievementCodes 'JLwfgo2Kxc2dcqqI' \
    --limit '73' \
    --offset '92' \
    --sortBy 'contributedValue' \
    --tags '["nJFYf35z6zXy7zCU", "n6Bi5NbdHBtWHERE", "6fHD57OzOlyXVZh3"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'oOMJoxqPD8waDkTy' \
    --namespace $AB_NAMESPACE \
    --userId 'ScSV1HTv5U1Ierfa' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE