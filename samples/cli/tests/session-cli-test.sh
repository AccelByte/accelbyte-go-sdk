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
echo "1..94"

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

#- 4 AdminGetLogConfig
samples/cli/sample-apps Session adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
samples/cli/sample-apps Session adminPatchUpdateLogConfig \
    --body '{"logLevel": "warning"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetDSMCConfigurationDefault
eval_tap 0 6 'AdminGetDSMCConfigurationDefault # SKIP deprecated' test.out

#- 7 AdminListEnvironmentVariables
samples/cli/sample-apps Session adminListEnvironmentVariables \
    > test.out 2>&1
eval_tap $? 7 'AdminListEnvironmentVariables' test.out

#- 8 AdminListGlobalConfiguration
samples/cli/sample-apps Session adminListGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 8 'AdminListGlobalConfiguration' test.out

#- 9 AdminUpdateGlobalConfiguration
samples/cli/sample-apps Session adminUpdateGlobalConfiguration \
    --body '{"metricExcludedNamespaces": ["s0SCfH0uomcBO5XL", "eTKvc4GFUaogeYDu", "28b3j5AOcZ0OsTrB"], "regionRetryMapping": {"yLMU5i0nn5g7QUZM": ["1MmhRpzit8jqBfRg", "nCikKxJGYMPFsjQN", "ZSGElFJqCnfbSwnV"], "80BpH2yc9OqKs3aW": ["UFeQ5rpqtFkQvBQ4", "YLJrqvCVQEMiGOfV", "zlIwC54rUieKAO8B"], "nkNA39A7oFcjCSnq": ["DtF6UFDP2n6s0GOW", "V4TFe2dG4JvrS3ek", "zXT3yr5ucajO6lq4"]}, "regionURLMapping": ["hhh2WImCjRKyxyUN", "B4KrjlvGoBg4MKzh", "HT2XTObcpJwfo062"], "testGameMode": "NGyAW5CYyHVvcnuY", "testRegionURLMapping": ["J0MbrTz1k4zYqNFO", "Innh8sXQKsPXXUI1", "KM3xN5WcYctOfdTr"], "testTargetUserIDs": ["ugoIjWLS1Wq5bdGb", "VB77MK5fM7SCXvGz", "sygXIRmFlJmnI4q9"]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateGlobalConfiguration' test.out

#- 10 AdminDeleteGlobalConfiguration
samples/cli/sample-apps Session adminDeleteGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteGlobalConfiguration' test.out

#- 11 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationAlertV1' test.out

#- 12 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 75}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 49}' \
    > test.out 2>&1
eval_tap $? 13 'AdminCreateConfigurationAlertV1' test.out

#- 14 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationAlertV1' test.out

#- 15 AdminUploadXBoxCertificate
eval_tap 0 15 'AdminUploadXBoxCertificate # SKIP deprecated' test.out

#- 16 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 45, "PSNSupportedPlatforms": ["kg9aDDqV3WY7eRYa", "OQmUDIrMHvzNlaEu", "8ln6nbiHELamU2MS"], "SessionTitle": "xkfgfNNVVYTGckKv", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "ANu4R3HMhZ5L08B9", "XboxServiceConfigID": "1akaK3EX3w2zUMOO", "XboxSessionTemplateName": "53bNtl4KxUOcSRoZ", "XboxTitleID": "ejCdLxZGcokDAkxf", "localizedSessionName": {"vqOMHl7pobGXzCb1": {}, "4hjo8zdPjJbfMwAu": {}, "W6PitnMtMBOOzIRR": {}}}, "PSNBaseUrl": "rbAX2sPr0dzzK9sY", "appName": "7UbRvGfrKkAEocyG", "asyncProcessDSRequest": {"async": false, "timeout": 86}, "attributes": {"jXDepiF8NfPMk3wy": {}, "9CP2IaSao1gkVuma": {}, "NwXSBwKG1uH1PWD1": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "kYH0CZJpHkRE1uZ9", "customURLGRPC": "81eOZM1n57mWnGh4", "deployment": "JuPRVAnfWsw0IAy8", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "3mazgE1irrAFgOIf", "enableSecret": false, "fallbackClaimKeys": ["EcLsUlIzfpFzBFDR", "zPJ5jNxrdiErjEQG", "V5CqXBxs0orkraDQ"], "grpcSessionConfig": {"appName": "3mPiWmKUi8eNn9yl", "customURL": "QCwuyu70iyCEnFtr", "functionFlag": 49}, "immutableStorage": true, "inactiveTimeout": 6, "inviteTimeout": 70, "joinability": "ow6it3er3WlbuGne", "leaderElectionGracePeriod": 91, "manualRejoin": false, "maxActiveSessions": 73, "maxPlayers": 2, "minPlayers": 24, "name": "l6roiMwld66tEbtR", "persistent": true, "preferredClaimKeys": ["qsijHVyZEfyhGqI1", "MXNEMSkwCuevsAMX", "F0QR3NEnG5c5i6ye"], "requestedRegions": ["bi3oPBo8zG5xBH45", "27WRM06yRqujET6q", "W93aEcLbJlw0D5f1"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "ttlHours": 65, "type": "lnwCqqPQSvh9TLZV"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --name 'Xci7xYWPmA1MKvXq' \
    --offset '55' \
    --order 'Rdbr21po2oZXvXio' \
    --orderBy 'ArOgSfhzs3xFYRlw' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'SyKq3orHmFaWQYFD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '3vqdQK7pzNQkWOkL' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 79, "PSNSupportedPlatforms": ["1uCrUbt0tz3Y5i1q", "N0SlaNWjfIiHj04H", "ZjHESR0piPcomGr4"], "SessionTitle": "jwEgMh7FjxyYicVZ", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "BsmYbX37L53bwQzB", "XboxServiceConfigID": "QGgs9l7balStSIEd", "XboxSessionTemplateName": "lkSGavbWLReSuAUj", "XboxTitleID": "slaRcIYKlBjB2oNI", "localizedSessionName": {"JJoVh50W7f4oPA7Y": {}, "ukBThaaYpXfDIGlI": {}, "AtWHfpfSeyy7mOt6": {}}}, "PSNBaseUrl": "3WiDw7OJF2RezIDj", "appName": "UutHaBlr44noNX8J", "asyncProcessDSRequest": {"async": true, "timeout": 78}, "attributes": {"IDzCmk4kjyt8rDTY": {}, "i9ncHZXa17ZnfZ9d": {}, "mw28S7TcCmz90O8R": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "sZznG6fa3iaqUj7I", "customURLGRPC": "gYth1JvES796kTbN", "deployment": "oUo3PDw6B5PpS8Uj", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "vWSRwqCGPJq7Z95s", "enableSecret": false, "fallbackClaimKeys": ["es3fdCun93Qjqf6Y", "hm1vpfOPSJDFnqER", "w7UFqkQ1qUwPlE05"], "grpcSessionConfig": {"appName": "kSuZgJcU9kbsOQgj", "customURL": "o2GlGDV6OAsYpzmR", "functionFlag": 44}, "immutableStorage": true, "inactiveTimeout": 24, "inviteTimeout": 81, "joinability": "rF3kjpZLKeYXiIbE", "leaderElectionGracePeriod": 43, "manualRejoin": false, "maxActiveSessions": 28, "maxPlayers": 73, "minPlayers": 18, "name": "NoMkyLfetPBtBV1T", "persistent": true, "preferredClaimKeys": ["sVjXnkUnak0wzpSv", "JQcCVIGjJGv6yglc", "7JWZqilLUmUQFkRs"], "requestedRegions": ["flM340RZO2ey0nLp", "k5iWxISCdgkUEDZB", "CFBAm0yCgcR7yTL5"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 33, "type": "RiN5Pw3sLNMFb5qC"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'f6Ftky2WRsCZV5zb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'GxLfYvkFNxT6jjyB' \
    --namespace $AB_NAMESPACE \
    --userId '6ptt5SpHwfNf0tUv' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'bGrb9Bz1U5gn9MVt' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "O2WFQ981KwrF4miB"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'Wgp1FRyNRcEkn9S5' \
    --dsPodName 'tUIb1NMguD9ufvCm' \
    --fromTime 'JTUWYbeolIdy1Uns' \
    --gameMode 'qhq6JtfNAvnJsery' \
    --isPersistent 'fJK6Mdkfmo7TBK4o' \
    --isSoftDeleted 'pSTiAo9slYME2hHM' \
    --joinability 'bHCm66xciMk0SNnt' \
    --limit '21' \
    --matchPool '2GK31OhOWfY72Bhb' \
    --memberID '1VcqMhaAqDmNPVY0' \
    --offset '95' \
    --order '5Xj2X7cRETcEbI4b' \
    --orderBy 'iHG4WLSfRdVV5yfJ' \
    --sessionID '32SZyTx3i9eMv5YT' \
    --status 'Wy1om2Znkmd658Zu' \
    --statusV2 '2ZDfDIN3WA4kkRbp' \
    --toTime 'BLpWqVLgb9f9NSjk' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"xTAatiKlIrdikjux": {}, "xwGkI628ihu9sOuN": {}, "h7zYGuZ8Y2ymAIB7": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["uMG70uHCrkj8JFht", "YgSd3hU1mRLFLlnq", "oGcatn5ykHboo0dD"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'ofJXIsHUaoO1xHNZ' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'ajr5mmVnmdOuif40' \
    --body '{"createdRegion": "sUQcNKZSUks70Npc", "deployment": "O5Y5ASBoKtcM070i", "description": "SfLTOI3sCopL7MbK", "ip": "Pj0fdFk1OhQDZ1Ek", "port": 7, "region": "GcKxo43aNE1DOq3Q", "serverId": "BySRlzkgYRkY1J16", "source": "y0aIqgv4dZKN2ZFr", "status": "fESEehDZRIjhtO6X"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId '8FSdlqOl5Nc6EBoh' \
    --namespace $AB_NAMESPACE \
    --sessionId 'R5OJnckzzr0xRe1s' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '4UYheVdQ6MxYDDaL' \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ziom6EyO9YyK19Mg' \
    --statusType 'xoiehJ9SjX0lM8E1' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '54' \
    --order 'HduzB6JXn4TKDNND' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --fromTime 'Kf4SKLzGqGv4kuRA' \
    --isSoftDeleted 'u404Q4AOfGDkyM6t' \
    --joinability 'zEinq8fyUWeiw7XU' \
    --key '4x403DD8X9faQsJX' \
    --leaderID 'gPGcaXcUmax0JDX2' \
    --limit '11' \
    --memberID 'AAvlSuVmI7ZCI0jR' \
    --memberStatus 'dfknd9Wz9hJ0lTfq' \
    --offset '76' \
    --order 'kXosLDQ6hNl5f7Dd' \
    --orderBy 'fbyySYmuIyHkhWIo' \
    --partyID 'nSBVDrMBRoEYrQu9' \
    --toTime 'CfcMweVAigQu53Vl' \
    --value 'u6LDUgp2my6xBUTO' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["XawCSB0brMVKNR2J", "pGxEGKK508Rksvrz", "ZAaSmCxsNZIIuFku"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '9mjJPT5IXYzFE8yh' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadPartySessionStorage' test.out

#- 36 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlatformCredentials' test.out

#- 37 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "IIMUZT8cxiB10gSy", "clientSecret": "VPZdhOh8KYqLxhhy", "scope": "3ckytFUy9ag2pYwj"}}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdatePlatformCredentials' test.out

#- 38 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeletePlatformCredentials' test.out

#- 39 AdminDeletePlatformCredentialsByPlatformId
samples/cli/sample-apps Session adminDeletePlatformCredentialsByPlatformId \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlatformCredentialsByPlatformId' test.out

#- 40 AdminSyncPlatformCredentials
samples/cli/sample-apps Session adminSyncPlatformCredentials \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 40 'AdminSyncPlatformCredentials' test.out

#- 41 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --userId 'crjcMWo3lCY1XlJ7' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --userId 'eE4fDDd59u6ywzMs' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'NRo8LRePRdnsenML' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'LR075Ikqr6ldHR5i' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'ikjiJCBt25ZzaqiZ' \
    --userId 'NwAhPxhds0PpioNg' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'o9r9c2qq0phydIUq' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'ZXi3vNZHMqOBGUVj' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'XxHf6MFO85o6jZs3' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "nDrypQ21ybSKKgmS", "attributes": {"lE4riGPYRXwpK5LA": {}, "wC0Gi28cf7U2DKId": {}, "itdwh1vXPGTfW6VI": {}}, "autoJoin": true, "backfillTicketID": "8WlJbdl6DZ2idAeK", "clientVersion": "FJtTMvC2dnLNSNrS", "configurationName": "5ipBcogDWdMldZ2U", "customURLGRPC": "2ek59Gh1wWf3dbXh", "deployment": "okdoaZREphihSrCc", "dsSource": "qkANkpUbFAWknzOr", "fallbackClaimKeys": ["pK0qPpPUQxMgUCX2", "2zOXrEUmylW1g9Fa", "JaeBOsdes5tMiOvn"], "inactiveTimeout": 7, "inviteTimeout": 11, "joinability": "yQRxDZHmvGVMSJLl", "matchPool": "cRzx8OvsDt6MB4cw", "maxPlayers": 77, "minPlayers": 68, "preferredClaimKeys": ["LlWuR3pK73iE2bAJ", "NtD7StjoVFZvn09w", "xJh4GAf06ib3UhCk"], "requestedRegions": ["XLPIiR5Pa01y1Byb", "ypd46mVeBI6lfpxW", "HeC2Lc4bNEiqYvpM"], "serverName": "rT0BnZ1kkBZuOGSe", "storage": {"leader": {"1qzoLG0TET0Hdn82": {}, "xREj226LJZlizS1u": {}, "IBLpgbNJ9pqZwFaT": {}}}, "teams": [{"parties": [{"partyID": "boYyOAwwSsZDu5Xn", "userIDs": ["uWlm2YWCjq5oLfbs", "YKEhuL2haBMsMhhc", "gEzRvDeyv0pURkv4"]}, {"partyID": "cmXBOOURxlLp7YE5", "userIDs": ["DaZ5Gd1UcYNDIDmn", "VkfdGKkcahEFPGVX", "TFi9tmV6W71viAC0"]}, {"partyID": "SpNPSazoL4qcptPX", "userIDs": ["kxafQtthyUQLf5zr", "qb7lqnEtGzal4ye1", "tPNoNpGhZgMEB2wJ"]}], "teamID": "7jy3TSHJtkhPGBfl", "userIDs": ["mdl09kHc6CfpmSqI", "r1joC8E1b4OF0CBB", "3VkgNtkHsmTBbrXX"]}, {"parties": [{"partyID": "goJzVcQtgUxFAlUJ", "userIDs": ["D9jeyuMdU6d6vgU6", "52S69irj4tXqelDS", "nothZIxERlFg2nsw"]}, {"partyID": "qtSdymds922V5S0C", "userIDs": ["Uk7gSl3rsN6CARai", "UMR773ZZ1g2CGJWv", "N6BKE3gp52qF9NiU"]}, {"partyID": "5GMuENe2p3LmOX3A", "userIDs": ["RyiwkzLhfi038Ojj", "kxwksKlNlTRd8eer", "Zxy3wqB1a4YUbII4"]}], "teamID": "ZEESgKC44JbRFD74", "userIDs": ["kX9B6VNtBegVcyhs", "sAs4y1Jb7sRMczHt", "z1dN94vcpfN8ejxM"]}, {"parties": [{"partyID": "pIijTiD54TO6ij1Z", "userIDs": ["D6fNsz21NaT3mVFW", "LslEA91vgAFtQ5pk", "V9k4R37swlcA9PiK"]}, {"partyID": "xFNSl9NxgnLrSNfM", "userIDs": ["xkEcOHS6M7nIwyAT", "xKTdddnKFrtq024V", "SSQMQlbBIeTiq1dl"]}, {"partyID": "hp8e0EyJQ5wHafGj", "userIDs": ["NLoARCHSkuCPT9jl", "g42rol8cc87Lh9I5", "YCxj9jNcjmNPkjD5"]}], "teamID": "hJsPjTI1YvCKvtkk", "userIDs": ["dUmL3XGcMLlY0HO0", "TGWecLZDEuNDBP4s", "vF8bWysBgoQAe8Ls"]}], "textChat": true, "textChatMode": "NONE", "ticketIDs": ["q6UZifN40tuF6LTp", "CiWIp0InEOEBVQbv", "3umh6Crr5IO1Z3Mm"], "tieTeamsSessionLifetime": false, "type": "kbeOXM9jt1QugGl0"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"YNV5iZROr0cGc3sc": {}, "hgNLYSO3Gq3Ezilp": {}, "WpPIhuZ5Hn9YyFM9": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "pTkcGVfwmAY3gAjY"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '5jkUw2HY9XExC7Dd' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Nol9EdJnPzPgSWpC' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'D3Yh0BYvk3vFVzBZ' \
    --body '{"attributes": {"OqUUMDLOyu83J8lR": {}, "3DvSJjxomcf3tbKO": {}, "FmenzAqil42XeYu2": {}}, "backfillTicketID": "BQdjAkda7SZtGpAU", "clientVersion": "zH8FGdIpFgjJTb7P", "deployment": "2gbV1vKgbP65hhIj", "fallbackClaimKeys": ["HjlsQSmGtUT0l58Q", "wVHh17Cg2VwDSt38", "t7DgpwLbSSiid35w"], "inactiveTimeout": 48, "inviteTimeout": 37, "joinability": "52pXAc0BYA4CZLd8", "matchPool": "oS5W3s8zcg0tXHmx", "maxPlayers": 85, "minPlayers": 32, "preferredClaimKeys": ["mdm9NAWCNx7At6PL", "eGHHDDRfzIdjKgJu", "ynxYAPVnynslavV2"], "requestedRegions": ["9wU4uKcv5PcYN2QM", "cqbNyJSvRx96vd26", "LDA1uKrXtOgXhdwS"], "teams": [{"parties": [{"partyID": "yKcAANtx8llX7Ahn", "userIDs": ["wabM7qcFddgkoWp2", "XYViNqi6OKumSjz2", "2qh8NtcsihOHC8eS"]}, {"partyID": "2S4eDZLLwARpU6ho", "userIDs": ["glRDJwbEjUvUeDX5", "y9AvWxyiuh20RT69", "aW0Rwab3nKC37ivk"]}, {"partyID": "69dseBnQ7mIyID8r", "userIDs": ["Z2DGMbJeBgCDgGxP", "OabrCa6jKzPjPmKb", "AB7xex4YFkcYbJoU"]}], "teamID": "5zjLdWwY53bH7crC", "userIDs": ["WfaHXewfEHrtXI39", "fHkbt9k8BFBmYKLA", "rBXqqIfpjF4ekLAX"]}, {"parties": [{"partyID": "osNtEQMjCdYxRqrI", "userIDs": ["hHHQceDZYWCPtXuf", "pKG7UTis6v8e2Sij", "51Oklelar9qU6XQ8"]}, {"partyID": "HGBZ2KY5P8P4KUl6", "userIDs": ["ZR9NLoNJbHOgHrVO", "xtl8yPaowRIiLNIe", "8f69iUEJgaBp43fh"]}, {"partyID": "oknmOEAG7JM0OFid", "userIDs": ["hl6EMb3kDOcS73cJ", "bmguUOUP1Tyr14eP", "PlVOugOBgHJAuClq"]}], "teamID": "WQ0pjHmiTCWMoj4g", "userIDs": ["IxeRD2xlQGEyAr18", "y1mEri6yC0kpB8dD", "rSvH3NATgvlB8JY6"]}, {"parties": [{"partyID": "DJBfcjtOaMJ2XRfz", "userIDs": ["qyh3fdEAWc7wmpY7", "OUvQQUaoCEZnLYLa", "NXrySqR3nuBTHbH6"]}, {"partyID": "detQauJfKjgVt56M", "userIDs": ["Xl6bWwDc4nPoaRiE", "0d3exka6sEL9Jxyt", "ghKzRKgEMqN6ywTE"]}, {"partyID": "ydi1aXRREgisw1x0", "userIDs": ["PFbUhxzdn1a8hZUe", "4TUR6o5ZEsMSV6Hi", "D02T0dKU6AkXBish"]}], "teamID": "rsYJHy7fr4dZtT93", "userIDs": ["YmzCnr7lqGqrvxph", "bgQbQrcL7HD4AjfM", "CfX2GIrtcdk1weU3"]}], "ticketIDs": ["ZTKRKUG7VWd5Zlf2", "5JeoXMH0Xb879uE1", "ysrO09bb2Ny5JrGC"], "tieTeamsSessionLifetime": true, "type": "Ty1Cre91stgUNiUr", "version": 68}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Hq401D5EY65MhVXZ' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ah11aFICf5ecy9ve' \
    --body '{"attributes": {"PJMSJfIfZ70sxTDZ": {}, "aJyoVBslMcBYhVpA": {}, "wqiGX8OTsemMXE3L": {}}, "backfillTicketID": "7ixvZmQlR5fMG3Ho", "clientVersion": "kagpm4XBrXbV304f", "deployment": "ExkpU62H9jv4ZfEp", "fallbackClaimKeys": ["FEk2Sga4Mqt8OHaU", "OCbULliCF8dQqKro", "wYwMPZbVn5PoJMRu"], "inactiveTimeout": 80, "inviteTimeout": 40, "joinability": "WDk0AdVzpB5VsSbg", "matchPool": "zp32IVECWbcnXSjT", "maxPlayers": 91, "minPlayers": 4, "preferredClaimKeys": ["RWKeBjsSjcylL44q", "1nFJMfsTBgVWAGef", "J0FG9arilFgCnZQ8"], "requestedRegions": ["ShNAeUBwM0lghrCj", "4hPJtGDMk16RxSxc", "auAtCGdoiv0rtfBz"], "teams": [{"parties": [{"partyID": "WmyEmOQD1mrZnLIC", "userIDs": ["Sae5URrHwHcHxqOq", "4Se01TpgdZ3CAeGU", "Y3uUuRVFqHJE1dTq"]}, {"partyID": "J1QjjlElS3FiNbZN", "userIDs": ["70mxupXcUzfOZTsy", "8rb5kvvEUxiW0mEJ", "xxc7NYixvlMGi34F"]}, {"partyID": "wTxZwFkoJ2cBpS3t", "userIDs": ["9FUe8j9Re9zAbpFb", "vdF95Rf4L7dzUayO", "PAGuolxUmofZWYwM"]}], "teamID": "BZDjd5HWe7jnGx3R", "userIDs": ["EuDFHQjvEWYOWyex", "0yxg5O4vwurgOJwN", "TOpmfG5aQjzu9aWV"]}, {"parties": [{"partyID": "E8JCcTfyj8BwFXN2", "userIDs": ["9rtvyNU8baufGAQK", "3rR3OTVEQNn7bIBo", "2ap17HOqejDmYOtS"]}, {"partyID": "PhUKUrf7vNsFWmqx", "userIDs": ["3jAhdiRtyuk5jaxo", "2iRpuOcPt7SsGLMi", "jW2gseK3sDG5Et4F"]}, {"partyID": "Hm9JRBkDD2O8d09H", "userIDs": ["j5ZqqxWNA9by5Bg6", "Jf3dsRBYPnRWqsHb", "uhWnEudSv2vtNC3b"]}], "teamID": "fkJvTlFkFtot15Wx", "userIDs": ["2Utx8UQ4Oh6t5DOU", "Zq8mfwMJkE6XWzKI", "q7zwkSwnhWGiZQfj"]}, {"parties": [{"partyID": "SIUgJDb3Kq8WAedE", "userIDs": ["Zs4wcmpBF9AKLWVL", "lgkTQKUYwCHBRM0a", "gbWpnLcLqYfYkx1K"]}, {"partyID": "v6pqItqopSVjpEG5", "userIDs": ["Pv4cuNgvtcd7mfbW", "ZNxnhvdECpludvWj", "chC18jFEbqWZ4w6N"]}, {"partyID": "PW6IrlpifOD59P0F", "userIDs": ["bd0luHswg7bimwu9", "8RmwMyqT6GHAkkCm", "bUbTJmXRKbXBNDH0"]}], "teamID": "YPlzJ4srGuX11f8w", "userIDs": ["dg1hK6ICExWXMD0c", "9L2Mmo7hhFacZhCW", "DyHe2QkD9r8wrzfE"]}], "ticketIDs": ["xox8K5RDLwTpLS7G", "9fiA9wXHtYySsOjy", "MHQvhqSOuKxQsUzo"], "tieTeamsSessionLifetime": true, "type": "epUpUiR6TcPW52Nb", "version": 44}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'GY76s7ALnE0Ry8bc' \
    --body '{"backfillTicketID": "3dHu2DnbD0XFyjcC"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'MSxfx3EqqVE62mQv' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'L4ql1LXWfmHDjsdG' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'zO8Dn8TszZmpSGGT' \
    --body '{"metadata": {"FCy5S9HxUaJZZPVV": "3zXYnGLl3bbTiVak", "bAfSiFgplvgMrUvY": "zafR7BKZ3EStwx9D", "hsgStT9rna1HpD3n": "Id95166H870aixv1"}, "platformID": "w5tKlsCEOe1wEkUH", "userID": "rGeqZAISryonmao8"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'lBhimgspHJOSrgTI' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'OKPDn1WrS7W1G6hW' \
    --body '{"leaderID": "iAYmL0gRpQggKrUO"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'oijD4KQkfUM7IdPe' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'FETpIoUrOkAArNUb' \
    --namespace $AB_NAMESPACE \
    --sessionId 'g50BzQyE9pKJueSK' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'fEWCOxcnTz1ssRPj' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId '39bYk5gly5qkqGJB' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId '8PsZbK2ymS2P8w7R' \
    --userId '7INZXyGctbjwQLKQ' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WYapRwBmqtKsb7sC"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'kqBIfQKBmnk5rZQx' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '22hIjRztyaT8gWTI' \
    --body '{"attributes": {"bP51EBUv44c4Nsce": {}, "B3NFyOsleegnSjoC": {}, "1ocZkSRJNlBoXpT9": {}}, "inactiveTimeout": 73, "inviteTimeout": 40, "joinability": "aimsE74Kx2UktetD", "maxPlayers": 63, "minPlayers": 93, "type": "23Gc6nvILF0XV9fb", "version": 88}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'BvxtztrxhJqf8lgl' \
    --body '{"attributes": {"qMZDJ6tAWKg8FXWy": {}, "MERR6P5fXmuz7JgT": {}, "aZLNKAOeWxkHyWkh": {}}, "inactiveTimeout": 72, "inviteTimeout": 42, "joinability": "O85GP2VpOgkfbn3G", "maxPlayers": 10, "minPlayers": 69, "type": "Gws0y8ktFLwxdr6u", "version": 76}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'SRPRE360edn2bsGb' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'x9ylrzwFZbhrgKmS' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId '8uarGwJjjQODpfA3' \
    --body '{"metadata": {"zefFUjqaKQhG87bx": "mZlV8c6UP1ESEdVY", "1uy2WcY25ZSt9Ysb": "ajh9NZi9hxasn1rZ", "gNWEzljfbqMkIsmZ": "kMcVjRbdZQMmGztp"}, "platformID": "ArEISMdsajAoTRal", "userID": "HAqUpVojTONDqPVh"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'RT4m3KQ7vcjAyGou' \
    --body '{"leaderID": "ktZ4hpntYUJI4RGD"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'OIf6xXu2yFBNDsPj' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'zjhMupmu3CD6gYB5' \
    --userId 'uF3jzt0dOTOpLqVU' \
    --body '{"xoOGH1bxVVBx8kmu": {}, "tKL456UJfxIPkoJW": {}, "TgApnDlM2qdvsedM": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'hFydX4qvav1w8S8w' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'PdpKIJaRt4dTqV6o' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '5xVECZA7YTloPuaA' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId '6tpmg4PXj1CMI1br' \
    --userId 'LWVbv5LwJQtYzGFb' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'HrIwyA92dd8QK1sG' \
    --userId 'r2AIJnesdUKz9bgc' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"FtPr1sxHTDIKRhCg": {}, "mIYN2mkVtr755QU3": {}, "8lIaxj4EWxaQIBs0": {}}, "configurationName": "xA6JVgeoaiRWzVRo", "inactiveTimeout": 63, "inviteTimeout": 71, "joinability": "hCrpwGEJuQ4LlH8g", "maxPlayers": 85, "members": [{"ID": "hDqaivqt6t8lI57m", "PlatformID": "XLnWY2WQPeSJ59lQ", "PlatformUserID": "PS1j684GwsJh7V6N"}, {"ID": "HK3mCJXcv9a20jp1", "PlatformID": "VpqzOL94gDwbcFib", "PlatformUserID": "4NyRrdgtXJBhnekk"}, {"ID": "ZezDiViS2hD60hYX", "PlatformID": "4yca6ASYR7PYOvLB", "PlatformUserID": "g9LkEe7FxO5b4nKI"}], "minPlayers": 9, "textChat": false, "type": "AzBIC6TMaKONELmK"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'rP4MFVykmsRaXYaX' \
    --body '{"hiQ0V8QIEbG8BZx0": {}, "gOzCh9krLaVYiz8Z": {}, "QV7iuFWA8N9W7GwH": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'i9yxaLg6OHS5Id9s' \
    --userId 'f1yQBZwadesGQW80' \
    --body '{"rcX5DsF7KvLg1tyz": {}, "kRAoDVnUArYdtzIS": {}, "fpTvRHus4wKMneua": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["q7LuxAzkYoeW74sb", "Y69JXZNvU8VHxn2r", "wSzbTXkRrBfgkPIe"]}' \
    > test.out 2>&1
eval_tap $? 89 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 90 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'PublicGetPlayerAttributes' test.out

#- 91 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "2NkWsTO2Dn77sFCv", "data": {"oZqT92kv46zuLWGM": {}, "2S51W3Z7KxrZeNYQ": {}, "Lbn51StpJo6U35Ok": {}}, "platforms": [{"name": "vHrO3IJQ5EA45zrf", "userID": "FFMwQGo7s913hDlc"}, {"name": "l9wpGTo8pJgwq7W4", "userID": "R4wtv3Sav9EPcncB"}, {"name": "YgD3NaHMi8xpUlEH", "userID": "m2SvCGGi2SiZLk2j"}], "roles": ["ycCbdmTTxXzxnMr0", "PX24rsiiPZTn6Elw", "rkekOAcazRHNI5hk"], "simultaneousPlatform": "RU6gxvkPjA5PuSSh"}' \
    > test.out 2>&1
eval_tap $? 91 'PublicStorePlayerAttributes' test.out

#- 92 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'PublicDeletePlayerAttributes' test.out

#- 93 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '66KxBGHkmyzfu7OL' \
    --orderBy 'yw1jv4xFB8Z8HFGP' \
    --status 'l0cPS1H5MNEZnGvT' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'rMCbRe7Y5ollsTsf' \
    --orderBy 'IQl5HJqeY1ruiIHO' \
    --status 'FcEguXoXWAyntmVk' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE