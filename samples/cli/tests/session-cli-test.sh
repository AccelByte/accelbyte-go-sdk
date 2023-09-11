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
echo "1..66"

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
    --body '{"durationDays": 3}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationAlertV1' test.out

#- 8 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 92}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 91, "PSNSupportedPlatforms": ["vSePhnHWEOJK8Dsu", "Cdi8CTMvGUC8TThS", "y1YpNukQ4RrFxcBU"], "SessionTitle": "Fjk0KSpDafirxiUT", "ShouldSync": false, "XboxServiceConfigID": "J4JGvLUzlsvhB0D7", "XboxSessionTemplateName": "QuBiZRoJHJ9NZrRJ", "localizedSessionName": {"QPhgAQ9CQZxLkEUx": {}, "9nOtlJ8WXtXySBPk": {}, "8mbpoOPI9p8WSzxi": {}}}, "PSNBaseUrl": "qsN8Mmm9O7RbgR8H", "autoJoin": false, "clientVersion": "FVozPQJnmcF2rQ20", "deployment": "tx1gpgpP64Y0nq0S", "dsSource": "IEGiKuZrkDlLspSU", "fallbackClaimKeys": ["5wZkjLoI89USuoom", "TUwIKhxinNJM24LD", "khUOs2p5cXFvKflv"], "immutableStorage": true, "inactiveTimeout": 99, "inviteTimeout": 83, "joinability": "yQBWAMu0Erbfqeij", "maxActiveSessions": 31, "maxPlayers": 34, "minPlayers": 29, "name": "3I6fei5ZcC4ZAznf", "persistent": false, "preferredClaimKeys": ["3hz7xfwJj0sOyyyh", "utD1MvCWAaI7RmVo", "7s6Fk7VtazY542Js"], "requestedRegions": ["ZdPfVBpFvtigLwCH", "8e7dgfoXASpkOCe9", "kPecrmeirtuyu0HS"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "U1IPOaxtzhRGjzIv"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateConfigurationTemplateV1' test.out

#- 11 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --name 'alceRTW2uvwcVmcS' \
    --offset '27' \
    --order 'KE2rHkdpertGRF4W' \
    --orderBy 'EHnIOVFKHUae59vw' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigurationTemplatesV1' test.out

#- 12 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '1hND99AKjNzVJLfF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigurationTemplateV1' test.out

#- 13 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '5724gPQ7mZAUPthN' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 49, "PSNSupportedPlatforms": ["ptzShGmhkWaghZuc", "IG2tEtAcA4GzpYrZ", "ivkyWX8p0hF8bdQA"], "SessionTitle": "U3hzqdUofeOiNkVA", "ShouldSync": false, "XboxServiceConfigID": "YU4CE6qMHvRWslWw", "XboxSessionTemplateName": "bMwmoHM5RRvItICv", "localizedSessionName": {"JgkqaaGJbbqNm2dP": {}, "YU3q3mMjnwoshp8T": {}, "TQMiGXiHH28Flrux": {}}}, "PSNBaseUrl": "gSjqMxZIF18N9v3f", "autoJoin": true, "clientVersion": "08qHlfyZhyBGkAZV", "deployment": "qzfXb8AFhbhSAq1L", "dsSource": "bAMTPCTHFdtgsLr5", "fallbackClaimKeys": ["4RB8JCB8G46km0zL", "NB5h2CmrCJH8DjDM", "yt50gio97yfXC9fM"], "immutableStorage": true, "inactiveTimeout": 48, "inviteTimeout": 27, "joinability": "lhhkOjO9oLC6Uov8", "maxActiveSessions": 12, "maxPlayers": 97, "minPlayers": 88, "name": "1XfZaXFOCRmNVuLT", "persistent": false, "preferredClaimKeys": ["qz2Pngf0hsVeZeyv", "gyBNTj4Ktwf3M4xu", "2K01G1Bk6yZp9YFd"], "requestedRegions": ["dBkKVX6NqcN44l9T", "GU5a1XMz7hakbo5r", "nn07ExBAMJnXyT1k"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "6LDPRNZ1pMe98dWq"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateConfigurationTemplateV1' test.out

#- 14 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'XwWJgCaYyvxXCRFG' \
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
    --configurationName 'RPwY9ijoWLgQMCNP' \
    --dsPodName '3uCt2pbqefxi60oq' \
    --fromTime 'Lrg6KCaVsBeyJbmz' \
    --gameMode 'zge7hhzKf8pYgEPa' \
    --isPersistent 'raaf75vJ4nUczIcD' \
    --isSoftDeleted 'YyIUAgSDpo6OuTu2' \
    --joinability '28gSMKGeUGoAMfsC' \
    --limit '53' \
    --matchPool 'HhXxnkbeZ2x2Uch4' \
    --memberID 'J9mZExNfX2gGaziE' \
    --offset '61' \
    --order 'O9HVRRbanWdM4ZVl' \
    --orderBy 'AN8601tY1iNCiLx1' \
    --sessionID 'JjPeT9shfxjPPSd6' \
    --status 'Jx1MEBsJVUvZTPO0' \
    --statusV2 'JsaNkwcEOkevr883' \
    --toTime 'kzUw6QtJuRpnFzXg' \
    > test.out 2>&1
eval_tap $? 17 'AdminQueryGameSessions' test.out

#- 18 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["IgeAJgNmiw46YBoT", "oSLjUEeOooLi4ieL", "iPDNNzOcFduNv2zH"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteBulkGameSessions' test.out

#- 19 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'iDlx5ifffVVdSJEu' \
    --namespace $AB_NAMESPACE \
    --sessionId '1EQtQJssJjXIXNUh' \
    --statusType 'ytIVUPp70gUih1uP' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateGameSessionMember' test.out

#- 20 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'ntUESOhfJTU08m3G' \
    --key '2YpZVG1jXgrzO4iD' \
    --leaderID '7xDwB6in034w6Wln' \
    --limit '37' \
    --memberID '9lXpfmIzMZOBte62' \
    --memberStatus 'qhz1dT8pQoJA6E0k' \
    --offset '15' \
    --order 'qOqyIJC9u7ZrfQRv' \
    --orderBy 'hJvmkyyzErrpm22J' \
    --partyID 'zAe8xrnqeRQCexSX' \
    --value 'q30DTNFDm3ffOQuo' \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryParties' test.out

#- 21 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlatformCredentials' test.out

#- 22 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "SdNfA9zBj9oCoo92", "clientSecret": "vgZtK4xAfQ8sMAND", "scope": "Iwm6zvSdUWS8qErF"}}' \
    > test.out 2>&1
eval_tap $? 22 'AdminUpdatePlatformCredentials' test.out

#- 23 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminDeletePlatformCredentials' test.out

#- 24 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '9gtXM1xC8q3bHizi' \
    > test.out 2>&1
eval_tap $? 24 'AdminReadSessionStorage' test.out

#- 25 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'V5iRUs1kM8DPtSAh' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteUserSessionStorage' test.out

#- 26 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'hE8ki69puirZkpMh' \
    --userId 'WK2HemSHXszCf0F7' \
    > test.out 2>&1
eval_tap $? 26 'AdminReadUserSessionStorage' test.out

#- 27 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '5JTlkducboFjSk5Q' \
    > test.out 2>&1
eval_tap $? 27 'AdminQueryPlayerAttributes' test.out

#- 28 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Kms6IbGnsy2FTNRf' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetPlayerAttributes' test.out

#- 29 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"SEQ1wGNgSmFywzea": {}, "foT2FTriAgdxl2ex": {}, "zhlPpaMbfgoAATHW": {}}, "autoJoin": false, "backfillTicketID": "cF2TXOUlxPAq5Dzk", "clientVersion": "JRwlmR0HOQ7PwqL5", "configurationName": "Hjy90tbNHqqis8oS", "deployment": "uzWUl8ML6paiSxSl", "dsSource": "Za2seEvhvArSTqUJ", "fallbackClaimKeys": ["93QaWPCCRr2wmWyc", "I37PAzgt8SIvS8ED", "nLJD1fvVcxgM7nRH"], "inactiveTimeout": 51, "inviteTimeout": 51, "joinability": "CYYwdF76rJtFYELP", "matchPool": "fYHqGjlE8mnoiGAm", "maxPlayers": 64, "minPlayers": 61, "preferredClaimKeys": ["YTNxRQu35G0uo9RR", "fT49qkZL7vf7DxRF", "JFpIRklfs4dSpPMC"], "requestedRegions": ["XXYkRf9gCV1spAkD", "vmH9C4NSlQ3PTMkT", "wSLXqTIsWieIqOdL"], "serverName": "DidmeroACt593hVj", "teams": [{"UserIDs": ["TrToRolxkkHwJuta", "3gu2eMo7JmMOfNjA", "7rzbpgyiJKv1GDPy"], "parties": [{"partyID": "dXDM6Tdy2ngcU77f", "userIDs": ["JwsvjKyHALCquUeI", "LH6cZVthCnnwCaob", "9FY1ksozaOeelY8Q"]}, {"partyID": "PjB000rIJiS7A5Jt", "userIDs": ["dRg7x5UM8fUkzbFa", "064DtQanb4UNmj1F", "lm1pFjsyfNnKSMkX"]}, {"partyID": "7aQkvLexnemgwF48", "userIDs": ["E0s0rLOrejh62jkd", "jyy8Mu7X6LV1TDLh", "PPLCicyJ0ZAEPkeG"]}]}, {"UserIDs": ["gg6K2fChNoGK0UqO", "F9g8sbcyisGN2jQP", "6YZ9HiX1GfHhhJuR"], "parties": [{"partyID": "i1jx5zPXZ70ATsBi", "userIDs": ["k6eee6YJhutAcKD2", "CzIrfYg9sTHr7mWO", "9XpQdCKVfmOrP5EX"]}, {"partyID": "AKekMPt2QyybmT2e", "userIDs": ["jNc1gDNEo03APDF7", "KMmNfqOq2il06Eo6", "RGc6Kmrz2ixU1g3C"]}, {"partyID": "RKiCSemFhnuTnU2m", "userIDs": ["KdYvIXPLv1OfDmYR", "zSHnOuaqH0mxL0P1", "dU2yzMpHPKSyo6ij"]}]}, {"UserIDs": ["BDkF34nkyKCWuUC5", "ARY30B5BlkNTZKxe", "G2uLIFBY05aqDorz"], "parties": [{"partyID": "1Hqn9I2mXHb7B523", "userIDs": ["i47RO2GszoZbRLZv", "CL74aHfYUri4KpiG", "60vAVPSMWkJW3E5Q"]}, {"partyID": "jvkGgOrX5KaPSYM9", "userIDs": ["FQdrpzsJAusAYhiu", "GVCv8z8MSEdyViHS", "bPYU9spzheDKac3l"]}, {"partyID": "YMJrX1wDNOKUV5ca", "userIDs": ["ecqkZX36LxW38g9B", "FcF5RLd2F80FUVe1", "BMjHU9lc5eInBIlR"]}]}], "textChat": false, "ticketIDs": ["JJHYBUzYon4MxkSz", "FjrqSAvVrJJyL9Ss", "RVXhgHtiFXaORUwU"], "tieTeamsSessionLifetime": false, "type": "OzU20KaArPjkgneb"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateGameSession' test.out

#- 30 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"PsvDZgd45Upu2nGM": {}, "qrwxXo2S5xI9ddHb": {}, "9bjIovUEkpLJWHlg": {}}' \
    > test.out 2>&1
eval_tap $? 30 'PublicQueryGameSessions' test.out

#- 31 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vp22ZxQx9ZB1eYVa"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicSessionJoinCode' test.out

#- 32 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'iRSEzrJr7vJJVflG' \
    > test.out 2>&1
eval_tap $? 32 'GetGameSessionByPodName' test.out

#- 33 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'tdZDcskw5vqllvdu' \
    > test.out 2>&1
eval_tap $? 33 'GetGameSession' test.out

#- 34 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'gepoQS9kelWLU9T9' \
    --body '{"attributes": {"RLGAXeXa49tLcUuv": {}, "fPMNtW7DOf5cl0qS": {}, "JUi64JopbEfIluS0": {}}, "backfillTicketID": "c82CcxzCuy5VXf82", "clientVersion": "dgRIjbHYtZsxgg6w", "deployment": "FioiparC2p8wdpIP", "fallbackClaimKeys": ["rOh9FAPJ0gxyYTvp", "telGMlzfUqtrVOiY", "enL0JiNjB1ZlZZ7n"], "inactiveTimeout": 34, "inviteTimeout": 47, "joinability": "GpxWiA154g1a9XzD", "matchPool": "cRzUdpqFGTRpEkmN", "maxPlayers": 58, "minPlayers": 2, "preferredClaimKeys": ["JGjLTEvG7JcZsnXI", "iM5VZQlXADxvlHgb", "IRsbFQYtqmQoGxjZ"], "requestedRegions": ["wzEf7yhHMPIHQw9P", "e4g8oDBohmRrK7cu", "vdH9uqDZby6P49cl"], "teams": [{"UserIDs": ["djyVsSvoYJQxhTvo", "KhsqXViuYxfpIbOk", "Hz80Kr0JK3uoQkUG"], "parties": [{"partyID": "6622ye3VaffK3iY9", "userIDs": ["oILRwun1ReocRIOP", "KhHuNMLQW6l7qOwq", "nUS2FcIjyVreae3R"]}, {"partyID": "PEcmxNyrKD35Z2qd", "userIDs": ["sp1x5tAHm5DbwVaQ", "K39SqNkUbWAsjp2y", "2ZuwrNxOlHMZUI6C"]}, {"partyID": "kCUtBRX0QGuCJIxl", "userIDs": ["GaVce1HHxeVJPEND", "d59g0qa70kNi0D1B", "BubhGBzRA6Yp2F1Z"]}]}, {"UserIDs": ["x7KPJ3NhFz6tRhHq", "6u7cY8hBDGTccNYT", "X9HfxNAoLa2cy7AW"], "parties": [{"partyID": "lb8h8IPj7aj7FUEq", "userIDs": ["bcnoapmOD395BmII", "mwwLEckLGrOhkBjX", "c39j1JCoJv1sGhbJ"]}, {"partyID": "B3VFJHRjGlrk8EmA", "userIDs": ["axBgsLNIhwEgLL0r", "mlp7v83SJ4JpZRyY", "rG8dLHRxxVRe57sV"]}, {"partyID": "cjtIcAcwbwHCjclh", "userIDs": ["EY7h9bA1VVCHpZfr", "a1ZAl7cbmMp7SBRH", "J9FIzcFlN629iCwT"]}]}, {"UserIDs": ["lc8LB7S30aIMDjWH", "DknxzkAZKP3WdZ8L", "1bM6rkOI0HE7PhqC"], "parties": [{"partyID": "4mJh2VAxfJCFdkac", "userIDs": ["MsG5X5B0VWRGf7Gr", "lBF43X44vXoPkdPV", "wy6IsJeiXZdCMfwN"]}, {"partyID": "CWreds9jflljGoCW", "userIDs": ["KNQOjF56pNQhvrIS", "SGAfsB0epjmB6O3v", "b0nta7Ok3EQUwqTK"]}, {"partyID": "Ar4WLgiRPjFyAYz8", "userIDs": ["MptiUA6i7cFWrdmL", "lH1uicJpYcjgrHrk", "ePAMHbODgwsou54T"]}]}], "ticketIDs": ["lUOg5jRTeMmhpkUu", "f17wGX94dXVz2EU7", "Ql6HQENLtzLSpIe0"], "tieTeamsSessionLifetime": true, "type": "NA0pXXmGVO8QVA31", "version": 76}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGameSession' test.out

#- 35 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'cr06bgyZuVV9NhTZ' \
    > test.out 2>&1
eval_tap $? 35 'DeleteGameSession' test.out

#- 36 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'oveyY6R0WsimI44o' \
    --body '{"attributes": {"llkfAfRmBXmsOpKZ": {}, "w3pBCVbi771cmlNr": {}, "dZU6R5atWYiERi06": {}}, "backfillTicketID": "GNkaY27Uwr6j0Zxg", "clientVersion": "AcuN81QwM2GuxC48", "deployment": "NOILE2AcZ4xGn5Lv", "fallbackClaimKeys": ["wkTLWHtLWKXSkUHZ", "LiTm2zpJoLz9VnV3", "gUvwqn3YtSmxXod6"], "inactiveTimeout": 53, "inviteTimeout": 55, "joinability": "6sWau6Gx9qmQjZ0w", "matchPool": "339BJihGbq3l4eT3", "maxPlayers": 94, "minPlayers": 11, "preferredClaimKeys": ["cSVvzfuiXjvyRq2g", "Kq6XvKttrryV3YQ3", "0RapLuKAuGhgFZSh"], "requestedRegions": ["1HNPwiGqOLQg4bD9", "JqvEw62WddGfw3e5", "ySLoT107rVE8RyHT"], "teams": [{"UserIDs": ["IKvGBASnLJFcSElr", "JUetxKoxUMIsy5k3", "bNNoZ1WKA0X1kd8p"], "parties": [{"partyID": "8E0TY81A3kVx6SRJ", "userIDs": ["TQqK6YUUlBGfCDGv", "yhg25FbD3BI5IxX1", "J5ie11QdQfMzDiTZ"]}, {"partyID": "Pbu0TOzOaq531YF4", "userIDs": ["j3exm5xzL5IvX3Hj", "3RYWTkRYQFg6zse5", "rodOKwiscJooaUdE"]}, {"partyID": "A635bQH0g3WkJWvH", "userIDs": ["3dBEv8wb9qoks3TK", "AKAx7CeQPnqhaJOZ", "ogXr4IY2WuT4AqbB"]}]}, {"UserIDs": ["dSwfY9m6gR84hB4r", "JU33K7oDqfCYTnMS", "odrtQzCOGEtVWQ6Y"], "parties": [{"partyID": "lVgmgVpuISG1ebRi", "userIDs": ["IH9w41wOAZ3AwBtQ", "Qe6kK71VWm6CNr4n", "OWVtsu2bCPfPGQ1A"]}, {"partyID": "3V93wZXfgoCFI8s9", "userIDs": ["xMasRNP7rVwTTbo9", "cHbz2fr81vYadfuj", "zzdGp4ZlsJMNIJ5z"]}, {"partyID": "9h9XvRNFDkewMXk7", "userIDs": ["2F9uMjDwL2T9OHvj", "m4NPx3nDsNYUhExw", "3u9ueAMMUyf9ttbN"]}]}, {"UserIDs": ["XmONd5Fjj6T87Eno", "DyqpjWKfSGBNwP8Z", "X5oI5CS6x0Ge2xoF"], "parties": [{"partyID": "FWbpLseOvmssBCZN", "userIDs": ["g0SLATmX3CuCO9Zp", "bJuq1xsjz86bJge0", "elLqxeVNWLy4z4sn"]}, {"partyID": "VKIilr18I0uPwAkD", "userIDs": ["kqXKKvwlUy0gsjsZ", "E4eBPbxSeLor8uiw", "hkk9CtIbkEfJcDzU"]}, {"partyID": "9EbfA6q0CBW0IS9h", "userIDs": ["gJzsBAPzgqzidnyk", "zXVm7yp28OI0M3a9", "vMF2JtSPqmvWyI6V"]}]}], "ticketIDs": ["Cd2F9U783V60oH9J", "EBdovXpcCPz2naZs", "uR9MDFriP2wFNgWO"], "tieTeamsSessionLifetime": false, "type": "zhnm047JrJ8CNiQ1", "version": 52}' \
    > test.out 2>&1
eval_tap $? 36 'PatchUpdateGameSession' test.out

#- 37 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId '2vyvn3ue96nuugsn' \
    --body '{"backfillTicketID": "v7yalkw62tou89uJ"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateGameSessionBackfillTicketID' test.out

#- 38 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'N0rya2yCTWvwcVg4' \
    > test.out 2>&1
eval_tap $? 38 'GameSessionGenerateCode' test.out

#- 39 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '7XwK8JKpwRhrpUUg' \
    > test.out 2>&1
eval_tap $? 39 'PublicRevokeGameSessionCode' test.out

#- 40 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'A5UaEiIkYtJCb7Nx' \
    --body '{"platformID": "ZW3tCn8s8UEiYYEG", "userID": "afQf4poH0bgSD0yk"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicGameSessionInvite' test.out

#- 41 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '8PH0HYgYQgTwq4KS' \
    > test.out 2>&1
eval_tap $? 41 'JoinGameSession' test.out

#- 42 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'Notef9TfctjlqkQP' \
    --body '{"leaderID": "tVCj8AaxlpHOTVn8"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicPromoteGameSessionLeader' test.out

#- 43 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'BRWdgjWXDarTawzY' \
    > test.out 2>&1
eval_tap $? 43 'LeaveGameSession' test.out

#- 44 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'AdpsOsAd5ySV8eJ0' \
    > test.out 2>&1
eval_tap $? 44 'PublicGameSessionReject' test.out

#- 45 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'CYkqNtRFu43DifN9' \
    --body '{"additionalMembers": [{"partyID": "2qEMaBwQGhhgGDhK", "userIDs": ["Baf1DHGHSyQKj918", "Tx3IY4JkgPVaOUbh", "h2Lc1nxKy9Dr0OAd"]}, {"partyID": "IdEoLQ3jzJ6RVJX1", "userIDs": ["CyRXrszlIjP0Welv", "TE54u2fQFki9DER2", "OnYZDPdVuJWw6SIF"]}, {"partyID": "3cg3lZcorNJ0MqZT", "userIDs": ["Cojtoykap4CorWc2", "wPRF0MSBnkdizZyG", "h6xHxD8V8eaBznw9"]}], "proposedTeams": [{"UserIDs": ["w89CRlhLsIVyWssT", "1AZ6qVn1FJFVBWss", "aUscBaKaezk10ufu"], "parties": [{"partyID": "ZiPNpwZevrF7yLvL", "userIDs": ["3Ith6nOG4eRVB0zA", "ujAhIjtlGz4o6jNM", "D9bXHZODM9AiEcDE"]}, {"partyID": "MzSjV1ww9ovp97vs", "userIDs": ["8INh2dxkZKUnwbkp", "tl9IzU2SPRtgsThs", "jPJUqMVanq408xkC"]}, {"partyID": "BOPoIHP9aVoheLQr", "userIDs": ["OyOXzFYyg4ONg426", "KKl86EeMcIOx9LCK", "0JvmbkAmtLl8wI1M"]}]}, {"UserIDs": ["KhjpfQPfA32bCjJd", "ztlB2ofOeBnyZvcB", "erxUa3yPy7LDKDyV"], "parties": [{"partyID": "SHR1QdyQKWw7mnJY", "userIDs": ["HUuN4oWwHYjmVVqM", "xPn2Yb5yNZZOKPr6", "VjdlB87NM3I8vLQI"]}, {"partyID": "zUv6G8TgRlLpmp9B", "userIDs": ["a6fUZcQmL3AQHloC", "pmcCbn9ZZZzrG91z", "GFl62CUsHOc6FfmT"]}, {"partyID": "dUoqsHFhjmTowkYD", "userIDs": ["jAerN8gJiJ5qn5lN", "mZ7OzYb1XDTeenKU", "VSP4l80xyDqs6z6I"]}]}, {"UserIDs": ["HKFGTo9Y02L1hn03", "y6ynJJkE5r0bqGgk", "NUrTYYPOXpiS3joN"], "parties": [{"partyID": "rNdZwC1EUdBcxpRD", "userIDs": ["AviWnMLyM4khBJxP", "ioAGuOi0ji0oxQod", "j6BxHbNz7AmRCDZw"]}, {"partyID": "TrAE7jyUojqnlpVJ", "userIDs": ["EPgfns6KwOq04pYY", "GEOxWNOnwareqoTg", "YhLBUeCx8q2HxXDd"]}, {"partyID": "wjjKxqMoy0i7bI3i", "userIDs": ["wedWjsbUD0Xwp85I", "ok6ZDYwx5lHJpFje", "KofWY1k4qO6DUf9j"]}]}], "version": 98}' \
    > test.out 2>&1
eval_tap $? 45 'AppendTeamGameSession' test.out

#- 46 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "271Ob4hujBFcvnwG"}' \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyJoinCode' test.out

#- 47 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '7GlaKvo9SiZV2u7U' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetParty' test.out

#- 48 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'idqzZHC7KWqQJFLK' \
    --body '{"attributes": {"RYXF0zmkdRKYfJLp": {}, "zD37ticf3AAhfhtt": {}, "ol7mRj3isWfKKaML": {}}, "inactiveTimeout": 92, "inviteTimeout": 65, "joinability": "K3ftQxbpOjL2NWsq", "maxPlayers": 33, "minPlayers": 63, "type": "ByaCrahzHwj7pvSE", "version": 26}' \
    > test.out 2>&1
eval_tap $? 48 'PublicUpdateParty' test.out

#- 49 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'wZ0nbHgSEmPD7pFS' \
    --body '{"attributes": {"RaBsyOceWSziHRSw": {}, "hhD7ddj52sMKISzj": {}, "d3KAdV2UgrZoXDr0": {}}, "inactiveTimeout": 60, "inviteTimeout": 87, "joinability": "3Q1mVaQRpcnhX1Ch", "maxPlayers": 23, "minPlayers": 36, "type": "c5ruEJHZyPuzwlQt", "version": 86}' \
    > test.out 2>&1
eval_tap $? 49 'PublicPatchUpdateParty' test.out

#- 50 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'x7Ptg5yl1b684m4p' \
    > test.out 2>&1
eval_tap $? 50 'PublicGeneratePartyCode' test.out

#- 51 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'QDIgQTOYQUdPXLEI' \
    > test.out 2>&1
eval_tap $? 51 'PublicRevokePartyCode' test.out

#- 52 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'cGtfG55FRteSuAhk' \
    --body '{"platformID": "M3kw8QaGp5xmcNxD", "userID": "UaXsaPm3NthXISBA"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicPartyInvite' test.out

#- 53 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'q5HoGL9xa6FJteM0' \
    --body '{"leaderID": "uRZOVYy9qLiZ0WlL"}' \
    > test.out 2>&1
eval_tap $? 53 'PublicPromotePartyLeader' test.out

#- 54 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '83eyBgTOcZ7fdkTa' \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoin' test.out

#- 55 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'G4TPTJcuQSa0pBKi' \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyLeave' test.out

#- 56 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'spN7oMEotbObTCqQ' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyReject' test.out

#- 57 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'USK5PDVbMyZ8mjVN' \
    --userId 'Q9vV5Kg3Dvx5Dznp' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyKick' test.out

#- 58 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"JCGrC2HqkKgJJ3Dj": {}, "Et8PsN1PYJoDs72Z": {}, "y5pVf53hJEwaPTBm": {}}, "configurationName": "QlLVISisQs1P7YCl", "inactiveTimeout": 33, "inviteTimeout": 24, "joinability": "Tm5PEHYrE7npkYkg", "maxPlayers": 92, "members": [{"ID": "Z3YIM6vlSfAM1B4H", "PlatformID": "zv6PpP1uCcb2Dv7a", "PlatformUserID": "Ws6pCSMEeTrFzm74"}, {"ID": "Czg7OelkyK8J7h6J", "PlatformID": "18pZhkgRe9JrhtgR", "PlatformUserID": "P6BRosmpft8DvClO"}, {"ID": "ban4liwWvy8WMPGH", "PlatformID": "eic56EJSXec7tPnP", "PlatformUserID": "kEkHIWQHgTxJ3D8n"}], "minPlayers": 61, "textChat": false, "type": "ECgzO7in7cSJoiUZ"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateParty' test.out

#- 59 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'JjkJCznDmUAUWuxq' \
    --body '{"3v35ZsfDqfvKKKQn": {}, "mrztGPzMDTgEKVo2": {}, "zKyH7JLfxOcLrJo3": {}}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateInsertSessionStorageLeader' test.out

#- 60 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 't4KlAhrmGBHeK9Gu' \
    --userId 'JZjuhLgNJpoF18D1' \
    --body '{"j4vLetaqWw1P26k0": {}, "h2rwjLufvG9rRrdB": {}, "gdh6V0EnxsUcwQx2": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateInsertSessionStorage' test.out

#- 61 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["2jp4Yp4OuJ0dI7N8", "0tn6M8wN8FK6qMlr", "dDOWXKrKVyUYAdve"]}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 62 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'PublicGetPlayerAttributes' test.out

#- 63 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "ms78CvLiF1m8rAYf", "data": {"szYSFqdeGhX5icUH": {}, "xzYCCYMecLU1KmRg": {}, "QXGDLNHdOkvunL9D": {}}, "platforms": [{"name": "BIxlt7uX0uZfciBA", "userID": "NpP1sSXlUYH0XATR"}, {"name": "biRTTQy9EyGHVfgR", "userID": "oZBGC6exrN2q197t"}, {"name": "FKMarFwrus3RAD06", "userID": "7yyWE0uZdzFxIKmY"}], "roles": ["Vl5u4IsrkcManDtR", "oFcY8c1g0ekf0lYB", "w7E6R3gF2zalsN0G"]}' \
    > test.out 2>&1
eval_tap $? 63 'PublicStorePlayerAttributes' test.out

#- 64 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDeletePlayerAttributes' test.out

#- 65 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'MH67Wt96yEwp1F1d' \
    --orderBy 'Kb2MyZdPjXvHToF7' \
    --status 'iu2yYcnkSAOvpkU5' \
    > test.out 2>&1
eval_tap $? 65 'PublicQueryMyGameSessions' test.out

#- 66 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '4KF6aIzX5evOrFRk' \
    --orderBy 'maxWvmvzIZe89WK2' \
    --status 'cLR9qHCJ05RF51WC' \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE