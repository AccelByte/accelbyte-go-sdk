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
    --limit '61' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "lzsmYtMa9SCvoTTt"}, "descending": true, "iconURL": "nP9slyt6500YuMRf", "leaderboardCode": "rPDhJVCvrLgdUO12", "monthly": {"resetDate": 86, "resetTime": "zAuBZp1lagvwdQJI"}, "name": "EvMgxNyI234YXcdl", "seasonPeriod": 36, "startTime": "fbMPOFtJ6UyYV6zd", "statCode": "vAREcKQeRStPiprY", "weekly": {"resetDay": 23, "resetTime": "o9NvTXjuiGtJk5t2"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug '8uEAoFSNGowLfJ02' \
    --leaderboardCodes 'MdQM0khXFsNKcuql' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["uMvkQ8ve4zycyPkf", "k2iV7HvIoJp5Nyl0", "toLkkl542sU7Ktfc"], "limit": 3, "slug": "9fARSgEbaywEIIsl"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["q78xgMtEPvCGxJZm", "jHU2owLzKKeaWNd0", "teuaYcoGFAeyXxwU"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'FhC0xdq9dDmQ1p73' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'WyzcFDzIwZYXQQxy' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "gBLbqKIVqGJJIv0m"}, "descending": true, "iconURL": "jdHNCxBEXzU220TY", "monthly": {"resetDate": 6, "resetTime": "GL38jKm3ezn2KvoJ"}, "name": "g9K3uAE3441f9pBG", "seasonPeriod": 44, "startTime": "9FI8H7XpnT0n15Vw", "statCode": "2ZPXR8GWjwcXvXp3", "weekly": {"resetDay": 95, "resetTime": "QsM9NZJL8o2sZRn3"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'kyQVlRYJ6eNU6DGP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'nLYpcVAOXJlswn98' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'lOoYq999tQBMcIIH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'g3Uj7ompcLIivXUH' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '100' \
    --previousVersion '31' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'yaycaJm65yOl7B7w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'zXv6Rh96iwiH1m9f' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '15' \
    --previousVersion '43' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'hGJWs8l0Zj5612KH' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '34' \
    --previousVersion '5' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'm06EB6McM5DbJrTr' \
    --namespace $AB_NAMESPACE \
    --userId 'mynqq1zfky0jMcno' \
    --previousVersion '61' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'ZlT7rwq15T2Z7lEG' \
    --namespace $AB_NAMESPACE \
    --userId 'zU8MQLBhvfMrc53O' \
    --body '{"inc": 0.08894284306801215, "latestValue": 0.016252586704725958}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'MouaiBme1fhcJWIA' \
    --namespace $AB_NAMESPACE \
    --userId 'POzNEngQ5mfpwbhs' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'uU0U9e24OkiAEkhE' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '5' \
    --previousVersion '4' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PCIW07HxgINzQZKt' \
    --leaderboardCode '["3EaNhDEVt69GIKJ2", "Eo5epWSKC0vNS77M", "d2SmP1AuKenX3Gid"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eCGFaNx32OKEATMb' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '7YTLYBZOPb9kmJdk' \
    --limit '11' \
    --offset '50' \
    --previousVersion '90' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '63' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "RrAqlbwzkucpEqy6"}, "descending": true, "iconURL": "1OFBW9JNsY2mVhIX", "leaderboardCode": "H6K7xuaexdyLpRkq", "monthly": {"resetDate": 87, "resetTime": "hf6ik01sMTsy5GLv"}, "name": "2Ickks0UTd3LCSdW", "seasonPeriod": 91, "startTime": "sjdVNfvqCFIvm86z", "statCode": "n8UgM82X87B3toyl", "weekly": {"resetDay": 14, "resetTime": "JBRXZwjqqoBnaX4Z"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'KaSlGuZ4Pw3UMBPS' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '0YT6rMZy73XPKzEN' \
    --namespace $AB_NAMESPACE \
    --slug 'EjpQRpXYCdMin8hm' \
    --leaderboardCodes 'J5a4ztnlPnWIcxjD' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode '6v1UwkWOSzYgdsvn' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '98' \
    --previousVersion '48' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'TtgWPn3sNGW8eEjL' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '63' \
    --previousVersion '10' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'DCShQKJwUwmDI8Sq' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '66' \
    --previousVersion '31' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'r4ta1rfNbp0mVFnD' \
    --namespace $AB_NAMESPACE \
    --userId 'y0QqtECQ4w8ccCvY' \
    --previousVersion '0' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'mdtxunVxTJURbjvL' \
    --namespace $AB_NAMESPACE \
    --userId 'hrvhsvqgi6qpt1BE' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'eoWdn9HHi16UVMDf' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '47' \
    --previousVersion '59' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'q3uVLyK5cZeAWbFM' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '4rUpMXpxcbY7BMRq' \
    --namespace $AB_NAMESPACE \
    --userId 'uXLyVFgo9edzC8Ly' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'hsO5K6lRHuW2vE9I' \
    --namespace $AB_NAMESPACE \
    --userId 'Elzf5sbBm64ueIQx' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'NdPiC7UTbb3ivuM2' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'TbAOKX4sJ4I8eIJ7' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '84' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["8axisvV6kM4htbMG", "I0bB8tMOKStttK9j", "afnkA1l5Z8oyU3J7"], "descending": false, "description": "I6Ca6qy2m0Omn27y", "iconURL": "SpvIgAzNVlcH8pBc", "leaderboardCode": "cVB5wqyb4nDdqm9I", "name": "0rFfPYKcMPfSwHfv", "statCode": "MNH7TPNj4VDynpO1"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["qS8jvg3cU2WFTi0v", "vQOEefqvp4bC3SpB", "pPefqoiLHGT55zUB"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'Pjcw1qgctjMKCMKU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'fTtd6l1HHbubKuKV' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["gfvNew4pM3ccABAW", "LcdTsIlrNUjc5KRf", "3r0fHXLL3RwaUxJG"], "descending": true, "description": "o1LBTC0SfmkW88Qa", "iconURL": "tqh76xdoZo1Fi8EV", "name": "slnC6q9t9RPW2tJJ"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'NAjGSC0ipwvTxj6a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'DHO17S9pR9QO2m5D' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'Mh6zJLZRkpBtHyrB' \
    --leaderboardCode 'GrkcmBLJ4pHK0GLC' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'rL0ThFb72368Gv1O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode '86DwRl4PBdhK8ms0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode '4M3RLSaafvEiaQaq' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'L0WpFTCqDXAmRfGe' \
    --namespace $AB_NAMESPACE \
    --userId '2pCZaEb9VXA52jHN' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'l3JBF8r7QPNxVqnI' \
    --namespace $AB_NAMESPACE \
    --userId 'mj793VMzjmYokmRk' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'Axjkrb1kDBKkA0NK' \
    --namespace $AB_NAMESPACE \
    --userId 'b0kxILj2fhjwUEjK' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'vqnwhe2lT9suLekg' \
    --namespace $AB_NAMESPACE \
    --userId 'j5MawqlFk6etHVgD' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Mkw7BCk3lhP0AiuM' \
    --leaderboardCode '["LiSrNfh9BZa5mOZk", "pJzxALtYXUC34DEM", "qnuq1SdcD0W8JBoj"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'clSLZ5pBoDDD5kHD' \
    --limit '89' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NtaNSmbgJlSdqJtg' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '61' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'y4NGjAsmjG5MqMO7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode '6mBqUd2Oo5uJGnBM' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'e3RtjtgcUhrv5oWe' \
    --leaderboardCode 'XLyihmD9S4CxaTEN' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'zaVfBRnOrmRHaBre' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["6KizLjev7BC08YEF", "ZoTJrhmuKvPiCR5c", "otAB6PfSXzT3OeTo"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'QKY8BHc4F7tpswZ1' \
    --namespace $AB_NAMESPACE \
    --userId 'Yfu6xYtfDQmswuLU' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE