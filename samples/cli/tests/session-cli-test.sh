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
    --body '{"logLevel": "info"}' \
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
    --body '{"metricExcludedNamespaces": ["Oi1iWJnPZnQgiJLC", "cC1BXI0ErzPGsnK7", "QnrYjQjEjgwPpcNU"], "regionRetryMapping": {"NygQvKAVxjXehhJf": ["vTDORFN2wuoaGqpD", "NXKBcGbgau44MLze", "zo0dA8c8dBlexE3j"], "RdMk8EOw6VPQkxM6": ["qponJXSh2WqdNaN6", "8L7QUN9HVtrzd5RQ", "Bw5esDBDwSfYa3Hp"], "ZFKGGazAhAyQUFrg": ["gxjdutIo5b4kqJJW", "uJ9egcRtkkDkxvjS", "Kw4WggW6ZVRy2oMR"]}, "regionURLMapping": ["vFGjP43yJFOW5CkN", "5kRlrLrukKvKw68k", "qNnJ2Er4VuHTt8oT"], "testGameMode": "KiXg5Re0yHKIzNlz", "testRegionURLMapping": ["pTy6jYVXry0SFcw2", "lzmomPvkeSUfBGsg", "YGhW7lGC3PJC9fTC"], "testTargetUserIDs": ["VDamhvJWnPUdpBm3", "aSXDwX8vKyQrNS4p", "RnW3ogclH8gQmIJo"]}' \
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
    --body '{"durationDays": 25}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 98}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "PROMOTE_TO_LEADER", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 48, "PSNSupportedPlatforms": ["g2wAauTVmqhqEhrf", "thcu3xX2dGv4VuJG", "1Erg6dThLMXzQUVO"], "SessionTitle": "Z2pvddG2r6zK1DIH", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "vTvjhDtFK7au1axQ", "XboxServiceConfigID": "40xFPSTM7VjZfUJa", "XboxSessionTemplateName": "kdZoBsQzIyPRy9gE", "XboxTitleID": "HV35h4F4HHGNx4OW", "localizedSessionName": {"dDx2jNzlCq0gGwUu": {}, "khoYXF69YhTPpwV9": {}, "8DOkWLRjm9TgemIN": {}}}, "PSNBaseUrl": "1gyGFfGTcxdEHehQ", "amsClaimTimeoutMinutes": 64, "appName": "aZt4xf2Ma8jAUO6w", "asyncProcessDSRequest": {"async": false, "timeout": 40}, "attributes": {"WbfhhF7XemFDRQc6": {}, "sgkLrAmbb64xf10Y": {}, "fnMYzk2pHW8KJVgK": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "D7Cy3PGLU1BYiSjL", "customURLGRPC": "XeDidTaKsvhvq77m", "deployment": "b9i4PwEq6MfV1yzv", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "PHt7RbH9uCRQeE9U", "enableSecret": false, "fallbackClaimKeys": ["pq2Wiyu9Po7haEuQ", "JYvYdxB5gaSNOKYC", "QqthzJEfWuFk5XS7"], "grpcSessionConfig": {"appName": "6Ujct4V2ExaAdGfg", "customURL": "8HMATJaGaHbgd0xz", "functionFlag": 76}, "immutableStorage": false, "inactiveTimeout": 93, "inviteTimeout": 50, "joinability": "INVITE_ONLY", "leaderElectionGracePeriod": 29, "manualRejoin": true, "maxActiveSessions": 45, "maxPlayers": 39, "minPlayers": 26, "name": "Y7KuD3sXSq4mztvf", "persistent": true, "preferredClaimKeys": ["BSxGhMK3bRjJpRb1", "bs3IMDQr2VBZoG0H", "r9Z3Y7W4WmEJTG7z"], "requestedRegions": ["QB6wwvwFdf5yyG56", "pa5ilMImb6XJkLqd", "k042JcO40ynoWIFu"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 20, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'i5AfSFYMJ0CyDFt7' \
    --offset '68' \
    --order 'pqKRKkJ8nq2G96vD' \
    --orderBy 'Eo32V4nD4duJNEVk' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'erIGaiaLWU0UNNox' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'ofwr6uBO5p556MNQ' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "KICK", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 1, "PSNSupportedPlatforms": ["pvKSZPxwXySIIZRq", "zv5pEn6Ux6LdDcPK", "P17MjQbYRRHSCLLC"], "SessionTitle": "RpAYeJCa8W3ASMlP", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "8jAjxJeKkKGrb9Yz", "XboxServiceConfigID": "Eh3D1evEhssKTn21", "XboxSessionTemplateName": "iAnmU3QQphKzlaRr", "XboxTitleID": "LRmgePKGxOY341DW", "localizedSessionName": {"jAhN7DAUNtqF3rFi": {}, "b64SvgnBw3MGuNZ4": {}, "e5Lf0VXTWYEScZX3": {}}}, "PSNBaseUrl": "OM02XTRaeB9pmK2W", "amsClaimTimeoutMinutes": 86, "appName": "3sU1gQ9qB7u8wM1y", "asyncProcessDSRequest": {"async": true, "timeout": 29}, "attributes": {"uty391LIv0VS4uuw": {}, "A6avssyKmUWZEIVO": {}, "DrDiDajcDbIAY8ur": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "uysQEt6viHKe7ki5", "customURLGRPC": "rTuIYQbcN9nqepCC", "deployment": "xwcYyVVGC1PkOTvA", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "UMiT3zgOSnMMfvBV", "enableSecret": true, "fallbackClaimKeys": ["mxvgNGvNCa6ClysL", "MQHppRgk2XZgq9DS", "dEict6BA8vTtuYsZ"], "grpcSessionConfig": {"appName": "rGKdo48cN0xlrvyT", "customURL": "H5Y72CXLILKD9key", "functionFlag": 75}, "immutableStorage": false, "inactiveTimeout": 90, "inviteTimeout": 75, "joinability": "FRIENDS_OF_MEMBERS", "leaderElectionGracePeriod": 46, "manualRejoin": false, "maxActiveSessions": 58, "maxPlayers": 16, "minPlayers": 82, "name": "SFGfXbpco92bYbpg", "persistent": false, "preferredClaimKeys": ["JAWyUQqKYUwaahWt", "ybT3AaTl3ZVXOSMj", "kKyuTtl9Kn979Noi"], "requestedRegions": ["D8NVZP7A6naini02", "snBC8dNswI3T426I", "WP1xN3IwjUcSbqDP"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 8, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '9imf1hkFplzFcDsW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'vwwBQzIS0HZwcVkw' \
    --namespace $AB_NAMESPACE \
    --userId 'm9hRFhfwf34qkfN5' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'vNkItEnYn3iHt2WG' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "Hc51DDZtS2bntWYE"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '1zlE7uBxEsar4MVT' \
    --dsPodName 'aRVTWc6t0lXFkUdx' \
    --fromTime 'DjwUISuTscDEErcU' \
    --gameMode '11mQ2gDfmlFaqYGE' \
    --isPersistent 'vllVchsFGkXfzvye' \
    --isSoftDeleted '99s5aaUGtsqv47N5' \
    --joinability 'CLOSED' \
    --limit '79' \
    --matchPool 'uZK5FSovLWnakCEr' \
    --memberID 'w7lbBdY4Ly7EQZbK' \
    --offset '40' \
    --order 'kF3Neyc1S1iF5pvc' \
    --orderBy 'CQvoiC3vtpBZEzlr' \
    --sessionID 'zijq5XcREoOCOK63' \
    --status 'REQUESTED' \
    --statusV2 'AVAILABLE' \
    --toTime 'ilNOX1kVnvMp6GQv' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"TjtHEr4EGoq3fAqZ": {}, "zfx75H52vxJpJi2Z": {}, "TfGZKzQxtFxoZ2I0": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["1g0MCFgk0PwvlI8J", "9TVxdmLiEnj2P4ld", "gfevfsXmDgw8oQZC"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'xPlKYarmbDFjgply' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'f4E9pooZrPTMW4NW' \
    --body '{"createdRegion": "8UInnaRzePbSeCNY", "deployment": "F2dwMHIQzPmt14G9", "description": "reqQsJnWHQvAg0k0", "ip": "7P689Yd1QdiKxInw", "port": 40, "region": "oiorMgFTVOjhzCdH", "serverId": "R2jCctEOYrokK3lc", "source": "6hrIG5fvcUcKO75x", "status": "cI3URIexYi7s3Xwg"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'hYUrBB86x5ywbyTF' \
    --namespace $AB_NAMESPACE \
    --sessionId 'evovhYdsTyGquQmR' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'tY933PVVtvWbpgaa' \
    --namespace $AB_NAMESPACE \
    --sessionId 'jktSH40YEKcqZWs8' \
    --statusType 'gabAkig0gjT4q07r' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '76' \
    --order 'LaE43Jo2EM6waoki' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName '1tlDS6wmTr7FwvFF' \
    --fromTime 'Xx3c5zlmJQGqsavN' \
    --isSoftDeleted 'e1tuSJYx7SMID4Yk' \
    --joinability 'FRIENDS_OF_LEADER' \
    --key '8o6Dmva95ac3AEMh' \
    --leaderID 'TYY5ETiDjQ4hyuWo' \
    --limit '55' \
    --memberID 'yzafzSvkfs25EoV2' \
    --memberStatus 'CONNECTED' \
    --offset '7' \
    --order '3hIwAstBIQN31bqy' \
    --orderBy 'nAiB1FDvVV0uZXm3' \
    --partyID '2oKvrKI9GO5uZ0id' \
    --toTime 'L40fA4QUiGefuzg5' \
    --value 'KUGcOTKCQwoPcu4K' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["ZAArHHF4JeSnM5kh", "XhShWmDOeFQqyeiY", "svKO1Z7l9rf4WXnR"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'Wf66vhacOArJLXmH' \
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
    --body '{"psn": {"clientId": "ddoa9maqYTRRphk3", "clientSecret": "VVejsNTfTaFcmwrn", "scope": "etuKptxUtv1Nd0mW"}}' \
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
    --platformId 'PSN' \
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
    --limit '6' \
    --userId 'B59uMfTeD3heXoDk' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --userId 'wIFDEhB4kWjbIlzS' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'eoXA4jVf7iScWHMZ' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'eLTaElsirQFGPn9Y' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'DhVsE1VcOXpeZtnF' \
    --userId '7dFA6TmeVvdnu0kp' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '2mjlWBYybHTYiLPD' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'X2SVH1OOwryh8PNX' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId '4j08Hu9qIuFPoUaZ' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'true' \
    --body '{"appName": "xpENncZf3TpwTe6r", "attributes": {"ORlHd3vsvT7Z4KJk": {}, "q4zo85BsJrIfaayU": {}, "qj8zY2JCBgkuUv7c": {}}, "autoJoin": true, "backfillTicketID": "cyvGkIg24lzxltVS", "clientVersion": "hq28ByCiBZ8gNsc0", "configurationName": "bKlT6Aa9gewusZNr", "customURLGRPC": "fFKIJoPd0FqWqDxD", "deployment": "x26Y65WQpPwxI17M", "dsSource": "oN0utVqgYwGokqlq", "fallbackClaimKeys": ["7EOFXQV4nUMZmIsw", "lgvWSdN0I26Unq1J", "PSMreF4nOlHpSJAu"], "inactiveTimeout": 36, "inviteTimeout": 85, "joinability": "CLOSED", "matchPool": "jrJm64trP5MaoeS5", "maxPlayers": 62, "minPlayers": 40, "preferredClaimKeys": ["wc4DP0XM6mibIJLN", "DYVwqD8CvsSqkFFF", "aJDwUJ8AB3hcTGU3"], "requestedRegions": ["O9htmLSvFITIScnl", "wYjofY6MQyCXvziE", "KkzAuFO7XsRTWwQS"], "serverName": "4xS3MtAvlSZjjxOD", "storage": {"leader": {"nS4w7etOzScLblNb": {}, "eipJw1R6eWUVz6W8": {}, "Mke65w3osF5mSM6H": {}}}, "teams": [{"parties": [{"partyID": "DnafLDTnUfo5oewD", "userIDs": ["01v3YlKsq9lJBu6H", "Yejs8Hbsw1by0sgJ", "P3B1nmkL0hMUc9PR"]}, {"partyID": "sFmzjuhwfSgO6zbx", "userIDs": ["0CvzZQZQHwqzYjNt", "sEadWZuSju0y6ot7", "mPSBnfzSud5lMnVy"]}, {"partyID": "JHrAVEaXFnJ8v1RX", "userIDs": ["2b9i0sUKcNrLgSaV", "Y6N5OO3Nlqsyl824", "uFQ2SBzZChnbvUBS"]}], "teamID": "fC1rrSZnpIPQ5m6R", "userIDs": ["SdN3owtQHk8IyW9C", "oftDBM7uinH2f96c", "9VEOl8Lqh63BKRqT"]}, {"parties": [{"partyID": "0Z4AaU74hcZtFH6x", "userIDs": ["FTG3C9yJB3cW9oz4", "4BIWpGUh5Kg7o1Q5", "lYkNsbXqlL9rTUuI"]}, {"partyID": "LRwqxHNnod5bzJks", "userIDs": ["pWGnARPTIn0I0uRg", "watKDRbfAf44XgIV", "pvAe6ykBX17Szi86"]}, {"partyID": "vIDshGtU6swSi49h", "userIDs": ["PvmIoyf4sDlHlaeA", "MRCwgcrhpIajM5X6", "De1vYN2h1cpo6rkK"]}], "teamID": "RVYWQ4iS8CqLXMAL", "userIDs": ["7u9uaRuZWZ9skbL8", "8jAFtFqmWzBvFU2o", "sYi0FrHO9ta2OrZ2"]}, {"parties": [{"partyID": "DfVbG8zqLK0N32RB", "userIDs": ["eeOzb7ZSsussrwTi", "gmuPluXqvCyZtplW", "yfWkSX24wIcVDGwC"]}, {"partyID": "EyWaXRNSOtY6bgiB", "userIDs": ["pcST9Aov4FcWbn98", "pXZyg6Z7Uavr9KrN", "l5QpBT7RoXUlsPnO"]}, {"partyID": "lyms2laVM3iTGnav", "userIDs": ["lgp3oF6EDOGycZxm", "Xa0N5269jg3OJLkq", "7kynJW58ZOBo9HcN"]}], "teamID": "LXHCXpqT9fRnbIEf", "userIDs": ["5qv0APnWhmwuA3JV", "rrO3Ylnq5vBaIyBq", "PrNeGfvZAL9cDvWf"]}], "textChat": false, "textChatMode": "GAME", "ticketIDs": ["Oh2sfQnT0eaTCLVX", "HmvepR7FUxuaspqW", "PAGhhmAKqkOU3pBr"], "tieTeamsSessionLifetime": false, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"JOCAMvGykyM9mMse": {}, "lft2qKxXVExTFsno": {}, "qtnDNB73C6dgegGk": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ewiN2h5idVvLPkoP"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'iCodytdTkPidya37' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'azuzSZC6aYNtIRxD' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'xtSxfEkd4tzwmD4C' \
    --body '{"attributes": {"28UDOYF157a1u9sV": {}, "T1IxPSm589ePOPht": {}, "zwT8X0LWin40B4hY": {}}, "backfillTicketID": "KZDbktRcfyDEWv83", "clientVersion": "CByEoyQGi30St00q", "deployment": "wqxIs5ulNNj0I8nD", "fallbackClaimKeys": ["rc2rZGVpbpqLlLly", "9FuaNVNJIx6pSv2w", "eydEON39JrsSNaxt"], "inactiveTimeout": 47, "inviteTimeout": 11, "joinability": "CLOSED", "matchPool": "fMOJBl749MdauqmT", "maxPlayers": 83, "minPlayers": 63, "preferredClaimKeys": ["gLXmxIA9OjEudvQ9", "jlbkSRRN5KoYnfue", "M7jUWKoYK6PdQfer"], "requestedRegions": ["vKwNLNntkI8JEUrt", "2PHO5gg9UBKs4mTS", "amKAzGtTgxEkaAqr"], "teams": [{"parties": [{"partyID": "FKmrN3MQZplfQe19", "userIDs": ["olXODW4wsQJ2PFgA", "06PHBtzxvQ7vzzay", "i2aim3x6Kv9fPNOX"]}, {"partyID": "qwqSh7wDG7BmVHHj", "userIDs": ["dLDt3yhNIH68GK0D", "tDZuR4sAfkQmc8oR", "Gf1MJsdRnbVmaiWt"]}, {"partyID": "aloxfdmlMVxwkqi2", "userIDs": ["WlArqcirT1xmpsI8", "lVceWh3SdGeIhYt8", "3O9khr5Wb3rNOimD"]}], "teamID": "0SvIGzeRygL2yybB", "userIDs": ["jJgSBI0bwPGQhPRI", "WsMui5pwgy7yEz94", "5PevoXtAlw43sKi7"]}, {"parties": [{"partyID": "HMdXpOTBEn7a6WtA", "userIDs": ["BGPKIBZeslTF2WhB", "NxisOAdpTuYDGGj0", "G5ZOxBkIm8k9jZFa"]}, {"partyID": "YttzVXMXJMjFxAxU", "userIDs": ["nEBTjIMniYxdQWaP", "K4x7gp0djf1skzd0", "9ar2Rp5Uut7Jf4hM"]}, {"partyID": "TxoX6k5vtmxJlLkb", "userIDs": ["ZQpL6Cz1LmXBp1BU", "9AJadfunefWQNhIN", "GSOhhk5u74E7vrBp"]}], "teamID": "h6q2YlBzmpxMosfQ", "userIDs": ["ZpUHjBfFqVBlVuOi", "dh3cozHf7LAQSpmH", "JhQO22i6MkeZTiy2"]}, {"parties": [{"partyID": "b2DnVTKnZybv1Gst", "userIDs": ["rh33z20hincFP3Kk", "dNatHr7bfns3ZQ63", "ATOGUxFlj47jdEge"]}, {"partyID": "1ZeUSu4I04rVvuJJ", "userIDs": ["0lxxBjTfZyatqKml", "N9ayJubNchql2kxT", "amOwgXUkwODCrEXC"]}, {"partyID": "8f4AYf4cGcHjO7sS", "userIDs": ["FdO6dUpVXlfPatHd", "KnpEafFXjHg51IXp", "k9Gg3tnmVOhWS6c0"]}], "teamID": "wy4TpBI8ARXroBsM", "userIDs": ["mDhjRpUOpPqVQYcR", "JBwrfhGgD87qotVu", "OyYEpxVVoW6DhOU7"]}], "ticketIDs": ["j2XCutgv7BZeSx0l", "ATPVFzcbjtJ6pFzB", "utIRBzlioSvWMzQH"], "tieTeamsSessionLifetime": false, "type": "DS", "version": 29}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1TBbWvKEFx2TMgkr' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'SuIUANPtSOQlWxPD' \
    --body '{"attributes": {"Z5Rqx8uuRPYTuuGV": {}, "TtedXYOr7aJlyIQ8": {}, "5uvPrdrqJBrNz4Ji": {}}, "backfillTicketID": "54O5Pu6RMroqUqUu", "clientVersion": "TtJHgelp3cIQywek", "deployment": "LhznqLqpagiLaTQL", "fallbackClaimKeys": ["ygcKydT5lvUznRWk", "uzfE3TgYZYPrA1CA", "NYmf070wnJ8InGf2"], "inactiveTimeout": 79, "inviteTimeout": 47, "joinability": "FRIENDS_OF_LEADER", "matchPool": "81z31CpORnfouMOQ", "maxPlayers": 56, "minPlayers": 92, "preferredClaimKeys": ["dfgAQIN7ZfjtT7Ov", "MGphM1M0nrF9XXTk", "SYleIbVCzXdU78DM"], "requestedRegions": ["6SsoLKqCMlQ82dWW", "Wpa5GaklZESEOGPY", "u3uy8eeqEAT1MTwP"], "teams": [{"parties": [{"partyID": "oGP8M1iTSv6GB4bD", "userIDs": ["pTqHgAk3MPecQTwZ", "Ehepogjwig5u8c0E", "j4O4UqCXJIS3yUR2"]}, {"partyID": "Ifn4PrpqkyQWrPjQ", "userIDs": ["5PJEMQrs2VTrvBQs", "rKfi4w7sEYHjNlO8", "xesVFKIZOBd2J4kv"]}, {"partyID": "fNJvw19I3D1CQ8ZB", "userIDs": ["23OQT2d0N059lQIs", "5znLnA2gDYTiQh1k", "54ql3wGGdERKyqQg"]}], "teamID": "ZfGlFTInP1dNlWrq", "userIDs": ["a3smYkU3r9BV5xEQ", "Bmz4biYNA53zvGxQ", "88OtnvJli4NUXvVQ"]}, {"parties": [{"partyID": "Y5Nf4QBbliC00C1k", "userIDs": ["aDn5UX5tAhLpOb0E", "zw1K9RNrD4k2NZ6G", "cESe8Ug4lUEMZ18h"]}, {"partyID": "uoQhKJGjtCh2GhQg", "userIDs": ["hj5E6QyMufXK8ppr", "X0L1GjJDd3nsATi6", "bMOQEVYNhnaMMvYb"]}, {"partyID": "zTsViqz3LuywFN41", "userIDs": ["zzJQgwu2PAdQccaS", "4akJQwayLRBPVY2b", "txsuamwDnKkDuxsD"]}], "teamID": "9n0FZxzvfoYzxU6r", "userIDs": ["f13FUayQU0CYhXDx", "qkVXNm2t2U4cXRwQ", "eBCfEQ6L6cJrz5V8"]}, {"parties": [{"partyID": "uTNSaMVVlQ0kNl8e", "userIDs": ["quNbGoKc39uNSxSH", "j5bC9w8CSL7uOCgs", "DeJQUE6ddaqWqpj2"]}, {"partyID": "Rjib5GFHPOlx9GrA", "userIDs": ["nZwOm1EzCnLKohTb", "grUPZUYdchilwQw3", "sKq7I6XgSTCnFJJb"]}, {"partyID": "GKNVKWIFe87MuFO4", "userIDs": ["vY234wSFoNzLGDaD", "vf0EAl2ZwrXoEin0", "4FnXjS4Eb5p6lWR0"]}], "teamID": "O2XHi3o03oTDkRgF", "userIDs": ["ou4fNB1FUIv3xU7F", "ozHBrHvg0JVvcXeN", "kKpgWLsvltGNG5yr"]}], "ticketIDs": ["azFFdJs8q47AWNKq", "auDBv8LTN4R1cDGP", "bRINNRwIEvPq521B"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 33}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'jQrzZ2lNktWGir0R' \
    --body '{"backfillTicketID": "FhrwWgfTV2MobtjJ"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'I5y2dMO9Lz6x89bb' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'oDab02uPPk2evs3g' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'cxGeTyITpoYCuxfR' \
    --body '{"metadata": {"ovTTl7qcM1YtSfM6": "OBUoypeouDszXhEk", "OsmyoGOueuhNi4FR": "17LszawCBiYOQqYe", "sui8m9XjNbeQAz89": "1n9xZcisSV2GkHJI"}, "platformID": "avVaPBMO9hbPw2HP", "userID": "Bj0WqtK95i58OqKp"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'KrVXt6Gjc6D4xNth' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'xQ8nIybQkSmv6hoP' \
    --body '{"leaderID": "RQx3EAtUp3cIyrtX"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'xK7LxvVWUrEP91Va' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'i531xCzlhs5lIV94' \
    --namespace $AB_NAMESPACE \
    --sessionId 'K5TGWkcoRuWcgVBF' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '4UnkjIh8gymB63hb' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'Get29KYuR5lHfxTI' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'zKHDWwf0jWU7Gwm8' \
    --userId '2NpoPnEO5RgVSQia' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6aPiQGBUiVASBVMW"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'cKFR15IXmpSUDU8f' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'QsXB6uIHfCx3GJvT' \
    --body '{"attributes": {"ueBCrFBAbRBkmEwY": {}, "k4qlO3AjZBKDRsfE": {}, "DcNGUYYre42xEm12": {}}, "inactiveTimeout": 31, "inviteTimeout": 34, "joinability": "CLOSED", "maxPlayers": 6, "minPlayers": 32, "type": "DS", "version": 14}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'nDqZqK4lPIrWXQ22' \
    --body '{"attributes": {"B6orlCOTeLaPO8cB": {}, "T1uQ6m5mnTBwN59P": {}, "grzQEEX29xZJthKz": {}}, "inactiveTimeout": 89, "inviteTimeout": 76, "joinability": "CLOSED", "maxPlayers": 72, "minPlayers": 52, "type": "NONE", "version": 46}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'EzVG84Lw3X7rvcZm' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '8uTughRM8646JBIc' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'sZCvUMVLGqOrV4yh' \
    --body '{"metadata": {"swhjYWXQeIQG0wZp": "fuBOSyNMEXfzq22R", "4ifFYNjsnMyPvFTP": "9BpCPmVChHBrp4d5", "PzaHliHN6wa0XjKP": "jiZ2zRLfi97lv5MP"}, "platformID": "WtmUFh0vhQkhQRVh", "userID": "j55LAHNdImlflX8t"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'M8VL9MuKFowLH5xM' \
    --body '{"leaderID": "dGygRiUKQMxi0Urs"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'hxnquXtSXhDF9zMY' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'dUA89OM74ObfFnxN' \
    --userId '06boM5rOfThNrIYi' \
    --body '{"WBENOhlJRQkoAPde": {}, "K00LkQWy0prSxHPg": {}, "sScqUGTFq3I7UnPO": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '4GuryrxDLb20JrSq' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'jD1PtoUtuSR9ao6t' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '7BgXI7RhnNSIsDoR' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'Jw6hvoDblq2E7cQq' \
    --userId '2Q6vF5RiaBk0DtBx' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '7CzaJcdHKE7VovNO' \
    --userId 'b5sMZLKwVoUtFsj6' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"AfcnA6CX98z6PipV": {}, "fgQuoZ5yUAh0L1et": {}, "UQ0EnEBNt2Eco8Oh": {}}, "configurationName": "cMFpEjevP5fxqORi", "inactiveTimeout": 34, "inviteTimeout": 21, "joinability": "OPEN", "maxPlayers": 17, "members": [{"ID": "Ik9U8UiXjl5QTv3r", "PlatformID": "qPhunAqDkDIWvk67", "PlatformUserID": "5CkTpg03vSDo1cdD"}, {"ID": "4pcdbfBHAYCzmCzS", "PlatformID": "t8PP9VtFWIK4nyVI", "PlatformUserID": "dGQ8OkZjwr7gRwYm"}, {"ID": "RvnXgS6r0RTs1zqJ", "PlatformID": "LJKUdKRPqJvPBhkm", "PlatformUserID": "NAD25gutw07UeMBW"}], "minPlayers": 99, "textChat": false, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'FqNVwWcI36SzNBeq' \
    --body '{"O3bSuE1nx0m1rIev": {}, "rjoNrYFb4pS1pvzl": {}, "Y1ePkqMsSI7jhduP": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'WXMqO8GfkEZO8aYI' \
    --userId 'wqG9AsUfbkSBmwH9' \
    --body '{"kgGQooPNB7iT0lRh": {}, "WqF8xwuOVhiiDbmP": {}, "Hm5hVARRvDfOH61O": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["8b2OQhCQv3V8RHP5", "BmpAHOJeAhRSQWDR", "QRPSSPepbX7SamAf"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "Pw9DQNO46bmmNbo4", "data": {"lqd7aqCVPlrq6GuY": {}, "jdPc1H6fzk6ywrlI": {}, "P8tMZZ1xCPCZi8ik": {}}, "platforms": [{"name": "tPxiV4KfPu0WT03g", "userID": "sSYKmQa8eprvhRxE"}, {"name": "erzeXZILep2o2H33", "userID": "TMMYt3wWyvwwDGIO"}, {"name": "PlILxocZVCJD9kpu", "userID": "XSJz7Y6kECcojPGT"}], "roles": ["SQ8aMEEP6ttaVDLd", "KaloVE8TK0Sjehz2", "Ptgv0Nzbi0tuddip"], "simultaneousPlatform": "mVzn6evMHQ0LXc8N"}' \
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
    --order 'gTAz1qK8rTzEHKws' \
    --orderBy 'pkvRFFEG54WfWu1s' \
    --status 'N676eOXJQvy4OgrI' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'VmVAEJV9fTIeFwp8' \
    --orderBy '3abEb9sBPq9gUswD' \
    --status 'W99ByaRgjXEXcjaT' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE