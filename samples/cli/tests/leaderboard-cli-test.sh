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
    --limit '61' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "G72uxhxeGibe0QNI"}, "descending": true, "iconURL": "2do5uMUPjXahYApQ", "leaderboardCode": "fs5NG73WUK5gF06i", "monthly": {"resetDate": 10, "resetTime": "xDnGTeBZmq7s52XK"}, "name": "KwXVcSI9ote1DzjG", "seasonPeriod": 34, "startTime": "z6YgkgBFIpnmHOoK", "statCode": "eVxG3STuL33aaP0v", "weekly": {"resetDay": 28, "resetTime": "IOXuPB2cYvpr7w5j"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'OL47SpYOjbAhTV3P' \
    --leaderboardCodes 'TdzfCIxFUYpd2aa5' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["on1TfKmkFsCjZaUD", "1nnGnF4y8xCCpCru", "JbcsLLUGkVrmhFa7"], "limit": 78, "slug": "YS5ePovmn1zQ24ya"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["QyJwdwFQMBqt4NDk", "s8N1Rt2yTUeuwfZF", "my2YpJMC8PrktHh3"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'fPfEf0nwbTET8RQj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'BvqeoZgZeHuoY4ug' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "Zv9mRzvJ5aU97al5"}, "descending": false, "iconURL": "QgIZVP3TTXcporhe", "monthly": {"resetDate": 35, "resetTime": "UsfFwEMS9EJ8NepD"}, "name": "8j73aN7ocexE0Ljx", "seasonPeriod": 51, "startTime": "TJsqkPd4CuKz3ipW", "statCode": "O0zusMeT7s4mpZDX", "weekly": {"resetDay": 6, "resetTime": "AD5BtOuYtISSYQyz"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'RkPQgXW2JE9gWDPB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '6kTF7hOkTR7wXUFZ' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'p2MhvN7gGaNPaEys' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'HTKvk9QSjUGxuJU1' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '42' \
    --previousVersion '99' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'wurBtg68B1sPEXSV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'rkPAxQs3rqDyxECA' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '36' \
    --previousVersion '57' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'XCTHjCMmWbZXPavT' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '42' \
    --previousVersion '59' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'VgoPD9vA7B0f8W34' \
    --namespace $AB_NAMESPACE \
    --userId 'nFyyVh49XAyV7yAS' \
    --previousVersion '55' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'q4ctK6zXw9qH9Rvn' \
    --namespace $AB_NAMESPACE \
    --userId 'j7QQVIbKw3oJBBnD' \
    --body '{"inc": 0.34999082367732604, "latestValue": 0.029253887349477092}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'mXH18PIanHfhwO4E' \
    --namespace $AB_NAMESPACE \
    --userId 'zEvRy3ReSFKY4774' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'Jz3J61gg9iKo3YId' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '73' \
    --previousVersion '94' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qBjrgjflZIHkBw6O' \
    --leaderboardCode '["gThqKFbaMQn4OZEa", "SumbUzPrUe89kVHH", "WyQ4qaREkgGZexQ6"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qdOR4FznigaXsM5k' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rxkw3v6O4tlp9RsP' \
    --limit '13' \
    --offset '9' \
    --previousVersion '57' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '40' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "jwpub0o9W97Ky42P"}, "descending": false, "iconURL": "CBTbAyfm4scI5F1U", "leaderboardCode": "5dOOT1lK2g4tgwCw", "monthly": {"resetDate": 39, "resetTime": "dgRqTQulIsneO56d"}, "name": "NbFKbQ7gjtZgBlWo", "seasonPeriod": 83, "startTime": "STNuzgPqXfrrQ2fS", "statCode": "agVMMh67ktXfox3q", "weekly": {"resetDay": 50, "resetTime": "efKOHxnKtUkBCGk1"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'EJPShBIR6qhbiRMt' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'P8iBwmVI4LZLLe4O' \
    --namespace $AB_NAMESPACE \
    --slug 'V8uig6vmEj9toPxv' \
    --leaderboardCodes '8rRuqvNyxmlZash1' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'RN1b0HRbuTs2FMpW' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '8' \
    --previousVersion '69' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'gElIotbNBlIVSiXp' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '9' \
    --previousVersion '92' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'mBdLmneB8ILXawEH' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '80' \
    --previousVersion '2' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'Rz7oI9NeqTCpxOQP' \
    --namespace $AB_NAMESPACE \
    --userId 'sFGkpcG1vRcewLj3' \
    --previousVersion '27' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'WrM5yB3HitxtKO0a' \
    --namespace $AB_NAMESPACE \
    --userId 'VJt60hguH86nB4Bm' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'AroB1IUjGRUwF0kp' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '11' \
    --previousVersion '72' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'dPLo2GofKkrtqRIJ' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '57bDmdC7r7q0F9DT' \
    --namespace $AB_NAMESPACE \
    --userId 'cYhkKrAjmfFEk687' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'lh6gtpn31pPAoNpG' \
    --namespace $AB_NAMESPACE \
    --userId '0MpgwBlRPAxldXh7' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId '0RC1NLdbOrpye26t' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'CiI1YvE9q5e4EydL' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '14' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["eUIqUrOHLKbysnrR", "68m7Xb5jnQD6fFOS", "Hq9Ys8eu6RJPdkDo"], "descending": false, "description": "zlgS8o7FlidMievY", "iconURL": "NpEqStwEZG6LsxhO", "leaderboardCode": "m2pPaBvMx0LtvFaL", "name": "sAqFzdSPKCxhXQp6", "statCode": "ZDtXUwQiUMEUCPhR"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["Z5dOyjN2LNU81744", "hsfyHLe5R9Dum8Bw", "0fEjsq2vXA316AkQ"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode '4qPnPISO2Ihy8zvr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'tkRI7Mqm20jiYyw4' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["cr2YX6btRSvxWLTa", "2AZSZJIqeSrf1raT", "V47peBWfv51751G8"], "descending": true, "description": "FQHSMYhVhtIXTKDv", "iconURL": "ONYPOzJJya07KPB8", "name": "AClZTtZODcEFxCY7"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'R1ssoUvT4oLwFUOi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'qpD6bPJ4v8gXlkUN' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'dlit3J08ejsXgOHo' \
    --leaderboardCode 'bZT7W7mp2U4tbvPM' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 's9lg3H0EFgAM980Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'MmRY0hCtZLlDApx9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'Aq3m9sBv9HvVm3Dq' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'qDvdL4BzYxKSy9j3' \
    --namespace $AB_NAMESPACE \
    --userId 'N9feWXmlsjCl0IFK' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'yWrZGczoHdKJxqJO' \
    --namespace $AB_NAMESPACE \
    --userId 'rMaRjU3hAlY1yArn' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'rxcM80cI64poawB5' \
    --namespace $AB_NAMESPACE \
    --userId 'q5RiyrSVI6Sqpg0R' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'mwpgwTNWusnyWkLI' \
    --namespace $AB_NAMESPACE \
    --userId 'zQN16r2E7KWlu2o9' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FCzqFvKA391xM2je' \
    --leaderboardCode '["ceDRzJMorKGwhlc9", "D0sjb5dYSXuBPq9H", "hsrBPAxEhPHg72EN"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yjaYl6TjROdtAhqC' \
    --limit '5' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId '2r19YRwbziZHmjIb' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '43' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode '2B87pJ7q3iEusL4p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'DYm0CU52z9MJvDy9' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'M9r8trp5v7hF1LpS' \
    --leaderboardCode '5fTjIXuQullKcPqM' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'eROJ9DpVeKm1odOj' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["A9CWsrj2YZazE4BY", "Emo17as6e4obj91A", "1v4nxCReY2lUeziN"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'FsSmJvTaVbmAfusL' \
    --namespace $AB_NAMESPACE \
    --userId 'tSxQZxjFUjAvhfiP' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE