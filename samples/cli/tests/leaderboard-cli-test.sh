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
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '35' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "W51t5Tw3bct8jNoV"}, "descending": false, "iconURL": "fIzYC2BV0Kw7VqJj", "leaderboardCode": "RYxayrcZdy5LsXBU", "monthly": {"resetDate": 94, "resetTime": "2AvQXL8p50cSLCAp"}, "name": "jFgRnbyIB2fFLhtO", "seasonPeriod": 60, "startTime": "gpHr76j3xJJ8k1gP", "statCode": "x24kGDdq7pIjPIST", "weekly": {"resetDay": 5, "resetTime": "q7vCetha6JAEDQ1H"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'RXmNB1wt7xSjwcWv' \
    --leaderboardCodes 'CBOnd2aUSD0lbbeJ' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["He9L6H0uxbe9W6HB", "ygR2CmuMcN1PMveV", "zqj0hyNLUuDUVmXo"], "limit": 69, "slug": "GWpitPGRk9wtkIkF"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["4kkInyv8aGjlA5dG", "zcWk7onA37TQA7Wa", "r3NjfF52UGrokHei"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'wpEENveqU2puoR66' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode '84jMjDSP0CeXNL7m' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "2h1rRSsbEtQyLCSh"}, "descending": true, "iconURL": "h0U0cu89XaZObvyS", "monthly": {"resetDate": 27, "resetTime": "J9VopGe1tm4wuNxi"}, "name": "tSb4D1oH0ODtb6UX", "seasonPeriod": 14, "startTime": "fBvyQmTa9UzVGfg3", "statCode": "AIJhgQoJ4DFWB980", "weekly": {"resetDay": 9, "resetTime": "TYJJ5Sowxegtmlk5"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'uptnp1X9mBi6iF3a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'M8I3Y7brc6vX4t1I' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'rwT1YoBFvoEaHz2M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'IymV9ro9hmHAXuHl' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '37' \
    --previousVersion '12' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'PaWAw5Z2W5G2gGLv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'hf14PkWBEkK6iJ3w' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '74' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'W28n3W1ILVkTjDDg' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '98' \
    --previousVersion '28' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'FTvnxnwzelSia3bZ' \
    --namespace $AB_NAMESPACE \
    --userId '6jFkUL9x2Fwo2vwN' \
    --previousVersion '74' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'h2hCFXnYnTg0ns5k' \
    --namespace $AB_NAMESPACE \
    --userId 'B2kaYg8BXYy1Trgc' \
    --body '{"inc": 0.6290487344461057, "latestValue": 0.5547421903569287}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'u3z0aIZyS2kawWFb' \
    --namespace $AB_NAMESPACE \
    --userId 'I0uicbyiTEXnWnjn' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'Wr6BV2tKWLBbSlHQ' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '20' \
    --previousVersion '38' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'W5JXiNjienDhoo6z' \
    --leaderboardCode '["0R12oZjgdjUx8dJN", "2yVRd5brvgLwOwXO", "Q6skfUqWFQqOV0a2"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JHYWVhgV5zoQtPDV' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NCxTLGR3AmCJoMNF' \
    --limit '35' \
    --offset '26' \
    --previousVersion '47' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '51' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "7uMW2xA8EMhz96u1"}, "descending": false, "iconURL": "ruoDRYE6klIEE0yc", "leaderboardCode": "7CTtPu245hYWv6Du", "monthly": {"resetDate": 2, "resetTime": "afqpeYxKtMSrzhI2"}, "name": "sTNCds4oEe59SjLD", "seasonPeriod": 92, "startTime": "mfUprFBgSdvu6ueL", "statCode": "rSvUoQNh7XIf9KQS", "weekly": {"resetDay": 70, "resetTime": "HecbSlhzex4VQ3pQ"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'fOZFRvpbbt4g00uB' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'zvgm9eIg4Gwdi9xg' \
    --namespace $AB_NAMESPACE \
    --slug 'gPBMm4RQiiA2UDUi' \
    --leaderboardCodes 'YJe3bSPLj1dtwwN4' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'uqgFKtgjj5NOraML' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '43' \
    --previousVersion '64' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'qPl1WBgvaeiEIlEG' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '88' \
    --previousVersion '94' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'hkzf7Oy2TNu9GSpQ' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '38' \
    --previousVersion '95' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'BtiE2pqOkTJajPo2' \
    --namespace $AB_NAMESPACE \
    --userId 'wSs1YfDzNQ0qdEPp' \
    --previousVersion '81' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'Sw8DiWVndGErX9GB' \
    --namespace $AB_NAMESPACE \
    --userId '7PpJRD8Fbjrbjvgx' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '7jl523ldWmaPMYXx' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '22' \
    --previousVersion '41' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'w8xIzWzWkjCf9nJS' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '3ADMoTZaqi3jee6V' \
    --namespace $AB_NAMESPACE \
    --userId 'hT4YJGfhhCczJEw1' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'brpsPwWm8sUmoB2a' \
    --namespace $AB_NAMESPACE \
    --userId 'l3TmtWqKkLLVkiUJ' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'HliaZ2GzkM0bVJIq' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'pYUDEN5MA1XXG25x' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '19' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["BygOTPUyqU88lZJD", "RLTmNPkBBYICYNRh", "EIDlKAIh3UhPITTK"], "descending": false, "description": "Oa6YqCoxvGNrtpZc", "iconURL": "zpz2HyBfgVf7k602", "leaderboardCode": "kosQGnEII8Is0zbO", "name": "Q9UOZki5pmsRuVSb", "statCode": "MQ5KD1JJl4gSnBYM"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["ssa3hIcXh80hGOaP", "4rGqx5Jhvoq3X71Y", "3auLCFoqromoysoK"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'smlplEFC1WjaeMwY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'grLfmQlbZCMsBSVF' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["oB1rwUJwGPcdemWc", "4RPPuYJXECezzlXY", "FXH9es8quXA8k7MO"], "descending": false, "description": "Hm6u9QUrqhO54Xjp", "iconURL": "jsUaC3CUQU4hzyNq", "name": "b5kFIu5jyKgFh0KB"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '2YPQTdiFk9XsVCkp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'ri8kd9NJwYXlMwfc' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'kIBUMLzD5HB1J3jf' \
    --leaderboardCode '5O0CwzJRsb5F6cls' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode '6GEadqOUQubhl7yx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'veo6E7ypFaNtqpIV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode '5PvHOC3KUUhirdzS' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'X03GitdT6tgPadol' \
    --namespace $AB_NAMESPACE \
    --userId 'OM6yw2wAaqvaYgS9' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'k00Vbv7GRDdOOg4j' \
    --namespace $AB_NAMESPACE \
    --userId 'fD36c8Cqn5zXqVvS' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'cMbdEAuQ2tCPIRIC' \
    --namespace $AB_NAMESPACE \
    --userId '4QUJVhLcVCLYqFp7' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'yuZiwHwpPgRpW8PK' \
    --namespace $AB_NAMESPACE \
    --userId 'awMa0gTOgWgaFqNx' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PRVmH0JjqxqiRfqV' \
    --leaderboardCode '["rGhNeoyT0pGJxCIG", "EAJArhtRhvxvYPTA", "R4VPWkYOvvm3Dad2"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qb2jKebZ8EdweMOA' \
    --limit '76' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oczWsAaRdxPhah5w' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '84' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'w9l94P6g3Y6I2LXh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'V3HjjLrJBWJcl042' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'wrgUc7OaIofKFdFB' \
    --leaderboardCode 'HcPa1BqFax0uTMAK' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode '87iIDM3BamCx5RcO' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["c4RvWq8ZCZoqQBjm", "kyah4xicCL7uOnRF", "f9NhcokmcmhEHvG7"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'jPRpB5E61Zq6H7dl' \
    --namespace $AB_NAMESPACE \
    --userId 'tkFuTMEEB70yThmQ' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE