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
    --limit '81' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "KzgpoNu9CgVl3zo9"}, "descending": false, "iconURL": "E1TIUTrm2les5HBT", "leaderboardCode": "LaaKaVLsFez2bDKD", "monthly": {"resetDate": 98, "resetTime": "FppL6SbXdvSEQckJ"}, "name": "niGH7fFuBESm4E3f", "seasonPeriod": 37, "startTime": "pvLL1dhYwdwtSyFC", "statCode": "UystfNUvzVxYb1JE", "weekly": {"resetDay": 71, "resetTime": "WDmxIHHb1zi3jUNg"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug '7COuPc1Wq7nROCzf' \
    --leaderboardCodes '2tMtUvrQOrOuqNgy' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["mfvLGUAfD5XzZLZL", "NdbXrdnGh8YCIkPZ", "yPQEKICDgr6U0Ag6"], "limit": 66, "slug": "MyClNzc4GdJkZUbp"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["nhxpOwZCvyOOFHb1", "Jjf8TsaZDdJ7wKow", "mdiXcUFwTpFfKJQC"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'M5dowj7JNu4XtEdA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'RIJQmQOV6uvszSMv' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "D1D1K1TMvmIh70nb"}, "descending": false, "iconURL": "YLwXP9AubwAKCa9K", "monthly": {"resetDate": 45, "resetTime": "owyjBb1Jv3dvniMw"}, "name": "FFe5KpHCcCaOu2sE", "seasonPeriod": 32, "startTime": "7Cd8YNcGemPRlG6b", "statCode": "RURD1lfbL8l2jvG1", "weekly": {"resetDay": 100, "resetTime": "gvMoizjEqy1DFKtB"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'wxC8Hrmxr7TPVgWE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '4sI3mjHO6yHl35A8' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode '4EnniP92qRNzXxvS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'JOVsgA4SDUVCMZRf' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '36' \
    --previousVersion '58' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'mfDjPIBOIgJRySim' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode '2pb5gAkP5K2C5OmP' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '6' \
    --previousVersion '99' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'tZzb5Yp23dI8evk2' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '31' \
    --previousVersion '96' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode '1G6Wmn5eSbh0mMGY' \
    --namespace $AB_NAMESPACE \
    --userId 'sk5Zg7aJw4umxZBL' \
    --previousVersion '96' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'YFuGAmj6Iti9eWus' \
    --namespace $AB_NAMESPACE \
    --userId 'Lpxy4BBr20Yoi2HV' \
    --body '{"inc": 0.9855767023545482, "latestValue": 0.9484407703653084}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'PXBQJzJLdLihhrLY' \
    --namespace $AB_NAMESPACE \
    --userId '5xRuJ7mhetPEsGqe' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'Ee1WSEspoCD9qLb7' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '70' \
    --previousVersion '59' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EYB43xH4BYJpJHE8' \
    --leaderboardCode '["YDdYpsFRmCZNFuy7", "QmxdoQVyZfKml9gs", "H8qwG8m5WcHIDdUk"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jXysfzlSs2GKD7pr' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aEvfOaLD04EHQsr5' \
    --limit '21' \
    --offset '22' \
    --previousVersion '86' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '95' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "slFitRx3rIlHS34l"}, "descending": true, "iconURL": "zVGowAELhq9QrYj3", "leaderboardCode": "RsVRWinpMH6fe3lJ", "monthly": {"resetDate": 47, "resetTime": "jRO2rp1lojGeT0bP"}, "name": "muxE9G9p1gThWRNI", "seasonPeriod": 34, "startTime": "o6sfOeITngFAdeRt", "statCode": "RYAyRlxUvA7ycHZR", "weekly": {"resetDay": 59, "resetTime": "VgSRfePButujqz6K"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'Vc6EOhFAmbS0LKuv' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'NAYEYCTTiHO2Ujfn' \
    --namespace $AB_NAMESPACE \
    --slug 'LFJBon6zIxaGMUMo' \
    --leaderboardCodes 'hBz9NwXyIyFaZG5N' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'qom3ccUHbX1oLdT9' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '39' \
    --previousVersion '71' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'YQ7o1kYVjztbK9Li' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '12' \
    --previousVersion '65' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'CHr6kTxhgDppStMi' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '22' \
    --previousVersion '27' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'D2vCmc2Hz385r5c8' \
    --namespace $AB_NAMESPACE \
    --userId 'C5QPn5Y4z4OgChZL' \
    --previousVersion '59' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'dTxepFdVbkkoOkVr' \
    --namespace $AB_NAMESPACE \
    --userId 'lTVoXeXVMl1RGyFy' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'dMY3Jp1Y8e2eVXuF' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '13' \
    --previousVersion '10' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'pYKBGUuDvwe8x3x2' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'iZHEZZir1gG2kGNF' \
    --namespace $AB_NAMESPACE \
    --userId 'Dfsbwn1Y50q356vO' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode '5cObyHiMPzB0VTQh' \
    --namespace $AB_NAMESPACE \
    --userId 'oatFFYW3pPKS527O' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'o9Apml8vUqVOxqEq' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'uzlgTjKh7U0vp1pH' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '3' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["IDgSLsSgJ3ftvMWb", "BB7nrFPDym4ZOzls", "ysJBQv6pOHmTRfaN"], "descending": true, "description": "wYOtz63KYN1F4PNi", "iconURL": "o98Y9akqxPTz734v", "leaderboardCode": "U3tOE2I20xejjaZW", "name": "oJGbxIKvR1PSBFjv", "statCode": "p5KYwhzpSQiXNo3t"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["qDw6MHdk2CxYfQVP", "X1RzCW4h6y0fH1Df", "tQuGEyD708iYJa47"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'FBi3ukcj5RwJDeTg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'gwjpWOpdocXboleG' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["NXuU0kTX4QQdMxEa", "XUoVdhhXtf0QS7AV", "ADoD42s05is8PV8E"], "descending": true, "description": "0XaqAKI4bZlTXj2y", "iconURL": "bURnazMALqSSQrRc", "name": "svBAkC7uFE2VZH5v"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'q4zGVyP5ZRCR2Sxs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'snMUfFZJJTQOslcW' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'byuaCiWP0JQLi8Br' \
    --leaderboardCode 'lUJ32opmbgWYMk8O' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'Y1LUFecuAdemPTDT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode '73rlT7HxULORqG7W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'L843A395SKMr9Tk4' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'eCSsRKo2xKd4wS9r' \
    --namespace $AB_NAMESPACE \
    --userId 'Ausr9UMGYX5jCHsX' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'ollr6E1EnzWxUsjg' \
    --namespace $AB_NAMESPACE \
    --userId 'DBrkAnZiCp8IW9if' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'L6JFaUYsjQFN19m1' \
    --namespace $AB_NAMESPACE \
    --userId 'jFLftRxMZYvenCzb' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'eJfzg6jWJIGo2r1A' \
    --namespace $AB_NAMESPACE \
    --userId 'nSyGdWgLsDYph5Q6' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Pi28ckWlCK2iNMcd' \
    --leaderboardCode '["HIDTaQ0vUVQ8ECEU", "E56FGMpmkFUJ99dR", "WtXSJDu3om8wSBlj"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oUfcfvWfUV5hBcUu' \
    --limit '96' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId '3JEhy38ZqR1qCiHU' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '6' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'ObWtEhQWbonAIMvJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode '6uWiLRJYkT1K2D2Z' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'U9LrJJe4trEZttip' \
    --leaderboardCode '9edQFgD9BRSf8zpw' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'JyS22cViYr88WyWr' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["mlEebTKsgaotUcHA", "uebfFIw0Q5MJ0m4h", "qtbPGhtVeNZ5vwSo"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'J54ZhQLeTJ5KwJNo' \
    --namespace $AB_NAMESPACE \
    --userId 'Ka5ZYN7o6UvpmL54' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE