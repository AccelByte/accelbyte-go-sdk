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
    --limit '32' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "i2eTSJGaijTJaSKb"}, "descending": false, "iconURL": "AL7ZCA4mQPT2rQnL", "leaderboardCode": "omlZSmoHNIQN080E", "monthly": {"resetDate": 47, "resetTime": "ubXYWPpWUoesTxmG"}, "name": "OpZrdtLGBqYf6Aaj", "seasonPeriod": 83, "startTime": "Fsv27QEpVDlr5H3R", "statCode": "ZKQEmvtivex4FZhE", "weekly": {"resetDay": 96, "resetTime": "j6NjqRY52hFIBsbu"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'd4x09wTOO2KJgpZ2' \
    --leaderboardCodes 'mp8TwXDvYmsWaz8j' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["i3wZ1UzixQJAPEzn", "YvQEBLJAhGCQS1m2", "Xw2qiuYBjL7YL5Xg"], "limit": 66, "slug": "hOm6puGzi60TT7Lu"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["5HasjcegdtGsxLrZ", "UrurtB46cnuIf8nk", "p4Wisq4LTitMtm8b"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'LDlqJjx3mGLr3NuR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'jiTE9g01X3tp1J95' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "lrGF1V2MtGfmqST4"}, "descending": true, "iconURL": "UxjLlGwsSYYHgUpq", "monthly": {"resetDate": 10, "resetTime": "WK3TLnXxaWoDaarn"}, "name": "r3CwNtbDF6hF9J3i", "seasonPeriod": 74, "startTime": "EmtC62zLxoE2tVlK", "statCode": "AlpViEM3GwUgekGi", "weekly": {"resetDay": 8, "resetTime": "GGpC5guTMfMJla73"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'amDZmnH59KQc8zzM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'PGPc9dZWlEYaQisr' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'QbPIjKtWBEFLAmQ0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'OlTDVE7zU2Ty9oOl' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '92' \
    --previousVersion '27' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'oeILLpGvlSplfBF1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode '2OKlUJlWxuNjtBr5' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '18' \
    --previousVersion '59' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'fDPOMTJMgUyA7xFC' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '12' \
    --previousVersion '29' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'WvCVCH4AzAiOTPYC' \
    --namespace $AB_NAMESPACE \
    --userId 'fBbjuhvFoEWc2Off' \
    --previousVersion '39' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'EFXA0h8UEuOQZM6G' \
    --namespace $AB_NAMESPACE \
    --userId 'BwwlWMXnMxdX3aTI' \
    --body '{"inc": 0.306865956745765, "latestValue": 0.04838850191432842}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'JfS0lga7V6GwIuZT' \
    --namespace $AB_NAMESPACE \
    --userId 'UYqpj3ZON0KUVkIf' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'RnCUa82Mc0Bv54JQ' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '24' \
    --previousVersion '8' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nUIYhoAfokhsAjmg' \
    --leaderboardCode '["7obKE8SyCK38RMg1", "TPL9TjoX843AkkMx", "ZuayvOn3DBnVnZS6"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Zco4vm3BR6z2GcZz' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RFM4ONBv2tDjkOFO' \
    --limit '60' \
    --offset '31' \
    --previousVersion '57' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '91' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "Mpt7Xx0QnioL5Kjl"}, "descending": true, "iconURL": "N5MJgFv1R0fEwU7T", "leaderboardCode": "TPi30EaX3LcbWud2", "monthly": {"resetDate": 58, "resetTime": "OrukytPsbLs4n4gb"}, "name": "dvWpRcIwJFosUeLT", "seasonPeriod": 90, "startTime": "pvOdDav0v3fQzRAJ", "statCode": "laS4oummjP1yohnt", "weekly": {"resetDay": 13, "resetTime": "mW9peUmWqg6rMFOE"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'FV475tiq5c1ba7MN' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'hYHjlqpw4Bicb8B5' \
    --namespace $AB_NAMESPACE \
    --slug 'L1ykcZrA1pqOFYNT' \
    --leaderboardCodes '4e9EANqYLLnue9aE' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'QrufkBuI6AWvcPEo' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '24' \
    --previousVersion '19' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'pxLqutTdryiHIdy0' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '49' \
    --previousVersion '19' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'kVotn3Mi7CaPwDsn' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '22' \
    --previousVersion '31' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'k9nspAfGdNmvmWw0' \
    --namespace $AB_NAMESPACE \
    --userId 'Nj1VdhVcRhh09zOr' \
    --previousVersion '15' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'k2lEf3wYk4PEzp0T' \
    --namespace $AB_NAMESPACE \
    --userId 'pJ3H3vfwMgcsRZur' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '9JuKwb0vGye0otrw' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '73' \
    --previousVersion '70' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'X8GnZheHF3LYjUXB' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'AaVnuDQij45QaaLd' \
    --namespace $AB_NAMESPACE \
    --userId 'PcdCsHUKT3Z4GowQ' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'nuZxlUPzlPQXFT2b' \
    --namespace $AB_NAMESPACE \
    --userId 'aLdVaVUoUc6GNqNV' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'jAP5DSZhbbiNmkrY' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'saRtZq1qeXVqh40u' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '64' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["KalE3boUEPJBNC5X", "m1fEYGufnwnLcDZi", "ydjyhWE2OaqkdIEq"], "descending": true, "description": "nIAFGtEwODqhiWBu", "iconURL": "dIOXxN8e2HJZ5ZxL", "leaderboardCode": "xoYmayrOdOOchjNA", "name": "XG9ok1t2ngwzT0vo", "statCode": "Zam7nN7BTFJBpEYe"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["oLJuRXnfym3Y4f8I", "1oJG7nHYbh6LTxZi", "ZCkEWepqSgrPHW5W"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'svjtcICDMnzGCki8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'o0NIAnY5tDGCif7b' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["9XS3AJ7tTtiM5UKq", "nIpzW1Gtv5LYBnlL", "g2dhDBWNZjZvZroT"], "descending": true, "description": "3GiteRxsm2pYhVOA", "iconURL": "taIyF10DbGr7Y2r0", "name": "P9PPywiRfuqCSsQy"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '1p1spaf3BT6l0D2F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'FTNRpAgDx6BQKFHF' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'kCIgGttCvEbIuivA' \
    --leaderboardCode 'ibHlqnRPVpgQvhWs' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'kMhWoKA1w2yC6rI3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode '4sF67qPd8VylIjw0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'NU5bCoxWepd0lqyi' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'OqOT11CXLy36BGl7' \
    --namespace $AB_NAMESPACE \
    --userId 'hu3Dd96KOa9JIP1G' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'Z8hs6CuYfCYKRZPh' \
    --namespace $AB_NAMESPACE \
    --userId 'cuCXCBWqnc0b25AV' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'kx5nZrMi08dVwIfF' \
    --namespace $AB_NAMESPACE \
    --userId 'FVfbIEsp1w8uklPP' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode '5VrcM2P3feX1fkIp' \
    --namespace $AB_NAMESPACE \
    --userId 'zDODeDwlTXD20nus' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sCPobuAtgThDGpR3' \
    --leaderboardCode '["zaZROsptzgJHTgIM", "ygHfF3v3uF6b6JbF", "Y8HcrWnAPg4SJfM6"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId '9PHF5u9VWE1CjM9L' \
    --limit '52' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId '06eX1aa7WzSybOug' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '83' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'sV7NTa4wcQGE2cw4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode '8atnFfXhc1AALT5s' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'P1ZJxMhdqyG0mbHu' \
    --leaderboardCode 'T202ci9IB411zICP' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'hno5WpkxETjSeAQi' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0fIGAUizvWdGIGdp", "lL9xrfn4vPigHrnQ", "ro445wxfAZSGYFq3"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'aHqnsGGDCAGVdSZu' \
    --namespace $AB_NAMESPACE \
    --userId 'PcOZ39PmxJSaeXeH' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE