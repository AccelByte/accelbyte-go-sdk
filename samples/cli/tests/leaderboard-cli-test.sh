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
    --limit '52' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "bxDINYvVnsSYHsO6"}, "descending": true, "iconURL": "DQdBM33xuWZE6eli", "leaderboardCode": "T0WGRGSxG4JjUTnw", "monthly": {"resetDate": 19, "resetTime": "5ybVTjJXK9iZihxx"}, "name": "21r7ZBfNq5FsGYh7", "seasonPeriod": 43, "startTime": "LpXl9MrX1zwvGSJP", "statCode": "8HDRusE0fG9H0fdt", "weekly": {"resetDay": 19, "resetTime": "XXggrjUbHoFWitBh"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'Tk6SOCUICbYpXukI' \
    --leaderboardCodes '1gOLLx3zDYL5ltUs' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["LRtlEPVgWZcj93xN", "iSrGsqSRCEOk0hKb", "Q1HeNcA7T82H3m4V"], "limit": 64, "slug": "ajKlqSH4k6sROB7m"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["q5eECw0QCVkwG8W1", "MWUHxGw12iE0wYZp", "IK9b2nUtBuHelTOG"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'FW0ghGsUSUesou6r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'ZAKt3WijhqxLX9ax' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "CmxdnNGxFZ5YGz8z"}, "descending": true, "iconURL": "2jwktJTn76aZyLhf", "monthly": {"resetDate": 9, "resetTime": "EVCdRVaoAFUZ79f4"}, "name": "KaZ9YYZn9M53cpLF", "seasonPeriod": 74, "startTime": "0jqMBiTRrWEWepmM", "statCode": "2pDIxZUyyu4bCXqB", "weekly": {"resetDay": 94, "resetTime": "LG7eHhbg4ALTIt9A"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'lIAuLrzR8C7E7OHA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'Be5nQEaQTWhavNxp' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'kwb5s7a2ZKuplnRY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'QkyTrf6VhxsgzdVG' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '37' \
    --previousVersion '90' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'T9gR2PBGyGVVB6ST' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'AjJi9YABx2crjGOm' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '14' \
    --previousVersion '88' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode '7pkeRmjjZQzCZBPu' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '1' \
    --previousVersion '35' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode '7jO6pWMvoQngmo3z' \
    --namespace $AB_NAMESPACE \
    --userId 'qERI0QMeTgvLWw6J' \
    --previousVersion '34' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'Fgk9117C8LHhLcnX' \
    --namespace $AB_NAMESPACE \
    --userId '92ZN1uAFxms2GjJZ' \
    --body '{"inc": 0.5043400329397214, "latestValue": 0.25815941494486294}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'IOHXIY0lCUkktXxe' \
    --namespace $AB_NAMESPACE \
    --userId 'Isbh7U3D1KA5gGxt' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'z6eh0t4AeWBL6jqd' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '90' \
    --previousVersion '54' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VqP9pQp1HPbwlZQi' \
    --leaderboardCode '["iHWSqEkDo7XfVwoW", "qpdE4R8QJsnYfqg5", "GVO0hEcq7OEjqQ8T"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vRGs8OBaAqFXEniM' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NjUdquISIzARsNpA' \
    --limit '6' \
    --offset '66' \
    --previousVersion '32' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '35' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "uorQ7esCOCVpokSe"}, "descending": true, "iconURL": "Tu0h0xv4Jn9hr7GV", "leaderboardCode": "9rLjqj5gmIJfHNqK", "monthly": {"resetDate": 89, "resetTime": "CaY3GtohslTX12ku"}, "name": "IltY5ZZiJR40469S", "seasonPeriod": 47, "startTime": "GOJvdgXAgHFsMpsK", "statCode": "DwxvgWUAc8Yht0mD", "weekly": {"resetDay": 57, "resetTime": "C044ZGy2pb1LYz0O"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode '8uw0EEvKDcsmEX4p' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '91p7kh7etjdY9p3o' \
    --namespace $AB_NAMESPACE \
    --slug 'ESelNbLtKaRncSmV' \
    --leaderboardCodes 'uTX4BcEMAAslfiU5' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'xEggsakrfNqjxSj2' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '45' \
    --previousVersion '37' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode '62ipk9Z1poW7UEsL' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '85' \
    --previousVersion '22' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'q7c9UIQjff6JiYwX' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '93' \
    --previousVersion '35' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'U7lLm7AAF16aTgfN' \
    --namespace $AB_NAMESPACE \
    --userId 'ELcR14HFB6O7nV88' \
    --previousVersion '17' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'P4ltDKBMx8ivewJH' \
    --namespace $AB_NAMESPACE \
    --userId 'wnr0AI2VIIdgycQp' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '15EKQjGh5HrMKHHk' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '85' \
    --previousVersion '64' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'd5V6hxUWVWknXlxT' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'mDY2TZrmHwisbDKR' \
    --namespace $AB_NAMESPACE \
    --userId 'cuL6CMrRHtH4YEHW' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'my8arvXnk2SJaU7E' \
    --namespace $AB_NAMESPACE \
    --userId 'sfMMcjr4VLPVwHxB' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Iq9jAzu84BcBUrD3' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'rulGDS2OVXzWhUdz' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '80' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["tOmWojsHwLK6f3e0", "NpfcpaBvc3dE9h4M", "NxoazymWMR3w8EX6"], "descending": false, "description": "rLCxU2QIxNRdyPcK", "iconURL": "KuphExWFfrpMFi8e", "leaderboardCode": "hTGkrYN8JeLGQER9", "name": "Crw0eFu6d8tG47I4", "statCode": "HG50Rle8BhM46Kmz"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["mGXmtvUBwFqDbE5g", "A1tb59mFyYGANbsQ", "ALyReNPQj7k6Mcid"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'EwpLPqTsumjrvxrz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode '320bjNb3KBn9CGLH' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["UGXQDYpHXDdQJ6Zm", "dnO1PzIY74AJxYtM", "l5228e2CGbtss4ET"], "descending": true, "description": "JJgaieFfmXW9mGAY", "iconURL": "heKyuQcybxWTsugZ", "name": "12OUP8QF1f2fPJiD"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'QT6dF1QFJP0hVLmu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'TQ90MzfDTMSEBSQy' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'uiKJF1Z9r2znjcXv' \
    --leaderboardCode '6wlUCCIfJ2xRzMfL' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'OzGvkSn8MMkzRLVT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'nrAS45YC6iEe80pF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'KBi0bcKjQQsTnclD' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'w4gD7E0eY3dPN4Ag' \
    --namespace $AB_NAMESPACE \
    --userId 'PGCzmtQ4nBZK62wf' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'TiR4KSM1DztaSEVP' \
    --namespace $AB_NAMESPACE \
    --userId 'W0LdOa7rQ74sj2XJ' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'LWfW4lhDDrsdtNjX' \
    --namespace $AB_NAMESPACE \
    --userId 'OhTjuqoOtfdHSzFO' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'PuFJ5geU36TdoMvn' \
    --namespace $AB_NAMESPACE \
    --userId 'CjTVyTab7ii3sFMb' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WhWQsyEq5SY8cIPk' \
    --leaderboardCode '["y6KstN58dUviax2O", "k1UUmBIjTlpRiu9u", "OPgbtqQREQ47l4eL"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId '2tsUg0hO3RNvBOhC' \
    --limit '16' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Udyg2ds5w3ZBqo6a' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '42' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'T3NtNPZBu3uKDEjF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode '53jq24r8Ws2JvfvG' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'Ybl3V0eadst8I80C' \
    --leaderboardCode 'a5ADar4OG1QGLSXP' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'ZqnMBGDZguv3RhhU' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Z8uNCj4n2wStPJgQ", "u8JFLC2fKp0zESyU", "leuEgo34oeAwsnLD"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'FxAJh2dC6cKrYnsn' \
    --namespace $AB_NAMESPACE \
    --userId 'vZ5pIjhWDbKrIfxV' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE