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
echo "1..67"

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

#- 2 GetHealthcheckInfo
samples/cli/sample-apps Session getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
samples/cli/sample-apps Session getHealthcheckInfoV1 \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminGetDSMCConfigurationDefault
samples/cli/sample-apps Session adminGetDSMCConfigurationDefault \
    > test.out 2>&1
eval_tap $? 4 'AdminGetDSMCConfigurationDefault' test.out

#- 5 AdminListEnvironmentVariables
samples/cli/sample-apps Session adminListEnvironmentVariables \
    > test.out 2>&1
eval_tap $? 5 'AdminListEnvironmentVariables' test.out

#- 6 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationAlertV1' test.out

#- 7 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 97}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationAlertV1' test.out

#- 8 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 21}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateConfigurationAlertV1' test.out

#- 9 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminDeleteConfigurationAlertV1' test.out

#- 10 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 98, "PSNSupportedPlatforms": ["Zn8fjxsxmTjaQI25", "j5ThhU4g8yb35Rpg", "scoWOtAWTrv6RBac"], "SessionTitle": "vhmwxS9Bv6NnIyon", "ShouldSync": false, "XboxServiceConfigID": "92Azl3IhKQKfETfk", "XboxSessionTemplateName": "QR6y0pD99keBWfpR", "localizedSessionName": {"Sx4lZxdvQ7cumOSw": {}, "oyFQQDqDEwhQ066w": {}, "wYahLSB0J8N4BlVD": {}}}, "PSNBaseUrl": "QniYpKmCTSdpLdmc", "autoJoin": false, "clientVersion": "bJQHB9JrdIyWN2DU", "deployment": "fPhVcI8PWmcVj6BX", "dsSource": "9NF5wk3mWufVJ5qS", "fallbackClaimKeys": ["Nh7FrFXqNubNzCQ1", "GWZXpVnrVcJKFuaJ", "NaCaaMmv2AeIzFBM"], "immutableStorage": true, "inactiveTimeout": 97, "inviteTimeout": 57, "joinability": "lG3JxzQYu4yk4C0G", "maxActiveSessions": 34, "maxPlayers": 19, "minPlayers": 40, "name": "3yEOWq7knNG6979m", "persistent": true, "preferredClaimKeys": ["d9fhz2jO4xzeUBhL", "SRgOLlr1RAMqVVAv", "8AAOLIIUr6TbCbyz"], "requestedRegions": ["R5HIIULrDfeHL7vn", "ED3Jx1yvqbcxmWKX", "mYkzw6ghLWdsC20j"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "qa8eTp6GgbBRZPLc"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateConfigurationTemplateV1' test.out

#- 11 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --name 'k1RFxaYQuItCPpM3' \
    --offset '18' \
    --order 'qPi6L8yf5CWuyTKu' \
    --orderBy 'WYmnCniOEBfw6Lbm' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigurationTemplatesV1' test.out

#- 12 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'pLXrQBUuOgy8yfjT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigurationTemplateV1' test.out

#- 13 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'T88phxNjAydQP07Z' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 38, "PSNSupportedPlatforms": ["GIYzTdDKaSAd2a4v", "rccYlUdfd342a7xK", "ivVYNtuTl6ps2VtQ"], "SessionTitle": "ffXrwknxyaEAbudJ", "ShouldSync": true, "XboxServiceConfigID": "zziyT1oLUXt38vwt", "XboxSessionTemplateName": "25OQJdCgEIG6ewG4", "localizedSessionName": {"vSP2mO9a7pBb9oK7": {}, "AXvk3Esg1RNfV3n1": {}, "lNLBqcblb60v6mQw": {}}}, "PSNBaseUrl": "Z8skwHVBpT9QWHQP", "autoJoin": false, "clientVersion": "GSnvBIlXr5PLRVi5", "deployment": "7mSvCNUSmRqCQ0bk", "dsSource": "j3PW20HwE8v2b3dF", "fallbackClaimKeys": ["uDysJbQEkmg4L7KE", "nBYmW0YxN1D0c7a4", "IKOEme6K5dJU89g8"], "immutableStorage": true, "inactiveTimeout": 10, "inviteTimeout": 85, "joinability": "okagtx04wZn1XCYk", "maxActiveSessions": 14, "maxPlayers": 85, "minPlayers": 75, "name": "Am4lMsgKXfjrk6ad", "persistent": true, "preferredClaimKeys": ["TX2gL3sWRHdLNfIC", "sJsGpAjCD80HlYmj", "WXzNUKXQojfGUgKx"], "requestedRegions": ["HqZ4b1DfgthXseJ6", "fkFf8NlLnGTuKPr7", "SEGWXSSAVsw2XEJ9"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "CoGCfZrYpUN9dOdO"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateConfigurationTemplateV1' test.out

#- 14 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'YRx2zxvEJDvR34Hr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationTemplateV1' test.out

#- 15 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetDSMCConfiguration' test.out

#- 16 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminSyncDSMCConfiguration' test.out

#- 17 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'zJaTdgziQ65eqc64' \
    --dsPodName 'l1ReSyxoOdIkECQD' \
    --fromTime 'P5tUikKPCNNFirC3' \
    --gameMode 'Au1aiSHYljzl1K77' \
    --isPersistent '7Jbvbd9wlueApfLa' \
    --isSoftDeleted '0A1HcTvmCzdOEPeH' \
    --joinability 'VRNlWBW2ISWfbxQK' \
    --limit '67' \
    --matchPool '3MIn6PPnVt6W1Fwj' \
    --memberID '347xkuyR7h765p2g' \
    --offset '28' \
    --order 'RAMgry9b58OQOllK' \
    --orderBy 'ek4KrIuG1QqpUojh' \
    --sessionID 'ps2Q54xWeD5AiZFZ' \
    --status 'JY6D9uLhUK4tT0QC' \
    --statusV2 'rApDAzkccHSTA9Vo' \
    --toTime '1mTzUJjbjtnirYvg' \
    > test.out 2>&1
eval_tap $? 17 'AdminQueryGameSessions' test.out

#- 18 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"lVUNkHPOW7yXVv3z": {}, "UhSkT3OAzJRyLslR": {}, "dBNcshojKJA4S4nN": {}}' \
    > test.out 2>&1
eval_tap $? 18 'AdminQueryGameSessionsByAttributes' test.out

#- 19 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["wKZLYeykIrHdoZ69", "63UPeA8QPGmoTR10", "uqNbJEYT3RBq0WxP"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteBulkGameSessions' test.out

#- 20 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '6iIw9aS219fuDqcC' \
    --namespace $AB_NAMESPACE \
    --sessionId 'vDnuwuUxws9NVF1m' \
    --statusType 'EzXUuxkjLEaCuCiC' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateGameSessionMember' test.out

#- 21 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'IXKJg7Mz1cC6JKBC' \
    --key 'T71jjX9OosiZUP5G' \
    --leaderID '6imDYnVz8vqbI40b' \
    --limit '87' \
    --memberID 'yz7qEymxji60EE2g' \
    --memberStatus 'BmRjsTBAjeR9XD27' \
    --offset '44' \
    --order 'Hvktn0Clvcw43MUh' \
    --orderBy 'xd0hAZrnckjkLfnR' \
    --partyID 'FUMZzS24qHF9MeCS' \
    --value 'wfHeEkQ5IfqzZrlM' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryParties' test.out

#- 22 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetPlatformCredentials' test.out

#- 23 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "NbOxVpK9b79TcgAZ", "clientSecret": "wj4NdnBG3xE6Pgte", "scope": "2k8Dl3BjCU5R7egS"}}' \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdatePlatformCredentials' test.out

#- 24 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminDeletePlatformCredentials' test.out

#- 25 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'cb6vV79WpJckkyvX' \
    > test.out 2>&1
eval_tap $? 25 'AdminReadSessionStorage' test.out

#- 26 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'hVkScfAN64b0Lb5z' \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteUserSessionStorage' test.out

#- 27 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '9uxQ2kD0W0mmjIJf' \
    --userId 'Etm7MphhkqmcyO8P' \
    > test.out 2>&1
eval_tap $? 27 'AdminReadUserSessionStorage' test.out

#- 28 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'PnbleNMCWN8zjYan' \
    > test.out 2>&1
eval_tap $? 28 'AdminQueryPlayerAttributes' test.out

#- 29 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '1TGqcydaQslkit2E' \
    > test.out 2>&1
eval_tap $? 29 'AdminGetPlayerAttributes' test.out

#- 30 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"8ygHYvr0wn5zY20Z": {}, "vMcwa2dCvY9DaB7R": {}, "6FtQ1hHLapUtIe19": {}}, "autoJoin": false, "backfillTicketID": "Kths1YLhSJXvB896", "clientVersion": "3Uh1opMsFSNjzHC9", "configurationName": "xX0K295kHwGEEjEg", "deployment": "3SEKbXgZ1xtjGjHQ", "dsSource": "deX04gSss6qpAvqb", "fallbackClaimKeys": ["Ip2QIsqB3QanGpzl", "ws59LmHXqjmIYbeK", "yZU67yZlngoeBxmc"], "inactiveTimeout": 0, "inviteTimeout": 57, "joinability": "unS4UnQWIHbbPqbM", "matchPool": "26TekIMSTHH7iESI", "maxPlayers": 39, "minPlayers": 60, "preferredClaimKeys": ["ISoX8BIOoYqWKPlq", "Nns3WiLR3Qr4cE9M", "pZ4cTPJebKWl5HFc"], "requestedRegions": ["K86nNTHxKSgskk9E", "Q1iyNdw8Z8FCMgqJ", "rgHR03J6Vyv695nn"], "serverName": "Tjure35usxeJoLqP", "teams": [{"UserIDs": ["hABceQeo5uoHYNvz", "ikewB1OYDxBgWDcj", "TVin7coIuv1P4eWb"], "parties": [{"partyID": "WWQhce2cctzynPRT", "userIDs": ["K4hzm4gZFa7UWeXV", "fPoXA6xCUiHORDpM", "5ipRKKsXllLhEL0Q"]}, {"partyID": "5Tfnf13kXWLDZazw", "userIDs": ["qBXkZEYXWSspxUyx", "LEIIXBtyMMC2QqcC", "WRZximN2iJJZbNaZ"]}, {"partyID": "VT71htlAzpbptKW1", "userIDs": ["UfgztAepCQaU9VSQ", "sOLFuTZlgzQUiDZ4", "M7DiudIj69HevOLA"]}]}, {"UserIDs": ["9D2bWxRBRFEf7BDc", "GksLDeKNBBI4Ugq1", "L5ZC5MB536fI5lLt"], "parties": [{"partyID": "ClOoYgA22h3N4K8D", "userIDs": ["VPrwWuCMZHY6TmLr", "LL1R668dOZ6lIsIq", "wuf3YrYHIHhuD11m"]}, {"partyID": "PHd0pRGY08EtIXhc", "userIDs": ["fuDiTbVPAHVdOYhs", "UaegFR8DSLGeaAFX", "0w4HURnwx8VYPKm4"]}, {"partyID": "J9mfHFNNnRQed3Da", "userIDs": ["JQgyRoRK7UOuTVvj", "KGpW2QJ7P49LC3M3", "fAoZc4h9XlEmwutD"]}]}, {"UserIDs": ["iQEgQajzn2LjaIls", "WFvkQPs3EDVH6cI8", "jdFZzB0r9OxIkwc2"], "parties": [{"partyID": "PzoBJDdcRKUUdfaW", "userIDs": ["jVdoqt0zCjij60lY", "aLWvrZVZXXtN0WEX", "9nKBpwIPDORUEO1p"]}, {"partyID": "FnvqTBTpCUyySIuZ", "userIDs": ["ph3AxO2CeRsFo4N9", "oa1z2KsX5aWFNjQ6", "9oExG73m9DPRA5gb"]}, {"partyID": "JNX11f3RhGq9SqWP", "userIDs": ["G11Vkv2POAZ3eWEU", "43Ygzm2XrarkqR3h", "d5TXWuUjgdGm7wbC"]}]}], "textChat": true, "ticketIDs": ["X7646rhn7JGOkVXz", "3vp6zyldgTWwMTQC", "bICQlzbRjfmjea0u"], "tieTeamsSessionLifetime": true, "type": "033unJe3SBYd8hSO"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateGameSession' test.out

#- 31 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"jeswXkiDlvQTlKOs": {}, "wLpr6iUvgpXWmw3m": {}, "6dIvA5SSz6AtZJaV": {}}' \
    > test.out 2>&1
eval_tap $? 31 'PublicQueryGameSessions' test.out

#- 32 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ToBO66vBk197con3"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicSessionJoinCode' test.out

#- 33 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'AAmKBCwkYrMNZZXb' \
    > test.out 2>&1
eval_tap $? 33 'GetGameSessionByPodName' test.out

#- 34 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'US5Mb1AYgOqQOh7w' \
    > test.out 2>&1
eval_tap $? 34 'GetGameSession' test.out

#- 35 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'dfxySTpsFRFfqFWt' \
    --body '{"attributes": {"rQUaiXOD1wqLtVqz": {}, "T4ughdoXo2NVc9xU": {}, "1GvMBO8LSEZt1M67": {}}, "backfillTicketID": "n9n9d7mvdf7j6SF9", "clientVersion": "qDdF3eW3N4sU1J1g", "deployment": "tCzRdfzjT50KfIjk", "fallbackClaimKeys": ["rpDVL9Z0pS1lPWri", "DbKmsxRPU5e8mQeM", "CtK02Lu2hxwkWJbe"], "inactiveTimeout": 32, "inviteTimeout": 0, "joinability": "AZE48UJ9YPamIcau", "matchPool": "lyqafWQs5jWFOOJ5", "maxPlayers": 46, "minPlayers": 62, "preferredClaimKeys": ["l1YioGgKO7cT1IiI", "zF3CGzfUlqXyXzAW", "GcBhIwxqT5YllIDS"], "requestedRegions": ["KrW8F6CWsQqdcE0B", "Ns7mYlx8Gfhm2568", "Kpt3lqJuzbS7QXQj"], "teams": [{"UserIDs": ["krMPJDR0zrtL3RZ0", "CrZf9pfggsQlnmpk", "m1FMrSozILvZcntn"], "parties": [{"partyID": "xFs7MOmPuFD0NyyT", "userIDs": ["NJI1j1H2RGk5zEwc", "8jFtjNh3xtA7BftY", "0X0Ie3eVKE4nbqDH"]}, {"partyID": "HKY3o04uxSRHuT06", "userIDs": ["13nZqkIgTTdjeBbb", "2Re1dkxrNuLlsxNC", "CfvX5IQmfRVEptBf"]}, {"partyID": "vgNtRCSkgdooGISo", "userIDs": ["iHmbygkIurerU1lC", "ty2IxuZ69IanwdoT", "2yxfdTfNtgOojkPf"]}]}, {"UserIDs": ["AGlA7UskX1BeqqBS", "aHhuqXvUGrFm5GUC", "ERM58MIbzNBEVgM7"], "parties": [{"partyID": "MZBTs9BnhBlLtb2i", "userIDs": ["xOOlMUK2qXNvwGRR", "4LcSN9Y4PqA0wdT4", "R6WGv8QOdiBr80qy"]}, {"partyID": "ImppiYOcgx2D2gdj", "userIDs": ["jOwMUBORJLPwEMhW", "Yhho7qLF5sOSuPeT", "rfWc3xXosQJTfYsU"]}, {"partyID": "qeRKR70E9AQhXdk2", "userIDs": ["luBAJsC80R0Q60lx", "yIvjazeuQIPtohZc", "WyIyXhIfEtLntHTZ"]}]}, {"UserIDs": ["izbRIh5d09AXeupI", "OryUf6zEU1NcVrcw", "17wDmiCHkzGNi6Xm"], "parties": [{"partyID": "tTi80GCKndKxcHON", "userIDs": ["ZrZrBN2SMlAWrEoq", "FQarcR90U5dzRQ96", "km0fdl7eHJp8RIBX"]}, {"partyID": "s80rlS024si7u1eR", "userIDs": ["Ub2AT6tBO6m1koKD", "ioUEEH5TJdMGKt7T", "311KvsC0Cmbtk5mh"]}, {"partyID": "fSRvSkLRNTQ5CniV", "userIDs": ["HJRFnjH6aKBfXGyk", "M79eKix4NRVBYtbW", "FCw9j2zwrKMnBUUD"]}]}], "ticketIDs": ["L7tbPoVna5s2c4ZT", "flSbIXjOkx1XvQa3", "UPE7zV1qU8o3d8bw"], "tieTeamsSessionLifetime": false, "type": "r7T5Dvxvi5cPn2gd", "version": 59}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateGameSession' test.out

#- 36 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'pBawC3EGBeXb8eQ2' \
    > test.out 2>&1
eval_tap $? 36 'DeleteGameSession' test.out

#- 37 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '38odwa3rgL7RJK4y' \
    --body '{"attributes": {"zy2bZuC994P18lb0": {}, "voxBlux3jek6Z4xY": {}, "y6CByh7q6gNh9Wqe": {}}, "backfillTicketID": "yHlh5sJEjZ6Wbcsw", "clientVersion": "asgB9IFceDuUH0RW", "deployment": "LKH2jcQxmm1qHsbF", "fallbackClaimKeys": ["5LxASmUX8oR8HSCo", "92IdcmtzCpRWJUM3", "iJVjvLtXM5ocJ67l"], "inactiveTimeout": 15, "inviteTimeout": 14, "joinability": "mJAnMgFaSPjqTe9w", "matchPool": "49a9tHipRE6uKmba", "maxPlayers": 64, "minPlayers": 92, "preferredClaimKeys": ["Y4eYhZDzfh61L8IP", "nn5v9DsTDdXR0hJ4", "1m2hDOD372CpeyOY"], "requestedRegions": ["paXSrfV0SkyX5ome", "Ud8EA903TFHtEoJn", "bhiJr4UGIIRpKhy0"], "teams": [{"UserIDs": ["txOCvBLxTU45yB1u", "LK7hNVOkxQQXjxxb", "pu72nptFTg9u45lz"], "parties": [{"partyID": "yWVVLHEVsJk1Ko1O", "userIDs": ["URHIp65fgxJH5FvH", "M1zuc9WPiRb3rHvs", "LQWhM5VeIwYVCN09"]}, {"partyID": "dfZ4tR2EiTUFx7yl", "userIDs": ["aFkfSjWzz8ehUtgu", "QmSDTgziO56B8EQE", "bcgch2cJKRHAWWgp"]}, {"partyID": "lZxL46FhKNJ5WAcD", "userIDs": ["VwPf4YemjtxOOtC4", "p3ctjNzNd2ukXU1e", "5YH7UYuAYciTJO6B"]}]}, {"UserIDs": ["56li5iV8gCc0V8UQ", "uCJKwhddzF1ZeoVE", "BtKS92dqlm4RWSQL"], "parties": [{"partyID": "quDn4GcTCgrvASRs", "userIDs": ["wMzPKmk70i64t665", "JogzGeTnU7vNAqyA", "XvFc5A1fknliAdAW"]}, {"partyID": "zz9VuPaZigMpnYsH", "userIDs": ["U0mfP1OWdfEhZFf3", "zA47c3kg1xe2ABFu", "2hvHzJ7W8j3eOKlB"]}, {"partyID": "3BMtNYF2GJeCldYM", "userIDs": ["PjEZMRfLhuMPVfJY", "YdKEoqY278zH0wgd", "TYtNQwEliOKK6Ocy"]}]}, {"UserIDs": ["fpzI2MBFSsbnpXCh", "w6DFbX6kPtj8xxM2", "GYSlbxwZDaZleukG"], "parties": [{"partyID": "GmLehTFhztpof9Yk", "userIDs": ["cTAvzR7I3UOyUsKx", "QFvaGunxDvu1qu55", "uikyKx5A4hSHE5dn"]}, {"partyID": "RwVqTvQHPx69Pfp7", "userIDs": ["Fk2cnzSNSPoiqowm", "D7W3o15AymxmHaqo", "KIj3CTw8aXREZEZ2"]}, {"partyID": "LLQTNfi07YFoH8Rr", "userIDs": ["ZPhSCNYdoLBPlgJ4", "TEDauLpN1pFTT8Kh", "mJrCU7YJWFwlkole"]}]}], "ticketIDs": ["PXq3wsMuMkzf6sIF", "xFUusnIaYqwQP0pa", "JdxecRy4NlMeNneA"], "tieTeamsSessionLifetime": false, "type": "MyJc6pu9dnOjSgb2", "version": 71}' \
    > test.out 2>&1
eval_tap $? 37 'PatchUpdateGameSession' test.out

#- 38 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'jsMDe3RnlaLwe3QS' \
    --body '{"backfillTicketID": "CfNsCxASWHtWZUXu"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateGameSessionBackfillTicketID' test.out

#- 39 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'eI60D60p57F6Dv7y' \
    > test.out 2>&1
eval_tap $? 39 'GameSessionGenerateCode' test.out

#- 40 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'zTm78mUELAm9ry00' \
    > test.out 2>&1
eval_tap $? 40 'PublicRevokeGameSessionCode' test.out

#- 41 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'r1ZBCUyvOE7s6zaG' \
    --body '{"platformID": "9ky9du7EBTu6qoNv", "userID": "aZBTUJDajPMAsTFR"}' \
    > test.out 2>&1
eval_tap $? 41 'PublicGameSessionInvite' test.out

#- 42 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'nxQaIVZQDYrsoeoY' \
    > test.out 2>&1
eval_tap $? 42 'JoinGameSession' test.out

#- 43 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'mwLlfQPYfaK4PM7S' \
    --body '{"leaderID": "QBQB3CL26IF9yyFy"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicPromoteGameSessionLeader' test.out

#- 44 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'NclkQd2XWbNOnPDz' \
    > test.out 2>&1
eval_tap $? 44 'LeaveGameSession' test.out

#- 45 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'velfNANfPwTTaNk3' \
    > test.out 2>&1
eval_tap $? 45 'PublicGameSessionReject' test.out

#- 46 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'mXG7dosZBlHaM0NP' \
    --body '{"additionalMembers": [{"partyID": "o5xkz7Udw5qOO1Z4", "userIDs": ["9gWnkZWv492fBT14", "CpMdaGvebDD9IPuM", "7CWQzZlUDGelNLnJ"]}, {"partyID": "GuASKawslE6EjNOX", "userIDs": ["gqJPFISUGxaefTiJ", "ZoMadTBEvHH8Jn0V", "5VQzt15dh4IjY2xH"]}, {"partyID": "XvaFEf9tBHft9P7u", "userIDs": ["DcVdYEfqm0xOpBvT", "03WqAZhd1dVHYJ38", "I0qcqf7UR8KdwBjp"]}], "proposedTeams": [{"UserIDs": ["geeoLPmj4sxArc1Z", "FOUtdKEiJMssrePl", "liNE0EUQwnv5hM2w"], "parties": [{"partyID": "sUkVTAHsZUw3Ue1o", "userIDs": ["V6albOr0ra8AYigh", "dOXfYU7oNIVgzVkz", "okCQaxvipOlSfPFf"]}, {"partyID": "ryKbWGCsUmQu18sw", "userIDs": ["h4P1L1dd34ViTAxt", "uPSSBH4u9S1UBIcq", "lZUNfv40I4BfeH5W"]}, {"partyID": "wKmHVF4oTrDKqU3B", "userIDs": ["yg1sfqo69seBbK4c", "oWX2HJ8nVY1RpcKc", "hZV4VZIJ9PnZMAt1"]}]}, {"UserIDs": ["9XjwrLSmJQyPhlsX", "0UN1v9KEGA0UHLtm", "nOKKASP2EyZ5J4eq"], "parties": [{"partyID": "gGvrQuBk1gjaalO5", "userIDs": ["qD3NDunD9N2YvWkK", "sCVfA7zHvzl5sO5s", "G7uworeXVFqpB329"]}, {"partyID": "4VMysd9tvJKMZSOJ", "userIDs": ["DBvuyAAQ9ncPujfF", "enLYYOCRSJwHTR4b", "NHlLY8K3Oq2HPlAy"]}, {"partyID": "GAjE6N6mmbwfayT4", "userIDs": ["xAofeEusOjgjMbhL", "2Ex1nn49eQ0j0FZv", "5gS9Iltwylc8LF5H"]}]}, {"UserIDs": ["nsnNEWNLnRTvr3LJ", "pzzsWfi9RwvM6nVC", "dNKfBiuTB78Am1Vg"], "parties": [{"partyID": "7Xz9mHtgIKcwu49k", "userIDs": ["3OVnqza5RRhlOAJJ", "wRj4mHtZhBga9wBo", "V0mSUriSBu2AHcPj"]}, {"partyID": "CnFdm1bTeid8Z2bZ", "userIDs": ["RABzyCFSLuqPSRiq", "TG5DwRsZnf382qq7", "vB19UXJJwo0nWcFl"]}, {"partyID": "P3lk31zYrHsay5CF", "userIDs": ["i7CtHJVGJ0yvsWbp", "9sppQq5gYcvdKAPs", "cTuqsqPKhi86eEh2"]}]}], "version": 56}' \
    > test.out 2>&1
eval_tap $? 46 'AppendTeamGameSession' test.out

#- 47 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "iBNgEOsghFveeohW"}' \
    > test.out 2>&1
eval_tap $? 47 'PublicPartyJoinCode' test.out

#- 48 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '9qFuHu6rXQPM1e3v' \
    > test.out 2>&1
eval_tap $? 48 'PublicGetParty' test.out

#- 49 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'SlcG5EEGH7piW3Pt' \
    --body '{"attributes": {"Wvmadaoc6t5BTqwc": {}, "rqKFOc3hAmNH7iQq": {}, "omhixcYujzEl9tGr": {}}, "inactiveTimeout": 97, "inviteTimeout": 57, "joinability": "3URb9sGI5zAUV4pq", "maxPlayers": 75, "minPlayers": 55, "type": "toPFj0uZOsccQmS2", "version": 13}' \
    > test.out 2>&1
eval_tap $? 49 'PublicUpdateParty' test.out

#- 50 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'nUjwdVsmuuy5wnIU' \
    --body '{"attributes": {"AfLE1BUFk1voC0d9": {}, "zkPDw6WQigjP7f6p": {}, "v4ibeahoNH4R2Nqp": {}}, "inactiveTimeout": 40, "inviteTimeout": 53, "joinability": "LEuGr3V8ijIaFiyr", "maxPlayers": 30, "minPlayers": 80, "type": "pHVzpYzfW1vKSZRR", "version": 53}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPatchUpdateParty' test.out

#- 51 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'GZn6K9yTWSqhAfTv' \
    > test.out 2>&1
eval_tap $? 51 'PublicGeneratePartyCode' test.out

#- 52 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'fHEdREoBjKGGWWIf' \
    > test.out 2>&1
eval_tap $? 52 'PublicRevokePartyCode' test.out

#- 53 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'iVZSBO7LX5JQ4cgH' \
    --body '{"platformID": "q7WTcDSTQ6vTFcP7", "userID": "ObtLU8Exjkwk0R8j"}' \
    > test.out 2>&1
eval_tap $? 53 'PublicPartyInvite' test.out

#- 54 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'seIIHzOZnj31k96h' \
    --body '{"leaderID": "GA1tY4OPNJos7gKd"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicPromotePartyLeader' test.out

#- 55 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'OyY0ZekWZWH9D5p2' \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyJoin' test.out

#- 56 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'IZ0zxWMlB0rDtNdU' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyLeave' test.out

#- 57 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '8fQuUzpIdH7Xb8Vl' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyReject' test.out

#- 58 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'k20BmvCgjvC8FVCG' \
    --userId 'AZF7OIaGF5lJdMhI' \
    > test.out 2>&1
eval_tap $? 58 'PublicPartyKick' test.out

#- 59 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"XcA0fV4jf6zgCbn9": {}, "wt8eO3qgQSz2GGe3": {}, "nIAFvnUR0yARVbXp": {}}, "configurationName": "mcsQFMPAsMB1kM5E", "inactiveTimeout": 84, "inviteTimeout": 23, "joinability": "wXQpfl1XLLUgWwV4", "maxPlayers": 48, "members": [{"ID": "FYzOGyUkHecM4zbQ", "PlatformID": "yEkQHPWbu0U8g0GC", "PlatformUserID": "MeTObvAPW98N5vwW"}, {"ID": "2mtQvwtLGj9L76XW", "PlatformID": "YWVIo5aRSRfo274j", "PlatformUserID": "F8NTTBDIHBii2YyH"}, {"ID": "7bcwsEHheZNyinDX", "PlatformID": "t2xFfUC7KGvhJ2nn", "PlatformUserID": "fCfShdHXXQ3yB2zC"}], "minPlayers": 1, "textChat": true, "type": "QFiUX0fMnIaQdVAa"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateParty' test.out

#- 60 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'QkpMbBg4gpr1FXTq' \
    --body '{"nwvAB7P6YwGpHaFu": {}, "rfNBq1uoJKPz9Wsd": {}, "h9lhOsKMmytgl1QO": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateInsertSessionStorageLeader' test.out

#- 61 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Yzp3LszaZWVac6Zd' \
    --userId '8GSJeoC4sHlOdaFS' \
    --body '{"v002qCrkVY01tUnx": {}, "PelhXXswCsLHNI2c": {}, "QLiWb0g7V36A3pe4": {}}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateInsertSessionStorage' test.out

#- 62 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["f4KjWgwPSSY2z0oN", "KVVIJ3TlPDHCVcBI", "5i2YPKGOlvii2D3s"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 63 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'PublicGetPlayerAttributes' test.out

#- 64 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "KScq8MGiWMHU4g1t", "data": {"p2If9N0rEl1vnc36": {}, "wHIyzVrN69n4nto5": {}, "t6uyAb0LTJs2DiIz": {}}, "platforms": [{"name": "cxMA2DG8BuFrdWlu", "userID": "rzVbt2kT0YhbtK6S"}, {"name": "CwjRXsPiSTVoxnxI", "userID": "YPHwGyehJmiPppcv"}, {"name": "ztZHWCAYlQXdu2lc", "userID": "VZ5ivgdtcKJ4CKbK"}], "roles": ["JYB1xmSTLlejRJoW", "KiwXW8pFzMCfDXsW", "NBk2HgWXve3snUKS"]}' \
    > test.out 2>&1
eval_tap $? 64 'PublicStorePlayerAttributes' test.out

#- 65 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'PublicDeletePlayerAttributes' test.out

#- 66 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'bxdAzHx6xNM5sWsn' \
    --orderBy 'nIp7FOT1LsCUPkTA' \
    --status 'uWyvk3IqeEUXtVq5' \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryMyGameSessions' test.out

#- 67 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'd3g7U5JjyAIeFVhU' \
    --orderBy 'Lat6JrzDO8Cu9fCn' \
    --status 'IqvMa1Y9WDyGmSZ5' \
    > test.out 2>&1
eval_tap $? 67 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE