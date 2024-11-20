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
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '58' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "d1ibAKjgqKYJrX7m"}, "descending": true, "iconURL": "x4r7114OLBf32yMQ", "leaderboardCode": "z1F5dlTIeCfVjzF5", "monthly": {"resetDate": 98, "resetTime": "6zgwF4QQT80R6rHX"}, "name": "oIImIZ9cKuw2Ysha", "seasonPeriod": 50, "startTime": "Hl504s6xp09dWIAe", "statCode": "r9g9qGDx2ISjYsAZ", "weekly": {"resetDay": 12, "resetTime": "s24Om0mjMqSNzQws"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug '4dMi4bGsINxLKjal' \
    --leaderboardCodes 'DqcacbX2wDOpPht5' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["iwuZIez9VyWn4VuB", "MBjqVak3ZXGlzB4O", "4JCP1i7leRIX99a0"], "limit": 75, "slug": "yRS0gfoRW4NM3ysk"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["ucweFMc51fHqUAuI", "N3AhbJcSoDW0pLpZ", "rNNmsSoyLkfuFRLc"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode '5OwvOkygcstCfsNd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'aNECy3d7WQ5l6r40' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "xuArObGRVUcNvDQD"}, "descending": false, "iconURL": "biu9UzbVxHWyMNGP", "monthly": {"resetDate": 52, "resetTime": "96bMkD5lbk3qmd1k"}, "name": "h2EwPTurM3DldZ5x", "seasonPeriod": 21, "startTime": "pi6SXhOy2usj8jdt", "statCode": "B5Th8pik2FNUK0j4", "weekly": {"resetDay": 17, "resetTime": "PuxdYTG2OwfP8x9X"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'M0TkOLGXr1pPXUgc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'm6vtqTRkwn4mDD8Q' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'i48Xb0iBuDgmfWOH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'le2NvtOiiZA6rCK1' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '67' \
    --previousVersion '32' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'hmEnXJ4vyJxyAxQF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'HwqcgfgPiZtVhh14' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '29' \
    --previousVersion '29' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'tlL8mz9i1KKf0H5g' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '77' \
    --previousVersion '66' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'p4zg8CPlODosa0k5' \
    --namespace $AB_NAMESPACE \
    --userId 'khIBUiD83d6f6lNg' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'Dj4rowFkcfHi02R4' \
    --namespace $AB_NAMESPACE \
    --userId 'i5Np1tl6Btb34KSl' \
    --body '{"inc": 0.7531758187441413, "latestValue": 0.8719721189759545}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'nNw8tNbAKPTJtW1b' \
    --namespace $AB_NAMESPACE \
    --userId 'RUpoqDflZItVIHAY' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'M8ZHHrV33BePOkSe' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '19' \
    --previousVersion '90' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Mvft1euZNJ42kRJY' \
    --leaderboardCode '["sj73Mb5WpaeDiiae", "vPvUdKXcSokZMWCW", "FAlxmCAWXv4R31Zl"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mwcNJoMel0zbZdlv' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '7I1vEzxw0lsy6UCS' \
    --limit '1' \
    --offset '11' \
    --previousVersion '92' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '35' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "8yhdgj6tssb9NaNW"}, "descending": false, "iconURL": "yfYbh2ORNC19NU35", "leaderboardCode": "0ToEDk83n4NcvOqz", "monthly": {"resetDate": 60, "resetTime": "XyOG3wXDp5vM4HB5"}, "name": "XRxzmtVm58QbgzhE", "seasonPeriod": 79, "startTime": "yXeg4ueSUatjFTPg", "statCode": "YjXPjDW52NaVy7vZ", "weekly": {"resetDay": 100, "resetTime": "2WKCRUHoVgFcHowu"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'sJTjlvD9alC5xqMd' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'YS48oZvKm3jT4ULC' \
    --namespace $AB_NAMESPACE \
    --slug 'dSV1TH0Q5PzlGTvg' \
    --leaderboardCodes 'S4tYXomFf4PtX2Td' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode '3EGut8ApeOp2GU1H' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '80' \
    --previousVersion '66' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'Ktbf5BSxwWKFu7kw' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '44' \
    --previousVersion '9' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'SJmICNaDYabUAwtf' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '28' \
    --previousVersion '19' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'uAa8CkoL34187QgZ' \
    --namespace $AB_NAMESPACE \
    --userId 'bGQb3beTnHea6uOr' \
    --previousVersion '78' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'AagiB7mgpqdyAi1l' \
    --namespace $AB_NAMESPACE \
    --userId 'iFrunqoLQeCogMXy' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '6vd3zziU4Y6D5VSW' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '11' \
    --previousVersion '27' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'BbmDuiKm1ktnViT8' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'XpOPGaAwGQJtrvqC' \
    --namespace $AB_NAMESPACE \
    --userId 'yyYqxAwoHOKsOS15' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'YhFbhXJLMitpqZmt' \
    --namespace $AB_NAMESPACE \
    --userId 'Ki69LISM9AAKaMAi' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'S8j8QQSSEJmyoK5w' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'YhmhO3VXaoP0qDXt' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '40' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["xyd6UE2hP7PfjVVZ", "4CaHxgZt46GWGQkA", "he9SC5M0EZHxfLEB"], "descending": true, "description": "fTV2j7rGcppfu9f8", "iconURL": "sIkL2MWYFO7G0eUd", "leaderboardCode": "i2S4xjHkjKywoL9n", "name": "THg628KcY4l2JEsy", "statCode": "oFBl6rM8F2Nqxztu"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["Lpa4ibbH1cvSJPf1", "hqsdYrrBCL9fuiqn", "FezEOrnUY8eOo1Vh"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'rjUyLNTVilcliC99' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'eNKkUL84O09qXIJI' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["bE1Z6a7DjAK3Ywi5", "jIPA167wyxcOpV7I", "LZfJBclBSqfG51qr"], "descending": true, "description": "fdcrfsBrGRPdY462", "iconURL": "o454l4dQCfYjL3A9", "name": "bILlM9hjF157lsDr"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'c6GIlW1vBpewHCpq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'XMuVn1laYrHEUT0P' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'YmodM6FYsgmbJ7TU' \
    --leaderboardCode 'HVsFjHAhN6SHPEgh' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'loR3cok0wlsBC55n' \
    --leaderboardCode 'Z1BOiXEXYFfWC3nI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'EcpJlqpZ7RnpjJXj' \
    --leaderboardCode 'bFppKeoRZjuU41ny' \
    --namespace $AB_NAMESPACE \
    --userId 'aEhikvie203A2eMq' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'kqUyzDVnSsP7V6sD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'YhoZ8r0OHMorDh1B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'ntKu39cBKS2Ww1A7' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'hlpocsBlSJZVThUx' \
    --namespace $AB_NAMESPACE \
    --userId '3Lj7Tz1Wj2lvw2mb' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'Gp6bnRgAfzuiUtKw' \
    --namespace $AB_NAMESPACE \
    --userId 'yleeWjJz1UCPdfoe' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'aHVVeYTdBs1l9SKr' \
    --namespace $AB_NAMESPACE \
    --userId 'KJXcy8qNsrkgzMPo' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'nKQP041AJZE8q4aO' \
    --namespace $AB_NAMESPACE \
    --userId 'bSzF17BVcsXODkOb' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Q6ryn7E2qnjBZ69S' \
    --leaderboardCode '["X6McZDX26Gykhp8Z", "CCU4M7HNi4OhNj4R", "WmIWVugOb50CYr7u"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EZbeeaRlDlwzvXh0' \
    --limit '73' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BwqeoznQUHO3jJ0R' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '83' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'm4uv0PLV1x6tkiS8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'Io7vDhhZ9gtdQUnD' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'oUpXdwZTYXMm7ypD' \
    --leaderboardCode 'Hw6EDyMQiImU50ps' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'ax58OcBgQu0Pmytn' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["hog1GmtWPYm0yuSf", "dAohzvMK5AycotqP", "EVKLgegKCPz7W5Nb"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'UKGmf3uqrieW1031' \
    --namespace $AB_NAMESPACE \
    --userId '2RvVLx3aa9IrHYaK' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE