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
    --isDeleted 'true' \
    --limit '1' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "I9ykMSAMLnfovT8b"}, "descending": false, "iconURL": "QjEJXh1VY8fQyEKa", "leaderboardCode": "ZIsiOCpBtvgCbU2T", "monthly": {"resetDate": 37, "resetTime": "1Oe8G6fJLELT11us"}, "name": "BqypXNfZPxPOxeyq", "seasonPeriod": 26, "startTime": "XOoO8u6vZ4lcjQJL", "statCode": "G4nITOxoG4rEcXiq", "weekly": {"resetDay": 63, "resetTime": "ITDz75dQPPMPhAPv"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'GG6oeqkq4YSXKM5v' \
    --leaderboardCodes 'zzlsnn4xUNuIZCkF' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["hXToSJzoA532NR77", "fhBuAbUBqIIXmNjq", "d6qnBElhsDUY6Bxd"], "limit": 53, "slug": "exNGzMUpNcXi6D12"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["2rU6mWgiXaph563i", "Rj06ebGdXjrR6dae", "gkM0UuhS9kTOxRxC"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'RIuJCFJe1zTCmvIT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode '2RS5UsFi2jqLSJJK' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "ctIQX2RUQZSYuDHv"}, "descending": true, "iconURL": "RRLnkEwJkxqDyS7L", "monthly": {"resetDate": 62, "resetTime": "nCOY8Xb5CSBV8L6R"}, "name": "uBgtxcGMQ9NZfvl9", "seasonPeriod": 97, "startTime": "9PuMrCzWMWSHJ0g5", "statCode": "lENiJeJe7Wc1Rd09", "weekly": {"resetDay": 96, "resetTime": "ooiGtW0aYOIDqAhE"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'ZyxVk3gnKpUV7HEE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'QIjpzVit23F2fuVZ' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'ZWRzS337ukFTrEgW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'PoBjqoh94nwOUFRz' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '58' \
    --previousVersion '34' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 't6R2CQhoxfxStyti' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'KFIeMDbobQztAVg7' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '11' \
    --previousVersion '55' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'EaXPTn2f4RcEuehT' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '5' \
    --previousVersion '76' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'VekpI3HicOCj0J89' \
    --namespace $AB_NAMESPACE \
    --userId 'lYVWz0GLA6x7XO8E' \
    --previousVersion '2' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'I62UnS1ng9TMDjo9' \
    --namespace $AB_NAMESPACE \
    --userId 'koYQmqUI1pMczbxH' \
    --body '{"inc": 0.43288413575737583, "latestValue": 0.08606950289470072}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'bhbEXJ0SdRR0R0kO' \
    --namespace $AB_NAMESPACE \
    --userId 'BrkR8r3bIhVggaDR' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'QWOQrnr5WDN8e1b5' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '71' \
    --previousVersion '23' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fVqHZpxhLFN1N4xp' \
    --leaderboardCode '["YzvWeHoiMktVuLhr", "uRDX8LXhw6O71ML0", "6DFw3ZKwE5xQQQtS"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zliy9HCtuigGTIO1' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KPCrReQvwkV0v8pt' \
    --limit '4' \
    --offset '0' \
    --previousVersion '3' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '42' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "d682bsP2JEj7J9mF"}, "descending": true, "iconURL": "rezizXrOQSmBxIMv", "leaderboardCode": "gqNxMuRo7piBpW9V", "monthly": {"resetDate": 23, "resetTime": "cqnCbPxeAesWc3rS"}, "name": "zGaZxAJN7XxG6q3i", "seasonPeriod": 61, "startTime": "IzFgdpsF4lgQtXyy", "statCode": "4TbfO1A55YmaCaYM", "weekly": {"resetDay": 90, "resetTime": "0qXAEPsZ7UUUINuY"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'kts10vhUy0BGaJ3g' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '85yIcFeHqDkFrtCQ' \
    --namespace $AB_NAMESPACE \
    --slug '0UqH8fNH3aptdJ2f' \
    --leaderboardCodes 'p0sKXfb0MEPur48k' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'wtZwF7RmKD0kY0Gf' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '5' \
    --previousVersion '32' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode '5iw4UYejEXOMCoTW' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '33' \
    --previousVersion '40' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'xRIAUgE2448VyaoL' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '43' \
    --previousVersion '57' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'jFTkaiqmjBbBlEhu' \
    --namespace $AB_NAMESPACE \
    --userId '0oE5BdHDFfeqRBuk' \
    --previousVersion '72' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'c3xyYVQ28Y6ivNrZ' \
    --namespace $AB_NAMESPACE \
    --userId 'rcCz93IhXVya2ePX' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'soTR7RXcoPHC799t' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '98' \
    --previousVersion '19' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'Gqr1EZPZiOTKEW2M' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'yB0hZUMSOqL1auL0' \
    --namespace $AB_NAMESPACE \
    --userId 'GfFSsiDzkN0HerbY' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'Z1QFhKc6NikjptO9' \
    --namespace $AB_NAMESPACE \
    --userId 'e4PcB47mT4Byxn6r' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Plpgqmoit3VeYson' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'wvqaK4NFo5Mq3RMn' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '50' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["62we5BffiaqESWEk", "BKtEg7izXB4DH8Qa", "Ip8uKCGQ2EZNG3rC"], "descending": true, "description": "CWibfqWCWUY7WkAV", "iconURL": "5Q7UZacMXx1HzIS5", "leaderboardCode": "UAFqAgQTzbl0VK0T", "name": "hayzSQALY6WAQlNk", "statCode": "vs1l49nbjVhZm75y"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["UqviRtH8i1zNdC6W", "1icLdbxZZq09URIf", "El8fuRUOf5hlRN6d"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'EY9WhImDSzadtFvK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode '0VaSGvcKZoHaZxz4' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["XyyzHPqceV3iSB48", "eS3iJLIkDAvXg6JX", "fQTf0BTOX5Eg7lh9"], "descending": false, "description": "3ZzrDRwg5Vt0jTyH", "iconURL": "8pQDa6pLEARVjoRv", "name": "6YYH7BNnpFTxzrUE"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'KhMrfof5G5zYy5GJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '07uXcs4X3ClFeOxY' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'AiTdpKEiBqlNo6bl' \
    --leaderboardCode 'RvT147OHpPP7YcIZ' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '29' \
    --previousVersion '45' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'G6DemV7zg0TI3iUo' \
    --leaderboardCode 'nyh3Epo5oEutvljF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId '2X427zrmjO6PTQBg' \
    --leaderboardCode 'SgyHHOhL4rzg1q9z' \
    --namespace $AB_NAMESPACE \
    --userId 'p1RPYKEJAX0t9BDd' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'pb8H9H4YjAaYGJpP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'PfOSyjR4DXjn6WgM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'MLwh9bpTqURlYxtL' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'nWO21OXiyeM5EJ1H' \
    --namespace $AB_NAMESPACE \
    --userId 'NmBwStG1Mkki0M6u' \
    --previousVersion '43' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'MTl7dIpoPYB2ki5L' \
    --namespace $AB_NAMESPACE \
    --userId 'uRm0fxl6KlDoDt3U' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'm89KQcj4HfVtc5HS' \
    --namespace $AB_NAMESPACE \
    --userId '7U92uxT9iEiXynMz' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode '3ChLLAwcHmt2zW7F' \
    --namespace $AB_NAMESPACE \
    --userId 'XVB7NnyygY2cwykp' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GbOrXKUaEpFUEqem' \
    --leaderboardCode '["FqZsAK159OC9tr1g", "xpPtz0dr2Di7ssXF", "NMZ2pnGJsNEoVhCp"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E65tJjkXjSVnlCX7' \
    --limit '76' \
    --offset '72' \
    --previousVersion '9' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fq9jZGkCZqWHpz2y' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '58' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'YQZPeL3QH5mRcb1J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'R1TrSv80tDzAcftl' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'zfFIr5Ppa255HFkt' \
    --leaderboardCode 'etd5D9VHa8V24RJK' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '63' \
    --previousVersion '38' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode '1flWjc5otp8SPZjd' \
    --namespace $AB_NAMESPACE \
    --previousVersion '68' \
    --body '{"userIds": ["X7YiEuniTFbqvBZn", "0sk1d0ezPKiezayg", "lwJ7rfjoSjAhTVk8"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'Z3qDWmitRM9E08Lk' \
    --namespace $AB_NAMESPACE \
    --userId 'QzldlFtAS22TRUiv' \
    --previousVersion '46' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE