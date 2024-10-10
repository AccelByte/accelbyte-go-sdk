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
    --limit '65' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "dBXkDCVW8NOHccWI"}, "descending": true, "iconURL": "vqxbXeZtmqSatJlA", "leaderboardCode": "53ZCVi3wHcMbIEIj", "monthly": {"resetDate": 92, "resetTime": "negkxkk3PcoM9Mwe"}, "name": "5v6DEdUP32JAQ9x9", "seasonPeriod": 91, "startTime": "EiBkzlcW3MSMsviB", "statCode": "kQhtGzqI4RkrAE24", "weekly": {"resetDay": 79, "resetTime": "aWIREvoZU8EEjUd8"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'yirDbXXFJpmTYMPR' \
    --leaderboardCodes 'sQeQ8FWOPjpBc0KX' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["fP6echuGpM1x6M4W", "Yq3QtYlRVcLtwuRO", "YjPVC48skwZj0Rh1"], "limit": 24, "slug": "nXBxxkOxmdzy2f5M"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["fzQ3eq1h0EQITYkk", "Ddaj800JOFQycaau", "Mkntx7gxiqZI9Bmf"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode '67YKLIuK6LiPLRYq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'euMRa1kEnNaZtXgv' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "LWYG4lUSCcwK0bGn"}, "descending": false, "iconURL": "J43tQGXd0uiFrvvP", "monthly": {"resetDate": 3, "resetTime": "FCGt6Xem4dqp4NsC"}, "name": "MBLO6UbP14gLnIrk", "seasonPeriod": 17, "startTime": "TidphFHoeubYfGKc", "statCode": "Tloe22ugiNzzYMyf", "weekly": {"resetDay": 91, "resetTime": "y8Xxrbx8UX9cbf6c"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'zNLDhtpw2xpUkQ29' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '2fxthH2dwuFd1XH0' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'MonIFIqcJT2UXN2X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'rtsJnSFivcoQwGue' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '26' \
    --previousVersion '100' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'PxF8ab6V8Vzm6Ja5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'NT8VjaOnPJErTov9' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '67' \
    --previousVersion '9' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'RvNfeYEhkdqx2Ms6' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '40' \
    --previousVersion '99' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'Cz4qTv6wovaMxLx9' \
    --namespace $AB_NAMESPACE \
    --userId 'g0hIH8TCXzzzyZXC' \
    --previousVersion '9' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'bSRIHb5aEdZFC6du' \
    --namespace $AB_NAMESPACE \
    --userId 'BC3C5iv2lQ0h8CZv' \
    --body '{"inc": 0.13413924761121432, "latestValue": 0.19736816998644602}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'pFKD15y7VxjmbxxD' \
    --namespace $AB_NAMESPACE \
    --userId 'J1NzYKg580StwOC6' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode '0lCvnTuZvJcTgq58' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '86' \
    --previousVersion '46' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zQldaz45GGXJbxKJ' \
    --leaderboardCode '["xVWw9YrwSBuuPrDD", "xDdkb8OOf5rF7Uxr", "6C9b5SLDYvrWWxF1"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ilx9OaD74lcsyOiB' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RYzaasvNo9qxYo27' \
    --limit '30' \
    --offset '15' \
    --previousVersion '100' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '5' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "170prrygrC9VDZlj"}, "descending": true, "iconURL": "3NaPA5OP2frbrUXZ", "leaderboardCode": "iz5J2qJaZly3GUrq", "monthly": {"resetDate": 16, "resetTime": "A9d86bOf0TPW6paL"}, "name": "koDT4CEst5pdrreV", "seasonPeriod": 52, "startTime": "FB4xOgYVSOVPFJA4", "statCode": "h981XtGuZVMRPUZD", "weekly": {"resetDay": 18, "resetTime": "HT2xtgY3vGir41hb"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'RjjyGBlijYeWKIdS' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '5qaAJeh0AFBxmIZU' \
    --namespace $AB_NAMESPACE \
    --slug 'pGPDjj9g3PnsERaC' \
    --leaderboardCodes 'qBFB13aG7Y8CSltb' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'E3jntqY815WyoMGg' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '70' \
    --previousVersion '89' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'TFfu1XEQrZctOm6I' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '100' \
    --previousVersion '28' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'GbJ8jEwiYwPwaaMW' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '27' \
    --previousVersion '31' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode '3BUCXipWPiKBw46D' \
    --namespace $AB_NAMESPACE \
    --userId 'IER34EnveKOJCUQq' \
    --previousVersion '1' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'xMeMVfJIt18M2wuu' \
    --namespace $AB_NAMESPACE \
    --userId 'Ufp63wPEpSt1MieX' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'iV3yBuqk8a2JoEIl' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '77' \
    --previousVersion '19' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'Xp6pcc7hofxhmKpx' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'TAkLvt2SnHLqkM8z' \
    --namespace $AB_NAMESPACE \
    --userId 'f7idWN8LmmFYrpzX' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'WnigTSip5XBRDH0h' \
    --namespace $AB_NAMESPACE \
    --userId 'Ctu602XFCMljXDKT' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'OFP9oEjuDKylq1Vd' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'JjVQEq99H4gXrNTs' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '98' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["w8Kr5A55KsBVi1lb", "1MsAubHUCAQUR1hZ", "FPIJw2p24MJC5fgJ"], "descending": true, "description": "Z2YbnOI6gCLVxlu7", "iconURL": "bjVvcEtXsx6NJKVU", "leaderboardCode": "dKu1dxUqDHGbA7a6", "name": "ZKilr6CjDn5oTbt4", "statCode": "LVzjBR2cRuO8WFEM"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["onbudm3ihVYleYqi", "ISRk35K6J8w2QeyJ", "q9LDrRma1TJV6axg"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'iPX22xVxXbtawyon' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'AhzV3YVmnQ33MV4F' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["db38kzfQkNSylmia", "iIhMHzWwvJqqlhXE", "3drNV11WFROTewqf"], "descending": false, "description": "szHvZbb4C55igO2r", "iconURL": "mTvnTtGVUf5FnsY2", "name": "Zl1DvsDG6cB9DSAh"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'XpSITffT1BIn6Ylz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'rqiDMOkbDZRsKpxP' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'B9ojgLvHxsRhjJRe' \
    --leaderboardCode '0YjSURCVoWp5JcQF' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId '79atN2x3NcPhQAoD' \
    --leaderboardCode 'yTt4vWjEe7RpICbU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'loc9rSxDnTjo2dOX' \
    --leaderboardCode 'pbCl4ZhgfTsHjbi4' \
    --namespace $AB_NAMESPACE \
    --userId 'sMPFz4qksw6buBbr' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode '2TAzjYzQsFovbjtD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'GyIIWmEBKUNDfnVw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'MKyoSkY2Z7agT7ar' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'rZ6ZL71rulyhY62C' \
    --namespace $AB_NAMESPACE \
    --userId 'CZT6b43k5r7Ba6sM' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode '1FxI21Bd8ltoLF81' \
    --namespace $AB_NAMESPACE \
    --userId 'ymq2wIUIyjIJXFs2' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'IcKUdV1GOAk45zUx' \
    --namespace $AB_NAMESPACE \
    --userId '7k7INWJtEOPQoAES' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'IFL4PQ7OpB9vRmtD' \
    --namespace $AB_NAMESPACE \
    --userId 'jjRp2DSsvOCLdpNj' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xwQDe8ubNPSlZYlH' \
    --leaderboardCode '["lQiKa4f1swCEgb2Z", "Bqvw0NUM48TA4I9J", "7oGx7N5iSNfcIZ5R"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId '5eQsOR3Q23S6Ro3N' \
    --limit '90' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uo7PHG3FRg4LvCFT' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '57' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode '0jhuxBI1qJEFJyxy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'SyGUwJnGGpZhZahA' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'VbKzTqxwOGM9GxZX' \
    --leaderboardCode 'XFqr6uhVEE2v4dLn' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'nWwJX4fXubr5MMz8' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xrlPTbCXLw7gnc87", "h0iE0k1I8ki248CQ", "m2j61ji5UWDz592n"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'HnpgoWtIUCuRhida' \
    --namespace $AB_NAMESPACE \
    --userId 'QM77Fk17nU3E9zhR' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE