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
    --isDeleted 'true' \
    --limit '84' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "0gN2lQtEAIgoXR6I"}, "descending": true, "iconURL": "cehv11XoAOM5l4lc", "leaderboardCode": "JT2zNfRdDfkavGAX", "monthly": {"resetDate": 22, "resetTime": "DphNk5fbqR4D6C1i"}, "name": "nU807sr5SZNi13jG", "seasonPeriod": 61, "startTime": "eclfsgTSgTpdCJXt", "statCode": "cWGrNPrCiJatdrle", "weekly": {"resetDay": 57, "resetTime": "xFa0lLgvym1DpUzR"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'TP2f77W58taEHvqE' \
    --leaderboardCodes 'xSOuC1VcNYsJRIiA' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["VMtsd4uAIDND0pO5", "k9GBheZM0ikvezvx", "fDWDwtZENhB5oeaN"], "limit": 37, "slug": "dn9cLGDfCS7NWXEb"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["AYxMLAGHomL9dbIP", "I7rp9CsjZAsR5ACl", "W2mqFOMVov737yZD"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'DlhF1KsBdQqh1T8C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'yjC9DkJhHq8iQQaS' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "Z5cEPCcar34Hl3en"}, "descending": true, "iconURL": "avA6SU2XEdF3Rmyy", "monthly": {"resetDate": 81, "resetTime": "BixVVjNDEaMyVWJw"}, "name": "szUkFRHQXeGefJwu", "seasonPeriod": 92, "startTime": "HM6HXCEz9aAAfdVl", "statCode": "XyUupISgAywsGV5l", "weekly": {"resetDay": 1, "resetTime": "599Z0fgddJhiiQkr"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'I6PXGDQ7rfZDXQkN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'GpKip2OXQ1Jhz0Km' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'wvXJhVd7SwHQhtag' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'UiM46wib92Gj65RN' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '36' \
    --previousVersion '95' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'ICAvwei1ctrNTTD7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'td6rVDJ2nTJcCG2i' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '19' \
    --previousVersion '68' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'QozgfUtKVywCkjFL' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '67' \
    --previousVersion '21' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode '3CfOWGHVBIcfAAbw' \
    --namespace $AB_NAMESPACE \
    --userId '0rCKdPF2mpMkEdGr' \
    --previousVersion '68' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'YNPCog5J5fcEBpsT' \
    --namespace $AB_NAMESPACE \
    --userId '93RKt0QuFH4WW4AY' \
    --body '{"inc": 0.7141215436519266, "latestValue": 0.6939912208347401}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'w1mJlokyohzgv8I0' \
    --namespace $AB_NAMESPACE \
    --userId 'x4oaqvJmzBZZ8vQD' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'ceQGxt04lGrbcDI5' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '92' \
    --previousVersion '89' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jri14R095NBdn1rB' \
    --leaderboardCode '["15WdhozIwb5I6pAA", "oSHzRSy58VgU7aDW", "yBzEWYnf9KXw0qHl"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xjhh756POPUGTjjP' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'uq3FF6Tdh85NgBwx' \
    --limit '10' \
    --offset '34' \
    --previousVersion '25' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '15' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "i0iYSJGJ9pffTC9W"}, "descending": true, "iconURL": "ZtcPZUmjq5lzotSG", "leaderboardCode": "3Vww8khXQ70AFQ7a", "monthly": {"resetDate": 78, "resetTime": "j8omn0I4XA4kquRc"}, "name": "gq7vAl0pmWrX9JEw", "seasonPeriod": 60, "startTime": "Ckg9e9fPv0HhhFgT", "statCode": "yV41n2MzluJNNe30", "weekly": {"resetDay": 94, "resetTime": "Ddi2HA8qWIhl3Qx0"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'T7NDmrQlqm8ayXbx' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'AyxhxJRY6EKYnQmG' \
    --namespace $AB_NAMESPACE \
    --slug 'Tltzw37eyPAMOqK0' \
    --leaderboardCodes 'URsxbWwBsy0vhBqm' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'WzjJhMIzQKtUdZpJ' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '56' \
    --previousVersion '13' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'i6XBxluBU2QiOL70' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '11' \
    --previousVersion '46' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'gN8yGq5HKA1hvdTE' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '0' \
    --previousVersion '35' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'h0Brb2WG3CEVtoDA' \
    --namespace $AB_NAMESPACE \
    --userId 'pyXFomeivBUnOJd8' \
    --previousVersion '15' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'xJUEkKpbC8Qj2fmN' \
    --namespace $AB_NAMESPACE \
    --userId 'FZESJHHLqNPe2euK' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '1PPAponzJD5A1lj6' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '10' \
    --previousVersion '95' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'CWgsJdipQs3Bmrgu' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'Jr0vcClpNyQDGPHI' \
    --namespace $AB_NAMESPACE \
    --userId 'T1pN1wYocYouKKkD' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'wwucOwPvfLyhDLTo' \
    --namespace $AB_NAMESPACE \
    --userId 'pg9mSBQINEogqXHT' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'pAgvvdEcFON3FVjj' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'GLo2n9XnXskTJgC9' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '45' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["ciiYc6CAuhupn6gm", "8ggkv66fX9btMwkj", "T3rqF9VCPF7690L3"], "descending": false, "description": "bY0HnpjXFjYOgUp8", "iconURL": "xdroisB32iv5cX21", "leaderboardCode": "56geT6qnAkLrgiNa", "name": "w5lQ9e3p3TxtZCvn", "statCode": "Z0DJyXUZ7LVv8QET"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["QR8kNakTgjRVCIIM", "JwhluLRy5vfqqHvm", "M5BJXX2ZdDtlvJcw"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'Yx0Nq650qDMEo7qR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'mzol8EboMHb8jq9d' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["GLoTcO7zqC8oAbV6", "T9JE4mhfP3dl020k", "EPjmr27OSHazQ2iw"], "descending": true, "description": "TQJZNt51tgAeacx7", "iconURL": "1X7wBZyH0epV4quR", "name": "Udj1XqZxovODbHnb"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'K0sBBAejwmSDc6LK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'vVYrH0SCmkOFMsid' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'uD6Gq9Mq5dXEeJLF' \
    --leaderboardCode 'hVfKaDDv2y5R3xoO' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'dCOSwsSzMhHdrgHD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'hwHKGFgsOLfVQSKV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'GV2VmRcCp85TWRvY' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode '6sj18pGmlHeHsj4x' \
    --namespace $AB_NAMESPACE \
    --userId 'h6CTh5xNsa354iO2' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'gWTJ5QiGtjnT02km' \
    --namespace $AB_NAMESPACE \
    --userId 'FthwdLwgrKc2Xq8b' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode '2lurr5OHo87PzIDP' \
    --namespace $AB_NAMESPACE \
    --userId 'JBKHhl359AOym9Hm' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'X8WKGwDp8THITT2q' \
    --namespace $AB_NAMESPACE \
    --userId 'XPfWlGc3Z7wwK5vY' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DUC2pYFPJ9NImuYp' \
    --leaderboardCode '["dehAPyqYTcyP3rvj", "QRfYXr12MoSJzW2n", "YgGEPN1Wy53o9ZUD"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fMbGdIRanMBqfg82' \
    --limit '41' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'M8rC82n9BUW9cI4x' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '11' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'NhepyN6Uho3gVMr9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'tmTU5w9OPLFAYJ8I' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'IwMw9XtOv8oakP9U' \
    --leaderboardCode '26GRixWCRVtpu19a' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'OahGkptGgWU4WFr0' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["9vVGOkiLuA0J1QUJ", "CFYqOuxh277tWSG0", "KOiVQGiEiY606TVz"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'yBKV6Nwcj44mdhqq' \
    --namespace $AB_NAMESPACE \
    --userId 'nJCnZyZhKZmGVBMC' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE