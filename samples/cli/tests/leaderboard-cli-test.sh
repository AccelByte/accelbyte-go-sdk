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
    --limit '38' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "2B3dT8L3YTmAiC4J"}, "descending": true, "iconURL": "eblZMFus8fphY4ra", "leaderboardCode": "O89NZHp9knkKFvHj", "monthly": {"resetDate": 93, "resetTime": "Qe52g8rfF8ngvx7c"}, "name": "U6hFZmQsoLin0srS", "seasonPeriod": 89, "startTime": "YBGfrJtCMTiHp7lJ", "statCode": "leSvVWWs0tpGjQUg", "weekly": {"resetDay": 85, "resetTime": "8SK8Lmi7MJii3hxf"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'T3KlHaR0O0PvOBq4' \
    --leaderboardCodes 'kWTGJv8iGdYwxVWK' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["Cf8Xoi9m94sDSLXd", "vOzlNBDfYiaLpqtF", "A3f7YWBQQrPq5hNM"], "limit": 77, "slug": "DgmuYRBBJZvC8P1L"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["aW220svWwgWXc4Xy", "iWo8fKvGCmLFoU55", "JO2kJICG2IQhrrAy"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode '3hh6fOb8iXyOl35j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'YROjdyUoIcMvS7b9' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "C5Ij2LTtK4P0Z5eR"}, "descending": true, "iconURL": "vOGbHdhGiD5GSYfC", "monthly": {"resetDate": 43, "resetTime": "JvQRmC8Eby9Kz1dE"}, "name": "7V9Y121Z7W36Eklh", "seasonPeriod": 61, "startTime": "QssuAWU6dpXLumYO", "statCode": "sevwqNg170sACxS6", "weekly": {"resetDay": 97, "resetTime": "rw4FB73H6WctVgGK"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'yPoxtccM7RAwPrp7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'jJk36jKhN5nEGFqM' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode '8rBNtdyfsXhriPjI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'SJlUfwOSIKNuksIZ' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '37' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode '9t5EMCJVFkdm9i6T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'D7VrbhKDY5SEqvPr' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '0' \
    --previousVersion '16' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'XVjWVsJaHhPfQzEG' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '86' \
    --previousVersion '1' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'NVC0H0PTDs3Q75iJ' \
    --namespace $AB_NAMESPACE \
    --userId 'E68tx8npjfWKVk9W' \
    --previousVersion '37' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'VG3pEDaqNB1DHrPb' \
    --namespace $AB_NAMESPACE \
    --userId 'UnWQshxqmo6wwCfN' \
    --body '{"inc": 0.7719770260379203, "latestValue": 0.8499799888615795}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'mdHFqhCuu1gn3CXl' \
    --namespace $AB_NAMESPACE \
    --userId 'KXc9VihUn88rg7Wg' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'YnUUcU84acrO4rfQ' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '43' \
    --previousVersion '96' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'r4Es9wvDIPrfDnYj' \
    --leaderboardCode '["PbdlEBC4C3u1PMlt", "Tmfq9dEvcCSuEWdd", "0t3hENUCqXVA2uZB"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tgtp9YrVPm3asjVO' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Vs4G3b58UOtwiE1b' \
    --limit '37' \
    --offset '91' \
    --previousVersion '14' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '17' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "1iaxNwqVFbNIFEs2"}, "descending": false, "iconURL": "8ddhijcUSR6xmj3T", "leaderboardCode": "t1z4vPdcF0YW5Efs", "monthly": {"resetDate": 81, "resetTime": "6DzmMTm5btwZGgEC"}, "name": "imJ2Q0DYoqXYR9Bd", "seasonPeriod": 15, "startTime": "HI9BNViiDlOGFBoq", "statCode": "f5GFNGGRLZgMdkJz", "weekly": {"resetDay": 97, "resetTime": "tP2vBHtPVxLBCSaN"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'XQ1QcGWZqOplxAqS' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'oMEptsYI3uiyCYub' \
    --namespace $AB_NAMESPACE \
    --slug 'PlmFLH7nEMGl5L84' \
    --leaderboardCodes 'qi9Gg1BdcmfJ0ZrD' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'V1S9H0KVL7hnlP55' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '72' \
    --previousVersion '5' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'ireBWNQRUfQJjN3X' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '97' \
    --previousVersion '66' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'yRYZeJ4O8ondKDnk' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '0' \
    --previousVersion '76' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'KpH2JipFL8BjrSZJ' \
    --namespace $AB_NAMESPACE \
    --userId 'ML1ujqubtz2AcfEP' \
    --previousVersion '22' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'CPCT8EAV0wIhz1PE' \
    --namespace $AB_NAMESPACE \
    --userId 'eVPqnBoAvNacX2Yg' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'kgOyZDwjlfvhmz1G' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '97' \
    --previousVersion '60' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'ghh98yGgXVvh4VlZ' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'BBrqommCe3xAPOrn' \
    --namespace $AB_NAMESPACE \
    --userId 'k665yvirOHNjumQ8' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'iRkJnMj53XedKhf5' \
    --namespace $AB_NAMESPACE \
    --userId 'zHfMOhFxEPcoRvOT' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'aEuoEVExUoscsHmb' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'Odu0LwEzWoQ1Syvb' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '31' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["DdZOgI2rKy1XGb6H", "i7vFcRaCDI6QSJu4", "8VRn9uv54Pu7zFxm"], "descending": true, "description": "EJ2ioJPANMuBmyKN", "iconURL": "wONHFqx5xVMPvqOc", "leaderboardCode": "0sAkPZL6Dpxvjff3", "name": "CDnPXI7UKiPfoPvm", "statCode": "DOZgtnJ3XU8CYHLJ"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["CQibmSNHVKW8ygFr", "zbxJV8GpfzdiOiL1", "PWpzAeoTkYYh2KSA"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'Xs0gkUhpSOtwraGV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'IUB7cMVFl80CEQMy' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["Q5oZI2GPyZbsYZot", "0Ci4ke5uHMwfsN42", "9sBDwiAqNgboh07B"], "descending": true, "description": "5TXLT2y0H7v0mGNg", "iconURL": "k9Jlw0BQZbBJB751", "name": "UTWJzvhsCBVdeSea"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'CFPsUyBLj9pkJz0o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'XadUuBrS59GF88bw' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'jwXv5h3tb47VPvxV' \
    --leaderboardCode '4uBPOwARIeniQfnF' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '13' \
    --previousVersion '64' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'zsU1lHkapBCnca0V' \
    --leaderboardCode '5YSs4mPyrjaIftQK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'LEtHdSbCEGjFeTWc' \
    --leaderboardCode 'aLNjV0X9jtnA0YZi' \
    --namespace $AB_NAMESPACE \
    --userId 'RFPgqvh20ZnjqULc' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'yQXdFxWuz9zIasCJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'IpGRW96ECrnXPSGD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode '22h4wHgeBSSJrlQY' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'P3QabWTZj0mzW4ts' \
    --namespace $AB_NAMESPACE \
    --userId 'jRCPWdnlHITZzLE4' \
    --previousVersion '26' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'RrnHl7JP8XWJwkha' \
    --namespace $AB_NAMESPACE \
    --userId 'ooe4AXfAlvWsZQ5E' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'iIgb4gx65n8sxGg9' \
    --namespace $AB_NAMESPACE \
    --userId '4lqvZiqa1J7BdPiq' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'bmaX8Wbc4x6gaVf9' \
    --namespace $AB_NAMESPACE \
    --userId 'CGKwqKzyphizW5yU' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tORui3PeWRu1PKLg' \
    --leaderboardCode '["tXh4QiyzPALHz7Ax", "krQ0uABL4AI1WbTZ", "LCirhNJs18n93SXv"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YH5z3QdjbnSb9Ca6' \
    --limit '50' \
    --offset '80' \
    --previousVersion '3' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oIq3zvBXy9LMvolr' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '35' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode '3WxFRTvF4HHZRy1L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'HBEpqtze4kZdYYbv' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'woN6MwmqMX0CnDKS' \
    --leaderboardCode 'DkDOhwJf3kYrh9MW' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '12' \
    --previousVersion '48' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'mjGJQxVZOw8c37eo' \
    --namespace $AB_NAMESPACE \
    --previousVersion '85' \
    --body '{"userIds": ["z4hozjKcmi7Itz6f", "Za9AqSF58nlipUoc", "kyUNEJ5iaOkhgcHQ"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode '0RSv05tNoIpv5Cri' \
    --namespace $AB_NAMESPACE \
    --userId 'ddZhiAQ8y7j44hot' \
    --previousVersion '2' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE