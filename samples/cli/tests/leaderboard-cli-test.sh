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
echo "1..64"

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
    --limit '66' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "B7dX74EnlK4DzB73"}, "descending": false, "iconURL": "bi2Q4ZcWzyRyQ7gF", "leaderboardCode": "ob7fl0ZFxGDEgVgJ", "monthly": {"resetDate": 33, "resetTime": "9Up5y2Cr0elLU16P"}, "name": "aiP3WMvDLkqXXcVD", "seasonPeriod": 14, "startTime": "bk28TwgSvLivtXfq", "statCode": "qONTCmU8ATibH6kR", "weekly": {"resetDay": 83, "resetTime": "Z0siEii7GDvRi5K1"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'WS5FJagbRnPx76yZ' \
    --leaderboardCodes '7QlWhZm0APVxiRug' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["8ElMvG37ty3FYxgW", "eimpVClE41mCJLjD", "UwbKbDoyIYXqtgB9"], "limit": 33, "slug": "pYhStW98EFhXOzFE"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["y2majMHEdzamKsnY", "AFEeYaOontxo6Qgk", "PMjPU0lPguiMUTjv"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'sQJZeIUBY4aL7POI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'TA8jQKxDP8rlohxg' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "MVzVuyznJBRE7Ut1"}, "descending": true, "iconURL": "uzRQKCS8eNOlpojY", "monthly": {"resetDate": 58, "resetTime": "lZWxjWhd13JYi6kU"}, "name": "OU8R52t0BdgtLFxB", "seasonPeriod": 31, "startTime": "6vxJcBPyz5urjqX8", "statCode": "uYct6lofw4SUUuOe", "weekly": {"resetDay": 9, "resetTime": "Jd6QQYHOSl1lI08Q"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode '32DqPAZUGLP6O9p7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'yqOO29LBbkEZsrJ7' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'znb2slUZt6DyoQ3P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'UnC2pW8rZC8B3EsM' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '28' \
    --previousVersion '96' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'SD46g674mi5Jc1a6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'hzaXcmBTbDGxWF4P' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '83' \
    --previousVersion '95' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'wJ1WcHuhid4tepWL' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '97' \
    --previousVersion '92' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode '5q1sIGJS5C09mfz8' \
    --namespace $AB_NAMESPACE \
    --userId 'EN2GkOeofdL5b5Kx' \
    --previousVersion '82' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'wlVHBUmz2O5GwLdp' \
    --namespace $AB_NAMESPACE \
    --userId 'f6KLh0H3F52ujezh' \
    --body '{"inc": 0.8867675107038735, "latestValue": 0.6805551261402575}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'egvMMaiFCYMfymwx' \
    --namespace $AB_NAMESPACE \
    --userId 'ZYG2R33egLAW5ip3' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'a0KHrEvJidYksbbt' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '84' \
    --previousVersion '33' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ze8eBIsOMY5nO9IY' \
    --leaderboardCode '["bPoA3yzcJeeHmSOr", "AVxod63BweeGjpHD", "SRSPnBZOQeB6qXz5"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BfVnWe8hCntCvex2' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nZyRMZCo9rfpNLSw' \
    --limit '40' \
    --offset '58' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '45' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "Js80q1bZKMro9h9c"}, "descending": true, "iconURL": "79L7M2Goi4Sjay0q", "leaderboardCode": "wQ1RNGUOmkZQesHI", "monthly": {"resetDate": 25, "resetTime": "KTwJnAmBVaItBvEG"}, "name": "yX7nKvysmTLV7DKg", "seasonPeriod": 1, "startTime": "mZTaDtwlzgIqzHeI", "statCode": "7ArqYYy5Do12CZac", "weekly": {"resetDay": 74, "resetTime": "fzpuRTBQoIDsuBWq"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'cFzHyrIYeBmgy9RJ' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'mA9BKNSruNgLdI3l' \
    --namespace $AB_NAMESPACE \
    --slug 'OuPnAV1oWhzGdazf' \
    --leaderboardCodes 'b3wH30IhyWLAkdfG' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'KBNeUZRLBc5WIK5D' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '66' \
    --previousVersion '88' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'VbAL8QK9c6wl7e2h' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '22' \
    --previousVersion '77' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode '4Q7lAV0pikj79Mt3' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '12' \
    --previousVersion '85' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'Co48IvP3IpTncKaI' \
    --namespace $AB_NAMESPACE \
    --userId 'drMAMyUnVomP5elT' \
    --previousVersion '99' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'eETSLpsz5Jj2SfXY' \
    --namespace $AB_NAMESPACE \
    --userId 'pRNmoTIrEXs1XxBt' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'cUJp6cXAxbDym9Rh' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '56' \
    --previousVersion '48' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'D7wyiXmMaZDmj0MO' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'sDfBCB7YhnUG3myr' \
    --namespace $AB_NAMESPACE \
    --userId 'KeoRCyiwTUDezdXi' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'LpObOcWvNGFJRwfI' \
    --namespace $AB_NAMESPACE \
    --userId '7OKAQ5hHCU6S7xGB' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'P234kjJouESYsNAf' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'iQxwBludEFjPMQO0' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '94' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["0wZhaHAH4AoEfLAn", "FbzaIqqep1bn3qJI", "4H1OuUXjHQXKxzmM"], "descending": true, "description": "C3cijOSM5teSSPZ8", "iconURL": "9rFrK1qHpge42CtO", "leaderboardCode": "aNNugGP94zvzRg3n", "name": "L2vaqOdw9N4KysVq", "statCode": "dCl6PIJqhtGkdPNI"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["5OREFy91hEiYCt2x", "3jHP7S7NzI2UCwxX", "1T93TpgUumlXflTv"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode '3mXWObQYdAyAQupZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'OCMU48ejpNqAcmKp' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["jX0wB4VUOAW9OzxJ", "IWcXOCxzgCQtm63l", "7T9kpwgwSkrSgLoq"], "descending": false, "description": "HJvwMZWdpkZscGFJ", "iconURL": "x5Q4huf37udqNRXR", "name": "ENej4sWAYKvLXDyO"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'KP73clsUV4UmHWlC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'uEpsdsTJNtcVot0D' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'YomnqeJrcjfWevHH' \
    --leaderboardCode 'eK7WUkgZgYSAJYPT' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '41' \
    --previousVersion '2' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId '7eIi2lhBW6BQz5k9' \
    --leaderboardCode 'j3avaf7rDk4NHB8E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'e6D0t6zxv17c5uK1' \
    --leaderboardCode '6CGAD8PBr6MmKP9G' \
    --namespace $AB_NAMESPACE \
    --userId 'OqbN5Ye3RNhxQLh9' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'nR3aiY6Y8JkM21V5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode '5lXrGtQvFlR8RLwt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'hwEqxazMTW2T6t9f' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'LvCBaaKnKcZxwXb4' \
    --namespace $AB_NAMESPACE \
    --userId 'S2hLJK3er8JFRwt4' \
    --previousVersion '41' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'ZKqQUVCQCU1BcWdk' \
    --namespace $AB_NAMESPACE \
    --userId 'faGsAouOHtDmfpRN' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode '87aR0Prtp7aIT4Mc' \
    --namespace $AB_NAMESPACE \
    --userId 'OU2ia8bhGBTWHEDi' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'MSBhtll9tC1BWNJq' \
    --namespace $AB_NAMESPACE \
    --userId '1SykT23bXdHj5SqI' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xIDna6Cn0ss6nOxq' \
    --leaderboardCode '["CDjX7fwlu7MKpKWt", "2VXetOVRKDThtg94", "nC6e3zy6LsuBJNLX"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId '23pNPSCOy873V20u' \
    --limit '29' \
    --offset '22' \
    --previousVersion '4' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mkdEe7IiysbKKNp7' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '20' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'OTF1jvS6WVBCFFlT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'uFcACoZXIwEP8jYj' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'NCl8FEvnIEGzBf4v' \
    --leaderboardCode 'xk0UUJfkcpIlkvT9' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '44' \
    --previousVersion '38' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'gLfEASfTC3GRFaXB' \
    --namespace $AB_NAMESPACE \
    --previousVersion '70' \
    --body '{"userIds": ["KXzVBcBC4j2ix51S", "Yf9Id8KY4Yp1bMjw", "QoNRLVJyPnt4V1dh"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'LauV7VQiCCKJ0uvG' \
    --namespace $AB_NAMESPACE \
    --userId 'P3wnzElV5shKIfRH' \
    --previousVersion '58' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE