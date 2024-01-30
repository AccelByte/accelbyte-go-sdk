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
echo "1..62"

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

#- 2 GetLeaderboardConfigurationsAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '50' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "xbzRJOyo1SOWM1yR"}, "descending": false, "iconURL": "lxaBqMCj9hxS0icb", "leaderboardCode": "9XoaYYdcNk6DJ1Zq", "monthly": {"resetDate": 0, "resetTime": "PoAP5Kf4Pkw9tLK1"}, "name": "GOzN88GR0mGRcl0L", "seasonPeriod": 38, "startTime": "ORdD51b0tcv0QL39", "statCode": "AMhJlxEisWJUPAk4", "weekly": {"resetDay": 22, "resetTime": "vRqwnXTMWtP7Gy0Q"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'RXhsyur0LyxDmlUU' \
    --leaderboardCodes '39HOkWL9w1sUUumX' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["KSmM5i30Lnp4t97M", "fQAO4u8XoiJo5SMB", "eMaIhjDvdYD4tmHF"], "limit": 19, "slug": "0vJ1cWwAasCjdamO"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["xKra4oucgCkJr9Lq", "qJXSEONIyd1qk7gy", "Z5rvxjeM9ITkf3ho"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'ZqXYK3MfZw3dL3CV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'ErhP4y4HVcBVQtXf' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "Js92xIXB1JAjF1Dn"}, "descending": false, "iconURL": "vpyl6DrpNQSKVua6", "monthly": {"resetDate": 21, "resetTime": "nEfLvEHmdhKTMT4Z"}, "name": "pljtopy9TViLNBst", "seasonPeriod": 88, "startTime": "5ZdoJGpbSx1cDpVd", "statCode": "Wv8PtUA2Ge8D8AgF", "weekly": {"resetDay": 57, "resetTime": "Flx1ttLktjayYUP8"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode '14hmqStwSKOvu35b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '6VOYhjzu76WkFs8K' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'Ia0Rov6WnmWH9G11' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode '8MC5eh5PNjAxacip' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '88' \
    --previousVersion '6' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'zNDCmn9YdwYoL7bD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'JLyfEvCH5xHwnmMO' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '7' \
    --previousVersion '69' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode '6MwlFSk2QyA6myLJ' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '37' \
    --previousVersion '3' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'a9vks7IAoCkxHIPn' \
    --namespace $AB_NAMESPACE \
    --userId 'kZ99eEGctwAHwmzb' \
    --previousVersion '93' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'j5D1qY8Xv5A7lRTK' \
    --namespace $AB_NAMESPACE \
    --userId 'CRCWa8aJtgH9lxbe' \
    --body '{"inc": 0.40784145618742196, "latestValue": 0.5328278052340909}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'tgxBQbsbZXUrrLDM' \
    --namespace $AB_NAMESPACE \
    --userId 'Ut4cq3d1pxRBDyEb' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'Ehqn8csfXxmTOlxN' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '42' \
    --previousVersion '57' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xje9x7KcZuelJ6bI' \
    --leaderboardCode '["IkOmELGMguPoReUa", "ISh9nqdizNxtFyyo", "lCk8C4JKeleAoedB"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'puPzkLTPrZUimqqJ' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DCYrQJCtD5NB7DZ2' \
    --limit '4' \
    --offset '54' \
    --previousVersion '69' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '9' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "X5Z7m2XgTCWm6zVP"}, "descending": true, "iconURL": "HCRjPfUakK5w8woa", "leaderboardCode": "ovsAyNBrQrz22zqX", "monthly": {"resetDate": 85, "resetTime": "ICZktCecNObMcfQn"}, "name": "LBozVQzO24Be95nS", "seasonPeriod": 6, "startTime": "RIkpzPc07OxpIsyh", "statCode": "03rvvG4HF1Msf0QG", "weekly": {"resetDay": 72, "resetTime": "5anozYu8o6TL5cxJ"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'UfU6bjOiAm42PLyU' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 't7tGPZjck8E3wN6v' \
    --namespace $AB_NAMESPACE \
    --slug '6qCoHoud3oR39jf7' \
    --leaderboardCodes '2c3pfrGygWYeiniG' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode '3xRvWtDSnVOMDDfB' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '97' \
    --previousVersion '42' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'XFEDNbmoTVjt5lUz' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '19' \
    --previousVersion '47' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'UH7bpSDi1SXzr2Sz' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '61' \
    --previousVersion '56' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'Q8lDuU5lFqzx2q5L' \
    --namespace $AB_NAMESPACE \
    --userId 'Ue2fBylBgcmj9tON' \
    --previousVersion '93' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'XffIVi7KTnEoAqSi' \
    --namespace $AB_NAMESPACE \
    --userId 'Mni3xghz6LVPPF8o' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '3jT0429BKO9Eakkd' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '45' \
    --previousVersion '81' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode '7XiFG9680gUBRA6B' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'GXCjiUbr6jTqOjwk' \
    --namespace $AB_NAMESPACE \
    --userId 'j8mpDeyWsSoPO7ty' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'lLA7046aYCcspkUw' \
    --namespace $AB_NAMESPACE \
    --userId 'otlkwSoTGvwdd8Tr' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId '1Vd1hsiV6ZFdsAdj' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'jDNTbT3DBgH9PbY7' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '70' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["gqZMkSocs9Z7K3Jc", "tM603DekZLe49a2D", "4f80v77HzyV08bXc"], "descending": true, "description": "M0A9eBRTi8z8Ex28", "iconURL": "wNVJTynyRU4VnbVV", "leaderboardCode": "pkeWxX38r4tadp4k", "name": "3egotfRvVTFicjVj", "statCode": "CB52IViYmaaH1IrB"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["1vq0pDEBqCWRHpkX", "uwBBgxXNZOrWAbFM", "e0YoDGrf2qYFVMs9"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode '1QtzKSqIZ2T6IbtW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'kiofSGUyFQwKjvSa' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["JSWgymhzKaPjjBa8", "TKaipnEXfYYALLpP", "zniLe2qVB4tWGSMP"], "descending": false, "description": "gNVxsdlZLHNZAfMr", "iconURL": "gheiPFebZDu56SME", "name": "mLvCOxBjz5LPsxEB"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'dQ7u2N7Hez20dZHl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '3ru3bzdzRAqpFfWd' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'nedRCbZ48wVyl8V6' \
    --leaderboardCode 'iiB4ZnmCXdoG8NcT' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'ibabxgELK0SMhoyO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'BN3tS0zDBANB3qX1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'mT8OfavoSiFGvMQz' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'J5Vy8wgaRIsvyWRz' \
    --namespace $AB_NAMESPACE \
    --userId 'jcvoe8K2WjlIi0sf' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'ggNi9uSbdV6DbXF3' \
    --namespace $AB_NAMESPACE \
    --userId 'cEC7BbkEiAUCSvCp' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'GgtCcszC9tDl5rEO' \
    --namespace $AB_NAMESPACE \
    --userId '2oP2YVvAeYVs1PPT' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'FllSjyRR4ySM6tYD' \
    --namespace $AB_NAMESPACE \
    --userId 'Bk7shE5upkPKyS8N' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId '6MyMYrpU5JxoN3e3' \
    --leaderboardCode '["XOAQkOXDFKMu0LRe", "VhrIdel1bDycKTMo", "2tsE0T2Kzz0B9c5L"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SXc5cn4VTGb6V5s3' \
    --limit '9' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xzZHNaK4HonZRCQW' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '10' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'ey9d0JOpldQGhNXV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'zDv4ro432hjEzoIx' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'aBukNRIFPK2FiVUM' \
    --leaderboardCode 'kgZlsOLBVoP1IDEC' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'GfbAm6f0hvEKngJK' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PXeeTgkbl580xW40", "LNlAz4DWnSRPZjJc", "5TWRWhUEo68S0vUn"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'd6z3kr2yfhqrWy9o' \
    --namespace $AB_NAMESPACE \
    --userId '05xCVikk2SMYUo3D' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE