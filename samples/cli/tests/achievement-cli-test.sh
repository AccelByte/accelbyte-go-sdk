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
    --limit '57' \
    --offset '79' \
    --sortBy 'createdAt' \
    --tags '["g07tVF33cLgDdVJs", "isxpt1ZAFM4S781w", "5cyuhJ2ExAlTFmk2"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "zi2GzMuoU15cwCdU", "customAttributes": {"sNZrCoNoTVAJhBk7": {}, "ryG9keDB8QZMsmzQ": {}, "gVjYxNTfHOKCBzPo": {}}, "defaultLanguage": "Y4QYr8CtpYyfaBNp", "description": {"GXZPD7qdSQgzkaRQ": "T2OWP3yf3uXvmzUN", "viCXd7nSCH7H2m6v": "h2ZpZpjnstsLhRjw", "G1wO21y98v5A6AGD": "mg7YY5moYSh8HpfB"}, "global": false, "goalValue": 0.33698615723540337, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "a6gPXkK03KE7LcDl", "url": "eO8mBnYLyZrl6dh0"}, {"slug": "xv588AhQ4q1RuBsM", "url": "eeqBnKWEWH76dM3Z"}, {"slug": "E4gsYe6k1YKctijG", "url": "GSy0pJ2h6bZ4wD3h"}], "name": {"762tHLtDlAS5nZ5m": "aEfNtNTCtuGmLxMo", "h73qPqH1k1v9TY0i": "oBpmdBrMueVbr64A", "VaDYze0AWxiTptOe": "j6i74TVMkRPS7kyH"}, "statCode": "FPQ8KJ3YZWPV8j4w", "tags": ["7eNmumCSeZiaody8", "RJZ7lHsKRlSgDHnE", "MhsIWEBl5yimsRjK"], "unlockedIcons": [{"slug": "KtbeoAhbil1a3W8H", "url": "IQa1GPdOPvumJWj9"}, {"slug": "eqc8MtijUTffUJ6o", "url": "jGSTPEjnvvD6D23H"}, {"slug": "S2qXoQWhECqTAHZd", "url": "Zj2ji2hWE9Yjk5ao"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["GuYtIQoeeTH1NMZQ", "QHHuQwoAkOH0Qv4D", "IrowuOmNdkhZlFy8"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'BJNHOwkIksCEyQ52' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'StW4OJ9pX4ZbysKE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'eulw5up0k86fxJo2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"4ppp6yR0mYolOJ4V": {}, "IhPsFzgkLsXvGkI8": {}, "LH24IlcwGjMo6psz": {}}, "defaultLanguage": "5cIcxIM0E40e16cq", "description": {"vEbjg1VJIXuBYllQ": "L0YdnIOpO3A3V7Le", "4ixJ9xXGa52kU7tf": "XnxttNwjlFL1qoaK", "sV1eqSm2tGaiLGli": "PfrBm2g5XeS4POMv"}, "global": false, "goalValue": 0.704790823593753, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "5CcD1QcHdAb9Ih9C", "url": "o81DxlR0K7ufV5Wa"}, {"slug": "CnoeUIRnvQw5Ms6S", "url": "cTaslB0ObTvjvHc3"}, {"slug": "pY3vwYk2jkwJ12a6", "url": "O2zunzwFaFTaxvIg"}], "name": {"gFUtEmmS3b8qxON3": "M63RNYUcV59lpLME", "rplPFFp3bo3iJE2j": "7Wa49gjOJe2QTTdk", "vb9vJLo8b7gKTb9m": "WXnb1nFZlBiqd1ac"}, "statCode": "7gm8MNxsC6P7KtR9", "tags": ["n5CmgiwhjbDdrvKs", "zratFP75p2Am8viH", "9fMpampbD0wvxi5l"], "unlockedIcons": [{"slug": "k1vp2MQIDONul7En", "url": "ePuhrVLfppzIn9Fz"}, {"slug": "WdJVQxYqh3KGlVI6", "url": "t6lRjSqIlMTBDR3b"}, {"slug": "UxfJhzR1JvwYqF3W", "url": "kmlKoIL4omjJa25b"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '5BV72V4Qt1UMRM3i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'Fc0MBj4MkzccSZCz' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 43}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'eABaFV3ivJFx69Ht' \
    --limit '32' \
    --offset '24' \
    --sortBy 'INJv0d4LaVJtnthU' \
    --status 'Q4RJAJM4gOCRg3KN' \
    --tags '["quW4icyTGktVvecR", "Pv5YQ7LxbxrdLIpn", "QH2ra1G72xeeCmq9"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'KEOa4qNdiOi9Zqs9' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '33' \
    --sortBy 'Jwkc5GX3CH4xqPoo' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'dhLR31fMzvdmFcZo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --name 'tCgoCKmLP0oBhmb6' \
    --offset '16' \
    --sortBy 'jljXLzj5fm91gtae' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'DCE6pcIVksktQpAp' \
    --limit '95' \
    --offset '57' \
    --preferUnlocked 'true' \
    --sortBy 'XZSNPVwRofzKOhXi' \
    --tags '["5tZg3cwE0YugAIin", "ZcCwmgaBrwcVXkcB", "FPs8yCvZoKtm7wWH"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '2lEtDmtpN0at2uEy' \
    --namespace $AB_NAMESPACE \
    --userId 'oC31mhbbSW6mybzs' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'QHYE1UeQROkMAWDy' \
    --namespace $AB_NAMESPACE \
    --userId 'oBCbENfyhwzgL15u' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'IsZI0U16h1MR7rIK' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'UPY0aaJwjaCK39aU' \
    --achievementCodes '41CYBKxokoKfmXAn' \
    --limit '86' \
    --offset '85' \
    --sortBy 'LoMUV1V2e1O9g3PF' \
    --tags '["i4ranIpzu0HZFiDU", "ttqk8tDZWuONACaM", "mjjFxG1YzCmfFlIr"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '16' \
    --offset '38' \
    --sortBy 'updatedAt:asc' \
    --tags '["5Ao23owaeLp5uRW1", "dAX6sSuRbqEf5e4t", "O6kOVZ9pPrFcYBPh"]' \
    --language 'Wm5miVETY0lBOLtj' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'eEQq2XAbklaz0hWu' \
    --namespace $AB_NAMESPACE \
    --language 'uiXLWuSVHqx7AcC8' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'YzPrKImAEgYB9B8E' \
    --limit '95' \
    --offset '37' \
    --sortBy 'r5Eneyr5KuYFJm50' \
    --status 'sZK8cGB3oBDd0X2l' \
    --tags '["IE57zJzgk1MVaQNO", "A1WusXcMzjpxJfYy", "r0CHj6RtnmXCEV6m"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'IkX0pG8M3iyYMk3T' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '55' \
    --sortBy 'fphYaDwM5UFTHZm0' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --name 'cmwDowPVkjfQqb52' \
    --offset '20' \
    --sortBy 'C7zn1znLOQCAlOOz' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'WVYaruUIgJt6FmBj' \
    --limit '42' \
    --offset '78' \
    --preferUnlocked 'false' \
    --sortBy 'oniWB7TfqciU68o8' \
    --tags '["r2q0VzXrMDSsDEwF", "GqHH6rU8WLqMyJYi", "yOz07tFAtHnOGm15"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'qepnXMWJVeIBkkbR' \
    --namespace $AB_NAMESPACE \
    --userId 'o9VPx7oSz6BKWb2Y' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'k7ktkixjSf83pc4l' \
    --achievementCodes 'vw8KRxfXmKJRyy9e' \
    --limit '68' \
    --offset '86' \
    --sortBy 'QgyCR1IlwnIfCInF' \
    --tags '["MOSfSMZ1MVNFmIXD", "zXIZC9HjfOS9UEma", "94pjK9MktOuACZE6"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'I9v5LDBwCAvjiD8K' \
    --namespace $AB_NAMESPACE \
    --userId 'nuz2F1fzwpCVZ8me' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE