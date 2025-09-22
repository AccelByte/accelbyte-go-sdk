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
    --isDeleted 'false' \
    --limit '29' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "cJdvbLcPIv5IFGga"}, "descending": false, "iconURL": "nlpSn8BpWBJ0TjEc", "leaderboardCode": "JSPdSDt8TT58a1qU", "monthly": {"resetDate": 79, "resetTime": "2Tcb2M07xDGljDfA"}, "name": "m8zTthEGt1fr3oYk", "seasonPeriod": 97, "startTime": "w63mH2Fr2JvL7cHh", "statCode": "WINRLVcMYcKFv3Ht", "weekly": {"resetDay": 93, "resetTime": "6BVaq2Gug1oM1W6t"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'mCQCJfJ6Lob5bXkW' \
    --leaderboardCodes '3H5ydLAYOlVyEwJt' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["0fyRw4G0ShPTXKAk", "yF4HEGDrdyqsrb44", "D2KTx8VAsN6fOEys"], "limit": 1, "slug": "FSHQFj0mdHsdQUPX"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["TgAdyU9NtkFKfeKD", "p6IoksrpiSL5o9WP", "t8vSIIDunbKp7zH4"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'G7HRLDhoh8UJ23yO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'juEUHBnw1BBPTCOO' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "UB4hFRBGCj7rYnby"}, "descending": true, "iconURL": "Ezl85HyuhCIjgpN8", "monthly": {"resetDate": 44, "resetTime": "hCKRrHCn8P8R47DW"}, "name": "zhP0EdnF6BxTqrxx", "seasonPeriod": 50, "startTime": "WWguUCZ6k3Mi1coM", "statCode": "XrcRkVDV6cu08VIh", "weekly": {"resetDay": 18, "resetTime": "KXMoRj0T4HfnFfgq"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'e8xEIopBwfcMgKbf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '1Vky4Mxc0h8aC3iI' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'P2gijqekEhDKJZXN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'fobERV4tzazL3u7A' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '67' \
    --previousVersion '87' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode '201Ok3lE9Hoo5Ozk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'zAYwPg3YAhAPBl62' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '70' \
    --previousVersion '40' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'wgZzPfPC5W8B40pw' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '59' \
    --previousVersion '27' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode '1zz7n5Yy9n6O4Gbh' \
    --namespace $AB_NAMESPACE \
    --userId '8xLcUfqf8w2p0Qv7' \
    --previousVersion '19' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'McsSc2ZEN3bTfegT' \
    --namespace $AB_NAMESPACE \
    --userId 'eBQqR1ATzPYvYDOK' \
    --body '{"inc": 0.20091884236855462, "latestValue": 0.1735585436191046}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'JKHvIud9Dol3mRUb' \
    --namespace $AB_NAMESPACE \
    --userId 'As8jNGhv1aEvr8Hx' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode '2Y62xupCe1a3fFe8' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '4' \
    --previousVersion '98' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '8m9Nu4l14rEWTwbc' \
    --leaderboardCode '["OZ7AoouBgWs5vDZs", "i3qdfD1npnhbVMY6", "zJyFxJ4IOtAz3lyI"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kUGDeBsP22sVpbDE' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'owlkn5UeujYNnskl' \
    --limit '95' \
    --offset '48' \
    --previousVersion '39' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '53' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "ezVgTrJny9sEc3Ql"}, "descending": true, "iconURL": "6NOZnbOg5Ac0mrqi", "leaderboardCode": "VuH9iPIcy7k2Fgb1", "monthly": {"resetDate": 84, "resetTime": "C1qDvK6d7yUSiwBq"}, "name": "j0HmjVL10sPyLdnG", "seasonPeriod": 57, "startTime": "YL4bRmbIkprCX3FA", "statCode": "kK8X0j9q9X1FIoZT", "weekly": {"resetDay": 61, "resetTime": "mbpQPZFXQ79qncST"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode '6tv60TYa1hHan7zO' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'ZrTwp7xbm3CcpM5H' \
    --namespace $AB_NAMESPACE \
    --slug '7ux1Tu4qhHa13Kx9' \
    --leaderboardCodes 'mRVgYNbnpG4WEnjl' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'f4hkFcoNB6Up5HP6' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '11' \
    --previousVersion '20' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode '4YlXKSg0P0Jv5b1y' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '56' \
    --previousVersion '42' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode '1P2IbmcgROUAB2Mp' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '93' \
    --previousVersion '68' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'p6Bp7dKFxqrVBV9Y' \
    --namespace $AB_NAMESPACE \
    --userId 'wEWhScFTQFtF0GYL' \
    --previousVersion '56' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'lC0JFgNOeEB0VK7Y' \
    --namespace $AB_NAMESPACE \
    --userId 'Vh4GcoJyHTbPqJmD' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'ognxGbf08uNr8Lm4' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '50' \
    --previousVersion '75' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'G7W36HGVHjlfUiiE' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'Uw1IwNtjJQ6Stzv3' \
    --namespace $AB_NAMESPACE \
    --userId 'ystaHxXCEoXEAyhb' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'I2Tft2nATnqPX2rE' \
    --namespace $AB_NAMESPACE \
    --userId 'DOwts9dIYTxWszyL' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId '46EpJUG3DcSes7CH' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'MQ1i9NpAJhb2f1pm' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '25' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["9RHUKH1nFA0Oqa1O", "zoaxzHRsZSFNwlNB", "xZis0FSIeBIGUQkp"], "descending": true, "description": "50BIWNPObRThoSTs", "iconURL": "n7TbJsHNMxNLarZA", "leaderboardCode": "SqfAEvTbeDmRdP7N", "name": "UHvJSJ8ScWFWW07x", "statCode": "GIxTuZyW47peXw32"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["0VFDAHsz0WTTOQFV", "wK54UpBOxB8DIgqR", "kvnpEwjnRh6Bi89c"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'vYqXxbH9xLvOwPrQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'iuu8cdhjKvMlifvm' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["zXWH1YjjhzYHkiYT", "T361nWD4Zp2CFnWh", "WdsQkGIX6qr9xpZi"], "descending": true, "description": "g58wTbuhZZlQXhYl", "iconURL": "A4PXsOQDEbsGysHp", "name": "rKwSiuTvFVplbxQc"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '9kt4aO0Ovxt24gbh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'XhhgX7FOnuaOVh1L' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'hbJuzv61wZs5hwPk' \
    --leaderboardCode 'Af2yxBwwH5VzrfQA' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '22' \
    --previousVersion '25' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId '8lIAQ4yXjuiMdIpz' \
    --leaderboardCode 'rR0Tzf1j1gltU5VM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId '3t4LMpgfqcDuP7rv' \
    --leaderboardCode 'sEoa8V9P5QfOYlWh' \
    --namespace $AB_NAMESPACE \
    --userId 'iGGpEjYrkE5uT73i' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'u0WHYAU8TVS4YJpo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'TTxk2wxqJngr4E18' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'Ot5HO2JhP1dUwqQ0' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'X6cGaJubAxwAfPke' \
    --namespace $AB_NAMESPACE \
    --userId 'UYo8UOz12JblY6JM' \
    --previousVersion '21' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'w6EwEFiTgYJZYuri' \
    --namespace $AB_NAMESPACE \
    --userId 'NmFMmjSrxAo9KYgi' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode '0ezcElWV9IdKh53k' \
    --namespace $AB_NAMESPACE \
    --userId 'mcuM6YAUxFmzAYhI' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'zIXiK02jPCKOMTon' \
    --namespace $AB_NAMESPACE \
    --userId 'XUFtCm3al3q7hX4P' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vOXgnXrLWTL2Su3b' \
    --leaderboardCode '["cB14HxeY0C7ZdcHe", "LWeRQ0rQaSlp2png", "V4qjpVHFGxeaIcOK"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lhZOdO6rgarYGrJp' \
    --limit '26' \
    --offset '38' \
    --previousVersion '25' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WApgEr7xLSWlLxA0' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '35' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'cm24hEgBGDPVZHKH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'A9afFjHlwIkXJxKm' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'RI5UqTypXfQOC9rb' \
    --leaderboardCode 'nuu7Chc1fUTfZV9j' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '25' \
    --previousVersion '43' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'fEVaW7BYRYOPe9HM' \
    --namespace $AB_NAMESPACE \
    --previousVersion '70' \
    --body '{"userIds": ["KM01orJNIlba2KMn", "cFTDnEmVGHt3rK2L", "flNWBsVe0ur1P9Dm"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode '85nZjuAeaidmX6AE' \
    --namespace $AB_NAMESPACE \
    --userId 'DX6mbpEtSzzdfthh' \
    --previousVersion '37' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE