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
echo "1..78"

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

#- 6 AdminListGlobalConfiguration
samples/cli/sample-apps Session adminListGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 6 'AdminListGlobalConfiguration' test.out

#- 7 AdminUpdateGlobalConfiguration
samples/cli/sample-apps Session adminUpdateGlobalConfiguration \
    --body '{"regionRetryMapping": {"c8SIgnNC9GNcARFh": ["J8BtDQcr0d39CQCJ", "Ny526rCIzgtdfrTP", "8NGTS3hM1t79D9sq"], "Uke8ZXrDTmUtVwvb": ["xpkBBABfSwbdTL4B", "CduVTLaqZpXFZSOc", "jN903b9rkdj1aMsI"], "UsKcgglFX80Mnoam": ["KfnNnKQcx9dZEuXA", "MQVIYJzfEDQusqIB", "dvzM3UDU1pMUYCC8"]}, "regionURLMapping": ["bCfHfKYRmsFDv9RT", "w4hpfd5mAaCQLUoW", "AvviM6OqJFv0EfCD"], "testGameMode": "6XS9YI4iN82CQVLc", "testRegionURLMapping": ["C3LSTv1cKiR9hJwm", "fOhLyIa8TaQFaRGu", "ni8BPxikFpojo8ql"], "testTargetUserIDs": ["ticrgbQ745j7dfzf", "6HpKKVyL5jOIBYfm", "snh2vdvUfXoJHT1E"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateGlobalConfiguration' test.out

#- 8 AdminDeleteGlobalConfiguration
samples/cli/sample-apps Session adminDeleteGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteGlobalConfiguration' test.out

#- 9 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetConfigurationAlertV1' test.out

#- 10 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 23}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 53}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateConfigurationAlertV1' test.out

#- 12 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteConfigurationAlertV1' test.out

#- 13 HandleUploadXboxPFXCertificate
samples/cli/sample-apps Session handleUploadXboxPFXCertificate \
    --namespace $AB_NAMESPACE \
    --description 'sN6XG66918b5Iw8d' \
    --certname 'gOoddpErvLLsC0G0' \
    --file 'tmp.dat' \
    --password 'W0vy79StnQL9NGQ1' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 28, "PSNSupportedPlatforms": ["nhZqBkCQp4LVbwJB", "Xr4hdcll8pahCivs", "j2WVkN5AnHZqrb3m"], "SessionTitle": "YRTmZhjH33zkjFLm", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "nqK7QYBCR5F5DKuG", "XboxServiceConfigID": "9rleN3pdgmFg489P", "XboxSessionTemplateName": "HlSWMI7k44OQKTXb", "XboxTitleID": "IJRyE1YlceQL33n7", "localizedSessionName": {"pnfdvsdmf09PDOdB": {}, "IiRJ1ydKQX1gc0X5": {}, "MXFvwoZnVmW6ggL9": {}}}, "PSNBaseUrl": "ppS0qsQGt6tf8X21", "attributes": {"wxeQwDvg8XD8dhIL": {}, "N16f7v0mOV2WA6Sb": {}, "20dJR7dr7wQkzIch": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "x7Iyc9xJ2BKIi9I0", "deployment": "aYZCMnXJksPTQ5d3", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "yh3PaLp2mnFD9NdC", "enableSecret": false, "fallbackClaimKeys": ["waNdf2aSSuSbJxNT", "tQtY2znDLlhyhFbg", "wAg3AOQTJriDEOSs"], "immutableStorage": true, "inactiveTimeout": 41, "inviteTimeout": 31, "joinability": "TcBlKiwEiaF5HwmO", "leaderElectionGracePeriod": 81, "manualRejoin": false, "maxActiveSessions": 80, "maxPlayers": 94, "minPlayers": 46, "name": "696dGjvSSyjuVFCh", "persistent": false, "preferredClaimKeys": ["2gRdmwVYxCI5ImaC", "hQKZG5OIPBiyd2Oz", "3oecSKp3h5a38xdd"], "requestedRegions": ["oqiltNGidqheGGTk", "fRnKnO2h2ZLDfZTF", "20IRJI69bPFuxZkU"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "WrDW2CD0K6F8zs7d"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --name 'YSYF7iewknyPNAYS' \
    --offset '63' \
    --order 'J0bxQVsFDDelkjSh' \
    --orderBy 'ciOmxVW00dRU7ne6' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'lyZqRmpDLORfuL2c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'sEl2YlGz3724Mrl9' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 76, "PSNSupportedPlatforms": ["Y89r3x2Sf1bR4QRE", "sbGnmfhpE9mDSbKA", "YNfznkXyYDa8ORIe"], "SessionTitle": "ZXR17dQnwiuvfAi6", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "6TqQ1YHpZuuiocq0", "XboxServiceConfigID": "vj8m1MPDH5BIf0Ty", "XboxSessionTemplateName": "N06l6wZAnleL29CP", "XboxTitleID": "zvVru8s85YRAxrIC", "localizedSessionName": {"JOD5NFGlOh0JQpp8": {}, "5rqzpBdR8WiU5wyi": {}, "bO7O9Wa9qM18Sfeb": {}}}, "PSNBaseUrl": "DhVaC7uQh3nnLKJB", "attributes": {"VOOolHMcxYiCsnWJ": {}, "rDf2ezXbxmj7Q3iB": {}, "pDauXjnzm52gOXhe": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "VbPRcpktzwfQhhRv", "deployment": "lMjD3r9Byw8aKJnl", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "6pKSz9r0mNiWROYG", "enableSecret": true, "fallbackClaimKeys": ["rT5IbpA1xJC5S5He", "e2oqOldWNnwGwrm5", "rGRhbpZLbPaJvz3S"], "immutableStorage": true, "inactiveTimeout": 13, "inviteTimeout": 2, "joinability": "DSsARatM8XmIHBAQ", "leaderElectionGracePeriod": 97, "manualRejoin": false, "maxActiveSessions": 55, "maxPlayers": 95, "minPlayers": 37, "name": "58W3wmHIivhHikuO", "persistent": false, "preferredClaimKeys": ["AEZLrWAvd1qINHpx", "HojAHjRPNuHJYnKJ", "5twtmEAWnugT5m4w"], "requestedRegions": ["Stn85wbR76mytH2W", "q3RwlaoKoX8puuRB", "e8RgY2UMCnDm5b8p"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "x5a5wASoOCPFTDhq"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '4FQeRwBN2knrMoxP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'Bk63gjA0oB9IH3dY' \
    --namespace $AB_NAMESPACE \
    --userId 'meFcWJqrXjrFmL8o' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name '1PQE2v3NFcPMMsPK' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "eIjUYh3wWkHOomO6"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminReconcileMaxActiveSession' test.out

#- 21 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminGetDSMCConfiguration' test.out

#- 22 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminSyncDSMCConfiguration' test.out

#- 23 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '0JUSkLdjZ3ay6dsU' \
    --dsPodName 'M8gTl7yv4X6W7fQe' \
    --fromTime '3sRJuATIfJ1t2HTz' \
    --gameMode 'dDdJA6WKZrqnTvQS' \
    --isPersistent 'No01xUbYl1mZXwC8' \
    --isSoftDeleted 'HqqHjedOboBF6s72' \
    --joinability '17F7Nvi0ALKOyW8u' \
    --limit '26' \
    --matchPool '1iW6xvyvhWwSdIE2' \
    --memberID 'UBUp8w9x3FOV5wV4' \
    --offset '37' \
    --order 'Hp9g92CoMLIaT5fu' \
    --orderBy 'fQylCZsrJNcUQGJZ' \
    --sessionID 'bHShRxezbQYRfNG6' \
    --status 'FbNC0xL9bgkiEqFN' \
    --statusV2 'Kygvd09JaUYBiOrZ' \
    --toTime 'mj264ryOnkqovsNq' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"tpuSRNtrSq8oTPZ5": {}, "TLnDuxh8NhUTQY6o": {}, "c3RRAg4WD9Uc9nYb": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["vUPN7RqcnjOvvwZi", "JZbM4l1viJk7sXgb", "UXEBqVAXFKAFgmgq"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'tD0bcQKBYj9jYcbz' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'v4kzcEXclABsscSf' \
    --namespace $AB_NAMESPACE \
    --sessionId 'sZBPwbf7lOxjHNg9' \
    --statusType 'lxT0DgoU0KRGK8nN' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '70' \
    --order 'jTBisJaQ30dnTuEI' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'kpp18JMVR5hMY0vn' \
    --joinability 'fa2tcucIphaGorBn' \
    --key '1y0CUgkqT9ETGxGN' \
    --leaderID 'dkKoBpbZqaxkYLli' \
    --limit '20' \
    --memberID 'tf3Q5NMKFQ4tKhCt' \
    --memberStatus 'TVop3XOQXhvCy6QX' \
    --offset '67' \
    --order 'Ng7zhzPn4wBwdAl7' \
    --orderBy 'jkhEYDpBBNzTLWa1' \
    --partyID 'pWS0SkqrVIp44wh6' \
    --value 'xqvVo0bO8opfHBVS' \
    > test.out 2>&1
eval_tap $? 29 'AdminQueryParties' test.out

#- 30 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'AdminGetPlatformCredentials' test.out

#- 31 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "6gESN6tKMqfSAIGN", "clientSecret": "9m4OhDS68Oaobn93", "scope": "4zRccQtt5QngysNK"}}' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdatePlatformCredentials' test.out

#- 32 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminDeletePlatformCredentials' test.out

#- 33 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --userId '65R1cNSjDgJ6B2pR' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetRecentPlayer' test.out

#- 34 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'r883sTe3jaVKFPjL' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadSessionStorage' test.out

#- 35 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'b54TTtcduIHHrrb8' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteUserSessionStorage' test.out

#- 36 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'yIwo3kt0WwayAlhJ' \
    --userId 'T5ZA84agqqbnxFLH' \
    > test.out 2>&1
eval_tap $? 36 'AdminReadUserSessionStorage' test.out

#- 37 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '6hckHvl9qLm6qsaA' \
    > test.out 2>&1
eval_tap $? 37 'AdminQueryPlayerAttributes' test.out

#- 38 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'g7jlFS2XO9OXThoz' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetPlayerAttributes' test.out

#- 39 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"SpvIu8LJKqnFLPkr": {}, "xqn8hVo7J22Ykt6K": {}, "RkXjw4wSs316cOpD": {}}, "autoJoin": false, "backfillTicketID": "Xqom6lqHchA9DWBz", "clientVersion": "RhkOU5noM7d7Wq58", "configurationName": "TxvY7yNEwoLMZaxL", "deployment": "wEZq4oKT7UBWSC42", "dsSource": "XcxcmAKOspPbrEeo", "fallbackClaimKeys": ["ch6Gk2pUrtSVHSmh", "pj0MSkH4RJI18e5z", "BG12mYA1oRYW7lmr"], "inactiveTimeout": 34, "inviteTimeout": 11, "joinability": "Xs5DLr9sdce3jl15", "matchPool": "jyVma5CJt7aXwtyI", "maxPlayers": 81, "minPlayers": 75, "preferredClaimKeys": ["xH7b8YsANwabqz2X", "7jYbVHeHaZqNfeqF", "IkDB7ggThX7na3Qe"], "requestedRegions": ["PpLuK6JgOkJQdHaP", "RVfOL2ueRwmXKv5b", "NnrL8AXVpmBasjO0"], "serverName": "GuvLGjBtPeGGigCV", "teams": [{"UserIDs": ["2gu0c1i0ciDCULmE", "7LB6GCvonr52B9sb", "STyEziHwad2YmNjE"], "parties": [{"partyID": "khAxcl2yt7WNZbq9", "userIDs": ["cO9ByfwSeR0jRpPv", "ehvAkVOKDKPNKDmY", "8YgA1wNSPPdHdIzU"]}, {"partyID": "VdfmhWu9lQXCR9gL", "userIDs": ["ARDV0i4fU3IIoLvf", "gjF5TOvZVJhIpklH", "iIV8PFGQEYgoPwCk"]}, {"partyID": "lFeFXYo82dYLAWdG", "userIDs": ["PsJmVF2ll4Hrhu0D", "ul2LR0BBCAyg9ys7", "YFKOoMzzDelfLMkg"]}]}, {"UserIDs": ["e99tAqc5A0utT5er", "4jYvQRrUl9O0o0cQ", "iQsosZOTGip5cROh"], "parties": [{"partyID": "8Sr45NfQ5LJiZaXy", "userIDs": ["AKUnJPhtdlmIO9TR", "VnHmEGvKK1VRqk41", "itSXGaaxgBpHy7Wi"]}, {"partyID": "I9VJSsEQ8uKxKCFd", "userIDs": ["vLrRiyG3vQWhEBta", "hl8MHqZjj5SiKnSS", "0bXLcb1iBi8Zzlid"]}, {"partyID": "duX9qk7KUI9be6TI", "userIDs": ["PrW6vyytfk1TjuqA", "R6ABG6pk4lO6NVZY", "7unkjFwGv8GDkBG3"]}]}, {"UserIDs": ["MBY0ySHJAcVMSTyJ", "QI7CAOazC1PxPtjN", "xVyqCxN4OgEXzeEP"], "parties": [{"partyID": "MkeMQ5GgP9xxuext", "userIDs": ["2Xm5DbL0QUppb1so", "RZOAINZ8MjNvYZQa", "MdMbSt58sGZg7RG3"]}, {"partyID": "UnSgDBypTuDJAYPV", "userIDs": ["8z3JTQC1ei4qAPes", "BPGHPlPLHIklS2Sk", "M28RiDNh3jdyZVR4"]}, {"partyID": "fdL7tr56lyMjoeKH", "userIDs": ["SqJV56cDWZJm7P9v", "XZmAMbd9Klzsku6y", "YOWjzElgvAoEOKRv"]}]}], "textChat": true, "ticketIDs": ["1NBz3xhjzECe80yw", "OlKUxgwfSmUFhR9u", "UjGzMaAnWE5u1emR"], "tieTeamsSessionLifetime": true, "type": "VtNXlevrx5Zio9FE"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateGameSession' test.out

#- 40 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"Rg8I7GiZWZne15hx": {}, "O8Ucx6eAbkMVAaWv": {}, "99oIJ5wUS8S6EwX6": {}}' \
    > test.out 2>&1
eval_tap $? 40 'PublicQueryGameSessionsByAttributes' test.out

#- 41 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "XEtIP1AmA6Z4mmrJ"}' \
    > test.out 2>&1
eval_tap $? 41 'PublicSessionJoinCode' test.out

#- 42 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'AYIOI28cmReiMBHA' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSessionByPodName' test.out

#- 43 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '3Smayk03zagLS5Wx' \
    > test.out 2>&1
eval_tap $? 43 'GetGameSession' test.out

#- 44 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '7003p2Oo5WIiRJJq' \
    --body '{"attributes": {"hKmBhaXVv74avgfv": {}, "BzaxSP6PveS6LBp7": {}, "N7MOVYHdNcXvxe3f": {}}, "backfillTicketID": "ZURiZYyCJfSDvkKw", "clientVersion": "JZFMhaT4tnt1mHH0", "deployment": "Ca9P1kUchOVJ53ph", "fallbackClaimKeys": ["2OmtGVdrRZadB3KQ", "BLaNoVyP525iLvUg", "KPDq3rGhawkRr9Sg"], "inactiveTimeout": 3, "inviteTimeout": 20, "joinability": "VStPXeqDNEc4166n", "matchPool": "7IpDCkMV04G8kjGI", "maxPlayers": 28, "minPlayers": 24, "preferredClaimKeys": ["jC7loG0x816S2m8e", "aF6Bx87z5VuqTBsi", "JgaxHqDufrnUNRKV"], "requestedRegions": ["Bb6vO97KccXM2d6i", "l48paHFjkItkSWdV", "syxTh963Eg8Lsgnq"], "teams": [{"UserIDs": ["sVGMLBAJ1qZPPWHS", "28DOA0ID4x6vCg1k", "ZEpEPkJHzVk4CcWU"], "parties": [{"partyID": "kXTU03w0UPuqLNcQ", "userIDs": ["UmyTyAUz6xCwDAsz", "I9hub9CnsjMZ1H8f", "VtXhWiroUkmBBUFs"]}, {"partyID": "Ykt7Dea5HLXbEFhk", "userIDs": ["irUBychn9JC8WOdO", "6BjWmlV2f4ztNhEy", "fbbHJrnKZ3Uxe8pl"]}, {"partyID": "mRTos49qG2r0O4nM", "userIDs": ["h8czeK5BPHIZJgku", "uxeUhZoVwh3pXy8E", "EtTB16WiayGGgBlI"]}]}, {"UserIDs": ["F2R4F7S0LwD4zo80", "H1krGe4PAYVJMwp1", "PpQfGVzGn6Oyp4V1"], "parties": [{"partyID": "jGCDpHYQ3tEdaJMn", "userIDs": ["RVbzeW88Evj27f0o", "hH9faDAS0QHchB5n", "c9TA9iE2eki2goPW"]}, {"partyID": "Uk4u0s2Muj0abmjS", "userIDs": ["finOXmMvIWMZUyKN", "7cSzCQrqhKeXFCKg", "aVZ36cHMv9i6o3dd"]}, {"partyID": "fOZWZuBMXCDWG4aa", "userIDs": ["RBh1RtM483zNKKR5", "iIo1nIyZJR6oGeG7", "mjwCRe3OijDr3pQP"]}]}, {"UserIDs": ["Aghu4VOEVGZ1bL0F", "bmvQPZSl7d14PNzY", "ntiGugonASN4qbS1"], "parties": [{"partyID": "nGNwtzTcl9ZOHSWA", "userIDs": ["dSF8OkO7IevgYJmR", "ZCoG61fU7Y3YByUW", "AxjhXiJmnQkYKoL9"]}, {"partyID": "gFzb0CocnQ1tc6f1", "userIDs": ["VdyCd5zvOMXirc0r", "hpsjcAztrQUY1VK5", "FOzRX9AYDvcHNtrJ"]}, {"partyID": "ZnuhpKxdc90MoJF2", "userIDs": ["2LTbZxH2Y2aEsS2V", "Ll7VrIKaHtD7spvZ", "JhdbybTFcKaE51b2"]}]}], "ticketIDs": ["TcPdrXVgWlvw2a3C", "01rLZHxpJ7IljGLN", "veOCuXagsjMwOOva"], "tieTeamsSessionLifetime": false, "type": "u5AqNHUYcwXVqVz9", "version": 2}' \
    > test.out 2>&1
eval_tap $? 44 'UpdateGameSession' test.out

#- 45 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ESK8gyA0BbPujLPZ' \
    > test.out 2>&1
eval_tap $? 45 'DeleteGameSession' test.out

#- 46 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'NNzmo93QVGmhURqj' \
    --body '{"attributes": {"5G1paEIlt8JGq1dD": {}, "POLqlHakgJ6OCPi7": {}, "mm8LLCaAx77pTcqi": {}}, "backfillTicketID": "4C4PKFssHLxbUOBd", "clientVersion": "IxzDwf9OiMQhNH5D", "deployment": "mmL2TKQ42Kukb688", "fallbackClaimKeys": ["e8FT9OGERbcCvTK4", "D1iZc4cUMzYpTE27", "WNGd0FHPRORx901e"], "inactiveTimeout": 65, "inviteTimeout": 21, "joinability": "IZ8JTHhS6vvl33wf", "matchPool": "U4WzDaQRZiAl9GWa", "maxPlayers": 13, "minPlayers": 30, "preferredClaimKeys": ["oLQAmyVt1toNoxkI", "56poIIuLBd3IH9E2", "8iethD7OOEhtGC7N"], "requestedRegions": ["bCEDINc38ucWt55o", "m0EcFEvUuSY460jn", "V1cn5F7PJ03axQ9p"], "teams": [{"UserIDs": ["gLIM1Pf4eKLhjyot", "xXXYPolWsxaCHiiY", "HtfhVEZXUPVrqH85"], "parties": [{"partyID": "ur3hyodL50ZAP36f", "userIDs": ["6ByVbtCvhFq9KwVi", "5b1rZxYSrfnw3C7g", "XnCTGB2P49Vi4tja"]}, {"partyID": "jO6OpXR4pYjsAAU0", "userIDs": ["JDmlgam41Oet7XIO", "5NR9p3KKvaMRh5f2", "CfeZaoRCZEBDadmk"]}, {"partyID": "DqdM5ZJ3DU58N5uH", "userIDs": ["wfwqBJav1m4hJfh3", "1D7ara60h5rWRP2e", "EdaOYLyFjbdXyHKG"]}]}, {"UserIDs": ["yK9tAdp58sSsMMIZ", "nQUZk04zDIgAH3XM", "2Wg5N5vpUumTj7Bw"], "parties": [{"partyID": "GZ2VrBCQFdRfouK5", "userIDs": ["UXi2BKJUGsu1MnHL", "EwpXICIGllocxHet", "OaAmwlDkCzcBnh7g"]}, {"partyID": "u4QurpnZDqB2vR2d", "userIDs": ["R2oghnKE5XIgGGzr", "783mQn9RJ7aLvBGH", "fmMvnqjGMRXEnT5R"]}, {"partyID": "dnoL6qfIcodOwv1k", "userIDs": ["1vMLQLSzJUAdaMSj", "5D7QWltI1cjg30FU", "8gkKSZcMDog7mLeS"]}]}, {"UserIDs": ["Xir8bwV2Hak4GDSZ", "BTvfkyDhgZ95MVld", "tJA3mgdUmm49rhy8"], "parties": [{"partyID": "UtCDCurSekgPUvd4", "userIDs": ["mDvlZe8KS6c2xWLa", "cSdnBCcjWMEY2sGS", "9pwvB2UTEY2mtb5m"]}, {"partyID": "QoEpqrInS9pwXNgA", "userIDs": ["jp67gPZb98RmfHf2", "XC4D2eZcI8tWxVZQ", "TayXsgvzdpoOAFuL"]}, {"partyID": "m40yLLB9tIvHpb1P", "userIDs": ["VZ1ic1mZSnEx2Y2V", "8zMjRAoidmKxtjJz", "tlh1cWpKGPSnghRF"]}]}], "ticketIDs": ["i26l6X0rhG4p5u2p", "gYDNPrJRQp4wBOzZ", "Fcbjne2p4nL6xgIv"], "tieTeamsSessionLifetime": true, "type": "Oh14Jzuon2E6jU0I", "version": 90}' \
    > test.out 2>&1
eval_tap $? 46 'PatchUpdateGameSession' test.out

#- 47 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'p5XBao15eOyiEL0y' \
    --body '{"backfillTicketID": "fmJ5mfCYjgbEe61U"}' \
    > test.out 2>&1
eval_tap $? 47 'UpdateGameSessionBackfillTicketID' test.out

#- 48 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'uqRk5h5yO6oRgEOe' \
    > test.out 2>&1
eval_tap $? 48 'GameSessionGenerateCode' test.out

#- 49 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '7JwRtPjTdo0r4UMR' \
    > test.out 2>&1
eval_tap $? 49 'PublicRevokeGameSessionCode' test.out

#- 50 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'ixsrZdUAnr8A4aWK' \
    --body '{"platformID": "w9k4wIA3s4rGnEuH", "userID": "xPumGhnUPPQFw7e7"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicGameSessionInvite' test.out

#- 51 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'dUOw55YEAyhGK03v' \
    > test.out 2>&1
eval_tap $? 51 'JoinGameSession' test.out

#- 52 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'odO8kwaSbVBKwNVz' \
    --body '{"leaderID": "yXJwUhuQWStEKYkP"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicPromoteGameSessionLeader' test.out

#- 53 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'AiUipZcJwXipOxNL' \
    > test.out 2>&1
eval_tap $? 53 'LeaveGameSession' test.out

#- 54 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '1prtHXwfkennM2pa' \
    > test.out 2>&1
eval_tap $? 54 'PublicGameSessionReject' test.out

#- 55 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'i6GqMQCLrcgwGglW' \
    > test.out 2>&1
eval_tap $? 55 'GetSessionServerSecret' test.out

#- 56 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'FEXp1YHBOia1hPAY' \
    --body '{"additionalMembers": [{"partyID": "B1uqAtrimVONJgcO", "userIDs": ["ipoBk1NMHyp8SIhf", "s5s0LzZ2aKWxV7Bx", "1VGh58ZOGIsZM0Hh"]}, {"partyID": "9y1mYJKfqg6K3wRD", "userIDs": ["4XdEbdiFAvwlVh8n", "8qWkKNn2zU6UwGu1", "ldQBUn3vzXT8SM9M"]}, {"partyID": "Gz1cn8kq1ehUqn1w", "userIDs": ["B9QRiZ1ew9BxDIso", "2lewsEvJ4zGCq5r8", "UE0NMWXbH5OqFrQr"]}], "proposedTeams": [{"UserIDs": ["zZDioBs1bBQLNEUW", "n69Xu2cqwqCK2MOl", "QqAsefJO9w0s1i52"], "parties": [{"partyID": "GDf4vY66skKaxBfq", "userIDs": ["7hxAl3UTGtP8Z4g3", "yR7K80o9YB7SCsfA", "kg7326qthrHflYCm"]}, {"partyID": "8VEV9CidSVbnhqHS", "userIDs": ["s1HLtZAouV2CkOZD", "0LK8sjCEckX9zZ12", "3YzugoNcmjl2GU0W"]}, {"partyID": "jzYEVhD3hx0RwQDd", "userIDs": ["bHmkl0PjNDhhFq7u", "bvZxpoPT9ZUS6dBr", "ss57oJE7QpOZq2Id"]}]}, {"UserIDs": ["17yT2PVniakNjg9e", "MvjJTftS1qXNhJgP", "lGOnhcZPVJYx6JqV"], "parties": [{"partyID": "GxsdMINgh9exmwZU", "userIDs": ["ri8x6DSqguhnMYMo", "5hnDtpNigPbjZwyo", "hdskSxQpkdfxjdiX"]}, {"partyID": "82ZRFWqG760Hwh7h", "userIDs": ["KyASrnDHNTygTFEG", "OlQXyhyuyvpt70o6", "qbWUSXGiAEmbBs3h"]}, {"partyID": "08devGfEIAht4Uxt", "userIDs": ["mVFfGk0NqZdhkZ5O", "sHUwUCecvO11Lw23", "ojhFaagqm0amgfNA"]}]}, {"UserIDs": ["yGw7Xji17VkBI4BQ", "vcXns1NorEcddnFU", "dku6sQcT7lB5JqoU"], "parties": [{"partyID": "WBI1pNJDTrlYIf4k", "userIDs": ["KOvMECwOKBx6CJpF", "m3gpPcEbTfHfdQur", "N1VMusx1BZVMfskl"]}, {"partyID": "iQJajMxPUIWiE72y", "userIDs": ["WV7pwVuQnl1B8rcX", "UTIoDsfoRpnLPLB2", "F1bgqDEqXqqwaqVs"]}, {"partyID": "8IspPQTlfrJhPrzm", "userIDs": ["Ze927Lg4DT4mZ5lj", "TcfCw4r80Iwd8Ntj", "QXaPQUrumfM33eVC"]}]}], "version": 5}' \
    > test.out 2>&1
eval_tap $? 56 'AppendTeamGameSession' test.out

#- 57 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "muuAmA1TAxcrbacR"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyJoinCode' test.out

#- 58 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'SSuxPvgdh0094UDj' \
    > test.out 2>&1
eval_tap $? 58 'PublicGetParty' test.out

#- 59 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'sF3uA7NAMx6mrCuq' \
    --body '{"attributes": {"HbDGfl8SZqa6oT5l": {}, "c7bWhq18K946L23E": {}, "sdKwByQAf99GDL3Q": {}}, "inactiveTimeout": 56, "inviteTimeout": 67, "joinability": "650beCLaZYwwysM3", "maxPlayers": 91, "minPlayers": 78, "type": "crxngFFPycrIB1Ay", "version": 80}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateParty' test.out

#- 60 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Ibk9b26hu35wGojF' \
    --body '{"attributes": {"vX5b2lVKmUEfqmAq": {}, "o8gUAdV2jCH2BdwY": {}, "UyZ4OltK5jw1kRiX": {}}, "inactiveTimeout": 14, "inviteTimeout": 95, "joinability": "zV5rmTMgvAn8JE4i", "maxPlayers": 87, "minPlayers": 35, "type": "hhTtASOVNbIn0lew", "version": 31}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPatchUpdateParty' test.out

#- 61 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'QZdSLGnmmvMJKtOm' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratePartyCode' test.out

#- 62 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'IDF51VINsuiUalOl' \
    > test.out 2>&1
eval_tap $? 62 'PublicRevokePartyCode' test.out

#- 63 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'OWDgU5zs0Y3DFMMO' \
    --body '{"platformID": "zZ3e0x9N4Mt6Gxf8", "userID": "YZfnXbdv76P9qMzD"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyInvite' test.out

#- 64 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'lywqyOLxLKknvy1C' \
    --body '{"leaderID": "qdMsNcfd66ZZLuAu"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicPromotePartyLeader' test.out

#- 65 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'oFQFjlPaHbSFGqfx' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyJoin' test.out

#- 66 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'zVvHEShoMqldBV73' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyLeave' test.out

#- 67 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'gBuUdXpdEQI0lTQC' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyReject' test.out

#- 68 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '2XLfZpYCCT74oCvn' \
    --userId 'GSf0Z3Di0OZiG2PJ' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyKick' test.out

#- 69 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"d2iTMzGxTgjBTCce": {}, "CE6wLQ7nWbe097nP": {}, "emOeWHOUFFeEn3Ec": {}}, "configurationName": "MEJpppwaf6d7nz4b", "inactiveTimeout": 1, "inviteTimeout": 52, "joinability": "LOcyki18qqSYhQaA", "maxPlayers": 100, "members": [{"ID": "649w1pyBHude5qBq", "PlatformID": "9lzGe0o3I0qAV1MJ", "PlatformUserID": "PTh6xfQhBbWHkAHf"}, {"ID": "JAs6ikb6wJwL7zKl", "PlatformID": "ofYe2fqSFAKKrO8Z", "PlatformUserID": "pvq4AYG7UfnXfTkW"}, {"ID": "reZzQbnKTW0jw17g", "PlatformID": "22neJlhz9vzF5cOm", "PlatformUserID": "HupyxMWn1OosKCKf"}], "minPlayers": 80, "textChat": true, "type": "9djrvygvONfQKoIz"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicCreateParty' test.out

#- 70 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetRecentPlayer' test.out

#- 71 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'LmqWzhIyP46YAsLu' \
    --body '{"zeyEDOi5rY3948TA": {}, "3gFeqK6p7Aez6x2z": {}, "jPZbugz6Kdad5fqY": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorageLeader' test.out

#- 72 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'jGlAPEHsibiBbwez' \
    --userId 'dgVLVaNdksKi138u' \
    --body '{"Wc9dpBeMRqc9XlBt": {}, "PxLQ6m20QzqmiJfi": {}, "e74PLnjMdLXyz8JY": {}}' \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateInsertSessionStorage' test.out

#- 73 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["gQv9QNocdE614q6b", "Q6dxOVKoZ8mkLRb2", "LC2gd2limB7m52nK"]}' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 74 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPlayerAttributes' test.out

#- 75 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "mblUNUHYZqmEihJ4", "data": {"3gWA9MEadk2kU1ya": {}, "R7D3JsGRpuTEjewC": {}, "ToEeE37nSdhTXB5A": {}}, "platforms": [{"name": "f5LVocBzX4yOwCVi", "userID": "meec9Dvrte77GHHk"}, {"name": "6ST16JKoBE61gtXL", "userID": "PyFRKPUSF9MIJATa"}, {"name": "ui9Tuxmb0MrqoH1Z", "userID": "tDGpVBSTiZvBnZ7o"}], "roles": ["8USDntC4vrCvTpqI", "YEWMYEODLkIUTkxK", "cWarC8XjAdnKaqkL"], "simultaneousPlatform": "RTXvI2fws0kQGuqQ"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicStorePlayerAttributes' test.out

#- 76 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicDeletePlayerAttributes' test.out

#- 77 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'VfvJ07NVPjIHwAQw' \
    --orderBy 'isiYDi1xxiylQ6ae' \
    --status '05lnomhBM5hpayHF' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyGameSessions' test.out

#- 78 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'hLgXX6aC0xSdwZ2y' \
    --orderBy 'XrGajx88saG3wP6j' \
    --status 'o1w6cJL6c7Hf2OF5' \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE