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
echo "1..56"

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

#- 5 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigurationAlertV1' test.out

#- 6 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 53}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 17}' \
    > test.out 2>&1
eval_tap $? 7 'AdminCreateConfigurationAlertV1' test.out

#- 8 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationAlertV1' test.out

#- 9 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 50, "PSNSupportedPlatforms": ["4I9WZx9XO9xbrSKX", "c5XDFaBbaFVEx2RJ", "DXVL6D75S5P3qKR8"], "SessionTitle": "61oIY24WA05s4brP", "ShouldSync": true, "XboxServiceConfigID": "mugSHcP5oPuKeE94", "XboxSessionTemplateName": "UCj8BZHpC2wSIgfo"}, "clientVersion": "tIa5x9gr8ASBRwWz", "deployment": "uIAaLXEvavUUr0SK", "dsSource": "gYsch7qSM91MWyVQ", "fallbackClaimKeys": ["5O2bfnd1eN4JqAVZ", "HnN9zdsF4FVvI8F2", "Azi8ceY5ho7yGz7v"], "inactiveTimeout": 46, "inviteTimeout": 8, "joinability": "kFJK8tnx0aTQsQzv", "maxActiveSessions": 73, "maxPlayers": 73, "minPlayers": 59, "name": "hJtkEJOda3ib4WOO", "persistent": false, "preferredClaimKeys": ["255opG5MXOPcFhfI", "y9QWWLaYlVa4LiHr", "h7vLz1wnFrrqEdVb"], "requestedRegions": ["DBO3yQCs2CYasgt7", "acc5lRML5nunAVfv", "u1Tji1XKUkgkoS5y"], "textChat": true, "type": "30bNzZRSxleQdnHw"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateConfigurationTemplateV1' test.out

#- 10 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetAllConfigurationTemplatesV1' test.out

#- 11 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '7sHgfsdIKPthYgdd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'GDjGFiT6VeR1Xdzn' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 35, "PSNSupportedPlatforms": ["reAuEfl2LZRvydJA", "oZ1WhiU7Fyt4BoiV", "WleXP0IAcRP5oqoq"], "SessionTitle": "Zu9QpyNeNF3Cm7P4", "ShouldSync": true, "XboxServiceConfigID": "6VLQjdtYLbfWzMZK", "XboxSessionTemplateName": "rL69klhLrqOINrGC"}, "clientVersion": "ObDlpCRGOEuPB9fQ", "deployment": "7fgOTxKaw73sY553", "dsSource": "W0u9CPUvJEXugSVB", "fallbackClaimKeys": ["VQLlp9nV6kwBbv3r", "Qz8UBVn6JKhVAo9q", "OcdCEMoCizucbT5n"], "inactiveTimeout": 72, "inviteTimeout": 26, "joinability": "dYhKDGQIgPuPYtFK", "maxActiveSessions": 64, "maxPlayers": 99, "minPlayers": 39, "name": "GnDngeEqz7n2pemc", "persistent": true, "preferredClaimKeys": ["Cs9OZknbeIaDXIS1", "kkzbZw3AuI4OScB5", "1xUs7js61R0M6JBd"], "requestedRegions": ["kn9le8d069NK79cT", "kbLSmMZjnBdHnu5P", "IiIVklC2YInThDTq"], "textChat": true, "type": "qLwQq1CfGNgyFGm4"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'XULrqESvlpkUZ5ve' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteConfigurationTemplateV1' test.out

#- 14 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminGetDSMCConfiguration' test.out

#- 15 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminSyncDSMCConfiguration' test.out

#- 16 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'D1un9Ees8zxMmAU4' \
    --dsPodName 'LmDcVZeFRw9kpohv' \
    --fromTime 'Ijxj2x5ht6AnB1s3' \
    --gameMode 'MNbfKeyylZfgrWva' \
    --isPersistent 'nhJwy2ZvJH0u15GI' \
    --isSoftDeleted 'heHU3lyTymHeuigG' \
    --joinability 'MmS8Z3viKTBk7H6u' \
    --limit '97' \
    --matchPool 'n2wGEyQPzVp2s9i3' \
    --memberID 'OKUzQcsMdcEi0NSc' \
    --offset '67' \
    --order 'QiItZfrtB8qEh7vG' \
    --orderBy 'Mxnet6EFZHMFr1I2' \
    --sessionID 'U5Y6UZP9Ja66ySLQ' \
    --status 'NXpJ1gxz6mS6qLbf' \
    --statusV2 'ExGDqB3XR99L9GHZ' \
    --toTime 'hyq8UFJ9H18p3CJx' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryGameSessions' test.out

#- 17 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["G8njONRa95uRpIWj", "a7mrrN7TzfjUuVom", "1nqFXIfUuooJqt2j"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'v34SjXIsrPEOrXmh' \
    --namespace $AB_NAMESPACE \
    --sessionId 'gmJ4npVwVg6oHv96' \
    --statusType 'sivbqktvq3MAh999' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateGameSessionMember' test.out

#- 19 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability '0XCB1yFGYjZVfkuQ' \
    --key '2aLioMFmjqYc3JQj' \
    --leaderID 'wjrnLQY5xDZb0DkE' \
    --limit '84' \
    --memberID '1MEwMmhuumD9almq' \
    --memberStatus 'WsiyFKusWZEvXNV9' \
    --offset '18' \
    --order 'glMqDGVPk1Qx5wcK' \
    --orderBy 'JbAWbm3nO9kxV6m4' \
    --partyID 'bV7mBRzGpbTO1jb1' \
    --value 'J8exv7IHPGBrLKWn' \
    > test.out 2>&1
eval_tap $? 19 'AdminQueryParties' test.out

#- 20 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'QWn5Wzgdig6mLKOS' \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryPlayerAttributes' test.out

#- 21 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'gchSOXKhoyqlL06W' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerAttributes' test.out

#- 22 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"cbnU8AA2Dex1VHOW": {}, "VO9kHfi67Os5slAd": {}, "FAwobyCZmX0Y0xPo": {}}, "backfillTicketID": "dIRjG7R7SEkntFCY", "clientVersion": "28cP62bNBmjAkZi8", "configurationName": "WS2LKv78jKG0fb3r", "deployment": "EfNdRgpg6IQSGIFP", "dsSource": "4iZkwrH0GVi7gw5s", "fallbackClaimKeys": ["jJNFtfcb5jriFhy4", "DZxOPoC6y9K62cU2", "dqt27koIGiI7MYLi"], "inactiveTimeout": 92, "inviteTimeout": 43, "joinability": "rZ46CXbHlnRTYZ4c", "matchPool": "2SVCR19eQ8bvyh6B", "maxPlayers": 9, "minPlayers": 98, "preferredClaimKeys": ["YXBGZiOS81tApf3H", "WAaxREMV8NmkObPu", "0qN1hFCcCtv4B2My"], "requestedRegions": ["6ZyhTWOg8O5uk4Ec", "Ojd78R23HbQnYPUq", "iTs7kvM53dTxC4iS"], "serverName": "deW5NBvhDm4NGz0a", "teams": [{"UserIDs": ["HqkFbpf7Vua9xAqf", "8QpJhaE6iaSoXg8Z", "sAhdGpq0ObD7hp1W"], "parties": [{"partyID": "77gWVteFdyfY4SHb", "userIDs": ["XEePSPVB9cmI6js5", "YKJiDTr9JOS53Nlp", "M000sf71v9AP6Mbb"]}, {"partyID": "Lqv0HSPGU6BJqsdq", "userIDs": ["jEj0KTZOGKecH8eH", "p1j1YIUolw5cZAuG", "Imimw9BfvWbhBFqP"]}, {"partyID": "wtiyHpsmeC3WI2ea", "userIDs": ["uWXobDGIUQXBtRbp", "BMnZ7YQgCdcFOFii", "ENJKMyoAlrk3TRLr"]}]}, {"UserIDs": ["SZhP4KPJokGOQXSD", "IUiKX00yZJeyThJA", "QALcnLSbVXfW1XZF"], "parties": [{"partyID": "JLzm71zQx2NRVGaD", "userIDs": ["QpEPZIF1OmKpnRSB", "b83hlr63FyWLZT39", "4AcTGrnSXNGz8A6L"]}, {"partyID": "I1vflJmOkJo4Gp72", "userIDs": ["LnoUF5ZaKFAgXrLO", "YVGJ8unSvi040aDo", "47fWRgHFFlGrik6o"]}, {"partyID": "Of3xAJuKKUiXdPmi", "userIDs": ["w92vxKdP6lFSyNVU", "YswbU5KXJz0va1kl", "PinThyiWKI4lec0s"]}]}, {"UserIDs": ["zBhgPnqiF4EWUzE3", "3ftmFl4NCOJy0neo", "K6HCnlEgs1upEgqt"], "parties": [{"partyID": "d6oOpnD82B8vBw5a", "userIDs": ["VAauruG6KpPyET9x", "on7nhYXdif5OBnl8", "PstSfCNbWSc7N7RX"]}, {"partyID": "R5wqgmobQeosvCoL", "userIDs": ["UR2ROEGpq1TkeEVj", "HQ1ViN1UCpNJ5DOe", "ZOGWDbVUxieBjX4o"]}, {"partyID": "xBlxew0ijdkk6rEd", "userIDs": ["5Pxb4HIZbvNI3dvW", "L3Ke6BHackK7Z4UF", "Q0ckojyiN8E56tVl"]}]}], "textChat": false, "ticketIDs": ["YLhEadqlFgQoovRv", "LtYBOmj72PxTB1QD", "Hrnwr8bkKzmXVd3f"], "type": "gIkkqtSNN9lK3I25"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateGameSession' test.out

#- 23 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"7QxtCkFIjCSb8wGn": {}, "VLNODt46oxgApMwL": {}, "UQHRxa1mzeFJnE9j": {}}' \
    > test.out 2>&1
eval_tap $? 23 'PublicQueryGameSessions' test.out

#- 24 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6T4MHnnJ0zESTqXp"}' \
    > test.out 2>&1
eval_tap $? 24 'PublicSessionJoinCode' test.out

#- 25 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'W5b1u72fbQtk2cDD' \
    > test.out 2>&1
eval_tap $? 25 'GetGameSessionByPodName' test.out

#- 26 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'VeVchxcoIEIBkLrM' \
    > test.out 2>&1
eval_tap $? 26 'GetGameSession' test.out

#- 27 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'IsMEayxgP0jnRZm4' \
    --body '{"attributes": {"nUxc78QIDCPY1t1O": {}, "gHo7elkJFFZI5OYg": {}, "uFObVCP49Pf4yeEu": {}}, "backfillTicketID": "jdyoAd2CnktHYEH3", "clientVersion": "GwwUeg6EgeoEMVq9", "deployment": "s4tLvCdZKTYseRMi", "fallbackClaimKeys": ["u1SPjpEWAArZI8SM", "q69RN2hE0raWaNqE", "a39sYEieMDbFerRL"], "inactiveTimeout": 37, "inviteTimeout": 11, "joinability": "U60ChjckpA5oGgqt", "matchPool": "vSJQQ7Y05sAaVsmq", "maxPlayers": 97, "minPlayers": 26, "preferredClaimKeys": ["aui4k3NWWiOw0deX", "Qa7TY2e1PDuLAzdX", "MPQKwEgqHLNOe02A"], "requestedRegions": ["lUuDwHW51eXGRDg7", "OhekITxr6r41NsKC", "fGMur1QEIZAnEkkj"], "teams": [{"UserIDs": ["ZMJYDMJ2MDwU3ImF", "4QrklYRtoEJiEpZi", "uMMujpFRjnrWcFxx"], "parties": [{"partyID": "kCTzVNBNKH9QHXSo", "userIDs": ["5w6Im4dUoK3083zz", "32Oqi1fxjHnXMoml", "wYvPCd73BH7nmS5w"]}, {"partyID": "WSkjKtWppjzYYytD", "userIDs": ["LWt9txXOTqy6RzFE", "SPEXSddDigimtxQc", "lR4gLxrwOvls9wL1"]}, {"partyID": "4jWKZmoqF03H8TyR", "userIDs": ["RJ3zHvgCT5ufq1cQ", "PEJaW26fzTds7p6U", "9pV5HbjdtvB6PUnO"]}]}, {"UserIDs": ["MiclPgd3IbNWB7m4", "l9eHze4Ydvcp1fQx", "TKMoYjzHu4XDmlEm"], "parties": [{"partyID": "mJPlLY27ERgsszOo", "userIDs": ["Ourn89PGff9pR11v", "nLzEMbXhvgIosK6I", "mWn36qhv7yXf2dS8"]}, {"partyID": "S3nge6V9ktB0zSQm", "userIDs": ["C2XEIPSf929ty2Qi", "z3jPJd6LYjKHUxHZ", "r6HTCpgV7hvZWX0D"]}, {"partyID": "9ZRwS2cF41H9SiaM", "userIDs": ["qq8zUAXQkFT3UjlT", "rV63OsDG3OkpJ1ur", "VBLcQzi74QEAwAiV"]}]}, {"UserIDs": ["M4lS5JRU32qntlD5", "E8rySPPQwYayXPgz", "zzjiT2SPGHIrcfUA"], "parties": [{"partyID": "8XdF6ae5YwFsLdRI", "userIDs": ["jkWe4JbgqEK7ooQ0", "XeaEvVRI98Os7Aba", "6j9u7NybknUdf66S"]}, {"partyID": "WuUBpMmbDebPbStU", "userIDs": ["sESZEtMTSZM2Jazp", "cXWg6dLalDSx85JV", "zQEXhXo9L0WUMYAC"]}, {"partyID": "jb7ZF2yHBk4g6FCV", "userIDs": ["KQCrohSDlKni7QSZ", "ZMarLoYmHR4B33St", "WjvZztvWhCn7xC9E"]}]}], "ticketIDs": ["c3rMYwKfsOPicU6J", "piVSOd1Xk7J9qevM", "KEenHwy7r2rgPeH9"], "type": "bXUu4Z6PyJoVmEs6", "version": 14}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateGameSession' test.out

#- 28 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XBbpikKHgJ3ejOjX' \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameSession' test.out

#- 29 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'kyhgXvZNnIPzHA5j' \
    --body '{"attributes": {"L40TpzTh6FXHirOt": {}, "XO8dREZyr5sviWre": {}, "lOe1ePrfMJso2WvW": {}}, "backfillTicketID": "XVsEBR537wSlmXNf", "clientVersion": "CqpMUZZji4v53MN0", "deployment": "Ui3tLU81oECRBcea", "fallbackClaimKeys": ["vnI97tTsrjieEp5E", "7yP1xYzDxkageYW1", "g7DK5zZdMiN36AEA"], "inactiveTimeout": 27, "inviteTimeout": 61, "joinability": "UZPoMlBYEa8Kw4tx", "matchPool": "pB56Q0NGvZMjudWi", "maxPlayers": 9, "minPlayers": 33, "preferredClaimKeys": ["eKwcyyLlWZDrNgVp", "gyClx2g9sIwr8qow", "dEwIk9TekhQe2l7l"], "requestedRegions": ["nvlVd2UeTtrzTb8z", "RS706AVXAHjpkGwH", "QCDhEdWSh170CHPk"], "teams": [{"UserIDs": ["3Rok2OYXFcylB3t1", "UZYla59QreFy9yHX", "CXHjiyppVCttDsSy"], "parties": [{"partyID": "bOakR6ZfLXPPwSrS", "userIDs": ["mkwFCsrvvwLTu65G", "68RKfoiFH73nyRcJ", "YcjcUzrdYRqJunbF"]}, {"partyID": "xyKHUuSjGKHh0IRF", "userIDs": ["7TAKM3NJyq25KnNO", "19JtPBtXDB4vHyFz", "73Rer87mmiLjDLLE"]}, {"partyID": "538PDWcrbgwBq8Nl", "userIDs": ["XKkgXCEtPW5WCMNq", "HCOSqhxxCDSdVJtF", "4LtAQ7P90cH7xHCB"]}]}, {"UserIDs": ["6XUTsEvrrBBhGVp8", "Tcnm2LwoDt2UwKpg", "FF3qFZaFVMYq9WEc"], "parties": [{"partyID": "IwkZFWje3GfmhNGw", "userIDs": ["AaaeoikrsT9kaenV", "MDJULGf3HuDqJodN", "qIUxJbekrv56LFOz"]}, {"partyID": "MNnq2CKb6SFs9Y6T", "userIDs": ["HUK2ftl5wQtdR3JI", "2Taf97Q36cKpZzLu", "Xv4cIE6plVNCHEnR"]}, {"partyID": "qRhMe7BQ4e0YIMda", "userIDs": ["V9nxXmBaN1zQr5il", "hHwSidJvAuBt0Grg", "mn5m3AmInOlXlZVv"]}]}, {"UserIDs": ["UDtqfteIU2s98Th3", "nlMnTDNifehcHBZs", "LORi4PtZTea86Hzh"], "parties": [{"partyID": "XzKSBYeah2b15Y89", "userIDs": ["yeGXB9amfWzdWGQQ", "2R7qkRdaCspypoRp", "wz085xMw9wpM0ijD"]}, {"partyID": "zdfE8O1XJydZCcJU", "userIDs": ["YOmNm3VpsrCfKo1F", "YBfhDddvCdoeKDn5", "LR9D5qEpziLpwrqw"]}, {"partyID": "mWLxSuI5J57VPHWo", "userIDs": ["oIH4QZghyCX33mIc", "IdVWRhLT5QEQOcRE", "UA1ZoWLXYR2hCydC"]}]}], "ticketIDs": ["cHrERmlRxIx61SrB", "LR7qnfWpC1g7e2hR", "hQr4XtdkbRIJgy8d"], "type": "kt5JbHymsA6g75k6", "version": 81}' \
    > test.out 2>&1
eval_tap $? 29 'PatchUpdateGameSession' test.out

#- 30 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'PIRwUhbH7TlGe5Mw' \
    --body '{"backfillTicketID": "6YhLiFZYt6hGYoAf"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateGameSessionBackfillTicketID' test.out

#- 31 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'KStKJrZikzcoAGgu' \
    > test.out 2>&1
eval_tap $? 31 'GameSessionGenerateCode' test.out

#- 32 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '1738aApDN8FTI57o' \
    > test.out 2>&1
eval_tap $? 32 'PublicRevokeGameSessionCode' test.out

#- 33 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'ghpjSzJwfoQdkOk5' \
    --body '{"platformID": "yHJaB3kGjjLJlvHc", "userID": "ZLLQuQGlwsIWo5zK"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicGameSessionInvite' test.out

#- 34 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ALrodJjrnafHzhjP' \
    > test.out 2>&1
eval_tap $? 34 'JoinGameSession' test.out

#- 35 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'HePeOsTwGvSnWAgt' \
    > test.out 2>&1
eval_tap $? 35 'LeaveGameSession' test.out

#- 36 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'wKYmSsVhxbhS7Oro' \
    > test.out 2>&1
eval_tap $? 36 'PublicGameSessionReject' test.out

#- 37 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ctKMU8c1kqWoIbBB' \
    --body '{"additionalMembers": [{"partyID": "jh6klGmEa2YrpWh7", "userIDs": ["qF9NcbuPG2MzgMOM", "UrtMccJzE5W5j1wS", "uTuGvU4aCAqwMrUQ"]}, {"partyID": "k4btWekcRWIGBwJY", "userIDs": ["7VvMxjY3frjoEhcJ", "XE3uhtHKJfBFi3dU", "iuuP1R1WYBRXMhnK"]}, {"partyID": "k9DnH1BeR8zmGzG2", "userIDs": ["UesX911psnT0ug7h", "y6ASEQLzC6iN3VdR", "6yXFmi9aySWJy4FU"]}], "proposedTeams": [{"UserIDs": ["wnAZcbmNEuKYAPCW", "o3KUoPmfdm8EZpOj", "Qmw1VdXzjuiKWQ4J"], "parties": [{"partyID": "qqRgWH9MBx1Iqd92", "userIDs": ["j7KY8hni77JYTIVJ", "KUrm6X7u7LufVViU", "VfzLW1Vumun5uZp2"]}, {"partyID": "XJ4FilvRsWQ1SYIf", "userIDs": ["K29huKzZDSSzeOyo", "LYYdklzspiVBU4Fu", "vwNlVAhFSXXxXXaO"]}, {"partyID": "daxDOmYewcPU3jte", "userIDs": ["AVGdqfz3idKxu9jJ", "OMx26B3i7h2EplLC", "bnkiNZHvubDFd8T8"]}]}, {"UserIDs": ["Z2m9nlB2vFHJ361X", "nfzKYv32QrXy5ZXa", "fTUNAOowjlH1kMSB"], "parties": [{"partyID": "O1GnWSTke4BqOS0e", "userIDs": ["Ox5Y2AAgEbNMBJ2V", "NspP8X4SK7BSUBUE", "kXZGsbQzO0LpFfbX"]}, {"partyID": "XeiaGJeamdfVTd7b", "userIDs": ["9OiQfUcemMRx5ut8", "lQZ5MTlXab6UDAYO", "0hQX22qAQL85KsmZ"]}, {"partyID": "3IEkDZ7eLekgxJyE", "userIDs": ["2dA9LMy5wdwtzAV4", "u6WzAxGVskynfdIm", "nZjGcx5yIe0ntMjq"]}]}, {"UserIDs": ["W24F0OsizYoeI9yl", "qp6jhkjxUpymBwld", "qOyvuBJjDcPpu15I"], "parties": [{"partyID": "0sI74H30r7JVuuwx", "userIDs": ["wYQutYlnIjTPCzYC", "luPxK3lafqCY10FF", "G6SRCBUjTlhvOYgj"]}, {"partyID": "BIT0V6UCIWJGMRRt", "userIDs": ["db7eTO2TSzxiW2j0", "Gs7F7EHyTlEeZlvI", "vxz5e7kKumquVRmo"]}, {"partyID": "RQs0OBmoJpp11BjQ", "userIDs": ["7vThqDbofGuDSbfV", "DDZWaTVHj0i8RbM9", "wtmyu5qqN1m0UbEZ"]}]}], "version": 14}' \
    > test.out 2>&1
eval_tap $? 37 'AppendTeamGameSession' test.out

#- 38 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "5BVxKRdQpCRlXUj9"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicPartyJoinCode' test.out

#- 39 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'tMXcDqOXJjmP8vWJ' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetParty' test.out

#- 40 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '4J829RFsOwtrRzfA' \
    --body '{"attributes": {"vZwRUCFnT5CYK23K": {}, "bTq4KydMsEUVQjhd": {}, "ypWo4cFHrJIN04rP": {}}, "inactiveTimeout": 46, "inviteTimeout": 39, "joinability": "vRilnRWDNIbPxLUS", "maxPlayers": 57, "minPlayers": 83, "type": "qPmZc2XQWW0JVGnY", "version": 96}' \
    > test.out 2>&1
eval_tap $? 40 'PublicUpdateParty' test.out

#- 41 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '8DpgdXmGsJQCLILv' \
    --body '{"attributes": {"WxCHqEJnUrNBqo9h": {}, "wWwvmT6U5iyurRF2": {}, "KXQuGr67CSnbeG7Q": {}}, "inactiveTimeout": 19, "inviteTimeout": 29, "joinability": "K0E4Ajvv0gjxWDMg", "maxPlayers": 15, "minPlayers": 87, "type": "k5mYqcHxjIpk4YkH", "version": 95}' \
    > test.out 2>&1
eval_tap $? 41 'PublicPatchUpdateParty' test.out

#- 42 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'OgEzgPlDByRlUF3t' \
    > test.out 2>&1
eval_tap $? 42 'PublicGeneratePartyCode' test.out

#- 43 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'i7u1u4bS4pBWM0Wo' \
    > test.out 2>&1
eval_tap $? 43 'PublicRevokePartyCode' test.out

#- 44 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'fpWq0jBJHfz4oEtJ' \
    --body '{"platformID": "1xGxZUhUrzcKSwdD", "userID": "7T0JApa46M9neC7H"}' \
    > test.out 2>&1
eval_tap $? 44 'PublicPartyInvite' test.out

#- 45 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'Qg47d3B6ukoVFJEL' \
    --body '{"leaderID": "Q0snorvRJq41mWFv"}' \
    > test.out 2>&1
eval_tap $? 45 'PublicPromotePartyLeader' test.out

#- 46 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '1uVHKZQL9GQNPMM6' \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyJoin' test.out

#- 47 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'YmbgLdX7gcU3fnXt' \
    > test.out 2>&1
eval_tap $? 47 'PublicPartyLeave' test.out

#- 48 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'YOcSIG1bZM2a1tQf' \
    > test.out 2>&1
eval_tap $? 48 'PublicPartyReject' test.out

#- 49 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'anM45BkHtdXjDgrN' \
    --userId '5SHhYaBBq7nlsoR0' \
    > test.out 2>&1
eval_tap $? 49 'PublicPartyKick' test.out

#- 50 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"MANFRq3xdTkOVHrd": {}, "vfVNmnMNLKN0QALF": {}, "6ZG49ZtLU1MEs6le": {}}, "configurationName": "4F1LnnUgvW6QsEKe", "inactiveTimeout": 72, "inviteTimeout": 20, "joinability": "MalLrLCcprkWS9gy", "maxPlayers": 65, "members": [{"ID": "bFlq1sM3SKkDki8d", "PlatformID": "E6FnxN4DbWUHPDy6", "PlatformUserID": "Ecv9mLtoRqeQA7dO"}, {"ID": "MDnR21VijsCDdtQ5", "PlatformID": "NBhT32C3DYdPKLBM", "PlatformUserID": "Z5JsuYzTBBeAB7xO"}, {"ID": "If68uioep6r17cU9", "PlatformID": "Gs4IAimoc8HiAHbb", "PlatformUserID": "U64W4Q6GVlXqm3TR"}], "minPlayers": 70, "textChat": false, "type": "DxJLWFHFyVE3IG2i"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicCreateParty' test.out

#- 51 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["2f1YeeYfXEUDBfSp", "GRdWtIAlFc6CnhJp", "k21nhHyDsr0BDTSi"]}' \
    > test.out 2>&1
eval_tap $? 51 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 52 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'PublicGetPlayerAttributes' test.out

#- 53 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "iNG2d2X0VYgjymBz", "data": {"b6cruh49bc3BniI8": {}, "AB23wM0gpeUWZmnU": {}, "2eUOglDgBHa68seu": {}}, "platforms": [{"name": "uWKxPVgwynPQUR5a", "userID": "QHIiOooWYd9cEpKO"}, {"name": "gtyM147tDHjs1rqW", "userID": "OBjiuFVExkBE6nIQ"}, {"name": "7Sme69GUidcdqqTb", "userID": "ovL8qqt40exlfbLO"}], "roles": ["CdH7lDItu0ziC9tk", "HslTsBXCgNPFNWde", "2capW0tjfCJjEqlv"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicStorePlayerAttributes' test.out

#- 54 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'PublicDeletePlayerAttributes' test.out

#- 55 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'vwzAU0RWxZWjhofv' \
    --orderBy 'dsHXPoV2TygVYWWD' \
    --status 'R1vVIFES5tbCFldV' \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryMyGameSessions' test.out

#- 56 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'aaJehDdUBYCB2KwH' \
    --orderBy 'hVvzft4QmI94XVHj' \
    --status 'VXo69tf3MJV7LEaX' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE