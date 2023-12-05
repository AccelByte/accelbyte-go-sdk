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
echo "1..75"

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
    --body '{"regionRetryMapping": {"VyDusi0dasOQw0Vw": ["mbyWyqDDl8bYJGtG", "0SpYeVHN6b5hXJkD", "lmNQ4jazPNcXLRjF"], "06rQKZNmFgXKjBPg": ["4oIbM8gY3Rs0dysF", "5NXikMA5CFwAwKfY", "CDDWtxcuzf3eHysj"], "tnQ7MOGWPKf2lYXz": ["HtBaRDNkyAh96D1I", "TZqLJM9CsS9tZVqv", "vKA6835ViFzHOxL8"]}, "regionURLMapping": ["Vz9DEnDYqOY6B5Lu", "SPC825D494leTI7c", "ys02I3AX08XXkhtH"], "testGameMode": "abp3smORa7F1Hhrk", "testRegionURLMapping": ["byuUuwhpakJOOjdy", "uXkLBDU1GdmN1ndW", "gZPizB4hj2HHlp6i"], "testTargetUserIDs": ["1l0Nd1wgFmk9d04q", "6JOJAFi5e2QyRfDI", "O87tp1Lc9q67dX1p"]}' \
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
    --body '{"durationDays": 3}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 54}' \
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
    --description 'WTNYPc9nvcsFDlac' \
    --certname 'mQIkaeKcmNryCOYW' \
    --file 'tmp.dat' \
    --password 'NMLhUisfOMFbStLJ' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 81, "PSNSupportedPlatforms": ["Rvt4ZMz7beELPIJS", "CglHw7oaYt6jMk0e", "6XxRgz1vm8GAO6xN"], "SessionTitle": "zAmooYxeprr3wr5M", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "9Mlw1kECLPZkiA1p", "XboxServiceConfigID": "72lCqmSvqEykdLu7", "XboxSessionTemplateName": "wSLLpELNr58UCug5", "XboxTitleID": "aaCtCvHI8du8hqxP", "localizedSessionName": {"QtpFuRog4rXhoCi9": {}, "vKyWJUV6MgYiapLX": {}, "dFe0PAhGtbZNJOc1": {}}}, "PSNBaseUrl": "yp9IYN7KqJ2g9Kdc", "attributes": {"R1YUSe24S4Gdqsut": {}, "tSCMx0iE3CplLDLy": {}, "XYy1suEKzuyDTs9e": {}}, "autoJoin": false, "clientVersion": "ziRrnRt5dh6XKecN", "deployment": "wvUB9XYZaVailyiw", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "F3Sz2oO8rAhpfJeQ", "enableSecret": true, "fallbackClaimKeys": ["ojd1JG4IEFCSiYXt", "obEp7687RxFCFsHZ", "r6uNwobbdMpfnFrC"], "immutableStorage": true, "inactiveTimeout": 86, "inviteTimeout": 6, "joinability": "7UwENUqR2NMpSh5Z", "maxActiveSessions": 46, "maxPlayers": 32, "minPlayers": 12, "name": "f3FXQ1K8PkYYACH1", "persistent": false, "preferredClaimKeys": ["KXUqSBZskIGLxnVC", "wlHScg3Gny7JDyD7", "0zGAeS4JpwKQqZMw"], "requestedRegions": ["gue6p6tS49QwaPeb", "i2QXnhijyLb6zo5m", "EIdOia6I7YfRoYBJ"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "GFDB9W3YoLdSaVuy"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --name 'E4ONlEySqXtwoCRJ' \
    --offset '82' \
    --order 'nz6kSfkTGD5W2Bop' \
    --orderBy 'Jch5s3LEwcNrB2US' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'iMirIBetd20tLR7s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'zM29blZvWKOX1YGy' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 18, "PSNSupportedPlatforms": ["o8yLULNmTFYuiqYR", "dJ2QRKLOfxWSC7uS", "loYSOyhAJSdN2mIm"], "SessionTitle": "SIEU0uAumOsPvWDm", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "M228LbyC95wUOKL7", "XboxServiceConfigID": "gho1HpCwd41JGOry", "XboxSessionTemplateName": "k6K94a9SOHpUVlNH", "XboxTitleID": "Xtrsmt2VQGWnxPMW", "localizedSessionName": {"8he1oJ7uzEmKVm8i": {}, "MyVcA4YphJ3lerEe": {}, "yI0x2pOd4fbBXD7e": {}}}, "PSNBaseUrl": "7yNk6uwzwRwpJDmQ", "attributes": {"XWCMVITIEeuBCwDI": {}, "wcN3jEKnaHKjWP0k": {}, "LDQymp7tjbcvlJmB": {}}, "autoJoin": true, "clientVersion": "2AzpLUoesLN5cQfl", "deployment": "jMkxla5jI2zX9Y02", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "v41qxqeaOKdnfaON", "enableSecret": false, "fallbackClaimKeys": ["2gGPZcvch4gC6xGG", "BBqaJrz3T71SfNfT", "fZx9UHcB5mQYVIBb"], "immutableStorage": false, "inactiveTimeout": 23, "inviteTimeout": 56, "joinability": "mJ563AGAcOPxLBIB", "maxActiveSessions": 50, "maxPlayers": 33, "minPlayers": 69, "name": "LCmHoE1y8D9Sibyq", "persistent": false, "preferredClaimKeys": ["yeH2H5H9ckdLwA1K", "ZsF0yIsERYfWBcXR", "fH1SaAgCseP5i5Et"], "requestedRegions": ["H4UfDL6IGjff7nne", "WkFeIjhnNBXID7lv", "YY8dmOeUOPsg63Hz"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "H4NNjreBPzSar7RS"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '8VHUIvydsnfss0qV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '5Lfxm5h2E1AG5UDx' \
    --namespace $AB_NAMESPACE \
    --userId 'IVXUjUGrwq6SEc3t' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'tNfbSmJSvHXhdwCi' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "u66tc4Sz9Sc7sofx"}' \
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
    --configurationName '5Th11il7dCoVWM93' \
    --dsPodName 'RDb5xiQ9joVEEqQs' \
    --fromTime 'HWqbMOSulebgU1Sd' \
    --gameMode '5OwzTcqDYOYGBtMl' \
    --isPersistent '274zZunilYBv2CNR' \
    --isSoftDeleted '7SE1d99c7phHLRVk' \
    --joinability 'eYr2g9f6gwsCAEQp' \
    --limit '3' \
    --matchPool 'uEL6NRLsiAKRGZbz' \
    --memberID '2VzKA9gJH8bAA8h7' \
    --offset '24' \
    --order 'Qj9dcPah1Sk15E6Q' \
    --orderBy 'si223VebJrFYRFTM' \
    --sessionID 'oJFclV7Pu1NK40pZ' \
    --status 'TISx2gNla2SJNwnn' \
    --statusV2 'Ec9LGGVfKSc1iwUb' \
    --toTime '3769Ka765QbLAlJJ' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"FIBSzXuMkJgZZNTV": {}, "rzPmlTa0hEujI801": {}, "cTR0ndQPqHbnfFh5": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["0VfPpsXJN2Us0Upd", "brmoZvWvHkcLOGyQ", "KSmLxXulSgKWdZss"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'd8NelXO7WCuxQqjJ' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'iXAAsiz5GCyWcL9w' \
    --namespace $AB_NAMESPACE \
    --sessionId 'nD68DVDg84lxWFFk' \
    --statusType '9E8ouRjVxr5ipyrp' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'iQT93qf3Vhv9TDCa' \
    --key '0rWjLtGNcMD9cymQ' \
    --leaderID 'GlSa3NCeS3K7JRha' \
    --limit '24' \
    --memberID 'ZJuNcgayIp1UWE1t' \
    --memberStatus 'zHuVPs9bLpcXmeKR' \
    --offset '100' \
    --order 'VkuQlmnHXvgpCEDU' \
    --orderBy 'trMUMRiIgfysvYPz' \
    --partyID 'cUjJLFX5XQ1qCngT' \
    --value 'wZPKCYCOgPdWjNky' \
    > test.out 2>&1
eval_tap $? 28 'AdminQueryParties' test.out

#- 29 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'AdminGetPlatformCredentials' test.out

#- 30 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "m8r13bcGvxozxOhv", "clientSecret": "NvPzd6OUw9toHiee", "scope": "QjniqaXUsF8HtVF9"}}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdatePlatformCredentials' test.out

#- 31 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'AdminDeletePlatformCredentials' test.out

#- 32 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'ITDUSLS8a9POLUXI' \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'rVPZL8eI98Nhxkvu' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'eAg5cP1JWDU0ADQ1' \
    --userId 'nkSi4EjIDozl0fDg' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadUserSessionStorage' test.out

#- 35 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'w8BpNzj638iG55e3' \
    > test.out 2>&1
eval_tap $? 35 'AdminQueryPlayerAttributes' test.out

#- 36 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'qo2D8Xh6QwtOreIy' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"j4EtTP6BEmKp754n": {}, "ohewyBsoqfrGJJ4k": {}, "pNfvRcvS5ecJwiC5": {}}, "autoJoin": true, "backfillTicketID": "l1SbRkiPXqLsTBRV", "clientVersion": "SyAlmOy9iyd157z8", "configurationName": "3WimF25GCDNOFEB5", "deployment": "XkeMEUqaJCEFHMHO", "dsSource": "yiWVnJbTxOEuzY0c", "fallbackClaimKeys": ["9bCvVEWclm1Q8jsN", "n8JJ6j2YaLTsN59W", "Ra2zleO1s6VB7sTK"], "inactiveTimeout": 22, "inviteTimeout": 7, "joinability": "bHTCpauJEcIqOlsL", "matchPool": "Y4sXpclxA6xeZMV8", "maxPlayers": 33, "minPlayers": 61, "preferredClaimKeys": ["wStsAFR9QiRVM60f", "urz8T3Hdp6wkfzwZ", "COav35ofyMCPMusU"], "requestedRegions": ["ehiZr0SFdGtiF5rc", "UQN2TJUFfpRCJuPO", "YZGny7A2gMwJYlfB"], "serverName": "GzDsIyF0nPyWqnw7", "teams": [{"UserIDs": ["DWGOGI03NeHrIZE7", "kYX798Z3qF0N0UZJ", "dV6UKSJwAXQccgqb"], "parties": [{"partyID": "vvWxfjQJ0yVKjs4j", "userIDs": ["gg6rYngZrBk2B6JA", "lO3HsG8fNaGzGt1D", "4WzqrYk9OPbz0FNP"]}, {"partyID": "3pU7NhJQqIs1vhAF", "userIDs": ["x3voB6N2gc6drDci", "XdlUB39VUUsfd68K", "I24AS0Zx0uS4NZOO"]}, {"partyID": "JRyVmaErGhY2Wfro", "userIDs": ["w7cT7LLYjJSp9kOM", "BdYOfkhE5iaTZbZG", "R4UQZo0XHZAvnHnZ"]}]}, {"UserIDs": ["5gHQ3jFktRkFadZu", "MF7gsNLGucBUaR1S", "PXsjWJ0yv92Sd1xP"], "parties": [{"partyID": "WMw0tJp2RK9TkArc", "userIDs": ["knc58Q9qHMt61DiW", "9k5wAQOfuZkhUVA9", "c1ZchnPPEr7NweX5"]}, {"partyID": "QMYXxb1rHjvOgVUq", "userIDs": ["kRb5C5EpAsHvZecB", "bT7GogBAv1Sziqfy", "3ffiKteJfJghziIz"]}, {"partyID": "oLpAQW8CbcJW2TNV", "userIDs": ["1Z1JW6x413e6kZUn", "Rt2cVFJpqmEyzc8I", "RpyWz6YKRDR02XJL"]}]}, {"UserIDs": ["3UCXERY1Stbi8fZw", "C0h2lHiEMSioDrpj", "ro1J1l84HB9n7r3A"], "parties": [{"partyID": "GlxHvCjT7MMxSD53", "userIDs": ["biclEgpFwVAPKwa2", "nqaLb08U3hbcOkHz", "fA1sxu1yOLGxUL2k"]}, {"partyID": "TRNB9iOyNcHXdd3C", "userIDs": ["ANh4tVC5rbV7Hn4x", "2Px4Ht99qGbDGhGk", "LlJ08iHM1fg1Rtrs"]}, {"partyID": "EYbIo7HIaHxMFJ0l", "userIDs": ["sM4dN2UDHnpD1IFZ", "lv99BaNG03EtQmvs", "GqPy3Ru0FhYuLLPs"]}]}], "textChat": true, "ticketIDs": ["ZARX7xIyjgFQ57jU", "KgtY8vvoDQAFHLe7", "JfrvyJPxNZm7QiU4"], "tieTeamsSessionLifetime": true, "type": "gJVr95HI3vHSSNE4"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"PpNUPH965GzTRBsx": {}, "3rn8ft8dOCLzLEcT": {}, "jitZzCc38CKHfUnv": {}}' \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TLfOAR75iicxFSdX"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'Xtg7ai8zbxrX0NZi' \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'VVAkOYy7MjwzR6wG' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 't7GENq2ifhLDdKqj' \
    --body '{"attributes": {"9vlHTadAXaUcJm7S": {}, "gK0nHs29GJ49Tpw2": {}, "gwphHLe2O4RZzxal": {}}, "backfillTicketID": "9BT1yPFQB7tjhsuK", "clientVersion": "BNj2RWngvJPzjIpL", "deployment": "4IZLNt7v3sJoRGVN", "fallbackClaimKeys": ["H2JlL5S5bV8ziRpt", "iC8hd8jX33BwqJVH", "TDiSINxZ8eajU19R"], "inactiveTimeout": 23, "inviteTimeout": 6, "joinability": "svHRNdozWEmg4sky", "matchPool": "uEm9lmM1B9Xqb8Yi", "maxPlayers": 28, "minPlayers": 51, "preferredClaimKeys": ["5OFWdZUMA8b7Srmw", "753V0laTSH9rsPn3", "fcwG3erpnysBTtSd"], "requestedRegions": ["j4sWuKbZF9PrTvPP", "av3NXYSo0HItevIc", "U0v0pdp1M1Kc9xhH"], "teams": [{"UserIDs": ["1570UtJTIht0F6xk", "g0CB9axlESKnsRzT", "j008Rv3yAeH7Ccya"], "parties": [{"partyID": "yzNDMtFOi6hpoT1l", "userIDs": ["QXxc7hyFxAi0QWdc", "kvxIzymTuDMkadfT", "igI9Vhrb3iUxlcrX"]}, {"partyID": "aWHYr4Gf6QUukDax", "userIDs": ["n3qsVz6WLHTSVDtz", "Vc1BHwxrXTXajSl3", "hHvy3tzdGNsO7i1H"]}, {"partyID": "ukrjmQUOrS8f0s0V", "userIDs": ["xvL2mue83Ue2GqQ4", "rv0ge1vT5EsRkJh3", "UrocVAr92yGZ38Yx"]}]}, {"UserIDs": ["ll47CoDnW4yW4c5k", "ey6FfGYgCThiwlr9", "knegJlvgMA4UtxdS"], "parties": [{"partyID": "N4YXmaRjeSkphAj2", "userIDs": ["bcTdQf1G93wUCXCi", "dEAFMWbTXLfK6lo6", "VyieV8MGLXC5PnfG"]}, {"partyID": "ChUdWDbRxjiaw1hJ", "userIDs": ["CMuNL9bQCEoZXlch", "GDDasyGex9n1vPYU", "YAaatdGggMwqY7du"]}, {"partyID": "9bgPGlqPJapcdFFH", "userIDs": ["BAbl3ST6aTYvHJt0", "PKKXs04Slcbzty64", "CfAiM6DdqhgIMgYv"]}]}, {"UserIDs": ["hkJWhtjLtMhDna0d", "HQtSruYtofaTJxJF", "by51xZOptMU0mPSn"], "parties": [{"partyID": "JPJX34vD5LHZiUgy", "userIDs": ["GTWEWFvPz0WrSlfK", "MxqcnD3O2EF9SUti", "tQPJxRkM4uGDpNLP"]}, {"partyID": "lMN9vnjy658gQR2b", "userIDs": ["9ccLaFKAnyMhdFJ0", "LdFueGcLgpFCMk5V", "rHMX9BxgQhKlbQD9"]}, {"partyID": "DGHMwfg2AR5dgxlK", "userIDs": ["kQEZgcyUi6AASVMO", "vuahwQo2QV0Wsxyz", "10T2tQaVDvVEBs7t"]}]}], "ticketIDs": ["0SyEeD75xsUWvJvD", "NxraGKlwhnRgDGLe", "PuGjlRM7ZQlq1xWK"], "tieTeamsSessionLifetime": false, "type": "SRqjL0jGqTZtHxpP", "version": 84}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'EtNvWApcwvGrhD1T' \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'JQol9lLcxp5ealmF' \
    --body '{"attributes": {"uPtmgwhlFW5o8W4k": {}, "pOviozUUvWDer1rj": {}, "5lWUo6Qx39vLClS1": {}}, "backfillTicketID": "2EAQLBgp7tZzRWpq", "clientVersion": "ls5PW4FXFmrwxXxF", "deployment": "WOAbyIYgD7RJIGn9", "fallbackClaimKeys": ["ZU6juf97aMxntjSC", "IyG5Fg9BEytQEbMO", "QonKScaqmt3zGs4Z"], "inactiveTimeout": 53, "inviteTimeout": 84, "joinability": "QBLNKJQtJLTPLeG8", "matchPool": "bBLbRsv3dEzZIJgV", "maxPlayers": 37, "minPlayers": 84, "preferredClaimKeys": ["oicTaGF53jt15Yew", "GWBJMEcJI7X8oeeN", "8bB2KHFm6TX0UuIM"], "requestedRegions": ["8XapLxgy4A9PDIwI", "sFoZ6iqgLNidNWfr", "eF8r0qsz5zuNUZme"], "teams": [{"UserIDs": ["rlOzf8aYOkqsvTcp", "XEL7AO4NOj8jkcxd", "y5RXAioCneMLBPBV"], "parties": [{"partyID": "5M59oHLm2g0UolQT", "userIDs": ["Cht8sq8AiUDci4rO", "hxtqyrONWtQhqwId", "8xvAlqi3ptfJ7rLQ"]}, {"partyID": "H0kReeZTHTBrm5Na", "userIDs": ["HTbUhXakbD5Xb3Bx", "GSYKLJQp19J7KdbX", "BF78IrbNEOEr1awe"]}, {"partyID": "b08goNpO5LhY8b1I", "userIDs": ["dkJFRS6naA6iQ0hF", "xn2ZZUxMyZGECdOJ", "lkIuUB3gQNCo1AaV"]}]}, {"UserIDs": ["byPXfuvFiplwbgcX", "jl47PsGO8s6XZVkm", "QqqSZ6rj1gk15JdJ"], "parties": [{"partyID": "liiPJziC29ogka0Z", "userIDs": ["M9qLEeGxlCxge3w7", "sfzRQynR7eYJWpEm", "CtX1IyzsXk6rR51Q"]}, {"partyID": "HmNBh4VP0YnYYucd", "userIDs": ["mAOENNY0EgrtC1je", "i56rk9jxXos0bcKc", "lB1U3yWwQwSUc1CA"]}, {"partyID": "ghIkq16ZnGxjRLjT", "userIDs": ["DosiJCZKpb5DwDjc", "wYGQJXE3cAD6sLzb", "cKiu8d6GMNxCvJXn"]}]}, {"UserIDs": ["mvxBIreuvEDRv6SO", "KFFyOM6E2pOzrv0i", "FYPyapi3E8NQI25c"], "parties": [{"partyID": "hFwj0BUKuGYZebq0", "userIDs": ["TkBnQWxMT9TlGq9Q", "9VaslugW5iyi3dAD", "yQzHGa8Dj1o4NsCq"]}, {"partyID": "PGFCJeUSmVMrGe0D", "userIDs": ["eFbu3Bh7H9Ysx6QH", "znA8bTNkL42E1Uvl", "qgxeEPVn3AS2FKZR"]}, {"partyID": "cWb8T7KJmlkVgJTM", "userIDs": ["MrzvXT0eSZKNeB5i", "r6hgy3QFQvhZYdWJ", "6TwztdyGbewTHq3a"]}]}], "ticketIDs": ["Pep22yvLDGMPzJUD", "ZxuXnN47aH1LGSrQ", "vxh0kVjrehPrXUZZ"], "tieTeamsSessionLifetime": false, "type": "BxQFodmwQGnqXL8q", "version": 46}' \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'QkNZTI3jhfvUVuwe' \
    --body '{"backfillTicketID": "jFG3vsH53CTm8UAi"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'PVJLDW9Vquev5Sob' \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'UrhxbBuqu6SayDiR' \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'UYmrDroMWQLNcMfw' \
    --body '{"platformID": "PnaBWBZkuuK3ALIa", "userID": "EZQwtsRT4ROCmItH"}' \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rZ3XK84j2Jag92Yp' \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '0dcB7VP6TIFry163' \
    --body '{"leaderID": "inMILtTXu6DPZDJy"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'sdEzYSCPFvakXfQk' \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'nRfrmsoCdS7jDM3v' \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'U9A1Q8XbZS08TmNq' \
    --body '{"secret": "8dJBLZYP3olTLXgh"}' \
    > test.out 2>&1
eval_tap $? 53 'GetSessionServerSecret' test.out

#- 54 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'RxbtXoj27U9fpQGD' \
    --body '{"additionalMembers": [{"partyID": "rvWfVmZgeviZKrkY", "userIDs": ["VQYh2cs1Tv3Rqkon", "koXrTle8Wfluw7Ks", "pCcBmHZEip7IHbSG"]}, {"partyID": "w6cPgvX4TYL5xEDd", "userIDs": ["zygrp0jTopfHw6jT", "uLZEirVX1UuLewW1", "UkairK4R9p1ukni1"]}, {"partyID": "Rjn06gOp7MuZwfUL", "userIDs": ["iCAF1BepjnOvAq5z", "doTBRc3GOrDSJk5F", "dRh5D19EROwfVJvq"]}], "proposedTeams": [{"UserIDs": ["oeQR4cnNsilTijKv", "6LC1TujeFxkQ265C", "2dvwHuFMlKk2FEkq"], "parties": [{"partyID": "9cjD0nN0N7gsjD9J", "userIDs": ["3qte6yedklGx4x4p", "kM98R3NVfmASHbiK", "BfReXsA7kxeVoH5X"]}, {"partyID": "2tem6XivNfq1NKov", "userIDs": ["kYbh5obwPCRQMLZ5", "ydNzBH22VYeCQlZc", "tbm3LRxFkDkyXgsW"]}, {"partyID": "crV6a98TpawjZmvk", "userIDs": ["u4Iul0ZMZDWWipys", "gUwg3njFtQxJxeh7", "MX0D8zeJ0rwLKKEV"]}]}, {"UserIDs": ["sSDCiYurQU6WD8L9", "KHndAy5mBTjQwaAB", "wmTtbzbbU1EFi5qd"], "parties": [{"partyID": "ku8lbCPO0RaUc9TB", "userIDs": ["X9ArPET2xbcqgY0m", "UWBTvPN6NoRwN2rA", "5jQ6p0eazxhrfcf2"]}, {"partyID": "FTwLudsSuC9FvVEq", "userIDs": ["PjM5ALmbYZYfTL72", "uRvQDvUckj80aKmS", "CgLTgU1syd53cRL2"]}, {"partyID": "C86YshC1GgCnfsJ1", "userIDs": ["t7cWsZy95dGcQA5O", "PFWHVXKGOznZEDn6", "14k9m1EgwERZKIzS"]}]}, {"UserIDs": ["OXok1VRnsNHs3IIc", "J5lPtyzDapZ2XeR2", "e2eVOI06PxniaBuU"], "parties": [{"partyID": "louxpJmcTEVvw7U2", "userIDs": ["epLnfa2JKnl06t2B", "lbNGuvUR0tmKzxu6", "0mBabtzbSPIRiHC3"]}, {"partyID": "2cSCXUuGpjOCQAFR", "userIDs": ["zvWW5kdci2UOS5Oz", "53eU3xGPj6wUwANV", "k91EjfJAIDasKMOL"]}, {"partyID": "uuoxQIh76aeaU6pS", "userIDs": ["KwfXmuTpPUny7POF", "lLtirQf8XlI2CDFp", "42kunT4Ebz36V1Y2"]}]}], "version": 68}' \
    > test.out 2>&1
eval_tap $? 54 'AppendTeamGameSession' test.out

#- 55 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0LM5nbCue52FuFif"}' \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyJoinCode' test.out

#- 56 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '1IulE5DZ2k1jlPcK' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetParty' test.out

#- 57 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Bzs5fx3dyunR7u2t' \
    --body '{"attributes": {"5kKr4fQYBEBUQZPc": {}, "WFcRpaLTk3qqYOjJ": {}, "q8w1yPE2qR8VftlK": {}}, "inactiveTimeout": 66, "inviteTimeout": 47, "joinability": "llUKEeVXVaRhz6FH", "maxPlayers": 57, "minPlayers": 22, "type": "kxRWKwKXWL1wXiHa", "version": 20}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateParty' test.out

#- 58 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'MOUcJbl5s80ZvM7M' \
    --body '{"attributes": {"Qlu4xYej0MCJenfR": {}, "ggOzcKN708ObGtqT": {}, "FD4UqzFYVsIp6b3h": {}}, "inactiveTimeout": 41, "inviteTimeout": 66, "joinability": "81wSqYCxGhnn8k6x", "maxPlayers": 11, "minPlayers": 29, "type": "Zf2CQR5a2U8igaFV", "version": 6}' \
    > test.out 2>&1
eval_tap $? 58 'PublicPatchUpdateParty' test.out

#- 59 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '6ZSySJdYUi1bievi' \
    > test.out 2>&1
eval_tap $? 59 'PublicGeneratePartyCode' test.out

#- 60 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'mIjzgljXGwkSQ0Z9' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokePartyCode' test.out

#- 61 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'Yv47WYCKMngR3V5h' \
    --body '{"platformID": "aCCfWp2qtmBtjs71", "userID": "SYzu6o1iRl1jSrKO"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPartyInvite' test.out

#- 62 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'rudkoK9mVMgvCS3t' \
    --body '{"leaderID": "OGEtYAnK3o7YXxsn"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromotePartyLeader' test.out

#- 63 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'AxAajfhvXbCoaekE' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyJoin' test.out

#- 64 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '5feH8IatIMmRI018' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyLeave' test.out

#- 65 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'gLn70JA5h09l1fDz' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyReject' test.out

#- 66 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '6OR0ZWgFXLjMzc0G' \
    --userId 'kRi9rOSnO25tJwaE' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyKick' test.out

#- 67 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"aiM7yUJ3QgDPbGoU": {}, "dxZani9EJIsagEfF": {}, "DNQsTZoNVyXZo8QB": {}}, "configurationName": "fDOrCRuEcbaXxHsK", "inactiveTimeout": 100, "inviteTimeout": 30, "joinability": "SzeRifo0jDXgerUs", "maxPlayers": 65, "members": [{"ID": "W3jTJaM8jFEjgJrt", "PlatformID": "CXgRrATodhQEkRBS", "PlatformUserID": "cRhJmriZHEAvcWDP"}, {"ID": "ivMt0zsedxQPuz15", "PlatformID": "1b7Y1hIXiOpcDjc4", "PlatformUserID": "ElZIYKiuAtpqwC5v"}, {"ID": "T3bd3IMuGJjLqxXc", "PlatformID": "1GGX1AENR93nwc3b", "PlatformUserID": "mBuWCrHg0IhySeJQ"}], "minPlayers": 40, "textChat": false, "type": "IND0jR0L1MWotZYU"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicCreateParty' test.out

#- 68 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'Pn1soSYS3UAM9EAj' \
    --body '{"FYiQhpQefKZjQkU1": {}, "MDqfQennDnMq8Esr": {}, "d4XWtbM9Pc7EcMrW": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateInsertSessionStorageLeader' test.out

#- 69 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '1AGtuvOriDocg74d' \
    --userId 'l94vE6lYXXPo1Ede' \
    --body '{"iOWcFAj4OjHi6wDF": {}, "X4IZHwJVNP4uFWgk": {}, "yJVNQVnfbYJXTvYB": {}}' \
    > test.out 2>&1
eval_tap $? 69 'PublicUpdateInsertSessionStorage' test.out

#- 70 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["yXnE8bCZ52eohyTR", "eumq2pFwlPUPtKI5", "Bm9hiGFFigmUNgdO"]}' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 71 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'PublicGetPlayerAttributes' test.out

#- 72 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "9UXJPmwPmCCzibfn", "data": {"STzscXlMyJdwlrOF": {}, "cAzUsG6tkzhozD9J": {}, "OGXhNspv477bY3kR": {}}, "platforms": [{"name": "eb3JaADYZk4FALz6", "userID": "sqTaJETkfEeQgy8S"}, {"name": "dePXNTOjDTsYj0Uy", "userID": "XbwdJfNq59qjPip9"}, {"name": "iVZbGDG8QSOfFSmk", "userID": "ANfMVRdjyZejIyvI"}], "roles": ["WrjlJefkPtNAAT0P", "eTMDZJcStXQCtcxs", "dUsR8xph4486tYV7"]}' \
    > test.out 2>&1
eval_tap $? 72 'PublicStorePlayerAttributes' test.out

#- 73 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'PublicDeletePlayerAttributes' test.out

#- 74 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'tT6gYYs4qFWOq1ye' \
    --orderBy 'BSZOKUpdMwXD5vyg' \
    --status 'tndeEGnSB1hySfxZ' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryMyGameSessions' test.out

#- 75 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'tmQJIK8gTFMtD3tj' \
    --orderBy 'pKPnOrYbIk41NoWX' \
    --status 'XxbsmkP9ITJZQfvp' \
    > test.out 2>&1
eval_tap $? 75 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE