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
    --limit '71' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "0oPGUNmZUX13EJmZ"}, "descending": false, "iconURL": "iShutnxBx4NoHwCO", "leaderboardCode": "nL5IbTbJX5BwRSMl", "monthly": {"resetDate": 37, "resetTime": "FQXydRSGR4JCTUKi"}, "name": "us5yxdztC83yLAXP", "seasonPeriod": 100, "startTime": "VPVgoqmHJN9OFNsG", "statCode": "J1Ppift7ofSqkUwr", "weekly": {"resetDay": 22, "resetTime": "Ee3QK9v2q9G3FtOy"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug '7M5ySvOzpAgCM68J' \
    --leaderboardCodes 'YTQBnVLXcGHKzP25' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["Hghm3Jytlcx3f4gL", "VKlnnuQqNorpqjou", "F6rQI6tZKRtwite3"], "limit": 77, "slug": "FK23bU8jpfDCi7N6"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["P3nRYxArZYD67K8C", "pR2lvEyVKSlWVTeV", "EVpVaqT2Zne5bK7U"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'ck9JcvomlXupb6nA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'kFqYx8vElGI9eGwM' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "ninLJEICXqtBKGCV"}, "descending": true, "iconURL": "2bQmaQpNoKk2iF4Q", "monthly": {"resetDate": 22, "resetTime": "7whvkt2CDgiWpNWC"}, "name": "FikfE7zjISaBlmKl", "seasonPeriod": 83, "startTime": "dfh7Ip7QMZNE1Od0", "statCode": "cYtf5RGP7AP3ZKjl", "weekly": {"resetDay": 72, "resetTime": "1zLQ69r2Zb33CvKv"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'rzkf7AkDJbGpurz7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '6mhxUKETYRV11TqG' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'zaBtfNUOSsVJJ47z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'Tvx5fFRenVUvyEeR' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '96' \
    --previousVersion '99' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'fYLXV3P4PUwZljoH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'aWd2IRGaOAvETEzY' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '98' \
    --previousVersion '82' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'PDqDpXlvXelE30T7' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '37' \
    --previousVersion '20' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode '4ZxMxFWOmCq6Wohe' \
    --namespace $AB_NAMESPACE \
    --userId '3jy9EXpRrdx5vVGk' \
    --previousVersion '98' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'gNyeFVbUGdH2pUV8' \
    --namespace $AB_NAMESPACE \
    --userId 'xfzRTMR6TbnOAcNR' \
    --body '{"inc": 0.9506177787678187, "latestValue": 0.948884366113986}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'nsqCZ25Oc0iV3czn' \
    --namespace $AB_NAMESPACE \
    --userId 'KSX6IJx0c0nXElZM' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'zCg37FNRTOGTM008' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '31' \
    --previousVersion '94' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Dx136dP9KuzkGaof' \
    --leaderboardCode '["2FFupYL0uML9wMKS", "KtoeQ1UDYYCx5Iic", "6s8RZEyxjL8Ex81w"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BbNH3M45o7uZmHO5' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'C6ZemsoGIJr9uOl5' \
    --limit '70' \
    --offset '59' \
    --previousVersion '23' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '28' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "FJQQ2CWVgxgcPS8j"}, "descending": false, "iconURL": "d9ZjAmPAXl3nzXq9", "leaderboardCode": "K7sRH8tIekwH8FLR", "monthly": {"resetDate": 41, "resetTime": "wzGhqijYgZdF2G1v"}, "name": "GmA3iRG5rvmeS9Kw", "seasonPeriod": 66, "startTime": "OqASKY8J02E8Wchu", "statCode": "eNIto4G2bQWgFIrk", "weekly": {"resetDay": 15, "resetTime": "EPWL9Z5wA5Ta2d5f"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'Vs6NcGIkwTWrRizJ' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '7Vo4bfXrr9VCUb50' \
    --namespace $AB_NAMESPACE \
    --slug 's5KupvAVFo3SqaVw' \
    --leaderboardCodes 'X2qdpCjujHlVRm92' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'OpSEh88XeTiHtNvy' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '78' \
    --previousVersion '74' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'KTINkAd22L0fthzJ' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '23' \
    --previousVersion '71' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode '5MV2DJhzh5M6GqE7' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '66' \
    --previousVersion '89' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'DkzYKfpehvmlqnmD' \
    --namespace $AB_NAMESPACE \
    --userId '6PGUgb6awlZ0qoZL' \
    --previousVersion '71' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'P3rHVKK1wkqMSS7f' \
    --namespace $AB_NAMESPACE \
    --userId 'bZNwxI2rw5SLxsxg' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'dR8yUxSyYkN85lOo' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '28' \
    --previousVersion '5' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'Ke2mF3U0zQWyQPPV' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'eesYpONfcXnCOtp0' \
    --namespace $AB_NAMESPACE \
    --userId 'F9lpJ9tryMEIyZ6J' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'QcPyGE1d01gHBpLA' \
    --namespace $AB_NAMESPACE \
    --userId 'rFcFp2w6y9KQtWZ2' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'UYpqAAq8yac48jVf' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'lnyBlgfD9Qp68aUV' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '62' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["kyLHg9CHtyTOALJS", "ClHWNXudNblXRgLr", "lm9qTT6lrnWxWCEy"], "descending": false, "description": "2VyKlcL59s7lktq3", "iconURL": "6i2YVDLGqR4vEmAG", "leaderboardCode": "LX4ykOwz2HOtQiUX", "name": "WrWuc7kmWH79Mhh1", "statCode": "ugqxVRXJ1CfeMjAJ"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["7k0IbOGDYCYTI4dD", "OFYrBXzpUi1wM82e", "l4Unv0Na2WVV8L8B"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'KFhGYWN1DcY7Nog8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'ymjVCZrZuezrCG1J' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["WQeLc91oPlDa5nby", "J399PDj2aOBQKF5d", "GNNZctXIHgyGzpYj"], "descending": true, "description": "30m4nWWJVCX3vxf9", "iconURL": "tXoP0OoqXQAbCGBM", "name": "IN9Md7Yy9FoCKjRF"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'yNCwKQd7xB8gEXPu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '0c00VVwnBw38Ce5w' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'zkmtfKZ0GsRele99' \
    --leaderboardCode '8K65quXLtl4Ereoo' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'pJG8YCNEztuaLYZy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'UCez2sQiReR3X8UN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 's3g1aaNquproQIk0' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode '5olaZcO1adE9HIco' \
    --namespace $AB_NAMESPACE \
    --userId 'PLy6OhvSwHSk6qNf' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'OTOMj8VZGtzB9sxc' \
    --namespace $AB_NAMESPACE \
    --userId 'EHKyRiSZWyA9N0x3' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'WotE3QZ1CM5bK8DR' \
    --namespace $AB_NAMESPACE \
    --userId 'biFbH3G2ewkkbnFn' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'sgq3cgPRl8PnMCbi' \
    --namespace $AB_NAMESPACE \
    --userId 'KiCqLNkXdIGZDf6X' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EcW6lNE6iXSDthdo' \
    --leaderboardCode '["FNFaHEJ6RMhqXA0c", "mn0jgEBUuuUMix4N", "DDXh0y0eY0LpLA0e"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'g4Xxh5n20esF50t4' \
    --limit '13' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BZwIVWHoP2fvq3r9' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '31' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'kZr4eEvNbkrODTSU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'KAEMWEDzrxCupcA8' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'Mv1SMOgcPePDP0uY' \
    --leaderboardCode 'yKe5GxRn6Bb30Lm3' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'ixlp3U6GneLZMtvB' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["s9scdZgS937LYoWB", "RhcsdheFSfZtunnm", "zpMvrZDuidRz4KWs"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'Qm2JH9Mn7ggs8G3U' \
    --namespace $AB_NAMESPACE \
    --userId 'Mm8ivZMkRGaOtcTL' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE