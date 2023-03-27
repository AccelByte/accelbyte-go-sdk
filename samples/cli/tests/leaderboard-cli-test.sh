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
echo "1..36"

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
    --limit '76' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "UjLTvEcH"}, "descending": false, "iconURL": "pkcjEFd7", "leaderboardCode": "0AtSgWr4", "monthly": {"resetDate": 49, "resetTime": "2kaQ4QC5"}, "name": "chDN1shr", "seasonPeriod": 51, "startTime": "DGMLwGsm", "statCode": "BPNluaUF", "weekly": {"resetDay": 62, "resetTime": "9GVUNhiL"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'f0kKHJ6L' \
    --leaderboardCodes 'O05ZcqeA' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["9gluwUno", "U0T8JdEi", "cCfKK5PA"], "limit": 4, "slug": "5nKHOk5R"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["g3WefGxY", "hfPQhmCO", "86vG0eRs"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'lG4TrIwz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'NuO41DzY' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "MMYkLM2J"}, "descending": false, "iconURL": "bPbRHGx3", "monthly": {"resetDate": 29, "resetTime": "y73Jll6X"}, "name": "qgcq7n3a", "seasonPeriod": 52, "startTime": "wxHIvkD0", "statCode": "xKZLUU0B", "weekly": {"resetDay": 84, "resetTime": "yAh7eu5B"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'MZ8oobpj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'yKQcqBza' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'ZYL9AxWW' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 11 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 12 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode '9ef5dREB' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 13 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'Ts0VIeCE' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 13 'GetTodayLeaderboardRankingAdminV1' test.out

#- 14 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'qjrnf6bB' \
    --namespace $AB_NAMESPACE \
    --userId '3qHNABqA' \
    > test.out 2>&1
eval_tap $? 14 'GetUserRankingAdminV1' test.out

#- 15 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'XyzqV968' \
    --namespace $AB_NAMESPACE \
    --userId 'k7Vb0R79' \
    --body '{"inc": 0.9404073865487311, "latestValue": 0.41509637819434464}' \
    > test.out 2>&1
eval_tap $? 15 'UpdateUserPointAdminV1' test.out

#- 16 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'iOLVxFrP' \
    --namespace $AB_NAMESPACE \
    --userId '14dIqD9i' \
    > test.out 2>&1
eval_tap $? 16 'DeleteUserRankingAdminV1' test.out

#- 17 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'Iks9hlj7' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 17 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 18 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JiuxNPHI' \
    --leaderboardCode '["sFjyyevt", "ZU4AvU07", "TKEsZQOa"]' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingsAdminV1' test.out

#- 19 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UHDyD4iq' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 20 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pPGT2xWy' \
    --limit '17' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 20 'GetUserLeaderboardRankingsAdminV1' test.out

#- 21 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '82' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 21 'GetLeaderboardConfigurationsPublicV1' test.out

#- 22 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "nS84bTQn"}, "descending": false, "iconURL": "NjikbNFd", "leaderboardCode": "BJY6ldUk", "monthly": {"resetDate": 74, "resetTime": "S5s12E0V"}, "name": "OQfahphy", "seasonPeriod": 73, "startTime": "4wdRM8R1", "statCode": "PNg3MQCd", "weekly": {"resetDay": 37, "resetTime": "AV5DGi5t"}}' \
    > test.out 2>&1
eval_tap $? 22 'CreateLeaderboardConfigurationPublicV1' test.out

#- 23 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'gJNCDA3C' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 23 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 24 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'p8QzRsxk' \
    --namespace $AB_NAMESPACE \
    --slug 'xG5wssti' \
    --leaderboardCodes '3FfJ7oKT' \
    > test.out 2>&1
eval_tap $? 24 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 25 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'Cq8vcG8W' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 25 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 26 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'ytK3mFKJ' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 26 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 27 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'p63bZNN6' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 27 'GetTodayLeaderboardRankingPublicV1' test.out

#- 28 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'KYF1Gz3X' \
    --namespace $AB_NAMESPACE \
    --userId 'MS3whl4H' \
    > test.out 2>&1
eval_tap $? 28 'GetUserRankingPublicV1' test.out

#- 29 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'qgy4WeCp' \
    --namespace $AB_NAMESPACE \
    --userId 'sy11glpO' \
    > test.out 2>&1
eval_tap $? 29 'DeleteUserRankingPublicV1' test.out

#- 30 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '898g7azQ' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 30 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 31 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode '6kK3MAef' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 31 'GetHiddenUsersV2' test.out

#- 32 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '1xEc0WdR' \
    --namespace $AB_NAMESPACE \
    --userId 'uG1ym02d' \
    > test.out 2>&1
eval_tap $? 32 'GetUserVisibilityStatusV2' test.out

#- 33 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'yEl1aycG' \
    --namespace $AB_NAMESPACE \
    --userId 'lw5xaUwf' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 33 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 34 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'SIQHD2Ti' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 34 'SetUserVisibilityStatusV2' test.out

#- 35 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 35 'GetLeaderboardConfigurationsPublicV2' test.out

#- 36 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'wqLCisIN' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 36 'GetAllTimeLeaderboardRankingPublicV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE