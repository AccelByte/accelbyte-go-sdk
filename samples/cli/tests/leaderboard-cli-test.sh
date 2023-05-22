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
echo "1..60"

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
    --offset '51' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "pse9FS1IRXA2O73k"}, "descending": true, "iconURL": "XE3ShHpmbdOWr0sX", "leaderboardCode": "fsOtI0VKFCCKFWNW", "monthly": {"resetDate": 11, "resetTime": "zr4h2MpY1tPPRffM"}, "name": "6741RUyiwUL3MNhX", "seasonPeriod": 16, "startTime": "PtT31tPwl8EPS66V", "statCode": "MLVEejNXkRRhrnNP", "weekly": {"resetDay": 81, "resetTime": "O6vZkZ057va4HKog"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug '0RJQ64vcPR11Lg8T' \
    --leaderboardCodes 'vYirjR9eGydqtn4x' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["CFt8jQuh9eHRlwLN", "m1lyoOrL986wYg6U", "URFh7lNGxSZdsV1S"], "limit": 86, "slug": "VqYmMUIACWEQNs3C"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["6XZePpFfBzKWtSa2", "sjIw4AXdAQKUwVX8", "UhAeAWhDCMNGV6sq"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'nCKESnIAwISVS6YZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'G2MVlhYbsra0s4pU' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "FfJGGyD8Qu5dJvEL"}, "descending": false, "iconURL": "qUwOmfKkJXWo5uhh", "monthly": {"resetDate": 58, "resetTime": "KG7F47ie6FJdkSXA"}, "name": "E2n2uwx1h6uQBhXJ", "seasonPeriod": 11, "startTime": "3i4VHWyBMLE5zHiY", "statCode": "6XNXD4gxEoG38BSn", "weekly": {"resetDay": 64, "resetTime": "UNZb6oL0Iw3x4qR6"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'CiVwcTIlzr92SJg6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'jUyVFU5EHgBCi93x' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'MbdeSoT1LrSSMGsU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'dOwggmjDfRMGRAS2' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'ydaDRiC9jXxQKPco' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'iW4kNgOYr0BQlnK1' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'ddaUKQ4D70uctuGu' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'xnKybnJvdGq2PDKf' \
    --namespace $AB_NAMESPACE \
    --userId '64sqS0WnErRnEk7T' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode '3f419jq2t5zcIfBo' \
    --namespace $AB_NAMESPACE \
    --userId 'IBdukJK0SK7xenjO' \
    --body '{"inc": 0.15066134201663794, "latestValue": 0.27995021345710525}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'CG251cNik8RuRSWy' \
    --namespace $AB_NAMESPACE \
    --userId '0w1rullGeFw43P9v' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'ZrS8fkYhXZbJxxpD' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wGo2QMSU81f4LkQm' \
    --leaderboardCode '["twFhFU9GsAOSVARg", "g7iqkpLM3gqaO6Wo", "AbaZ7uZ5LltBwxjD"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aZ6ku8mhy81GShLA' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zEID8oTwFbGF7MCZ' \
    --limit '93' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '65' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "IZweTEE2Ft3MkVYb"}, "descending": true, "iconURL": "uGG4WaBIib2kNoNh", "leaderboardCode": "E4U13L7b908j43bG", "monthly": {"resetDate": 95, "resetTime": "OLx3EpIyIS3QqsFo"}, "name": "Gn7mChkVSLl4P8To", "seasonPeriod": 1, "startTime": "FU8PoOwbNen5Pv1e", "statCode": "QETie2J3ICQzQ270", "weekly": {"resetDay": 96, "resetTime": "aOrqYp1O6eUHrF7k"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'kOaO3NZymnrHleBd' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'yxL3Mk4r3a5yzxQv' \
    --namespace $AB_NAMESPACE \
    --slug '3Uv3wLzCXs23Yc2q' \
    --leaderboardCodes 'Drm3mX0Wi9Zodaf3' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'lneweEWoJ0zzz5h8' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode '6ScGglAlTXID5TsS' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode '5vZzLD8c7izskhUi' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'b5kOLgGfCEjKjEtI' \
    --namespace $AB_NAMESPACE \
    --userId 'BBF66fiYMes1mes1' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'bV1P4vvzHbL1fUVc' \
    --namespace $AB_NAMESPACE \
    --userId 'Cg03mIebikI3Hlj3' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'QMZQimP9HUjJunME' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'iXEtC640c8ixWNxv' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'UqPlry1gFHr3rpWG' \
    --namespace $AB_NAMESPACE \
    --userId 'rHxUQg0mYrFbjaaW' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode '0ZSkJnokEnWW3Nvi' \
    --namespace $AB_NAMESPACE \
    --userId 'Hz4hPaRbrFPQC3tV' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId '1BGV7fOL1DmQIoJs' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'y9KVoZiEt6vfn05Z' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '68' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["b54TnLHHjR11qhpN", "X7lo77rUPKMztJsr", "xJ7WvHT1Rb9zWXo0"], "descending": true, "description": "cngHuU3tqwOeXLoB", "iconURL": "gNyEQcqTLk5oZ3ju", "leaderboardCode": "2qd8v21nO8QVkYqB", "name": "w00r8C9nQCrgXvoM", "statCode": "1dF68AWRp80iAB8K"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["ArU2PgTeLxCO6V14", "STgrE2U3opSUla1N", "ltH1TzCGobgQ0xwR"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'Tih2x2IXRLnAmdnL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'iWEc4qtRrESf5PXW' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["7yohTPOwVoQxR4lM", "qfK21Jd6Xoc0xXvU", "pm9xhBDESE0pJC1E"], "descending": false, "description": "wHLiAiMLEvwbPjY7", "iconURL": "wex2Yt0VLixNzRtM", "name": "8dCSSKiI3MrulxPf"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '3TKuWEQpuemHaXtd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'YPSFDHcE4zBEcxAr' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'VIo0HEbY4zOVfF2n' \
    --leaderboardCode 'odiP5ZLw5aMgdbkR' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode '27lze7ZENHe6WOIy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'JPbIbw9ByN5EQTRm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'xlEvrJWpKqzW2CJV' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'QimO2KcCox4Wylcs' \
    --namespace $AB_NAMESPACE \
    --userId 'nZETq2KahXMXPbdD' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode '0yZtgPRZnTX5kZ0e' \
    --namespace $AB_NAMESPACE \
    --userId 'iAtHIM0Q254kSg16' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'C30DlfKFPTOUYqJs' \
    --namespace $AB_NAMESPACE \
    --userId 'm9R9G99k9HYYbKIL' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'LV5wv6Bx7zXc6fFJ' \
    --namespace $AB_NAMESPACE \
    --userId '4M5E6NlTeZYkLodH' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bcKXa90IxqHdYLSY' \
    --leaderboardCode '["cxdagUKHGtFR0UIo", "PZod5hyHfNtaCGBJ", "ZklSM8msUZvDQOXz"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pYfmtSspNzEW5jVs' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserVisibilityV3' test.out

#- 56 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '99' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 56 'GetLeaderboardConfigurationsPublicV3' test.out

#- 57 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode '8S0IRI4UTQtfTGQj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationPublicV3' test.out

#- 58 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode '3QbrqopR9R2E7Rku' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 58 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 59 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'LyMjcpVRabMtNTRk' \
    --leaderboardCode '8GQCiGLr9MBuACpF' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 59 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 60 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'pvVoi2wGjXYMyga0' \
    --namespace $AB_NAMESPACE \
    --userId 'BgqVduLgXH6L612u' \
    > test.out 2>&1
eval_tap $? 60 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE