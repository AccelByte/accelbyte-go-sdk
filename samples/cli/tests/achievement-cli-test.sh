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
    --limit '33' \
    --offset '38' \
    --sortBy 'listOrder:desc' \
    --tags '["WlFESpLKAzW5jyZc", "yHHPnEyhJZdwyqod", "HZgDqKt8ODSCZXBE"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "UXrMu24BCFkKQeG0", "customAttributes": {"RWJU93hLIk0HpgQg": {}, "yGLE9TIuszsIlqNq": {}, "HkAQb9ShvC2rGsTz": {}}, "defaultLanguage": "n9Q6ZuUmdkPJhowN", "description": {"heU9vlPvEjDmb7gb": "KxeXzYg5cL9CvIE7", "P5uxvG1ng7P6iT3r": "ltBhOF85TXZIHzks", "DYMmoajmdyrTYSFA": "4uOTROcx392xB8lf"}, "global": true, "goalValue": 0.7314736807385245, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "7Mrblwj6S5JFH8u7", "url": "8SkWsXxth8CIUbkP"}, {"slug": "opvbRMhxHpI7BZCV", "url": "kEZRvvDlt7NQSpIp"}, {"slug": "Kcq15rvYf50yzttb", "url": "FzE2AAEWisKRiKWy"}], "name": {"Kcaa99qHAl8FF00h": "Udvu53cS9YB94urF", "HGmBbKB1MKTXJjWa": "3HD0QRmGHSs6YQCe", "xRztr6Lt4EXQT7WA": "B9P9IBDRj0L6Pux1"}, "statCode": "Kh2bIL48RC4w3Rrt", "tags": ["cBwTwqYN0T02GqU4", "IRztfKn88VZNAI2v", "FlbVcWbCkakdtvzQ"], "unlockedIcons": [{"slug": "Xi0gFsimccjAY1Uk", "url": "YATiTXP5cd1OzVxf"}, {"slug": "LRtfnEeRBLU2Yai7", "url": "Gta0QFIXFXmmQZW0"}, {"slug": "Nw0YOo4J3RDBrwz6", "url": "Hcy7MoCDHe7cVKzB"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["eOWmlNa8V8k4ZaXF", "PWOF3LXmIOh7zRKE", "WGpTowfMcx0lJv4u"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'rdOy2QLdsdEsYg2g' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'YvhnEYpg0VswV67d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'vwChLic9MmzFezGj' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"92cwwRY24Vg8GV3q": {}, "ILdvexTKMFWsTOYz": {}, "L6sUa2TNkT3QqZnO": {}}, "defaultLanguage": "LzGk98jFSNXRZNKO", "description": {"GPtgTAJIirn4kny0": "3zmh8MYl9RBtHVK0", "RDYAK12xnIxwAqXb": "bLzNJjBenuzCd2yU", "FMspmxNFeZct6ykP": "7hPpkqBNb1lzC1sC"}, "global": true, "goalValue": 0.6365532617851829, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "5H8uwSy9E08RcEy2", "url": "KcCaruxl9BrYz5LP"}, {"slug": "vzVJQQHiCdksm2Pb", "url": "wfH4yoLiKg0DTxEu"}, {"slug": "HXbNTWuPE9YPicte", "url": "uGQultSepnUHsmWY"}], "name": {"CQRqUPqteZwgKkbD": "xIGtQfAlMaxt406h", "iZpi3V5ffWRqd5QI": "t3TIRU3up6YyUVSW", "3h34XBDgofQRpexZ": "2E9IQS11LDKxxLhe"}, "statCode": "PhudOUPwhshuBfkB", "tags": ["RlVKPEqX5MI2Jkjw", "4xMvhBpHWa8d0StI", "R4iOEowlGN8hCIE5"], "unlockedIcons": [{"slug": "bAjGhqBLMuhCr7Gu", "url": "ttlOyUjaHNzuRCZR"}, {"slug": "02QFAMlpNoksVJkG", "url": "82tH0sXRWuHxRQ1K"}, {"slug": "V9Maz1kSt7mU3VrX", "url": "Ppftt1He7NR5xHEO"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'o4BFA0ngPjSZyZ98' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '7ro1J8zYJ8QMHVYu' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 2}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'THHENRFgJQHPalQa' \
    --limit '77' \
    --offset '18' \
    --sortBy 'v8ONKkbqMCIFa4Oy' \
    --status 'DDv7oFfJMt2JHXj2' \
    --tags '["Q1L9FEpbXtFoLFqv", "92IMxkKyrGSDOTmP", "J377luYoLSPjChro"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'gR7R6iWUw1u5InsV' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '51' \
    --sortBy 'OSkbKZ21qIIpWNZ8' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '5AmAa1YZcpI7095K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --name 'M28k0oXnLGdxU3Mu' \
    --offset '31' \
    --sortBy 'WNAhB4b9GpXbE8Rj' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'vQ3xqqs4sBK1WqOC' \
    --limit '54' \
    --offset '59' \
    --preferUnlocked 'false' \
    --sortBy 'lkYPJnXaXbNnU9qu' \
    --tags '["MNwpNJD0lbqLlDFc", "mDP8hZxnMK2or4Ec", "Gg5QXy8wuvkFSVYf"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'AZzyloH8AqcjgyA4' \
    --namespace $AB_NAMESPACE \
    --userId '0u9oJUH9UOazFjg4' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'KOQsJu8PerpianNH' \
    --namespace $AB_NAMESPACE \
    --userId 'i7sQku5bg84YoDxx' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'qQWV4z1NUkRYhvsV' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '7JDKoYEEAqnAqCtL' \
    --achievementCodes 'McLznGSGLeyUp8VZ' \
    --limit '69' \
    --offset '8' \
    --sortBy 'dYyiYTMZU6HgF7vV' \
    --tags '["hY1787U6sydw6D6k", "63aJhtJbS271Zbad", "KScDgCx1Mcp19Cuz"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '83' \
    --offset '0' \
    --sortBy 'listOrder:desc' \
    --tags '["cnvLztBP72xP34JO", "9GumsJrAFziuYYFB", "2YJWnzrMFQ6cbTNG"]' \
    --language 'e9JOPmRaCauK5SP9' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'QLfYWUYao7KVTbRa' \
    --namespace $AB_NAMESPACE \
    --language 'EsqbQdjdwD49pw4e' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'YHHdGJUpws1mlM20' \
    --limit '40' \
    --offset '25' \
    --sortBy 'mhKNs6J9ct2PcKgI' \
    --status 'u9J0iFyMLKVbexaq' \
    --tags '["KwZxveTngsJa38vV", "3Y1juKu5QSpllYcL", "2XkA8uH5mfiUWagF"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'aFCSgfPNCCOXyxzs' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '5' \
    --sortBy 'ib2N1gvFyMY31eH4' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --name 'DC9H4ttNU308s20w' \
    --offset '38' \
    --sortBy '17OrhN0bQYHoldul' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '5FXnGQqx87ShrwMs' \
    --limit '65' \
    --offset '91' \
    --preferUnlocked 'false' \
    --sortBy 'eIFzJJwuDYilF0ng' \
    --tags '["0sOkRceMPIUqz5A0", "4MvIJhS4dYPpMMSk", "dA9bdcrzo1lJW3ms"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '16JukL9WRnA0MJTe' \
    --namespace $AB_NAMESPACE \
    --userId 'Rne9gXQuoTxUUH8f' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'bSivz3FXf7Uez43X' \
    --achievementCodes 'CJ6u8miiKiqpCNUL' \
    --limit '54' \
    --offset '79' \
    --sortBy 'ynGiFyRoOvsvI6KA' \
    --tags '["PRqYKdypJg6sC7L8", "PQODfuKQZeaXu7MT", "N0LLKyHPU7h48SiW"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'KmFdS5hYZmYyz8aR' \
    --namespace $AB_NAMESPACE \
    --userId 'ggU0eW0TzOUhjCtH' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE