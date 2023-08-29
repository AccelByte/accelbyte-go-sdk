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
    --limit '42' \
    --offset '57' \
    --sortBy 'createdAt:desc' \
    --tags '["l1re3XxXprL7ciLz", "5QOj50Z9C1lEsfiK", "OBIa3aT7LUrvJxSQ"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "RQeON9Dg5PYIR9ww", "customAttributes": {"NgBySjiDNEqUxTcm": {}, "OgjP3PGqxjUehk1k": {}, "qFGT9342mRIXzGXT": {}}, "defaultLanguage": "P1uRq7PU221V9x1t", "description": {"ZtpPTTd5GeqjGxG7": "6H7lbZ0YVVP9rcf7", "3wZAonAlvFc0CuSd": "gKehG1Um4A2K9zCP", "rUomlkd9AEMwRc8t": "n2njUBBi2PxMi4cJ"}, "global": true, "goalValue": 0.7157052221346678, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "fiLvWi5S2cljBUYk", "url": "g5hS9LkMKrJpBnIK"}, {"slug": "D2AnDMpkLGEEzfeY", "url": "8w14Fp3T0h9dWPEJ"}, {"slug": "ojtWHNkxFo6r08x8", "url": "WkJgP1bT9aAkrldY"}], "name": {"XNRGK0naBLEOCcez": "5rUka7DeLQU0jxa6", "obUg2RtYj6do48p0": "F6wVobfb4Ni3KI8J", "JdDTwcOfM6oNBu6Q": "yQviyJf37i1yKvzw"}, "statCode": "Ysz0kUBu4uDLE3aw", "tags": ["h6ikpBEtuNJROIIn", "dgQXqcWtQPCO8JqX", "zCL568QgTF9SITHo"], "unlockedIcons": [{"slug": "82kKgBKw4ib6JMQB", "url": "6crMv1lQPtb25AdA"}, {"slug": "ospSkQOMcfihO2Ox", "url": "kaewn5SnNdFUtjLY"}, {"slug": "lT7kxUvyh33BJGQ0", "url": "9jB0Pfz6j1GjQ4NN"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["OLRrAhNRjDKCzn4a", "KRWJpFpXUNYlCkhl", "8dPElpBI1q5d743L"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '1rlg8o6eaxLom1o1' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'Th3Z2tDPEkRYFIfX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'sravNnNkWWtDvxHn' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"kbZ0NBvqa7d3CdYY": {}, "QiSPbgi7DgsPKTcO": {}, "49sgdv4lsjfwMLiO": {}}, "defaultLanguage": "H6QzRgjCS6wrG3h4", "description": {"sbd8k3BzEDcCGjKm": "EfUA8hIg3kdd0KAB", "Dbmqa2YtMxk9H0vr": "5lxifiR6whx7Aa3l", "KuLovuUkg8yOmy2v": "3u8Gj0EOlyosMzvt"}, "global": false, "goalValue": 0.36298641779691565, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "m4AsNrykFfwM1ZIP", "url": "ZdqXuKoYixu78qXP"}, {"slug": "ies1MEtyJgCXp9Vr", "url": "s2SRAxnAIZTSeD8M"}, {"slug": "oYUqqUU71GwxSupr", "url": "mgDJgTJECW1KfYqn"}], "name": {"pBJroJyHaFGOmURm": "uyZoY3A6xAwMMHxT", "xBd9jli1iHUho2JC": "hOocMX4YIhMRv1dh", "iqlMDmHCYkQYKRmS": "9Du3Nft4Xk1lio7Z"}, "statCode": "KNdPqjN3C1pLzOuC", "tags": ["n7Xd9zwYAaKcHsZ7", "WmDbEGwdK8los2Ev", "MESnzqdROFR4hHT1"], "unlockedIcons": [{"slug": "kuVYAYNhBfuFhW3z", "url": "R6xrG5QPShKb5diQ"}, {"slug": "9cHFBKFJGkWnNGlI", "url": "fB0uvrm7hF3WFxc1"}, {"slug": "BXKOGtesJkjCpV8Q", "url": "gmlzBgiCEAfWrlHs"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '4uUJMZgefqUSGuAR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'iR5FAKX3yi1M3spt' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 36}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'iT3JCLmA0t8wB7aL' \
    --limit '72' \
    --offset '7' \
    --sortBy 'heTRbO66iLKkVz90' \
    --status 'iAyK7xIJlI5A4JJE' \
    --tags '["dW1z9d1H5GyTUfFW", "SzqEYSXI5HXWmOw0", "6dfdM7HRBj3lTH3r"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'qAvi4MFeWuo5hc0e' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '35' \
    --sortBy 'ixWg5JYWKuKsQA59' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'oo6yrvXKtltb9qna' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --name 'dMwNX5jPo4tjk7Gv' \
    --offset '48' \
    --sortBy 'MSXaab6WWF7QoJQl' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'LeBpEfKt1zCL6Aa6' \
    --limit '28' \
    --offset '55' \
    --preferUnlocked 'false' \
    --sortBy 'rluXxKJX383xoseE' \
    --tags '["rDgFq6HMl3okub7n", "KYdepgs0tqqSzjwo", "EAN177QeM9BWsatV"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'iHkCTWLMYu4FVau7' \
    --namespace $AB_NAMESPACE \
    --userId '1nYxKuHmsidjVJse' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'QPPF5jJGKsxavB6c' \
    --namespace $AB_NAMESPACE \
    --userId 'LjTW4gd4XNZR0Gwf' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'vujQF3RLLu0wsROJ' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'GQK0w3IWohn40dLN' \
    --achievementCodes 'L3K4r9HYm8xfPtRg' \
    --limit '90' \
    --offset '94' \
    --sortBy 'PWCd99eGBtU8U0Vb' \
    --tags '["rYaatRvc6F9QCzwE", "oolpbbSYYkgGFd7R", "R0pBis0htheYH0Vz"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '92' \
    --offset '26' \
    --sortBy 'createdAt' \
    --tags '["8Z9Z80pSYmKODcdX", "VOzIuUxMMvHu9glq", "jj8iauimeK8CWL3G"]' \
    --language 'YpG0SVuUn5S7WUSQ' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'lx4gtfdH8SNSjuOe' \
    --namespace $AB_NAMESPACE \
    --language 'HjjTLtm9Tnyu23B5' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'a26rjhTXMqihzeKf' \
    --limit '24' \
    --offset '20' \
    --sortBy 'K863CTSfxnFtVCZz' \
    --status 'SVtqQDswqL85wBZO' \
    --tags '["1WWgQ3ux6xwHIXzT", "pX4IS1KLhcYgns7T", "bSFVjeVOINtYtdkr"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'nP8GQPnCdtHWmZPy' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '66' \
    --sortBy 'YyJ1l3u3RHb16B4b' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --name 'rhCg1l7HvkJFPrnc' \
    --offset '58' \
    --sortBy 'lOwKX0c5aNb5VP6D' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Hl7GKEu0XK1T8yvi' \
    --limit '41' \
    --offset '76' \
    --preferUnlocked 'false' \
    --sortBy 'VFQy2jcK4DE0Tv83' \
    --tags '["0PNRcWLBgFh5cdNz", "EtQtA9igtfom7jcz", "7kpfLSeE1B28Y2w0"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'EpgUf47N1XgBXtaw' \
    --namespace $AB_NAMESPACE \
    --userId '0GQsTs8MVsspBG6v' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'I93FVTjsk6mIIxFj' \
    --achievementCodes 'DUDrQIw7I7j31IjA' \
    --limit '53' \
    --offset '36' \
    --sortBy 'qkyke48loJvngIIF' \
    --tags '["7JLcNGpjGmRDxCfj", "r6jeOJDJUPtymzQM", "SJhGMdFoaUXJaOaO"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'juoXJSDAKSNkmSM1' \
    --namespace $AB_NAMESPACE \
    --userId 'WOoFlgIRfWLgzHrz' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE