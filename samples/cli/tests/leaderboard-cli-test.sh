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
echo "1..61"

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
    --isDeleted 'true' \
    --limit '25' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "AIC2dHQl2MY9p8mJ"}, "descending": false, "iconURL": "e4IFVQ74LUCAPDXk", "leaderboardCode": "wMBy2b0tPq75xpoC", "monthly": {"resetDate": 54, "resetTime": "XmO5tXX98QFrFupw"}, "name": "DZ0tE1iCk9tcgaPx", "seasonPeriod": 80, "startTime": "gIqILzSbUNUzYB0j", "statCode": "Shw6RQaHxteif46d", "weekly": {"resetDay": 85, "resetTime": "SIlNmJhCwpWqYvQ3"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug '9RCOZAE54dAs0nwC' \
    --leaderboardCodes 'zNesnyjuAw3etpzC' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["nKk2JWlOlE04f8K9", "mI2K3jfmKdRd4p8R", "EQeYgxYMfN7m8kcf"], "limit": 54, "slug": "hs8VF3E876l18EMn"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["5JUkYf4W60shyxrJ", "P68ZaV2wmqQepCSj", "nllSScQQ79AWKXkQ"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'RjXNZLmFxUo2p3ae' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'eHUHyhFqr7SRzjfH' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "59J93MSKha4FoFzm"}, "descending": false, "iconURL": "LFMsjBUrofFHZdSU", "monthly": {"resetDate": 89, "resetTime": "EYBgQgkoaWI9gooi"}, "name": "QGMfndFXYF7Y2kmo", "seasonPeriod": 85, "startTime": "zVzQEtZeAZQWxXtM", "statCode": "xgLQqc4wEGa5pCpY", "weekly": {"resetDay": 56, "resetTime": "Ab4phPODFfxuKzdl"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'H96uEn2pGOZzfsto' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'JGLd1vXLJgr1AoxX' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'RdzsOKOlypfnYAJk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'cSiPS3XP8rOBCzwD' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode '46PWTqiPbKaHysDl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'PHK48yeayvSPBdbs' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'XTnP3pig00Nxsl4I' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'Gj19XHSBXuQJXeE8' \
    --namespace $AB_NAMESPACE \
    --userId '5QzPbv8rDutvlMJ3' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'CFJyArxJJzOExPIA' \
    --namespace $AB_NAMESPACE \
    --userId 'DlFqeWPs6IaqaFTi' \
    --body '{"inc": 0.139477101153217, "latestValue": 0.1741658350607812}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'UGltRJNEWQgLKt61' \
    --namespace $AB_NAMESPACE \
    --userId 'kaa4XVZPLAdpYDFj' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'kbPWT06trpWz9wNu' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rbWDzgx6rJtpZ0lh' \
    --leaderboardCode '["N7iHil7XYTMSwgu6", "ixyubkMYSU4LpwRQ", "FXvcLzZOnraJfx8B"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '0GvVOJAkDpatbKSd' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ptQf0f3aVb2wWRGe' \
    --limit '84' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '77' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "QLgMHEeirE7PIsJx"}, "descending": true, "iconURL": "363wcLteXUuUdKs6", "leaderboardCode": "LX5j2p7lj5XUysaW", "monthly": {"resetDate": 70, "resetTime": "UbEoCNVCqQUeWPY8"}, "name": "yRcJKNtWvYvHspAX", "seasonPeriod": 89, "startTime": "GwUxGJTilUDj7pti", "statCode": "pYIFh9FRzlq5eqe7", "weekly": {"resetDay": 43, "resetTime": "bRwO7DQWbAKg4oM7"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'kBFsZceMnaalA0GV' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 't89UVadDabyurRzt' \
    --namespace $AB_NAMESPACE \
    --slug 'QXzMVkDNAUKX7BY4' \
    --leaderboardCodes 'kvupoliB3g3Dqu1Y' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'poG6yGzaMW1oTrNL' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 's5lt6cYEojdi77Rm' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'mOZ9MvzbjPcJdZik' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'C3jN8Rw05b5d99nb' \
    --namespace $AB_NAMESPACE \
    --userId 'O3JMVgUTrbzRkJzl' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'BQqaxs20kwshpu2k' \
    --namespace $AB_NAMESPACE \
    --userId 'ggo3qn4glOhv35cL' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'Y6BG9zbLaAPrywKY' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'RHrXsiRSVPLhLC9P' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'RLxMOOHB9ponZima' \
    --namespace $AB_NAMESPACE \
    --userId 'vkqgXtIewjlaV8e9' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'fQcooSUY0YP2ppCp' \
    --namespace $AB_NAMESPACE \
    --userId '1NO8lIcQ5L0J5LC1' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'yhT02caYrjgRgDVv' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'eszoIZCZuSdaVCFT' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '53' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["ROFG0ll6Jb7IUyHd", "2oBzPleH6Iq0SHeb", "AM4YjXnirXegEMhr"], "descending": false, "description": "QGYypaX2lBZ6ZC3D", "iconURL": "ljEnZPgC1JWCfcOO", "leaderboardCode": "fCUcxvebWprc1SuO", "name": "cv581omuGnS2XmR4", "statCode": "eYdA6vXwOaCrY8dM"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["l8LANoTGL31IkBqg", "bMXbFUR1uN2Vyk0z", "9XXvHX8GtMcd3mTZ"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'E9VMQq1SadCKTwQ1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode '0WDrihHIT0g9ayM5' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["6TQ6zQ7GprIwm6g8", "EuzpLPt0mwjfHKqM", "wgq6ikNgRHbwHKy4"], "descending": false, "description": "v6xqUPrGTRv2IGwt", "iconURL": "KWwj9tVdrzq14qxj", "name": "TuJE1YhCpuvn2HYU"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'HRVoRQPJOyvH9wxR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'e2T7E46QgL35oRbM' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'qIJJCZHlQ1ghN528' \
    --leaderboardCode 'drg85C167UHpMEg6' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'pStOspuSDgJMmfqE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'hlx35eLOZkd1dBdE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'aWfCTsIsWab4Ie1j' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'CKJV6Xi4SebPeXS8' \
    --namespace $AB_NAMESPACE \
    --userId 'kZ5qoO4G26dZfe0K' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'hzJXNAresY3zC2wn' \
    --namespace $AB_NAMESPACE \
    --userId '5tn5pzi0NfIlcgA1' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'Cd24wOzWW8iIS6u9' \
    --namespace $AB_NAMESPACE \
    --userId 'g5xpe05O4V0V3b4H' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'odYx7U7kV8CKDv6m' \
    --namespace $AB_NAMESPACE \
    --userId '9Q2tEznuPTEJWEIF' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zKZFXSHchtLMhGWM' \
    --leaderboardCode '["Sn6WaJMhRSEdNMTv", "mlfX8KuIidrMbtpb", "NhRx73KvlqXchzzu"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'T69p9CGyKSszlTFJ' \
    --limit '72' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SxK84aMWKgl0r5Ku' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '78' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'hLCoV8tJdiaQ0tEz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'qJM61xzinagwbzaH' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'L0DfmtrLVxWOuPjc' \
    --leaderboardCode 'r8X6Sc48hp6TZKW7' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'K74mW4RzAQjgRn5n' \
    --namespace $AB_NAMESPACE \
    --userId '7G5ro7POtG0V6VH8' \
    > test.out 2>&1
eval_tap $? 61 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE