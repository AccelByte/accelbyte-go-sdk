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
    --limit '4' \
    --offset '58' \
    --sortBy 'updatedAt' \
    --tags '["mOcWCJUynVGFMOkj", "6GcSA3kqSDpJswI8", "H88poSSnzXlFGxRt"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "Tv8d48DJObhqQZxm", "customAttributes": {"KPpNN3FgVHWWXfHN": {}, "4Cw8r9dZG3Jdjh1o": {}, "BpUGbilI13PoPq9J": {}}, "defaultLanguage": "z1tCCoG73iXtDzzl", "description": {"sxLwYZVwdJVMQjRM": "Why9kvtBIU7Z1sFw", "ClIiyEvK3G4wEjah": "tmcGey4jJkMdgd27", "cOYldgM7PP02T13R": "5DjOr1PiVTTYOL3I"}, "global": false, "goalValue": 0.528563979327395, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "bCk6bZar1urU4bF1", "url": "qYppyGAKzzWiqkym"}, {"slug": "J0oacjhXzU82ZZZM", "url": "lHuCUrOgVH6k2eBJ"}, {"slug": "V0KTUArO555JA21m", "url": "BzpOLVD2iH3mU469"}], "name": {"By8nU5vzN0x3VSjY": "9ryCZfVvQIGNc1TM", "Tj1YcwqzLUnvOyb8": "YRQ7aJQEPsR5ufb9", "KyXh5trfCiH34RN6": "UcSJz4D6o9Qt6J9d"}, "statCode": "eiN6N1uXU6W7mrSC", "tags": ["JCzR3Z94s1uNVmYm", "i59xdTXXw72rgbJY", "mR5hMfauxChB7Ze5"], "unlockedIcons": [{"slug": "yWJImWCFgYt6dHFa", "url": "UhezxkX9B6c3bZWZ"}, {"slug": "OH6M59KMj0YM18dr", "url": "RtvA6HglFiJZa2sJ"}, {"slug": "wFeJUzqnEtqjeLtO", "url": "uiPkfFNs2Ct9sspS"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["PUxNfulIPd1e44DZ", "eB3flaUCDXMtCFwi", "YmMMbilyT8K4mucZ"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'ZwmyffcTSCLIK71o' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'UErj9ipNM5xugWoN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'ZioudccTVUPQffrp' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Ofgndkz2gadjhhne": {}, "2SSWDrpDSzpHdYZc": {}, "O9ATXylzhRO1Vrte": {}}, "defaultLanguage": "5Q5TdOnwhmNEcQFy", "description": {"NdW2s6agqV2wxNMw": "pqar3rcxqbXgM9js", "yy87sfHD6ygWZkYX": "2K1UA6nwTnFOu0pc", "7YIvEgLEQaF6KQhA": "lcoDPJfOKhXCa7QH"}, "global": false, "goalValue": 0.9073588091718646, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "yptyjOtR6pwq6OMb", "url": "6XWzz4tlaG7rhkKh"}, {"slug": "OZw9wS56fF9TpGS5", "url": "EoJ1D6ybBl02bHUW"}, {"slug": "eox9YIbReI5KDM6C", "url": "Z3Imfw9rV1dPgT1r"}], "name": {"ltYS0bW2GYzhBRtu": "hO5GaVrd14JP2aDA", "kPBXQzbVqLZm3fMp": "1QFbu3rINgexB5lQ", "qYsxTxNyAhCkcGyd": "ONjBFxkhJ7DcDfQq"}, "statCode": "hiKkHQuePe8d8yOh", "tags": ["wtWyZ4oISl5u8i2d", "mdkqeKtJNxeOUoXx", "QyUWNXqB4gqwmBkI"], "unlockedIcons": [{"slug": "bJyysY80y2JKeJhk", "url": "jm3fbvcB41I9kClt"}, {"slug": "EStQc5l9EE8gNewV", "url": "2EORQCFPh18kTjf3"}, {"slug": "IIBnxWYy7nGwGdtf", "url": "JIxFF9RqSiYJcBLn"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'qIYZfCE3xHkiCmJx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'Wy1h7ELhqMjTn4Bd' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 70}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '0ML26sqKO7zn2kCG' \
    --limit '32' \
    --offset '29' \
    --sortBy 'bHK6NSSdCgxfrRXR' \
    --status 'WuOcKS1s0bB9M8Lo' \
    --tags '["UsmRpojIUqOcnSvL", "PZatrdnP7fRNlEsP", "mOOQ8tu6pJFS8MMG"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'vcEVBWKWDY9seSX6' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '20' \
    --sortBy 'dd5roAi5N2p3mhaK' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'JvxbxvpwKjGEIZVm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --name 'FW4Z0U6enPTt3haR' \
    --offset '71' \
    --sortBy 'c67rKIcKDTfdHbA4' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '2hDBJrAsx6zPl0Va' \
    --limit '89' \
    --offset '64' \
    --preferUnlocked 'true' \
    --sortBy 'aMfKWuTHhR6M9ITr' \
    --tags '["lX465jdgGTtHJptE", "KCMYWNdcl3G9IgVw", "XJqqjuhpqgekbxqn"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'pcYkXcgsv1BiqpD8' \
    --namespace $AB_NAMESPACE \
    --userId 'qOrKHTjkWRVFmGcm' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'lvQP8lXoxvkKcKLm' \
    --namespace $AB_NAMESPACE \
    --userId '1DK0ol9vRjGZcOAZ' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'zbs5U0U5ojHTkA5x' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'tjrp3FLnnLpLEUqV' \
    --achievementCodes 'XgCSyKvuVdZYdIkP' \
    --limit '53' \
    --offset '38' \
    --sortBy 'abFuXoLehgNap5nK' \
    --tags '["76GbJAL5zTZxo0TF", "bIDyccJFjqyA4Br0", "M39vnT0LCkcGN9T5"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '75' \
    --offset '88' \
    --sortBy 'updatedAt:asc' \
    --tags '["wrxSkZhrMuwTalsc", "xv8phRnf7CEOKs7v", "0JtjjhyrIS0rjWCA"]' \
    --language 'lo0KD1TAzBHMaWRa' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'enD88L6i94zoEJTT' \
    --namespace $AB_NAMESPACE \
    --language 'j6Q9Wa34yY2fbw10' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'IwbWQwAWBrqt2UyA' \
    --limit '6' \
    --offset '77' \
    --sortBy 'qtgwewakIehJH7ch' \
    --status 'aHV4KrRVIFk50SfA' \
    --tags '["WAzZHu0xaDMuTfdu", "UmoorfW4anHWrDpx", "P2OludFFYiEGM43n"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 's39yeBP4678JcwTi' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '7' \
    --sortBy 'F3BB9D0ttq0LJ8Gv' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --name '1hGbmD0otzEjH71g' \
    --offset '53' \
    --sortBy 'Y4j36wCXUZrw76aK' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'h6ehAPHEiCtyvN2y' \
    --limit '38' \
    --offset '77' \
    --preferUnlocked 'true' \
    --sortBy 'KFNn51B3fFPoXdQn' \
    --tags '["0DZQUQHYgSY2Rtn1", "PTFScfAFJeLzQhn2", "Fliq10X2BqD12VaG"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'Qz0EMK8Qk0JGVRmo' \
    --namespace $AB_NAMESPACE \
    --userId 'lYIU0dgjlmPg9hwN' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'xGs5roDW9DIbseZp' \
    --achievementCodes 'sNxA1qXLOyWjzpDw' \
    --limit '80' \
    --offset '88' \
    --sortBy '8tUsLE2hCVTEETrX' \
    --tags '["9owbqcuQBAgjHAY2", "FALq4lNioCmSMSmb", "z4yC5l7x8Z6yFX4X"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'ec75aDnaIQnsr12O' \
    --namespace $AB_NAMESPACE \
    --userId '1jMlSovvqgZPFZCR' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE