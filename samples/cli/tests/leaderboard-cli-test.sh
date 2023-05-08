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
echo "1..56"

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
    --limit '89' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "Aw5Qor1t0B48vCRu"}, "descending": true, "iconURL": "jXLpZccEtjJp3LF8", "leaderboardCode": "JOqR9qT6gSFnBBdY", "monthly": {"resetDate": 59, "resetTime": "INcQS8quFJx6Jxer"}, "name": "RPgsTEcMWjosKzOm", "seasonPeriod": 63, "startTime": "4AvKylZB4IFsKd1b", "statCode": "g6iYKeId6Cs3YvfN", "weekly": {"resetDay": 65, "resetTime": "YuMsLYamgwFZBsVL"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'mGfj3mWnR4mHzDCV' \
    --leaderboardCodes 'ltwlCcsNk08am5Pf' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["GBIRdv8HiI3diUeg", "gW6CZgnNGyHVh1H6", "RGWRGemecfVoyhQU"], "limit": 29, "slug": "82CLTI0qRY541ZSc"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["tjyMIchwyFtJgoNp", "O4b16hUQa2dva3oJ", "ItnjKcI03ZTjkEyU"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'pTqxFER1NAvc6QA7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'NkvQrRIOzToRKXoS' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "wvJrz8ud8hBSIE2i"}, "descending": true, "iconURL": "vKO4IE0Lfo1DGnZZ", "monthly": {"resetDate": 50, "resetTime": "IVzCO0DfNe3rivHA"}, "name": "h0XhCW8frlP4giKA", "seasonPeriod": 27, "startTime": "gNU071cdU5mY4wMu", "statCode": "4W1C7Diy7JHAocb6", "weekly": {"resetDay": 54, "resetTime": "kdFIywFnZixCSXiy"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'zOW7vfBOFRz1Gpyc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'q7MfeXzsobE5asir' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'JRYUZzuw2mVKkIwu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'PNzTUTt6JVqmxMjj' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'q31SA6BzuR46CJ5s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'dsag4wiY7nhzxC9g' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'tsMGfnY0GQS34Q0g' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode '3TTVaOEmVT8qQDMM' \
    --namespace $AB_NAMESPACE \
    --userId 'u3gNr8vzDVXEo4jm' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'QoZGIRMXM0Wmk20D' \
    --namespace $AB_NAMESPACE \
    --userId 'dGB8WSgZ4TKXGN6r' \
    --body '{"inc": 0.8835185629650064, "latestValue": 0.4297212273846961}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'N0pjvruFP2rAaosy' \
    --namespace $AB_NAMESPACE \
    --userId 'dqylvpyRQVLFzM16' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 's3nyDAA0nohiq1I0' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '2Qkm78mpWw7hkr24' \
    --leaderboardCode '["R2by3PkYuEq0lCX2", "2a4ZiO3RCo1J8uWp", "xIc0IPrxKdMl0eWK"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZhyNQhB69vlOjHfq' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'yryr4yPWgVOCvxO4' \
    --limit '43' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '87' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "Ai17DgBaQ6drPLAo"}, "descending": true, "iconURL": "DHwzOxHGnvBUglgR", "leaderboardCode": "mrck9PCQm9GNhoE3", "monthly": {"resetDate": 71, "resetTime": "7G4IF3H0PDApUwdU"}, "name": "muZ2plslW9vSOyEA", "seasonPeriod": 68, "startTime": "AxbY9yNNeSKDFhor", "statCode": "PZ5TKrgKOxbi8sTL", "weekly": {"resetDay": 83, "resetTime": "AVxsCFvxBmDV5Icx"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'YrYBWWx58CR0cbUW' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'Y1quJh2oc1udBAvT' \
    --namespace $AB_NAMESPACE \
    --slug 'tSiuS7ubf0MXhgPA' \
    --leaderboardCodes 'qMFk19S6rXLvF7LG' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'KkP2PjomoOrD7lWe' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'sXg34EQebpDUM1RU' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'LwaPyxM0uZBAJ5hw' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode '3bohgc7xHG5AFciC' \
    --namespace $AB_NAMESPACE \
    --userId 'M4eEEPrXyIVjudZa' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 't9mRs9vsOVZJjO6e' \
    --namespace $AB_NAMESPACE \
    --userId '5i0ZUvW8asxxVmLG' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'vtpRU5OAAJWahgbm' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'uBMe3Wif8iZDbna8' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'GS6mYHM3IispEW3Y' \
    --namespace $AB_NAMESPACE \
    --userId 'nfmI3lAjPKqwGMcx' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'bTBFHBThrGlnkJao' \
    --namespace $AB_NAMESPACE \
    --userId '1nDqjHBYuZUcoJLg' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'mvyAgS5DisyAc1bI' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'qrPJktmFvq4SnNjb' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '92' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["lKSapGjPxJtEsdqE", "bLsI85hqF8iEHrbt", "RJ5v69GPbmBqYZT9"], "descending": false, "description": "Jzpc725D5RUrqb9g", "iconURL": "E7Yjx2AtsGO93LJO", "leaderboardCode": "g3xJCwUYgsUGwSQ4", "name": "mxQXinrwCJjU52pr", "statCode": "VITTmrfgutEtj9OT"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["QvLmQTOosqcbQafC", "Y5Fd8m02fOJuYM6C", "ZEftaWk3ahQRHqBM"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode '4PaWkqzhxd9qW2XH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode '4tcHSQ4TPYjS08N1' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["41WiwB4I9DdR9TPe", "j5jVVRGzVBHbzOT5", "XJFA7X0pSeB3LYNd"], "descending": true, "description": "A73OYzPEtCuKwq9i", "iconURL": "KmcRMxtrkAtDHcCH", "name": "CQKaKrqyp7sAiO5W"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'Oso6ZkLsxptuIb2Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '7BcmTpNfxXkuDCFS' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'QCJ2MDtotCSI4Z4a' \
    --leaderboardCode 'hl7Kg3Z9lGodfQcP' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 't182K03BXugWOrGY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'Rp6gWdUrmm69yFms' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'cvTM9lddTzTCqULE' \
    --namespace $AB_NAMESPACE \
    --userId 'KWA4ru79v827yEBh' \
    > test.out 2>&1
eval_tap $? 49 'GetUserRankingAdminV3' test.out

#- 50 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'vF4RV5AePDhWSIdB' \
    --namespace $AB_NAMESPACE \
    --userId '6rMmr4NKK1nfdzc9' \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingAdminV3' test.out

#- 51 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'l8IGv4m5iGuEsXg2' \
    --leaderboardCode '["d6V3IHwZ2TrioLjJ", "SgpcHX7Dy0sAaoJ6", "b82AEBKGgsAHDQNd"]' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingsAdminV3' test.out

#- 52 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '3' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 52 'GetLeaderboardConfigurationsPublicV3' test.out

#- 53 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'TOTfhWUcqtMwVE8e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetLeaderboardConfigurationPublicV3' test.out

#- 54 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'z8BFFWktLHLZ9BZW' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 54 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 55 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'k6SIuxPpIdS26zwm' \
    --leaderboardCode 'Ts4qamCIGQSprjsa' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 55 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 56 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode '6td8OgXV7fS6LRFM' \
    --namespace $AB_NAMESPACE \
    --userId 'zMrmL2CdEU9asgM3' \
    > test.out 2>&1
eval_tap $? 56 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE