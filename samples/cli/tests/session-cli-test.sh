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
echo "1..58"

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
    --body '{"durationDays": 95}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 23}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 99, "PSNSupportedPlatforms": ["Gje7yHac7Xke6fm6", "IAeTt21Zdd6Hex6T", "vk1OugJ66alU8csB"], "SessionTitle": "aTRI2ph0ClO9SwWu", "ShouldSync": false, "XboxServiceConfigID": "kufQyRYhVcjJdc7v", "XboxSessionTemplateName": "E5s7Q3a209OegWw0", "localizedSessionName": {"qxDCBCyIjsMc7GZV": {}, "aHi6rARC8EGCglKq": {}, "3Z8rlp6bfiyCdTgb": {}}}, "PSNBaseUrl": "1J5hWgoJn7V0O4IP", "clientVersion": "hUfJTrbmL8nK4n9t", "deployment": "araGr2CAdu3d47Mt", "dsSource": "IY4E6QQj4Af1qchb", "fallbackClaimKeys": ["0AOY1gBrzMy4AbmU", "YEllHzYXLVU6vBCj", "08TnrYUmZUmrc0gL"], "inactiveTimeout": 56, "inviteTimeout": 82, "joinability": "YOYpo48uZ0QKUgc9", "maxActiveSessions": 36, "maxPlayers": 88, "minPlayers": 55, "name": "YkEOguJWkwR1jCE1", "persistent": true, "preferredClaimKeys": ["hrOX5ZE3QGUWHU7a", "PfcFQ46eVbwJYMPj", "s6fqfeXptj8XdzwL"], "requestedRegions": ["PF9RFCgGR38jLLrI", "MCo2txuelS2hSpbV", "lF7ZYy1pZ6mI4X4m"], "textChat": true, "type": "SGap1pqkitqMcBKm"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateConfigurationTemplateV1' test.out

#- 10 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetAllConfigurationTemplatesV1' test.out

#- 11 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'mvMWBzWiL4DmsxAO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'PZhIrlyKG7N068rM' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 89, "PSNSupportedPlatforms": ["Lw9zW3YtqMk8scOz", "pEhCSy6t1dZ2LBQ1", "t0kbPcWXyMINDFof"], "SessionTitle": "cSJBGq1acWW7LSaL", "ShouldSync": false, "XboxServiceConfigID": "Ew7yd2m2KBZnis1g", "XboxSessionTemplateName": "psjbxX7PgcWd08Lr", "localizedSessionName": {"VtOY2fmdV2uFZzyC": {}, "V4ddGZ44hit6Qdi5": {}, "PszvivlikAIc82YR": {}}}, "PSNBaseUrl": "9uqW8VZlsEURZfz1", "clientVersion": "1UTCELN6SYLidOzE", "deployment": "cW1W2q7Hgg5CuHlN", "dsSource": "uDctVHh7JOGG4wsU", "fallbackClaimKeys": ["J8coOgAMrJaJ2dNk", "D5rxexh0rmwdiAt9", "r6jvcYUrDQL34CNk"], "inactiveTimeout": 78, "inviteTimeout": 72, "joinability": "KbHvLRjiQwWL29oC", "maxActiveSessions": 60, "maxPlayers": 39, "minPlayers": 83, "name": "vBqe4CqD5xb1VvRG", "persistent": false, "preferredClaimKeys": ["pAj2JUZzFKY95orq", "aphVQXNUHAcKHXIG", "4JnJnOmKNHaJcgHD"], "requestedRegions": ["4W8ePxdFNddxYDGg", "IlTsoDF1Fjt1TsmQ", "IC5jprynWikffshE"], "textChat": false, "type": "zRptqBkGslsPEfWr"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'U81EJZovNtyi1PLm' \
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
    --configurationName 'DUbbBy2q9E6bzEhG' \
    --dsPodName 'hRaqfl9ivHuzs6JX' \
    --fromTime 'xWO4SJF3DfB7cjMO' \
    --gameMode 'E1Pj5krlmmbOtz5u' \
    --isPersistent 'VGxT4tv6WkI226qL' \
    --isSoftDeleted 'Gt5A3PDWXfDcEkST' \
    --joinability 'NnHAXA9CkJl858tb' \
    --limit '13' \
    --matchPool '2ZUYySJc8r1h7dbY' \
    --memberID '9FU2fzyrhwb8CsRr' \
    --offset '76' \
    --order '6ijbz0FD9mWdWcdi' \
    --orderBy 'lE7OooZ9w4ZEllyq' \
    --sessionID 'X9s4Ov1j5z1lzreB' \
    --status 'IxPiXlg88xulBcgc' \
    --statusV2 'EZjfRYjlLjtXEh9O' \
    --toTime 'UYT2lIwp96ZTN522' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryGameSessions' test.out

#- 17 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["yXx6TvIgqDrAtduJ", "IFVPGd3YXxCYbLG0", "KBm219DTVR1gcmdw"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'iHejiyVBY3NoiuvN' \
    --namespace $AB_NAMESPACE \
    --sessionId '2mr4s30Zx7dLGOQm' \
    --statusType 'gJ1yLoF27NUg99R4' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateGameSessionMember' test.out

#- 19 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'hJ48dDAIWNZTtlCu' \
    --key 'iiTEDpZvschkSPzl' \
    --leaderID 'MeojBf9UqT2yziSK' \
    --limit '36' \
    --memberID '53IdAvcQB291VV9u' \
    --memberStatus '7qmAGbzaOiKHLX98' \
    --offset '92' \
    --order 'MSrYs93iFU26KAcq' \
    --orderBy 'Tqh7pcua3CQvcfns' \
    --partyID 'N8iFxRKW6YycvXHD' \
    --value 'eRiIad9fjFiHkqwK' \
    > test.out 2>&1
eval_tap $? 19 'AdminQueryParties' test.out

#- 20 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "aQIMte0ioS5W8yvy", "clientSecret": "QWRjRfIOcln0muYu", "scope": "oUwfMUKi2neW7s4S"}}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdatePlatformCredentials' test.out

#- 21 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'AG23osGdFGkWvBbX' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryPlayerAttributes' test.out

#- 22 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'mnL4fAo4S8vSbIHR' \
    > test.out 2>&1
eval_tap $? 22 'AdminGetPlayerAttributes' test.out

#- 23 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"z5Qtr4MPLcEtZsLd": {}, "XavitH3FiXjA3Emn": {}, "W5YHuxbynCf3MuFr": {}}, "backfillTicketID": "eYRrPm6pI0mid8mx", "clientVersion": "a3dp7f8lcpXBeAPf", "configurationName": "tKSbesiNcZTp1but", "deployment": "kxzRf9cYwJ4RZgVt", "dsSource": "DQF4Lxmto4DZYPuA", "fallbackClaimKeys": ["W13DoLfYSkMKA8B9", "UKBJSnVmlMJ9coVl", "kcROd0WTKppz7ErR"], "inactiveTimeout": 99, "inviteTimeout": 73, "joinability": "I62xlxDBP0omb1SY", "matchPool": "PRYftFpcvjqZBoph", "maxPlayers": 10, "minPlayers": 13, "preferredClaimKeys": ["cuqqE9BnvqTIGFVv", "sagGgRNU46q6wQkW", "SKN0URZXEmO1vVny"], "requestedRegions": ["EgTX94H9jyOnZvio", "aXdrleiJq2R7JCyU", "dBiDfNlW62893K8U"], "serverName": "8vaK3Rawh6mfC8X9", "teams": [{"UserIDs": ["I6tzNpL0aiXg4Skj", "KCiS2esugTzyrJMg", "ym4Cz7i5XIc1hKE3"], "parties": [{"partyID": "jflAaXxscK4irkn0", "userIDs": ["vmCfHcovni04oDRW", "5gXNJl1X3ULiEYNn", "a6wfbLbsUhqEeusG"]}, {"partyID": "jjK0iTe1CkMOyp5K", "userIDs": ["YyOu7iWCoLa34L6N", "J54PT2R0rymLnbDM", "iT6cqXI1Ok7nUWZw"]}, {"partyID": "1Ccwn2hdjpCpZ527", "userIDs": ["QVoT77rpOoLQmqTA", "Shx7PQuMxnMimr8g", "chpXUMBLGh3fB0tS"]}]}, {"UserIDs": ["C3o1kohsQyYRZmQH", "3IWbWnGCB4ok3u51", "zgWXer0DoSW7vBxs"], "parties": [{"partyID": "YNUtWDTaYVgzzZIj", "userIDs": ["vPtHGpLiq2fc15EA", "OzxA7TeRMzpyOAE5", "QIaLdTHoyV5zxTct"]}, {"partyID": "WJ0QpcIKWSEEQTN3", "userIDs": ["qwHtDOxy41Pzjubk", "jOHbATZ20kTEpbKJ", "0EqZ080oVH7BDhOf"]}, {"partyID": "P3s3fQIfWG11FKLA", "userIDs": ["aTJxYpwImPdo9q9L", "E6QbvMj0I9gLci78", "yBcNrgvby7SRsgAJ"]}]}, {"UserIDs": ["bGnC78bTp5STy0M5", "f3ikyq4NO6UgGkOM", "yD1ykcL1kIB8c79o"], "parties": [{"partyID": "mRqt3FjBFieNbltc", "userIDs": ["WAh4vSUyedsRbJ1m", "tK7sP0FHNSYCOo72", "L2bSGud0pRvmW47d"]}, {"partyID": "NvD5Ux5PYl5VpPBV", "userIDs": ["Q2fj3HVZtcIyM1P5", "O8p5zS79AmNh9sEE", "N9llh5QL8MsSSV0N"]}, {"partyID": "uogYZJ1qu4gvoG1B", "userIDs": ["sHqiOsKvNeydQoQ6", "MTYnTDp2dH1kj5iH", "uQkIek8fHuArN1QJ"]}]}], "textChat": true, "ticketIDs": ["y96SDhETJFWxSt9u", "M7hqiINX1lPI3C4n", "a2zl0NwlGQtcrhu5"], "type": "ht4xJ0KppZ5EGlpV"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateGameSession' test.out

#- 24 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"1nA4H0264W46aAZ3": {}, "WmsfIPFVxwZtPzup": {}, "bJWppPB2pd8CEojl": {}}' \
    > test.out 2>&1
eval_tap $? 24 'PublicQueryGameSessions' test.out

#- 25 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "wRcw4k7sFujSuCbx"}' \
    > test.out 2>&1
eval_tap $? 25 'PublicSessionJoinCode' test.out

#- 26 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'KwXjlXwISQgsEojq' \
    > test.out 2>&1
eval_tap $? 26 'GetGameSessionByPodName' test.out

#- 27 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Fu7sxAeOK23Scrd9' \
    > test.out 2>&1
eval_tap $? 27 'GetGameSession' test.out

#- 28 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'yunLookU5E932298' \
    --body '{"attributes": {"KtYAP2UmQDjTqtEl": {}, "TLkCJffrwJxOA0Lp": {}, "geHDTuqidrWDApfz": {}}, "backfillTicketID": "qyirv5tW3GCSg6Fn", "clientVersion": "i5e54KhtBOrPKz00", "deployment": "Ujww4XG5xwEhi4RA", "fallbackClaimKeys": ["Bt2VbbCYBd9uXdu6", "nTOLldf4mQ2RXEYc", "lt7taAbx3lDF35Dk"], "inactiveTimeout": 78, "inviteTimeout": 39, "joinability": "RwXo9CsOcCHflFUa", "matchPool": "Zanj1ISQhpraM4E4", "maxPlayers": 93, "minPlayers": 21, "preferredClaimKeys": ["K7EQf0My1mv2diwS", "1LWkAUXAfgKG9Plh", "mXWsWUdhh5FXNZOL"], "requestedRegions": ["4yvGzm5cpXogsh2y", "evwm1bzjPIjHjOE8", "aoqNLUpZNj1Cy4qn"], "teams": [{"UserIDs": ["WRyzgFxjIAeN9HCb", "epgWQ1AiRRIBEXIs", "zZ95AqZJU64RCxvW"], "parties": [{"partyID": "40AMr0ic0knNFGR7", "userIDs": ["bFNAxfYdnNk6ER0f", "OTwVKTQeaZAkqmQl", "QajiSNDbDBFdA0IE"]}, {"partyID": "a7ukrcxMpNYY4v5A", "userIDs": ["saYHiUInsI20RNmU", "m5f3Ia6ztPxYWg7L", "aZC3gTU3dVfmM1Z3"]}, {"partyID": "vJiMpq5Fmj2Ipvz9", "userIDs": ["iVdjpicT5iAt1cAa", "Gy9fmjOuofYzQ1kK", "4GVT8OsE69Ydlide"]}]}, {"UserIDs": ["96bGRaisbUQIqHOG", "Jdf97vuVZSBrgpXE", "cCzVK87ry2a277k4"], "parties": [{"partyID": "4X8FRHecVaDCmm6y", "userIDs": ["OZiZ0IIKpnVjE3Vf", "0jyaJWH1umPvJ8sM", "DqJi6npc8eeIJN8R"]}, {"partyID": "Y30qisvLMbeoYbSd", "userIDs": ["zrRXn1N4RJyyTEPl", "XFf2D2SbHCLs4Mq8", "WIBoEgE1Yct0BU01"]}, {"partyID": "ei9sMlkeRkPB7cFs", "userIDs": ["ygZwkt54dM4HMleR", "rZ5gB4zAjeYWCC9T", "7B7ccBmccELd7Ndv"]}]}, {"UserIDs": ["RP26gpyPpo7IaSoC", "xrxtqxmjZAAMalv4", "j5rnLxCIfgTNRe4q"], "parties": [{"partyID": "iLhKUxZFyYUVuYTF", "userIDs": ["xFroeYHchK4BvKxO", "4z0OyGSH7tHHXhgH", "CN28cEy9ZdwXMJ5e"]}, {"partyID": "9UD5bHnjr3bZPLgh", "userIDs": ["tAMJnzQo7mmXJf6o", "xIGwjspaIgBl8CYB", "LAvYldrDFuakgDHd"]}, {"partyID": "nZphyPDtRLnNVpy9", "userIDs": ["CcTSVKZ3iP0XqBq4", "SaX8cvnLQVT6bcJ6", "vhAi2fKkdPSL8vc1"]}]}], "ticketIDs": ["Qt5TSDGpT7LH6rzq", "TZoltvHb87M8Ani5", "L2xOww23NDpcwbyz"], "type": "gozIvEQFFsJJ34jT", "version": 23}' \
    > test.out 2>&1
eval_tap $? 28 'UpdateGameSession' test.out

#- 29 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'IASXOmp8VUQFxLuy' \
    > test.out 2>&1
eval_tap $? 29 'DeleteGameSession' test.out

#- 30 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'M6n1FsePbnhfYYzq' \
    --body '{"attributes": {"lcAxCZpmF2lB47sJ": {}, "L9UizpPgXGUfU4nw": {}, "k3suztwYVDyNcocc": {}}, "backfillTicketID": "mcOOcDW4P0MOEbrO", "clientVersion": "SFElblpyECs0R6D6", "deployment": "qDxB8GPZzR9p0bKx", "fallbackClaimKeys": ["1RMY1DZTd1fAz1zI", "FeFYE2bR2BOGwvok", "LBEW2bHLiXzNZj6U"], "inactiveTimeout": 56, "inviteTimeout": 88, "joinability": "tVtEuIsrKw0xlSCe", "matchPool": "ogTRMD9FiDAPA5k3", "maxPlayers": 16, "minPlayers": 85, "preferredClaimKeys": ["rvNsKtOfAwPwUfth", "uDwmNOfR6nxWP60z", "kYNAE0GhAcKzjue2"], "requestedRegions": ["9u82Ei5pcOJzJQE3", "MmOfeZ2svgffakoi", "x5zHZQvoPCv5xHgh"], "teams": [{"UserIDs": ["DzoHVXr3qHFP6Ybp", "0BoZWzDzJICJXuEg", "DMbgOIDW4kQWObEf"], "parties": [{"partyID": "mb61ZWeGwrFtHyHR", "userIDs": ["VJt1LTQyhZG33EtO", "zvSGTpIa0ULlDcF8", "jZWoBWG4e5J1AzhH"]}, {"partyID": "lfxtL1bMoLVkbQ7H", "userIDs": ["yekZKLknqQVxbHpQ", "OTzjZrUF3zm129Rq", "OuClWksPunPhb40k"]}, {"partyID": "1KTevjhPcQtChHAj", "userIDs": ["E6NkqRysZvy1lI3f", "3IyFc5LCqaV8w1N8", "BHGRYnLTjyKiRC2a"]}]}, {"UserIDs": ["NdxjnUMvSljhk8k4", "qB85H90ZmYWwh5R5", "9ARxCESkS6AGDDAc"], "parties": [{"partyID": "dUXg2v4cUpBMPEpH", "userIDs": ["su3OAKQB1Bx0iXHK", "pgswcp0lKkC0zFP5", "eAJqWDmNmnHeP1nt"]}, {"partyID": "mw9Ewzl26am10nR7", "userIDs": ["IsrrqA2Z33yAogmy", "fscw3xn2CvMwwAcZ", "rZhvBjbiTTuEjVed"]}, {"partyID": "xG16OdtdYH9nZsQo", "userIDs": ["eZkzWehSVJ2PU7rn", "Dhv35rWnlZBrTpC2", "UfMm06v1eA7xosfj"]}]}, {"UserIDs": ["CbKJX4iXSSRpYLd2", "qgXefmS0iCk3XN7C", "89hpUVrWRPkNN91p"], "parties": [{"partyID": "pTE5gC7CFef8rNtc", "userIDs": ["iMvUTG4GW39fPkGQ", "pVlQcOjSd2EI6MoT", "T9jq2650XCeUIesC"]}, {"partyID": "Zf02nfYNqg1kcO2o", "userIDs": ["tBmUMgvtbS769bob", "nMzUK0hxel2xA6PC", "OQ9Y1nYOUDHb7HVt"]}, {"partyID": "4gPVLiNQBKiy4uBC", "userIDs": ["jZ2YAZiJCf5enN2K", "ldPC8By0NMgjRv9l", "hAIT8U7gon7siI19"]}]}], "ticketIDs": ["oYEeEgnYvJNMh9xr", "tP4H9ZwaE5dhaXzK", "rpKzrKTDZr4C0z0V"], "type": "jtpIwfuONHM56me6", "version": 48}' \
    > test.out 2>&1
eval_tap $? 30 'PatchUpdateGameSession' test.out

#- 31 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'jsrkZw8g91IZnbYS' \
    --body '{"backfillTicketID": "ViSGCRW1Cm3tWFZN"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateGameSessionBackfillTicketID' test.out

#- 32 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '9VsFGeadmWLkBJEa' \
    > test.out 2>&1
eval_tap $? 32 'GameSessionGenerateCode' test.out

#- 33 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '4DqoYiDQra7yE9k7' \
    > test.out 2>&1
eval_tap $? 33 'PublicRevokeGameSessionCode' test.out

#- 34 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'U1b5yNxlnIEllDU9' \
    --body '{"platformID": "5bEadWSc68fWPmEe", "userID": "ocH9XYKYd7AkWx8C"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicGameSessionInvite' test.out

#- 35 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'nbSYiMQQ0NhqFZFe' \
    > test.out 2>&1
eval_tap $? 35 'JoinGameSession' test.out

#- 36 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'QnT10f4O7T4dIIWi' \
    --body '{"leaderID": "ZGkN6Enya3AcTlgH"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicPromoteGameSessionLeader' test.out

#- 37 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'W5SiYAN0sQjBLk6R' \
    > test.out 2>&1
eval_tap $? 37 'LeaveGameSession' test.out

#- 38 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'DmRv0yrXksjyyz0U' \
    > test.out 2>&1
eval_tap $? 38 'PublicGameSessionReject' test.out

#- 39 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'n6x65hpQdUPYKXvu' \
    --body '{"additionalMembers": [{"partyID": "gowlskMPTbyNAuWN", "userIDs": ["d3TcDh1e4iDznZhJ", "oC4i6q0G1fSqE0SP", "gI5sZ9FkOnm33O6W"]}, {"partyID": "yRYKOA3WqPeEqrr5", "userIDs": ["D76OYC7EiuyyDRnG", "U2EpXy5OX0I8jDuM", "yf0JVKMGIXsEnUF7"]}, {"partyID": "bBG2YMUc6NYHs0ym", "userIDs": ["Nn7TElXGD09Zu5R3", "qOGiGxSecfPLb37o", "4r2Y7VacmCyiwnAH"]}], "proposedTeams": [{"UserIDs": ["jWsL3rhFHIJSV9eS", "FYLhjeBPvp5nk9Ox", "e5A7ZWegPRINtzYa"], "parties": [{"partyID": "xpPaG8N28GotLgFB", "userIDs": ["e9bX64A88IqBMYoe", "RnKwH94RLoZzbvUS", "HXQbDBLzco54XyA3"]}, {"partyID": "d8EePg5XIivWQPbq", "userIDs": ["QFIv8xg85wbRsQl2", "6FAUlo7Lmv8EsqY3", "OiQ6YlZUaCoQJZSi"]}, {"partyID": "oSXLvPnrUdCt9M98", "userIDs": ["Va8wFagiS7N2vTY4", "WiVJCXCb0OWWmi4A", "ziIJT4EVw7FE0FTw"]}]}, {"UserIDs": ["WnX76a5Stt50u8ls", "hr4Vvi4OLCIPBAQA", "mKboTq5GftLqeuLE"], "parties": [{"partyID": "SmUuT27agV9sfsiR", "userIDs": ["D5mnHoYmmRiu2UdB", "T7k0n0Ex2JLwtUIh", "Wkd0KMKuHeqmoeIs"]}, {"partyID": "sJZcd9Z6QdLyRYxG", "userIDs": ["aQFXgBPIqQa5MYTd", "UNDSa4NU00qM6xXx", "ACAY9G5Izv0isxGn"]}, {"partyID": "wDVXobd1xe20FQRA", "userIDs": ["wi6vDzgcMJpYHj8v", "xn1OpgBdmHOC4wyr", "UHGWer2YZWhOC3Ln"]}]}, {"UserIDs": ["4PZBVSoZjPawh5Wf", "Q4vRjRTLPHIPsEKq", "coOddAr1N4lEXp6R"], "parties": [{"partyID": "avEDMxpyGlPH2J41", "userIDs": ["2heOsewNEhZCOH5v", "5IG3YfGhtV85dqUT", "VUb4OTY5e3GqnoVN"]}, {"partyID": "xs3aHhftIuiq7bFb", "userIDs": ["fgxIXFKHDxWm91HH", "pILNixVuXEsZGJeL", "IwH8c5BJpqT6kUTD"]}, {"partyID": "tabaepFhU0UYbvmu", "userIDs": ["3hnlkZUgs0UpMhmP", "jR4yy2b7yHghLil6", "U6pAKTarEmxr6Hmw"]}]}], "version": 100}' \
    > test.out 2>&1
eval_tap $? 39 'AppendTeamGameSession' test.out

#- 40 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "il77OsjptllyrthJ"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicPartyJoinCode' test.out

#- 41 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'X2yROuTFV0nkYuZR' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetParty' test.out

#- 42 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'MAiSVpVXQvgUgv6B' \
    --body '{"attributes": {"ui8tOFfQ5LMhA7w5": {}, "kBrMH9rKInaMS6NO": {}, "pkHEH8C7HS9OsS5I": {}}, "inactiveTimeout": 52, "inviteTimeout": 9, "joinability": "qGnAM8UqU3yfEx6o", "maxPlayers": 38, "minPlayers": 39, "type": "E20dl2XKyFMKGAHj", "version": 16}' \
    > test.out 2>&1
eval_tap $? 42 'PublicUpdateParty' test.out

#- 43 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'S7uNLF8RKREwQ9Up' \
    --body '{"attributes": {"YFHcK2eIj2oy6OlA": {}, "IId47nLsLBLUIEFT": {}, "2Pdq36o1Kq8Wij5m": {}}, "inactiveTimeout": 41, "inviteTimeout": 71, "joinability": "I9yXcKFrkNpuJYgk", "maxPlayers": 81, "minPlayers": 97, "type": "Wg8sDH0Soi2a7uQj", "version": 4}' \
    > test.out 2>&1
eval_tap $? 43 'PublicPatchUpdateParty' test.out

#- 44 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'EyJQoLGW8ZBF0yiM' \
    > test.out 2>&1
eval_tap $? 44 'PublicGeneratePartyCode' test.out

#- 45 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'jGCWyQ14HU968Ctl' \
    > test.out 2>&1
eval_tap $? 45 'PublicRevokePartyCode' test.out

#- 46 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId '0UxIn8FvDwITqb5X' \
    --body '{"platformID": "8JidoCAQbopRXXnO", "userID": "hb9SWxhQg3ej2e88"}' \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyInvite' test.out

#- 47 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'nloj86m5jRgUq83H' \
    --body '{"leaderID": "KYzp8Eq4p9ww2s1F"}' \
    > test.out 2>&1
eval_tap $? 47 'PublicPromotePartyLeader' test.out

#- 48 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'EY0mtqGoJLmhjKtL' \
    > test.out 2>&1
eval_tap $? 48 'PublicPartyJoin' test.out

#- 49 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '0hrC3vobr1reMVjt' \
    > test.out 2>&1
eval_tap $? 49 'PublicPartyLeave' test.out

#- 50 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'bZCKD1Vdvc6lyWqH' \
    > test.out 2>&1
eval_tap $? 50 'PublicPartyReject' test.out

#- 51 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'opZAVWLBEAJGNGyc' \
    --userId 'XQgHidAXXu59Tqna' \
    > test.out 2>&1
eval_tap $? 51 'PublicPartyKick' test.out

#- 52 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"9yimc9ItxDAthyO8": {}, "am96SFhqAd5DC4ug": {}, "Fo9H9aEq1i5wkSg7": {}}, "configurationName": "lNIJfYzju8F6mMkF", "inactiveTimeout": 84, "inviteTimeout": 23, "joinability": "rRCiApMlK5V4iqa7", "maxPlayers": 39, "members": [{"ID": "2jCqvBVf5LNJ8mln", "PlatformID": "cXDopiqARlQHwYG7", "PlatformUserID": "J163FHS1JZsrSf4l"}, {"ID": "EuW0Nrz6G97dMnRh", "PlatformID": "TY52tkaltRvCL0hu", "PlatformUserID": "XKPB0UibK84IXvVW"}, {"ID": "atDJTao9vW1mRYEX", "PlatformID": "phgiHeimxjQB07gY", "PlatformUserID": "WShbhT9qm7PspNB9"}], "minPlayers": 33, "textChat": true, "type": "6pzGb7eHLAtXBsm6"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicCreateParty' test.out

#- 53 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["7gWSUlCPKUnv7U3F", "fkz8opgxf1EJpzYx", "WjmIlf6Kkx0Qfxfr"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 54 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'PublicGetPlayerAttributes' test.out

#- 55 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "0hFTHz7de1nvCEHL", "data": {"Hsw5TmaQC4UhmzKB": {}, "ZXKC2qvqbnw3PC1M": {}, "hiQ5KH31C1qR8Q4J": {}}, "platforms": [{"name": "Ez6Ix59qlUenwB37", "userID": "odZbzTWyqXhNZCnK"}, {"name": "29OdTOLEQLYwrbBG", "userID": "uNcxo0Hqla4FeHl4"}, {"name": "CmnfJZC7tW76QPqU", "userID": "ms6jwYXhk7S93NkL"}], "roles": ["8eM7N7e4hGT4AzVl", "qy6kyVFXlbmvrSRs", "4XpOlsoGWJLnRqoq"]}' \
    > test.out 2>&1
eval_tap $? 55 'PublicStorePlayerAttributes' test.out

#- 56 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'PublicDeletePlayerAttributes' test.out

#- 57 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'iEGIfouth3PAyALN' \
    --orderBy 'kXlEzjBizbsl3Zly' \
    --status 'GVmUYlPl5nQSpLK2' \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryMyGameSessions' test.out

#- 58 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'TG9QaDR1a690VAdN' \
    --orderBy 'q22Bg0D027YaXHGV' \
    --status 'f5HClur5eYqmrZGP' \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE