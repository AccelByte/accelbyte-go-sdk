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
    --limit '85' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "496qEcLaG0AK8HqT"}, "descending": true, "iconURL": "rOkPTDw2WUWoYXUy", "leaderboardCode": "iuULUYMCF5jakWwv", "monthly": {"resetDate": 76, "resetTime": "MKHFbYq59PUIPubm"}, "name": "BbPD6gGwI1gumSBZ", "seasonPeriod": 7, "startTime": "Xr3KAVz9iXMKOCa5", "statCode": "gHcr5gZq7Jmzg4bV", "weekly": {"resetDay": 59, "resetTime": "GezSiG6dgyQMDqOo"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug '9OrCA8nBrRbPoOAR' \
    --leaderboardCodes 'UeDrYsseLIYP0Tdt' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["j8hXPbRRcNNtgbIB", "YpoZJuKPDBlp1aqG", "5jZlMRv54JlxZMHr"], "limit": 90, "slug": "g6j2dT5iCw9AZi1D"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["5DMfu5sdNgU7f9Pt", "CmiORSStK1rBaTMh", "F8uHn9RYNsQTovLo"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'vHtuIm2pAQSTEnQg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'wFtlnHrKIvmUlk92' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "5L4LbhbovB6pcB2d"}, "descending": true, "iconURL": "0bogv7NLCRQ0zJky", "monthly": {"resetDate": 69, "resetTime": "uKYiuHwuTRPbhapW"}, "name": "r7alrmOIyOJDLDVJ", "seasonPeriod": 0, "startTime": "ylkgs72IZ7BISj8G", "statCode": "Q1XnzYnTF5vqZsXK", "weekly": {"resetDay": 24, "resetTime": "7L0T5QiMiWW6MeYI"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'htsnSa9fZIHEx9To' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '8QeTmmGT6RiBeUZw' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode '75r8jiQqSAyz56t1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode '7WiRwachBT9M6813' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '43' \
    --previousVersion '6' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'tkrwrlKhBgOLCfa4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'RYAuAUUFedVljpst' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '32' \
    --previousVersion '57' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode '73UvrFLmHcM5waTE' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '36' \
    --previousVersion '12' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'dZXSLeSSfju2DY91' \
    --namespace $AB_NAMESPACE \
    --userId 'VcNCjy09dJozdMPY' \
    --previousVersion '7' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'jbod3UJFwiT98zoL' \
    --namespace $AB_NAMESPACE \
    --userId 'XvnKW8fhH3QfJfbV' \
    --body '{"inc": 0.6745702463479768, "latestValue": 0.2690303712745784}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'q1thQxvCRdE0YCF5' \
    --namespace $AB_NAMESPACE \
    --userId 'W9lJpQMiAwtHI8HD' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode '7IJBjsGKaNakxxML' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '97' \
    --previousVersion '84' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HOMOADngyDD2bsNV' \
    --leaderboardCode '["phyb7LhimZMzgei8", "OKWpBGHv1a2gxoxB", "rIJpM53zAQ3m1uos"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HA3a4BXBsk8vIaag' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '8hCYKRa5pwnznrLl' \
    --limit '72' \
    --offset '66' \
    --previousVersion '85' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '82' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "jRJ5nQ19nZeiJ1Wa"}, "descending": false, "iconURL": "w50HhRzn4Kc5pVsq", "leaderboardCode": "EekCnxEhebmxgEql", "monthly": {"resetDate": 73, "resetTime": "rpL5T0b71sFYwLbp"}, "name": "IEV7779Lj6RkBvM6", "seasonPeriod": 37, "startTime": "7uLq0vHyXI5lwDwW", "statCode": "E7AyzHJRUo6AydUl", "weekly": {"resetDay": 52, "resetTime": "Rv5VC4EzoKKI07iz"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'HatnF7LQPNidFGHF' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '55ArzTM9Mf3pu5s4' \
    --namespace $AB_NAMESPACE \
    --slug 'pITsbuO3eY4suD2q' \
    --leaderboardCodes '5OPvEirEQWLP1nbn' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'axCyRa0X7Mt8ypVg' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '37' \
    --previousVersion '67' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'wT8ziAAlQ8ipNBKd' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '74' \
    --previousVersion '90' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode '3K7614AW4i44zUnt' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '84' \
    --previousVersion '76' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode '1QaPRfG4jONRCGQ9' \
    --namespace $AB_NAMESPACE \
    --userId 'SVDUjLZ7uDOYYi2I' \
    --previousVersion '33' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'xOO2fv4hB7e12akY' \
    --namespace $AB_NAMESPACE \
    --userId 'y8IzuLzHuA4wBsFX' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'P0Qwo2FmuY81GJQC' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '34' \
    --previousVersion '65' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'ZPredBf4b1Gp0ZEY' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '1Z7jBXur3DydNAbc' \
    --namespace $AB_NAMESPACE \
    --userId '1HVCl5q6DMyu8KDa' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'O9nVoWheQe4nG0FZ' \
    --namespace $AB_NAMESPACE \
    --userId 'X1iN4ixTs5AmXbcg' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'cLkj25ty2vCHrt6T' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'sMJrERimUuQOuFrp' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '71' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["dL02R9DqHjKYg9OF", "2ZjRNDArbCWZSRez", "mNoHD8yhJIwaO8Zv"], "descending": true, "description": "8j1BknyL9BlNBSI0", "iconURL": "Nw2dDji4LDWwDr5n", "leaderboardCode": "RpMkraow1owcGUtX", "name": "PbBTeaLgeTlZkD4l", "statCode": "ZyOOSostAtWjNwev"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["TdCOlV1rzYrd0Tuw", "2SYggkjaXeEDejEk", "Z466K9lQfqM8z9T2"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'yK2wUE5kWM8H3gSV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'tgXVFLpNcxlP4vPl' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["4RDZbVn0TEWWdAUF", "d1rNPpdu9azta2UO", "g0DNJy6X69M34QdB"], "descending": false, "description": "J1rA6H5cfqMaWv5h", "iconURL": "KwL8qhG1pQL5L9LS", "name": "n5FPAUaziozn0wGP"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'cMggrrbfGu53lnbd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'fNFw6Tcpq0mYWOzA' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'uCelah3rSuXFYTf0' \
    --leaderboardCode 'LDA99tIjodIHjetF' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'KxkjJ1nJsUtCGWfx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'z2Ny2rqsbZoM5a63' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'h3AyX6ceMwvOvRQR' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'YF9ttJ8shSPgsHWK' \
    --namespace $AB_NAMESPACE \
    --userId 'lFWUNu0QU53aB0Lx' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'r22V82MkHROjpUXd' \
    --namespace $AB_NAMESPACE \
    --userId 'gfiToXqA5Yb4fqxB' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode '89CBgtsKCNfkFmT1' \
    --namespace $AB_NAMESPACE \
    --userId 'Ig5IcCtyuaJNBW8P' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode '3EzFgYX8Fy9kmMFv' \
    --namespace $AB_NAMESPACE \
    --userId 'rMGEZF2AVb4wBYBw' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xVtzkAjAMZpvgQw4' \
    --leaderboardCode '["GRXLrIjM8bF2ZlJW", "oORXPtLkuptL22ff", "Zts8o9TCjqZ1Uwdg"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Tn0BFtVsnJ1PRv3c' \
    --limit '16' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kPTmOjl4BpnXSPVA' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '70' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'ytV2qvtcbCudrDvu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode '9eGQL6TUE8cJHXzN' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'UxDT5vQju94lSQXX' \
    --leaderboardCode '59eBQTH5KRJZDsJb' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'LUyBln7PKQXAsMgR' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["RmM5LR5qfBRDMDnG", "ATM79855Ne73AN03", "FGcJenQB5biXyTCU"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'Y8Oe12U8kUkhaood' \
    --namespace $AB_NAMESPACE \
    --userId 'IIUjZ8gtgf7NtG6e' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE