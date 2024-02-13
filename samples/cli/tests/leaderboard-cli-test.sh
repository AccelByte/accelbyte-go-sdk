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
    --limit '45' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "a01lo2GDXVMash4V"}, "descending": true, "iconURL": "XWKhBCx3CbyTShbp", "leaderboardCode": "UkDCrYaXhkKQ8vBk", "monthly": {"resetDate": 90, "resetTime": "NPFVP1NRj1S7J5OJ"}, "name": "CIy39uD44FNeLlH5", "seasonPeriod": 48, "startTime": "MkSSCbtZx6k1Qoxz", "statCode": "JXMh3Sr9uc5RubrB", "weekly": {"resetDay": 64, "resetTime": "TPY8umigvhEbYFJS"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'CBW2eADmeubHLIBA' \
    --leaderboardCodes 'wp0iEms8I8sPQi65' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["KMJ6wbmnZp9ZY69w", "LSwp61OPhQr0JnZg", "BjOAls4pw75ZGNmI"], "limit": 57, "slug": "xrdA83IhlEvir3km"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["s8QQBr3VV1vS8iTY", "xSCdJ2Vhhfd0RXto", "Q1TwVciHvEEi6XXD"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode '7InZR1Xh8TdEdBJg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode '71a25NnqNEWV4ta8' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "H899FEjRj6Blypgb"}, "descending": false, "iconURL": "2ev6XL3JXGHtn7TP", "monthly": {"resetDate": 96, "resetTime": "nxEd8J7wfUKhir57"}, "name": "zkCD1zrzz8yfbrpI", "seasonPeriod": 73, "startTime": "gjneJOH9PtEvXAjw", "statCode": "fCkOOlQ0EZ0obmir", "weekly": {"resetDay": 87, "resetTime": "jQyexPcu11dPUsB6"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'K7hgRrXKmQ3KnoQv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'JgY0bWL3nTksmUtd' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'Akzza7GrTcTrHYLM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'BprYiUG6RDwuaSvX' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '77' \
    --previousVersion '71' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'jOFFQj2o9ftZQjgp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'NpF8xGsiucXRuizl' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '40' \
    --previousVersion '53' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'M2nkZWYBDfbHTeCK' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '63' \
    --previousVersion '3' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'FxpNSm09pWthFmdQ' \
    --namespace $AB_NAMESPACE \
    --userId 'eyGGutBfWD060jjc' \
    --previousVersion '78' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'adNiINzz66gq2nfa' \
    --namespace $AB_NAMESPACE \
    --userId '80wngFrixJFE43Y8' \
    --body '{"inc": 0.5630882906155891, "latestValue": 0.4642588392058924}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'nReSLygcLLB8x0Au' \
    --namespace $AB_NAMESPACE \
    --userId '0egDOQyDplKzsQgH' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'J5seP40VwsWZOyrY' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '92' \
    --previousVersion '91' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '5CQ9uDEtMjxSXTAX' \
    --leaderboardCode '["HRitkCfoZntaMCkz", "7jQ1lekc85d9vvYn", "2a8MSXHhD8A1zonV"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'bwVsDikhwtIwkD8Z' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FF7dr1LJdmm2zvm2' \
    --limit '86' \
    --offset '84' \
    --previousVersion '14' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '24' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "Jy8BpDKLu1eHLSpV"}, "descending": false, "iconURL": "QI1CQ5UU2jTOdIMu", "leaderboardCode": "vi1GsZiKzjHDwunr", "monthly": {"resetDate": 78, "resetTime": "PttjTKax3ZHxFOP7"}, "name": "QfZ2y7PnFBe47L8e", "seasonPeriod": 32, "startTime": "j5s3sJFX8TcSHrJX", "statCode": "rrSBDrpUJPZNxlns", "weekly": {"resetDay": 61, "resetTime": "PP3dhZjG6gcJdSuW"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'Q43iF3XcuZSNS1Xr' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '5KQqNk28WELLs3q6' \
    --namespace $AB_NAMESPACE \
    --slug 'tDPctPNG5qFkyMPu' \
    --leaderboardCodes 'efWexZDHyQcrF0NY' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'Vl31CaS7s9EYFFSk' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '24' \
    --previousVersion '45' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'mGgW2mPNgy8hxVp8' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '55' \
    --previousVersion '22' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'qTQqaKf6wgLEt0iq' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '84' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'gh4FDBITBtMwcX0Q' \
    --namespace $AB_NAMESPACE \
    --userId '5yhqtmrsodEksnAe' \
    --previousVersion '8' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'Gx3Ck22Gy7LhwA0i' \
    --namespace $AB_NAMESPACE \
    --userId 'OIScwOZoTihiiguA' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'DIYvR8QGfmEwJBnv' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '46' \
    --previousVersion '59' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'AaC2C9SVjHWzTux1' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'tzukkmzClRcIUm6O' \
    --namespace $AB_NAMESPACE \
    --userId 'udPUDIO4N3atY82B' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode '89bc9PkcTw8NvRsI' \
    --namespace $AB_NAMESPACE \
    --userId 'W8kgsWtL9PgxoPWM' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'K5ZYya8uqx9T22z7' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'urHywM9a2vHdVUbk' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '11' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["xtmFylQIdsqvLlrG", "TGzes742VI986kbf", "Pn9ZxsyAq5stdicS"], "descending": true, "description": "v0lJXodjAPhUITZT", "iconURL": "kTMWOoOvjZ92iVO0", "leaderboardCode": "BE2HngYaVM6TImOZ", "name": "4wEhvFzxeSMeNHD2", "statCode": "s18BHq3GGg8cdfD4"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["vq9kwMku3TEkdcAN", "6oOWf5czX6Pw7GNB", "0tsZ98gBekDIZvWv"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'cCuGheQpZZgCTKGN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'cmBsVvuGSlASkXZR' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["T6M3BYXi0kqEyTP1", "UyRwiEgJHd8matKN", "3FFt9yDOBLnpeAC1"], "descending": true, "description": "RLoPjE1rdd3Zynwn", "iconURL": "IOKB5CbUoo8DNXOj", "name": "RDvbtejM4CnWu4ZT"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '7TJfyn4c0wGMzRMJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'LfnUgursFqCSWDxN' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'swaw9LkNiYPgGeaT' \
    --leaderboardCode 'UIgQ68CNkZ5sLYEx' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode '3OsyF1t46yHGp9s2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode '6eNlJPeGtcI6goYt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode '2NN7WDvAyMJWHrGL' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'vnZ0w8MKFwx91rV8' \
    --namespace $AB_NAMESPACE \
    --userId 'ZrjDP3h0HU2zPkDm' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode '946S3cOwtrKcPQrh' \
    --namespace $AB_NAMESPACE \
    --userId 'Y6bHnM4CE0tciuQl' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'LRhmecKB3TDcBS1I' \
    --namespace $AB_NAMESPACE \
    --userId 'lgKw7q12qiOtcm5j' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode '9U15FfXMQbg46dIr' \
    --namespace $AB_NAMESPACE \
    --userId '9nLOMH6Y0QZchnqA' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XXWDz1qeCNTRRCYm' \
    --leaderboardCode '["wwbTZ3d5YTkfkc87", "t8eqlTDIkq8rboI9", "IKVY6q0OACQTQ1ma"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jJSFDtJkaj75hV32' \
    --limit '21' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'haRQZ0TeybaJuiSG' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '0' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'TgqDu9TzQDXdbh8b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'QhLLFxajJLRyEXXc' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'SYpIAEtGPsTSxXbp' \
    --leaderboardCode 'uhIo5X3nJP2dQjRF' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'COUpdBPrtki13cU8' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["aJxvjnGrjYFzSi9Y", "z7US1oj4cu4ELZ6D", "u8koZa1oZECKJpnN"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'hjQXArWqh9viWN67' \
    --namespace $AB_NAMESPACE \
    --userId 'Fn4Ejmg3exZwdn9q' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE