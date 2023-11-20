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
    --limit '42' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "TMbpBoQjBNT7sRsw"}, "descending": false, "iconURL": "LOVrcfICoAgDC1Zz", "leaderboardCode": "aBLqubRrDiWeNajR", "monthly": {"resetDate": 60, "resetTime": "h9OIg77BKBP2FleH"}, "name": "PR2yw2gHfMgZX1fl", "seasonPeriod": 68, "startTime": "4gEyyuq7vYCFgXM4", "statCode": "fHoprTJeIuW9BWTU", "weekly": {"resetDay": 72, "resetTime": "mKR24o4KXjlunGjq"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'dyQ6vfwcvfUkMTCt' \
    --leaderboardCodes 'jl9crTyEsH7YEduh' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["Q9GgSKCxVtMeSiak", "bd2VmAOMhM6nitNl", "4X7fVJdsqHb4ahVN"], "limit": 63, "slug": "BwRaU8LRT6SYniPb"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["klwsynrk7MTQoNCE", "HdcrQCfjFEkBsB5D", "mPsIq6MG3zgEkfVX"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'nk61PL3E3ADxQidK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'wmqKKTk3wjZbYy7w' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "Mdo4wvTvj8qCIPui"}, "descending": true, "iconURL": "S6QxvkyLzGtOeizp", "monthly": {"resetDate": 62, "resetTime": "o2RShVHotsZ7m4Xx"}, "name": "xLp2eiqHDzrs2QKk", "seasonPeriod": 37, "startTime": "VUtyY818h6kDYQKq", "statCode": "2OxAtfXTw6g8Jh23", "weekly": {"resetDay": 91, "resetTime": "sU8FqwFKiAd6JAiE"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'V32WDnTqyvx2eRad' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'v76lXEc3OQJB3KYy' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'HYR4frvRxKAPJK52' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'YviZTqL2KjfapMsV' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '50' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'f5ibOshIdYrLlvW3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'y9zecg4cv7PzapGU' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '33' \
    --previousVersion '93' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'XZfc9hNc2GJvsUjb' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '58' \
    --previousVersion '91' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'JndxnIyiKKMsSKZt' \
    --namespace $AB_NAMESPACE \
    --userId '8fMbLKChcLhz5Z7z' \
    --previousVersion '86' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'zFQEC3rFBk3hGb7P' \
    --namespace $AB_NAMESPACE \
    --userId 'qEqJvno2zU5mltGm' \
    --body '{"inc": 0.8731826189923867, "latestValue": 0.7992294615553488}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'Imuvmjju610o3tO0' \
    --namespace $AB_NAMESPACE \
    --userId 'uvVGTr3VhKqhmGJz' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'g6zoRplQmMVl9F8N' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '43' \
    --previousVersion '74' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xnmAy2fJYDcZtG3n' \
    --leaderboardCode '["cA2B6kuW2mWgCKOs", "zTM32HXtYW8ppMnX", "g0jwputSunGgIyZu"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'X3pPGjuppjZgWhJR' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DYSj7fmeTZa8tQmv' \
    --limit '0' \
    --offset '43' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '57' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "EXZbYTYcrnOCPCra"}, "descending": false, "iconURL": "JBAzJGocL1VtxmG7", "leaderboardCode": "DzpiqIStX6ndnJQ1", "monthly": {"resetDate": 91, "resetTime": "RiFuZXqXBckoM7W1"}, "name": "PZfeLDLlsh4mucyj", "seasonPeriod": 9, "startTime": "Pea86z7RtYJttSz2", "statCode": "D5tUFzNWjmwhP09i", "weekly": {"resetDay": 84, "resetTime": "eAcRnANWUD7xm0aP"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'EUtulFnJQyXHO3v9' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'Vs2TtHCvxmQAD6q7' \
    --namespace $AB_NAMESPACE \
    --slug 'pSvFfCR6yOUkUC02' \
    --leaderboardCodes 'i2AyoAG09hifnPZ8' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'PaC7YmZWRQx6X5ed' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '28' \
    --previousVersion '56' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'LEqOvPf68CINyPHR' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '86' \
    --previousVersion '12' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'ZDO5O4EBqOMdayrt' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '4' \
    --previousVersion '16' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'G55kOojrzMn7Cvmn' \
    --namespace $AB_NAMESPACE \
    --userId 'JHdIi9MPYPgs0jJB' \
    --previousVersion '76' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode '5JqNAfccmFRpVl9u' \
    --namespace $AB_NAMESPACE \
    --userId 'wOkOFOk0Q3KD5Ffo' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'ES3rk25SP2E40E7y' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '100' \
    --previousVersion '63' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'CmCqhrXqyGcxKQfN' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '8G1yelxKtFizk4jL' \
    --namespace $AB_NAMESPACE \
    --userId '4PReIOt1TfWawHlP' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'VMSzzmytlVzi5BUc' \
    --namespace $AB_NAMESPACE \
    --userId 'fIjHTRRBE05wJJLl' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId '3NIFaWx8N59RUYYn' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'NBqNsDIqPa2KtLp1' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '47' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["4tf1KFmiFzAbbD8p", "NiF8I85GEyqdF4gz", "IBaObFyVy5ZgZ9J3"], "descending": false, "description": "M8iiH3JyrAvE78qx", "iconURL": "ziBPB7QU4FA9QXiF", "leaderboardCode": "UeskGGzJn9L4PhKN", "name": "KiqNUgVgQagE3jjp", "statCode": "nJpcCnjNSvm3h9nY"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["baCrJ4ijTTn8MnLX", "hRjvnRJQLqOnaWpW", "LOynWxRO6DwJzkGN"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'Xx1LAwbNjssO3gQr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode '8G0NeJnLOtwrrz7E' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["VAgMg4XTLr4Oewa7", "BSIG9VBOD7B5OLuP", "4r0pWDXYDUDHAwdE"], "descending": true, "description": "Cr8gZSf26fHOxJO6", "iconURL": "RBsa3xg7yiayFBJg", "name": "CcS7aEzXMj6cEWwi"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '9DRxCyCvJIuajIG8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '5Twj63Hq5IZ5vlXI' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId '2zfY6NnrHkmhAX32' \
    --leaderboardCode '87ZdOUagDdJi6NaF' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'GkfyRC4B2v3ks77w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'VSh4s9wmYhsUQDUR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'CyFcmpyhNeSIzKZk' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'QUcXotqtrvuJkhcG' \
    --namespace $AB_NAMESPACE \
    --userId 'S9bHjs9wIUz4iFGM' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'zLR6PAdjHPcfKsoh' \
    --namespace $AB_NAMESPACE \
    --userId 'ZaKPZeSxJ17IBLTk' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'B8jcElO6EQN8R0EG' \
    --namespace $AB_NAMESPACE \
    --userId 'pe5MuWFi4oLs9IO5' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'wTNA7gtFxpPoEwkh' \
    --namespace $AB_NAMESPACE \
    --userId 'sx1GXtf3ve7n6qsp' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rh75CPKDuYApGIR0' \
    --leaderboardCode '["G8s8y2awi4n8CpMg", "uT4zFbRuEKZyph3b", "ywI0DtEpELYfbeQ3"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jQC1DiYBgZUBCJ1f' \
    --limit '13' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uaNjirYQmo1sdekt' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '6' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode '0yqxBxgwH3UOJkQB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'npDOisfGwUXMJZ9Q' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'eSukqCGjvJnwWr9L' \
    --leaderboardCode 'yNYVsqP2ekmfrIFU' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'N2Wfw2lJrQ75wHVA' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Bi9NG4wTA8T8z2t8", "5gZKikA1pnARFdoQ", "YR8aeGAkyASCA2Uy"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'NzvTr28B8zC4kCN7' \
    --namespace $AB_NAMESPACE \
    --userId 'hL7OyWDA7BeCaOxA' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE