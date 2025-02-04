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
    --limit '74' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "SPCDcZ6bw4bXAHtz"}, "descending": true, "iconURL": "zlCRuzhr8vSztxEc", "leaderboardCode": "0ndUE9DhSmVdALfb", "monthly": {"resetDate": 24, "resetTime": "AfGTohr2EqcdmhPf"}, "name": "3E9fT9l7fwVad4mx", "seasonPeriod": 58, "startTime": "Hkzj6BQhgbdZ0dd9", "statCode": "ERhyntHMKWoCDD5P", "weekly": {"resetDay": 7, "resetTime": "YzachlC3rp9Nx0a2"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'g1aNMlIGWHQwvdVy' \
    --leaderboardCodes 'HSV1uxHlS15ML1Hv' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["ALN6DxsekfzNOlh6", "LxB4I5QoMRUQs5Hh", "SaVkXvBXqBbvmcS9"], "limit": 0, "slug": "VVuHSYNu1rYeHnAN"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["5KaYMJWTKsFZJlI1", "4PF78qUmCgQXONty", "yCtDBLAwYiGTo6HO"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'Y8lPjqTmZmAEcfH8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'xWlxxYU8maFwRYOQ' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "B69yarY7H4E1Blm7"}, "descending": true, "iconURL": "kpYBGmnSk4RvxGx3", "monthly": {"resetDate": 36, "resetTime": "LWHs4Eo0sRS9iugz"}, "name": "R6hO5exL91c4VXt3", "seasonPeriod": 0, "startTime": "Sz6FSPN8hxl4JbZS", "statCode": "pXijRMS7EBQRNQjd", "weekly": {"resetDay": 1, "resetTime": "2xZ3MFgiTrIeyWlh"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'Au34Y28PtORJx3qf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'jYcrdXa2luUyUU7k' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'DRIPuFFBtMiKuYEH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'CTz9MjCkP8F4OlkR' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '40' \
    --previousVersion '20' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'vma7rHhXIKfDEQcv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'eXCcn7V9WzGeelDR' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '30' \
    --previousVersion '53' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'r8vLS5EVI4Gwzfb1' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '45' \
    --previousVersion '10' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'TFJTfP4aJqWTRfZt' \
    --namespace $AB_NAMESPACE \
    --userId 'lnEG53xGWnhsmFgJ' \
    --previousVersion '61' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'rUtvcZlWT1G5YUMQ' \
    --namespace $AB_NAMESPACE \
    --userId 'J8Y2eAkSUstVZJAH' \
    --body '{"inc": 0.6011707877771804, "latestValue": 0.7694676630526994}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'ZA73NnxF0nEtJBjE' \
    --namespace $AB_NAMESPACE \
    --userId 'Xd8hOkmlYPuKm6Jt' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'e6otSINynzypbxtp' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '51' \
    --previousVersion '51' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'iaHqh2Qdqi48347o' \
    --leaderboardCode '["8hTntv2rOGOHILKn", "ADl23mknl1kkvjkE", "BLIYjzMssAIjP8QI"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qnkfYDXzNmz52fpR' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ASZh6ndrC27Em5vz' \
    --limit '79' \
    --offset '0' \
    --previousVersion '61' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '35' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "9H1VWiOkf6QUnRLD"}, "descending": true, "iconURL": "klc25gpC9AZBJmBp", "leaderboardCode": "VYJpbHfcvJfJb1vx", "monthly": {"resetDate": 85, "resetTime": "4zgLpvtpboXPOeYX"}, "name": "p5dSEtSSlI5st0N7", "seasonPeriod": 93, "startTime": "NI1IM3wDiocxnKQS", "statCode": "yFcZecwSy7872TOF", "weekly": {"resetDay": 46, "resetTime": "wdeFh7OAgFESJ7R2"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode '5lAk72hRV21MiWmx' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'YcQax1oqukRxmyJE' \
    --namespace $AB_NAMESPACE \
    --slug 'BHI9A51WitMXrdTS' \
    --leaderboardCodes 'Mv0VHJMKdfv0O86q' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'DGxKuDTUJc1WEFrO' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '90' \
    --previousVersion '17' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'XrrRRNeTat97bWyh' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '29' \
    --previousVersion '43' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode '5ULyNboS1oSTQpaW' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '41' \
    --previousVersion '97' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'wiwJGRQqddsr7HNq' \
    --namespace $AB_NAMESPACE \
    --userId 'KXtCjiKoTqM1BUKe' \
    --previousVersion '49' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'ZHz7yD8z7Q2BUNiL' \
    --namespace $AB_NAMESPACE \
    --userId 'jHubjuYRAxWLIuzy' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '8h1azGYT92hAwDXs' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '32' \
    --previousVersion '70' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode '0jNWMUrYoiYtFDDd' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'IFTqBVV3UWivcvQJ' \
    --namespace $AB_NAMESPACE \
    --userId 'lDQ6yLGJewrY4IwR' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'VJCVuoF6oZHlUXp5' \
    --namespace $AB_NAMESPACE \
    --userId 'BbR9vY2V4MWEtODO' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'DIf0RfRqSoM6QNRU' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'W3hFwC8b5xfQVtcQ' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '79' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["YKWTFBGfHuvNZrUC", "bLpMwrqmc80cgxJc", "aJwNWUoX3QechKRU"], "descending": true, "description": "vGq1ERtsRE2Rbz3C", "iconURL": "kP8mKzs0FLoChlR9", "leaderboardCode": "iO2zOCcigSS8ymNn", "name": "bt4hK0yMpFPmwxSM", "statCode": "cyRQ1306Yq2vPCTI"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["LYJo4hLYpY6P1nqB", "wG28sjNLlh5OwdfV", "sejTFeJxr8SMZXAt"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'sd5T9lvqJ4W4qlff' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode '6TZKm2aYCEKNoWYY' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["i4HfETGuBQhCOuu2", "6H5I1udMnCDf1z5s", "WkDV9oUzAY4ficBl"], "descending": true, "description": "4jbkeZhaf6DpLRYs", "iconURL": "6FjAOty4O0UJKqNu", "name": "GET7OvLW6X98jyKg"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '764yhX4As6xrMO3B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'uVu9Fp35hCUwcNuW' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'pwTpIAye7OOnaRr1' \
    --leaderboardCode 'Knh5OgDbViTGmhAO' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId '4aSf2V6oSlIqtwBF' \
    --leaderboardCode 'YLSjuylHy1RsW1Bi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId '7DKmdlX8MsJuylHT' \
    --leaderboardCode 'MHfSv6uqhXS4JzCU' \
    --namespace $AB_NAMESPACE \
    --userId 'owwC0u9EBc5MIPco' \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'TsENI7h7qkA3wHmU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'vwHwcIACH6AWyPth' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'WFJh9mV3QzDswC0G' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'roEDNxcFUYgHRQ5L' \
    --namespace $AB_NAMESPACE \
    --userId 'I0QQAHaym12be66e' \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'WjPUSavRDZ7rCE2D' \
    --namespace $AB_NAMESPACE \
    --userId 'tHI08XW3OP3qM2e8' \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'oT6yfVzqyjkLOrbx' \
    --namespace $AB_NAMESPACE \
    --userId 'CdH2vtHdnJWeTIrL' \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'NhySio3eQhmBsezB' \
    --namespace $AB_NAMESPACE \
    --userId 'G9a67hUUQT88WokN' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SdxkyiHDTNtZBCBd' \
    --leaderboardCode '["U0WwgKNFyqTiRTJc", "bNf8GxV40p7o5Q49", "C0JpoBjemRWId0RG"]' \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lsM4FtO3qzfQJh5T' \
    --limit '45' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ntqmLszLl0sV0ggM' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '10' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'mpKEQIKx5DvsXCJ0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'SKTE3bbUGXkqYgVd' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'hluvfpqIHAfWseCA' \
    --leaderboardCode '4LewXFAUxtsyltUt' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'wXeMC9VFZpqo7DZk' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["m97dlc4vHxQA5ZpC", "GdrTRM1uZsUlWo3e", "iyGQf9tfirkKmG1w"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode '55bayynyrN1FEqD0' \
    --namespace $AB_NAMESPACE \
    --userId 'oYjYYLj6AqeaA2S4' \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE