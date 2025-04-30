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
    --limit '53' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "c3e8URoDq6a97wa9"}, "descending": true, "iconURL": "yPH5zYWL9CcDDnrH", "leaderboardCode": "eIcQGeb6ATj94pwo", "monthly": {"resetDate": 64, "resetTime": "i8ZNo0DlqqXv5BMe"}, "name": "X1p60CayFYaVQu3A", "seasonPeriod": 33, "startTime": "PgTMK1RE2a25rbAH", "statCode": "37mfBqu7TNMtgxgp", "weekly": {"resetDay": 5, "resetTime": "VzviHjKzK4PkUhPE"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'tjCnuy4qS70lTGAZ' \
    --leaderboardCodes 'rtGBcsLhJVeYdaFO' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["DE0aLiiguB2Ru2mH", "VmcopONfxv3XwFLZ", "xLnqem349MT8ynnn"], "limit": 33, "slug": "OhGuEmieFuPwowCd"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["BvUbHVFXjZSHbRlD", "z9QzSqHc83FO79GP", "LUPmfVBGS6Sk2fBN"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'Clpe5tBGHjMwyavz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'CCEQDJRg2QTmXquI' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "XLGDNArSO81mWDbK"}, "descending": false, "iconURL": "RmOOMkpsGGqWyLG5", "monthly": {"resetDate": 60, "resetTime": "giGbXzrs5Pd9BUnY"}, "name": "B5LR5XgMZj64iiij", "seasonPeriod": 54, "startTime": "jGHJL3ra3WemDKqs", "statCode": "30MgNqcKtUWJydot", "weekly": {"resetDay": 49, "resetTime": "TBHiAWXd0cUiha5g"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'Sej5tMoJGV0HDNY6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'RD8tLJPHAvcAQQlr' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'Y1tabMz8dYdq4vAc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'AuwiGLdGvM8mULJ4' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '73' \
    --previousVersion '13' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'QQ2pqd3n5HNSsqc7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'LdSj4WpKWhIv5MN5' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '60' \
    --previousVersion '50' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'MOHarYrxthTywt67' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '48' \
    --previousVersion '2' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'xlBBsqAnFLq6MGou' \
    --namespace $AB_NAMESPACE \
    --userId 'SCWNUholsl8pmLi1' \
    --previousVersion '99' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'c0tklwMh1Si1rttF' \
    --namespace $AB_NAMESPACE \
    --userId 'T8Yyvqb0VUcA4ApA' \
    --body '{"inc": 0.7712477956187161, "latestValue": 0.8576809049027707}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'BDcZoCrcYA3aMX4D' \
    --namespace $AB_NAMESPACE \
    --userId 'TY9CGmQTWGzqDfsW' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'Bu0dSFZY6UXil95X' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '91' \
    --previousVersion '10' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'w9k2BhLkvxXg818E' \
    --leaderboardCode '["TfZEgsgQ8gIRYnOF", "osv6xrwieIHY5BOm", "ahcxIRU0kKXBckiz"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '2Bln8bu4msL7eO0p' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AQLtoxHFREL77E3d' \
    --limit '68' \
    --offset '30' \
    --previousVersion '28' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '49' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "rmrRllmf4X0h5Brs"}, "descending": false, "iconURL": "9f8YMoZ7qQTnLLCE", "leaderboardCode": "UeosxSFvEbVkpaLG", "monthly": {"resetDate": 41, "resetTime": "8wgjJCTRPuF26Ee2"}, "name": "kvin2db9P5xJRsOv", "seasonPeriod": 33, "startTime": "vSMyH2R3E1fyRKG3", "statCode": "endi1SMsdfyglK6m", "weekly": {"resetDay": 35, "resetTime": "MhCqvDY9epO02r1D"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode '05KnnegtvyiDDc4b' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'XQqFr6M19zQnbYZY' \
    --namespace $AB_NAMESPACE \
    --slug 'H5a4cyUDY108Radh' \
    --leaderboardCodes 'dBZy8V6txBisx7r5' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'RnqDAafqDwwddIux' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '36' \
    --previousVersion '97' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'bhkXbd9ECU3ICv77' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '74' \
    --previousVersion '82' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'nPWfcznMUXrfTAgd' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '22' \
    --previousVersion '67' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode '0xqOZHT0G6JETuhg' \
    --namespace $AB_NAMESPACE \
    --userId 'Zesl2l0HJ5CHnNKy' \
    --previousVersion '1' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'nYHQ3sDmvswoAXDj' \
    --namespace $AB_NAMESPACE \
    --userId 'TjEik3Qf73RDONS3' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'Cjsy7tT99SahpCGZ' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '31' \
    --previousVersion '10' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'rjeVeC9drWjQF0if' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'J6PMFkyyIxCsnM7d' \
    --namespace $AB_NAMESPACE \
    --userId '0jKANN7Hn6KxLNOT' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode '56NndwF1a2QhocnU' \
    --namespace $AB_NAMESPACE \
    --userId 'JYyvSJMAZPkWeogN' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'XhSde4Vygu8RovOr' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'zbOPJqJuowu4z0rw' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '7' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["Mk0BTCnNyVi22p3k", "GVl1J1N3ShuOFUvB", "kMY6g3itbAtFaMUG"], "descending": true, "description": "676uZuX1y9o5cpTL", "iconURL": "4B2c2lrAUGje1Fqd", "leaderboardCode": "kptWJYC72PeaBwmt", "name": "jNYPEORotMhrQI1f", "statCode": "1QovFGr7GDrQOdv4"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["U0GKbJmpcUKm5LGz", "gbcwMdFb9JEoBe8Q", "cd1LzPLbYOggTg56"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'cmrBHYO6Lc8lCH6N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'YVY4lnHpUgiedUsV' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["AyIcQjMXTMijPr3d", "U7YQcGiNlEi8IQf7", "Nkokoghb0ZXj9NGb"], "descending": false, "description": "IjjIg3hIsAoDGJCf", "iconURL": "EnQy2uHDMGZ9sjRu", "name": "yTmETCj9yuxZUv41"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'FvCm81l9zknd22Hq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'NyidedBOUNA7eRpe' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'JaEIGXTNVl19Ut44' \
    --leaderboardCode 'MPmfczUJ8LOSFhUX' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '34' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'wF5rmRimbnGJoJLF' \
    --leaderboardCode 'dlk7SwDHIg75SwFx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'gtLhYrcIkLoEh9yv' \
    --leaderboardCode 'V6L2yZ07zH4s3ctn' \
    --namespace $AB_NAMESPACE \
    --userId '0qjFunnpukalNpWt' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'fRr7K9LS7QzLnayI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'yTkGrqvynKn2qc3F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'rQpKnsFJpGsF5dx2' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'ENcHD77lFRjGDtgF' \
    --namespace $AB_NAMESPACE \
    --userId '2qpooMmKKnTa44Xt' \
    --previousVersion '16' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'bQ3tNJCH3Xtilai2' \
    --namespace $AB_NAMESPACE \
    --userId 'jHiUzTfx6fszHzlL' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'ex9UgSiKdU44gYJB' \
    --namespace $AB_NAMESPACE \
    --userId 'XxkYJI3wc86ZjX8R' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'giPVLpkqll0woQma' \
    --namespace $AB_NAMESPACE \
    --userId 'm2bEXzU2sGYqC7C9' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rRGFiHHJbrgvwXmn' \
    --leaderboardCode '["ymYS7TAeDxVHMBqP", "0j5qxJxg4NIf2QQE", "yKMJSpfwNLuB41Uh"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BGNxYr4L6vjpeMg1' \
    --limit '57' \
    --offset '38' \
    --previousVersion '82' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nZh9rsaoJGEKV7DT' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '32' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode '8ZKU8SvubCBHb0DM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'ApAgbZChCrYz2knk' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'BRC1zIVqW7IylCWQ' \
    --leaderboardCode 'VSozeqy9tM5171is' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '77' \
    --previousVersion '4' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode '15dRx0GNUAKwzaf5' \
    --namespace $AB_NAMESPACE \
    --previousVersion '81' \
    --body '{"userIds": ["4RUmNv7pkqWXEKLz", "pAx2ACwJYyt1AOF4", "grfmQmRCFndR4GuA"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'XCLxyDaKORWHaK00' \
    --namespace $AB_NAMESPACE \
    --userId '1mYIcRYfxRv30JWC' \
    --previousVersion '29' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE