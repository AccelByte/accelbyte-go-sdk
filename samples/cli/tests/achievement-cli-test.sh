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
    --global 'true' \
    --limit '95' \
    --offset '76' \
    --sortBy 'updatedAt:desc' \
    --tags '["v5fXI8fxgZ4kz9y7", "VehmpK33fMwGElEJ", "HeG8tT6W7t4SzyRI"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "7D9LXGpoevUlyXhh", "customAttributes": {"Y5KRsTb5uoJx6qei": {}, "2hNkfnpmcgLzMlla": {}, "dEvYXMXHCAXidmQU": {}}, "defaultLanguage": "caL650FOjIjoo96x", "description": {"t8heLGcX9l2Sk42C": "Sri0xw6dnOHajEh3", "TVvPS9PiB2OoK6mz": "cDnHnr5Vq5nPS85y", "YG7FJUy9udrrzOwh": "imArVB5RGLW93tIg"}, "global": true, "goalValue": 0.2863937277236529, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "uUE2CaCZE3MNnmFe", "url": "IAW2p4QL7tOaaqkc"}, {"slug": "sUEwJQLviEU4yTAB", "url": "8ApaMsOebBPzBPPA"}, {"slug": "XpNzfM7UyeMueMsw", "url": "ttzxCHDIPiHW7R7K"}], "name": {"QzKWiyjU6XcLOnVa": "glY8BR3SnJlXoYz8", "eUJUP3ucMDVe32k6": "CGDEVIKlWfA18rfR", "mp1QzH2c7tBcvnPW": "XF3pyLl4Cv7RYuBm"}, "statCode": "CvnQEHhgC1N8G7HK", "tags": ["2RspN8KkN672Sgty", "yaFyW5ArmYzAKmTo", "l1mR6ldik2Xlv6Wg"], "unlockedIcons": [{"slug": "xOSc8rMzqiWfnbsf", "url": "8QutBG1gekW30C9z"}, {"slug": "oS7R7YIQY2PTiQf7", "url": "4LeWmDcissWYFyr1"}, {"slug": "xAVcDWtr8Y6xFCGP", "url": "ru2JOu8isZvL0xka"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["Jxz1wfUQ766xLKP9", "l49bmT1qc5bv0AND", "jPQ2oviqUN1n5hZP"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'q61rHC0tMiki6mYg' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '8bGd4soki2R0LTkJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'IuEqtRyA4QoFJKzu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"wTuOyvWUJ3uCfymU": {}, "RSHsGwpMuWqFTCb2": {}, "SrzFib0ZsEr9sd61": {}}, "defaultLanguage": "QPj2FIUPbgnU0vt3", "description": {"0pwfbedfM8ZyKvw8": "i3eKqp0qCVI9iDq2", "Qu2XgLWzGjMfn7Vx": "h1IsLXjwnGPSetED", "ulT4YIzQEPWeduOE": "3R8mirpk1sZZdOjF"}, "global": true, "goalValue": 0.3617535584624956, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "Ob84FJKn3qJe3ZRw", "url": "i2hfpSqwusBF1uCQ"}, {"slug": "GxtdzjZbDmFKVg2O", "url": "WAz815SUJXaQfPYR"}, {"slug": "MEWX8AJriAsSwY4A", "url": "SSbrWrjCotxhxJSf"}], "name": {"wBSzVNU4zfGBsb0q": "ipbrYunJXFP4Jzxq", "GxkjQH8amFPpql3h": "wihooeVw1T7XFq6Q", "TdFVMKObMmi8juEZ": "7zbGomVa48YcDtU9"}, "statCode": "KAYBb4QenyC4wfrN", "tags": ["DxnocoGunWvmpiBe", "J9BIeB0CTP9bRQqE", "TqjLfEqzRvRwdi8L"], "unlockedIcons": [{"slug": "MjBV6osMy31gD0Xs", "url": "k6MthbxB8uC6Llyl"}, {"slug": "uywfuD3uT1BBalZT", "url": "yg1sH7pxceBX5lUJ"}, {"slug": "xrZqSfHnpQ5AZNj6", "url": "oqruZ3CZagG7oIpE"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '8ePiSle3CeSg9kh8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'IiAkFEfDf2c2cTdK' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 91}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '72YOvUVJ0yJ9fr1L' \
    --limit '3' \
    --offset '95' \
    --sortBy 'zlUCnGOTGGKb6hnX' \
    --status '2qJK2LQQFocV2CBL' \
    --tags '["eh4SZFhv70Gm4BNg", "G3OHXZyhrQ8N8l5C", "gBh7ImEX4tkvjwIR"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode '9f5jER2nB0VTytJK' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '9' \
    --sortBy 'fHfKV5Rihr9sLLoD' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '5zFQAIzrwSya3P0A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --name 'Eom9lBChsPTAu6IW' \
    --offset '98' \
    --sortBy 'bpXBYUCLK30eiPz9' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '52r3grhWjIkuHpAY' \
    --limit '65' \
    --offset '17' \
    --preferUnlocked 'false' \
    --sortBy 'QkCjl1JzSXDQrNzz' \
    --tags '["i545SxpTS71wQ5It", "2o6nh8srEgMysHNx", "2JGhCeVJl6bVZ623"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'MeDk93c6ZsyhU4Rr' \
    --namespace $AB_NAMESPACE \
    --userId 'ZY0KMXleKFdRKf0z' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'rBMMiVE1yWgAjMkR' \
    --namespace $AB_NAMESPACE \
    --userId 'GcnYiL7rUg25s54g' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'sigGGPrgltHltYSJ' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'XKld0dLDBiR2wSWx' \
    --achievementCodes 'Fl3yhWqrfUkXOKKT' \
    --limit '81' \
    --offset '48' \
    --sortBy 'NxPBjLCuyX4avHpN' \
    --tags '["JBPxlG1vx3Ss7Yuf", "13Dlzj3UrpE5YrH4", "Z40h6m05VZ365BsW"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '4' \
    --offset '41' \
    --sortBy 'listOrder:desc' \
    --tags '["B13sHjAF3mpq8qzs", "aZ9hGa03mJ5ZAVg6", "YWayFCJvLpEcxTbm"]' \
    --language '1XcVa9jTQfV4VdKB' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'BE6iSwiZmNjr6GG8' \
    --namespace $AB_NAMESPACE \
    --language 'FLWNPx5FjeI1fZX6' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'tJVd306IQq6ql7UM' \
    --limit '96' \
    --offset '65' \
    --sortBy 'jWAy2UNuYUhkHT54' \
    --status '1KrKLBlgG5CXLcLS' \
    --tags '["SxSEdBCNTXvXFob3", "yDhcQr3by2Fo7cuk", "urs2ZSa5k9nVS3Ej"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'HVObWgZ3TAwDARuo' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '91' \
    --sortBy 'TgLBBXGM5iyAG6km' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --name '5G2pjzoWbsqpPAhe' \
    --offset '38' \
    --sortBy 'Q4Z176vtVeuaMTlO' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'x9eTfkLfBxxE2Mzc' \
    --limit '15' \
    --offset '98' \
    --preferUnlocked 'true' \
    --sortBy 'feUtKSCxcQWo2h1z' \
    --tags '["mvHk9QwRbSbUPHNx", "tXSIpOtdhBLVYIf6", "YxC304HVeadRcrNG"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'wWzJkUlzga0hy5tP' \
    --namespace $AB_NAMESPACE \
    --userId 'XVsE9JBcbzAD4Xs8' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '7BbGHkv6lKOk5vp8' \
    --achievementCodes 'ETQcO7yfd2MAGOZo' \
    --limit '13' \
    --offset '97' \
    --sortBy 'UYo0EyKMheanJLbl' \
    --tags '["R7HAdA4kn7u8TZjT", "NazkycEc4h1pAsNU", "4x4Rx9k14H1vtzrZ"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'thH5YLWr02ADJMus' \
    --namespace $AB_NAMESPACE \
    --userId 'q26B20MtUlnTvkEH' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE