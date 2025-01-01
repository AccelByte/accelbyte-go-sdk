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
    --limit '69' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "GOR3bouFb5o7gMvc"}, "descending": false, "iconURL": "iXnDrZdnuLkihVUN", "leaderboardCode": "p3HTUxKEm9KHOHJe", "monthly": {"resetDate": 75, "resetTime": "NKal1KESa0oqwIsr"}, "name": "iMeAz7rStdVKN0Z1", "seasonPeriod": 65, "startTime": "Yfg4dU0GZ2tTQAz3", "statCode": "YNLNXutfzy26RRKG", "weekly": {"resetDay": 30, "resetTime": "D6TdgB2sJ9dAlKIR"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'NFSoaXwG12foa5Rt' \
    --leaderboardCodes '0dAr7qr02hKxeb7j' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["FUOdN7byYDKi2Y8k", "vu6sRfZ8JLylSHhk", "gKZLoQpjQWooHrAv"], "limit": 38, "slug": "r8pSzmfsdlFWdjNu"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["vXKJRvw7zCNUBQfY", "LBlZ6SHW8g1Xvxwv", "hNPOXEZQyya6hl7N"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'jzoRwqRWwoUcrE3d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode '5J19Ji2iQqFZroUC' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "RgIpVeqvJO7zxWtO"}, "descending": true, "iconURL": "VTW9nLJ8BOJz9cXG", "monthly": {"resetDate": 13, "resetTime": "hD1x7W6j3AD1xZ0S"}, "name": "fcQBPw3FIAwTB9c1", "seasonPeriod": 32, "startTime": "yX4I81QWfoN65BfO", "statCode": "mMNRMRz2qYePjIhY", "weekly": {"resetDay": 40, "resetTime": "fYnfsdXxhkzUxiFp"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode '5dWawNFLtxAE9ldm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'D2qsARa3j1QFT4mz' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'jbXjO2hVnZ5dip6Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'Conm68p9JchgoBNc' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '65' \
    --previousVersion '21' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'buhoagYL8XiGMD0N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'bpOpdOfZtaH3GepP' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '21' \
    --previousVersion '83' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'dnyWhHHoA4hyvAOZ' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '5' \
    --previousVersion '33' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'qK5XmCOWNhDSsPxY' \
    --namespace $AB_NAMESPACE \
    --userId 'R4edWSxTrI7q20m9' \
    --previousVersion '91' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'kmdFJvULde07Dw3l' \
    --namespace $AB_NAMESPACE \
    --userId 'ToykhcikwAqMgk49' \
    --body '{"inc": 0.5640628544170085, "latestValue": 0.8752661434584305}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'bjlfq7blKJ353Mrh' \
    --namespace $AB_NAMESPACE \
    --userId 'GGSnL42jc035S5uA' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'u7SZKdentQCNDJqL' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '79' \
    --previousVersion '87' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fL6Ii4yI8RwBi5jG' \
    --leaderboardCode '["c5mApB7LBh6uTQZU", "oAEp54mmQgLhUJz5", "uuVpkmTKzHjnQFek"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IrPcT5Z01DCmDUwJ' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vlX6u9KhZudmwlzp' \
    --limit '58' \
    --offset '53' \
    --previousVersion '78' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '6' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "rjMSRNlRr5QuvcMx"}, "descending": false, "iconURL": "24FfrNmw5uZqDuxj", "leaderboardCode": "bjfqWFZMbgO4ur7r", "monthly": {"resetDate": 66, "resetTime": "SDUlPadXv9m8sYJJ"}, "name": "PkOgfu5JpWMVo30v", "seasonPeriod": 15, "startTime": "t1vHpdb82oZGjVU2", "statCode": "prKq0x1R9COGVzFT", "weekly": {"resetDay": 20, "resetTime": "Oz7Ucb6YHJCBCLLf"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'obGcocQ4ZllY0rEk' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'ugWRxg5TQOOvI9Eq' \
    --namespace $AB_NAMESPACE \
    --slug 'cQx5zlLSkRCJDmWn' \
    --leaderboardCodes 'MjDfh9A8CIBU5W96' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'Z5tyjUTXkfDR3NH6' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '49' \
    --previousVersion '91' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'wUKGuc6aa5SjLojm' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '61' \
    --previousVersion '94' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'x58ati95wYOmWoWt' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '79' \
    --previousVersion '100' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'sHg2rSsIbUJ8yDUa' \
    --namespace $AB_NAMESPACE \
    --userId 'sDQZ6hJgkEofm1oB' \
    --previousVersion '86' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'mqP58Sp9V9Moykzv' \
    --namespace $AB_NAMESPACE \
    --userId 'GDVc0PdSb64qjGFE' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'YbHrKMwoYU6VMOrN' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '73' \
    --previousVersion '41' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'UhvD0DGT4cmpVoIJ' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'YcpxdSGFSTfZ4ZaU' \
    --namespace $AB_NAMESPACE \
    --userId 'YiuvhYmXAa53VWdl' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'dTeYIP0w0vrmw3Yt' \
    --namespace $AB_NAMESPACE \
    --userId 'yR3gcnFjySqUQYva' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Kegxjo6bJOR6yn1s' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode '4yFBS5wGjohDZJtB' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '22' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["R1aaEY52dZs0FfTr", "ndT7iaYERv6vAAjx", "oIfl7UZpizVzjygr"], "descending": true, "description": "T2nPFrgGaAyZrpP0", "iconURL": "SDT4CUpmS8jWj1Sb", "leaderboardCode": "41L7iPaoeh65bwG4", "name": "A6fnkQNCtAi4ql9J", "statCode": "bqSCEEULldDrj0n8"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["Xts0lEZIxzmTAfva", "PHquldXsPGbeKGhy", "cUJYXM0Dxfd0mYRs"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'TbZXAt1FeQKlpRJX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'XSw7mlrkXzu892M2' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["6PkuN7UAw4qGtw8l", "ClmOHXXLReQeOKuF", "R6AKUPKymD8dcN5u"], "descending": false, "description": "3qc1iDchiMTZWOD5", "iconURL": "q10I8f89vdjJTtVx", "name": "CltXaHOBBPxybpk9"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '9hbhkP55QPAFHgaS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '4vs7wRuBqIRWbWYk' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'NMYznsLHIOXg138h' \
    --leaderboardCode 'EKXr0N243MzMzZAK' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'LR2nmr2eF6bC6UPz' \
    --leaderboardCode 'I7gmcpB0QgWTUMTb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId '9xsPrBFal3mAoHPU' \
    --leaderboardCode 'IQPxLfLILxt4TmFD' \
    --namespace $AB_NAMESPACE \
    --userId 'GOF2tnhreANWh9Bz' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'MLPuT1s0sgPuY4wB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'Ur76EI9Gu1qurGp2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode '4xAWX4Ut9R6AhuP5' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode '4kbcqN8ESxoPREjQ' \
    --namespace $AB_NAMESPACE \
    --userId 'dSD6KVAqgOTjAEdi' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'zCEdAGYfQFA1g941' \
    --namespace $AB_NAMESPACE \
    --userId 'bo5oman5oYk4g9I2' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'VJg4syD2fbZIi5OA' \
    --namespace $AB_NAMESPACE \
    --userId 'eZP1wRuUepM60myb' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'mu5dKwTmewYVaEus' \
    --namespace $AB_NAMESPACE \
    --userId 'FUK2lEWnpR0akPth' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId '0eWY4pTYGwxFooJ3' \
    --leaderboardCode '["S34V3ezbsDHrUG6r", "3WXmx7X1wEhGTRBp", "hygybjoVe38FvSZn"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qls73D7renfwLr9b' \
    --limit '37' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YyinOA15rfSpTuUO' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '10' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'YquTy2XUNYaHhk6v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'MUiI5YXSTaq810qg' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'gHb1rFRN47y2JpIH' \
    --leaderboardCode 'mYdUjoi0HRvcJQoG' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode '8Zwkw4ASxa0B1AYm' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["U6QZzPNuKGl8YkMR", "MrnUWh14SVmOSaJF", "dhc8M4HK2XbVWMA2"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'PBwsRDji0hRwepbr' \
    --namespace $AB_NAMESPACE \
    --userId 'f5JvJ6ksBVQLr2Qh' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE