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
    --limit '99' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "RhhW79fSBTTBwHFM"}, "descending": false, "iconURL": "8VlBC1BLklfkCZ5B", "leaderboardCode": "cDvPvsxfeusCrnil", "monthly": {"resetDate": 81, "resetTime": "oLOXu9WGFeBaDjCT"}, "name": "vMuuQpiMFV9ZBdjz", "seasonPeriod": 31, "startTime": "KIMrY7G3nHBljQQe", "statCode": "Rxmuktc61pkDQ85i", "weekly": {"resetDay": 5, "resetTime": "jo6tNH9Nt97YwsBA"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'dN1k9A3v0LLVMp8a' \
    --leaderboardCodes 'FeOnOKa1oIglOHBM' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["P2PikoDclW0aPHay", "3N2ExDdPxEqPXZuY", "XexYv1PFgv6Wyj1g"], "limit": 56, "slug": "KfpkrdVhmgpVso20"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["Xiv3LPNvueedQJxO", "o1vPvsf7D7l28wOB", "chBad027RgqpOkOw"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'RXnbygwr3m1rMpTN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode '13ieFbSypIyeODcz' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "EqvKPDGacXv1pDdW"}, "descending": true, "iconURL": "QoteenGLu1MntQZw", "monthly": {"resetDate": 93, "resetTime": "yiFqvWvwnchdeB9O"}, "name": "Cke3sOA7Z7fPnEBq", "seasonPeriod": 42, "startTime": "mpOSPSiYZp7l9lEu", "statCode": "NVKacawBIZH6PiDp", "weekly": {"resetDay": 48, "resetTime": "Sj1Xv0wdkrXqQw04"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'MpDleJkQS74hIdGu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'OowUSxu2c1k9RQJq' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode '2diIKt3gIwkES6cN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'zWiwjVl6osAMnek3' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '73' \
    --previousVersion '72' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'J51pNiqjnsa6cILu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode '5QrrPTJCAxHhP6HD' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '87' \
    --previousVersion '87' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'N0TSBCRcJsUYg4D0' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '72' \
    --previousVersion '55' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'rFIObEb1zJlJs8ou' \
    --namespace $AB_NAMESPACE \
    --userId '7DDZef8KEKSs15NK' \
    --previousVersion '54' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'f1k36VbSJm89sguL' \
    --namespace $AB_NAMESPACE \
    --userId 's5RmMusCpmgusiIU' \
    --body '{"inc": 0.29570581006816865, "latestValue": 0.9895655366758513}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'vdsme366iM0YixFk' \
    --namespace $AB_NAMESPACE \
    --userId '1NFEe8C5nhKwAEg9' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'BNqTovajpqaPrJRN' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '84' \
    --previousVersion '60' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'foQTMTrrpxBRWMzq' \
    --leaderboardCode '["bRyIMsy0KY1TWny2", "X42A0pl1c9vYSE0M", "xCUBBvkIiQOxKlhU"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'x716710cmrPvm1fA' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '7DVUSnQ8xIy0YL1O' \
    --limit '5' \
    --offset '44' \
    --previousVersion '75' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '98' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "gk2mzRD0bB1Nip0Y"}, "descending": true, "iconURL": "d86cZ12CckV3SuGf", "leaderboardCode": "2XKtUglgGKCwHErf", "monthly": {"resetDate": 1, "resetTime": "3y8EG6I2vXClOwnL"}, "name": "dBt0DOXiW1josS49", "seasonPeriod": 76, "startTime": "p0CVMysoGiO3XnBm", "statCode": "xNTaC7HwQXD9bA3z", "weekly": {"resetDay": 8, "resetTime": "w5PHb0WDorvOifpd"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'mniBVZv3mURdS712' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'XC5ZE5Wg6pfY87y0' \
    --namespace $AB_NAMESPACE \
    --slug 'TOLsj83nSso8dztc' \
    --leaderboardCodes 'MSmBcPzX8hSCrUm9' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'mTB4sFszTMqP4QQ5' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '14' \
    --previousVersion '12' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'A7b0gXzYPcnaynE6' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '34' \
    --previousVersion '50' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'TDZ08Vr9cOm2ARmL' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '60' \
    --previousVersion '85' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'rBtbkzaayno5yd65' \
    --namespace $AB_NAMESPACE \
    --userId '6rL5KFtpfcdGfaI2' \
    --previousVersion '28' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'uu43hFCCF6ScJ5A3' \
    --namespace $AB_NAMESPACE \
    --userId 'GEqlCv34gAQtAlrc' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'AzrBhHT7qEMWnfua' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '34' \
    --previousVersion '53' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'GKp4tBkH0XiZNgXE' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'FmW3MLhVY0u30roT' \
    --namespace $AB_NAMESPACE \
    --userId 'hqrhvbAspBHCSPYQ' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'GRY8AmseooSpHl50' \
    --namespace $AB_NAMESPACE \
    --userId 'rHLTzd097ejJKRD7' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'R0FxhyNuCpLsKRiF' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'Es4HYjaitNQYMTAs' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '23' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["RilcCulwhTeA7iC9", "al24U5Gx89ti3mpL", "dBFlVlRZKtMeiwGp"], "descending": false, "description": "O5C2hydMv4TkpH2w", "iconURL": "zmSaCQ7w06qBTthf", "leaderboardCode": "RfmubunHf57jfEee", "name": "TCE5jNDTqjxGeiUT", "statCode": "UcZxHKmR20xtwnT6"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["cVnLxeW6RRY41HXp", "Y6cMVCPH6ima8afA", "cIfxL11WST9u6vAs"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode '1g3acKIwSJPIShrK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'RAc3ju2tsUpSL7t3' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["GMPLBYgDL1dJ2LsA", "iS4KOHxKD8a2cV4P", "FuAleTSOvWJUW8XJ"], "descending": true, "description": "NBOspMlxh1jmMpKy", "iconURL": "trmsktOTMxWQ8lak", "name": "tfdHswuDmOcgmPqN"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '1ks3FEFqGKnn57DC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'Mc4djlgSyCrqQLVQ' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'Y2S9QoDyIxxHZOiU' \
    --leaderboardCode 'RiZImWhnj9I1PeDW' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '36' \
    --previousVersion '6' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'mj7ttlsmSY90dHq1' \
    --leaderboardCode 'ZpWbkZjZdNMEvuDF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'mlZF14ltzZZDiyN5' \
    --leaderboardCode 'NtWe81wtvYebwGgR' \
    --namespace $AB_NAMESPACE \
    --userId 'uvw75v0kikPRMfQj' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'ZEojHRZi6gXte8Yh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode '1qIAW8tyBWkWR3bR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'IFeBzOBacsGSaiO0' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'yN0sL4FtcBdXTgw4' \
    --namespace $AB_NAMESPACE \
    --userId 'Eu3qii5jDEyGKofw' \
    --previousVersion '70' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'q4lCeGewmd2DJL5s' \
    --namespace $AB_NAMESPACE \
    --userId 'xwkKNylSVurV43dj' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode '60HDsLJTXPpYYcEe' \
    --namespace $AB_NAMESPACE \
    --userId 'gmLw6DWF7wIbCnHq' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'qtkUm6hVhybQKDoh' \
    --namespace $AB_NAMESPACE \
    --userId 'FtsQ49OjBroHsl3C' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZjmCJf8EsJZEGtHo' \
    --leaderboardCode '["sOgk93OHKVB5f6Ll", "JgUOyGa6jmZcAD7k", "3SS0f5SUeuWRg89n"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'A3SBve81CkB6AXZJ' \
    --limit '50' \
    --offset '28' \
    --previousVersion '35' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'L4mt2Hn8INHG3c58' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '50' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'bL6ghOzo66368HjC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'd41YnrpCGIwJxgEP' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'xQJRuUeHJ1EyrSTP' \
    --leaderboardCode 'nIDBw3FKAokEDHbF' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '73' \
    --previousVersion '87' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'RbFucdWREcf8zsiE' \
    --namespace $AB_NAMESPACE \
    --previousVersion '33' \
    --body '{"userIds": ["ex2bmwyX5wfiJJUD", "CxBp2x99jn2jayGd", "E8j6JvRWAceoH3QA"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'ThVmR7NmbfG0jCWm' \
    --namespace $AB_NAMESPACE \
    --userId 'KN47Cy73SyV3UvAu' \
    --previousVersion '66' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE