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
    --limit '91' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "KSBCMsu3MxFsms7P"}, "descending": true, "iconURL": "0EuSpsTEEoszI3zR", "leaderboardCode": "QSA2LUTuVdXaM7I2", "monthly": {"resetDate": 41, "resetTime": "bDON1pG1BMDtVsPT"}, "name": "LGpZLTCtJo7zz6gY", "seasonPeriod": 19, "startTime": "R9k7TpLppnnulNPe", "statCode": "m9maOP03nRJCD9gf", "weekly": {"resetDay": 64, "resetTime": "YCN0omb8KveKqBUz"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'rwNx6OUBwtJ6DlYu' \
    --leaderboardCodes '20R7x34JguwzGTcz' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["buTJJjcfCdqa2n8H", "1fiBtFSjDAJtQUPa", "5MVya0FtwvCJG4YD"], "limit": 55, "slug": "srOwcvLPyFZHFD4G"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["UxpqwVKvaHcDJETL", "LCCDim0XQUxrihcc", "BiB0dfF0kiof1vNM"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'g7URq9xPQ4nxXPRo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'OQzlC1cOzYCU3rG6' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "WGNt17ot4trrGckv"}, "descending": false, "iconURL": "4AU9IjRf7hdLcT2V", "monthly": {"resetDate": 78, "resetTime": "VNukUg02YJ82nUqN"}, "name": "7ONDKTUEcTpMw2uS", "seasonPeriod": 68, "startTime": "0cjziXmd03Fyd2vG", "statCode": "lHNQNBblIoCzAwGA", "weekly": {"resetDay": 25, "resetTime": "j3yhMVnDQEhgSYCn"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'oDh1zaTDGYlrFPDl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '8r0XhbcuXL3CIl1c' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'SYluTvAfHoaRZM2J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'eYtdaU89z3BUqjEI' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '3' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode '4hNrTTrlfFP4p25M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'y8BOVFgg2FOKjbam' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '20' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'nL6idIkVMUkiVk7j' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '11' \
    --previousVersion '77' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'oWOvebaE6ZEpcRdr' \
    --namespace $AB_NAMESPACE \
    --userId 'zI2vSb5PgYPy8EuA' \
    --previousVersion '24' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'b3nx0qw2wp5mMyOR' \
    --namespace $AB_NAMESPACE \
    --userId 'NytSAnsuqv8yqizo' \
    --body '{"inc": 0.32430405507668325, "latestValue": 0.4608528823623982}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'ygRVTdGx5Mq202kB' \
    --namespace $AB_NAMESPACE \
    --userId 'YxvsVlNxzGmZqKgY' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'CcEGqbFSNJ61MaJ8' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '8' \
    --previousVersion '59' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NJmNGwdqs0MbuKwX' \
    --leaderboardCode '["iHTqIc6PTLJJtpqX", "5l5bpIGKgvopVEOl", "0MOOECwf2BET37Lr"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '4i4espQJkv7Wnc2o' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TwRthAZzCOuWEPnh' \
    --limit '60' \
    --offset '56' \
    --previousVersion '38' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '59' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "ARnq9wGQ3bF9GptI"}, "descending": false, "iconURL": "NrLZyE3YKDAhgVlK", "leaderboardCode": "qpWmGyVDKRLLReOf", "monthly": {"resetDate": 95, "resetTime": "BTv4GbHb2LwluORV"}, "name": "TRXi1Re0BVYWy5OI", "seasonPeriod": 20, "startTime": "dzFHsn2PxKoP3hjn", "statCode": "6cqSAmIwYMT1M8p2", "weekly": {"resetDay": 59, "resetTime": "LizowOKrZ4IDSuXA"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode '6sj7RYR2k7jjTiuM' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '3DNegWAk4KqJqi1V' \
    --namespace $AB_NAMESPACE \
    --slug 'qHYUin7fNrUTQPaA' \
    --leaderboardCodes 'kgr9giHogRR8zmUr' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'p42Q9PY8QDdirNXc' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '9' \
    --previousVersion '1' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'fskXVcV3aqJXBdC4' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '35' \
    --previousVersion '88' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'yGQCpCklNnL2sjbU' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '21' \
    --previousVersion '78' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode '9pB2aPnmcyvggqRe' \
    --namespace $AB_NAMESPACE \
    --userId 'D38la8p1lBjZc14a' \
    --previousVersion '70' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'OZvyQSyBq38dHSjJ' \
    --namespace $AB_NAMESPACE \
    --userId 'QDSMwrFaSIgv8nFc' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '3uPiCjyybshuzw7N' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '32' \
    --previousVersion '73' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode '7wwCg6XZMs2Bhig5' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '05W2R6qix9hVcXKs' \
    --namespace $AB_NAMESPACE \
    --userId '2kfnMku7BE93NNqR' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'atMONUshfljy7SzA' \
    --namespace $AB_NAMESPACE \
    --userId 'nrjqq7oNqFrDkCdb' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId '6yr0Zd2hwFJ8Dab5' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'ANdwY7xL7ApeZI7W' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '56' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["qbdcNnMJn486KcWu", "IZYzOSwnEfzXtsE5", "xh54W7AlhBBQ9767"], "descending": false, "description": "b0lGWpL5jglIlH71", "iconURL": "zdyt7fbeVcssnFhr", "leaderboardCode": "8x1yJRL7m9Ixl3jK", "name": "slLbBkSSigi0qq9r", "statCode": "F6nktaIsnWbOb6dE"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["3kz4FW4Z2KSqQPTF", "mJYoTcRiH2uZSzTE", "TMzCYMAf35p5HckL"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'dK3XAj5PKbcEb9Xa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'BTNwfoCyvu4VMb4M' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["Y46x1Z0n3aCdETyp", "7P5qfbSd30cgXjxJ", "ov2ZZIhgSslvYQl2"], "descending": false, "description": "mPh8x4hpjJ71Vkh8", "iconURL": "5rJsi4Diz39DaoVG", "name": "oaUA9rwWVJqnrsLr"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'oeMBcvsLEraiMncx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'OEWAd4K7PuijcT2g' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'DgGfHNyMsbcEyfP1' \
    --leaderboardCode 'uD4vnvAity399CzU' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '91' \
    --previousVersion '42' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'aF4vxNS5t85e7XuT' \
    --leaderboardCode 'tg7szbotTAyeFEby' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'daYFCB2oBPfwnFql' \
    --leaderboardCode '8DY4mCQUbuuEy7D8' \
    --namespace $AB_NAMESPACE \
    --userId 'tj2EQIiqgfHdlV1c' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'kcv8pZbsdRbfwXZh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode '5zuN54m0KCONp1vT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'PQ6LYCJaHkZXbQdE' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'H8GBvNBdJvmgUycb' \
    --namespace $AB_NAMESPACE \
    --userId '6VMkq57LUjAKHGxI' \
    --previousVersion '84' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'AAxKRzCsKW29Omeq' \
    --namespace $AB_NAMESPACE \
    --userId '8BbKELtS2aYDYVLz' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode '8bXJJnV5XmvTMvhH' \
    --namespace $AB_NAMESPACE \
    --userId 'RxhP0pXD1bUvGzm3' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'a3imEgM8Yl0g4dQ4' \
    --namespace $AB_NAMESPACE \
    --userId 'MzvKsXraDerYDyWh' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UDHKhNumrzA8L9Zb' \
    --leaderboardCode '["kPA8M20sHOi3D0Hd", "tF3Y0oKv1EOGGFT6", "6SdYA6WVFwI2eIbj"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'O6K10CYfz9Owytcq' \
    --limit '63' \
    --offset '8' \
    --previousVersion '0' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bcsh7Ls62JCplKgJ' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '62' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'nnHEKn1alw466CKP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'Xg5y0DiZ3K00R8CL' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'yRBnm5LuLEzpSvlh' \
    --leaderboardCode '0zKocs2E0pNm0S1R' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '92' \
    --previousVersion '12' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode '8mnFGk1v7suA7GAX' \
    --namespace $AB_NAMESPACE \
    --previousVersion '10' \
    --body '{"userIds": ["R5lVn5vym9MgBdeh", "7J5DQVJp7HC8Zeio", "Zzfbc9AewvlXZjTr"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode '88lvCk6c2VaCQtLy' \
    --namespace $AB_NAMESPACE \
    --userId 'GYjknNhTsGHNFgMC' \
    --previousVersion '31' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE