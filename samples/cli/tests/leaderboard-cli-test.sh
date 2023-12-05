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
    --limit '50' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "Jtvfv23pgFeypNNX"}, "descending": false, "iconURL": "AkMUDo0IMTPlk7ED", "leaderboardCode": "37Szam9lTPlIwrSu", "monthly": {"resetDate": 98, "resetTime": "ajBHwpE4eODz5vhw"}, "name": "PL6q3V4yi6P2jKPt", "seasonPeriod": 10, "startTime": "xN8n4D8iw50WMOVL", "statCode": "blLQmPvlGA8vaNW2", "weekly": {"resetDay": 64, "resetTime": "aS18OChTMChlYFNx"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'tcgoCb8VKFpztcqH' \
    --leaderboardCodes '012csUvsQFGyJx25' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["YVUNvrpnJgwfO8QD", "2j0bCD6h2oVgSVPl", "oKMTi5VMaWaXRxxL"], "limit": 69, "slug": "vmT5FQeuAbgN4gbl"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["vcc4qYpixLxAHMwO", "fZKqBeessIqn9wme", "JWvnV4VGwL2KtSVt"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'idxfN7z04GeyL8hw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'haSI4hBwrIxqHCwG' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "wcF6gN5YeI2f7AGA"}, "descending": true, "iconURL": "MAkGwqDEYfX5sTBa", "monthly": {"resetDate": 41, "resetTime": "Vz1h2x3wfcRcTdwA"}, "name": "Gnw1hcHd6gx7HJAT", "seasonPeriod": 49, "startTime": "YTGlv6AHWR9rAD0t", "statCode": "pGr2JmNdPemGGKBO", "weekly": {"resetDay": 83, "resetTime": "3o7AY3w5s7VTDWxz"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode '3WX2JFbQlSVwpdLR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'EKzyrLuVpUSU51FF' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode '9DaM1j8T5USZhoqA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'EmbrIVTLG43299IU' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '92' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'RSduXxvACz4kcuco' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'Cl7yYMv82NTBs492' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '34' \
    --previousVersion '2' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'AZvxufTbTYPMceg1' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '41' \
    --previousVersion '47' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'djJTKpUN0sUJxCjO' \
    --namespace $AB_NAMESPACE \
    --userId 'W2HtJDk0PSjXevI1' \
    --previousVersion '74' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'ZOcH8o2Oy9IcgOcQ' \
    --namespace $AB_NAMESPACE \
    --userId 'GMRmEwDX5gpPqFmu' \
    --body '{"inc": 0.8622825501218627, "latestValue": 0.9822521672691916}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode '23Aux9X4NbMUKCjq' \
    --namespace $AB_NAMESPACE \
    --userId 'UP2krSHXkGoazXSk' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'mlqQ2IGQyHT2ATlo' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '2' \
    --previousVersion '92' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'CCTnVUiywz4cmmvx' \
    --leaderboardCode '["AgSU3yw7Wu3KhaHZ", "MsK03tgSFuGFAIAr", "fpeB3tbSKIrcbkCI"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wyxygBwpe1kE32E2' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TKV5OPWmOANpI3Ee' \
    --limit '56' \
    --offset '5' \
    --previousVersion '49' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '43' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "CSIjY8RJdu55TEM5"}, "descending": true, "iconURL": "4UrVHEG5PyeUdxsS", "leaderboardCode": "LkVjzuYT6VEpxXl0", "monthly": {"resetDate": 2, "resetTime": "hcWWDa5Es6C4ZvBd"}, "name": "5D5JB9GqSPrCBNV7", "seasonPeriod": 5, "startTime": "NVMUxKlcH1nM6ktt", "statCode": "Bg7TQYyfLcRjLPXz", "weekly": {"resetDay": 23, "resetTime": "IB7tpq4bHaEoU0QN"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'KkBSVjketYu2qiCf' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'xYFLf4eCkdwTE5Bk' \
    --namespace $AB_NAMESPACE \
    --slug 'g1U4IPHvdgShoTBh' \
    --leaderboardCodes 'SHiiJJpK8vWQ4XDs' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'tdNqGzxLUzhMfW0I' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '31' \
    --previousVersion '22' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode '00AawJJ9OtBoff6u' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '66' \
    --previousVersion '90' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'mNp1yXBr39FrR7EX' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '86' \
    --previousVersion '65' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode '97oOGR7LgPwZCQX2' \
    --namespace $AB_NAMESPACE \
    --userId 'ttWAtOU1BsrQfJtq' \
    --previousVersion '27' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'fT12GehtuE60q2va' \
    --namespace $AB_NAMESPACE \
    --userId 'EqAJ7hXrFqQCaMKF' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'XjEI8JYFYqMZHUoC' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '28' \
    --previousVersion '4' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'Xg7mYxXzdp8ayeYH' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'xtqElJMQNzGrPojP' \
    --namespace $AB_NAMESPACE \
    --userId 'aGEmKaBZ4tEPvdBG' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'A0m9ibACGJ46JGjc' \
    --namespace $AB_NAMESPACE \
    --userId 'TyNklAGXudrbN2Hh' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'qR3YQy6BRA2kcQL5' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode '1IbFgrMZsW4QKbiK' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '5' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["KuK2tfSqmNDzIGtk", "NswobJ86prs9I19Z", "Ca9CIAAzymBWsZuV"], "descending": false, "description": "VmkfP7ApAkH3Adgv", "iconURL": "AJ4pcSW7nIbon6v0", "leaderboardCode": "3rV7sG54Z97our91", "name": "CFRZlCFqyEzmwkeo", "statCode": "YPasCW9as60zoLFa"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["BnE1IrO1VEPDeZU2", "61iL1eGey0XpIPhg", "vwC5xIZZlf0bbhXK"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'zP4ZCyUrnlQLaIAs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'C3s7pDyxLPVXCkMj' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["p8krDJvV0ZEihoJU", "UH1eFfQoAJQTvCBK", "vxeiPmXhxPQynCQv"], "descending": true, "description": "jSKgW78G7WItU1X0", "iconURL": "7q6TEHbUQxVRP4vZ", "name": "O1LoA82ZhtobqF19"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'TKB3lX7QSUTFOaYD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'mgAtE4JklIQfekFI' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'Xjyarf0hVvnqbkke' \
    --leaderboardCode 'utLekkt2qiRu2LAq' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'aPwCGwGV6IW2KYQG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'yuFVeezvGSNT7LQO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'o3mb6qPjedlztHrr' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'kry4sHQ0tRLSHio9' \
    --namespace $AB_NAMESPACE \
    --userId 'qOCBuVAzyqUW8BOS' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'oWplZMgTNuDBv6rN' \
    --namespace $AB_NAMESPACE \
    --userId 'RQhns9lLUze7SLxT' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'RavLCCLSem2KSIe4' \
    --namespace $AB_NAMESPACE \
    --userId '1No2rrJbSsN6EmXS' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'Fsti8gUuqzWfskZS' \
    --namespace $AB_NAMESPACE \
    --userId 'zcVRpSSQ2v2ctArO' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w5OYEq0jRSaUe6Wx' \
    --leaderboardCode '["o43cgQiWyMyISldS", "CoOA6MdHV2ViTMut", "1Clw92ZBNmAlUc85"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZPHrVL1LAaZglmWG' \
    --limit '12' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ztuHSYPSKeric2b6' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '79' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'dyWs0gmY66XenaRp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'XRjnCX5Xg7P4ZRmQ' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'HkJsIjdvLxrnRUMC' \
    --leaderboardCode 'Xm7yZHd43pVByKEt' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'TXAVOT0mDnXqe8Jd' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["hRTMYmXldJnV3XHI", "d6XtEbsbGmCFhyJ8", "d95CTJY9F82KrJyl"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode '1sy2TGAQzjrRjnsK' \
    --namespace $AB_NAMESPACE \
    --userId 'r8n0tF3a6AZorwU4' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE