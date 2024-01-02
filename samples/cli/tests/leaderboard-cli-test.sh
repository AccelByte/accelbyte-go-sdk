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
    --limit '58' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "bh5V3mLTnO5X2guN"}, "descending": true, "iconURL": "INwPIrQfd8HOabCr", "leaderboardCode": "0HTyeGOa9emhc1il", "monthly": {"resetDate": 89, "resetTime": "awaTuR46StWgL6GT"}, "name": "GypJtXrJetEiRcGK", "seasonPeriod": 17, "startTime": "Katy9wQ1EjGAfF7Q", "statCode": "iSRW8qBt7bt99Uzr", "weekly": {"resetDay": 85, "resetTime": "8uK2kpdNbVWefBz3"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'rwurd88Hl5uUmYtl' \
    --leaderboardCodes 'KGmuMyP5qVO1A0O6' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["siHlkdYg9kCibnEW", "WHfPOITx2gck8sxV", "FCtq3fNTzLKPF5td"], "limit": 69, "slug": "F9yi6Jd5ShfaxvJr"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["OfFaRCX1KNkboLtc", "4cREh1luIMqFNJWP", "xFcR2IWU8AKFPsSa"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'QFCVHtGOlrjq5Tw7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'csmb4BPNTPDmFfFN' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "5UKqRMARKNvj1BOD"}, "descending": true, "iconURL": "rrvjau6Ih5md10PC", "monthly": {"resetDate": 8, "resetTime": "V8r7gYrwyIq5NGgy"}, "name": "kZiXh7ECDHAZtdko", "seasonPeriod": 40, "startTime": "R4cPBoGW8gERjbF7", "statCode": "GTr8ctoIEKHMDgHK", "weekly": {"resetDay": 33, "resetTime": "IDoAmt9CDPgzxSeQ"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'FTdj2RTZWU3A3bW8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'MTf4uzeek2Rw5NTF' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'lyBw75soNTAVp14F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'ieVLruVB7sO7G2UJ' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '30' \
    --previousVersion '36' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'HzUsaHHCuwxzooVT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'EFJUXSZFbMZM9xVo' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '86' \
    --previousVersion '56' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'znJhGz9uIbAdOnZj' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '38' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'N8hIGLfk2el2T27R' \
    --namespace $AB_NAMESPACE \
    --userId 'L72yBFWFdM92ixZT' \
    --previousVersion '34' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'vw63CrJYFyXMnAjC' \
    --namespace $AB_NAMESPACE \
    --userId 'QJmUWFMDCwIQhhL8' \
    --body '{"inc": 0.5599694611179925, "latestValue": 0.402987514896456}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'RSCSpTTBUFIfQzUY' \
    --namespace $AB_NAMESPACE \
    --userId 'IzwNypxQExQRpxEm' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'lwZMiOvqpAugHWam' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '61' \
    --previousVersion '57' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '61CKwTWdZinIUIIB' \
    --leaderboardCode '["RtjVYF6dvATYfspj", "5MPnPzrGnOE1HXUj", "ejXRO75Xdz8O8sfH"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gVJeQfG8EwDokKfy' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RaJG5bNXSeLQQ1AH' \
    --limit '71' \
    --offset '34' \
    --previousVersion '46' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '37' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "SQYc4oub0wF7xXdH"}, "descending": false, "iconURL": "njaF3U3qHJXnfgVU", "leaderboardCode": "Km7NEjtp9HPZ7Vod", "monthly": {"resetDate": 8, "resetTime": "3mxkMSNntwIi0jlm"}, "name": "aYxWPqMe7rKPh7TL", "seasonPeriod": 37, "startTime": "Uxf6vOMP1X5fjK2U", "statCode": "JjPn5BtPFc3CjgI8", "weekly": {"resetDay": 22, "resetTime": "2qZT82NbrwwSSTmz"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'ejB9CVEqntO3lBiX' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'CyIjKbHDlYWIlcW0' \
    --namespace $AB_NAMESPACE \
    --slug 'w0lKq3YfDME1ZXKG' \
    --leaderboardCodes 'AFZgApXkahQtV7ah' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode '5GLGniAFydcDaWe8' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '20' \
    --previousVersion '69' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'V58IdMUrsjKjsHZc' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '65' \
    --previousVersion '38' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'lgKk7IbjtNZUctLC' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '10' \
    --previousVersion '78' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'ZyKuPEG0BR36o9j5' \
    --namespace $AB_NAMESPACE \
    --userId 'ORAmPnoyIgsuWUcM' \
    --previousVersion '56' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'vBu4tskB62DihE5V' \
    --namespace $AB_NAMESPACE \
    --userId 'puP05ESf18CxxJOY' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'ihuTflltIFndks0U' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '66' \
    --previousVersion '66' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'M3BF4Xzk9RUcsVgA' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'jo2Z83lugdtRy5Ug' \
    --namespace $AB_NAMESPACE \
    --userId 'XHQeWL3e89Vny4ap' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'C0MqAPjZJZQxchGh' \
    --namespace $AB_NAMESPACE \
    --userId 'j9EUKQssJR04eZ1S' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'oP3WVjs7umCiLPN2' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'UN4TEHlDFytcRjpW' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '42' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["P6WYzAyi4S3Hm5rH", "N4RIQGl1GViCzsFt", "YuPhi1P8D0uim90F"], "descending": true, "description": "PpxYkZvOJDA52yLT", "iconURL": "GU3NN5zuylvMYpvk", "leaderboardCode": "3IkgD3gs56AVJtZU", "name": "6Nip4aaYo1U5RKJE", "statCode": "sgOvSy7hp7mhcb1M"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["bR5LYT1WT3F96Pv1", "hE7oHpMi6VBWr0vg", "Izs1C2A1LWtoGRl1"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'PG9TmhISdAFPWGYG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'ikTGTCtwZyerjS4P' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["MLuUK48QRbQOpObd", "SmYI7YfsaG31mYK7", "6DvSyOWW3dC1MhrM"], "descending": false, "description": "tLajZ05uNtKCNZxw", "iconURL": "bYt1RJ8Vh0zbLlHA", "name": "zx0bOw7IrUaRuq2G"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'vsPalDCacAbK87GP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'eFiKX7KoO9w79lgr' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'eEaqpvNLlgvfgtJi' \
    --leaderboardCode 'FbWhxODvlczpQ7v1' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'ETpjJvR6DxwPJuh4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'Z2XfISSaVAzAjBib' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'EafgGUvlYTUOrYNP' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'z19jU9CrSkj8g7br' \
    --namespace $AB_NAMESPACE \
    --userId 'HuzP2aOEHKKJZNZq' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'kXoYE0KgzY7maFvk' \
    --namespace $AB_NAMESPACE \
    --userId 'XkpC1rzaiOCl9nY8' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'VjLS1Mr23Gn8NSuh' \
    --namespace $AB_NAMESPACE \
    --userId 'TAV2KxaDxSjcYAki' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'y7nwDhJZWnz7e0vA' \
    --namespace $AB_NAMESPACE \
    --userId 'N8AdqKiNyyWMfJlK' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Iadi8DD3zQY3pmoP' \
    --leaderboardCode '["HL2HV2j2RNAjkSKU", "GvyW9qz0nYKlQ4F6", "VhaEWB4kurA5Zq66"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hDNSOHegKFyHX5qZ' \
    --limit '36' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eigYkrXeueIdD4vF' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '92' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'AhRljGvO2S4yOv0A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'WL6HyIuEtkklK3cg' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'Mlmxl6ub44RbDNaU' \
    --leaderboardCode 'otb9Z3SiGC99Biq2' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'Rfp2o86r3U9TI8XN' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PzNXW5uJOJYIyIF4", "N01GfZporKNkB08x", "LMuCCkFJ84WmqlqU"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'mDgOjYicZ4fJpauy' \
    --namespace $AB_NAMESPACE \
    --userId 'zPwDA0Moetjg79vt' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE