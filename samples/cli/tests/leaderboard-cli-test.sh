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
    --limit '71' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "cHcklDkb4yBHnfe9"}, "descending": true, "iconURL": "4C9vK4qQfwLIuP8G", "leaderboardCode": "egRrXCKPiqyNghT8", "monthly": {"resetDate": 25, "resetTime": "0ljxKI3AEnJs0kAQ"}, "name": "jcELsgN67OuUryYz", "seasonPeriod": 97, "startTime": "88YVwnhJ07MFvGSw", "statCode": "HYkDGi8uolyqPSvT", "weekly": {"resetDay": 57, "resetTime": "2NiXr4byi7EoF89m"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'ifTbA3ETIrgnpYj5' \
    --leaderboardCodes '8saBHJSkBCESg5XZ' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["fca7CXrnyL6UPLxm", "c6liN7SusAcYszCG", "bU71LKxgE4z63AE5"], "limit": 17, "slug": "Lt3RHdmB3cMSw9z4"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["bOwSpOT7IfYqYKrT", "2z74yxWt3k4Mi4zW", "OGIml1FbtBpdx3u7"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'hN7n6xtvNT0vSxG7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'pLocL2H1RuLQuPkF' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "oiumo6XEfVCOMDb8"}, "descending": true, "iconURL": "NYFEkxzhDxctevWC", "monthly": {"resetDate": 91, "resetTime": "0mP3vzfRTq0bpc7g"}, "name": "N4TG6hTjwQMFrrnc", "seasonPeriod": 45, "startTime": "3w7jROTLGyVf8HyF", "statCode": "xpOqiiRZrmXajzEr", "weekly": {"resetDay": 0, "resetTime": "DM0uT1gl3RFEhKXK"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'FZ0wGVlYVaiJFznU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '3bQ8Cj2T8IaRa3gA' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'hUzWqZIs3448HMRr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'svK5o8DXwuZCHHnY' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '80' \
    --previousVersion '81' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'p6C2SToQTyaUgYWx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'lLQq7lXXwDsyZrQm' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '12' \
    --previousVersion '98' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'L4RPs3vu1412Srto' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '53' \
    --previousVersion '32' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'eLq12v4zeLUVcWKl' \
    --namespace $AB_NAMESPACE \
    --userId 'IabnoLS1WegdG6Fq' \
    --previousVersion '67' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode '4LeWvXzQ6U0wn40C' \
    --namespace $AB_NAMESPACE \
    --userId 'vMAGyGmD9yLY34F0' \
    --body '{"inc": 0.9934753243031905, "latestValue": 0.920301033302203}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'XvmAVH8nBCLb3MW3' \
    --namespace $AB_NAMESPACE \
    --userId 'jxKghFUJ6gG8NGer' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'CvqM28xqGdjWDuoD' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '55' \
    --previousVersion '50' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'yMk5VJHmbeddFstB' \
    --leaderboardCode '["a5uUbAuG8VNAdQjS", "LNVr87SVOrc1YyYk", "QYt7dwUoW4gUcaY5"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Btvyqw7d13CAWRvV' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Oeb6Kzvd98ulGCRs' \
    --limit '55' \
    --offset '38' \
    --previousVersion '75' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '3' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "w6M04VsAJhombaSz"}, "descending": true, "iconURL": "cEe3f2Al7H7gS97u", "leaderboardCode": "kyQwB336J1wG2OON", "monthly": {"resetDate": 28, "resetTime": "pDOMddFOGWoT5LgL"}, "name": "jMPo3fZiDzfZF4Mh", "seasonPeriod": 57, "startTime": "BTMHtl5li1kWo0ao", "statCode": "BLmkCb18A17QSCA9", "weekly": {"resetDay": 11, "resetTime": "UsRLOoGRIe9lOEXj"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'X2TPM4somED0mwdk' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'sVkTdIKR9BIbGIKa' \
    --namespace $AB_NAMESPACE \
    --slug 'gzjxam8eAHgic8aj' \
    --leaderboardCodes 'g4WAG8txxdY7oCRg' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'Vt9wqkBiCWVh4U4b' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '40' \
    --previousVersion '45' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'EGKwjgcPg1A0vxkG' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '51' \
    --previousVersion '18' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'vXQ4Em46oEeQqnaN' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '97' \
    --previousVersion '59' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode '21nnKcRSuRChzeVS' \
    --namespace $AB_NAMESPACE \
    --userId 'CeurhA9nYrJBlJLh' \
    --previousVersion '40' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'oaEqR8j1Cp8IpL5m' \
    --namespace $AB_NAMESPACE \
    --userId 'IxGhsP6h7h1oeHQk' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'WoKuKDC4ks6NEyPI' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '40' \
    --previousVersion '78' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'NmwnmQpvZCyKpCay' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'DGBPMAdFxkjLuceD' \
    --namespace $AB_NAMESPACE \
    --userId 'Wlrlqct4PkspExD5' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'LqZ9fMS6xiHCVTKM' \
    --namespace $AB_NAMESPACE \
    --userId 'Fc1fhWSBagMnE0si' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'hXhvlEVoJcwLLEqe' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'AkQiQHaRxKctc5Ib' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '95' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["oY7htEX4eiTvgo4f", "jGR8zbC7fwegVusP", "FGtXIjrfKEly4srX"], "descending": false, "description": "K0hKpYjySk6VIOJY", "iconURL": "uOXoAIL3Y5lYwSxJ", "leaderboardCode": "dMpKuSxr3fxyfMmx", "name": "VIF3dGrNwTlBDGEw", "statCode": "NlKA0TtCXlQNpgC1"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["I5XUIkZdEuTr66vc", "L5xChbpTXbgqkEil", "Td84crc5zMn8PFKs"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'iiBoXv7taH9thd54' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'vD3YTamXVrJfyEH3' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["phJAS6zQG6QginTK", "ksN60T2QRgqTBDyX", "2CgyPqHt56zEIVkK"], "descending": true, "description": "byCchsEnJ28Op5EY", "iconURL": "Hbexpjp4jRmvYIhE", "name": "BlRcyYtceIQTyYxp"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'YkSb8Ty6jpIlAIMh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'cWiSB2y6xSs1ay22' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'PInme21DXyF3WiRD' \
    --leaderboardCode '6j9suKEcim5EEQaI' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'SQe1UPEhpYiMv6Go' \
    --leaderboardCode '16sFlrxStmiQwxzj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'j1o6e0VO4ldfDXSF' \
    --leaderboardCode 'Fk7gMHyxiEMlWGLB' \
    --namespace $AB_NAMESPACE \
    --userId 'lhuqpo2vWOqQRVtu' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'sKYa0JY66qnFUXGe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode '9BhoFgIjEr3ghe4x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'Q2JnH0PsEfqE0iLB' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'FamvkgHtQSiYdws8' \
    --namespace $AB_NAMESPACE \
    --userId 'Ct448ANAJ7IRfUud' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'NuUAFF8qzN5h2mWr' \
    --namespace $AB_NAMESPACE \
    --userId 'Sm8P7pIvqdJk64dh' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'bXShwA67y5fl0mAF' \
    --namespace $AB_NAMESPACE \
    --userId 'rAjxXvpxB2nzqEAH' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'XnErPyb27FMOXeeo' \
    --namespace $AB_NAMESPACE \
    --userId 'sL2DXHTFJswW3eYB' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DfTIXmf75XLFaewr' \
    --leaderboardCode '["t2tX2cYTyDUbmVKE", "FYDbuDOkcSF46wk3", "i4PooJcipAdOoZVV"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c0basFFI3ZolRsaZ' \
    --limit '96' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VDagitn2CWoEqCjH' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '98' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'e9tF2lZr9IGjJG7Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'xW3QwuUVXLVe3XfX' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'UQCUqtfoYjglV9Ec' \
    --leaderboardCode 'bIWSyYja7jUTpYe0' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'GvxweeY9KA4ciYhj' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["V2MqIjjdEbz8CMMR", "PLZ09bAgZjddJdjJ", "zYyfov84wRVGbKMJ"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'qS7n8dhJvbg8mHdw' \
    --namespace $AB_NAMESPACE \
    --userId '1mCgNyaRrMvL62Xg' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE