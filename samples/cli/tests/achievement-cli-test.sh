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
    --limit '5' \
    --offset '89' \
    --sortBy 'updatedAt:asc' \
    --tags '["0I08yL4sco1oaXr5", "QhqflLejhTMI8jeC", "dkEV42PTmzzNRGx0"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "mogBBs8dhBijlmik", "customAttributes": {"82bIOar4bKhKnlSx": {}, "chw3gK8uBaKp5jgC": {}, "PI1wCfIgZjRhUvSE": {}}, "defaultLanguage": "WO7lEcA4XppN84ZS", "description": {"ilMU9jZZLIP5610I": "iGpICa8NJ29t9tDC", "3F4cHzYO0lCSHs5x": "j6rtTA5U7rR7zGCx", "jeJyKmKfNsPzApjn": "XOHrseKZJL0fCCjQ"}, "global": true, "goalValue": 0.039834708364687166, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "ngh4r1mcCKK9x5or", "url": "BUO0cghnLubGkeHq"}, {"slug": "fbHMAv346s3t9m51", "url": "z6hzDQSxYhcYIANv"}, {"slug": "K0uCtq7m8UGjkEmZ", "url": "Pu7dls1pkTIYcEVN"}], "name": {"khNkGSo09nDg2GKF": "Wbl0LOnSavYTttac", "UG7Vd2OoRpTgYWKN": "y4JtPBhYMfp9s2N6", "31vq676yTXSbUSFm": "KpuHy6NNROwlNHP3"}, "statCode": "3quYIIOKkaLwR8wf", "tags": ["FfQ823ua9470eSKV", "9jyNxxjcmgokf6Dc", "M1KmuWycL3MEtYSP"], "unlockedIcons": [{"slug": "dhCGp7QyfGzh2T3m", "url": "ksp6KgiZXvAidSii"}, {"slug": "fJ2LKCyISXtYFEOD", "url": "y7ELXCNOxkSsM8ZL"}, {"slug": "Ux46cFQFKbbWjPQ2", "url": "YkcSkFbsop0xSmJP"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["8pTqPZNfJfCSbXWr", "zg1DjkaHM9nuGgw4", "ajkGQoeCGvIXsdO5"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'NLh8ShxACsY9sbVK' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'nYhDjAs87LFVmS3b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'sJG3ER8rMvx7hvqD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"7eJdVXjwRntmPLG8": {}, "KVyeu8hMESqi2RKA": {}, "V9rBobeRyJWY7R4p": {}}, "defaultLanguage": "KtD5umv2UxY2MqJR", "description": {"f8GeGW8OEC6ZfIAd": "Fjow9YcTEs4hzIBK", "A2CQuIjHVLcoOP7O": "oQDn9QhTzmyvzZIi", "19XxscfdxpcIkrsT": "Hk4JeVpiqQlq4ERh"}, "global": false, "goalValue": 0.0918033076506255, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "ET1YeURdvFcndbo7", "url": "sFiRZEwPoRqoIKAZ"}, {"slug": "BuSUxhCyN524fIv3", "url": "yMfv6xgLztGlChmC"}, {"slug": "pefhORhlVRsJtgV1", "url": "fFD1AgzDf99m06O2"}], "name": {"tfdbRXgoez0lU51I": "43fBu8ej7vy1Ikdy", "jKSN8c5r3Ma4RmoE": "heqUnfU4PRSPk00U", "ssRGhVawlSSqlJ13": "HPWOWFLclwZQNKNv"}, "statCode": "F6zigJExHzWfYuF4", "tags": ["jZCLRCfONQPhEtMG", "CLWrAFXqOHGYo1hy", "j8kO6GxN6LoeGxiJ"], "unlockedIcons": [{"slug": "5frvcsixNXn4iS4D", "url": "y2ZV7Mc7N2I4UGsz"}, {"slug": "hWWthZru22J5FNOJ", "url": "LHf9Lq5tEhNzOA5q"}, {"slug": "CCbfqjCKX4GYS8Ke", "url": "DVPbINVjdagy3QEq"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '1WJmbTUcLe6pvXld' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'IZrsKhtxLqObLq35' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 38}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'FqLd7TZMyF2QJsuy' \
    --limit '14' \
    --offset '31' \
    --sortBy 'xVLprwmAMqAerENt' \
    --status 'qTYbFVTs3BoGq4jB' \
    --tags '["oXihChurqQjB0Oba", "snCd0luCkNyY80Hu", "dnUfUfOvzCisiXUG"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'lLqDktlmpx5sRKy0' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '40' \
    --sortBy 'cWzAhATngyB6uLp1' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'obM9fjGR4jOXgveL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name '9cyK0G5qQe7oyadu' \
    --offset '55' \
    --sortBy 'RkCdwE9KyqOxoF9y' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '7A8aalwlSVOSP5wb' \
    --limit '46' \
    --offset '86' \
    --preferUnlocked 'true' \
    --sortBy '9zBDtRANSgCRxbIk' \
    --tags '["vo57rqoj7OnqWj8L", "HJIdONGShRBGo5EY", "iuFJh0bO451XgPD6"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'c9wICxPM27FTdHAX' \
    --namespace $AB_NAMESPACE \
    --userId 'Q5Wmk0lK2YgzMYzk' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'jTc2UG8FtpFJBj60' \
    --namespace $AB_NAMESPACE \
    --userId 'plwGujHS2VdXXBGJ' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'xg1IHpjZ6NRcMfx3' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'zzuV0sDvRKkHnGy8' \
    --achievementCodes 'jCsFjUBCmxNBya8F' \
    --limit '0' \
    --offset '83' \
    --sortBy 'PFA5t5S1mOtmHwXJ' \
    --tags '["Hmyqk9lCJbU06W7e", "vk0jfEURWgAFLlyQ", "YWPb73R9SA5Lz3Ck"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '88' \
    --offset '55' \
    --sortBy 'listOrder:desc' \
    --tags '["TE9Zyx5IO9I5LVwT", "k9yqnUcN8MNoQwv6", "wrDAaFSff7Dyw2z7"]' \
    --language 'htX9RglGGsl2q8SF' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'HrbtgHRqcsarJVg6' \
    --namespace $AB_NAMESPACE \
    --language 'k0rvRZRuYZekiIGZ' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'qDt23mQIByNzsur8' \
    --limit '74' \
    --offset '14' \
    --sortBy 'wjOv3ePQXoKZZoYf' \
    --status 'f76dBmprudsZlYWm' \
    --tags '["7xUanPFXVLnON5kv", "5znITWTknmOaqgu5", "iaeZZ06fEc5sLNuV"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'DBc2iVw9yNOyDAw2' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '33' \
    --sortBy 'h8CcUjicGGO7moTA' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --name 'GWp4fg46GLnzfPmB' \
    --offset '97' \
    --sortBy 'rnU4Lz0wpkcomQ4s' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'UfijcBRN4MFZY7H3' \
    --limit '82' \
    --offset '0' \
    --preferUnlocked 'true' \
    --sortBy 'zJd3hwzRwa5Xpukf' \
    --tags '["hULd9uFmYJoTgkcs", "ufUhGPDomclB2gFY", "wi4UVL4ROncksrsv"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'jenTKRhmeOIXUs1I' \
    --namespace $AB_NAMESPACE \
    --userId 'S1A3cnxRJ1fn2zwA' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'eFyaJTbl7ZwYfTiR' \
    --achievementCodes 'Hl4kv8NTGa1h1UNR' \
    --limit '81' \
    --offset '45' \
    --sortBy 'd4TDz2tgiIvSSFP3' \
    --tags '["S0NqmzDacHCRf2cw", "dTBkVlg2vNDcSYUs", "9JvOj74NPt1LhDFe"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'r3vyRiIQ3gTy8xp9' \
    --namespace $AB_NAMESPACE \
    --userId 'jkNWQkrtJUPbgFyQ' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE