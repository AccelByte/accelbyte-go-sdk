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
echo "1..15"

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
    --namespace 'rmY6LjwQ' \
    --limit '48' \
    --offset '23' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --body '{"achievementCode": "aUQWmJ2O", "defaultLanguage": "INvlVBcN", "description": {"SWZp0a5C": "ZBVn1f9I", "srktI68y": "KiS29WDU", "epsHqoeP": "4GrbeThs"}, "goalValue": 0.5279961332598647, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "f3BcSy5M", "url": "DLUuzHrc"}, {"slug": "BHRU43OB", "url": "BPL7YCjU"}, {"slug": "flbV5etZ", "url": "s42mja6V"}], "name": {"AvvOXNS4": "2dci6nwx", "uVWhY8ox": "QerY97g8", "Sw3iBbKd": "pyljYGxj"}, "statCode": "PSiYfAZB", "tags": ["Jr21h2eG", "N6m0e2nJ", "R2Ps5BSy"], "unlockedIcons": [{"slug": "FJxrR6pz", "url": "VkP6EvBM"}, {"slug": "EvXWTAFH", "url": "GSo9FZnu"}, {"slug": "qJe6hLzz", "url": "qZ3jMYYf"}]}' \
    --namespace 'pRWtAqhQ' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace 'U2zu4Afw' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --file 'tmp.dat' \
    --strategy '3G2wiOme' \
    --namespace 'eT06cbVT' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '6JkX3wV2' \
    --namespace 'F2FcXNnb' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --body '{"defaultLanguage": "1nyqhldi", "description": {"cT6TWxGr": "Z8begxpB", "HhPWN7ns": "Azwmad1Q", "s9N7QbgH": "hU3X6t1t"}, "goalValue": 0.19996993368402494, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "g83HhOCZ", "url": "rZ7MjMU4"}, {"slug": "1AxHNear", "url": "r8zgVra1"}, {"slug": "dyRMLY0M", "url": "fqyWQAJy"}], "name": {"fNW6FaT9": "5s61HGXJ", "7Mni7Z2C": "uXjDN5oJ", "V5cG9zw8": "cXOaoEWP"}, "statCode": "fSfB37qg", "tags": ["hZB7jjHt", "y2VirQ7m", "kejI2mtS"], "unlockedIcons": [{"slug": "iYp6wvtS", "url": "sdwcHsvB"}, {"slug": "cb85swqD", "url": "7FbuNfoM"}, {"slug": "21NXs1pK", "url": "HwYdL9Lu"}]}' \
    --achievementCode 'uI3Q8yQs' \
    --namespace 'S1Rg9aEY' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'JMOMMKGv' \
    --namespace 'vgBzU9RI' \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --body '{"targetOrder": 23}' \
    --achievementCode 'dDw3SgY5' \
    --namespace 'ZJSd0SA7' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace '0QmrMxh4' \
    --userId 'ixC9SIPM' \
    --limit '24' \
    --offset '32' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'Qsyr1MLw' \
    --namespace 'rsD3pW6c' \
    --userId '0oKoAWoy' \
    > test.out 2>&1
eval_tap $? 11 'AdminUnlockAchievement' test.out

#- 12 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace 'H8hnKHbw' \
    --limit '86' \
    --offset '75' \
    --sortBy 'updatedAt:asc' \
    --language 'zq0eoDCY' \
    > test.out 2>&1
eval_tap $? 12 'PublicListAchievements' test.out

#- 13 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'H4DteZDO' \
    --namespace 'EXYtx0CS' \
    --language '0RRCoaao' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetAchievement' test.out

#- 14 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace 'rfqFVA5J' \
    --userId 'lOzXckii' \
    --limit '2' \
    --offset '88' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 14 'PublicListUserAchievements' test.out

#- 15 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'jOCLlbOT' \
    --namespace 'Bjdg7CTk' \
    --userId 'nVXVYs6O' \
    > test.out 2>&1
eval_tap $? 15 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE