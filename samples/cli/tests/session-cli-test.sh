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
echo "1..104"

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
    --body '{"logLevel": "panic"}' \
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
    --body '{"metricExcludedNamespaces": ["VlZbiCReQJ6Mf0Lr", "IPjifsug0ryW6kfI", "MANo4cij67sqG5YE"], "regionRetryMapping": {"OZqsY3i6kDcSe0Uy": ["rxAwvfoPMDkmITW6", "4cyIlNHGSh91Fyu2", "CZFzJD57c1Axm6C0"], "ARSBzywhczylLCRt": ["XNsEmkORe3krY0m9", "pm3kBxVPLqbuZf7f", "QNKBBDGLMpACnbAQ"], "hl7CQwDDW6qB6YfO": ["uN4EWIC7mVnhyCXp", "DeaYZZwqctX88w42", "BrNDGwXOPJYeGHhz"]}, "regionURLMapping": ["MCdJQ8G3fem55mti", "PbtXHrKaDhPBJ0y4", "VUXcUzVum2rYddok"], "testGameMode": "GBfttNBMhKOrzFoH", "testRegionURLMapping": ["YC2A2O8wwQLIKgEF", "BeWrj3XkdYonBEM1", "rJrHgzyc0y9KnnQ6"], "testTargetUserIDs": ["PQH91K3akGlHJ2Jv", "LMlpWMP3qqMTlOuR", "OAtIu8ju4ZOf8Lb1"]}' \
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
    --body '{"durationDays": 23}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 68}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "KICK", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 45, "PSNSupportedPlatforms": ["ohZgfnByEBdQ90EH", "VzxgP7TDyPEkStyc", "2wkM4duU0ma1wrZi"], "SessionTitle": "em8DxzYWBFovLT7E", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "aRuJYGigQgDiasjU", "XboxServiceConfigID": "kbHuCeNwKxE3Renx", "XboxSessionTemplateName": "f9ryQQDNCPSRAOcm", "XboxTitleID": "d8OKivhOnsYquoR1", "activePlatforms": ["DZ8bpH10463tZo4c", "tAnk74OcnJXzdHY1", "WIk9Rn6v4O5tVq5e"], "localizedSessionName": {"eUaLiX0naI3Z0ipY": {}, "BUPnjGzCsa9znXMB": {}, "iSyfL8wY2HcKIC98": {}}}, "PSNBaseUrl": "ldcmXQwFSrK18a6x", "amsClaimTimeoutMinutes": 80, "appName": "oPQ29FI3ZPkPnQMJ", "asyncProcessDSRequest": {"async": false, "timeout": 68}, "attributes": {"8Hw91JQ1vhVskkFs": {}, "hi3j9E7aNAmtnLVE": {}, "7UsyUv8eilKrDtP5": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "YoxahSuaXcaxC5NZ", "customURLGRPC": "qQYx2KISigbgzeYs", "deployment": "dCgPxjN5NH5a1LO4", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "XmT34UgyPplB4xg9", "enableSecret": false, "fallbackClaimKeys": ["uZGVeWqA99p59nY1", "rpix9Ix1ithLDGCC", "cedLzDGZuWnERkAb"], "grpcSessionConfig": {"appName": "8odhjdaQ29N4A8pu", "customURL": "2GrHnLvvzeSzo3jQ", "functionFlag": 14}, "immutableStorage": false, "inactiveTimeout": 75, "inviteTimeout": 6, "joinability": "OPEN", "leaderElectionGracePeriod": 47, "manualRejoin": true, "maxActiveSessions": 15, "maxPlayers": 38, "minPlayers": 10, "name": "vK3V9qMdQCzk2Ml3", "partyCodeGeneratorString": "qKZxOiQMjZCMQ9mZ", "partyCodeLength": 6, "persistent": true, "preferredClaimKeys": ["6PYSx1i8TRtwpPSW", "ZuYMd3fbTvqcv0nl", "LmGoEun8KosVKruj"], "requestedRegions": ["l0OC52yETFQUd5zK", "mw4ztjPCnWvQjykY", "PsKTF23FQLKt5pNt"], "textChat": true, "textChatMode": "GAME_AND_TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 0, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name 'tz3oxF9hZOyZV0ff' \
    --offset '3' \
    --order 'oI0WiXT7AYSZQILS' \
    --orderBy 'o28U8EkbCda8khy5' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'I9UNX8JL7eDJvUAs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'ftVqJfpc663B0lF0' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 80, "PSNSupportedPlatforms": ["LFeg4pvQhV998c1B", "WEAhvEQ9fOwa7gFM", "EDzhB9EGePC6OMCo"], "SessionTitle": "YyzbfCxc1lfFw8HF", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "YJDWHBnnbZAU13aW", "XboxServiceConfigID": "T207R2O5pnvnnDPM", "XboxSessionTemplateName": "C6OZYElJjI90rgzV", "XboxTitleID": "YRQYMntIoZs4nTIU", "activePlatforms": ["bJh02id8hk6rkEcH", "IDGyefnkREHU0pE0", "GzhG3f3LTmxFCRap"], "localizedSessionName": {"o82nVBYefIdZE5Xt": {}, "ReKSWsewSQJ7Vm0n": {}, "AojAWuMT5CubeV3y": {}}}, "PSNBaseUrl": "jXs1lIYkj5DwyR6R", "amsClaimTimeoutMinutes": 67, "appName": "IUKLnAlUz3xLZKqT", "asyncProcessDSRequest": {"async": false, "timeout": 13}, "attributes": {"7C1gG16KUBepAuBd": {}, "00uTUXTlBean8Ycz": {}, "nbSdTlkYkjp1f2og": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "pV5iMkUVwtnAtZsV", "customURLGRPC": "HrAb1bXflzKuWAlk", "deployment": "m6NV2SUABy48Wr6Z", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "gNc7FEji4Fz70v9E", "enableSecret": false, "fallbackClaimKeys": ["QhNMdBJDncquc7w1", "uoT8nDkNHjOuxWi8", "T5ZfMkK6rCDLAutE"], "grpcSessionConfig": {"appName": "iVwaCLDVZBFUIGkg", "customURL": "bVI6SS7Y6vz1GtEw", "functionFlag": 85}, "immutableStorage": true, "inactiveTimeout": 88, "inviteTimeout": 73, "joinability": "FRIENDS_OF_LEADER", "leaderElectionGracePeriod": 82, "manualRejoin": true, "maxActiveSessions": 3, "maxPlayers": 74, "minPlayers": 79, "name": "Pix6QaTSBvgSFRvu", "partyCodeGeneratorString": "0HmnS3NDTQjdVg11", "partyCodeLength": 35, "persistent": false, "preferredClaimKeys": ["LhxrLcJEJIde24vs", "Q2XGulE7egiwfCT0", "V8hNERDks6fcTGAL"], "requestedRegions": ["h6E0nNf79HW0xh5v", "qHtrUzSXox3GAqrb", "shUqxQBWuvCHpAHQ"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 75, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'PQtzuyOtEXp48MsD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'OXkPLvirXW0mOrh8' \
    --namespace $AB_NAMESPACE \
    --userId 'oVMZBO7yqMPM2pKb' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'JOXfxxt1f09NHkd0' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "OJaKJeBashdYDt1m"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'rvtMIa78RHwHNhTd' \
    --dsPodName 'fuUITTBPBcqX2kLO' \
    --fromTime 'iuivXEJ4XTicQkHk' \
    --gameMode '9DHunOst1gHTzvGH' \
    --isPersistent 'V3Z02qMlemfTa208' \
    --isSoftDeleted 'aAIBjOPQ7wuHX0Fe' \
    --joinability 'FRIENDS_OF_LEADER' \
    --limit '2' \
    --matchPool '9MCZDsbeYgIdvZsK' \
    --memberID 'aMe62qdPCd2r7qVT' \
    --offset '78' \
    --order 'Ym656bOUoP0qD4Pj' \
    --orderBy '3WhcMvWhS4fywOvK' \
    --sessionID 'hY0sJ827Ow85mX5u' \
    --status 'PREPARING' \
    --statusV2 'NEED_TO_REQUEST' \
    --toTime 'uCcLzH2eeBxrjil2' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"nTNpATXBnlWmXEMx": {}, "6f9GIoqCAfELa2tu": {}, "Pj6lP6C5eUp566zs": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["a7uPGfYE2XjCaNTc", "sWBK1ABpfY4kdY7v", "0CKqYbNaigFTHxN3"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZTSFuB3gtXWHBu4P' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'cUfp25alnuyAhmUt' \
    --body '{"createdRegion": "nPuRb4a64sqUH1WE", "deployment": "JsaKqCuwfMyKOV1F", "description": "JJUZaKxmOT1CCiyf", "ip": "aJ27pLN0eAmmwswq", "port": 49, "region": "T5joK1gIoTLcGe4t", "serverId": "SjIR0MnFUxbi8B0l", "source": "BYSH3nptd9Fnwjkg", "status": "AVAILABLE"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId '5z8CBQESjOZhBzjS' \
    --namespace $AB_NAMESPACE \
    --sessionId 'fJOoJcvbSaKH6Xun' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '8tkHEBwh4qS49BdI' \
    --namespace $AB_NAMESPACE \
    --sessionId 'lDnttWZqgJoGESU5' \
    --statusType 'jcVLwBrdH5GP727y' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '98' \
    --order 'Otl4FLqsS4mI2LeY' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'ZFEIiksc8aRrCQGs' \
    --fromTime 'rBX16khfSkcnAXAh' \
    --isSoftDeleted 'Ur6l7uGl6xvJIPv4' \
    --joinability 'FRIENDS_OF_LEADER' \
    --key 'BptJ84Agx1JSBe8a' \
    --leaderID 's3ucRvEUKeasb27x' \
    --limit '99' \
    --memberID 'QaiVEuNUhWSmlxoq' \
    --memberStatus 'INVITED' \
    --offset '88' \
    --order 'CgwBhY5RhyVJT2cO' \
    --orderBy 'nwRFhwe0ZXQ1cbZz' \
    --partyID 'ZxPxhc9AV1qXgpVZ' \
    --toTime 'xtge1d091ACYAj8X' \
    --value 'gWObPSp2FexMoD0G' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["tBQ1lyM85qEBo1ZF", "xTVNPbB96JmE7dMd", "N9vHCTYAwPsuS4be"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'so4aRQfIOXPws1mp' \
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
    --body '{"psn": {"clientId": "Q9oh7NMppIGlQwyt", "clientSecret": "0VdwsUBcDofK5FvZ", "scope": "aDlh0EKEOteI2irw"}}' \
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

#- 41 AdminUploadPlatformCredentials
samples/cli/sample-apps Session adminUploadPlatformCredentials \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    --description 'uj4qa4CRp2PLod3E' \
    --file 'tmp.dat' \
    --password 'pKJiNsWyEJ4hk61M' \
    > test.out 2>&1
eval_tap $? 41 'AdminUploadPlatformCredentials' test.out

#- 42 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --userId 'x6C4esMdavj30zPz' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentPlayer' test.out

#- 43 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --userId '9h7TUnr05Ck95BX5' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetRecentTeamPlayer' test.out

#- 44 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'adxeymGcakSaphen' \
    > test.out 2>&1
eval_tap $? 44 'AdminReadSessionStorage' test.out

#- 45 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'jUZQUHYDsGDBUivt' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteUserSessionStorage' test.out

#- 46 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'iGQwRir7NGCUAz8r' \
    --userId 'QHLYAZjWcgz1DDfT' \
    > test.out 2>&1
eval_tap $? 46 'AdminReadUserSessionStorage' test.out

#- 47 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'iF8CD47i7WOHcCdH' \
    > test.out 2>&1
eval_tap $? 47 'AdminQueryPlayerAttributes' test.out

#- 48 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'fVNhtu6tTQZ1LpEz' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerAttributes' test.out

#- 49 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'Rmmr59c4fv4T1GRV' \
    > test.out 2>&1
eval_tap $? 49 'AdminSyncNativeSession' test.out

#- 50 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "0uasLrOTbXaCNX7v", "attributes": {"eg36dqNmkRs5xh8u": {}, "9qf8gcEftuyGOS4j": {}, "XgHmuj9rNybP11gh": {}}, "autoJoin": true, "backfillTicketID": "zQyzjB4IftHBnjDz", "clientVersion": "sc7pEr54XMcxJaje", "configurationName": "LLF5dTzttuMcEKUr", "customURLGRPC": "8kHO2ho8RIP3TyYC", "deployment": "3lcuKozWdy6YIdpn", "dsSource": "3f8STiZw36vUDEVg", "fallbackClaimKeys": ["sp53gHdpKasrZYmk", "kYFY3AhtE6pUJxtR", "W3U9CW6zS0cMrS23"], "inactiveTimeout": 74, "inviteTimeout": 13, "joinability": "INVITE_ONLY", "matchPool": "X48NSVnL11C7Xrkl", "maxPlayers": 40, "minPlayers": 44, "password": "OzcLSIfxypvvfFwg", "preferredClaimKeys": ["cT6T74octlhnLXwT", "Q36ZYHqCaEbTYhce", "WWBy1Gh3LrLRop61"], "requestedRegions": ["xOKVH8BrMXeeqIE4", "MdU9QU2n1tHlmndn", "5RcoKL5h7GtzIty6"], "serverName": "BaneFYOCIKzD9bb5", "storage": {"leader": {"3aARDXNq1yqyVDfp": {}, "CJQrWCVA9Ud7526x": {}, "6nLfGan5aqhRg8yW": {}}}, "teams": [{"parties": [{"partyID": "fwCdLgRzrKBNR9ug", "userIDs": ["JZn9tDEch79pxmPT", "56RbNIm6jIFhH69m", "Y51ZOpbfuauzYJXq"]}, {"partyID": "DXESeG1YH8Tq6Zo2", "userIDs": ["9QseYS4CRyqnOCTF", "mi3fKh9ra6BRsQBf", "2n3IPr0B61QtBZ6c"]}, {"partyID": "DVOiTVyhMTq6OxLd", "userIDs": ["KD6Yy7ggMFqP59gT", "fcsy8i5EU4wOSjAJ", "MDKMjFJgUBmkpdYh"]}], "teamID": "v1B8iaqKnptcWKrq", "userIDs": ["zEYFhjnmLfNmDQdP", "2EQguDi4y2bNr700", "VmxqjAlQscCG9VeU"]}, {"parties": [{"partyID": "fWGOtg8k8zr4WZDX", "userIDs": ["kABllMpZgtH4sKCZ", "IVEil5sm4Lm8EOi1", "GdLaIAqzuxA08DCK"]}, {"partyID": "fGHOM9QyGjCqNoti", "userIDs": ["4GIaLeQz06c3F5ym", "knPoT3CAAGalb3zS", "8GlWC0D0Ys2WM6Ss"]}, {"partyID": "fv8Bk2nYjOgjIt1U", "userIDs": ["4vbssUr24AFWq0r6", "hWoaAGUGt11zM8dl", "7yIl3bcHM238azSQ"]}], "teamID": "l22gkR7MQAF7Rjvo", "userIDs": ["CSD5KHMNuNrXUOlu", "EJG9BqHmcOhH4NmZ", "sZYahMgi4w7JWi90"]}, {"parties": [{"partyID": "LQ73Ij7MbUARpSwr", "userIDs": ["Jh2sFYYj304fkJHc", "MuSoWbDgyLYxMBxu", "S3CtvtDALSDEAMmh"]}, {"partyID": "neJq1PnnpoCmF0ft", "userIDs": ["3GsedXtnbabptpyd", "Sjxr0BG6JY5SpHhh", "qYtUMVoCZAIMEeyM"]}, {"partyID": "bMcmGpJIKcjAkc17", "userIDs": ["JYW55h9rLemVPBap", "K9GMZ2aOqF5Lw1vi", "mOWZVV2XJz8Hjlab"]}], "teamID": "CUv1JOd6aBq13ai3", "userIDs": ["c29MqrWkRIWR79xI", "S0s8yhJgDvOi2DXO", "FyAADGmzOJ3T4fYb"]}], "textChat": false, "textChatMode": "GAME_AND_TEAM", "ticketIDs": ["JcdfsdMSAkhvqzqe", "NBKQPXpRJ9K7U190", "PTCWL18LpsEranhI"], "tieTeamsSessionLifetime": true, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 50 'CreateGameSession' test.out

#- 51 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"UxbxbnFJzOsKchz1": {}, "EY8duzZ8iVYvFG3E": {}, "LUFBB9t5sPqqhzFf": {}}' \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryGameSessionsByAttributes' test.out

#- 52 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Hbr8XiPn5KXHtmEY"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicSessionJoinCode' test.out

#- 53 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'Qt5C9OTEeXfDqUnK' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSessionByPodName' test.out

#- 54 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '9QL97Ksg68eAM2bY' \
    > test.out 2>&1
eval_tap $? 54 'GetGameSession' test.out

#- 55 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'cXBDz1IigDuZ8wjy' \
    --body '{"attributes": {"B2jLEUEKcHb0bgeW": {}, "Je32ZNA8ZBDAhp7a": {}, "g6yDzJ8JUj2YRQzd": {}}, "backfillTicketID": "Ziwy66VXwMnTQrm7", "clientVersion": "DxcYgNJADAvbbe2z", "deployment": "ODghc2BRTd5Rqm3J", "fallbackClaimKeys": ["9H6CwtQ9Ohzu7RE8", "kPI1qoRgV2v5kskB", "L1hxZjRzqmPax1Vj"], "inactiveTimeout": 48, "inviteTimeout": 99, "joinability": "FRIENDS_OF_LEADER", "matchPool": "RQdiIlZXtkiYFrLY", "maxPlayers": 56, "minPlayers": 43, "password": "upyCuvV4NGuAzAXb", "preferredClaimKeys": ["oZTsKGPJUb0QPdXI", "9x1T4WXPcnBpLwEf", "gv9N5ANTwhM9XgTZ"], "requestedRegions": ["zkCr6RizfAjVjsXs", "CbtAcJi04NBqPAGx", "zQA5BbDo9Rnrj1Gb"], "teams": [{"parties": [{"partyID": "NjsTDvI9AVh7gtHq", "userIDs": ["Rzx7CBmJUMEdNmyK", "nsCybCwOpe1KMEkl", "0FirKfsinwIYCLJd"]}, {"partyID": "YX29EuIL4xhgT4M2", "userIDs": ["jcqZtQbsYaboD1ls", "oKNHA27ibVYvGALL", "vK1motPyoZx2dKQQ"]}, {"partyID": "Eqy6Sx00ZJV9ZI9O", "userIDs": ["0L8W5BoMoQGloqVj", "gpoSHALpgsi2VfLW", "UubOOrKhWexpd3y5"]}], "teamID": "iTAd7BJHGBvJP7RO", "userIDs": ["H13RbWuVob1xCNxa", "wFNbUEtHAfRGyqeh", "BxkvW1HkcAQRdexV"]}, {"parties": [{"partyID": "sq3yG1nHHthsBlDO", "userIDs": ["yVjEcrWM3wkk7hK7", "sUnxwZ5vk2H1O2nn", "PhhacBGAGNCvwrPs"]}, {"partyID": "xkiI58KQISjEcTaC", "userIDs": ["C4dpzrjGpS9khNEX", "pUTlNQNmtraX7072", "tJXvH1zPSfaRLXtl"]}, {"partyID": "9Hze7GYkfVysOiN0", "userIDs": ["3VO7A4HcdXjiDi1v", "HGZgS5Q1XndzWpIZ", "YX0ALpWyG5YzN5d3"]}], "teamID": "V0Fc1PVXob63dHDR", "userIDs": ["XQ3hYwtoBYpCN55k", "p2j2yPzEpwrufhgR", "tqXdz2I9MmlWxRrb"]}, {"parties": [{"partyID": "O1lbu1TPeQR6aXhX", "userIDs": ["Wy1ZqxTcg9K8SsJ6", "kzMo4QKrCUq6fQK8", "fxyNCZUHXjC7Zhjn"]}, {"partyID": "MWfwgBwxy44N6AhW", "userIDs": ["pQWfAMdesUFTGSMS", "uEOXU71ZMKgk5Dqi", "KS16aiVDHWRZsvNu"]}, {"partyID": "p07xOAovvW8q6R95", "userIDs": ["9wfjixzjjK6QGd6I", "sRBCdhL49J2RTjMf", "OSYi56s2kn9pNl6n"]}], "teamID": "OI8QfoBcC9uHqaV0", "userIDs": ["KDhtgoRqlnyEEtKU", "giWClQNV1P1JsXfE", "oou5uewm3RGT4x8X"]}], "ticketIDs": ["doUPRUj5w8l2WyD1", "xokEcoFHLl8k8T3g", "u2d2Hsr51vmAnJGq"], "tieTeamsSessionLifetime": false, "type": "DS", "version": 72}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSession' test.out

#- 56 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'sTySllhotHcW6hYw' \
    > test.out 2>&1
eval_tap $? 56 'DeleteGameSession' test.out

#- 57 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ecqQA3ZUg1AEJ9jD' \
    --body '{"attributes": {"NkC43aIgJfxZjkUj": {}, "GP6Pplkh0GTsRKUm": {}, "e3Es10PqkNKz8jaH": {}}, "backfillTicketID": "SlI93Ew0AFvfmMkF", "clientVersion": "w6IuJE9zYUevyb5v", "deployment": "uGVUQyyJoQwSKe2C", "fallbackClaimKeys": ["TltUp1s3SbjYLQMj", "4FotARDJdxYdbTYn", "djzRtONCsrs0NPcx"], "inactiveTimeout": 71, "inviteTimeout": 29, "joinability": "PASSWORD_PROTECTED", "matchPool": "mBybfGAGniZeMzzI", "maxPlayers": 60, "minPlayers": 24, "password": "SlkpmABh3TgeG7fz", "preferredClaimKeys": ["72z2wQeAoRel5RYl", "WMkUBPIChtF2gnH7", "TEuCJgkNndge689V"], "requestedRegions": ["NJlrDnYOzYD39r7c", "MMEVJcO3HYiab7dD", "l7aR7Mwza1lst8cf"], "teams": [{"parties": [{"partyID": "F4OOQSYFXqWyAJqL", "userIDs": ["q453RY4BO9m50i5Q", "yQMU7L1tlbXlvepy", "b74mtulvEAtuKleI"]}, {"partyID": "3RrwXEMLRHJCyXiU", "userIDs": ["0ShvnG63DHf6EN1d", "iqkJee0fBOAJqHAf", "nh9IEmX2DhSw2MdL"]}, {"partyID": "O5Mxw66SI9nTkvaQ", "userIDs": ["HHQXlKIxgmLL8fFh", "fLghTnZhUu1SZqth", "rPqgjv9DnFDsaAji"]}], "teamID": "8vMdtDEHXJat4MLq", "userIDs": ["CRvv6lsxnn7zZGyq", "1b7udSIZfoREfXyb", "5xkueaUklc3ozgbZ"]}, {"parties": [{"partyID": "ikOkS9y6IUmr7JVU", "userIDs": ["ouseW97WcmR1zoIk", "LfMOR5FtnchgraBC", "dPvADl97EFeTe2uc"]}, {"partyID": "jhChNkXJ6eVak7cj", "userIDs": ["0CfJ2PuSeRQHorvX", "bk5yGXQAdDPFccpl", "DEBxSqvr38afDExW"]}, {"partyID": "5nwVW73Pnhev2l1U", "userIDs": ["EiMzTcUARhA3yFzN", "yhJAgA4d0rp5z0yP", "cJ4LIoHB8k6YgqtB"]}], "teamID": "Zpv5QRD3w3M1otV9", "userIDs": ["6HVq2tzqNaeHhkDn", "WC5z7kof8gV3FhYQ", "2ZHlncFR5lifXX2e"]}, {"parties": [{"partyID": "SOzSEoS7uucA7Nqf", "userIDs": ["lqv2vmyaloYGKSCC", "OVys20gGPn6uol4u", "eLvSsRK19y9gM7Fa"]}, {"partyID": "f6VQzmzQ1doEzhX5", "userIDs": ["8rSed8qlKP3omVQF", "fzj6m9MqsMc71Nrc", "iRbYEoST0IJ6BgCn"]}, {"partyID": "XYHcrVgi7LJkveux", "userIDs": ["d2tIo3vUuRqWtoeb", "oE97eA6ScHapmfeY", "7vaZZaavG4cg7bir"]}], "teamID": "X3KOstGnMzLrCeDb", "userIDs": ["oDqvqjEBbCUBelsL", "Ge0vzJ5fzFDHdETh", "OL7r1RigrxbPMroZ"]}], "ticketIDs": ["e2aIs0BCT8Y69iIb", "WRtp0zFUEtzZHIS7", "nyAX7HDIk861OBVr"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 5}' \
    > test.out 2>&1
eval_tap $? 57 'PatchUpdateGameSession' test.out

#- 58 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'w8GFsQDSTsc7G7rA' \
    --body '{"backfillTicketID": "WslHXgq0e6r9RJq9"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateGameSessionBackfillTicketID' test.out

#- 59 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'L2itbeZ1Jc2WjcWd' \
    > test.out 2>&1
eval_tap $? 59 'GameSessionGenerateCode' test.out

#- 60 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'AD3buekdLNwkjoB2' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokeGameSessionCode' test.out

#- 61 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ts3iUAKWt9gMPoNZ' \
    --body '{"metadata": {"5DhfThDhwfja0jHg": "DRPmG46zOA3jQlxy", "EiDxVv8cLZX4M6Rx": "2cGOUmb30ZaxftNg", "1MOdOFC9VcVy1VKm": "mU6A1yBpdEB5KWj5"}, "platformID": "GRsl5qafAAWXAVaM", "userID": "uo0WkDTBonDUWgIs"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionInvite' test.out

#- 62 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'kNJbKNgV2uZPZaGM' \
    --body '{"password": "BcwG0vqYB0DkdBws"}' \
    > test.out 2>&1
eval_tap $? 62 'JoinGameSession' test.out

#- 63 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'zcOBD1k9IS8xGGXd' \
    --body '{"leaderID": "GgZ1z6EIXQLEwlRs"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromoteGameSessionLeader' test.out

#- 64 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '7D2fG58YGhssDFX5' \
    > test.out 2>&1
eval_tap $? 64 'LeaveGameSession' test.out

#- 65 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'DgSDicIuiQsB1hTL' \
    --namespace $AB_NAMESPACE \
    --sessionId 'yA1mA91kdqolVUjb' \
    > test.out 2>&1
eval_tap $? 65 'PublicKickGameSessionMember' test.out

#- 66 PublicGetGameSessionPassword
samples/cli/sample-apps Session publicGetGameSessionPassword \
    --namespace $AB_NAMESPACE \
    --sessionId 'hVco5oQrsylfjE3k' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetGameSessionPassword' test.out

#- 67 PublicUpdateGameSessionPassword
samples/cli/sample-apps Session publicUpdateGameSessionPassword \
    --namespace $AB_NAMESPACE \
    --sessionId 'nyfjA0NGj3GUdKN6' \
    --body '{"newPassword": "cfPEd7CmFuhp1kcA"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateGameSessionPassword' test.out

#- 68 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'ytyIkDxvD0fTwkiJ' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionReject' test.out

#- 69 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'ikAZscWbFpAq1noU' \
    > test.out 2>&1
eval_tap $? 69 'GetSessionServerSecret' test.out

#- 70 AppendTeamGameSession
eval_tap 0 70 'AppendTeamGameSession # SKIP deprecated' test.out

#- 71 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'fz1NSabFVQARzEEu' \
    --userId 'cKoUU8XyaN06mE43' \
    > test.out 2>&1
eval_tap $? 71 'PublicGameSessionCancel' test.out

#- 72 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "cuFbDkRQyW2XRRF9"}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyJoinCode' test.out

#- 73 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'WudOWx9uQSR0elXi' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetParty' test.out

#- 74 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'fVUGeV6EH8AZmvUS' \
    --body '{"attributes": {"fWPdfQMC0kAsot47": {}, "ft3RRlZVMokYpvDz": {}, "AnvFfPWlmCHHMuAW": {}}, "inactiveTimeout": 30, "inviteTimeout": 100, "joinability": "PASSWORD_PROTECTED", "maxPlayers": 51, "minPlayers": 81, "password": "etSplnb4PKpUgudu", "type": "P2P", "version": 34}' \
    > test.out 2>&1
eval_tap $? 74 'PublicUpdateParty' test.out

#- 75 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'M2f85kBI8HJXqTk4' \
    --body '{"attributes": {"HAJ1mvnR9vSQcyWQ": {}, "x4FSqJeqLfcXk3b4": {}, "Nic4AS2vDIzjg0in": {}}, "inactiveTimeout": 6, "inviteTimeout": 96, "joinability": "OPEN", "maxPlayers": 28, "minPlayers": 7, "password": "rUcYDFAwFQN2llDU", "type": "NONE", "version": 23}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPatchUpdateParty' test.out

#- 76 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'hRG5tteXMq5zUR59' \
    > test.out 2>&1
eval_tap $? 76 'PublicGeneratePartyCode' test.out

#- 77 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '4VXNhK4FfLCb2ooE' \
    > test.out 2>&1
eval_tap $? 77 'PublicRevokePartyCode' test.out

#- 78 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'alkyuU0nixcyulxn' \
    --body '{"metadata": {"iXyoRthM8VhJBU4B": "ijbpZMRD7iORSOrO", "ZwmLXU3l0wDpa6jR": "binnPIvfq1Uwd1Lr", "sbgv1xAT1m0HfYaf": "90Ne89Z5XFVyARb8"}, "platformID": "sRRoJgtDEabHrInK", "userID": "Cpwga4IuQPz9mS83"}' \
    > test.out 2>&1
eval_tap $? 78 'PublicPartyInvite' test.out

#- 79 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'omaDWjqacW2oR2A5' \
    --body '{"leaderID": "2dbfsLLSDPq5f5Pl"}' \
    > test.out 2>&1
eval_tap $? 79 'PublicPromotePartyLeader' test.out

#- 80 PublicGetPartyPassword
samples/cli/sample-apps Session publicGetPartyPassword \
    --namespace $AB_NAMESPACE \
    --partyId 'EY3bnQSlfz48cYHm' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetPartyPassword' test.out

#- 81 PublicUpdatePartyPassword
samples/cli/sample-apps Session publicUpdatePartyPassword \
    --namespace $AB_NAMESPACE \
    --partyId 'JCfgt02uMwIZ0jPh' \
    --body '{"newPassword": "r7BcM5uAf5uRntxa"}' \
    > test.out 2>&1
eval_tap $? 81 'PublicUpdatePartyPassword' test.out

#- 82 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'K8ZENE3BTf1OV9bD' \
    > test.out 2>&1
eval_tap $? 82 'PublicReadPartySessionStorage' test.out

#- 83 PublicUpdateInsertPartySessionStorage
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'pRSuudhkVyQXeiJJ' \
    --userId 'xRt8KqsWo2JKZ7sF' \
    --body '{"UTuWuR70Vpy2JIxB": {}, "lwB4jnS0evQZtSHx": {}, "jmMdWwZXlwW7gyOR": {}}' \
    > test.out 2>&1
eval_tap $? 83 'PublicUpdateInsertPartySessionStorage' test.out

#- 84 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'CqfmWJJdSBidpKHp' \
    --userId 'FhSZ9z23uGqkk7AQ' \
    --body '{"kvFkFAVfrdrn6ztu": {}, "afjIJHERj2Evi19U": {}, "Z1MesrUp9olbaLp9": {}}' \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 85 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'tlLDhAwgQ2nXBfIE' \
    --body '{"password": "tp40yGDDQkP1xxmC"}' \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyJoin' test.out

#- 86 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'yVTxB2hv4CXx0U1G' \
    > test.out 2>&1
eval_tap $? 86 'PublicPartyLeave' test.out

#- 87 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '0lHNH6aMxa0cZrG9' \
    > test.out 2>&1
eval_tap $? 87 'PublicPartyReject' test.out

#- 88 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'Rc5eS1vM6Qh1LSpd' \
    --userId 'nCklHV08RfWCk1xn' \
    > test.out 2>&1
eval_tap $? 88 'PublicPartyCancel' test.out

#- 89 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'L3TN7qDbEYdAbOUz' \
    --userId 'prpMDSKaVlNmCn0I' \
    > test.out 2>&1
eval_tap $? 89 'PublicPartyKick' test.out

#- 90 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"m69KpZUz20nxmhhu": {}, "jBbZFjnLZWayYHwG": {}, "1xvIpaaaltGaoWAR": {}}, "configurationName": "FcbBqpugpu83LB04", "inactiveTimeout": 47, "inviteTimeout": 89, "joinability": "CLOSED", "maxPlayers": 54, "members": [{"ID": "QCvbV66cAk29gj5n", "PlatformID": "fmUVj1fuu8WqyGOQ", "PlatformUserID": "mg4dCmKqBD1I7yPZ"}, {"ID": "0CkcaMPbkWzII1uO", "PlatformID": "ItiNsGCCioqSI3NL", "PlatformUserID": "nfiKAvgsZuATJMmX"}, {"ID": "lmFLkBCaTAdSyQQq", "PlatformID": "8LEMZ65ccknlWhqG", "PlatformUserID": "qRARRtODanYrLl2R"}], "minPlayers": 87, "password": "Q7afvmuSixlOvPAO", "textChat": true, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 90 'PublicCreateParty' test.out

#- 91 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 91 'PublicGetRecentPlayer' test.out

#- 92 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 92 'PublicGetRecentTeamPlayer' test.out

#- 93 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'HgtjPf3hKORsldCi' \
    --body '{"7Wur4sHDeGFtwuMb": {}, "XJL6HVfB2YbKjniD": {}, "ZbnB4e3HWcNB8t5F": {}}' \
    > test.out 2>&1
eval_tap $? 93 'PublicUpdateInsertSessionStorageLeader' test.out

#- 94 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'RU6WzxDJcvSu5eBi' \
    --userId 'rxairRveVHzD0Ijq' \
    --body '{"K9WxUNOba41ijbGY": {}, "ujcza5lCXTRwaKdn": {}, "fSIXHtT1HQoTaIDV": {}}' \
    > test.out 2>&1
eval_tap $? 94 'PublicUpdateInsertSessionStorage' test.out

#- 95 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["FntDUN0fmM5bskg4", "UxVY6HkvvimYoFs6", "Zaf8cPBPOETlIRI0"]}' \
    > test.out 2>&1
eval_tap $? 95 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 96 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'PublicGetPlayerAttributes' test.out

#- 97 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "FQZ5FofddczzBCxa", "data": {"vF9yuj0nFIpmNPmo": {}, "DgReTcHREXeFnQy9": {}, "0SrDKznH9V6p03pi": {}}, "platforms": [{"name": "e1WHNhyzuHpN2JH2", "userID": "ZqHVljn6T1wG9DXW"}, {"name": "YKbKFjkIBjM1nj59", "userID": "ngaD5emn3RadBZ23"}, {"name": "BSyPxrQhYma31Blz", "userID": "x3V7QJ86o0Khnzyo"}], "roles": ["w5hR5V5DhOFz5bEM", "sxcsOHAUzwlCrMGx", "enoKxghfgMTG18V7"], "simultaneousPlatform": "RJiwqMjCW1eGRrgx"}' \
    > test.out 2>&1
eval_tap $? 97 'PublicStorePlayerAttributes' test.out

#- 98 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'PublicDeletePlayerAttributes' test.out

#- 99 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'f2FqEE884nzrIDyi' \
    --orderBy '9uMW5qtOQJctcjUB' \
    --status 'zd6ZOmUtEOulOPyS' \
    > test.out 2>&1
eval_tap $? 99 'PublicQueryMyGameSessions' test.out

#- 100 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'CCLevzU8s5SWrfEL' \
    --orderBy 'sBz9E1H7vMcPDfVg' \
    --status 'RXmAC4Ab7qm7MTMP' \
    > test.out 2>&1
eval_tap $? 100 'PublicQueryMyParties' test.out

#- 101 PublicReplaceSessionStorageLeaderV2
samples/cli/sample-apps Session publicReplaceSessionStorageLeaderV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 'cRvfiJfgRawgQCpJ' \
    --body '{"1JhY01CDX8BDAchd": {}, "Paet1xsJHZGjNTpH": {}, "aATbRSdzcM6NlNWI": {}}' \
    > test.out 2>&1
eval_tap $? 101 'PublicReplaceSessionStorageLeaderV2' test.out

#- 102 PublicUpdateInsertSessionStorageLeaderV2
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeaderV2 \
    --namespace $AB_NAMESPACE \
    --sessionId '4uIMCJH9e7MCjYl5' \
    --body '{"fgFu0e1T80BlgIVJ": {}, "TpqQFuZHaNo2GFyp": {}, "bQoBv3ZnbcP7Cw7f": {}}' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdateInsertSessionStorageLeaderV2' test.out

#- 103 PublicReplaceSessionStorageUserV2
samples/cli/sample-apps Session publicReplaceSessionStorageUserV2 \
    --namespace $AB_NAMESPACE \
    --sessionId '9wlYN1UaXNhYPTXg' \
    --userId 'JhnLhquccq8Loq8R' \
    --body '{"Q3D5BteZXKOTeKz1": {}, "P4D9E8N9fUrofeZy": {}, "9dEHWm2sWaYcHZdf": {}}' \
    > test.out 2>&1
eval_tap $? 103 'PublicReplaceSessionStorageUserV2' test.out

#- 104 PublicUpdateInsertSessionStorageUserV2
samples/cli/sample-apps Session publicUpdateInsertSessionStorageUserV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 'bKYrTXIuQvFoRdaR' \
    --userId 'QOp4HxTNSGAr9mUn' \
    --body '{"xFZQV31zn3fS71UF": {}, "qZhimtBMtmAI9a7m": {}, "tV7oaN9O2mRrfi2A": {}}' \
    > test.out 2>&1
eval_tap $? 104 'PublicUpdateInsertSessionStorageUserV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE