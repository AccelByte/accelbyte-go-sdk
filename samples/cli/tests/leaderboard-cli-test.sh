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
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '39' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "TxxiooCppWgh8kOX"}, "descending": true, "iconURL": "G6pelDC84UFdOobh", "leaderboardCode": "p6ITbzX9Fn7bV8M3", "monthly": {"resetDate": 42, "resetTime": "nEh2KqN7PLeqGwyl"}, "name": "KavnNJTAGV2kf0qM", "seasonPeriod": 5, "startTime": "S2B5jsXl4BY5MXJD", "statCode": "6Dfhhy5Gzn84SGVf", "weekly": {"resetDay": 48, "resetTime": "HggBIy0SK4jeCWSS"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'YUqrWOhCbQ6qWfIX' \
    --leaderboardCodes 'SfaEvJuPJgzavr4w' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["IOlvgeIM3Hbb1PIK", "EnhTZfCLE5JJwbBP", "cFbgFREztuOAx7P1"], "limit": 22, "slug": "6uesUM9kvSPBpBN1"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["XpCI7F90YvItTyBC", "Owx0LfJEhnTHT3Pd", "t2Iz62PI4F9PTCdh"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'vjjnZB9v8QD07F6l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'suvyV9x6GC3xr9mf' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "Vm0hsFpFvxE7E1vy"}, "descending": true, "iconURL": "XmsyrCsDl2rRmMJV", "monthly": {"resetDate": 94, "resetTime": "UVbo12ykUdf0sHUP"}, "name": "NJbq6QFi0kjcjLGv", "seasonPeriod": 64, "startTime": "nPKoP98VczTtassW", "statCode": "QI4gScXl7IMujpTM", "weekly": {"resetDay": 58, "resetTime": "Q2L5tTY5knnrs4Dg"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'xaTHWibsg5B7D0l2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'fYWazhd3EVJgvkbY' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'jWKvFwzwNPupyGjB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'Grs5VpgLjMaww9Y1' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '70' \
    --previousVersion '65' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode '8IqnuKfm8xCTVSvs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'xXJ3oLx7wJFJSZ54' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '43' \
    --previousVersion '30' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'f9Rl3KO6lui89hgS' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '45' \
    --previousVersion '62' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'sE4rMSZJqLrnFxXj' \
    --namespace $AB_NAMESPACE \
    --userId 'XoxKPFyRsKl7QP4N' \
    --previousVersion '71' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode '77nJV3RNkg3fp5Yg' \
    --namespace $AB_NAMESPACE \
    --userId 'ggTFk5FWeezsHyoI' \
    --body '{"inc": 0.16783368860488945, "latestValue": 0.05180896623373277}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'GaUmMXyiLUnlwmu5' \
    --namespace $AB_NAMESPACE \
    --userId 'Q99mtI0E31uP9CvF' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode '2dMvmUDD5rcQuj3U' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '34' \
    --previousVersion '38' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fjS9Hw4TY88neQbU' \
    --leaderboardCode '["sakDHgbJlHjAsPdM", "17NyQKSyUU40h1vr", "uC0aDWo7s21pi2Gu"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qdfCYk7MG55Lsh8l' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'GHgtDtlPde3prnPS' \
    --limit '56' \
    --offset '81' \
    --previousVersion '2' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '29' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "5sntHdDTkq63EINx"}, "descending": false, "iconURL": "Uarg2E8KZJthjqpu", "leaderboardCode": "qXCg4CVclQWmLZvc", "monthly": {"resetDate": 94, "resetTime": "ViQlhw1ab8HVoFDG"}, "name": "5BOuiaeECjS8iHya", "seasonPeriod": 68, "startTime": "I74aBQ9UEDeDAqxW", "statCode": "r3aK1fbIAEcYrknA", "weekly": {"resetDay": 17, "resetTime": "E5qfWP6SwsPs7nfK"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'yBrawv1clJv6mfNY' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'hPxWhOy78r9lOYuZ' \
    --namespace $AB_NAMESPACE \
    --slug 'Ovp4ZrqpbCLNEs76' \
    --leaderboardCodes 'X0uPSEeWaNdKtkTe' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'zsWvhxaK4ef5fLk7' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '99' \
    --previousVersion '88' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 's0pIHwZsKpVWt8mJ' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '90' \
    --previousVersion '49' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'WJklZBoOfZ5wsGw0' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '77' \
    --previousVersion '31' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'TUYnU5jwe81vHfff' \
    --namespace $AB_NAMESPACE \
    --userId '7bzHrvc0LF9GNYHe' \
    --previousVersion '63' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'bBTGS1RQynsihAVJ' \
    --namespace $AB_NAMESPACE \
    --userId 'uca96M25VogID7d0' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'jSUNJhG82wXYiPmV' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '59' \
    --previousVersion '61' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'y3JM8oqiXpHMJqYM' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '0ndJjwAUdiWmCraQ' \
    --namespace $AB_NAMESPACE \
    --userId 'yXMnxx6QT70DwyNJ' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'NAJa3cbMHj6UrSzz' \
    --namespace $AB_NAMESPACE \
    --userId 'dxCrP2yhI56MgsrK' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId '6WTuRkVarYHMfaz4' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'iOEUlYtswoSL9XOr' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '53' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["vsXtrj2POdonSde0", "JEiEg1JXmXNleZIp", "EMlNo9IS3rUD5HU7"], "descending": false, "description": "5O2w97Usi24gEqoz", "iconURL": "tc6H71lWffSZiCyx", "leaderboardCode": "L6WbnjUu676HJcek", "name": "IRY8tldqQne0k5Ml", "statCode": "sJKNVDtWFh7gXPWk"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["wn8iETAFtkuABIkr", "6VC7s7U5FVNqNEFN", "LQ2jHeE3WkbPCCEe"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'qr2LAaklYs2dA9SC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'EJ70TIDmQju5GkML' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["reO2htY9wqJ66emC", "LqveBcLvqxINe80Y", "q2VVh3g7E159eJYP"], "descending": true, "description": "lCF2itIh5bwUUk6D", "iconURL": "ag2H25MLKvjKtnjz", "name": "leJUl2NZemkYgz0c"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '1LI3SbeDmc6EQmxE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'EZRhj6pPQy5rqsE1' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'G4J4Rdr57W6cA6vA' \
    --leaderboardCode 'Bx1q2V5Z9XxyEUQq' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'Yej0eUaYKPQJuwAR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'VsySloMYAHQUudfC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'qFiADJEnC1INv8WV' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'TbYaNAmvBp6PrM7U' \
    --namespace $AB_NAMESPACE \
    --userId 'PrWwT2T4wwgaI6ik' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'XIXQlHP1ppIYzsqc' \
    --namespace $AB_NAMESPACE \
    --userId 'azGfcZpfgpXu9uWw' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'PQsPdEmeuNHWU3jR' \
    --namespace $AB_NAMESPACE \
    --userId 'JmiuZNvWNHA4HY4N' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'WaOKLqDKcuxWqHY5' \
    --namespace $AB_NAMESPACE \
    --userId 'xsWBoynVqMVnH9co' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GuHKwm3NoTA9b8lc' \
    --leaderboardCode '["fJkQbT443UFhaezi", "SJNj2u6Sq8MDxewQ", "dzur5ae19H2uKwfc"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GH5iHIrP87ohYDix' \
    --limit '95' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AGvuMG3IgBAVjHtC' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '61' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'mfra6Ly6hIjBVDgc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'vqbiSxWgY6Budbo6' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'ZLjpf11wyV78rMVQ' \
    --leaderboardCode 'akpGqsGhp8WjWxiK' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'pUsXq8gQtOmLSDxI' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["RY6CXb8hRwH2dRM4", "GoNYOfy1ubVtciZX", "2QSQrCYvwiBoaOlX"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'XYiU4ogmacMNQKzN' \
    --namespace $AB_NAMESPACE \
    --userId '8XQWtItC6yQsuBnr' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE