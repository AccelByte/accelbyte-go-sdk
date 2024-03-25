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
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '63' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "6ullBJQqBR3D4fN6"}, "descending": false, "iconURL": "jCcu7F4JdPsFiP0g", "leaderboardCode": "ClgP4xapTuHHYJtc", "monthly": {"resetDate": 79, "resetTime": "We36XF8ONskboM13"}, "name": "0g2jsW1NxY9mNjRT", "seasonPeriod": 94, "startTime": "dZRN5qLeFkxiaca7", "statCode": "CFnIqMQGy7JV6CoV", "weekly": {"resetDay": 5, "resetTime": "LyySu5j5y2SkxEXH"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'S66Mi0MU8ce4xyB4' \
    --leaderboardCodes 'TWiEA4x29cXsqbVZ' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["AVxQrm9EemIyZZhj", "pNSnebC1ZAsXW3yU", "6KfqeTgbiUZ6QQb5"], "limit": 87, "slug": "Agrt8RttVFSTMkJo"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["P1LA9nSp05EsFA1D", "4Wpa2JyBklPatRob", "WYFwDhaGj6iIPWDA"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'ptS74rNzZ4Pyy8Tt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'R62ibnNACIJM4uXb' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "33swMYrd6T4JCDSK"}, "descending": true, "iconURL": "4ZcTeNEh9KdrG2nd", "monthly": {"resetDate": 59, "resetTime": "aeyhSjJW4ZHlCXXw"}, "name": "1qPGf4SzfAdtBeNS", "seasonPeriod": 16, "startTime": "bkQWly02MZVopfx0", "statCode": "aUWstCyHHNx85n59", "weekly": {"resetDay": 6, "resetTime": "aJxCj3SrMV3myuoL"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'XHI8PoIcExOZa5Re' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '0JcudYs9Wk9gDS28' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode '39QtuWoMr78wZcq1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'ta2vb3vbJ4BReCuQ' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '32' \
    --previousVersion '42' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'GQfpGJD5BKrlhyBv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'q9mCsMAY7CITNiBr' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '95' \
    --previousVersion '42' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'fygMugYVuHdU0Rlw' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '95' \
    --previousVersion '45' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'B2ZnHDgzKBy2fEC4' \
    --namespace $AB_NAMESPACE \
    --userId 'Lhcs46pj6q1SQcW2' \
    --previousVersion '79' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'WNe6f5KjQWEiCYqi' \
    --namespace $AB_NAMESPACE \
    --userId 'XIiB67zsvKHlRJ0E' \
    --body '{"inc": 0.7416074078900299, "latestValue": 0.7534959842312438}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'aIn5Y5q5A3LsrUQN' \
    --namespace $AB_NAMESPACE \
    --userId 'FVt2YCLoHWdeoQ8E' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'oVjwEW17vi3LSyWQ' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '90' \
    --previousVersion '44' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pA8QWqFw2kIALYdb' \
    --leaderboardCode '["tSd02FsaYKuGh8Po", "x6LfYgxqWkaT5R6P", "OTgKFv7MogShquoR"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'lw7jWIzqEmQXAkEk' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AJrhXEBsdk176LEn' \
    --limit '11' \
    --offset '1' \
    --previousVersion '67' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '93' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "xlI6e6tysHr1WboN"}, "descending": false, "iconURL": "nsVn17NDvkVjUknO", "leaderboardCode": "aI3pPQbCyQESRpJa", "monthly": {"resetDate": 33, "resetTime": "2wqYpS6xTuBdpvJZ"}, "name": "waqhtloLlfme4nag", "seasonPeriod": 16, "startTime": "RHgyfDfow5c9ixUB", "statCode": "cOp3nwvqG1YRT7Fl", "weekly": {"resetDay": 94, "resetTime": "xk5gSktnkWWlVsVH"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'tCokf5sjGDyDaUB6' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'kHdJDtyISzmHL4BK' \
    --namespace $AB_NAMESPACE \
    --slug 'bCxHTV34MIcnj3Tp' \
    --leaderboardCodes 'KYBbJ9JEgrduc9Da' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'TH61cwG01bAUEd45' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '36' \
    --previousVersion '54' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'NRXvZCrsu0VLFcuT' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '90' \
    --previousVersion '72' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode '2guKfugGuEFBMY3r' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '76' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'wz1vOwXWPoxtkBu8' \
    --namespace $AB_NAMESPACE \
    --userId 'ne0fWvLAx3hXBPSe' \
    --previousVersion '30' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'd4inY2BIbcvTAaF9' \
    --namespace $AB_NAMESPACE \
    --userId '1QvGRtY7MqEYPbHJ' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'lmjX30etVRmWES3M' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '14' \
    --previousVersion '23' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'qd7ZI0tFFtgzd3GQ' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'xzAEixgKNCUZc66t' \
    --namespace $AB_NAMESPACE \
    --userId 'GggD2ueHVeKgloeV' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'XLod0QQSLA2GCRf4' \
    --namespace $AB_NAMESPACE \
    --userId '8vSlKPSf8Yzlk2Zr' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'sRdtRhUdK6wVGYgU' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'FtN3XO0UuRByvq38' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '92' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["BxMIR8F1U4ag5XHw", "2Rjk9o2X0G86FSeE", "3xxdYBQx8k17kLyG"], "descending": true, "description": "jXWquqhaUfbUZQOR", "iconURL": "BSyHJLYlHMLOUh9C", "leaderboardCode": "QrgmShoeucjrMYmb", "name": "5cc4xmo0QCmuDown", "statCode": "ETEOSokr8Voxi58W"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["nPur5ZIiCYFUsb35", "d8W8HebAg0fVodhI", "jiMCIlW4kmnpThLk"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'DgdDc7mS8Ocy526k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'QVYsv6xDu60XrEa5' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["WhUFB7SCekEo6CEI", "Cx1817e9FqGsunWZ", "dZhC8kqmZorudql5"], "descending": true, "description": "AhPcqzfj2VWjJM7A", "iconURL": "u0JxoUPq4QelNM0N", "name": "XrKTn1D9c2N2HPZv"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'BHIh2SQuyV8VQ3Rx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'JwgkWV9YiXO1LsIb' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'KeDhoVySB9HPCPS6' \
    --leaderboardCode 'KaFojoH0xWmTVWn1' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'iG1mAXzn6iZn9vEj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'ACffVYmp7CL5Zvpy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'FCi0A0S3Omh5NzrN' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'FPQp6NqZuz6FJNpq' \
    --namespace $AB_NAMESPACE \
    --userId 'GTvC1HWUZZKKWamn' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'mnEUSQBB2aoSNPV6' \
    --namespace $AB_NAMESPACE \
    --userId 'IYGtRyyqxmUFXh69' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'vjpqzifRqZlcIYGi' \
    --namespace $AB_NAMESPACE \
    --userId 'hj0H9afSM6vmFHR6' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'V6xYeqtsa5V7qIHG' \
    --namespace $AB_NAMESPACE \
    --userId 'Q3RqA1F4ChoUkO5N' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KO55vlemcBNLtKwa' \
    --leaderboardCode '["nnsqk5UagHrb2or8", "TulbDRX53iAQKgP3", "BSaDOVNdVkIJkU0V"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OtrsP1SEwlMS7j8K' \
    --limit '55' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bmrthVYUyLplDEQm' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '7' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'JDsNLp5yX5sov3E9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode '9TQeDRRjkVQ0NXSM' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'qaGSNwJSrpZaEbfY' \
    --leaderboardCode '3T3OTToBMZOEuudL' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode '1lBNOwyyIuiD9N6v' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["aml4jzFCpEtlHONf", "dFtQ8RRdRHy8hw0D", "qZr1X7hob9tXhQ6j"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'rEpuechS0lZtZ5Ew' \
    --namespace $AB_NAMESPACE \
    --userId 'RI5jVwHzYP54Ixqi' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE