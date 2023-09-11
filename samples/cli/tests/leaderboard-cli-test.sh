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
    --limit '52' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "EkmNRWYMn9nh0xVg"}, "descending": false, "iconURL": "zGsio0JB2rFgjc0Z", "leaderboardCode": "Oc6Lw46Akbmeiibq", "monthly": {"resetDate": 29, "resetTime": "mL6yqSgu23FffzZi"}, "name": "Dny8117jgbTA831J", "seasonPeriod": 90, "startTime": "KYTRnAopkoLyozyg", "statCode": "PkPgSFeFUy0RKAvi", "weekly": {"resetDay": 69, "resetTime": "0tCpQdswnIt5ur8e"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'eZp3xIkbybTh3lBJ' \
    --leaderboardCodes 'GsR7ARNI8VLnKMfq' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["V8s0xzDZQTxse9o0", "n0LC2wDHXkBTIEUU", "ZF9AwiQU8tv3bAJP"], "limit": 9, "slug": "DJ1GFwCRpd9ZTZyO"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["5wxXTU2Q4Z5oyUJw", "bOLo3YhedyqIcb5q", "Sg0uubFQSWEzlFLl"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'nvC8iuE5B0ThXD5C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'TbN31UGbdUfR50Ar' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "uel64IYKBEtX9v7g"}, "descending": false, "iconURL": "gADQvABPY5PWX9rO", "monthly": {"resetDate": 34, "resetTime": "1nOoiFJo9duK7rpc"}, "name": "fvQgEQq8r4Dr197u", "seasonPeriod": 62, "startTime": "nMCQpXnxFBYDKp66", "statCode": "nJF4vDZV4bHlsYAK", "weekly": {"resetDay": 10, "resetTime": "3YvuqdZ7dHoTCuUP"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'CIL2d6EEjYyEwd6w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'UakVolhFi7PftGH1' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'A5GsyheqdbWpt0GU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode '6OyVcZaLiAp1jSpz' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '55' \
    --previousVersion '29' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'w7VK6gw89TlTs5HO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'SkicUY7kEe4QVFyR' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '83' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'mdeInMC1W6UaySfy' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '79' \
    --previousVersion '72' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'o2yseOKmBo5TsPcN' \
    --namespace $AB_NAMESPACE \
    --userId 'FP4YILyS0PCm1X6K' \
    --previousVersion '8' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'ToHCz9SSLDfaMNnn' \
    --namespace $AB_NAMESPACE \
    --userId 'NnZXRWqri3olvxhS' \
    --body '{"inc": 0.9063850116111963, "latestValue": 0.7182118747560919}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'AVCti81ynn7B2l3m' \
    --namespace $AB_NAMESPACE \
    --userId 'OThk2JwnB8ojcZNj' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode '95yPCXLI8BRsLqLe' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '34' \
    --previousVersion '25' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'idbWTYQKvXLEJgX5' \
    --leaderboardCode '["ZIoykppJQ7ljFwwp", "y1SmeiBopQL4NCak", "Uf6FxMP8uD2Bv7uF"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HqgVnHJ5spHJwRGF' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '4Rl7jxtZD0vo097e' \
    --limit '65' \
    --offset '16' \
    --previousVersion '45' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '18' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "jQxxT6IYRjuGI7iB"}, "descending": false, "iconURL": "F6hsXn4wnWUCSIQW", "leaderboardCode": "UlX7pXu0ETF2ERl8", "monthly": {"resetDate": 91, "resetTime": "Ghpv5q1WZAjWJ1bw"}, "name": "vx2VMUvUAsK0HZMZ", "seasonPeriod": 4, "startTime": "2DjYKBp970Mb39k6", "statCode": "2WaSEqZ2wB73lrup", "weekly": {"resetDay": 18, "resetTime": "1bQQDND0b7knUMHq"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'beyX2q2OeJi7B6aq' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'fandB2t9v8luMCnr' \
    --namespace $AB_NAMESPACE \
    --slug '8oWm2M3ViE99kx6O' \
    --leaderboardCodes '8owAQs0QOElKijLQ' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'Qb0mqLjuUNzSJwjW' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '86' \
    --previousVersion '43' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'EEyxW8FG5NqCgeGo' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '78' \
    --previousVersion '47' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'qN0pIiLrOKopP6Dr' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '67' \
    --previousVersion '68' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'RbowwlxnmRKI2Yqy' \
    --namespace $AB_NAMESPACE \
    --userId 'w6vayNJ0bxIAyMjb' \
    --previousVersion '48' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'gl8GMDBSOvTR2C7e' \
    --namespace $AB_NAMESPACE \
    --userId 'vn6rNV7VDFPFlB6s' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'ceMAz8oIk9stqXze' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '0' \
    --previousVersion '58' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'ugKbOTAycrGm3mdV' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'FLnJ9mtpQnr61eE4' \
    --namespace $AB_NAMESPACE \
    --userId 'DMuFGzeFr1K51V5e' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode '0Ri2CPjDkpzjZhbF' \
    --namespace $AB_NAMESPACE \
    --userId 'P8wWzQbZJzihT2Ga' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'RYmLXT4qYs0p94Tu' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode '9XC16B6FJvhKgi9l' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '22' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["SWmq7qI2Ty89r4tw", "Ak5QRIym5ffhFg9w", "GPvwWwwWYsBS3ULv"], "descending": false, "description": "E2uE6aS1H0b9eNFl", "iconURL": "YsF2UpsGZTYsV2ll", "leaderboardCode": "jkVti1h0KaGwKldc", "name": "XmAyykVoQ4oDo8wX", "statCode": "60jaB01lQPN1csZO"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["7R7bULKFYDW0tXBH", "GriWm7XNKQjBGz6f", "X8M8BaZuvja6txuj"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'BE7TGlGiCDvAW32G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode '0AVyBYIRINxOD0VO' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["zYsx92CdEAJ1WwcN", "DtSVQ2UPP1TSPdXW", "kfu8mqHF5eV5TYMn"], "descending": true, "description": "Iy22HrI9s5f4dC9f", "iconURL": "lxcfHJ9lUlCWI9Qe", "name": "Y1nbuohfG0P94kEv"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '1NCGmdKawRpnDdWV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'ASg4gtjViISKtXKe' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'Tuj0IPZUSDjRem6b' \
    --leaderboardCode 'wUXcz7t0g1FMKiJ6' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'EsqecGnMcaDFDEaQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'GBwgWhftqZTWIi2E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'S7fhs91hDiVXmldr' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'h5VrIFnxVShp6kDt' \
    --namespace $AB_NAMESPACE \
    --userId 'i8IaMRUkbgWcP6Ik' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode '8fjhwkvEoWQ5qVrT' \
    --namespace $AB_NAMESPACE \
    --userId 'eddvx9A0uXU3Dz99' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'wky5FhjG49nARCia' \
    --namespace $AB_NAMESPACE \
    --userId '2by9jdKMIpuS2wKE' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'srypNhv5OH7qO404' \
    --namespace $AB_NAMESPACE \
    --userId 'b9gvJdUKLkfzgx7J' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rvdHA0qZbdlMFhbS' \
    --leaderboardCode '["gaatyO6PLbwiMpVl", "ND6OtM3VxDO7YInx", "GcvLsIV64hlRHieO"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eZGmNNGXzvxlx6oq' \
    --limit '89' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IwDS469ybuynYybw' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '55' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'PH4KcqbrhTggnZGq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'NG1ib1ijM7pBdEdV' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'riX4ssz48y25lGWr' \
    --leaderboardCode 'NBzxml1HWtOX2jGP' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'REVYmuqMhvoSOG43' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["MBPzlkiSmIIXuWYF", "vBUhT8B0PdBz73CW", "sicArWRatnt2qEl5"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'muTgFAClo0ZVz0Aq' \
    --namespace $AB_NAMESPACE \
    --userId '30lmsAUawNVN2Dh5' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE