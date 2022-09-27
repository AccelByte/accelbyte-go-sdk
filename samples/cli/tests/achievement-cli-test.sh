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
echo "1..16"

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
    --limit '74' \
    --offset '44' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "dLugBkMD", "defaultLanguage": "b72Y89Sj", "description": {"1AJrkUKD": "Va5jYRi7", "WkhumB6f": "u3fpEsiK", "bj9JBG7a": "2HG7TXUi"}, "goalValue": 0.28085472798706534, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "qbsMIBhl", "url": "UtDbxCFn"}, {"slug": "KYosAH9e", "url": "NlYn1TCz"}, {"slug": "TywQQQgj", "url": "tf83TLah"}], "name": {"ODSMNXKx": "NHAOGPmR", "WSjCN0Gq": "pntzbD9X", "cSrGUbqS": "zMQfdAVG"}, "statCode": "cEv2LJKh", "tags": ["vHp1yjYd", "3oex1RJT", "9RPT6s6E"], "unlockedIcons": [{"slug": "ngqMsaYD", "url": "02s5Pg4U"}, {"slug": "XdFYsAea", "url": "gwWBZqJo"}, {"slug": "UsvDj0KJ", "url": "r9xfgw1P"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '3lHZzcoi' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'YOdQ0Sh7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'LtEsJLNx' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "OFOCwoaT", "description": {"uFt0MiNR": "4JxTlsqu", "KL5ljnV8": "jKMJhXvc", "xY96u19D": "H7rmSYZY"}, "goalValue": 0.5138332190030358, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "qUgRuiSE", "url": "dGxvh9Ys"}, {"slug": "uIP7xCev", "url": "P9VjXbfM"}, {"slug": "3NXU461m", "url": "AqxEJM29"}], "name": {"ezXQNOaC": "HY5lbmnP", "8hyOYroE": "HjCNRXXS", "99JDT1V5": "UZBv33EF"}, "statCode": "usnYelsn", "tags": ["rMYVeXPL", "Grgi5r3a", "ZOVJohhh"], "unlockedIcons": [{"slug": "NerOU096", "url": "77pHfhDn"}, {"slug": "fCigwGTn", "url": "aNB0cBU4"}, {"slug": "Sk2KAX1m", "url": "xHBnJdRQ"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'NDi11jah' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'UtUWXHpO' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 26}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'DGGBAiQN' \
    --limit '1' \
    --offset '29' \
    --preferUnlocked 'true' \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'eP6s4Rbc' \
    --namespace $AB_NAMESPACE \
    --userId '6glPJ6XR' \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '1H393DZi' \
    --namespace $AB_NAMESPACE \
    --userId 'zO1ZTEkS' \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '8' \
    --sortBy 'listOrder' \
    --language '3JhUyU0M' \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'xwwrDcav' \
    --namespace $AB_NAMESPACE \
    --language 'ngnIvjrU' \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Z4VCM6ed' \
    --limit '54' \
    --offset '100' \
    --preferUnlocked 'false' \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'vhrNC1t1' \
    --namespace $AB_NAMESPACE \
    --userId 'nVI9t6BW' \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


rm -f "tmp.dat"

exit $EXIT_CODE