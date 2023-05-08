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
    --limit '94' \
    --offset '8' \
    --sortBy 'updatedAt' \
    --tags '["GMDLgb5yBEU9x7ec", "wMAx0TZT3z8zforM", "OrpBo5CvgpJ1rru6"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "YWqthKVa95HVjPiJ", "customAttributes": {"lVLJioEJUw25AJzU": {}, "3ajc7rlU7oUWFBbP": {}, "WjsROX0VBkwW2Wks": {}}, "defaultLanguage": "muWjrbkIRJIm50G3", "description": {"OFqU1amAbLES7z2Z": "tvyLyAbuVUZ2mdKK", "mc47ifKZxVka16Pd": "2VjOjtbz5q4z7MEa", "4xSQ4EoYZlx07lMg": "TR9ayQXpMkkTkk1X"}, "global": false, "goalValue": 0.8362380213705352, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "UfGBBx5xJgSixqCu", "url": "aQWz9rcad827mJmm"}, {"slug": "X7fppOKUUKnVDeia", "url": "vg1JkxeS7H39uEZn"}, {"slug": "KvLyCNvX78aUYORx", "url": "qm5ZbL4NcFcGj6eL"}], "name": {"jz4k82toCCkLiNUs": "KI8eNRBQuwnsbWjX", "rRwge0hcf8VKthvL": "wfSUOi5AoV5UXLt9", "6vmxXorOokv2MFFt": "ZMK460x7pwoMb7Cw"}, "statCode": "HWHIyLsyiuwADABV", "tags": ["FaQD6heYf1qSamfC", "yIvngHxuExigN0C7", "OaNFpTaUXdGrJbxA"], "unlockedIcons": [{"slug": "gRa6eKLsMuMQedlW", "url": "gXbfyV52ZiEFXnrT"}, {"slug": "yt1PIwyxnNYm3lka", "url": "KPzwZRFkGg6FKcSw"}, {"slug": "0FkJ3TVa8i0waO8W", "url": "6XpBB9CgNCVCPDIE"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["SW0HQEnBX3ICoAhp", "5XyWSFNIhvvg7bvx", "SQ6uBQxcVK9lb8l4"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'FYFzMSXZWPtTvNnF' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'xEho1Foxgr7fHGxW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'jHTNRIqO5FokMZtO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"7T3gei6PmSS63Qa9": {}, "yE0s0sJjCrvOU1Dk": {}, "ioBtQJNTanR0lMgV": {}}, "defaultLanguage": "wPTdrT6AnhHCvbuE", "description": {"1S69g7zjYBMLulWs": "LhxKruH2c1AZpqxJ", "QyIQ3IFxM1BQSc5O": "6ChnPUZPcVDrPwLG", "VD48XQxP6KT1RZE4": "dw6q6wmduzTYQQue"}, "global": true, "goalValue": 0.6705372353809671, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "kFQ26ggD02lA6Krv", "url": "XbaUZ7IEoTidS2li"}, {"slug": "XLKF4S2cnepsSbec", "url": "BbgbVymD9k2fy0gO"}, {"slug": "egKPyuKZp5HQT6bw", "url": "C1gvCl8r4CBD6wje"}], "name": {"LZMHTs4NO2uu1Evq": "58kf2VyJEiQAVKht", "aWamFGngAKmnHhoB": "200wCkm7JkL8w4RQ", "N50HJXm8tJrYPc0s": "qNupKHLKoUh73rMN"}, "statCode": "LCtzZFQ5ESkHqp6x", "tags": ["2WIyRGY4TufM2Wh3", "gZdAH8GqM8rC7Red", "pL5v3cD6VCmvU6Yt"], "unlockedIcons": [{"slug": "r4FyFixwGfwNXkpj", "url": "ea9OfjyOLUMAmQhO"}, {"slug": "dts2rfVstxKlMaoY", "url": "porS0UgTzS0MvOYc"}, {"slug": "M7HIJjEbeaLXGULR", "url": "oGUwlrrfCbTYccRR"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '5ObMznEQbvkc9eEU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'emKV4zdaNGvMf7Wf' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 87}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'foHsb7Bvlj8NJ2gy' \
    --limit '100' \
    --offset '22' \
    --sortBy '1iY0WqzoNFjFFoKj' \
    --status 'krrgJDaGMiGynF5H' \
    --tags '["hphyphKgU4zzE44Q", "Qqv45ibAoe5vBmVX", "mbpDq70EtsQZSTXq"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'VsZPQC40jFcvzeKm' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '75' \
    --sortBy 'JKytoCemKet0fyv8' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'u6wA8LXNrKL4r1l5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --name 'N5TWirqReKgPT6S2' \
    --offset '30' \
    --sortBy 'x9IyTeSYDgYA9eZK' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'r0Taazdo1AFZuhms' \
    --limit '29' \
    --offset '24' \
    --preferUnlocked 'false' \
    --sortBy 'Fst4SPwHpvCcgRyQ' \
    --tags '["J4FJJVDICPhYNn87", "UFj93d7END8pFD3B", "ZFdQjSRqv8eacVWL"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'l0yLRrgYN8dDpKSl' \
    --namespace $AB_NAMESPACE \
    --userId 'oSIMOVCr5NlYxgaP' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'vnKVMdwPknv7okD7' \
    --namespace $AB_NAMESPACE \
    --userId 'rqXzJfnNPRuhx0Dd' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '1N8410Do2INrBphr' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'RqCJJYYMWGvK1XTv' \
    --achievementCodes 'jh2Xarprb8DPy3jt' \
    --limit '2' \
    --offset '16' \
    --sortBy 'isvmEqbWpDGCXH1j' \
    --tags '["k8D2nW6maAFjkhUa", "01vKSFvvJwOihmt9", "flFwx9IMelLzgmU8"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '91' \
    --offset '82' \
    --sortBy 'createdAt:desc' \
    --tags '["NWMJIrErIrsi2Azq", "CBMahKnUkdQ912ZF", "TrE2Uk3L5McWDxd5"]' \
    --language 'Ac2TSirA0ds6OGop' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '1z41n11nthW8vuhj' \
    --namespace $AB_NAMESPACE \
    --language 'p7O7tMjBKnj4wn5s' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'EQPIBVqdHyZOk6qf' \
    --limit '60' \
    --offset '74' \
    --sortBy '8TvP2LNhwILlnvDX' \
    --status 'hkCV2FVbRLDZO1jB' \
    --tags '["DhhTgJIQwHLg1QIL", "KrhORFlMAII9TP2f", "F19BEHVcAWHX0u7r"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'lZpzxcWcbLeNlJc0' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '82' \
    --sortBy 'jWWOh3K9jQzDAyu4' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --name 'gzYBqDe6O1xNREH9' \
    --offset '48' \
    --sortBy 'F0KW5l7qdKEpWeAI' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'IcfFovD9UNR49HNW' \
    --limit '51' \
    --offset '76' \
    --preferUnlocked 'false' \
    --sortBy 'iQdX2Kn5elTRsm65' \
    --tags '["x0uGkAW4pNuVUa8D", "JiLUdv6D0WPG9Obb", "T9OsHARICORV94aI"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'ECCx7XizNarz9TyG' \
    --namespace $AB_NAMESPACE \
    --userId 'lnPNANABusbB0BAJ' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '4StuTe3y0OvNZl3y' \
    --achievementCodes 'rqYJJ39npVHsuMJQ' \
    --limit '4' \
    --offset '88' \
    --sortBy '0ttkSJQpFiAYzgAW' \
    --tags '["1wuWrqjV661qwUh1", "PsqtuktVsHspAKwG", "Hw46f6KzhEta2y6A"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'WiwBdYnHbMzSPODH' \
    --namespace $AB_NAMESPACE \
    --userId '3J7SmQvvmjpxkV1g' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE