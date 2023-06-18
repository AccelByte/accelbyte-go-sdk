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
    --limit '92' \
    --offset '71' \
    --sortBy 'createdAt' \
    --tags '["3LDpVHrTqf8R4i4Z", "PPzIkOpRl4sbWeOu", "A7Jbq0Id3YARjDIn"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "r59oKbQSc3roRcVN", "customAttributes": {"hhHShPsEeEwI9ty4": {}, "evCkJ6amYmtBVpg5": {}, "jZRyhODMwdHQtw3c": {}}, "defaultLanguage": "WDajIe0lcmYvmQZD", "description": {"CVisBQcmC3Xe5c3G": "fnaGI6sIsWzjFwR9", "SskwuE0SPizLnccx": "GAy4kuVAO2ppxDAJ", "hx514WFkmaeCbM7y": "GqTQuEQZLrQH5FxY"}, "global": true, "goalValue": 0.26788074220866886, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "2WNJ3FBLgzz5QOpC", "url": "j0QT4ThJadkq4mBn"}, {"slug": "VYCi819wcDu2kSXn", "url": "g09J4yWttuSLJcVo"}, {"slug": "GSckHJg4ycDbKF7h", "url": "uQnG87NO4kxg6q5E"}], "name": {"V668FCbVdMo4PKjy": "1zGPSWGnoGdJSbdG", "kGae1Ulx4gyYdwB7": "safTXguXFjvWicBQ", "myWFFwsenFVDVVk3": "6LNRH5odD0dOXZMI"}, "statCode": "g1K9IfDrcEVxMunP", "tags": ["j7JHEbEj2O0xwS6k", "lZZD6CHg7WcgyPJb", "p3on6fBdabFuKrSF"], "unlockedIcons": [{"slug": "o2uEJ217zapV2EPk", "url": "sWA0J5hxm68AoSIU"}, {"slug": "VWRtuk29U20Xq75E", "url": "ovr6DC7wPBnbNhsr"}, {"slug": "VfKaFDZuChjFCHQS", "url": "8BhtHa6YybBRif93"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["ubyh0QPlDMNkcTKX", "1xzbWupjbtFQDisn", "6kaZKgP0lDKlw27W"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'nYdOEsUyUBDNnLdT' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'NdTvBkTgG5ixDp2l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'O6EKIXml8Mvowmr2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"P1z11c8eypIkNbUc": {}, "BcMapXV8htVNNlpF": {}, "KnPzH7AETBfjWNhB": {}}, "defaultLanguage": "qHUikRNDaKP613Fh", "description": {"SyxxlMyCA2QnedxW": "2VW5riaVzCPihskH", "tXnskXotBFu7cLgn": "VVqlMPG1lCjARHcE", "26RmPCLM25dcW5HG": "JbZ2gxsavpS7jrjw"}, "global": true, "goalValue": 0.8588329875659725, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "qGrEyjqD2qEzt5NQ", "url": "mEVxTixjkbbuFskK"}, {"slug": "XWqD8FGncm2AVG7H", "url": "n9aWSymwRksMUetV"}, {"slug": "37lHbdr2zb9pbIwg", "url": "mmfzHZAoJqTZhHCP"}], "name": {"wevb0e5bKZiVpT8e": "ZGx4hLYmJZXf7VPP", "heJZrGmemdLSL5Pm": "xrJE5GFioOpdTrnu", "Wm0ty2YWNjJWwhUM": "1QdXY3B46T30Tble"}, "statCode": "kP8k64ozAIi22wHc", "tags": ["w1bJqjS7kLBdxq3m", "TVnym9vpsyS0cbV4", "Jl5VXUNRGOBCH52l"], "unlockedIcons": [{"slug": "e6prpo5fdKRfA3FQ", "url": "iNdpfy7I6FMU6Yja"}, {"slug": "hKbtczhauee6XBIm", "url": "ONv7oxDdiTsyNKOk"}, {"slug": "uGoKFZcbKkUKNcgF", "url": "TdpGFqjfo2KQXqz0"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'lkxKc7D4jNeclsWX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'UbPkkUGHmPnXQbY5' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 34}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ertZUKtIK2rCpM28' \
    --limit '8' \
    --offset '86' \
    --sortBy 'fZqWXbqESSxBJeoc' \
    --status 't00s11mybO5eQBz8' \
    --tags '["ZjrO6vxr8EiPDUZq", "Se7TJVZe9QtuOUve", "C5f4y7ErhQimdG4x"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode '0zmCBxWHBqdu4G4O' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '46' \
    --sortBy 'tEItOCrDQ5UmSVkt' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'S35o8zzeDhZRzJxO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --name 'HrLDA133EoCY7LiP' \
    --offset '6' \
    --sortBy 'tXxv6iBqI5E7OW0E' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'MRSqbfi19m9LgwFv' \
    --limit '27' \
    --offset '49' \
    --preferUnlocked 'false' \
    --sortBy 'QT0MfWlEmsl75WYO' \
    --tags '["PSLociK36PGcfy6B", "C4gWkmSNgPDXBIRk", "fJBypEF6yGOCQ8UX"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'sCbhQRrqY2HztvXC' \
    --namespace $AB_NAMESPACE \
    --userId '9lyhNxvsMK9NLBpx' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'uIWH7McYeHpLArsJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Fp2aVN7amV4mRdV6' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '4Tn87FH6a0upSWRC' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'MRDeqMT6rA3mVCnz' \
    --achievementCodes 'gQQyd3mmBbiHU1uS' \
    --limit '94' \
    --offset '59' \
    --sortBy 'QTU5VbDwrNmJMK0M' \
    --tags '["ErVEAfwG0bUL4lWu", "QMSUXBtSQ1hN4qY6", "Xzg4YwGPAiMGYa56"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '92' \
    --offset '41' \
    --sortBy 'updatedAt:asc' \
    --tags '["PyN536IfLGuBoikY", "P2Eg6r2KhKNF2Xef", "gkMhhWKxrnDHDuZB"]' \
    --language 'BL1eIR6p4KIGgBDo' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'IDCw3DKrDDWtTqjc' \
    --namespace $AB_NAMESPACE \
    --language 'V1bVnbFrtS24pbrI' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'VBWcv2EuSuJGTfX6' \
    --limit '37' \
    --offset '19' \
    --sortBy 'YrQyKH3rrUKhMBFz' \
    --status 'TcNusdePJVcJx07P' \
    --tags '["7vRHigUXjSXa9Y1q", "HwCfxzRHe7c7wb57", "JIVwccqndoWjxKQi"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'dwRkX0Op8xt7759I' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '29' \
    --sortBy 'yN5qrVpftsJpYfdr' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --name 'E2K4bG19oiJle9SU' \
    --offset '77' \
    --sortBy 'ef410CKIPku7oc3V' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'b8oNLjyDNElSvX7A' \
    --limit '40' \
    --offset '10' \
    --preferUnlocked 'false' \
    --sortBy '3q1rEN7awqSclvbu' \
    --tags '["f3Z1xICcQ6Ar0ogo", "A5iX2GZG3lwAkGob", "I1d4pksIlkgxaAbE"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'rYIvxBzzZwCPndrv' \
    --namespace $AB_NAMESPACE \
    --userId 'TLJWJuUJ13HFP8vJ' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'ACwlPbegvp8RP50g' \
    --achievementCodes 'Kh8uqfXlKTuh9fSa' \
    --limit '7' \
    --offset '64' \
    --sortBy 'cgQGdyWG0Pd8iYWB' \
    --tags '["wI8KrLGak6m57qWZ", "sZ5YaQpBw24CiuWJ", "KpO5kFGkQbhO74eS"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'OQygrIZcyFg9PCaT' \
    --namespace $AB_NAMESPACE \
    --userId 'BekbuTFTHApiEXPs' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE