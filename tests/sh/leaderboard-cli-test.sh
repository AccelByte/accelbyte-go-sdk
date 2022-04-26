#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: go-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"

echo "TAP version 13"
echo "1..35"

#- 1 Login
rm -f $TEMP_TOKEN \
    && mkdir -p $(dirname $TEMP_TOKEN) \
    && echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 GetLeaderboardConfigurationsAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV1 \
    --namespace 'FtBxyZcD' \
    --isArchived 'True' \
    --isDeleted 'False' \
    --limit '65' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --body '{"daily": {"resetTime": "sQuJu8vM"}, "descending": false, "iconURL": "0IsJkTrd", "leaderboardCode": "8IDcV2zX", "monthly": {"resetDate": 27, "resetTime": "TKjXY1bP"}, "name": "qamiBxx9", "seasonPeriod": 57, "startTime": "s18EY84e", "statCode": "kItqRzHU", "weekly": {"resetDay": 28, "resetTime": "h570KQBV"}}' \
    --namespace 'aewc72kr' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace 'Sha68n3Y' \
    --slug 'nozp1C2K' \
    --leaderboardCodes 'mIQTuBdN' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --body '{"leaderboardCodes": ["EUsxFb8C"], "limit": 70, "slug": "17M7DJZa"}' \
    --namespace 'MSxECbZb' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --body '{"leaderboardCodes": ["ygyoarOR"]}' \
    --namespace 'oeNHSb8R' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'h3kgs9qq' \
    --namespace 'JbnQsoBg' \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --body '{"daily": {"resetTime": "iVpP8Cm3"}, "descending": true, "iconURL": "vASUoxdx", "monthly": {"resetDate": 46, "resetTime": "FqmAGTJ8"}, "name": "IEdagEtp", "seasonPeriod": 44, "startTime": "29KOu9c1", "statCode": "9R6XDqWH", "weekly": {"resetDay": 20, "resetTime": "kP8npLEK"}}' \
    --leaderboardCode 'MfjiX7jp' \
    --namespace 'kVZk3IaQ' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'YEmqGodO' \
    --namespace 'EGt9gPOj' \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '0c6i0Jkv' \
    --namespace 'Ias73ucY' \
    --limit '27' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'AJ3DK5T4' \
    --namespace 'Eogg0Y39' \
    --limit '93' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 11 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 12 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'Ylpv5bVA' \
    --namespace 'gtsDhUTD' \
    --limit '93' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 13 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'cbQDjbTQ' \
    --namespace 'uPMz2PTR' \
    --limit '23' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 13 'GetTodayLeaderboardRankingAdminV1' test.out

#- 14 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'yU89ZPOw' \
    --namespace '6zPFJ42c' \
    --userId 'wmzBBSMN' \
    > test.out 2>&1
eval_tap $? 14 'GetUserRankingAdminV1' test.out

#- 15 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --body '{"inc": 0.03649277405533169, "latestValue": 0.41676165470898596}' \
    --leaderboardCode 'OjKNjfcY' \
    --namespace 'Hm093aYg' \
    --userId 'BU1sqjyK' \
    > test.out 2>&1
eval_tap $? 15 'UpdateUserPointAdminV1' test.out

#- 16 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode '0XH45PaR' \
    --namespace 'SOFQBtu2' \
    --userId '3REZ8hRV' \
    > test.out 2>&1
eval_tap $? 16 'DeleteUserRankingAdminV1' test.out

#- 17 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'X7LGOvDd' \
    --namespace 'YiQS9i7m' \
    --limit '94' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 17 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 18 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace '91pjG9gp' \
    --userId 'xL6ycTQd' \
    --leaderboardCode '["vln2LAuS"]' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingsAdminV1' test.out

#- 19 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace 'QWEXL6LF' \
    --userId 'E1YHo9m1' \
    --limit '96' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 19 'GetUserLeaderboardRankingsAdminV1' test.out

#- 20 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace '8hHtWvbN' \
    --isArchived 'True' \
    --isDeleted 'False' \
    --limit '92' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 20 'GetLeaderboardConfigurationsPublicV1' test.out

#- 21 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --body '{"daily": {"resetTime": "slArFPiH"}, "descending": true, "iconURL": "aCv8kU9d", "leaderboardCode": "BBpdsJLh", "monthly": {"resetDate": 37, "resetTime": "VyExrkxo"}, "name": "ot0B7WOf", "seasonPeriod": 8, "startTime": "rcZdpMci", "statCode": "37Ds7YSf", "weekly": {"resetDay": 61, "resetTime": "xaI3uzLt"}}' \
    --namespace 'eMbFAlt4' \
    > test.out 2>&1
eval_tap $? 21 'CreateLeaderboardConfigurationPublicV1' test.out

#- 22 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'hr7HmOYi' \
    --namespace 'BA5ltAOX' \
    --limit '25' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 22 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 23 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'G6eh1dTd' \
    --namespace 'oTFpBIcu' \
    --slug 'C1dQY93O' \
    --leaderboardCodes 'JnJ6Te9v' \
    > test.out 2>&1
eval_tap $? 23 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 24 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'D8ldz7Hu' \
    --namespace '8AD79kdW' \
    --limit '41' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 24 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 25 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'vizU0q1p' \
    --namespace 'HyhhERoG' \
    --limit '12' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 25 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 26 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'rysMizBG' \
    --namespace 'SRdP2l7D' \
    --limit '79' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 26 'GetTodayLeaderboardRankingPublicV1' test.out

#- 27 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'Z8Aq0XiP' \
    --namespace 'LQXSe07Z' \
    --userId 'ddOGTMlJ' \
    > test.out 2>&1
eval_tap $? 27 'GetUserRankingPublicV1' test.out

#- 28 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'jBwj9HJH' \
    --namespace 'QKseEdSX' \
    --userId 'RDSvguau' \
    > test.out 2>&1
eval_tap $? 28 'DeleteUserRankingPublicV1' test.out

#- 29 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'w1xT7eMw' \
    --namespace 'Sl9MLH0N' \
    --limit '27' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 29 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 30 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'J2ulNzBv' \
    --namespace 'wJaQa547' \
    --limit '71' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 30 'GetHiddenUsersV2' test.out

#- 31 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'lvA8RWSp' \
    --namespace 'abUt7xk6' \
    --userId 'QxyWhfqo' \
    > test.out 2>&1
eval_tap $? 31 'GetUserVisibilityStatusV2' test.out

#- 32 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --body '{"visibility": false}' \
    --leaderboardCode 'Jw2o8oWU' \
    --namespace 'qvPCZ2Hz' \
    --userId 'T7NXmWDl' \
    > test.out 2>&1
eval_tap $? 32 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 33 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --body '{"visibility": true}' \
    --namespace 'uNIdQJR5' \
    --userId 'lsNOlvkf' \
    > test.out 2>&1
eval_tap $? 33 'SetUserVisibilityStatusV2' test.out

#- 34 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace 'waSbnsuL' \
    --limit '57' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 34 'GetLeaderboardConfigurationsPublicV2' test.out

#- 35 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'ToxuVTek' \
    --namespace 'Jgvg6h5H' \
    --limit '68' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 35 'GetAllTimeLeaderboardRankingPublicV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE