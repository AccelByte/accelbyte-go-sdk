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
    --limit '31' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "r9JMYAAwlWbuJskp"}, "descending": true, "iconURL": "8TPz1ez2sqKrrEJf", "leaderboardCode": "djyIZiqzIPh72vDs", "monthly": {"resetDate": 74, "resetTime": "H25XuXXyVmX9SKmX"}, "name": "3zhV22Ko06Em59VT", "seasonPeriod": 24, "startTime": "Sb7P6aV2oEbkBJUU", "statCode": "DXpr40iWru2PMhyf", "weekly": {"resetDay": 0, "resetTime": "DpKwwpeyamV3u58K"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'ExMXSO8EP91qe3BO' \
    --leaderboardCodes '6rXgcnEDwdlfWA6r' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["PerVpekzsybkQGTU", "zDCllWKr643tn8v6", "ZUYqhAAagjBQJUqW"], "limit": 58, "slug": "hHy6WoX9rEeVBvqX"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["KiTa7F89Y12RpmL0", "oiVWiKw9F7SBD8B4", "sU47DvJxsaymUxuL"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode '1DnyhPqmQOcad6Xz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'wuGL5lEya9sx0NHN' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "2R7oO98gZcscKWRP"}, "descending": false, "iconURL": "d5GfA5BAMO4Loqf9", "monthly": {"resetDate": 7, "resetTime": "G2uNhvmhQp0UFsLB"}, "name": "nYzLV1ZcBfIa9nKH", "seasonPeriod": 68, "startTime": "liwdCuAKRfKzeHcL", "statCode": "hgkAppOE9kfEVqVM", "weekly": {"resetDay": 68, "resetTime": "E20ubiaxyvNVbsfg"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode '7N5gofA8nWW2ZZww' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'TlcrSLBPaPerhYK0' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'GNYPUPPiMvBJT7jM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'Z4ht2uvIUoa02REe' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '35' \
    --previousVersion '30' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'M3N8rPsJ3HbMlItc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'BUYzxS9Io5rFcjWY' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '62' \
    --previousVersion '19' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'X0HKkPvjPkltClEo' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '1' \
    --previousVersion '10' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'dm0xa2itLcSdG5tC' \
    --namespace $AB_NAMESPACE \
    --userId 'CTrsG2neWvPL1609' \
    --previousVersion '95' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'lYYwjn7aDvkMtM4g' \
    --namespace $AB_NAMESPACE \
    --userId 'iufwwX4e4khPHfDW' \
    --body '{"inc": 0.135354786507754, "latestValue": 0.028124779148905654}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'BMaMqgR4lpYhRjfN' \
    --namespace $AB_NAMESPACE \
    --userId 'iM8Hz8nULIsi9Zoj' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'N0HEWAKom0VlyVY8' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '41' \
    --previousVersion '56' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WARgTW3UuRyuGcI9' \
    --leaderboardCode '["UjVfWL6IMfA6DmNL", "kSXdTPPGa191lJAm", "JGeislLOcd7hrdJq"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '7NDwioAqxXQzajLo' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '6XD67CIFb2AeVxo5' \
    --limit '97' \
    --offset '3' \
    --previousVersion '42' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '55' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "3h2CLtxEmrGGz08G"}, "descending": false, "iconURL": "mYYalxHCveplm0dJ", "leaderboardCode": "8ifEeBaauvUWu7re", "monthly": {"resetDate": 53, "resetTime": "jPdIyP3cRGYx2btR"}, "name": "hUGXoM6P6lDpvuiq", "seasonPeriod": 10, "startTime": "ayJcW0Xa35Kh6ZUF", "statCode": "AapAyOkFR2KotPjf", "weekly": {"resetDay": 55, "resetTime": "VrFjZZbs37HP4nNT"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'VOnsZwh7TpMo9i9M' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'oiI4C6UCMaXaVIOm' \
    --namespace $AB_NAMESPACE \
    --slug 'uEHSY5sl1H2AkcS5' \
    --leaderboardCodes 'p4IdN5XY0PASb0ah' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'EqoHT8kTnw6fpGV8' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '9' \
    --previousVersion '97' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'tbQeSPfgeKP0pwFr' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '63' \
    --previousVersion '62' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'ygkQcAeopY0oW9WK' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '72' \
    --previousVersion '22' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'Jk7QIppo6RCKZuvL' \
    --namespace $AB_NAMESPACE \
    --userId 'hygLU2dW1HfieBhv' \
    --previousVersion '78' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'HCc5MfkHtqngUug0' \
    --namespace $AB_NAMESPACE \
    --userId '6ocFW6GcnuGpXYic' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '27hSHOeEhQrDAAVV' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '65' \
    --previousVersion '43' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode '63UmGwslMDDjugaA' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'RwQsARySRRjg3onR' \
    --namespace $AB_NAMESPACE \
    --userId 'afTEAqGObnpeSr05' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'nmXkntAaJDYnB7it' \
    --namespace $AB_NAMESPACE \
    --userId '8S6djhj0Mno29UMQ' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'hbsWYEggHliSOzwW' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'nYcOytMaoEKMWWBk' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '39' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["AZ7eM0RIT2X9wfeq", "FhFGtBooeXEOrJOj", "ilNABtOAszELvBln"], "descending": false, "description": "AcKdNriLq6dhABFh", "iconURL": "E9TrFCpsj5o0Z5s5", "leaderboardCode": "Mhy57sqjW6wQZank", "name": "ibcHjBD0tlglXtq6", "statCode": "qXYtW6ZBSUU6ZCwn"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["QzfiyXqOEIqfHibR", "GzlRIlt4wdfYayxU", "CKeHKPrH9B263pWA"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'dDyswMU5SBnyw3Pb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'HnM9w8kCa0vsyI61' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["ZVbE9ZNVh6GXJiYr", "4nSH1NalASzmfAoo", "WQcrSHGr8akU7tS3"], "descending": false, "description": "CziNJUS5bzcmBI6P", "iconURL": "16bxsIaqNShvCbij", "name": "qz0w0SdvRL16kqmk"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '9GsVaqI511OqJ5uX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '4BgVsiD0uQO4Ztmj' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'iFVcqfTFs4ntiDb5' \
    --leaderboardCode 'laBeszjfoc7SC6yI' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'nKBBDrgLPTPWtoeq' \
    --leaderboardCode 'gYHVS2wXtXPaNLHu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'i5nee7QnTFjdkw4B' \
    --leaderboardCode 'ebMgRGW81NXPIWKj' \
    --namespace $AB_NAMESPACE \
    --userId '3A4AsuKEjZDEJSnI' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'cCQjTcHmPdK3Gvsj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'TM5OHBoJuXwUth2m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'MegeoAQApaGoqyGT' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'fzij5bWXPEdJl1uS' \
    --namespace $AB_NAMESPACE \
    --userId '15Y7PsmojvxFG2MW' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'axfturuolPyzI2xX' \
    --namespace $AB_NAMESPACE \
    --userId 'PksNu8k2nd1Dm1Wn' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'nimouuAxK2kZ6KQU' \
    --namespace $AB_NAMESPACE \
    --userId 'NRbAhlSUit42GfQB' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'A4mWBbNixo5HLZN8' \
    --namespace $AB_NAMESPACE \
    --userId 'zmQA3unU2jaOtFTu' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nT1RFG78fn1dfyHp' \
    --leaderboardCode '["ccYtPwwYfoBH6mbg", "xBaObvswbZNQxJpG", "MXf2kVqv1BzrHg8s"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CyITUb6Bz6OfoVVh' \
    --limit '47' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId '9GYKnfH3fhgomrKk' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '24' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'WkNSUFhXKvOHwsdb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode '635YLey4mlNCRhhn' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'BnzWWhwej6xpMF1O' \
    --leaderboardCode 'LvF3OHsDxLiHuSh1' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'tOordX5ul3pjFUHw' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["uAzQh1ahQyPMCElC", "KiTmMUAts6pXDUHX", "W3LjhVNJ7k44M5so"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'AIzehrT55FkWr3pv' \
    --namespace $AB_NAMESPACE \
    --userId 'CyJXlCtqSCiXvgo2' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE