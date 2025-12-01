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
    --isDeleted 'true' \
    --limit '23' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "sTOBVyIhQ7wjTtWx"}, "descending": false, "iconURL": "Ov5qYMPklBAYlcZx", "leaderboardCode": "JwEsodtjIUnQZBsL", "monthly": {"resetDate": 5, "resetTime": "CVnpyb6SseH6i0dJ"}, "name": "EW0tMycxOKmgUXi8", "seasonPeriod": 51, "startTime": "o26gozzOIVYQqPmZ", "statCode": "G5VDxO4Zh0xdstki", "weekly": {"resetDay": 0, "resetTime": "tlyAty2HCvwaDfEl"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'gShm5KgTCOI574P9' \
    --leaderboardCodes 'hHeBihWCXg0RGKLx' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["iRtCbpGfVyVkaRkI", "YqMjfVOsnK3neA35", "95Ss25dTgaOGveZK"], "limit": 81, "slug": "O91OyZH4XszsQP7F"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["Y8QghDSGRLdT8Kyw", "MrulFBEU1rzvr4JH", "QAmK8yzjiS6IKOGU"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode '091ZKKHBWkDEKEpG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode '5wDjiWOlRbrudW3Y' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "CumBBoete8iFX7J2"}, "descending": true, "iconURL": "tfG4r6t0uEzMURr0", "monthly": {"resetDate": 30, "resetTime": "TyCcMv0Omu1rxtQ9"}, "name": "gV1mDNoOG6uEnYdX", "seasonPeriod": 3, "startTime": "Knpm38B5L6SH5sRL", "statCode": "RqZIm1OGEkd9cmv4", "weekly": {"resetDay": 82, "resetTime": "HVp9gbAImRagRY3E"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'jpBuua5qdihZiSeq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'qij6AKw60p4fPxal' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'IkLfwQxdx3BT6qEI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 't9fNLamOyqiNp5Ob' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '60' \
    --previousVersion '83' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'XGw1Nr5bgofWFKL9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'TiG1xUB7dQYeHlo7' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '95' \
    --previousVersion '89' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode '77arPJWLjywcpP08' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '27' \
    --previousVersion '12' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'HswwJzUf4Dv6FtrW' \
    --namespace $AB_NAMESPACE \
    --userId 'FVvG4hR75MbXtH1I' \
    --previousVersion '22' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'Gyj8C5FQCAwbE0zm' \
    --namespace $AB_NAMESPACE \
    --userId '5NhMhH5VOYNLUjVS' \
    --body '{"inc": 0.25941311964313807, "latestValue": 0.12591001295105442}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'mpvqgz35aazVmFx0' \
    --namespace $AB_NAMESPACE \
    --userId 'DyL59Fvk1vk8Fk3Z' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'xaWYObtZ7rsoCYez' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '74' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JEz2jGmgbLnvi0t2' \
    --leaderboardCode '["yzPjDkPyQaqh87gs", "UDzX5nIfyxK6sDzz", "rJusZafqizEBZAaP"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FMd3I2p0rXHPijD6' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'oss6mvAraCkGtU6W' \
    --limit '60' \
    --offset '81' \
    --previousVersion '100' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '28' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "vnjGTlqFgXbSzXu0"}, "descending": false, "iconURL": "mqZ3TYgIYX7FY64R", "leaderboardCode": "l6TxqsyJqucz6pF9", "monthly": {"resetDate": 95, "resetTime": "GC6sgLaJSfimr9YD"}, "name": "VSM9pOEr1ekLb05i", "seasonPeriod": 33, "startTime": "zkm0liDYqJcnU179", "statCode": "fOzwBu1LCQ737zKA", "weekly": {"resetDay": 44, "resetTime": "EYTDLyWP8PDN5YJQ"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'DGCLk9aZ4U7wB50a' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '9t8nzd4QXpyTAJOx' \
    --namespace $AB_NAMESPACE \
    --slug 'zVsrUfhgr5mjzUtJ' \
    --leaderboardCodes 'o84cynP1QYP7ez5b' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'mqjlFlDtldMGvHGX' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '98' \
    --previousVersion '0' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'rGrfOErcVsD0So4N' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '13' \
    --previousVersion '93' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'ChEAMbqrxY9X5zt3' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '71' \
    --previousVersion '36' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'KOh7YgP5PFYFauGQ' \
    --namespace $AB_NAMESPACE \
    --userId 'GcImw48N0VHR2GFJ' \
    --previousVersion '0' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'vKqIrUuq4NeSHgrP' \
    --namespace $AB_NAMESPACE \
    --userId '7aXe0Hu8wrufkxy7' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '8KubXa2xap0yLG5i' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '14' \
    --previousVersion '99' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'xjLdREh6ifr6znbc' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'JZVI8Ai8WezHSe7l' \
    --namespace $AB_NAMESPACE \
    --userId 'JKB5TydxA70zLC3D' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'qUwMashiMZDEAwyl' \
    --namespace $AB_NAMESPACE \
    --userId 'o9VHX8Zfo0OqUeWY' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'SOT89vB3Xau8jwS8' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'UIhv0X9uv3rK1iLl' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '68' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["aGj2nVeensKGaokZ", "QitEpmOVEA1FgSst", "THHXfFEbbdVEcezF"], "descending": false, "description": "obbceQlLdttczyfZ", "iconURL": "ajMl1SHRhblOe6fs", "leaderboardCode": "UxXOrRYbhUeibV4S", "name": "6BqRDonjHwzVKm3N", "statCode": "BO5A0WTT0ra71Wjb"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["3hrB6v7pbzCx0RGS", "mBUpxqR04jHfcvnM", "k0qUsNSdirqDxu5R"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'UG1wGuCqy82rHj7C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode '7TxPwsqCFeVFFVzx' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["ejjLkDvJRhVT2JiA", "B7L1v4OP7fRk70TX", "f5A1oM5h8PUACSjC"], "descending": true, "description": "iKneVsp2bKe6mdqw", "iconURL": "vNCENDW6aMsNcqtb", "name": "OadmoqJMPDwxKK1d"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'uD1cjbd6qTq6Mw5b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'qIt3St4R3WDcOGeN' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'OgozA48607wUuzME' \
    --leaderboardCode 'L2gQPKVzNCiGfE2I' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '17' \
    --previousVersion '40' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId '9yV5otNyyj3MlUYi' \
    --leaderboardCode 'qKDh3cHUSGOF6fJs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'CbIfucB9gFwIjt9S' \
    --leaderboardCode 'HZGe9eFAmZfgOjrM' \
    --namespace $AB_NAMESPACE \
    --userId 'NhBvYWZlF5QDTTID' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode '5tShYs3RlU030BkS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'M2IC6HGi1eh24G5d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'vNXRZyBuzk9Out7H' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode '5QnTWgv1uiyBPz3W' \
    --namespace $AB_NAMESPACE \
    --userId 'CJtageDtp8EPI2Ex' \
    --previousVersion '55' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode '2xmuJbhbANSwVtHD' \
    --namespace $AB_NAMESPACE \
    --userId '8JY5J5c7FhaV6kb1' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode '8NYxuNwDQsEJsxXS' \
    --namespace $AB_NAMESPACE \
    --userId 'XxxDrDJEMAeblVQF' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'au6xNmDyxG8hom5Z' \
    --namespace $AB_NAMESPACE \
    --userId 'gbQ19U4eIf66v4yD' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'i0hAZrKyKBDMi52P' \
    --leaderboardCode '["usLGeiwxPfJ9qZ5s", "0ahpdd4BVz9olwcY", "o3zEF4BB9gI7HWtC"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Mn1x88YRppTURjSe' \
    --limit '21' \
    --offset '58' \
    --previousVersion '77' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'onCUKrR5lH0loX97' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '39' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'vhW9fR7lQgoZ09nt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'RtxCTM9NY0CSvyvn' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId '6VioBTGmpj3kRKEr' \
    --leaderboardCode '3YLFUJAkSvhPcm8t' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '44' \
    --previousVersion '49' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode '4CdMlHBqj0DGh0ib' \
    --namespace $AB_NAMESPACE \
    --previousVersion '36' \
    --body '{"userIds": ["CayoOXs75xSwP4wm", "IGmFQLBlLUvIc4gu", "Zkzsr1vcuRZld8ZK"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode '4YJ3PwXUn3bYoVtj' \
    --namespace $AB_NAMESPACE \
    --userId 'Fimw3va7wwFXM3i0' \
    --previousVersion '72' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE