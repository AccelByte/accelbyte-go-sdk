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
    --limit '10' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "k2nKgLVygFF9u69o"}, "descending": false, "iconURL": "Im0kvDOf7WVV5nbR", "leaderboardCode": "lMjGjE2blI3wHj3n", "monthly": {"resetDate": 12, "resetTime": "J3ab53Xg34HfWqVI"}, "name": "bzNfZfeaOUMayEEZ", "seasonPeriod": 94, "startTime": "SnzxXszqG6m1pJsq", "statCode": "eoYjYL5zNsQkfcsK", "weekly": {"resetDay": 6, "resetTime": "lhkHLbnj6vN8REaP"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug '83fBW1lIeR4IR4Ux' \
    --leaderboardCodes 'FgiaWSwiXRLN39sm' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["GJ0pkkp2iNKwNhjZ", "maUTUkgnAduyeBtR", "w0YuDeRWrumBols1"], "limit": 44, "slug": "r8hymRObUYR34nbf"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["8MB4UgHZldRTUKlJ", "gRfkPvpa7s6h3TdE", "L7sfokxUGCYtotj0"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'dbVgtmNB7woL4EPj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'YdMXgrWqjHhUje7C' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "SK9SfmhEhiNSAPZw"}, "descending": true, "iconURL": "vA5X00PfEQbRj7zb", "monthly": {"resetDate": 23, "resetTime": "UQue5Vn8V7L6NryB"}, "name": "OFjGGC3qGKNdf233", "seasonPeriod": 41, "startTime": "wHFwzHYvRO05J0PS", "statCode": "lDXp6Q7lvr8lcuKg", "weekly": {"resetDay": 63, "resetTime": "y2AjoUG5jiPsX1cB"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 't69Wfcgf15hBElTh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'ZZ60ezhxOC0B4jL5' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'H3OWB6FjV7q1aeSs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'N8wTUjcmGVZsqajd' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '86' \
    --previousVersion '73' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'fQaTO3Y63pRPgKTZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'wKikICmrsbK2a0Oj' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '10' \
    --previousVersion '63' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'UNI56WU2vvndPVRt' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '62' \
    --previousVersion '58' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode '8cg1aOeNSOumfMOC' \
    --namespace $AB_NAMESPACE \
    --userId 'Eq7vgo6Sybfv80gH' \
    --previousVersion '80' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'vwjxs8ZRncbbYyXp' \
    --namespace $AB_NAMESPACE \
    --userId 'FidEXs9ZIYED0Cdg' \
    --body '{"inc": 0.9417663642085925, "latestValue": 0.0359065591277099}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'yYceZ630M11WtSOu' \
    --namespace $AB_NAMESPACE \
    --userId '0yLpRFKVZUjwcMew' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'USbFEIpyaHhg1Swk' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '5' \
    --previousVersion '41' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '0Z9qQ4tMbm0qcl0K' \
    --leaderboardCode '["KKKw2xdrpDIBRBHb", "b2zwJZmWuKCfnouj", "PmRIv8PlZEMYr0t4"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'oCjLVnBfvtFTQtR2' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'iECiZSAGsrybRC3R' \
    --limit '16' \
    --offset '92' \
    --previousVersion '88' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '92' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "SnIKesojaSQZtoHp"}, "descending": false, "iconURL": "rvrUUB04wEJjXuwb", "leaderboardCode": "Zhd1LflnJmHrQYcr", "monthly": {"resetDate": 7, "resetTime": "MmsMRM7lQ7D9LN4q"}, "name": "w6RrZgIjIV73XHC0", "seasonPeriod": 27, "startTime": "8Mb7K1fWer4lv627", "statCode": "s7Bh0mFUIBYekuu4", "weekly": {"resetDay": 76, "resetTime": "wetGp5HXMZa7XFM8"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode '0W6WlxT9pvBkyXm2' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'zl0HHgWU2dvAnF2P' \
    --namespace $AB_NAMESPACE \
    --slug 'Y7fgKSd5VePFkX6f' \
    --leaderboardCodes 'pKDtZeBPkV6Z6AbL' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'jHyXKFX230RnaQwI' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '24' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'HDWAVoHMO0IMFsVs' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '68' \
    --previousVersion '100' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode '1cQVSQQ74NRZLGK0' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '33' \
    --previousVersion '12' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'zXgwDp1uWgmJNpJ6' \
    --namespace $AB_NAMESPACE \
    --userId 'Pz8CGXno7I7ktL1d' \
    --previousVersion '36' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'Ug29Gzqjlym6pLbz' \
    --namespace $AB_NAMESPACE \
    --userId '8RHWIDgh0Rkkzy47' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'jskIHRPqNDK8T4Go' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '26' \
    --previousVersion '77' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'lGxBhjo5N55lHJqd' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'WBt8XkzeepzMZ4xI' \
    --namespace $AB_NAMESPACE \
    --userId 'IlRoio4uSa4ADZEp' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'cjlpQN66kkeyGWam' \
    --namespace $AB_NAMESPACE \
    --userId 'nTy9wE9WRwHDvrRt' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'vQ2Kcf0UQIPfb6fO' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'UmmMP05zy3gJ03u8' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '24' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["D6WGIBFAcdEofRJ7", "YU9M7O1fVZAxuYRx", "XEGJprREbjizgHTT"], "descending": false, "description": "77XybS65Aiu3yLjW", "iconURL": "z2o6YU9c8l6pAn7P", "leaderboardCode": "RNEA5dfD3TJKDwNK", "name": "Os3RjbhWHrzeoECA", "statCode": "fQhttQKwnaQMXGFS"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["vaMSsm57kIIw912d", "20opGkXZjmoIxH95", "JEPpCxLtqGTrdNhx"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode '8Rsw2MGpLdt6qyR4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'kNEPpgzgTWA0aYAZ' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["43UgYXej8aK2e5BX", "qfhpG8fYhylnjhWI", "vSQXS851Rf1rxlUz"], "descending": false, "description": "KaKQP3qJJahPyark", "iconURL": "m0p53yXZnPSe2gIA", "name": "h5MlvXkEOhLnKETo"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'xElcKo05wLcJqoBf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '2cRkSCnJMgeIyS6x' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'LUWqpGhwcZc86NCo' \
    --leaderboardCode 'JFLUDYm9MhzRawRV' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'BSqVUcjgttfcEKuI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode '9yMD65eJvXR3LMf4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode '4meDG2p4os3eIvuq' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'jke7S6PHxOT7q5j7' \
    --namespace $AB_NAMESPACE \
    --userId '3sWZy7yyUcPyyrqQ' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'hzs2h9Fst57uKsj7' \
    --namespace $AB_NAMESPACE \
    --userId 'TsuXGDUN8kKsFvQ5' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'SyEcNWgIiqajY1Jh' \
    --namespace $AB_NAMESPACE \
    --userId 'CxTqppmiEAHGurA7' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'C0ldGbdRLDdt8PGr' \
    --namespace $AB_NAMESPACE \
    --userId 'eOxkydvVwfpSlZMJ' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId '0MW4riQb6J5BXOFJ' \
    --leaderboardCode '["srpci0XsYRt6Id2q", "ChWzwUjs3ZlK7Q5W", "gJ0A0YDurygoKjqh"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YPLYAxdH45o5cyoP' \
    --limit '21' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'maX6eZ4ox3aBOCOY' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '66' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'ld8sJm6fHJnPhGid' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'fyuUuXXw5wqY3JVk' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'AdVj2QXkPdYqolHe' \
    --leaderboardCode 'F3qYsJTrkW1iVNKY' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'nnRCMkQMgGdBlRWA' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["2BSngnIuEPpVMoiE", "qWI2bneS5yidQoFM", "WSTWOoUm8mhPIbKI"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'nLpX8M30VlB1Rvrz' \
    --namespace $AB_NAMESPACE \
    --userId 'q7jhdw3v1SH0sf9R' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE