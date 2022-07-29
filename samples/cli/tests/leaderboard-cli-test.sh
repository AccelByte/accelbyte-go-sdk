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
echo "1..35"

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
    --namespace 'i9rnxIiU' \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '31' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --body '{"daily": {"resetTime": "nm2TjNZ1"}, "descending": true, "iconURL": "KjZJJ4AS", "leaderboardCode": "RhsSMSP8", "monthly": {"resetDate": 64, "resetTime": "grW52UaZ"}, "name": "wfdCtBq2", "seasonPeriod": 93, "startTime": "H3fxbXtd", "statCode": "Ph4WPvbx", "weekly": {"resetDay": 58, "resetTime": "IM5G1B4z"}}' \
    --namespace 'yxFhNLnw' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace 'xOFhgDRN' \
    --slug 'nPpQkfPo' \
    --leaderboardCodes '9sUGElG4' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --body '{"leaderboardCodes": ["bKkKG66g", "zzjXBciX", "WupgI47V"], "limit": 24, "slug": "5R2zRjlg"}' \
    --namespace 'A658MMOp' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --body '{"leaderboardCodes": ["GzeX3KMY", "DcIb3bRm", "Y4a8rzW9"]}' \
    --namespace 'iWkwoGep' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'RgbqOKid' \
    --namespace '0xlvm6Nf' \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --body '{"daily": {"resetTime": "pq8dNogp"}, "descending": false, "iconURL": "cVzgKNlE", "monthly": {"resetDate": 0, "resetTime": "w0WcETOA"}, "name": "hcTCJZyX", "seasonPeriod": 21, "startTime": "TEoi15YL", "statCode": "fPseyOmM", "weekly": {"resetDay": 83, "resetTime": "ColCwhLt"}}' \
    --leaderboardCode '7xq5OOvL' \
    --namespace '7Ifl9uKX' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'mKpKavIE' \
    --namespace 'EhHoWwP1' \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'Ljuxy1UD' \
    --namespace 'yjxzdt4p' \
    --limit '50' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode '7b7BKFNn' \
    --namespace 'np8QYVQD' \
    --limit '67' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 11 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 12 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 're572Gpb' \
    --namespace '300S0yzx' \
    --limit '19' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 13 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'i4kz3LX1' \
    --namespace 'rluxu4eG' \
    --limit '43' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 13 'GetTodayLeaderboardRankingAdminV1' test.out

#- 14 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'rMIwyTD0' \
    --namespace 'uNM5GMJM' \
    --userId 'ijQ4uTid' \
    > test.out 2>&1
eval_tap $? 14 'GetUserRankingAdminV1' test.out

#- 15 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --body '{"inc": 0.023404987847030823, "latestValue": 0.5352128926841088}' \
    --leaderboardCode 'CDIl6D1b' \
    --namespace 'fCRtBbuN' \
    --userId '67g17iw0' \
    > test.out 2>&1
eval_tap $? 15 'UpdateUserPointAdminV1' test.out

#- 16 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'SwzW6l30' \
    --namespace 'uhvwiN7M' \
    --userId 'bI5OTqVa' \
    > test.out 2>&1
eval_tap $? 16 'DeleteUserRankingAdminV1' test.out

#- 17 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'xP975pnj' \
    --namespace 'TXG8qwZV' \
    --limit '40' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 17 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 18 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace '4MLHW48L' \
    --userId 'i8VX9JD1' \
    --leaderboardCode '["7iuoWZ10", "EGjdxtJ2", "QdyAgqeG"]' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingsAdminV1' test.out

#- 19 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace 'hKZCYH9T' \
    --userId 'WeS1hH2Y' \
    --limit '38' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 19 'GetUserLeaderboardRankingsAdminV1' test.out

#- 20 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace '8pgq1vwb' \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '94' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 20 'GetLeaderboardConfigurationsPublicV1' test.out

#- 21 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --body '{"daily": {"resetTime": "dra8Jnhn"}, "descending": false, "iconURL": "d087uCsq", "leaderboardCode": "tAteU0zG", "monthly": {"resetDate": 99, "resetTime": "fHlFmN4Q"}, "name": "eJaU7eXX", "seasonPeriod": 86, "startTime": "337HPbnt", "statCode": "KG1g9WRz", "weekly": {"resetDay": 23, "resetTime": "UjdcdlhV"}}' \
    --namespace 'DTKJHio6' \
    > test.out 2>&1
eval_tap $? 21 'CreateLeaderboardConfigurationPublicV1' test.out

#- 22 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'rgkwx7wz' \
    --namespace 'fYNEbmQK' \
    --limit '95' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 22 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 23 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'f4FJNcKq' \
    --namespace 'KKjURIF0' \
    --slug '9VBqoZWR' \
    --leaderboardCodes 'AltCxIAX' \
    > test.out 2>&1
eval_tap $? 23 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 24 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'wRRxaDQP' \
    --namespace 'Xd0KuuaS' \
    --limit '92' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 24 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 25 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'SjpejN8V' \
    --namespace 'COzuddc9' \
    --limit '23' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 25 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 26 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'bPtnMk6F' \
    --namespace '3sj9ONum' \
    --limit '93' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 26 'GetTodayLeaderboardRankingPublicV1' test.out

#- 27 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'P3mO8gfg' \
    --namespace 'YJNhl3t8' \
    --userId 'PJRLs5Hr' \
    > test.out 2>&1
eval_tap $? 27 'GetUserRankingPublicV1' test.out

#- 28 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'BfuaCOCw' \
    --namespace 'VZNgvlgS' \
    --userId 'Lmpq6OUy' \
    > test.out 2>&1
eval_tap $? 28 'DeleteUserRankingPublicV1' test.out

#- 29 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'D6FCBRfz' \
    --namespace '8wWRR3FJ' \
    --limit '62' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 29 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 30 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'PNuIVZz8' \
    --namespace '3Qa3cpop' \
    --limit '44' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 30 'GetHiddenUsersV2' test.out

#- 31 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'gbnsEcxQ' \
    --namespace 'mm4QUi4W' \
    --userId 'rQOkzH8n' \
    > test.out 2>&1
eval_tap $? 31 'GetUserVisibilityStatusV2' test.out

#- 32 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --body '{"visibility": false}' \
    --leaderboardCode 'tIAwYlOF' \
    --namespace '61sRPUZE' \
    --userId 'eaJ1H4fv' \
    > test.out 2>&1
eval_tap $? 32 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 33 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --body '{"visibility": false}' \
    --namespace 'aEZKcgAd' \
    --userId 'GmwnWhcO' \
    > test.out 2>&1
eval_tap $? 33 'SetUserVisibilityStatusV2' test.out

#- 34 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace 'KeWr5Rm1' \
    --limit '34' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 34 'GetLeaderboardConfigurationsPublicV2' test.out

#- 35 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'dMDNjbGC' \
    --namespace 'VxZlBOUj' \
    --limit '49' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 35 'GetAllTimeLeaderboardRankingPublicV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE