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
    --limit '87' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "iyzfJURGNfjzrEij"}, "descending": false, "iconURL": "dEFIkmTU4PahLEFF", "leaderboardCode": "wmR7BHkVBc2XwwB1", "monthly": {"resetDate": 61, "resetTime": "rd6NSvcxXpSG3Pcg"}, "name": "Rj62SCekijqI1Y4i", "seasonPeriod": 24, "startTime": "0WLHxuLhgdlEoR3Y", "statCode": "FRn0tth1F3yxSqwo", "weekly": {"resetDay": 53, "resetTime": "R3DOYFsafCCTZM5Q"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'fRUCJt8T9TBzWw6U' \
    --leaderboardCodes 'IZYyyC95ZIfGDa5a' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["noQ27eynWD2l5KCI", "SEn2ZCi5fn0T3AaZ", "Gt8xQmGN9U4412aV"], "limit": 53, "slug": "ftTrGOJEsBQ82CG0"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["wnDxdEbljP0MYLcb", "VSMEJJTeJjnPhXCb", "6E29MqzhU4sIeN3f"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'Jq6iIa6Uhlrozao5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'Y9lceLgK4lX1DzXr' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "clKnXUZgxb6JY9eC"}, "descending": false, "iconURL": "g7OnCCWJtLKHBu7j", "monthly": {"resetDate": 67, "resetTime": "DMYmSiudx7vBRcYI"}, "name": "73xgW5XF9y8sCpNh", "seasonPeriod": 10, "startTime": "7vcS00ahdPQnjLNx", "statCode": "NYdIHtjDkixeUpfy", "weekly": {"resetDay": 77, "resetTime": "a2pdORwmTdvYQttf"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'RmA5FuIuHcGLoK87' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '6DP5LMkpmqfwmfDL' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'QPxMZTXUUNPEHLT2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'zCh71IFLnaTv4eF1' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '94' \
    --previousVersion '51' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'l2YelfwQbZnz1QNM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'Aon79wTs3sFAKg2H' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '62' \
    --previousVersion '67' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'klfzluFmPOnGHfpz' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '4' \
    --previousVersion '82' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'fWvstA39JlnGEYSh' \
    --namespace $AB_NAMESPACE \
    --userId 'lc0qbdfbYf6C4D4Q' \
    --previousVersion '44' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'vBOY4Y0DKN0H9rty' \
    --namespace $AB_NAMESPACE \
    --userId '3Oa2wOCQ9Us8VFIa' \
    --body '{"inc": 0.9605657607864573, "latestValue": 0.18470851928830856}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'OQe1Mpkq23YwDLj4' \
    --namespace $AB_NAMESPACE \
    --userId 'vLDAHW9HHRCthvXf' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'G53K6FaPOOTpWKcE' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '23' \
    --previousVersion '49' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RKiw1qZkszD7jMF1' \
    --leaderboardCode '["KrPUcIs9bsH7mWUK", "XSOsABL8XjlwTP9I", "8ziVvkmO7t2JFegP"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '8wVLb1wRsVIQttvC' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BT0lIDmrCEhBLKQ5' \
    --limit '79' \
    --offset '86' \
    --previousVersion '70' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '17' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "v6E68iVIBCSNFX7l"}, "descending": true, "iconURL": "EbYM2grnRDRJeeyF", "leaderboardCode": "sP0sFd8FX3lmEWDh", "monthly": {"resetDate": 88, "resetTime": "29G2sm3MhsRDn7W5"}, "name": "FS9RuUR9S0MoE3k7", "seasonPeriod": 54, "startTime": "KiolbP1OXMt7KNdi", "statCode": "QNTdNxp8iJEGqflT", "weekly": {"resetDay": 17, "resetTime": "TSmwtSdTKuxxwYwP"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'C7WT9mLjN40glfi5' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '53CbchwLZhrUxR67' \
    --namespace $AB_NAMESPACE \
    --slug 'WmXoqEnac3jIIZFv' \
    --leaderboardCodes '586ThGDTOOKPu8wd' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'JcUgmARUUM4wV357' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '35' \
    --previousVersion '54' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode '347lOrPHqZRHdc6u' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '19' \
    --previousVersion '52' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode '1hSd8jRubKFPZ8SI' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '93' \
    --previousVersion '44' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'QtSal65oYlRAl1sn' \
    --namespace $AB_NAMESPACE \
    --userId '8YhH67QmWjeB9u1s' \
    --previousVersion '31' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'MXRXfydn2vb2ijGf' \
    --namespace $AB_NAMESPACE \
    --userId 'SLSBQ0w1alBnkuxW' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'VTaPJKVk7JJ3GkQq' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '54' \
    --previousVersion '55' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode '0HvSVgNWHlRbhyXM' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'o0yEoSpXMtSU2cAr' \
    --namespace $AB_NAMESPACE \
    --userId 'FOJyHEBAHNqRrCTE' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'H9LDGcklhqvkI3wr' \
    --namespace $AB_NAMESPACE \
    --userId '3M9eREu4tEVhdQJI' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'BhjOt9IDU65VtUcg' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'XTsBn6FPoA7Sp29m' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '4' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["FMEq58TLjyAnp4LK", "uAHTLD3trlPZW63K", "GbpF1cIcuvQzOMUz"], "descending": false, "description": "mZe16JLtiaz9xFqv", "iconURL": "SgIVvKfDspNaWqGc", "leaderboardCode": "mK4l29Iug5N260Y0", "name": "BsfmfunBP6TUz6zP", "statCode": "1MHH8h84LfTjM2ac"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["MBZA6JRJmCvkKNxH", "VZpZZBZquwSFCHKX", "bRfW871xl7e4MJoC"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'pb4rgco23vZrdReY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'K9KjZn2auPxFXe6Y' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["pWwAFXGxUP4bpHNZ", "zkNCOaIHwiCzOYWk", "H7OcsLG6g6E4E58D"], "descending": true, "description": "VfjpJB1wOa4ySMuL", "iconURL": "IVnfqiOiqneYvJL8", "name": "TkMAQeoClzX2hz76"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'q0tjQzCj3RVwSE1f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'F5O4eVpv6N5au9mz' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'oKXnpAVoYAb27HSm' \
    --leaderboardCode 'e9Y80pcMFnls2zDZ' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'FzNy0anjabBW74e7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'cos8fQn1qvoAzjDI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'We373doxS8YhPb1a' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'FfO6DzBuU4rmwJ1n' \
    --namespace $AB_NAMESPACE \
    --userId 'WBFH8gMH2kNNKIsJ' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'mXytBtb6ID7qKjqp' \
    --namespace $AB_NAMESPACE \
    --userId '2FrvR3QtTglkImxh' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'xKkLwagTXWTrXteF' \
    --namespace $AB_NAMESPACE \
    --userId 'apDhPorMQUqOldeE' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'OIWwuuJGA3aPujjd' \
    --namespace $AB_NAMESPACE \
    --userId 'sVYxSYcqKyzMHOkn' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId '6KrPffBfhSnBZFa1' \
    --leaderboardCode '["jrv3i012D6dpru5u", "tAdO09veQyqMiHSD", "RJbBWKHOIKOARhBL"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z1Rl3xaFly9rUf9r' \
    --limit '49' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId '5QTN3XCP09uIKxLI' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '27' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'HPqZA4b1VCIR3xCG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'pE0ILP5qxvfZU5se' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'wY3qm7Kg4xyvPp3f' \
    --leaderboardCode 'zHdIiVjuKtG1poRv' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'qyYUUlzRKlwdQSY3' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["edx45EEkNSvfOhcW", "uWTH93m7nxARXg8D", "7l4luBE9p6QlJpAn"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode '9k42SVWvdyWcZ5NC' \
    --namespace $AB_NAMESPACE \
    --userId 'Bsh4t3jRsnkNQZ3V' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE