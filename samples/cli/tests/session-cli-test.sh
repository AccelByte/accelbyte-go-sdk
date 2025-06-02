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
    --body '{"logLevel": "fatal"}' \
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
    --body '{"metricExcludedNamespaces": ["cRKGTXftNDvEaqDi", "hVM5MAk1pgZ2rwaT", "CVT5BoDkTGqdENFE"], "regionRetryMapping": {"vsZsK4doJapAZYzR": ["RNKnUNRbO5NubSV1", "U89BpNz4x4CQOApP", "i2wCz6on9teW8q3M"], "M9G88vryx7hXQI47": ["5ztvFIdVceUa2MwU", "n5zfyVieR1W1wkQW", "Ob0XsQJYQ7La1kj9"], "0XR2Tn2kwcsQgIua": ["u4GPfMburkXFlNY9", "5Rj69DqDJKenlmxk", "5FS0bTLRUKodLSPS"]}, "regionURLMapping": ["ASbxQWWjrgBL9gDr", "Em1tcX5edASifjJX", "alKHIYMBOVmrRKZx"], "testGameMode": "tJ4kBzpDHJIiSKRq", "testRegionURLMapping": ["9cbueuqqkv29eAo8", "BO8ovKofAg8CduWV", "OligJBawyQRuu7zC"], "testTargetUserIDs": ["Lw2bhHC9ZNLDRY7f", "jRAfo2krbZ1FoWK0", "hcpJrhL6UjUOrQZS"]}' \
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
    --body '{"durationDays": 76}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 51}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "KICK", "KICK"], "PSNServiceLabel": 57, "PSNSupportedPlatforms": ["WGW0ZGCYGl4QEnhu", "q3cPcXgHHIKrSfzV", "OryFdCfxtULm6Idb"], "SessionTitle": "MDMBkf8HU7Rnwumz", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "pybRp1Zv5lfiFlj1", "XboxServiceConfigID": "lQuKLGRBYoUcSpCu", "XboxSessionTemplateName": "xYw1SPcs2nnFKM3P", "XboxTitleID": "W5i2t7ZRuym8Iv4u", "localizedSessionName": {"29uMrhPRhhSQz80o": {}, "PR5aZmwSQwj18mol": {}, "UcNUr456ksVfRPz0": {}}}, "PSNBaseUrl": "xbVW6JJotYpEEeEX", "amsClaimTimeoutMinutes": 72, "appName": "AJE1bV5C3UCKxMoR", "asyncProcessDSRequest": {"async": false, "timeout": 4}, "attributes": {"jVXzyfxMgUeZilWl": {}, "TLb4kefp6hB0XWiv": {}, "eNd8byhRtw6qn17O": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "4lCVspq8eAx2XKgZ", "customURLGRPC": "5Mi5oCNVHZZdaB60", "deployment": "cm9HONOMJxWHoayP", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "p2sWL8XUxL64yNiT", "enableSecret": true, "fallbackClaimKeys": ["JZLL0SKieaiKuUCF", "PCU2GhxIRYnDilex", "538GA6ttiVAHaZRL"], "grpcSessionConfig": {"appName": "ToyZLmENLa7zE26A", "customURL": "U0lOaL2OL5yvvr6F", "functionFlag": 41}, "immutableStorage": false, "inactiveTimeout": 9, "inviteTimeout": 88, "joinability": "Ak8sBBtADPd7Oked", "leaderElectionGracePeriod": 41, "manualRejoin": true, "maxActiveSessions": 37, "maxPlayers": 2, "minPlayers": 83, "name": "wRZIHHBvNEIXEb20", "persistent": false, "preferredClaimKeys": ["42ob3NSwL5rtsl3Y", "8aaw4TaNwXAiFvxa", "KhN9NL1NxST76wj2"], "requestedRegions": ["CYZt5A5j2XlDjcbp", "ZCoiNmYJZ8nznUXu", "VBfZ5civRiHJsIjY"], "textChat": true, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 66, "type": "B0FhATcxjanfWm70"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --name '09lRKtA06RqoMHGl' \
    --offset '77' \
    --order 'bQvY2RFzCx5CcQfs' \
    --orderBy 'TTdmTEhqTOjNNu8e' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'Rl46z75SLgbyqumj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'd3Pca7563hehJjki' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "KICK", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 75, "PSNSupportedPlatforms": ["jgjcElknOkFuvJBY", "vk3xuRdxL8mgQDAA", "obAcLFmA3ppPTTQZ"], "SessionTitle": "SqVqiuSsWWon1sJX", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "0esRgeRf5l5hYUvd", "XboxServiceConfigID": "3osr7RzwdKbX4qsO", "XboxSessionTemplateName": "i5LhchbZScPpjVeU", "XboxTitleID": "rWB1TqDhKhFZM7rw", "localizedSessionName": {"NE0M0nbMyDlCnfzG": {}, "9HsT5brhgWdaCoka": {}, "HFAfchvWPEc5lENd": {}}}, "PSNBaseUrl": "GPjL0M1ho8Q8e30V", "amsClaimTimeoutMinutes": 37, "appName": "Vfai5N3MsYonKvU6", "asyncProcessDSRequest": {"async": false, "timeout": 16}, "attributes": {"LqreO6VC3O8axKQH": {}, "885iRv6snmAw5vdM": {}, "6vNX20v0fotxbGko": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "tltlVHoIuotgBrSk", "customURLGRPC": "hTlHrXcd7yDNdGzh", "deployment": "o5ZOi16xXSjdhBkk", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "OfHg292WLHCkBYIb", "enableSecret": false, "fallbackClaimKeys": ["pmKubE7NhHFdFGuR", "Gj7PbFfiKtG1MzBT", "kdg4Xo3WbdJhwww6"], "grpcSessionConfig": {"appName": "6xxO1ajc6b3oy7Ab", "customURL": "oAVM9Tk38E7HED0g", "functionFlag": 86}, "immutableStorage": true, "inactiveTimeout": 64, "inviteTimeout": 40, "joinability": "V9ejIpuAjwy4dZ0q", "leaderElectionGracePeriod": 25, "manualRejoin": true, "maxActiveSessions": 13, "maxPlayers": 3, "minPlayers": 14, "name": "lshewEoodRfKi6s7", "persistent": true, "preferredClaimKeys": ["xYosRS6AFjuCkFy1", "7IKpe6qHnvCpVwjf", "JR6aGK23nKs75CTO"], "requestedRegions": ["HPzLCE0QoC2pc2V5", "U2Pcm2clKR60UJB8", "9I5QRM9jcm99V9zT"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "ttlHours": 47, "type": "SxcyfY0HjU9X4VPr"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'HTpx1B5x8KApfXJp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'DFAHLX4UldAkhTwy' \
    --namespace $AB_NAMESPACE \
    --userId 'yfhezjbH0ILMZNHM' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'BIzASHLMFuZ2dlEE' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "kzgFCXGG6wsMWcKH"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'aEcPCOwhesEKTJgX' \
    --dsPodName '6LvXtGDI2yjS4OmT' \
    --fromTime 'VEEwt1UxUoiRZKtX' \
    --gameMode 'T5ZAo9xYqUsmdIwl' \
    --isPersistent 'tULk667VyROTezQ9' \
    --isSoftDeleted 'P9tKMn8iw5TFmxTe' \
    --joinability 'vM2kR06GjIZ4JHXj' \
    --limit '91' \
    --matchPool 'VBiBdW0jr3M9WpbP' \
    --memberID 'HNuzaRqB6Q4G35fL' \
    --offset '63' \
    --order 'veiLW6f80JiTXA5k' \
    --orderBy 'e1Rnbv7KPx73Reyl' \
    --sessionID 'lml1sCjMsISnAOrV' \
    --status 'PwgEqMzfuM7jVLq0' \
    --statusV2 'v47LaFKsICIUZRjK' \
    --toTime 'fxMLV1pkN9prqXF7' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"7IZHS0nniX5vQAAe": {}, "zW5TqwOBDtiO1NLp": {}, "3Gbej0DbNyoh9u4M": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["OWVjz8SAWzFUFRyM", "TQNrKYSiTDmS3Z9E", "DvvSAGdYEGsnfqNo"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId '1X419toBCcmMacK0' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'oCITChQNOcEPkTqQ' \
    --body '{"createdRegion": "yr0ZO8sAOQel2hGj", "deployment": "HGZEE7aVEs9KF8ww", "description": "uInFe4EWhdcMbgpq", "ip": "A5RWNOIpvWIOYT9f", "port": 66, "region": "7e4pJNjg6nvWP9pH", "serverId": "7ConFueHuLW61enj", "source": "dMhhCwsBllGN6N3C", "status": "oZiFLq7wReGKf1IA"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'Uqcm15VNqbQ5KmxI' \
    --namespace $AB_NAMESPACE \
    --sessionId 'HmY0Kj3ygNHRdHuK' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'OFqQ5E5SzpZQdvPt' \
    --namespace $AB_NAMESPACE \
    --sessionId 'xh7oi54FpPp0PZyl' \
    --statusType 'AHqYc7IP0NaL9aD3' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '30' \
    --order 'bcU93YgmN1Ep4brn' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --fromTime 'FWUkdMEVIQLLb2xh' \
    --isSoftDeleted 'TJPyd7nbg4rEcJNS' \
    --joinability 'qxxbnfD2GXGUeT6M' \
    --key 'c3NPjJijf2jLF1Cz' \
    --leaderID 'i7JGw2tS7Xsl0U9J' \
    --limit '53' \
    --memberID '1Lf0T5MCVt2ujfpK' \
    --memberStatus 'KShvQOMFAhNd9ZiM' \
    --offset '90' \
    --order 'KdE2tAviIbbJ8lyY' \
    --orderBy 'NRyNXHiGGFSptuIe' \
    --partyID 'e5PSRbVGBozedYzN' \
    --toTime 't1npCHVYz5wQQ9n9' \
    --value 'gOdAeUQEU5VH2dU4' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["NscWveqwFprxvs7q", "zgmvdtABnAE6kXrX", "rrCReUoSJ2zjkFNT"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'PrhKStfWAINJghog' \
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
    --body '{"psn": {"clientId": "FB6SplMYEPdDj6vs", "clientSecret": "I4Z2n1jbjgjQrvln", "scope": "AgWoEbFZz8OnR4Wm"}}' \
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
    --limit '96' \
    --userId 'PI3KkOdR9GmDryWo' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --userId 'wFXenTQHCfcTv8PI' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '4hnknctoee27sY6M' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'GFMca9HfLnh1RYHq' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'B8J8Yl06GOATEvnQ' \
    --userId 'd2X07bBx8SpkQ5lJ' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'yZCqAzcHeqKHEd4B' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '8wJWRZMtrFVazLwj' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'hK34R35BSlyrMHm9' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "3yaeL2sQGKfpQ1ml", "attributes": {"aasEFc4FZpRe1MNA": {}, "uHtFvjS1TFCLH3Er": {}, "N8k6kKFLanRd18kS": {}}, "autoJoin": true, "backfillTicketID": "1aq1DEqM4Ml5YE4k", "clientVersion": "wl0x3fvOeL4rILGY", "configurationName": "qqQzcYtIx2dqdG0k", "customURLGRPC": "oGIQRz8gtcVQzrTM", "deployment": "Od5wRS15G6dd2QYH", "dsSource": "9Muah0vYDZNrRqLK", "fallbackClaimKeys": ["XjWKK1nWqb921IzX", "wjXfsFVu03VzN3dx", "FnEgH7KjhsaiYh2M"], "inactiveTimeout": 53, "inviteTimeout": 33, "joinability": "5iNsPHFvTSW2k0pv", "matchPool": "ICPIYVZVmzDK8aPu", "maxPlayers": 54, "minPlayers": 24, "preferredClaimKeys": ["GvlhlU7nRavFabEp", "cGd9tsb3OwHowPCV", "Sht8whWllz86egbr"], "requestedRegions": ["m3hPa9L1ZR5ghY5C", "gr91elwYIU8GdAB5", "JgBQy1rEahfXS3K0"], "serverName": "uUF4gvOho1bMPOKT", "storage": {"leader": {"QTmLcElj5csABHCe": {}, "9RqhJmDWpXAOjVzM": {}, "ziIb3VgIa94SABLA": {}}}, "teams": [{"parties": [{"partyID": "ZEVqcxHumOQ6Haxf", "userIDs": ["2PQUtEvoTWlxNapB", "KHYrgzKjsuFVGpTa", "zubV5i7Vdelc8OMS"]}, {"partyID": "fk1oGIJGKMT2rlCn", "userIDs": ["6OMock6jbAaKHrQI", "8frnUKUgl2ef7Io2", "wfpjDxii1dOG6UO2"]}, {"partyID": "pdqUHrV3MfldYMPS", "userIDs": ["QkNmT9LlBAFrydCL", "LqghEdpF8xhVxELE", "mVDaVKOHHelaPpWh"]}], "teamID": "aeuAXgfduTO6SB3N", "userIDs": ["SLD3HFGd7lMKYz64", "KJLLfICfV81BGYdl", "XO8Uru5CRa92uThu"]}, {"parties": [{"partyID": "Pjrx3mDhx0WOsrv9", "userIDs": ["y5aof90VM19qzK87", "sZsPF07j0a6Wyyxf", "RyqoWZMur7YRMzJ6"]}, {"partyID": "90uym0ilG0IdBJIY", "userIDs": ["WctZ7MnqAZyLYrZ4", "MyxOHKwgPsfSVgfo", "ocuAb4MWZVrqNJZW"]}, {"partyID": "GuWBWWqCiRssOXHs", "userIDs": ["KhPNgx9C4GFv5s04", "DCwHoo3MDtqybLzz", "RaEc1UUPpQfLVMNS"]}], "teamID": "2iEnsqmnp4xMb4u5", "userIDs": ["myuSJztVaj7czzHX", "LOmefmuSJO7yCU2B", "EoIB1mCu608sAScl"]}, {"parties": [{"partyID": "hMHXSCBiINhYjJwR", "userIDs": ["wcxn6QzpJK17aIA7", "xW9pk2HRItrbJZZX", "C3dSHJwczsECFAsf"]}, {"partyID": "FQoJQeoA1o3rLmZG", "userIDs": ["0fVLyjuuRSJQy9cD", "4Mh5sB5TdTUXCcVw", "Jlu7iNyOpjQRh1gK"]}, {"partyID": "4Cs83lzenpLi7H7w", "userIDs": ["IMqCnkTwmePXhenn", "AA4xDkSH5ca7glFW", "uC4JohlO1Pka3Kk5"]}], "teamID": "5qXX9aXJ9Dte1Iuh", "userIDs": ["mZPnSZQyYAynczlx", "rXhyBlXyyXBtsWzL", "Qjd4mH70mqRbrtGa"]}], "textChat": true, "textChatMode": "NONE", "ticketIDs": ["rrk4lKFWelTgmUCg", "mLUTxd4FCR4AinlG", "z22LsuYnoTnMrCIL"], "tieTeamsSessionLifetime": true, "type": "O6iuTMikfOCUYk1i"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"C77SzlKQ8ZpeFzgP": {}, "tLlAXAFZyHPI0ZUZ": {}, "aqU7PF31IvRXNNr9": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MxIFdjA1bmwtCgtj"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'JHE6sN2Z5vXNncLL' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'FN9rUat45XNCJs0u' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ohffJuxyOOctAeTe' \
    --body '{"attributes": {"ZvAb8td5c4qBK9TN": {}, "btCcGTTP3ZZ2zOMO": {}, "21d7u10wDB3H29D5": {}}, "backfillTicketID": "TkIm3sm84iUGZBa7", "clientVersion": "1xh4diYtjpbuoiCl", "deployment": "yMtH3GnGb2uYuH70", "fallbackClaimKeys": ["KwCz3kqGZR3wGodc", "NOTbUn1rArljB2iF", "kXgCiUCV5UGc4fF0"], "inactiveTimeout": 89, "inviteTimeout": 5, "joinability": "pDNKfGPkaMXzWMhj", "matchPool": "wwohLUUIAiNheeCG", "maxPlayers": 7, "minPlayers": 88, "preferredClaimKeys": ["0v1n5bvJLLBcExZa", "JeD65HGTU7At3RFf", "ZBI1YhdWkQuTbUhx"], "requestedRegions": ["Yd8n8o1EeZAa5Mks", "gZRYgd6hDNR5ZhwM", "5gav1k45WurKnfS5"], "teams": [{"parties": [{"partyID": "VYDPR4T83mSWPLc8", "userIDs": ["9dV0wLzEi19trGUp", "SLia5moD8mRlJdCj", "eRX4ng0kQFMbgHn1"]}, {"partyID": "aglhdBuBzfHxcNm3", "userIDs": ["fKpopIKJVfwMmyTN", "42UesP5i7C1QkPTM", "BZZbLqxPPqc777Pv"]}, {"partyID": "9s27WpLs4DuyoEma", "userIDs": ["wWt3X3QM8jYnMjbT", "oVtiEW85jnyUGZdQ", "IduUKuPWDmsLoLkC"]}], "teamID": "tShvi9TOF4cHynYz", "userIDs": ["tVE0PMTW28DnPlTv", "bqjmWEkikTUeXnqF", "yKOxPpB9q6UfOdJM"]}, {"parties": [{"partyID": "2HNwNvqf3xw0XNsS", "userIDs": ["zXWMKA41rMWFlrWA", "3tFuz4SFQl4DW8dv", "aqAFbGZhMtLjpKME"]}, {"partyID": "kbQ27oiEm3K7igvq", "userIDs": ["2OboSgjuz4JwNUak", "Iv0QU9yIbP267Gb2", "b5aF1FmuXAogZKbQ"]}, {"partyID": "8KMqtTRvXoBQmQyX", "userIDs": ["hKHY5c7m7XkZCJXh", "7D3SY1R2galLkQ3h", "Thgh2qSoqM1mFEZ3"]}], "teamID": "7CaQ2X8flczYd9eb", "userIDs": ["G22it11lQuXbAX8z", "3ctDh25pRFJu15dC", "2KEe40IJ6EKklK36"]}, {"parties": [{"partyID": "cv39yVf27ngxP0Nm", "userIDs": ["SsJCKF7WqY1Ypkgq", "zwHDSQCYd1P3qJXY", "v1Mc7GJlSfIWr34y"]}, {"partyID": "PK9R3xFpU48CTT5K", "userIDs": ["GnjWGLXkOZmhu0pG", "YNU0ErHbCicUqZ4S", "ZW4ZddJecW8SH0pw"]}, {"partyID": "Dfd75YMYtDYQoFkp", "userIDs": ["nj1XMnjEz9ubwRBx", "rfEKEZoQgvhSUo7K", "DnoFlk2Ul6SkeUWe"]}], "teamID": "DJazzLBEwOwbeAfY", "userIDs": ["cn7A2SM6USGwmtrV", "3Z2cJIdnhRD40Ya5", "2DSRfWW1bI8AuCc5"]}], "ticketIDs": ["iW6bertGkzu9bA1g", "ZQDV3ze35BFrQehJ", "XJ45sJwJlu8IBhU1"], "tieTeamsSessionLifetime": true, "type": "34adCR7hAKUdUqlS", "version": 2}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'NEMz1Kkq21MWODaW' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'YKIeHeLuELrOCxcF' \
    --body '{"attributes": {"X9LxRrow8AfmBB49": {}, "sfnFhzePjUoAhYnz": {}, "UJ12UrxQDrZEuyfp": {}}, "backfillTicketID": "UkIeR1ohEbKxvA7H", "clientVersion": "hsYXoksfSoZxHDIo", "deployment": "iiSnw3DYSUG7MKEI", "fallbackClaimKeys": ["f6Y52BYAhTb8Jees", "OwziDiegiHJPYtve", "9vsGfPHn3HOf6ojQ"], "inactiveTimeout": 98, "inviteTimeout": 67, "joinability": "6jfJwzpxuOsvZ1g7", "matchPool": "eaSBZ9BZS7CfNV9g", "maxPlayers": 46, "minPlayers": 9, "preferredClaimKeys": ["9adIOLC96LQoDlqE", "fun7fVXbfktzKHWI", "Ssi9eV1AwQTcNlxE"], "requestedRegions": ["opxu98rP1K4kZW0F", "wuqkoctrekAEJPar", "5CFYIGNaRKozWHSt"], "teams": [{"parties": [{"partyID": "BiFGjLiPBl8pZo22", "userIDs": ["JvNtZo18vJppnZa2", "Z5yzv60sCT3in4LR", "ObIY3Gs2dPdWJHGs"]}, {"partyID": "hm9WgoNhILCPhHuB", "userIDs": ["O6E8JxHxSWfyFm19", "XIr0cveGdJMvy4KS", "0O6omaAbDNgPE8fk"]}, {"partyID": "31zhUnzhDR0O0ZyG", "userIDs": ["viwReJAg0voOABIa", "2kDXEfNxJKZqMrhM", "vFZlDYcwrIQHFcfx"]}], "teamID": "UwKzyJJyoXH0UgJ1", "userIDs": ["bdgUbkHJKgmOC3jK", "wzAYDo9cj0k1znLU", "rnLlAKIPJjeUqihA"]}, {"parties": [{"partyID": "Szezlp5vE2Yy1WL6", "userIDs": ["LX5p79PUnCzZRFHJ", "2PnMfKgf74LZR0Bu", "wcRW52btcm9bEHQR"]}, {"partyID": "y7wEUeTug5gS82N0", "userIDs": ["Toqn0i7O59yhM8bz", "q2f83w2z7VxKGNBM", "VJ5cZ9fHXadchVIj"]}, {"partyID": "AhCyXa8E2RY57KGt", "userIDs": ["iYutvCIbCzinhnyF", "NKCwgiK76d12m0k3", "yYCWVq9WWm54dSyb"]}], "teamID": "R12NuR7TAhxtS2N0", "userIDs": ["1J2eTko5EPKX4CQH", "EKlaQ1wgNGRaQ6NW", "fn8e3foAjL8Al0Aa"]}, {"parties": [{"partyID": "DCkxGcX6En7OQcmP", "userIDs": ["SY1hzEX4QtXFi8qx", "IMGapJpCuz3TZyNJ", "olYziN5E3XaqWxR8"]}, {"partyID": "TuTq0sE7oIKkatlF", "userIDs": ["W2dEnZvch6C7DlpG", "ig0AYvCRNsTZ5J6y", "G7FRl0KHjwIygEls"]}, {"partyID": "dMffikJKCfh8Hvus", "userIDs": ["MAHJIVoYljrT3oNR", "V8HlQ8CZZLQfsFlD", "3K7sxB1GHIIPHxyt"]}], "teamID": "owofv7M7Ab3Dl27j", "userIDs": ["yBXt6BEtlYRcj0M1", "zDaA3Mes4kfVpT6n", "7irtnHh8N1TV0xoo"]}], "ticketIDs": ["d0E4ihLkN6lPOuFe", "JFA6UITvaIXGZMvu", "yc1xJ4PKLhaDU1O6"], "tieTeamsSessionLifetime": false, "type": "SuBUQAlGNUMZ8iXU", "version": 17}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId '7TZCl3fuJLMFdOAT' \
    --body '{"backfillTicketID": "fmSVpeW7WxXpvjGV"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '9jIk0SquS4doksQ0' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'nW3zwQcs18OgcqBq' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'velJk6sa9K72jxrN' \
    --body '{"metadata": {"IKllmdpO40TvKsGx": "q09V6kvW3Nox2fIz", "ILkRJD7EaezsZnTD": "ifkzNVLAJntirIk4", "V2991xeIeEr4EfoO": "hXSwptociVV9tjJg"}, "platformID": "75F8efPka0fSGiBW", "userID": "ie31uKJJ9CWOWu5T"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '7tgpxdav4xIGlwcn' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'I5bcl8qjAkNy9ydR' \
    --body '{"leaderID": "cN7DxXwAsePYXWI7"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '0UFZlIMvrddnMhRb' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'LxkriAajun0IG2OB' \
    --namespace $AB_NAMESPACE \
    --sessionId '68W3roikHzmSJA7r' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '0ODntCYksuMowbzG' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'YkBXLIGRaWyMs0u5' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'iROXCSQ7e3n4N0IT' \
    --userId 'J4NENrkVZKuXB1FJ' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "FkFPy1Q6x8unksGS"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'tKF51ZXH3PsoHBWM' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'GIyrtpeouhznR2gr' \
    --body '{"attributes": {"02iRMiJiC2xm3xkV": {}, "wBS5o7yQVuT9jZF8": {}, "xDAI1VHnQJuC5g1k": {}}, "inactiveTimeout": 4, "inviteTimeout": 78, "joinability": "pJWPRSRHV2bFat1n", "maxPlayers": 40, "minPlayers": 83, "type": "MzRyp74mNj3D645B", "version": 26}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '0Ue1ly107spkSo3t' \
    --body '{"attributes": {"ECTK0bJ2rBgMcMTm": {}, "Ams0lvKiWo3WlYHU": {}, "Z9zFX3bCFA0u6FbZ": {}}, "inactiveTimeout": 66, "inviteTimeout": 10, "joinability": "09NWjrvMBrunBiYx", "maxPlayers": 25, "minPlayers": 87, "type": "RDTdQnGSAJxyOrqB", "version": 70}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'vgjVWHfMGDlFKYNl' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'sWCvqi84wcAzPL2V' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'X1HP7vUbFZ886CQh' \
    --body '{"metadata": {"obCRVcneJhFBVkJh": "ORCd4jU0LoHuqYqG", "aa70ilVvj8XN9mHG": "Rfo8ssHgBrE6GfoZ", "8g1lv9S7cuGTll6k": "aOmTmmYNKxNDzNvA"}, "platformID": "o9s1ZDVXsVYQkzBP", "userID": "ItMQ1VLivGNEd6Hj"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'T9NklgHCT4pcYPsU' \
    --body '{"leaderID": "iMeGQfZEdJoQfTVu"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '9ZjF29xhCgJjq1eF' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId '8ooI2K7IgGvtXfoN' \
    --userId 'kyGDpz5RtzpnjSoP' \
    --body '{"w4ku3dkWkNIgXO1v": {}, "wtjqJdcKb6RU9d9n": {}, "Rogz1VzBbCFU1MVa": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'sPKmrKSOTTjpdEqo' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '0APUi8IknWrhxqGa' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'ENlq1OJWGX1wTEY6' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'eSnUhMWrr7ayGK9C' \
    --userId 'JK2mOvBcPOm0IofT' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'jXguQvXmHsl26Y3j' \
    --userId 'VuCurJKawMbuIWtH' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"gUQ3G8IFdH7zmmL4": {}, "9dMKNvsCDB8gLLDf": {}, "Di21UrW4xWnI0VBY": {}}, "configurationName": "zRWeWUC7IFynVjVg", "inactiveTimeout": 18, "inviteTimeout": 74, "joinability": "asEFdidL2PbmdqGX", "maxPlayers": 77, "members": [{"ID": "uFnqbbzR8OrO4hyx", "PlatformID": "xeqLZjWDNB6s7U1f", "PlatformUserID": "Q8mXdvG8GHNYV6U1"}, {"ID": "IwYb0EuHzt7W04MN", "PlatformID": "z75EtcPOnfJGhhqI", "PlatformUserID": "4eDqHnQ9L0pZN2FZ"}, {"ID": "Kd1HSFWGNlsvjdDo", "PlatformID": "xYAa9YeDT28YpIYL", "PlatformUserID": "aoB3fXPZ7inpjSsJ"}], "minPlayers": 8, "textChat": true, "type": "veNzijF3bq1g7c12"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'vwuKMvwxSSkW56Cg' \
    --body '{"nMwbxs34JtXEtQss": {}, "huAieDP08wgczB7q": {}, "BVTRY296qZtAFDPs": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'ItLtLkSvBjZdpuFo' \
    --userId 'PvJUMFDe25pbpQ2n' \
    --body '{"iteMljP3re1snaG7": {}, "rnPeFBRiQuOVleLe": {}, "NxL6EGeRqsOrmwSg": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["VeSqljWx63WRdLas", "Ker0nclzy6sfI9u3", "Hv1OcPZvcvDJK2F9"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "eojHlmMHC59C8Ydd", "data": {"xSDrmJP3dLslumTd": {}, "SEliwAtt4RV9yjt4": {}, "ovxtDBmm9jMv5k28": {}}, "platforms": [{"name": "4ZFk2WowNBPLo9tx", "userID": "tgdc0CR1xK4rttRV"}, {"name": "kZ2hKl35Y8hSX81S", "userID": "3x1E5EvWVl2qECy9"}, {"name": "qIJHH3rLQkd8FJ64", "userID": "MmJ2rcIDuLRxYu2J"}], "roles": ["RHj07WE98odH0UFW", "OBnDkY9eyq8oNNr6", "dCn3ET7cJ5TdAXhO"], "simultaneousPlatform": "9X7LQ2xpmnJgyQaG"}' \
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
    --order 'CelI36Gt3HXiHf2Y' \
    --orderBy '99gS3THNQupxMNgJ' \
    --status 'IG9R4XoH1nAjTOiR' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '7LwSKGzvSN0AjiDl' \
    --orderBy 'gDYKgDoYddLNZArY' \
    --status 'nwU6F2c7WAPOo470' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE