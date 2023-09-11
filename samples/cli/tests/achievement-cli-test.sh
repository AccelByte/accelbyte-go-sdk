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
    --limit '23' \
    --offset '68' \
    --sortBy 'createdAt:asc' \
    --tags '["vjJZvJysbOWSuJqJ", "RKT4mRf7e5ttko0A", "q1a2BPnVk80ZuI75"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "wc6WDORgcYL5ysX6", "customAttributes": {"20lX4Of8Ni9aaDjG": {}, "lOQsqYxMmDfbL8lt": {}, "OP44yX9kcjYfPJIt": {}}, "defaultLanguage": "6kPYhJJfeGjnsJyI", "description": {"8Y0UcwsSGKDbJeGB": "a5vObUOybFtUActO", "fA71tTbjX4ZWFj9h": "OoHfZ05uFg1bCDnv", "8MRvKbFBx1K7VFDO": "puaFwxPHzKnJhFi7"}, "global": false, "goalValue": 0.6880565170378844, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "WA9mozbCseEtiROr", "url": "ipOnWe8WuptaXk8v"}, {"slug": "WDi4OZl4Qxcl1spt", "url": "WmIvQpsdXXsOc73p"}, {"slug": "XsZ7vp8TmqBMFdQV", "url": "fUFxmfoTRzl9uf2L"}], "name": {"Jztdwv3NfnvA79zD": "ASy9la9vTLOncsiZ", "Ct7Li2iJAhV6v8xV": "kRZn1Pp6c5fNLjaO", "ggXIDfeGSvPeC8rE": "OzU72dJhUsSn2FhR"}, "statCode": "kA853Ctoohn0dcK9", "tags": ["1yKdkoE5i83NONwW", "TFwv8iPmd7hxp19I", "2TvOE0zPmrtCo23c"], "unlockedIcons": [{"slug": "rOQO8H9aRJDgvvvA", "url": "7tRLzlro4rpWU7Me"}, {"slug": "Fh56ikuBxo10eUKF", "url": "XtIiYV7KctmVu80y"}, {"slug": "xMuvshrirHXFraqv", "url": "OQarSGpZzLNU2pu4"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["Cb1sGxg3estzMTig", "qhpFxDsfrXzyJno2", "mQXP02P2jl8VUzVu"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'jxUJ240YGbgTMJkn' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'XRgJfXU5f9YhtJvI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '9WDOoCtdo6HjNsr5' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"FwEQuQ8mxNs5Zm9M": {}, "TmoQsP4Sp5UObYsJ": {}, "XsItUoqcwsoJr0Pe": {}}, "defaultLanguage": "YLdEIJ0ig1jSpgUB", "description": {"hj7uUMIIFRRf3GuQ": "RQappd4x9KHWDBEL", "GYjKBXTkZbGh3FtH": "vXWiQfDuMVzKnVSm", "ncRqCZt0splN4jXU": "aRLJuchttaI2jup1"}, "global": true, "goalValue": 0.2876721886794479, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "aN0DVxqXHLECvc9E", "url": "sUu7pEqgN14yRFU4"}, {"slug": "hDorHQwmnbno2mVV", "url": "a8huMHUidFeN7ZWR"}, {"slug": "APPZbvO8oL3KscJW", "url": "iTSDgo49nzGYkl6K"}], "name": {"s7sOCyWFmZcr6JPc": "v9AoGBLVU4w2Q1BQ", "1z0InFDGAzYIuGr6": "PS1N7Dn6caGIG7ln", "GpzQqFttk97TmsL1": "vrRz97wmNYdDMIjS"}, "statCode": "U4d3CbY8XOcSAjEn", "tags": ["Ol49ApMEwE2DauL8", "vPQtNVFxKahGUnbc", "R74NKtdGQc5yKLZN"], "unlockedIcons": [{"slug": "K0UgCeA0Cnk4dcXm", "url": "61hlTXSQOHppaiSV"}, {"slug": "JK9KZ3U0nHtKbJti", "url": "Rk9ipozf3OEZP4Ez"}, {"slug": "meMXx12KhVQ36Xo5", "url": "QozSpc22azbCXFIJ"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'uqoOGQIls5rduSPq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '0ntjrCu6mFW4MBfU' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 89}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '4IdlEjgLe5RQttyf' \
    --limit '89' \
    --offset '44' \
    --sortBy 'AbGdD2pfn0WZXtM0' \
    --status 'Rvthp5xCCoSk0Q3Y' \
    --tags '["WNwpeCLTSsVY4DGl", "UEL1ITl6xIDpUqra", "F69syvQsuwfGyCFh"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'n0tgxFzHHXwWqb6o' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '52' \
    --sortBy 'dupVc0MY2FA2jsDn' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'GWpHf6ouyD4Ybt7i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --name 'GYP2YSrurZxRUYMd' \
    --offset '89' \
    --sortBy 'tw58xMRkqA39z194' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'PyqkkIZpqTznmrK3' \
    --limit '53' \
    --offset '2' \
    --preferUnlocked 'true' \
    --sortBy '1qCnAW6rqRy47n0H' \
    --tags '["RmicxUIEOpKKaBd2", "WT4B81Qx3hoO7X55", "jLMU16rdY04CISzk"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'OP96erZRxb6QMeQ6' \
    --namespace $AB_NAMESPACE \
    --userId 'HNb943rbPx6KVyjF' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'LMu0M4oeDZ1s6DaU' \
    --namespace $AB_NAMESPACE \
    --userId 'cpprlwzQMhPh6syd' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'HrSDxOooFrOLInQB' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '8zxCL24vcVVeTduv' \
    --achievementCodes 'IoDX9nOryGdnV8mI' \
    --limit '31' \
    --offset '97' \
    --sortBy 'VEQ33KSmB5wdFE3p' \
    --tags '["3NLH8yi03VfZlwML", "GjPJYLnJ71XwljOi", "XFGEd0i2lOqFJhQB"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '95' \
    --offset '3' \
    --sortBy 'createdAt:desc' \
    --tags '["X2uuqSelNpW231ZR", "aUOwZmb0D6rB1lQa", "6uSDZ9kDf7kjNNX3"]' \
    --language 'AOYw4p9UqPcJLuiq' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '1EkTwUhuLWRJsAEV' \
    --namespace $AB_NAMESPACE \
    --language 'HSqJrBYNmiBOLha4' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ziCWGu6XqqgxJLvm' \
    --limit '97' \
    --offset '96' \
    --sortBy 'Pk4oYt5PYJafIl7b' \
    --status 'XE70ZmqtJdBZ7lQ8' \
    --tags '["fx4kEQOnhcW70sE1", "AW7yAtUxpMX6qZBQ", "RJwbhsBPPX1edAeL"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'gFxhxrzfPFo9vP3A' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '91' \
    --sortBy 'k8FNMN2cwQ2rYSC1' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name '7IDQPLMpq1XByWue' \
    --offset '68' \
    --sortBy 'suB3oAO7Ss8ZKraR' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'OI3GAsmf2jRoLoPh' \
    --limit '45' \
    --offset '56' \
    --preferUnlocked 'true' \
    --sortBy '89dOsbp4OJflAyGt' \
    --tags '["78CUAscOKIyJxknQ", "o9aQI0rTouhAwQNX", "mEHlIfNmKLlm7di2"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'M6OaMA1xId0nooNN' \
    --namespace $AB_NAMESPACE \
    --userId 'jOIiBdLXLJebM8BU' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'vs1aShrvjOCDhrfs' \
    --achievementCodes 'JrynzEHMKlzXY4nZ' \
    --limit '14' \
    --offset '31' \
    --sortBy 'W2ZHTGa9ESXNeF8f' \
    --tags '["KTGj9SFZEnMsvpge", "Te3lzrrG1OFDYf0a", "cdLnr8fU6EaR3Hew"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'sUGbBVzjYxUbl0DF' \
    --namespace $AB_NAMESPACE \
    --userId 'D6SfPxp0NJztfvFq' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE