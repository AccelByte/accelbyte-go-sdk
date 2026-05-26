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
echo "1..64"

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
    --limit '11' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "gXeXC8nKeXm2ryvU"}, "descending": false, "iconURL": "KbQxDdjIkPQZfF3Y", "leaderboardCode": "m8w733weeyk7D6aA", "monthly": {"resetDate": 86, "resetTime": "zjlPIBw691sCcSuV"}, "name": "wCA2F8f9D5Qtyxgv", "seasonPeriod": 64, "startTime": "h5CSAchNhb6OZbXT", "statCode": "4vv4mTfQIrIv2sc8", "weekly": {"resetDay": 50, "resetTime": "rLUVvapHA3NWUR8j"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'xxScz5zJ3oC9nfq7' \
    --leaderboardCodes 'IR8ORSQTYI2T90O0' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["mouDIImipPMgE6Kg", "L4LzrXjKqU9NmO9C", "eN1dTZnSwEv2IlXZ"], "limit": 88, "slug": "z7qohGPbYQpC9pqk"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["261MFYvY7nMuOAan", "uEe8qyqlXa3uZJIF", "gcE0UcIAFxkxhnxI"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'YnJNfBbc4vLdmYvB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode '4dspBahWx6stxM4L' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "NixH2PoQCJpUmvWT"}, "descending": false, "iconURL": "f4paOAR0vN2Gsp48", "monthly": {"resetDate": 4, "resetTime": "OzBrYnadiL8v7osL"}, "name": "fUVjcYXyvJ3tyWpv", "seasonPeriod": 30, "startTime": "ku8Jp5tU7y51Pt1K", "statCode": "pZ71qcL5c4ZAI4qP", "weekly": {"resetDay": 35, "resetTime": "n2Pq0iXqEt2WznqR"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode '9ewLjx1Dz9A5Ewhv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'NeU5aTtKkeX0rAb5' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'vNF2r8BlcKkV0TU8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'wp7EuExZBKJWQQcM' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '95' \
    --previousVersion '25' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode '8KEEvxSIcEYsRNsB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'FgAVMFZhqsRZYXUc' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '81' \
    --previousVersion '12' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'Vwi9WXC3WCNiFHRm' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '17' \
    --previousVersion '42' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode '5jjHWxWChyc04Klg' \
    --namespace $AB_NAMESPACE \
    --userId 'qXyavOxbsTTuzkKn' \
    --previousVersion '22' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'vrpPCNCKMN9wnUR1' \
    --namespace $AB_NAMESPACE \
    --userId '13HD073DLPbP4na9' \
    --body '{"inc": 0.6395883093541382, "latestValue": 0.06363676989513589}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'CBxqMkpiuVcjUu3S' \
    --namespace $AB_NAMESPACE \
    --userId 'fpqD5wU7BnIrJwD8' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'FwOmfkm95p4dP8UB' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '14' \
    --previousVersion '66' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'j7SctArBa0lj9vUp' \
    --leaderboardCode '["8t57OZKCnKLwqcI1", "cGJxcmrRej2gtQri", "GDslQWfaVTzRrqgL"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '0eIu6IM5WNr7O1mL' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '8QabCva8DNqwLL7j' \
    --limit '54' \
    --offset '76' \
    --previousVersion '33' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '59' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "nZoTnPkA1avVUwxg"}, "descending": false, "iconURL": "dpKcJvTNul8KX7HE", "leaderboardCode": "1MEqqB5lorgxXJdn", "monthly": {"resetDate": 48, "resetTime": "RNLF988wF19FCfAL"}, "name": "71A3TcUYTskYAs8L", "seasonPeriod": 84, "startTime": "ycOoijZpL0HkeFOX", "statCode": "gdiRPonkBvPCATe2", "weekly": {"resetDay": 90, "resetTime": "S9zW3ZAPiSumruh7"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'cRwaT2eamlAKWB8g' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'ItmYwYyIQSYZShug' \
    --namespace $AB_NAMESPACE \
    --slug 'OKOXd8Nem97jgEns' \
    --leaderboardCodes 'uID0rKt6fBzBgVg3' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'by5dInegpCbk4UJ7' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '64' \
    --previousVersion '12' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'ETHcZZVmyrbizAjh' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '54' \
    --previousVersion '15' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode '8XyNVDYOdRSwox1g' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '83' \
    --previousVersion '68' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'jZhCm4P4kkfDQzTF' \
    --namespace $AB_NAMESPACE \
    --userId 'nIKmfa5a19HBOhpw' \
    --previousVersion '64' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'aFQM2KysRlkXzHjr' \
    --namespace $AB_NAMESPACE \
    --userId 'gr4UimWrJZFxW49Q' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'Bt7QZaBkKsN9YrUE' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '51' \
    --previousVersion '66' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode '6Bqif0lFDtfiUzpV' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '6yaEsa4FArd5bvYl' \
    --namespace $AB_NAMESPACE \
    --userId 'juI28WiGgqXawt06' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode '6wAJlx6PyWz6dDDQ' \
    --namespace $AB_NAMESPACE \
    --userId 'IUWO65pSmit9LpOf' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'qVtJFwz5HbhZSTFj' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'LoAKYXfWcmltOLe0' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '27' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["ZvhqikWIQrR1w6KH", "K7U6k8wfJxWic1VP", "e13VE7yMNma2WeZS"], "descending": false, "description": "bPSztGZkUYdAnze0", "iconURL": "3zTH2bGA6JjzgHUw", "leaderboardCode": "LTzFHoP8DKo7NvYz", "name": "XGs4nRAI06lGPprC", "statCode": "F7iODTnYkrgcWevT"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["S0JtujTDklGIHng7", "QSX0uGLmgTSrA5vV", "ZjIUoHyVjZ2jPwXY"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'HVi3WCOTDARsr80O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode '6tVMxm6nom9ffedD' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["zThZSz1kdabLuq37", "AT4QSIoC1ax1A4Oz", "m8RkTCeDoEOsWeOs"], "descending": false, "description": "qyQBhrKbMTp4ZMyW", "iconURL": "HolHYAsrZRQhntDa", "name": "OTcvvF16lqz6S049"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'XbLvDiG7Jpk6bii3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '716Tf8QeITNhEEwf' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'MTexwGK9xBsUmyaS' \
    --leaderboardCode '57usi7ZPoYy2AEES' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '73' \
    --previousVersion '35' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId '3dLjbJi5TqnPin6t' \
    --leaderboardCode 'iTLParJZxpVEqfOT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'odTzlUb8cplWWltB' \
    --leaderboardCode 'aGjDOkvv7ZMUeDnn' \
    --namespace $AB_NAMESPACE \
    --userId 'jon97yRFpr9pXJ1u' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'Wtq2rdKQAad3wjoE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'Ph2GNKJGE44l5Mqz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode '426Nm107bsfBaL9j' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'cyFp1snz3nOJvKPw' \
    --namespace $AB_NAMESPACE \
    --userId 'LlIuxqtUoYjGH834' \
    --previousVersion '72' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'hr8cus37O1r3T0Am' \
    --namespace $AB_NAMESPACE \
    --userId 'G6yRxvbg9IucR3pR' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'nHEZC4CWbaXU1e86' \
    --namespace $AB_NAMESPACE \
    --userId 'CbuEhytGrfzVwUhA' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'z0ZkaEG4wzGuLAXY' \
    --namespace $AB_NAMESPACE \
    --userId 'iJDjvIaqBvYGHqNT' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 's1ZFKJdF89d5NASD' \
    --leaderboardCode '["EM6mO6MK7ow5rjvD", "ohBtvXdpq4NAF7xl", "8LyESq5GYaJauHXu"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XLTOSG30Q7hshmpT' \
    --limit '43' \
    --offset '72' \
    --previousVersion '71' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y5vHZ63sinuJEdcU' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '21' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'VosUi290C4jApoUA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'rdnnZNGCoiVRPkfZ' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'Z1cMxuP8nbc0mCmf' \
    --leaderboardCode 'HSobnVG0WR5TM1IV' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '66' \
    --previousVersion '59' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'aFBgeVBkPYP9nRSY' \
    --namespace $AB_NAMESPACE \
    --previousVersion '100' \
    --body '{"userIds": ["wuWLHBu1LrTj7qic", "CxkkTLyx14oOQGWq", "npdzal5j6KyULaoh"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'kJYeWMQCBCevoSH3' \
    --namespace $AB_NAMESPACE \
    --userId 'icRzEtXS0XRaLJNb' \
    --previousVersion '78' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE