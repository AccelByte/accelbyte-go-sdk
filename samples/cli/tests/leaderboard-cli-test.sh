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
    --isDeleted 'true' \
    --limit '17' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "SsXkmuw1wKVxmbNt"}, "descending": true, "iconURL": "1j8M6xfOso79ChXt", "leaderboardCode": "WllerzWqIrwuSECf", "monthly": {"resetDate": 21, "resetTime": "wsLsaqDfOPwqkjs8"}, "name": "XaHVnEJpzgcpgWDu", "seasonPeriod": 19, "startTime": "ZkegUFqydscQAZyH", "statCode": "MMQFz1L45UFLDSuK", "weekly": {"resetDay": 33, "resetTime": "szunKdjvicUdfLi9"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'rfU2ENn0HIPSTNkk' \
    --leaderboardCodes 'XFMG7BuSwHG6cqju' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["dLH5egQqskIDNqdX", "f8UUNfoNu7slec13", "uVQImk0qX7iFXwmE"], "limit": 42, "slug": "WUivt4nZcMoihKMd"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["P89MZ7zBzaKVCdH8", "6uv7pfml3tyPrSac", "athisf8UR4Hw2eHU"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'wrHEMl1SU0Ush1ZC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'z869YWs3XgmyCppT' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "z0zR4C2uNWxZ4qfA"}, "descending": true, "iconURL": "BPsMwrRI6zxEKOF4", "monthly": {"resetDate": 40, "resetTime": "wvpBxhu01PXarBtU"}, "name": "K0k5RUD2QuooFLCL", "seasonPeriod": 59, "startTime": "ptbI9MuzMdhv5zlg", "statCode": "c6FRIt3SDCsgiqcS", "weekly": {"resetDay": 76, "resetTime": "R7ZN72krD4SK6tcX"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'mvm4hFINkVh4KAO9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'hjFSL5ICUljupPTn' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'AtaIABpo6VWT39fd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode '9ciPB5kf5sOPQhh9' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '7' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'dUPalFXZMWr4FOya' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'qko5wc3U0xEra1AG' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '3' \
    --previousVersion '23' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'lAKs2HJKB7bzr2lM' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '49' \
    --previousVersion '14' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'OEwTR1EZVygP0iGT' \
    --namespace $AB_NAMESPACE \
    --userId 'DnPiOnUNTKBGrk73' \
    --previousVersion '15' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'iYLvcs74SW5ld7BK' \
    --namespace $AB_NAMESPACE \
    --userId 'Im0xWorxl3hbD3qB' \
    --body '{"inc": 0.9425605610556617, "latestValue": 0.4844313412081942}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'ss40BF5ajqMGi0Qx' \
    --namespace $AB_NAMESPACE \
    --userId '8ajATqvUnfIYzwL0' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'WFsCE6pjhT13Viug' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '65' \
    --previousVersion '100' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UPjMTAk0gfl3sNad' \
    --leaderboardCode '["FEAmO4mH4P86rojI", "GK6H6mBPneBO8EHj", "SwU5hNyYETBIaXYY"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'iKUEYUlTAcF6OvDk' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qdVoozTeJVFz5JGj' \
    --limit '16' \
    --offset '18' \
    --previousVersion '88' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '12' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "81t0lzoYzCVjMQPC"}, "descending": true, "iconURL": "4lCT5FLpbGioqM4j", "leaderboardCode": "Qmd3uvYyEY72idOU", "monthly": {"resetDate": 92, "resetTime": "WQjwY0XgvLzwMpzs"}, "name": "9EYUGYiIWc3nClIF", "seasonPeriod": 47, "startTime": "SjaR9cIivQwCsBfO", "statCode": "u3wK45ZZnA7p0Aji", "weekly": {"resetDay": 1, "resetTime": "6Zw0KVsjfognSH97"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode '35iTfGsS0VKiEe3u' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'CZlMh7Wu9vO0KGE6' \
    --namespace $AB_NAMESPACE \
    --slug 'Fm44FXeCiZz5Ut0E' \
    --leaderboardCodes 'kKRyhM5N0a3szUsk' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'J8cmdopdMdNKWGbQ' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '16' \
    --previousVersion '100' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'MbZPEIPqDG6HnUeZ' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '27' \
    --previousVersion '26' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'HYq0TyG5HglfF1Q2' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '40' \
    --previousVersion '71' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'hOOBpwt0Vsd4Na3K' \
    --namespace $AB_NAMESPACE \
    --userId '2sRezGOXhgI9sBuY' \
    --previousVersion '49' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'gXvGvnvVs8FFPJgk' \
    --namespace $AB_NAMESPACE \
    --userId 'iOWcg9ZDcMSJ7O9s' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'Fvv884NFgjbyJvUw' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '44' \
    --previousVersion '97' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'YWWtq0oCTgtb7g41' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'oWEbVLJtWWsTLtLF' \
    --namespace $AB_NAMESPACE \
    --userId 'w8UdoqNGNMJDn6AP' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'SkSOc9z2fndbHgtK' \
    --namespace $AB_NAMESPACE \
    --userId 'oI2WtTYLcHjHl92N' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Ju8L3fLodGm9wOEG' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'SXu6FwldRUVaqJXq' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '2' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["R8cRF4mIzhZdmxex", "Kc0kDpib4bK7IckW", "GfvTkxolhIsjR3Mq"], "descending": false, "description": "BJgxki1izt1fXyW1", "iconURL": "pUBrq9Ib5M6kOpay", "leaderboardCode": "yB5CRje69dZx73Vt", "name": "dOGEKTDtAuXjB8xp", "statCode": "Uc4gwZ7ka9GLeIRk"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["9ZpEOReVOzX8k0YD", "CI89u0chwFUY4aSc", "UISPA8Lf5vvjmfSp"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'GPvBcFphXQ8S77hX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'RjYJlTtFryZo7VfK' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["DiDqHTVhwUYB7ryr", "LynlTEYZBHyTdGHW", "wMoOEFvzwyBa6RSL"], "descending": true, "description": "ErtnxmV4UyPvwvmM", "iconURL": "EBwynJk9mHuQquV6", "name": "U1enVpfAhuU9O8SC"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '7iF8GW37lcBch60g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'JE9agS0FK1F6vvRl' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId '1NKv6QU3n5kUt635' \
    --leaderboardCode '2HiUBFTUFxnPzUGq' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'osiycQRsahV6cwiR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'BKbvTMz3yy3pBbSG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'hfLV1NPal8ZugcTN' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'XakO2GOhzK9ntsFt' \
    --namespace $AB_NAMESPACE \
    --userId 'VYd0qPlhQeTP22hf' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'ibsTriQYvyj1o1kY' \
    --namespace $AB_NAMESPACE \
    --userId 'XfZckzpXWnVZcFZS' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'vHmWeZmcBBuF8riP' \
    --namespace $AB_NAMESPACE \
    --userId 'jReFZ6cKcSWWQ0JV' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'M3tzQH35GwJOwJ3C' \
    --namespace $AB_NAMESPACE \
    --userId 'gjn2EM4Yifnf0klv' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IwroplCTWnfecQg5' \
    --leaderboardCode '["oBXbHYrcGBSVJqL1", "yhKn4OH9NFvtmhOZ", "DHS53I1zQAN3m4O3"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iuedoj7phenaa576' \
    --limit '45' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'scEJZgD3QsjebXGk' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '75' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'yVOW3IpGt9CXWrmk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'v0ePOcqRfOL9DbPE' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'Uzf1QH8WcM31bQn4' \
    --leaderboardCode 'QqkGwlh9Iq6Ct0Um' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode '5UeCw2r8jLTooZLA' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["9FjhVXo0ZTy7T6H8", "YAc6CqYn0X6oOOUk", "zSy7hUX4U2EBVZyr"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'CA0dimYI8jS74L5X' \
    --namespace $AB_NAMESPACE \
    --userId 'TZd0XyCU7n8ynRTB' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE