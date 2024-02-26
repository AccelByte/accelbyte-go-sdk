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
    --limit '37' \
    --offset '27' \
    --sortBy 'createdAt:asc' \
    --tags '["0agriXSykMYfdnBe", "No9dimiXjsGODnV8", "5KLFtvulg4u4DuW7"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "w5H0RV7S5JVDjWdl", "customAttributes": {"YV4sPSgJ8kVCtgpn": {}, "9GSarOoWoSEEWo6f": {}, "Z8XG2KKlWWwjWfMY": {}}, "defaultLanguage": "g0KKpkMD6VlxurSO", "description": {"ERKv1kTC0h7jMoM2": "zOsd7dXylF5ybNbS", "5HkSPMMAfPlZxEii": "nqo9LbcGhVFLKPgm", "5GLnZmHZ3QYJ7ZeD": "8NWBKQRS7hWKXoRr"}, "global": true, "goalValue": 0.320192955840123, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "jRY1BsEWAnZ6qfsP", "url": "0lbEBqDWd4A6JjVF"}, {"slug": "z9RbZlqPb86cdN2J", "url": "JTc5kDkvDBQEqFDL"}, {"slug": "2cqcxBr5IisohJSt", "url": "gifFNdFCM2kXdLAg"}], "name": {"C2XjENEpxQjEf4LU": "xi2yxSalBcSExbUo", "nRbxF2Magt9w3xBC": "bg6n1OEcjayh1qvz", "5XgORH0TZ5uYT7F1": "2FLDhq6OD9PZBcbQ"}, "statCode": "YaRSpDTFAZgy0aGs", "tags": ["ahC1whoh28bUBo2m", "4OlIufoJihXd1MT9", "wWzTDbU0mwMLWsQp"], "unlockedIcons": [{"slug": "aaj8tZZRBc4pgm08", "url": "nY7Xym49i4AdcKgz"}, {"slug": "K8TJ8myZp5OHa5vY", "url": "MIpGEyIZ96R30iJC"}, {"slug": "y9KecDua6vJvOXzj", "url": "V7w9pj20NPHH5j1C"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["tmW33HuD6ed6rotB", "bhVQhjuVIPbowa2J", "QMHtj08d0NrzACbc"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 's52CE83ULouJJp8z' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'DqLJVlTdYrieq7JG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '3TaU4iU4DmYL14Z2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"TKV7vZEfenHxhbEp": {}, "CejzKUZm2IpDn6Yp": {}, "VZYvR717V2FyKVUt": {}}, "defaultLanguage": "99zSfa164exHN6ur", "description": {"bVJrn8UXrbJY1Ymq": "rSNgD5dwBA7D35xT", "6C2SCyF6COOFBsW0": "xKZ8vIceQdBUFbG0", "g6idu8vrL7aaMJj4": "1mSXsAsVVUDvu5F7"}, "global": false, "goalValue": 0.4351487021670749, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "kP3kloLWhubwefp1", "url": "0p9FUDDof4d8GYN6"}, {"slug": "XO5XzuQevhGepiwJ", "url": "0FFTvafYiO0O4JYu"}, {"slug": "7qb8N9ZptASN5VnW", "url": "uFI0zW0xerqiq8XB"}], "name": {"ajmOoxtE9PF5AvGo": "GwEYCcgExudV1BAD", "6NdATm5s6BwvO5qh": "UwXuCCU539CIr59N", "3kttPqtEJrTfJ2qR": "vhJPq6vXr2LY6nUv"}, "statCode": "SflKj4kitYmaAaFh", "tags": ["LB2gpmpIiq88KyDk", "MMEZA2vyKYd4KJJq", "4M19nCev8vSsOFRj"], "unlockedIcons": [{"slug": "Uw8yqnnAefh2jwAA", "url": "u1eA8lPpkzRF4Ohp"}, {"slug": "kIrE6MTnSOIFxbp3", "url": "DVzgEqQnwHj2WYN1"}, {"slug": "fw05Mr4NmkUirwvq", "url": "WIMIHAYCnHV2BLdT"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '9czwQO4yaHplVcZE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'JrqUTzbYpH59pH3S' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 40}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'iv9T8BTlw9ugJdai' \
    --limit '68' \
    --offset '48' \
    --sortBy 'XbTSLSwBPXCtzRgD' \
    --status 'r4q2eO5Tvr5MZ3O9' \
    --tags '["vF49vQAJfneFjNpq", "HKxteL0fJu9V1od4", "lR5y4rQ8Y2DMKVDu"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'DPvDuurBDtmlUNbP' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '37' \
    --sortBy 'kMS1n8NnCxsEoJPD' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'TVCHLcEH2jG10BEi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --name '6lgDlIkWUNpdhBHO' \
    --offset '59' \
    --sortBy 'Zbn1pSzRuW7v53Zb' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'jhXpCQks3TCu15ZE' \
    --limit '42' \
    --offset '45' \
    --preferUnlocked 'true' \
    --sortBy 'GdzmRcvICoBCI4tS' \
    --tags '["kF9d0tRRAM6zQuz8", "XfX5swvBY3YziWUN", "CJTxKVdsBzno57CS"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'qkI9s1Iu4ODeMn7r' \
    --namespace $AB_NAMESPACE \
    --userId 'XWTMd8LmEPgrPJuy' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'zRQnZfiifYgqYS9h' \
    --namespace $AB_NAMESPACE \
    --userId 'n7VfOw49oL4HLcCK' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ebJfEspmypInayMD' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '3JG9GT6BBUPuqAOp' \
    --achievementCodes 'heHgGJEEEaXue1Y1' \
    --limit '73' \
    --offset '39' \
    --sortBy '7HPdXruZlcbHk5PH' \
    --tags '["UVXgRmkb0tgkLyi5", "7OSkgnrv7mL1hAUK", "jdu3dDinAAjJiI0e"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '91' \
    --offset '34' \
    --sortBy 'createdAt:asc' \
    --tags '["zjwivoSD7WyEUVVd", "1IVRCMoczx7Ra77i", "hNUG3yYatDpgCg5f"]' \
    --language 'qkLKnnbbDLSCxMAv' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'TQDszDjohvbACj93' \
    --namespace $AB_NAMESPACE \
    --language 'gHjdmLfNyWx6Atok' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'eF2qWJWRg4mC1qDc' \
    --limit '3' \
    --offset '0' \
    --sortBy 'wgK2bBF5nEpJjrG9' \
    --status 'uWmTF5O2EHJBy9vM' \
    --tags '["c898qmJ3ZfgbUX8E", "pb2JV0LRYi0RE3th", "Sk9W5qlzgXfT5iuP"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'MbXqnGicW1mv5iWi' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '94' \
    --sortBy 'F5WaHw7FNOV1hh3C' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --name 'N2NfPasihkYjg9Xg' \
    --offset '13' \
    --sortBy 'rzIlY1r6LXeJQeKT' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'SerzGv5BnMxnoZ5s' \
    --limit '89' \
    --offset '4' \
    --preferUnlocked 'false' \
    --sortBy 'rHtMBJ3mSl4LncHm' \
    --tags '["MD7ZkQ6urFtOhTOq", "V2DHWd0NNpQYSi98", "NbkzPyYkGDeQrkFe"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'U0RFXyCTlv3UnUYw' \
    --namespace $AB_NAMESPACE \
    --userId 'L7IN3a2PLcry2rsu' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'zv2v3eDXsJu0eKCE' \
    --achievementCodes 'mLYqMQOGfSFpCdB3' \
    --limit '64' \
    --offset '4' \
    --sortBy '8kXCHNenrJQeI1tl' \
    --tags '["DF4paK9PmvGh23hb", "rLNvrreXWfMIZyX9", "oGxs4gMKqQN3ZME0"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'ih4IRx0uAWHmHW0W' \
    --namespace $AB_NAMESPACE \
    --userId 'guMy5Yp7hId2iUD7' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE