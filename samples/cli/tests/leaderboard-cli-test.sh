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
    --limit '55' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "9vCwZ5ZcxgUEnCzI"}, "descending": true, "iconURL": "FTMTsBdfT2cnMj57", "leaderboardCode": "ictVI9OsboDxajcU", "monthly": {"resetDate": 32, "resetTime": "cQDsrrZ7aDUZGJBp"}, "name": "p7fUzp7xDehhBObm", "seasonPeriod": 18, "startTime": "BK7LrRIckbGNW558", "statCode": "mXLP8pjkhYHwLL2u", "weekly": {"resetDay": 77, "resetTime": "vNaIgOoGrwzOqTIb"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'iqTkr11K4tZEQiUI' \
    --leaderboardCodes 'Z0Ojk9XQsXkrrxYw' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["Q02fVBfCopAAtRJe", "tZbZ246YeVsheeBR", "JRb2E1QYcGo6VJkp"], "limit": 58, "slug": "RsNDUpMGtcdvNcyP"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["fiPciFdvbct6BCf7", "miBaUwv03l8GjkIS", "8KPqsx4FNTyGFaSz"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'A0nLZhNHTzVzc8cB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'We8mXlHdWCHplwlR' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "R1vj8n4WyHCzzyo9"}, "descending": true, "iconURL": "oF7fhOorY9apXOnv", "monthly": {"resetDate": 51, "resetTime": "doSUlUSApqTYoR5C"}, "name": "WArJVmAio3pBYxXp", "seasonPeriod": 86, "startTime": "eq0QwsgpIjMNtvAC", "statCode": "Q6RmAhQkVNQUfLFy", "weekly": {"resetDay": 21, "resetTime": "JBl4kp7ktZYVZmWW"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'BByHe4PZblxP4aQK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'uaGGWUovdDEqc7Ig' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'wAW1Y9ijYm8HNOKc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'Xv5CXMv56gv2qfiV' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '39' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'ADywPQGEA2MZnw6a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'y1odfcOOLRzZnxUN' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '63' \
    --previousVersion '60' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'LPrMWSbeOrlJJOVy' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '50' \
    --previousVersion '62' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'K5zqSt6qLIM8t5cZ' \
    --namespace $AB_NAMESPACE \
    --userId 'nxOAVDghDZajp2VY' \
    --previousVersion '22' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'ya140G6wuxaPwwpM' \
    --namespace $AB_NAMESPACE \
    --userId 'bPTfvc2pbTn2HorM' \
    --body '{"inc": 0.5740442740754451, "latestValue": 0.4787697325832776}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'XcwdHjv5zTTQzaoO' \
    --namespace $AB_NAMESPACE \
    --userId 'wDplmXKmLLsrsd5A' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'PQxloepaL1Q9Uunw' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '96' \
    --previousVersion '44' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jA6NEijEKzCSrwrT' \
    --leaderboardCode '["si2kryzudA8X1kxN", "Stg7Ru9Pg9xpEL3O", "A0zqKceALalgJvyu"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eMsRX9UOzTJVvwbJ' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SrpGJ0dQ902S7TIE' \
    --limit '15' \
    --offset '30' \
    --previousVersion '99' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '23' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "lAJffPuGTm1egJtX"}, "descending": false, "iconURL": "9RkPmILx2QfLCS4H", "leaderboardCode": "AiusbpPdXtSl3bwK", "monthly": {"resetDate": 48, "resetTime": "vFXo7rAgElDOZyxe"}, "name": "DdlmxhAM4GZXBp4I", "seasonPeriod": 72, "startTime": "Qo4R8aw18on27Qwc", "statCode": "JVJsdKeUTHf2Bbce", "weekly": {"resetDay": 49, "resetTime": "b3Jm8AMqfBdiNJJ4"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'DFbN71aC1KAEzbRj' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '2jMqWod9hpIdev9v' \
    --namespace $AB_NAMESPACE \
    --slug 'TuGRz6ZP0Qa47wRX' \
    --leaderboardCodes 'naXorPzNiGumZjWF' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'Y9czIDbRT4p7IwYe' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '83' \
    --previousVersion '14' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode '1mOzanPDZ0WuQA80' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '56' \
    --previousVersion '23' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'g9PQZ9gS7ohqtNuD' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '89' \
    --previousVersion '95' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'y9T6wvZtlbbFKOcl' \
    --namespace $AB_NAMESPACE \
    --userId 'Tfr5d1w5DgU1dCQ7' \
    --previousVersion '54' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'uXG5cqvkxvtiFdVV' \
    --namespace $AB_NAMESPACE \
    --userId 'kbWAy8tOTjKyFJTt' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'zLe87pr4DNLNhePo' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '22' \
    --previousVersion '33' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'V8RRv8Lz7hrxMq8o' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'puURmE2vqCAGZjC5' \
    --namespace $AB_NAMESPACE \
    --userId '3uVsjGmEwemomL8l' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'W0oxpqtEfdetNKlT' \
    --namespace $AB_NAMESPACE \
    --userId '7KS9T63ptdXK6uUR' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'mIGSu5TqGKS6tiLZ' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'MhOCwx9fDXNZAXUI' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '8' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["bWqyJWYcbTj761WG", "LVOcbVaD4P5Gtce3", "ehdCrNGiTYq6SaqG"], "descending": false, "description": "87qO5rtvj8YS71nj", "iconURL": "bRafHlGwzjFhdipO", "leaderboardCode": "TP3kOKC41AIfpny0", "name": "iKjt588BStq7k6Jt", "statCode": "I4rcvWPanJCsrXMc"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["ZBLLJGs8UcJYwJB7", "ooDGfZesZ3I6T5R3", "lnUUyfPMlss0a1rH"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'ZzBxUxFG63srvQI6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'mFGBeVwMWjSkW7hD' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["fNCuhqEg9g6jq1CQ", "JUOBzVdSHCPUcz4g", "UMtY9k0Gl9aY7hMI"], "descending": true, "description": "unPBip1YUbt6nM3m", "iconURL": "TQ1ZTh0Q3M8ut4TO", "name": "uV4fFt7nnvKkeOMX"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'z4eZOq4rbjGClRPy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'TDnFNvNLIGRsoBsp' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'mp7WrPXsOAsMdYdB' \
    --leaderboardCode 'x8wTwvmvJgT5Goiz' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'yAnhV2MZhnLgJV0Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'rwoFSkOHEZwtqN08' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'oDNeOSWtVrYiB7LS' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'VlG9ep6nYxYpNWHM' \
    --namespace $AB_NAMESPACE \
    --userId '9rFAWOjsi8GH0hQP' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'Vu7daCZoyveIXGaP' \
    --namespace $AB_NAMESPACE \
    --userId 'F5PmcFFkNPgfYj0f' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'fQmLLXfQdcKoikHw' \
    --namespace $AB_NAMESPACE \
    --userId 'j6JaWEbwxKYgv6cq' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode '8Tc2Uzab9xYymmgy' \
    --namespace $AB_NAMESPACE \
    --userId 'YLMoKlp354uShFdR' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rdriCwSW26ibOdyb' \
    --leaderboardCode '["14i8L8Qe2MnJQbwu", "BhJIPcrDGxsDD34d", "9nVy47gxN8jS6sMb"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ejswXSM0xRpen0dF' \
    --limit '4' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kmSaTWkhsieWIh2y' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '30' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode '3MFagKWPoczbED0a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'vreAY8X5ZNrQc6Ik' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'pf4jve2jJe7HvJUQ' \
    --leaderboardCode '3Vc2kDg2iKPIKaVU' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'ghgXRbaSpsSUdUQ2' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["tjbbztP47LZx7dHK", "kc3nBmbyFfZaPubp", "tiBoQyUbb5yGt5dI"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'yXsW0laOKmAExNpd' \
    --namespace $AB_NAMESPACE \
    --userId '0OyM7QRHZXqnjB9R' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE