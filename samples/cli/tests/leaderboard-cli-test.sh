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
    --offset '3' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "tQzHbcEpHYgC14MA"}, "descending": true, "iconURL": "9687Rw28i6zOighx", "leaderboardCode": "S5AtWKOFcSdUv9aC", "monthly": {"resetDate": 7, "resetTime": "xDvjCWsUnjXvfX8e"}, "name": "3sdLbcDZHIJiCg0r", "seasonPeriod": 27, "startTime": "3xmYfB20GtZ6p878", "statCode": "9sd4YEwwVtBbUb1z", "weekly": {"resetDay": 78, "resetTime": "nvQxPThMVDRRjKUd"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'yu9iPC5bbFggtsyo' \
    --leaderboardCodes 'gPIHmcWenu1jsFis' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["5KD8ZE1YTsvSUmoH", "fC5RpqjUYChJA6GF", "vVPRHRvQBCF1NeRH"], "limit": 69, "slug": "eAgqTHfUXZ58PQsz"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["kRCyiWo1TmiSnXeL", "Bk2UpFGyXCS3VWXd", "GaNbj8P0ILCvBNdd"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'Y71ucERyJefNWgYs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 't0XpEsEoDHToPchw' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "LcEWjAajuN4vD5JR"}, "descending": false, "iconURL": "K2APMMp7FOFwtVp6", "monthly": {"resetDate": 27, "resetTime": "RBSv437qgSrJ1gby"}, "name": "AW7kdCSnFbcrEyet", "seasonPeriod": 81, "startTime": "jW6HUpMYEKzD7I7j", "statCode": "OiJ4G4q500xE6mYX", "weekly": {"resetDay": 56, "resetTime": "Xxc1aw89xPn0y4fb"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'zhLyNq96ohaLs7hU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'dJxydnF3DS4VbJPW' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'm7K5N2EHc2YRZQXA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'ykOZY8ankhGQL9DJ' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '29' \
    --previousVersion '31' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'bf7OXeTdkvQAOnKO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'pAonvkQ9hr13CMQW' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '17' \
    --previousVersion '54' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'GxcVhoOChpsVcgzo' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '34' \
    --previousVersion '62' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'j0thXhpwipfgDYhU' \
    --namespace $AB_NAMESPACE \
    --userId 'SDqEkUEmTczCNKS8' \
    --previousVersion '66' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'VfW5gZEtqhZe8PAx' \
    --namespace $AB_NAMESPACE \
    --userId 'bTt8BnKhlahddgvl' \
    --body '{"inc": 0.4652966977060776, "latestValue": 0.3742905757978583}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode '4vadGBmPazVhxLC7' \
    --namespace $AB_NAMESPACE \
    --userId 'pbSlaemYHVQHfHEK' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'JVf3zYMf9AnwVzcm' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '3' \
    --previousVersion '97' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WiV7OadwCjNduvAr' \
    --leaderboardCode '["DK45nhtGN4vxAR0x", "cjQQWQSzD1VU9hah", "qx44gAlop6mVjuw5"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SS6Yqk8nDwNS1JuX' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KIZ3FW1S98uWWsOt' \
    --limit '11' \
    --offset '35' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '22' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "p4IY0RKOZBpGv5tW"}, "descending": false, "iconURL": "eLXI3sUkjewRYlbk", "leaderboardCode": "k7t6tBDXs7sg5IK8", "monthly": {"resetDate": 4, "resetTime": "edY1j36xrfGFIYYo"}, "name": "o5z5Jt7XVQZC9DN9", "seasonPeriod": 90, "startTime": "LMTvqOgToLccnKc5", "statCode": "DII2xlWCoKrDsrz3", "weekly": {"resetDay": 61, "resetTime": "x1NfzeB2LieDsIbO"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'JM9F1z8Lp3LWpiDz' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '1nwLKBdiNPTBIAsT' \
    --namespace $AB_NAMESPACE \
    --slug '0x7dt9oDn9BsQXF0' \
    --leaderboardCodes 'DAO74gV42NloYqGg' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'srAOkgAwoZynccnt' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '24' \
    --previousVersion '91' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'Rzz17kiR39N1WGH4' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '48' \
    --previousVersion '67' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'iv1MUZBMIEtSRCd4' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '88' \
    --previousVersion '77' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'TUDo7RFo9DwlYtEK' \
    --namespace $AB_NAMESPACE \
    --userId 'mNAbv37bgWjABVf0' \
    --previousVersion '13' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'UUAQSXjGaVeQRDj5' \
    --namespace $AB_NAMESPACE \
    --userId '0IBvXn9aRfpgDPH5' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '8WlH7CFa2u7R7J7A' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '32' \
    --previousVersion '76' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'MTu2H13XB5Tcpnk2' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '9G92HlsJRXI3hW91' \
    --namespace $AB_NAMESPACE \
    --userId 'A91AmMQkqgobJInj' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'fkLAWM4fNVD7WOtQ' \
    --namespace $AB_NAMESPACE \
    --userId '3e003wxlB36JU8SK' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'wsy3WLMFkawOf09F' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'pWoqnb3lzRoy6Il4' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '42' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["3XB6DGwsQ1GfJgtO", "921m28Cwg7ARa1E1", "QaEiMZDHXBXG6Kp1"], "descending": false, "description": "CYglvaKF7y4Ntg22", "enableServerHiddenFilter": false, "iconURL": "tEd06DuL8nDhBP0h", "leaderboardCode": "98dnayQp2Oza0p3B", "name": "Yh4FgWLFk22J5qu8", "statCode": "OQOfpTTM7ABwhfEL"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["EmKwwxGZWhI1zS3W", "IfdOxDn9Vuno5QGE", "E4kWhpJoxhNkTxW6"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'yXa4s7gNRlBTST8d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'dghXc4wFOI1vQSc5' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["92kJUWTLjnz26p7o", "DxmTgouOGXslW0ls", "7Nfx1aiuOlovBYLt"], "descending": true, "description": "UBXV8WNmWRjamimv", "enableServerHiddenFilter": false, "iconURL": "EbRlawZaiZow279V", "name": "Eh7QRplRMIK03dCA"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'DL3xjZZLc0ng1VX8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '2k1d9LAy47rcOVAX' \
    --namespace $AB_NAMESPACE \
    --includeHiddenUsers 'false' \
    --limit '56' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'Gs4bpgUvRu35hKEg' \
    --leaderboardCode 'Y1fSHYoT6Hn9D4qL' \
    --namespace $AB_NAMESPACE \
    --includeHiddenUsers 'false' \
    --limit '74' \
    --offset '94' \
    --previousVersion '72' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'y55BcxJZQjd0wUQ2' \
    --leaderboardCode '17vSOAA2y38l0kga' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'azOQwZS26BtWZhYA' \
    --leaderboardCode 'jBtWgR3jSaeJbLit' \
    --namespace $AB_NAMESPACE \
    --userId '91SFGh1mAlWkYolQ' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode '0le0TilHYmFntgJO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'mKYmj5lP0F2ufUi9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode '0MBqiI4w7aHbeLso' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'P2csDjomnXhpKjVI' \
    --namespace $AB_NAMESPACE \
    --userId 'PSZcjsxzTddgFtaA' \
    --previousVersion '92' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode '3BM1y6UlhKCTtNym' \
    --namespace $AB_NAMESPACE \
    --userId 'km8DkUAKlu6TGQDz' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'iduAA5CkjOkVVhx7' \
    --namespace $AB_NAMESPACE \
    --userId 'RDa22lx5nadFmLUF' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'ywRKKrQ46EnK6ub6' \
    --namespace $AB_NAMESPACE \
    --userId 'AX8w39auAKHyDllF' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QRj1AFFFaWoiQk8L' \
    --leaderboardCode '["6S4Bxx94x9KbsBhw", "p4x7ERiz0MxSyrbl", "hZz4BHCaUmPI8cUC"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N67EbkkaRoE1iCAZ' \
    --limit '26' \
    --offset '65' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId '3mVCbjMycgFDmmMW' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '79' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'NEQhqXUuX163VY6l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'g8UKlxJsbzXOdWox' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'Pr0urVpgK8enuePB' \
    --leaderboardCode 'XHLP4uiqePCVkjF0' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '46' \
    --previousVersion '81' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'ghB9Bf7vr0InvtOV' \
    --namespace $AB_NAMESPACE \
    --previousVersion '15' \
    --body '{"userIds": ["BGtHX1bUwqiCwS32", "lmbyjufhPeqBViRB", "cAFhqVUYQeiJC7tT"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'NaH46pGbZavNzyRN' \
    --namespace $AB_NAMESPACE \
    --userId 'JQoZzom8nzZlRHkV' \
    --previousVersion '75' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE