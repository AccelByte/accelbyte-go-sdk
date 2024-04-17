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
    --limit '14' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "F59o5XqTmE59OsbE"}, "descending": true, "iconURL": "6uxwNO1Ob8sRcvRh", "leaderboardCode": "s4qdgVzrwZmi8Okv", "monthly": {"resetDate": 64, "resetTime": "7rgqjEMymvGhwomU"}, "name": "s2G6gmBfCqTKH6fB", "seasonPeriod": 41, "startTime": "t8TUVNVOKCB4q196", "statCode": "QMjTXQUxzAOnOcv9", "weekly": {"resetDay": 99, "resetTime": "ziZVx3RwsQpGds0n"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'ontkVf0EarKpFJCs' \
    --leaderboardCodes 'Mjn6Jxehy2x0ZVnd' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["vYFSQdIlcxE3tJJ2", "jXHVImUiL2hcTuxX", "mTjnPp3w88CbaS2y"], "limit": 10, "slug": "Cdyal11TalldRIEF"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["0mc9ckQ0oGX9PRnj", "be86dkrSNoXVmsmF", "tFSH9DrgB9LrI8J4"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'tk6EEp6czZGRaISE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'ZwM5YxdOWbRSK3JI' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "rjXV9CFz6ihWbGe5"}, "descending": true, "iconURL": "B0n45yQzy1L5VmQ2", "monthly": {"resetDate": 20, "resetTime": "PvdTnlZr5T4uzwpS"}, "name": "qAyAGoZMiXfJD566", "seasonPeriod": 47, "startTime": "vspSjMhWHQ7CctY4", "statCode": "Mse2mwYeubgxQQt7", "weekly": {"resetDay": 87, "resetTime": "DAX2rLXOdsIbZ5k9"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'pxouftredYS6UI3B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'TgcTE93UIGn0C5nB' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'FNxPtRgPg9b7ldPE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'BgPAILsMBUlYk1Je' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '83' \
    --previousVersion '81' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'RMjetrfAPLq1rYXm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode '2P8BgOT7ULa0tg34' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '25' \
    --previousVersion '93' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'EOK73phP0BYsDSy2' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '18' \
    --previousVersion '47' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'irJMDW5N65IBqx6g' \
    --namespace $AB_NAMESPACE \
    --userId 'wOclwxSujORlaCMt' \
    --previousVersion '6' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'oxcwXcwktGkQuJX4' \
    --namespace $AB_NAMESPACE \
    --userId 'GUSBzATp9yEe5FhT' \
    --body '{"inc": 0.9982361787740645, "latestValue": 0.4120342603042103}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'B3mHDe4HdcsFpauF' \
    --namespace $AB_NAMESPACE \
    --userId 'K6fub0Zuti2zs34l' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'w02YY7iwwPidTlOQ' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '62' \
    --previousVersion '5' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Y3y01qoLxHYM9y4U' \
    --leaderboardCode '["hkXBwId31ko2cCrJ", "8ULaBV21WB6g5DI7", "3c3jcWUuwMQWOjiA"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aaloxpdEho45Qkm9' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Y6mEA7zEgxRQjyyn' \
    --limit '69' \
    --offset '74' \
    --previousVersion '17' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '9' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "MkrmOL7B8FZZw7c3"}, "descending": false, "iconURL": "BXslVSbpbczOnOhN", "leaderboardCode": "h8dLd7CaeEaABg3q", "monthly": {"resetDate": 55, "resetTime": "YGIW8LLUsQvO3gZY"}, "name": "aTcQFO6nsmOznNSI", "seasonPeriod": 99, "startTime": "jGOg1E4Vcode3kc3", "statCode": "16z0IxCOQYcUN55V", "weekly": {"resetDay": 62, "resetTime": "6Op8NiFqfrGamCR9"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'X6NeOvm42SQzyatM' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'y0TSDliT5PJWVrdi' \
    --namespace $AB_NAMESPACE \
    --slug 'T9hobZossjXqDDnR' \
    --leaderboardCodes 'IPohYG2C8SlwnW1m' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'z5jKMvRpIJNaA9Ua' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '38' \
    --previousVersion '8' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'qyweHOrlC7vXxqNq' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '47' \
    --previousVersion '85' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'OOpwbDi2YqTn7UsA' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '29' \
    --previousVersion '67' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'MaSXSCQRzX4iLVtj' \
    --namespace $AB_NAMESPACE \
    --userId 'ojOvHodkGKrnIi9v' \
    --previousVersion '5' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'b7zayyVZrm0YyLtV' \
    --namespace $AB_NAMESPACE \
    --userId 'GnxJWHFHBzXVCV0p' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'vUcDwYRWngVLl040' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '74' \
    --previousVersion '30' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'KFLGV0nRPUnHxVH8' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '9TDUrzhVud4AaTBe' \
    --namespace $AB_NAMESPACE \
    --userId 'w1AjJlHYOYDFswdb' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode '5yBJNY69UuKxQpYE' \
    --namespace $AB_NAMESPACE \
    --userId 'WOFDQXdiO97WIbpV' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'YRKhTnZpYquwr9Ke' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'XKXYrU1c1HfZRlf3' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '26' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["iz9WrI27RMLX7pDN", "Sv9qi8lCcbp9yXoo", "On541opBPeIbPDGt"], "descending": false, "description": "7Dre097h0hsMbi5n", "iconURL": "HXWtvoco9GquHtPl", "leaderboardCode": "6ALhsk7KMHx8XQH4", "name": "CeOdKHFryij7fmbZ", "statCode": "8jOEemfTD3lz37b4"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["0xgxcFOriwDBXBnX", "ayG9IzRD8QhQIcIz", "mLIg1UX3xiAYwSeE"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode '8Y646q8QJrxBg2cC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'BaYfRKc9LLTXM3Tf' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["HQkxNqMbpjYeCZQv", "V550gvXtXynAsNLC", "ZhPwobLRm0lv9VL6"], "descending": false, "description": "h60aNUhPP9aprRhO", "iconURL": "nhNV5CXv9GkTXImI", "name": "pM77MxnCs4blNl1l"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'l24wH1a4J5r96U7N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'TTH7QaaoK6JV8Ojf' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId '54nvXhTyzUgAbgT0' \
    --leaderboardCode '1Qm1UYdRs4GGbLAv' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode '5OuIhvx3JW1V1l5N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode '8wpvRmb44G3KVCUm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'V3Yt7NchXzMAfInj' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'xNbaOagGg8cbg5AP' \
    --namespace $AB_NAMESPACE \
    --userId 'sC6fuWTS73QKppZt' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'kkNqJrwdkjxEhnQN' \
    --namespace $AB_NAMESPACE \
    --userId 'ypny2QFJQxQ8oHFg' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'aoKH44UO1JeRrxHK' \
    --namespace $AB_NAMESPACE \
    --userId 'mSMozBUFdUyocpFh' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'USzzOe7CBhRrlw6w' \
    --namespace $AB_NAMESPACE \
    --userId 'eAyH1bNGiXVgSvKt' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId '9RxAbdIpHVp1Piyr' \
    --leaderboardCode '["qPuL0qBEXwCfiHdP", "WdFkqE0s3qBh6yG2", "iOarxHp2hWg0HWeZ"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zs4l3jY8LlW9PaS0' \
    --limit '36' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId '5dBc3VBdqo6zRzSL' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '45' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'bIsZDdsebgEEO24t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'OnAcSigX8ylU6n7D' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'IshY1lyhLV3BZq77' \
    --leaderboardCode 'CFR1eDJpK6KeW5I0' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'Y5ZAygtJsMyijL0U' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lzyPq912ARRfTlQ7", "RepqETr1UHwvktbh", "0jfaXIXrq9FZ9B9o"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'Xuf3lAjVvQL2Zbgu' \
    --namespace $AB_NAMESPACE \
    --userId 'bXoILxkWSdT1fmYm' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE