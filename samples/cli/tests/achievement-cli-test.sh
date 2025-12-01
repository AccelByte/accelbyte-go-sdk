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
echo "1..30"

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
    --limit '31' \
    --offset '82' \
    --sortBy 'listOrder:asc' \
    --tags '["KCty9sAxOKBcmh7d", "5DlzjZmGB7UAl6ql", "S2Ub1qgtZOpggQj5"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "W4K4ZNwwFy28CusG", "customAttributes": {"Idf7XMlpql5i3WvM": {}, "jUdv8iAhYp968Tkn": {}, "0S1xBuVcLARUdabr": {}}, "defaultLanguage": "HXaSv4aE6n5FvDq8", "description": {"b5N2yq4Nj2BtHNdI": "eOpPkLVE2yQCTlFy", "MOeK4Etb4Cd2gz52": "aey4vypdGw57mKyb", "vDoI3KWbQlXvREEs": "03FKBpd5Q9uQu8qP"}, "global": true, "goalValue": 0.7147822198337649, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "luCYtHhxrAkS8KJ8", "url": "jywWayD82foq7ye3"}, {"slug": "ALWzMpkyy8QdVcfG", "url": "CMAduxVVXQHyfpCb"}, {"slug": "fUgQithH29vZkVAV", "url": "cC7LApEZOhV3w3GR"}], "name": {"Wzzowx1stbiW8kQj": "imqCWc8INHSYgSSp", "wHZThLnG3kbMvLkF": "03uJ50aXQEIAZKc2", "1ac6Jx3nSXyTXgYj": "Ovii8x8YUBkUYWKo"}, "statCode": "RqKkbk0KvvpoVjXT", "tags": ["61eNi64CVNPzYrOx", "osE8CnW5AvItVnAM", "xN1PQoKsFNmuceud"], "unlockedIcons": [{"slug": "Cr1UyFqzHDGWDP2Q", "url": "nKF9GvBcUdmiqbWz"}, {"slug": "oK6yVWDvmJgeAKNP", "url": "PWwS9AJH758yUVgc"}, {"slug": "huL0xauDlyG1wk1a", "url": "ph7yj9LOcr1BcKiF"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["Bcy1EwpCSiVffbIL", "mnvzVlyPmMgqCQXM", "Q9NoL5BbPohbFWAP"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'YeKyNbtPlxrx9fD2' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'eJVTfJ2mydiy8aO3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'dcZLc3G3ZUyRNzFF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"gymegiDD0Zmyoj0Z": {}, "Dbx2Wb7LCwu1ibVC": {}, "6hPr6Ceu4BTiN7hV": {}}, "defaultLanguage": "tErmF93zlHdMf0Je", "description": {"21nLmKA8fqmivpKg": "oES4GKBu5yXiNvBk", "4VFKCHcZbXDmsNon": "sBRB1izIu4Db7wGe", "knwaEHLa7mIYrpIh": "RXL8cayRaCQWyx5U"}, "global": false, "goalValue": 0.887231515063446, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "2GApLeRpWuODEqIx", "url": "iYuNP38cfY6zOKxv"}, {"slug": "0yFsBr04xrTc8EPp", "url": "rxGnEkZCjy7hFjGI"}, {"slug": "hrdIzPEBNSWskUy9", "url": "3H2RnDgPasj5Hakg"}], "name": {"T1dHmnDwFnDIxGFn": "EUsY5VLOAWVCgk8Y", "nE9sXSqIMptZizpV": "XJWd49NOyxr9VxiN", "LodftefPyZJlds2H": "aTVOdWiixBqrs2Fh"}, "statCode": "dreeLHuTywyDR7Ji", "tags": ["AOMFTHZBX9l2dr2z", "ECUXQXgtNSPYJSLN", "E9WRifdNtUBXMcjE"], "unlockedIcons": [{"slug": "mDtDzo9vvmB4FAS2", "url": "0Z0htdwbQH1nsswP"}, {"slug": "3pXHM24mXvW6mzam", "url": "06KctTfd94d3tXbF"}, {"slug": "8215cwjxnz2yhEZs", "url": "BVqnb6hN4jpUv0mg"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'NWKW74a9IT0W5PRP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'buSjfLftH7Vrxj84' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 90}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'A45C0FEMGf3W0gj3' \
    --limit '74' \
    --offset '26' \
    --sortBy 'achievedAt:asc' \
    --status 'uVZmyLP2Ws8vlzcc' \
    --tags '["3SOPgtq8MsMJg4Kc", "kqQiKlnjfeCfMNbs", "lrAoxKMsHh2hAXPC"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode '9Wn9dhUJF5K3OQ6W' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '100' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '5VywicfBpuGNhh6S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "bSmubCerGHuVecDp", "eventData": {"eventName": "Zhjs3fBz3kvzkrXY", "properties": {"G9rsAZw5c7MvKKt8": {}, "TrO6ACOpLgx3dkTd": {}, "Po1OlHrLl99m0zIl": {}}}, "eventId": "3DE0GolG6kH3cl3L", "version": "mxL4zdKjxpILeaU0"}, {"dateTime": "OM5Bw4ulWkBMJb0I", "eventData": {"eventName": "rWTV2Hn20nEHAFww", "properties": {"1D4r55OshtV8GKkl": {}, "k5RTGQBOwURRdJPX": {}, "zP3C250UgZkEIkJa": {}}}, "eventId": "THoVkWUDyihcAOlP", "version": "fHqqky8Y0I5CCuH2"}, {"dateTime": "zTctZmoUE9Swe3Qo", "eventData": {"eventName": "JivHftz134xF22Xj", "properties": {"c8EsFPrNgCgExAX3": {}, "KSFyTJWwb099aPC1": {}, "4AIfhhzPvnihsnfp": {}}}, "eventId": "qP7Z9k1bnD0uOoZr", "version": "Pyn80ygtnILjA8sz"}], "thirdPartyUserId": "4RHxp5hjsXcVZdIo", "userId": "ikTEW9kT1k49L2Gy"}, {"events": [{"dateTime": "xPnqL1NBSpATG8rZ", "eventData": {"eventName": "zJ9WBXvZzMWI1gy0", "properties": {"w9GKU04K9V1fKSza": {}, "yLVChKAdnexg6Dex": {}, "LPSNBpOmvsXUgSGO": {}}}, "eventId": "3SkE39kACpeSNh6E", "version": "oQV7F2xOjZzAzzoy"}, {"dateTime": "E0NEtaA2k3NQVRoP", "eventData": {"eventName": "9UmROVYUTBCUqoVT", "properties": {"inE1kCbFFFkewre8": {}, "eulA9DlE5BA8lh0c": {}, "zIv4MrzYNdRPacQU": {}}}, "eventId": "FKgaI6fYfVEpYGZe", "version": "7UnDtiJ9h3hQ0pl8"}, {"dateTime": "IuT25HtPynMQmHoz", "eventData": {"eventName": "gySnArJP3XrtTpIs", "properties": {"eLySP3CJBh6Nkte6": {}, "1OiH1EwTcdi8aVjE": {}, "LBGyEs7JqieDF5vt": {}}}, "eventId": "LnadLlYE9JAhSp2n", "version": "N9ypr3di0fp9FhWg"}], "thirdPartyUserId": "AUvUz19twRyKaO5y", "userId": "VX1W8FjQXVSxZskY"}, {"events": [{"dateTime": "QwPjsp85c6NnbRip", "eventData": {"eventName": "DBy0NA71dw7GkIGw", "properties": {"cM2kTlfKu1neZNa1": {}, "3J8ssCsUSM5HROl0": {}, "y3xIwtgxuKnGI3qs": {}}}, "eventId": "kfOgRX3cdtvBImED", "version": "VHQAPCphLJFMZklL"}, {"dateTime": "Ar1leexd6H6q0Hro", "eventData": {"eventName": "BuUckfWXt4LIQz3b", "properties": {"DdmJp35w7arunMuG": {}, "L0YYhlHFnKMFYNmt": {}, "hY5wqiCEqgVZ3sXT": {}}}, "eventId": "T5DtHSntglKQdW6S", "version": "QPPxNjC5LCAZ68fP"}, {"dateTime": "y7dvyBCEa2YGCrIz", "eventData": {"eventName": "uF9dzSE8IJFJRbqF", "properties": {"c40GdZM5LM39K5PW": {}, "WRbLtScFLaa6YnmC": {}, "ZeOwKbxQ1NrdkOlV": {}}}, "eventId": "Kbg51rWbya6dq2Ct", "version": "8d61gAacf0ZjW4Te"}], "thirdPartyUserId": "6stXjSIeHhzaKw9H", "userId": "l6K2ZzHa7UsXgKb7"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'IRDEtQgx1Aqt9BCN' \
    --offset '14' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '7Nj8ZsLXkLn9TrPc' \
    --limit '78' \
    --offset '20' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt:asc' \
    --tags '["DuSNn10dSe049pbf", "ALOut7FRv2pX0U17", "0vE0DRdbbNosGeO1"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'etLOrJNkGH7MdbrV' \
    --body '{"achievementCodes": ["Ru5VA7ONEYbSwzm3", "hUfgVOzJw9PyUUHp", "8aX9mwdN79ULR1AG"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '8C0PAzAhI63NRJ4F' \
    --namespace $AB_NAMESPACE \
    --userId 'ZDZgpUEiyc6yJTVo' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'OhTbTa6jzJTXKysz' \
    --namespace $AB_NAMESPACE \
    --userId 'UhwN4tnIYFEexQMK' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '7TQpR0qFx627Iy3M' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '9FpmtWJlI1Igcs27' \
    --achievementCodes 'gJBELYbuqfepZ2JM' \
    --limit '24' \
    --offset '25' \
    --sortBy 'contributedValue:desc' \
    --tags '["A47VOGqKanMnteTv", "K88881V7k3fGealr", "J9XlqkF5AXfrQlIO"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '84' \
    --offset '49' \
    --sortBy 'listOrder:asc' \
    --tags '["LPctB2FPyfeMvGHl", "zK48ahrOxrYIv2I7", "hPUgVKdc76ERrnKt"]' \
    --language 'FEIJsTD6XvZdspnF' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'u4HR44Mq85lDNUaF' \
    --namespace $AB_NAMESPACE \
    --language '0STGZARUdlnTbcJo' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'vwepaXpZQSshmyW0' \
    --limit '27' \
    --offset '16' \
    --sortBy 'achievedAt:asc' \
    --status '5n3MpHFAGojyDKvr' \
    --tags '["5AisdH62kZihFVcL", "lY9m1NFkQL5Mvac3", "Ve3uwe34FXVHqn4D"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'jzjcTqKh24xCur1m' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '59' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --name '1iMDs1mo2TaRQmoh' \
    --offset '97' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'MR3ElgJmzCIxvWjq' \
    --limit '38' \
    --offset '0' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt:asc' \
    --tags '["9lV3Uf3IWsmSlFAq", "3emh6nUHH124EmIb", "iRDQEzzFIiEMfIhg"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'xNC8FXG22GjDqRtw' \
    --body '{"achievementCodes": ["azEl82oPxzzYZ2Y3", "K9QEc61bGDPUHyDi", "aVmhtDCshk6gYNn8"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '8KbIKm6ss6uy5HiD' \
    --namespace $AB_NAMESPACE \
    --userId 'RwgcJ72YHDMy0ENg' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '6kxdhLgiSZUN3vOg' \
    --achievementCodes 'EMxYVSIAHLXnnzg8' \
    --limit '24' \
    --offset '73' \
    --sortBy 'contributedValue:desc' \
    --tags '["caRCgn44TVhu8LqS", "kzmQqPwl7i5z8gHm", "Yl0SBH2kWJ1TRrPJ"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'dbNO1m7fe3zUDnsS' \
    --namespace $AB_NAMESPACE \
    --userId 'GqYERn7kIRVYh6u5' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE