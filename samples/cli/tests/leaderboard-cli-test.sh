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
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '49' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "mzfC0t61xYYBK6Ed"}, "descending": false, "iconURL": "yweRQ5Hy86C79Ae2", "leaderboardCode": "REUBuEYiOwygnCOv", "monthly": {"resetDate": 26, "resetTime": "EtpGJXbSi0ckPakb"}, "name": "NCFaKSnDJj1FNtxX", "seasonPeriod": 52, "startTime": "gFLvkNELaTYNU8mf", "statCode": "dtPrVc9lyQ1IMNqr", "weekly": {"resetDay": 86, "resetTime": "cQ4u9H9GrrsL8chJ"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'D2VjPL7cITYm560D' \
    --leaderboardCodes 'LXwwLSsFEKXVIprR' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["c1JuzdxQ5zY3ns6J", "ao9HLiN9uBqsPZTf", "7rANXBwZpn90eCzt"], "limit": 30, "slug": "td9ulbA18kPs2Bdy"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["3sZ0Gu8t4CAq6sd6", "akdzvgcxqUaF5Pp2", "77465OdDFdD9iqC9"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'OaHDzsQ1FpgvMQPn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'Aim0cYVbu8IOHpHH' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "BtPwbumKPrDDtVo4"}, "descending": true, "iconURL": "qXdWdiTYFwqqm0wL", "monthly": {"resetDate": 73, "resetTime": "PymLahddxkEfFx3I"}, "name": "aBVk01sRUEO8Aw8X", "seasonPeriod": 36, "startTime": "BahkztUqNcvIkERK", "statCode": "xhjZkzTyVb48vXZ3", "weekly": {"resetDay": 100, "resetTime": "K42onaWcfcaDIglB"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'P9vMj5d1GdKjLqf4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '58mvvIXeZFdl1TWY' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode '6Ln0XyuotnTZq2D3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'i2s7JxeRqcJpwPae' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '95' \
    --previousVersion '67' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'MyaZtSkVr9GE4Fbg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'rxM6LUYnQYr4vs9Y' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '4' \
    --previousVersion '24' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'FlGWt3rXIyiXzDuK' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '54' \
    --previousVersion '2' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'NxEgGW6s6tFoZUrk' \
    --namespace $AB_NAMESPACE \
    --userId 'AJ1oJy4WZdI2ZtQZ' \
    --previousVersion '41' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'gicbAVK9OtCL0U6k' \
    --namespace $AB_NAMESPACE \
    --userId 'TYzbWhZbj2OUmi4n' \
    --body '{"inc": 0.5616597629361335, "latestValue": 0.25596924226878437}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'CR63VLqWinZgYGx8' \
    --namespace $AB_NAMESPACE \
    --userId 'dBRQzQcIcjweqO7r' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'vrOLoriPoELXgB86' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '90' \
    --previousVersion '76' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'V5pSF0O6rKYFuqVY' \
    --leaderboardCode '["B2t1rRWqW4QpJvxF", "QEiWqRUEOS2SL05d", "K8vnEnfUJ2VTI5Mb"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZZQjPtdYW893kL1v' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OZnU7XSlqfTDnJJ4' \
    --limit '10' \
    --offset '17' \
    --previousVersion '65' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '56' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "qAHsqDiHvw90gqvd"}, "descending": false, "iconURL": "apgohrgaPM3i7e01", "leaderboardCode": "oVOHBo45DgoaTsDm", "monthly": {"resetDate": 43, "resetTime": "VeFWK8WQlM7LjWdn"}, "name": "6MiQ75QMAKhSzeZP", "seasonPeriod": 92, "startTime": "MiWGVGSYkuDPMuoz", "statCode": "Gn403ftDOgoRXWMD", "weekly": {"resetDay": 1, "resetTime": "CP6FwuaWZO6g7E0o"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'TY5jx8aaOgoZW8wr' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '6fLh7C8WYqrSEdCb' \
    --namespace $AB_NAMESPACE \
    --slug 'H1CfHoIySDCmdrUj' \
    --leaderboardCodes 'MPgoJmO0tKJq9NAW' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'bPFm0RSDBUzibN4w' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '22' \
    --previousVersion '48' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode '6gu4BgEuqsPiPAWp' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '5' \
    --previousVersion '0' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'ZXiyDWueJiZ6aefs' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '50' \
    --previousVersion '78' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'RXhzVrwNbXpWIGIO' \
    --namespace $AB_NAMESPACE \
    --userId '0cTCuAeMPsqhtBL2' \
    --previousVersion '53' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode '8bTDArck2dZTpcYz' \
    --namespace $AB_NAMESPACE \
    --userId 'xtsas4WP8HG9crtM' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'vqovNEmFcjFbBwRk' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '70' \
    --previousVersion '75' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'VgJWj6m3APVqFybw' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'OCVDKA8IPgIblRU3' \
    --namespace $AB_NAMESPACE \
    --userId 'fiQCHe7j6LpE514Q' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'aD709YADKrZJjIvX' \
    --namespace $AB_NAMESPACE \
    --userId 'bGYWvp7xjqyirIab' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'piQRmb3UjtBtRhxi' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'QMFx2T3Lxh9g4bYA' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '97' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["nwiOOa1jeHZWatFQ", "QskAImt25sjbWaGv", "iLSRSPn3zWi46PHu"], "descending": true, "description": "u0vfhviB1vbwZmvo", "iconURL": "V6DxBF1qdgcLv8Nt", "leaderboardCode": "SzX9GjJ91MQBe9y7", "name": "Iw56tTx2ONjKELxk", "statCode": "ybhOM3Wu4lNh0ZE6"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["SzBCkIuCYxlBsYmD", "V78fHhGlfnvSYk7N", "S6gAITx3eqXZT89g"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'AdpP1CzdHzKNjgZJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'gytOa8lM2SlBM8Pt' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["yKtyeHZxVyqKFtqE", "4kWJVTtBx8cmpGFJ", "00KPuHELCP1bcwl9"], "descending": true, "description": "SFt8y2hlvEom3MPR", "iconURL": "icGMFIdcNuWr5QIV", "name": "CL9sv5Vlle0NHMhd"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'CoKlfsaFdO4taPpV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '5Ynd3FepON6SgNAm' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'K9OP0zzibU51Itzp' \
    --leaderboardCode 'ofYvRh5jDS9DxxuI' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '59' \
    --previousVersion '30' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'ege7q86uxf9lHH9K' \
    --leaderboardCode 'mY9kkjLkXnBfffOg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId '0JSjTbhtEzyk2xZj' \
    --leaderboardCode 'rjc72j6xfhcJOspE' \
    --namespace $AB_NAMESPACE \
    --userId 'FwJw0COaBoCPoQo3' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'fDNj2MvOmYUIJwzY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'Ye8COSP2VhEgmu98' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'owbydnRcCCMkNRs6' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'WKj56RdNYeBizulb' \
    --namespace $AB_NAMESPACE \
    --userId 'wVfNMntIWMAa3jSt' \
    --previousVersion '50' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'urHEq0Oo9X4C7DZP' \
    --namespace $AB_NAMESPACE \
    --userId 'twUP0dGsCVNHoOWL' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode '5k9o1n5Ddfsoalfs' \
    --namespace $AB_NAMESPACE \
    --userId 'DB9OMfZQH1IWiw85' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'YWvCQqxlzNQl3pt5' \
    --namespace $AB_NAMESPACE \
    --userId 'MWJLdKdk829wxpsd' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mM5G5E4IcxnASwK0' \
    --leaderboardCode '["sBGvm8dH5WtF52Gk", "n8CusJpB49kJmKiH", "aX42VuAd5uTBmcUd"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'P0korBFb5LlfmXOM' \
    --limit '82' \
    --offset '1' \
    --previousVersion '15' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId '9be5YIWL40UFuVHB' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '75' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'R7X8X4weWEG1eqeP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'mNKq0OuCQIpW9sBG' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'osik5QiJxN7hmkYw' \
    --leaderboardCode 'LgMTJXJMXzLffMiq' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '85' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'UHUExKZCNDZuKyC2' \
    --namespace $AB_NAMESPACE \
    --previousVersion '81' \
    --body '{"userIds": ["JBCsDF2fgrIUMElf", "ttwCU0L0WsVlYCRp", "EMTHLzMuccQjuMmw"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'wSj6eMbbpVqLdDgg' \
    --namespace $AB_NAMESPACE \
    --userId 'rKqA9CDI0LgRLOgJ' \
    --previousVersion '66' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE