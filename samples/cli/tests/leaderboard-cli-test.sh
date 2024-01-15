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
    --limit '96' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "EDkL9otiv0s20F3S"}, "descending": true, "iconURL": "YIoITl7zuCEJn43q", "leaderboardCode": "TILpc6C2uy5YiRaJ", "monthly": {"resetDate": 34, "resetTime": "vZaahnLgXvihw3RS"}, "name": "B6DnYulxIEIpIXHI", "seasonPeriod": 30, "startTime": "sckA6AN6gH6mQQDF", "statCode": "t1Ti9va2JUpRUGfa", "weekly": {"resetDay": 77, "resetTime": "6llYVvR1h673Ow62"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'TGaLVLyBtxPErtym' \
    --leaderboardCodes 'LSpz79wRzQ7shktj' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["q9QeaxrpeXBi4Edv", "eUh1sF3l82I2c7Ti", "OZFlFWJcVcYfXHts"], "limit": 1, "slug": "bSe4Wd0yz9yx7NSO"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["PR7Lf3eMbQi1494E", "mEKkjncQvK3FKiiB", "Pvqf98tgH0oRhh4m"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'c9ZJTaAMy3IHKJmm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'j4Sf4WfQYI8FCTqc' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "0PZJR3x4BZwTFwbn"}, "descending": false, "iconURL": "4g2Gv4e7lvJvNpmP", "monthly": {"resetDate": 32, "resetTime": "0Noku8YswbbzlQIE"}, "name": "kkfwsMSfh4mNFyBx", "seasonPeriod": 94, "startTime": "naY91WKijjNbBSPi", "statCode": "xD6RUFmZFZPanokz", "weekly": {"resetDay": 99, "resetTime": "c8KZJgVwE0lfVjDx"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'cKV4bSOJDnkB4cvd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'Ds3wE1okbO9YiLLU' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'uCZLWGUC4CFNDC0Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'EqMU3zeOsmMeYysS' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '96' \
    --previousVersion '1' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'rRzqFsD0FvmwWKx9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'soG9TO8mtICv7PuQ' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '69' \
    --previousVersion '45' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode '2OJhwoAz8QFmKrOA' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '99' \
    --previousVersion '5' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'uYxBQL80wLEfmLtD' \
    --namespace $AB_NAMESPACE \
    --userId 'oobewuTeyVOnCI9t' \
    --previousVersion '40' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'WCEquiFrd8fWE4Vl' \
    --namespace $AB_NAMESPACE \
    --userId 'Eg6roxY5q5HzFGeH' \
    --body '{"inc": 0.08301556725256498, "latestValue": 0.776480168979065}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'RcyKdct00L53nmGH' \
    --namespace $AB_NAMESPACE \
    --userId 'h32jCS6GAbqyLGAK' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'BlzrEgWnQVojvsF0' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '75' \
    --previousVersion '5' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '75zweLEQFQMAVXD3' \
    --leaderboardCode '["VqAnX0Rg5kkBOJml", "D76v2l0a3SjoZklu", "MSgQZ05vK2vSK44A"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NwOztF7qUMbxTU1I' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z0UBwjC1KqiMFjxp' \
    --limit '35' \
    --offset '23' \
    --previousVersion '88' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '98' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "RzdE5blQQ5OJluD1"}, "descending": false, "iconURL": "HJqLS6MPEFP9diEF", "leaderboardCode": "rFkWfgdhlbctWTmw", "monthly": {"resetDate": 92, "resetTime": "VH1ZHqX2xp3L4TGK"}, "name": "8WTLvvapelJ5etJE", "seasonPeriod": 88, "startTime": "yjV5tHuhHUQdKTlk", "statCode": "aA7SYsPv0PEt62Nt", "weekly": {"resetDay": 13, "resetTime": "nEAFMw9EchiZWiPb"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'CeeFB31U84MA0kG5' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'Vx6jdturXmUPvlWp' \
    --namespace $AB_NAMESPACE \
    --slug 'SiCzEqu3JnnhLeR3' \
    --leaderboardCodes 'J900LEoJFXZ6dHwM' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'tSFHVgBaRsmCDEcQ' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '0' \
    --previousVersion '53' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'bYk4dDgmWKmhG1rZ' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '32' \
    --previousVersion '3' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'vUlz0xaSZu5SZL14' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '27' \
    --previousVersion '67' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode '1NgNFX1LR6yFhmbU' \
    --namespace $AB_NAMESPACE \
    --userId 'lfSfn4GAVS8noOmA' \
    --previousVersion '10' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'pBJReV2sOSwQ5k7W' \
    --namespace $AB_NAMESPACE \
    --userId 'thVxsK68v5GNarK1' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'rz7IX0zz303aGsbd' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '63' \
    --previousVersion '99' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'jpCpTcKINzqjq1Zy' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '6XLmpRmxSUBCofye' \
    --namespace $AB_NAMESPACE \
    --userId 'tsWgNQv8cF4awSEX' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'dguEDrvfaCeIFsWR' \
    --namespace $AB_NAMESPACE \
    --userId 'vbtcCSv4MwNO9On1' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId '69SscfH03UbBCpRf' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'n4U7psTOk5I55Mlc' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '55' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["hVYHtRH7NI3mtNWK", "n3sXpU2vb7cvMbM1", "aawDkvNvcucvQj7H"], "descending": true, "description": "SQEEnwOT6nt7mEjf", "iconURL": "jDqlfO97sw63AR0A", "leaderboardCode": "3pECb604HpyfDtpb", "name": "4DBKsVk0IyZ3NeLQ", "statCode": "4SbsNKqgLottfM8C"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["dNwS4gXziBrjZ8kC", "Owc9bMBCFM1dizcr", "epTLDgJAkbmq8bje"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'Pvin8jTsM13wSmMe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'UWayYLWKh1bQHhkn' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["GwrhrGLcxho7ao3R", "1nTqgfdATVbCDOdJ", "vDzEKXyoXMHq8Nol"], "descending": true, "description": "VF9CqIXLUnCbJRDF", "iconURL": "qb3RyW9tawFWafDN", "name": "HdfTumBD9F1kEImb"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'hRfsWQMbgsekrQa0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'GDKDAMKvb3IblVAC' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'nXHpu6tuHf4cZFPp' \
    --leaderboardCode 'Ps86Mr4XxBHzTcT3' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'V56V0uZCRst2tQIq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'EQsbMHeTJWK91lKJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'MNMZ8CR1JkXSbUMe' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'J32jE2u9k2Dc2YjZ' \
    --namespace $AB_NAMESPACE \
    --userId '14Dr4LOPzxCsPsDK' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'etMZq0r6P4SHedaz' \
    --namespace $AB_NAMESPACE \
    --userId 'Ps5EDbNbUc3ngLEB' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'Hu4ZQTtUiuczfKW1' \
    --namespace $AB_NAMESPACE \
    --userId 'jd9dHfTxNso0u1Nl' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'qLvhEc4ZS2R0QwgR' \
    --namespace $AB_NAMESPACE \
    --userId 'orrBfUqdnXVOqFVv' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IqE4jUIWZf90HiIi' \
    --leaderboardCode '["qzet35eyxvEeUgNm", "rrPG7YedBj1waBvY", "KuDU6Zf1UOGuOVKr"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IPw7X6zCRnKht0EY' \
    --limit '18' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lSaAaDxyx0rBAEra' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '17' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'CQwoUBx70CyQIu1m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'anuRsAYG7yDv2KfC' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'kiIDNp5AwOcRXJAr' \
    --leaderboardCode 'hSWGD1a7QzoL9wdC' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'E2cfMxttBzDjuBmx' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["i0iJ5BwvZb2baoYF", "eb7mM0ZGsOuvhIVI", "yf2i5mraDs7ajzlY"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'SDe4IFEe3xXl0uqX' \
    --namespace $AB_NAMESPACE \
    --userId '7pvNPODG3TQn00YZ' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE