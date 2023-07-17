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
    --isDeleted 'false' \
    --limit '94' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "FGCvWSMhCv3lAjiC"}, "descending": true, "iconURL": "IAEwmLlJOGVbm9wM", "leaderboardCode": "GH4DzQ3oQlfQwaZJ", "monthly": {"resetDate": 74, "resetTime": "yEsbfAwEslqWmadc"}, "name": "Bwnk3tumuIVCmOmu", "seasonPeriod": 31, "startTime": "8AVIZYzRTA3OP7vh", "statCode": "F509793ssPxcJYm3", "weekly": {"resetDay": 2, "resetTime": "L3w5O4Wd98KygAfc"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'h04wG716tRcPsYK9' \
    --leaderboardCodes 'pbq7Zr5Kxcmnl8Hy' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["xpuvmpn7dWY6d8X3", "DxD6nxUQlAGgEg0g", "D5Gdmgemni89z7lN"], "limit": 41, "slug": "gwEpr4G5EEQwNMOL"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["cz6zEqIH2CHGip8J", "LCNjFTPTXc9oKGIr", "3vanVb616wePLpfh"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'EvtnR99aPvyNnAjA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'LVAxgfV3WTcOzRRS' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "vpfTy5enTYhulDeF"}, "descending": false, "iconURL": "FXP2B6GwsgB1HVZ1", "monthly": {"resetDate": 88, "resetTime": "TFsShdsc8CbWPRt2"}, "name": "jGrYKLeoamfIXDdB", "seasonPeriod": 54, "startTime": "7ZjJlItaxjJNYZTS", "statCode": "ypJc6FXOzqI0eHuV", "weekly": {"resetDay": 71, "resetTime": "GHkB8bulLGNqsHmB"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'TC9BglX24MxBIEX9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'FeKNBLgWJMe0sHQe' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'vAUzVayVSM0AGe1E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'cGMkSCNmV67cMZcx' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '74' \
    --previousVersion '38' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'BstjEZ4NWxniNhBS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'bSVACXL0M6WiQqiW' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '39' \
    --previousVersion '58' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'Ee3peIXw2BM9btrK' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '9' \
    --previousVersion '51' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'XCfi8BDvvGhwQ0gF' \
    --namespace $AB_NAMESPACE \
    --userId 'PO9MtrGO7Wn98hnh' \
    --previousVersion '4' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'PrulC9cJ5kGlLmy0' \
    --namespace $AB_NAMESPACE \
    --userId 'Pw2PTMXd0OItfn17' \
    --body '{"inc": 0.3054651825987983, "latestValue": 0.4768937821889361}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'k3vjQ4B9HKKAJOqN' \
    --namespace $AB_NAMESPACE \
    --userId 'wkyDWOUD3iO3zEir' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'K5K3EA64MXU7BUiE' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '81' \
    --previousVersion '78' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'yyLiFawoZq8FAaXY' \
    --leaderboardCode '["KrVjMzgf9uLwFq8k", "R1h9IoI6UM0tjArM", "HubmXPmtyaZgFF7C"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'S1HRZxgBiJkj8jFN' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '7ygzhLcH1gNbXiWn' \
    --limit '61' \
    --offset '52' \
    --previousVersion '73' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '6' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "hlcHu8Vdq5WskEXv"}, "descending": false, "iconURL": "igz8ocdJIyzN9Cq5", "leaderboardCode": "fJ6jDAgbfExfkKOw", "monthly": {"resetDate": 90, "resetTime": "qHJV2Pg1XC6W3rXe"}, "name": "0EkeFcMn4fFaQKpd", "seasonPeriod": 0, "startTime": "fbmDhJ4VHB1l9SNN", "statCode": "tLvw02phffQCgP88", "weekly": {"resetDay": 80, "resetTime": "TsdpdNq8ol2REbWG"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'H2TzhQGTPMpnfwca' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'P6m6Y7bCm9YesUWJ' \
    --namespace $AB_NAMESPACE \
    --slug 'dCcmgdM2xMDXj6Aa' \
    --leaderboardCodes '9FkwUAxrtLaolUrn' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'fTUxwL5wU4Zq77JL' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '18' \
    --previousVersion '36' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'jMY8WZQQmtUXXMZH' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '47' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode '4wYS5Xq0CWtQaSfO' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '78' \
    --previousVersion '4' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'lQChfArq3okaJmtE' \
    --namespace $AB_NAMESPACE \
    --userId 'fcAYzdoCXkKhsQ8P' \
    --previousVersion '80' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'stNypo6Ha3zqcU0B' \
    --namespace $AB_NAMESPACE \
    --userId 'G5NUNB8aSeD5yNY9' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'Yo2NNfIf9q9Xb09p' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '29' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'wlImklP14tIYJp5T' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'AOOUrVN6WM064Wns' \
    --namespace $AB_NAMESPACE \
    --userId 'T05ULnTz5pqIjqVP' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'iN9Id6wXqOtUVc1P' \
    --namespace $AB_NAMESPACE \
    --userId '0E1jeEQN1a8nC32m' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'AWgZdDVQOv6XucCG' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'Yb0rsKE0vBkDH7NQ' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '15' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["RfuXtAALELsXxMat", "n3E1tsqSD2D2myF7", "ccmIM1nP2kj4IXRy"], "descending": true, "description": "NzccoPwojwldSffS", "iconURL": "f3a4iWJLcJQUDM6Z", "leaderboardCode": "wVljkGHfGR008IdK", "name": "DrkmMCXwiDxZEZ8E", "statCode": "fxHGEu2VJLi544mr"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["LpMFhuwmaLiTtgeV", "ikX67p3tuA8DWxwf", "PkdRk5ImABInnXUL"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'lNvGMOpMo6sk7uPJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'NFC9GElqbX1NE2C9' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["VMQeCLB6uOO9jpbT", "ELwL3mMuE4MqQ0AX", "GTZmpGxVZyuqMviq"], "descending": false, "description": "I2ai60mmEvNSbO2L", "iconURL": "OfrzbalDxM0lYPOX", "name": "Zsfq8ay9PrmoQR2J"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'xLRtHuPFyZaqlyNx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'huTnKDlusKUDPB1M' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'SdeGFcMafaXkWHzr' \
    --leaderboardCode 'wXn3M3oa7nhvVg2a' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode '6MedAgDJ6ixtnQ5t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'lXbqfgg4L8djwu6l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'Y8zw5vDF72v6eTLW' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'SeCHDB1c9CCxgtkP' \
    --namespace $AB_NAMESPACE \
    --userId 'aEU5sZFoF86sYicx' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'DLUdZ7Rx1LiRTvMR' \
    --namespace $AB_NAMESPACE \
    --userId 'ShqaYJ1qVn05U0SL' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'KZrviNb40RXiOVKZ' \
    --namespace $AB_NAMESPACE \
    --userId 'oWZzrkJ7byzQLMCc' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'ZVsskMWTfRj3NNUw' \
    --namespace $AB_NAMESPACE \
    --userId '3FpXth3FIMfnO2je' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zf4PNq1QCFF8SThq' \
    --leaderboardCode '["SyrWgGcTG0vh6t1j", "SSw4XIBQpTEA0RQI", "ri47Go2E2OTtIFqv"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'epNMhyUxeJl8AJtO' \
    --limit '63' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'U0hmHjc7uxjXf9Nn' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '99' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'mjYkieYKJLE9jAil' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode '90XdQp915DcfcVES' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'tGPt8wQmQfBt9yqT' \
    --leaderboardCode 'gbRk6TXRP9HWnq90' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'uAPtT4nIapUOfWqE' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["8zmb1YqyhMlkM579", "fWvw5kDYoPu43oB9", "YAonoCoNUdR0NYkD"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'nJhOBF36lpRxc6EM' \
    --namespace $AB_NAMESPACE \
    --userId 'ajOEC7nLLU80UIBS' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE