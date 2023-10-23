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
    --limit '58' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "h1tPIVAZs9zrD6l7"}, "descending": false, "iconURL": "xiO1n4Gc3klYc2Va", "leaderboardCode": "Ihu6ILt9s80cUZYO", "monthly": {"resetDate": 52, "resetTime": "QmRQI0Kjx9Xzx4yK"}, "name": "SRvHdZCImASgYEti", "seasonPeriod": 49, "startTime": "jKEwHSc3iNNTJZbu", "statCode": "FAhk38B2whJ0fHoa", "weekly": {"resetDay": 41, "resetTime": "er6DCwuBa815UTVX"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'zZugyohC4HYyxNRD' \
    --leaderboardCodes '90YXi58d7H7NKqi2' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["PEaE1D0Qa5Qf1jkw", "Gkcm3wXruRGnzdFB", "vlvolyT0lzvph92V"], "limit": 83, "slug": "Z50f46hCoNU6dRML"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["PDWTy50cNzuGeFhO", "rgDPycycpV44HIZN", "tsUtYldfL8Ghw7H4"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'bAnJ5T4aQnmG3ZTx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode '7Gl2U3xTLONuGV3Q' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "r18WEbYu3kAHaTYU"}, "descending": false, "iconURL": "gDP9b6kaBNCKJCsf", "monthly": {"resetDate": 55, "resetTime": "JBSmwcROYXlXXgG2"}, "name": "k4bsfuXw6EU7fNNd", "seasonPeriod": 73, "startTime": "coTxYSZjickhVsJX", "statCode": "SGIBK8QOh70ASdq0", "weekly": {"resetDay": 59, "resetTime": "NvFZY1aLMKDQDZw4"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'zGDzafVVqVZ9jgXN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'Dlx5mUvV9tRAYkEp' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'cKuKjWEa1cMNw6Hp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode '0usMrumcjpRhtkmY' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '20' \
    --previousVersion '31' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'DEUgcPe8UkwWFtL2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'DmgjFyVFea1qgyUL' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '33' \
    --previousVersion '31' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'QISgKJeFKD7qrEIz' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '56' \
    --previousVersion '59' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'scmgncOpBxNjk0Xt' \
    --namespace $AB_NAMESPACE \
    --userId '9pyyz9Ck4b3ItPy5' \
    --previousVersion '77' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'XKndMeCUBPQaidit' \
    --namespace $AB_NAMESPACE \
    --userId 'Ke2oGJSfJxQrmYtF' \
    --body '{"inc": 0.13833715457699558, "latestValue": 0.5160269617054934}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'ByfcIilot9BFNEXs' \
    --namespace $AB_NAMESPACE \
    --userId '44jUD0iHkBuqnrLs' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode '3vnHU8UxronSh6qE' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '34' \
    --previousVersion '88' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ixZ5an8FEY43XwP2' \
    --leaderboardCode '["TLqAYUvjtkZNQ5hP", "C5MfsUU3FFTDam1H", "E7i8JWcghjZjaXiE"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nr1SxCJ1enkey9we' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hgpAADObwldVKjHj' \
    --limit '37' \
    --offset '63' \
    --previousVersion '97' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '32' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "C1dLYV8qRz4TVOPd"}, "descending": false, "iconURL": "4MwPARiIFluAKXBh", "leaderboardCode": "NucB5nLDcLoVdOMc", "monthly": {"resetDate": 10, "resetTime": "drSvw07c1w1MlcVT"}, "name": "zbqhYslNwtonBsyV", "seasonPeriod": 56, "startTime": "nlAsQSvI7by3RGzL", "statCode": "u1N0qbXsydHINgvj", "weekly": {"resetDay": 42, "resetTime": "wJ26BuoEiJ3w3ebc"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'zibJzsQZzSLGFs7N' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'a8AJJaGeRCIOfvpS' \
    --namespace $AB_NAMESPACE \
    --slug '7VnQ0sWuXtqhUP6J' \
    --leaderboardCodes 'dTOnABMWG8gfdigw' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'bdyKoM8NGv7onRJk' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '5' \
    --previousVersion '80' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'S2wS7j17z5STw0qB' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '69' \
    --previousVersion '0' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'd7gDQiEfn91zWaaW' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '28' \
    --previousVersion '46' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'iY0NOOC4bRQp9FRE' \
    --namespace $AB_NAMESPACE \
    --userId 'kC1KYovulBw3cYUU' \
    --previousVersion '6' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'eJouggBUFmElQcN3' \
    --namespace $AB_NAMESPACE \
    --userId '5e9Kuz0BwIWmMW3L' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'ljkSVRZpMPwuNrH7' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '14' \
    --previousVersion '74' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'BCpZ8FfKlqlrcABu' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'veMEiXwUFJQnFHSU' \
    --namespace $AB_NAMESPACE \
    --userId 'jsbRfGBBE1K62Yo6' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'FiQeKVNcxilg81RN' \
    --namespace $AB_NAMESPACE \
    --userId 'KMpM99YeZBHTDIS6' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'IB8QlXtgiY9d0dL9' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'Uf6zMOiPbzYJmJTO' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '29' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["DvhP6v87GXFoawrI", "twVZjhQd7VJ6U0Hm", "S67HPk7xRZ0ObHbe"], "descending": true, "description": "86dLbiUH6BAK8YCb", "iconURL": "5xGj4v5HuY9z4GyE", "leaderboardCode": "eb8laLbpctbIgRnc", "name": "BAYF9nzvg2djxxfe", "statCode": "psrwCBYFJIacHuhE"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["LsvkFbUQS2ubuvAa", "qLjaI7SFz06WC8Aq", "AqcdtVAjBrDLxmeY"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'Blj344ZxMuVdmw8V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'sTza22b18VEKaDxZ' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["56cj2XU8A6YdsNyi", "xTUFWVlNxV3lzWHq", "8beg2QszjH4MrS0t"], "descending": true, "description": "YXeCWYfsASTPDEuM", "iconURL": "RoWF7wrSDVn0q35D", "name": "RvwQ6Z67m00LhwmF"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode '7w9umnqGPm2lBdHf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '7tc9x8Cg7biAIJ58' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'Dh0rPWMHySDYVxLv' \
    --leaderboardCode 'G5IQHbI8tqKSgZM7' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'tR2ESnJKZDrAX0bR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'wrklnHJHidhHP39t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'u4Hfa1ytMdySzfVb' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode '44jdA3cB9FrWrgFY' \
    --namespace $AB_NAMESPACE \
    --userId '7ORJh3jE3WBGUtLD' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'XOior1TaTbWvmQBW' \
    --namespace $AB_NAMESPACE \
    --userId 'VYg9rTYp5STGXeQx' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'lpOSAvZ53Z5axCeS' \
    --namespace $AB_NAMESPACE \
    --userId 'kcHTTu4iGVNPnfKg' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'SfyyKFHNvFl33CjZ' \
    --namespace $AB_NAMESPACE \
    --userId 'pMISjK7OhTy8fLCl' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zpaPCZliLTTzhVRP' \
    --leaderboardCode '["eo3kDhjKp3TZeOOK", "OECPNMz41qJFS394", "lUjLM2OHOY95bDdJ"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KntsmtmqJZw3fnAH' \
    --limit '46' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oMOPlUzTUxOd3omP' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '97' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'xhz8oYj4xC5aabhg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'ff8DTciTTzIbPyVZ' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'YlbYbcdfqAdPBGY6' \
    --leaderboardCode 'YHzEfQ0YA1kD7HLn' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'zTsITnN1Pa4n0YA7' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["op5tvQFL8bwB2tUT", "k8RXy3874oJvC8pW", "UFFbog9GAHoFq5yc"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'n38eO1ZRvuDN7WYp' \
    --namespace $AB_NAMESPACE \
    --userId 'UgBMxCclqhnYX44X' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE