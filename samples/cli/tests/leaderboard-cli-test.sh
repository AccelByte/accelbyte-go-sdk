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
    --isDeleted 'true' \
    --limit '59' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "2IAMQMBz1iWu2yOV"}, "descending": true, "iconURL": "9UrqStaNQkGcz9FQ", "leaderboardCode": "9bZQ3Go0Itn2THjm", "monthly": {"resetDate": 49, "resetTime": "nrFIM1CgQX3WuiCZ"}, "name": "8NCgqxsQ8mLF3usf", "seasonPeriod": 0, "startTime": "ROVXclnCkEmkiP5U", "statCode": "EWeQ4PQFi2gIa2rw", "weekly": {"resetDay": 28, "resetTime": "VGUasAnXKfeCib5v"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'wjGDqWelnZEwkVst' \
    --leaderboardCodes '1qyvfb34fvvsZBwS' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["vA8xbJbD0bhnHCqt", "pMugoEMIIiGp6ser", "BFBcrHwKebQgQJ2L"], "limit": 19, "slug": "e59OtKjczh6JlmTR"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["QR81euxc0CKmHGmj", "YUNXh7vZMhr9PlHq", "9juD2PBRnklYTJiZ"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode '7PezBMnhZIztQFuW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'SwTtQQUV7t0q6yM8' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "pgsnLVRctUZod5xj"}, "descending": true, "iconURL": "fxlK8Kw6g9ScIeOR", "monthly": {"resetDate": 92, "resetTime": "CbDTkItsZuWpPu07"}, "name": "oWha10e06SlWBN39", "seasonPeriod": 8, "startTime": "CHdZrLiLyeEoUrFj", "statCode": "wLrgZgmc1Fi9sQ7e", "weekly": {"resetDay": 69, "resetTime": "rSTi5vCulwDPJYnR"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'mhTTzbKNK3Y2L665' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'peu0nJ4gJG76dBp4' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'SzAR2Up4EOxLzUpL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode '9blNfL7xScQfDH8x' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '12' \
    --previousVersion '61' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'MbYYP4DHSLvD8iuZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'rSEAQvsOtq1eHG5x' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '21' \
    --previousVersion '13' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'CR5vnvTI6B5H8IFp' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '54' \
    --previousVersion '9' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'WCvP5cBPaA1atrje' \
    --namespace $AB_NAMESPACE \
    --userId 'f09wKyZDxAiBeRWj' \
    --previousVersion '12' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'yblQUUfqvaZ9V5Tx' \
    --namespace $AB_NAMESPACE \
    --userId 'S0Zl7PM93gqBwVhX' \
    --body '{"inc": 0.11499923392875422, "latestValue": 0.418134881883546}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'o8J0tUwcXENlqxNG' \
    --namespace $AB_NAMESPACE \
    --userId '7h1S5V2wMMt4Cr6F' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 't4kaPpoYfF4ta3Xp' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '51' \
    --previousVersion '33' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '1KbW6Msf6oyUQ6yz' \
    --leaderboardCode '["vV2goj5SqO0395cH", "GZoclfytsKrVzpDT", "vd9A7SjGduOmFDo2"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '7bzitwAkz2niWx1c' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'unDl3jbh36uTHBNQ' \
    --limit '30' \
    --offset '80' \
    --previousVersion '5' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '20' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "dSBwLv9rHUXeAkkg"}, "descending": true, "iconURL": "1hKRIJbRhHM2P7yG", "leaderboardCode": "hjioJgwS3EdgaM2B", "monthly": {"resetDate": 25, "resetTime": "mJUDP8ycbZWmTBUj"}, "name": "xJDPVE7NWB9twVO3", "seasonPeriod": 9, "startTime": "hOgn2KLbGJmjRoFx", "statCode": "F7pGgjjrdUsJ8d4I", "weekly": {"resetDay": 18, "resetTime": "sav5QiJdy81v7rOS"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'GhIzaEnA01b2eOEp' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'iIAxCsbkX50t0kip' \
    --namespace $AB_NAMESPACE \
    --slug 'oOuZjnLFN4RqpBXT' \
    --leaderboardCodes 'jNXlNuSZOPnYza5M' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'FZ3CfZtE6TPfA0Gw' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '82' \
    --previousVersion '80' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'oEnwHZm9lVrTsEcI' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '22' \
    --previousVersion '60' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'gsCfKTEWofc78qPx' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '27' \
    --previousVersion '43' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode '8CYIgwmmAF4uPA05' \
    --namespace $AB_NAMESPACE \
    --userId 'YTS2EP37lVerL97o' \
    --previousVersion '66' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'w5WPBTKTLUkDHMCj' \
    --namespace $AB_NAMESPACE \
    --userId 'RAVcfOZUu3oXhoO2' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'HTNXs6DmntV5IKNU' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '73' \
    --previousVersion '42' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode '49tLFcPryrweZ3Tu' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'OiAA5ovnTC8pPgYN' \
    --namespace $AB_NAMESPACE \
    --userId 'oeXfRKXDTA6ZdUmd' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'UrX2xT3LM9rIRO9Q' \
    --namespace $AB_NAMESPACE \
    --userId 'djm6NTabFNinTywj' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ZEVCYMv6YRokmAFK' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'B5XbHeMxBcm0vF5F' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '63' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["2H0uu0XP0WLFuL37", "rZrXgbidRdmQwoWY", "ajg5d7HXsWo98RTs"], "descending": true, "description": "N94tfNtC4b0EX4So", "iconURL": "NGv1ebvSqKeSXU1G", "leaderboardCode": "N0lJJEXAN8oGzGvi", "name": "8nni95yNw3uwVAaa", "statCode": "cKWCHxSFBRgiaD1b"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["M8LqFP3Gyl0Zd6WW", "2OWIYHsXYPiKUw2O", "wlCneFcAdAjRxUjS"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'QN9b0HjlpMvm6YS4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'RL9DE0KcfhvTXhXN' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["puR01FSFxeaSrDZW", "dXzmZ6LAGneXe7A0", "j3DrtPCXbW6WpRDn"], "descending": false, "description": "QHjtQti5CBLDs9Dd", "iconURL": "mQTIt2o1dJlvrCxI", "name": "QMzkrkuPBNJS4pl4"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'tlPPbcpEKvuc2c0j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'uSfUZMeM6l2UbdXc' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'NpEv1pT5uD0ECiHX' \
    --leaderboardCode 'qbnWMkFj9e22EqrR' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'Mx4mbuJSfdz41T5m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'XRrhrfj6svWrDeuR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'JyeDow3ZOGdtHLMZ' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'Z7q1QXBFeRZkKPTP' \
    --namespace $AB_NAMESPACE \
    --userId 'iO7tncOsq7EFN5Tl' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'IhJbJaArIn5maUvB' \
    --namespace $AB_NAMESPACE \
    --userId 'v8WLTtTyf9ygY14Q' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'mG6DikHrMLV2ME8a' \
    --namespace $AB_NAMESPACE \
    --userId 'CdwLeEHjlZczkm8w' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'BZuGYWd5NSAj1GQn' \
    --namespace $AB_NAMESPACE \
    --userId 'QHJZlxDUz4GUGaZ8' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wh0F3U7FhMsNDfi6' \
    --leaderboardCode '["2jYiSbtYnmnwzQ11", "6HQwZS2RxhZoq93x", "xZk5EFpbLkH1HOIp"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JbT0XECSSQqtt3qq' \
    --limit '57' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iA2Fs8Hx1jdAFRLu' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '35' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'QVeOsQFnT9Gj3ctF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode '4Ww3HGLFfwki7KzL' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId '9CLyhsxamVt0UvfO' \
    --leaderboardCode 'vpRoDhvKGtiptY8O' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'QoEbfMqeQmwGcLSe' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["3xwnlTmQr9X5sC7W", "QHuX8K7RIfEhdhYr", "dBjkY12wdvtUbrGO"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'NqsaCRK5ekXiNeXR' \
    --namespace $AB_NAMESPACE \
    --userId 'cR0wYV2LAlpKrzOy' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE