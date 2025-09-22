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
    --body '{"logLevel": "trace"}' \
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
    --body '{"metricExcludedNamespaces": ["4FExj1DXTJW2ZW4R", "qlctTIZ1TvsgomXp", "W9xPBkTTiwsapnYl"], "regionRetryMapping": {"CIcImOvWc1WL0YxL": ["1blKGCkELDcXrHVW", "dsk1Kjxap57iY1Dk", "P8n8h7zF6epkEOeL"], "vW5ly89pHizH8hJt": ["ADOWgg8iiHSCiUrg", "CO7KauMuju0R7tF7", "4kTmzsrBvqV3fr13"], "7q15ChfkIuthqm2O": ["nNLRjaTyL9ZJQy6m", "1wTtQXU5BpSURJ9R", "WPu80aZdX9muiU5X"]}, "regionURLMapping": ["lLY4AmNrKPgjUXa4", "vpOVydp6RLY5xWEf", "1CTKAxv5aWvEpK75"], "testGameMode": "XcIbbobGoX7RZ69h", "testRegionURLMapping": ["qQgxJfcWNspm49FI", "I8DQBXvuJPLw3xNA", "RuixOE9KGKSTSP9a"], "testTargetUserIDs": ["DgfOCLmFZdTHc5bu", "FnnlHQ8u8CBtDna3", "TRj1RuUumeEyT22N"]}' \
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
    --body '{"durationDays": 85}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 9}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 70, "PSNSupportedPlatforms": ["Zw2OlUqggGzw04lJ", "cyCaEnwltPSowsBP", "kjTEQI0cnkT7pqSj"], "SessionTitle": "CLFu2jx8WryUoS1c", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "n23jfWDvMiU6wJI4", "XboxServiceConfigID": "pknQUjcihvsjItRC", "XboxSessionTemplateName": "jOzOcFqPtoU9Ll0Q", "XboxTitleID": "N2RjGysSuFIqqsDb", "localizedSessionName": {"ZU6VY7BT7p74pcaQ": {}, "72ctR2bxwhtGXY8Q": {}, "RfVE6xV2ymhK49B8": {}}}, "PSNBaseUrl": "5aAQTe8DZUGMDmRQ", "amsClaimTimeoutMinutes": 83, "appName": "KDMKQENZ87vSpRPh", "asyncProcessDSRequest": {"async": true, "timeout": 34}, "attributes": {"0kk3EnrEyKYWIJlq": {}, "8Gb04o2VH8ZU5K5P": {}, "uoMpxt6V7WS94uv4": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "hzdviWMsndmRhlBi", "customURLGRPC": "6rr8uDmwleQCE6PP", "deployment": "KvwcOU4PFaPTQBel", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "aWgDmR5pKqtvswOH", "enableSecret": true, "fallbackClaimKeys": ["BKVr1uY8rMu8PKb8", "TduUHyfRjWkE5brN", "25X8mfRB42Uk3BeA"], "grpcSessionConfig": {"appName": "S9PGrwErSxq8iRJw", "customURL": "s2bMbPDhrtRwPIw6", "functionFlag": 39}, "immutableStorage": true, "inactiveTimeout": 89, "inviteTimeout": 66, "joinability": "OPEN", "leaderElectionGracePeriod": 59, "manualRejoin": false, "maxActiveSessions": 16, "maxPlayers": 18, "minPlayers": 57, "name": "yF1J2xKZ8HpenPND", "partyCodeLength": 60, "persistent": true, "preferredClaimKeys": ["Eofe9ciDz4aBNGdg", "wC7X5sWlsXnCycap", "KCFvXKnuDm8QWsuk"], "requestedRegions": ["87UpS6GyUaOF7WiL", "YUwV6v4YtRH2fOh1", "dG3hQyDs7KYv1xwL"], "textChat": true, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 1, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --name 'BOSQWMs3jysuo8Ob' \
    --offset '36' \
    --order '8P3VQgQbYqpWrcDU' \
    --orderBy '8P7OeGfNcjxAR6kS' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'bPLG4DVKWWM341f8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '6293HiTkNSjTrLx5' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 37, "PSNSupportedPlatforms": ["ogIyPAHuii0k13Ps", "sEaPCLwbdlskCFym", "NMRJHfi8l0w3OTFS"], "SessionTitle": "Sx4rLZUcTPCE1wLQ", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "4tuHyzuaNSKJlx5l", "XboxServiceConfigID": "GY2vL7vCpg9v0yuz", "XboxSessionTemplateName": "CZ4QQwA4FizszheN", "XboxTitleID": "l1SJQn7LfauKJ2Vx", "localizedSessionName": {"a75eAgOime6BDQTZ": {}, "kYtgSZmWHVBluXzr": {}, "NEi24uSDib7qRHwF": {}}}, "PSNBaseUrl": "czenJOr0A7GVaJe1", "amsClaimTimeoutMinutes": 77, "appName": "cfRlUTYWJbmtzdS1", "asyncProcessDSRequest": {"async": true, "timeout": 13}, "attributes": {"SEWGdtx9poqWqVSV": {}, "uQoTpg4SFZbAHxD4": {}, "VPXXr7AxbTZJbHNg": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "XZHPxYJ8kBaj3OSd", "customURLGRPC": "BuqJAkHiARgxzgZl", "deployment": "wW9EBUd4gTQYkiBh", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "PVQ7MvjRSsjNSVzX", "enableSecret": false, "fallbackClaimKeys": ["KYJgGS2BvJiJuODA", "eVrtbmn9pYmJokfg", "vm3J8uQupgwIqgs4"], "grpcSessionConfig": {"appName": "tarQQFNPnVUxpUcT", "customURL": "fNFyiERJfEEUNAoY", "functionFlag": 39}, "immutableStorage": false, "inactiveTimeout": 31, "inviteTimeout": 78, "joinability": "FRIENDS_OF_MEMBERS", "leaderElectionGracePeriod": 38, "manualRejoin": true, "maxActiveSessions": 77, "maxPlayers": 77, "minPlayers": 77, "name": "gEyQv7bQcSOPH8Rg", "partyCodeLength": 73, "persistent": false, "preferredClaimKeys": ["ITCseyItgJemmonm", "7iXvQgQW8ImPHWJZ", "wJi5rKS0yNEUSOl6"], "requestedRegions": ["6Al1HS65TPwcp1fg", "PuPDSJQinUd5LkLp", "OvTuyyeZDG1awcz7"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "ttlHours": 24, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '92zZBFNjlcJawi0E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'wiEzubKQ88RYAHTU' \
    --namespace $AB_NAMESPACE \
    --userId 'mFvnE45zUoDJrNoO' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'ZWjOvrekWYHmOJSO' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "8v8BBc6q3LJvpX5f"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '1Hu9ikCVUUbWHcJs' \
    --dsPodName 'HqchhhbQgN9zM1gb' \
    --fromTime 'YYCUL6Qq5jbkgChS' \
    --gameMode 'SAQqcJrsPH2jcFE5' \
    --isPersistent 'e5jaMa6RoSIPL4Qf' \
    --isSoftDeleted '2wk5kVgAUT5EWVJ6' \
    --joinability 'CLOSED' \
    --limit '19' \
    --matchPool 'pahev9y8EKKGsvUz' \
    --memberID '0qInm32q2UX2IcZr' \
    --offset '50' \
    --order 'LUO1RdvDA1RzXZ78' \
    --orderBy 'mecxBKhZMjJazT9U' \
    --sessionID 'HMw524xR4Szh6AVJ' \
    --status 'AVAILABLE' \
    --statusV2 'NEED_TO_REQUEST' \
    --toTime 'hM1qFmJA1shXSDLs' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"nDQ2JZZ7TQh1h7ZA": {}, "eqsM7PT7U1t1vhQq": {}, "Vw84jRcpEv6GicvX": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["ry0tU4wmw4IW2qyB", "QxxjnS0RaFCUPWaB", "KiXkia8LRjrCrxa4"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'HrvLcICCrAvlm73o' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'Lsl68FOHnBBItQPH' \
    --body '{"createdRegion": "QiaXoJFM3CMtPKeh", "deployment": "3tn4EvyIi2mNLsp2", "description": "zLulNIJCvBE5bPCo", "ip": "q9RuYXD28HO7oyPY", "port": 13, "region": "qbKDUMQSMYlggKaY", "serverId": "nMArVFJ2VEkiOVRa", "source": "OfOK7WMF4z29GgfV", "status": "1n1xKq54WCofeFYl"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'XjIb8X1FiMK112Vf' \
    --namespace $AB_NAMESPACE \
    --sessionId 'IBON3cOpILxKuVya' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '7b9IIdRGq3XeVBDh' \
    --namespace $AB_NAMESPACE \
    --sessionId 'p5Nt6XLBPfRtqmLb' \
    --statusType 'VpQ3BiOqdp62UOxa' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '92' \
    --order 'GRLqJRRWcbTPY2FS' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'RIC9kiDGy1urirS8' \
    --fromTime '3pf0bxkvq9ZXkS0L' \
    --isSoftDeleted '38by7Tkbws3UVeMJ' \
    --joinability 'OPEN' \
    --key 'GxLEEN11BgqE6epx' \
    --leaderID 'ulk6Ev4KXdR984Ai' \
    --limit '82' \
    --memberID 'VU2bu3iCqEiUQPUZ' \
    --memberStatus 'INVITED' \
    --offset '14' \
    --order 'VJh1z9lvXMDqhXGv' \
    --orderBy '63sCmCjn40ZWyoVw' \
    --partyID 'rCIHek2XqIC89g4z' \
    --toTime 'V1T0WLTws6tukufk' \
    --value 'sc40J9svLUSxV2jG' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["XruU1K6H7Ssc4usJ", "GHqgEhnAvH5T3aY4", "CArGHMM4npcTNxxp"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '85EcSEqJ9jJLlOdA' \
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
    --body '{"psn": {"clientId": "Jfh2JVjWkzTPN1IK", "clientSecret": "fumv8q3SJFVkcNDl", "scope": "bhok8yFhyxLflSyt"}}' \
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
    --limit '79' \
    --userId '2vy2CDjIZ9hLwzSo' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --userId 'Dpd0qPc5r7Z10ENB' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'd67cVCPhxbr44w7S' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'rHSi8DmXVmeOsxS8' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'ezYaXK0Y7ZH2Tc0A' \
    --userId 'XG4cRSgem3iUJoEg' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'AESnDVEMKwLwU5eG' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'gMoMRbYTkbCkcvDG' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'bo2JHAZeIguj26wT' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "2ngWv4BXfFGpDVda", "attributes": {"7rDcZoOG1gmAqFFj": {}, "YeP7B6LOtOnRL57K": {}, "7XsTfvMdriGe12t2": {}}, "autoJoin": true, "backfillTicketID": "ZAIB9YnJuvnL6cEq", "clientVersion": "9pjPwV3pgNUaKkQn", "configurationName": "zilnRsHNxYOwvQEn", "customURLGRPC": "4VqzbDY6dNeEQRwG", "deployment": "WhS9bAt8JiS2TYXz", "dsSource": "P3IKYbQJPL3pEUmh", "fallbackClaimKeys": ["2hDr4t5MKVVgZhT2", "ABaPEGRgT1kVik6x", "XoqYQyns8dOvSnac"], "inactiveTimeout": 28, "inviteTimeout": 68, "joinability": "CLOSED", "matchPool": "IuUVL6JukHFMzbLl", "maxPlayers": 17, "minPlayers": 18, "preferredClaimKeys": ["xgyMV5tIl2ZMkyOf", "0EiripPNdRPfNxPX", "WlXgtVwpQ3nRVVDp"], "requestedRegions": ["d6vKIS9qYt4WiIZn", "akhV8FkQqgUcBSls", "4NdcqTBn4UkBNyMM"], "serverName": "Qf2JTHxnbOBd3mZD", "storage": {"leader": {"xG5F2QzQ7MBRjBU9": {}, "Ii971TvmD6Mgqkvp": {}, "pB6HpCalS73YS4qZ": {}}}, "teams": [{"parties": [{"partyID": "tYKlemagcNjYQrE9", "userIDs": ["iavbHZ3Z2rW4SIp8", "PxtMeXKDCIXubSrJ", "vAhwrKLLHfYXVEHF"]}, {"partyID": "4GdRRngEirunTaXY", "userIDs": ["PNN70OtUND9l3ohj", "2uQskCOxHreIHXKk", "0bfBLdxU6w9zbUHo"]}, {"partyID": "LbCsXFatDmTGBoiB", "userIDs": ["cbXrgUeo41KaGEov", "X1kEL10QjCRFUsvB", "mL3imiOKvSqiGdHB"]}], "teamID": "na0IfQNlsK8LGBDK", "userIDs": ["fo1k1Vbv1wBVBze5", "7WzY7gjHRQdvaMQq", "wH1BqxSzHFiMfPLf"]}, {"parties": [{"partyID": "bNRIVu0MB1fyv4lh", "userIDs": ["2cQEip7oCuDUocA7", "s8UwzIvFcPsEGryE", "0q1I6tMH0kAKxnEt"]}, {"partyID": "0J6If3md7nfedz2e", "userIDs": ["CbhK9oGtpfyBVgfQ", "whRx8fSDGFQrEPzy", "H6fBWoxjHMf6k9UY"]}, {"partyID": "9mq3DxnTRTPx5YPY", "userIDs": ["Qi2d07M6dHshUW8O", "os6auwY7xqaYKMc1", "IBGcbjtelCFsP1H3"]}], "teamID": "WQrCpSRhaz6k0MJu", "userIDs": ["wpuEDN5BNtRw6gz6", "iaasQrCTFHDJPN7v", "tTBydhvMgy05WmZM"]}, {"parties": [{"partyID": "b3AHa4XaGkMp7vY6", "userIDs": ["cSB6Gc4ANEM4luxF", "A8UI8BCeBMtdkACf", "uxbXjFBNzXYaaKVz"]}, {"partyID": "I8FV4PVp7gUXZiAL", "userIDs": ["4SUizFSd3F8GD5cL", "rkPdcoZna5LU7XLB", "iC9gz9bNWaaIs0H3"]}, {"partyID": "XtXSDYb2DORQxDsb", "userIDs": ["CXqmDOMT0FwhhYvy", "BvLrnF3yFFAGsX7l", "L7Gw4nEXK4x7SpXM"]}], "teamID": "XSBlZTUexy6CXfnZ", "userIDs": ["tqq9sEITKJsYDjau", "vTpfXFGSRL8ncnM1", "NNFpWoTBcP1jSaUQ"]}], "textChat": false, "textChatMode": "TEAM", "ticketIDs": ["Iy0C9B7kyTyG7PCN", "4ileSsHeknrFs7LK", "IwjjnTmsMUgPwKAT"], "tieTeamsSessionLifetime": false, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"fpx5Kxcl5D0YQUnc": {}, "KgnnfcDYlfekxbBn": {}, "xxfFl1hUhI58UZID": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "pHMKAzNNtmIqEj8x"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'j263VYzapRYbzGoO' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'zYDXbIpR0QX5Opo7' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '3hpo3iBXJePfZFDJ' \
    --body '{"attributes": {"LL5Ci9mXldzWGq1Y": {}, "Ms9Jb5MKbgn8HzK5": {}, "FQBoxeCx0mFKIt2N": {}}, "backfillTicketID": "EHs6od2NaQUrUvq4", "clientVersion": "4H9qJDhOzl8n0KWf", "deployment": "uNZ0TqhcWP23rE8G", "fallbackClaimKeys": ["C9aEZH1t9CZkLzw7", "HR2rzKVD1dMz0Enz", "WqtQyuKP4qVjKsY0"], "inactiveTimeout": 78, "inviteTimeout": 4, "joinability": "OPEN", "matchPool": "ilujhbFdHQM169V6", "maxPlayers": 100, "minPlayers": 36, "preferredClaimKeys": ["rgZVdPmrXmE6VlUA", "DKr68CuIAqcsTMXD", "E0apFGj8vcuojGLL"], "requestedRegions": ["LTiDvZYnRiV07gFX", "EvBM5Vx1L9M7yFCG", "qmazhnfPbaHTZClM"], "teams": [{"parties": [{"partyID": "MyM9G5B09BSQukSg", "userIDs": ["hA5wfFugO9xiYAgb", "zVdgZBOFbuFQnz4Y", "KEtiftRRQE0795N7"]}, {"partyID": "TocXUAUFsnaC19fa", "userIDs": ["N29TOpTbCRx8r0Sq", "ytdyQYh0bcn6x2pc", "D1Ihr1rDWUMVuOTH"]}, {"partyID": "QEa6q6gRPeEDvxKf", "userIDs": ["YUK3RKzEVF2xVTDN", "aS70dGym3ARt5fIk", "y2kNYhYxo6xD4RaX"]}], "teamID": "6y7JCHGCIYB0QbPQ", "userIDs": ["I50CnMjbSKpjKb3G", "N3EtmvlkwW6fisxS", "NWM00Go2vX6n1LoO"]}, {"parties": [{"partyID": "JE9g4pauJFXc4XGP", "userIDs": ["DXvmqgcahy6fcelC", "Mfqky8gFBN3WPUET", "CLUG67lqUdbe8ptq"]}, {"partyID": "n6CXW3gpq13bY1pk", "userIDs": ["F5i2wA576Y8SCKWm", "vJG8RFSrUoM1QdAB", "JcQjPyesJUcKcjV7"]}, {"partyID": "yDoOwrxQbJVf08aB", "userIDs": ["aJD7529uzfYYMGtY", "8Ndq24PxVIfDsEvi", "yHo3irjaF2kYPoxk"]}], "teamID": "Cxb4gh6PIuA6wjse", "userIDs": ["M2NpP3UWdN7PbPVO", "lGYO3OZOW0S3uSYs", "YBQmTuaSRwcOl36z"]}, {"parties": [{"partyID": "pvjRXMbzupEe5MOs", "userIDs": ["xbXMYorSv4s8qWUa", "DOQKnlFpGfcnKYZB", "eHKJq2GwFYYRJBsp"]}, {"partyID": "sbJ98iq9eBRsjAJm", "userIDs": ["T31E5ir7eJlsrezN", "HhrTP7wrJ1EN9Gri", "HuRCEJEAKyDpglBR"]}, {"partyID": "SJKqwzSnJ68btyAA", "userIDs": ["rx4wbVHLC6UmUqDj", "UHrvNpZmOPRAlmUl", "t6T9YsgcL9m4Y47k"]}], "teamID": "DUugIccmiyj0k97U", "userIDs": ["Q2Z2iPkuGuehUxoP", "PaH6zKQLzSZC5A56", "1qCK65cnGaAN3rlP"]}], "ticketIDs": ["jcv2qapR7G755Fsq", "jYIYJXHrDDj2C9MU", "SBWopZMCMZTfrTvQ"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 1}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'BBYPd7exqz1TdQm9' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZG03eqBytOM4YFuI' \
    --body '{"attributes": {"jjnZ9vlJaxYhBqis": {}, "6b9jRQZLyvKJxZMr": {}, "E6D5UBlCJG77n716": {}}, "backfillTicketID": "YjQIEXkTbVCG3mVQ", "clientVersion": "w27AFnJARf8FS4Ww", "deployment": "pUiT6pxxY8KRMMRM", "fallbackClaimKeys": ["wt2XLGsgkxrbA2cN", "Odaxfy6t1rFfxAjl", "bWcn2Hn5IzdCBN86"], "inactiveTimeout": 70, "inviteTimeout": 34, "joinability": "OPEN", "matchPool": "pGiYAWY1qfkKEHL2", "maxPlayers": 59, "minPlayers": 46, "preferredClaimKeys": ["h4UhLQYQ3Jwt26E1", "pXubF7ZkggRAyN0E", "3PNCNzA2OklMiV1l"], "requestedRegions": ["EyMTUaiYB6ROr1CW", "77rtQlK5nMZedfss", "I1gdIfMOiosNmGGK"], "teams": [{"parties": [{"partyID": "80xO9DZNSMQgRPby", "userIDs": ["6jGnwP1sXyypieNc", "OA7Jj4NlwnX0wRgW", "IIknTY9QA8LPrS4T"]}, {"partyID": "Rbo6yFMfVsbh8Kwi", "userIDs": ["XDq1CdMrCE654clT", "QwSMC1Rw4hnwRdue", "P8NsTk64a05Lo8bN"]}, {"partyID": "14oP27KHge1gLAJa", "userIDs": ["cOpG3PqI1GxNnm82", "IyyAnrIkahGNwW30", "LNLujXH3nSyyHIcw"]}], "teamID": "dfPMBqpzByPE3802", "userIDs": ["ON8CPc2ehy2YeEck", "1qreevPeMXGWctaD", "2LIqrSVPuFq268KM"]}, {"parties": [{"partyID": "PODgwIoDR0zvEGyr", "userIDs": ["7oIyxnM9O1tRdiAO", "ltMmDmXQbOZoXzII", "vI9DeY1qi8ZFoFtd"]}, {"partyID": "woQcFj8B8N0FJBsW", "userIDs": ["7u4jirUfrIxWk2QQ", "0bwiUWBBH6p0xcuq", "eppn9mAKTnW4PgNd"]}, {"partyID": "A57OSImhSb8YVaqR", "userIDs": ["Z0A7tfZoXy2O5VVs", "DDFaUpj0DHBs8scz", "n1Zw3DX0ZNgo8dDX"]}], "teamID": "0CCzzbbmT9e68EKg", "userIDs": ["qmHRSwGZJn1WbMTU", "mUhSeKNZE1WEvpqs", "f2L8BVwt3E8yHocJ"]}, {"parties": [{"partyID": "KlVIlIiLpRn7yFBX", "userIDs": ["J6tlPJTP06zzBsHh", "cURrMfAY5ZQD6vnq", "0yV3wQynSrUVIxkT"]}, {"partyID": "PZNx3a2rpdySMEVU", "userIDs": ["G9PqHS9x6A73zX9o", "lPMo4Jb7m7SBsg27", "ajHaDhCwa6qNKqOE"]}, {"partyID": "uD7ODki4H6zC0vXE", "userIDs": ["rYM2FjnpJy5ZPASz", "NKTwtSEuk7OeKuoV", "qsiya9C1e6GuMw60"]}], "teamID": "k1E3EV38dp4nHHzm", "userIDs": ["n9ShXQjFTIouB1Dw", "KforRdKaoC49AqJm", "utKUyLZGMZcFAItN"]}], "ticketIDs": ["hKH31PkLocucsAQR", "lw2ThG1yXLDMmrOY", "mm15HPvCKbYKN7wB"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 27}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'DabnpUkZFBxz0ZHR' \
    --body '{"backfillTicketID": "AeAhghO7OYjIiNt8"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'lsFb1VdBiyUE2wlA' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'IIgVdFsW0bVgHlDU' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'GaZg5D8iG8UvMWrt' \
    --body '{"metadata": {"2JfUIfdN1AvfrPD1": "tzwRuyb3GJWSUno3", "WJIqBb1OgOWi4oCb": "cZWtqYr2JZKNzhmn", "2IzAMxn8YjoELnqb": "Ibv3qHpZmOYPbgzX"}, "platformID": "aGJfOjful4hvNSrX", "userID": "3zzyl8REoQtnhwtA"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '8Xevl20AqMjwEKfb' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'AJwLOFA3tlJsgx0p' \
    --body '{"leaderID": "srinGRD6Cwt72EIh"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '3HV1oRLU3Dn4Q4Bo' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'Esp8WN9iZNjUxMpZ' \
    --namespace $AB_NAMESPACE \
    --sessionId 'zZ1jiPHFoQv73Xw3' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'l0SFz6sbikgm5NQs' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'rzd17Uj71xeWzgsT' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId '1hBo13iYkvCqLx61' \
    --userId 'vtgN9NNVLyf4hy4V' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "wfsAK5xgXfhSJVQO"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Mamaw357oqkZ45OT' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'p7qjl9tNGOibx7KO' \
    --body '{"attributes": {"OogoLxXztK7QhiUP": {}, "69ehfMDl3v3z3Wf7": {}, "cEx8AtGEkDg86cDO": {}}, "inactiveTimeout": 83, "inviteTimeout": 37, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 41, "minPlayers": 59, "type": "P2P", "version": 8}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '5AlstD06VJx9xlCn' \
    --body '{"attributes": {"isbuGeS7X0tqckGa": {}, "WLVsZcQwHSMnr5J0": {}, "go2Z4QxbDb8FYPMG": {}}, "inactiveTimeout": 64, "inviteTimeout": 84, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 97, "minPlayers": 18, "type": "DS", "version": 60}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'UwoK22g37TdUvAk9' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'Yswt3HzniFhSPj8J' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'Tz8II50MYwT1SIYQ' \
    --body '{"metadata": {"3dx93tx3JIgDSYxn": "DaY7Q2cVJk52JgPZ", "hdXQAPjnFfLLM8O4": "Mylu967wBkRKtOQe", "s6PvVkERqKK6yBjY": "KwE3WP3c8RfaC6qD"}, "platformID": "JLEd6b8fqinewhyh", "userID": "g7Lh7wHrifWghxI6"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'S8y1rroi1dJCGsUv' \
    --body '{"leaderID": "QfdOf7OEJHFPZUOf"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'X2n13LXx98XR3muj' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'ldN8tXRgWHZkcJI4' \
    --userId 'MPQCZdXlPSAyeyMk' \
    --body '{"VhLui3vkLknLbf8L": {}, "h1L0Xu5eBPEzqOwe": {}, "MGSjMEtTd9dHc5Cx": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'yCnVuvzOs49jbNwp' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '5VvUwnsa7hRfXpV2' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '2A7Sc7Stul1uDH1w' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'kkszSwkiyobvN6W7' \
    --userId 'ICEIDKgxXBs2bsZ9' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'hpOoD9uydmTbNvzt' \
    --userId '9jh0IPNcYBQXFlX8' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"ryi7MQpSIeQHK3qW": {}, "sArYJ8pHx04FEFJQ": {}, "8kpReMzDCFQnjyTf": {}}, "configurationName": "uUAuQS12zanFtzFj", "inactiveTimeout": 13, "inviteTimeout": 69, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 74, "members": [{"ID": "l7mgSQvnM40Vf7ia", "PlatformID": "r9qDutz489AhHyWx", "PlatformUserID": "S1FFJQxdUaes4HKG"}, {"ID": "agOCbNJ3txpN2uxF", "PlatformID": "w9g1RgKuv6s7CEUj", "PlatformUserID": "gMUoLW8qFp0giJWD"}, {"ID": "GT4LXSQGY1n25X9d", "PlatformID": "WM5OwIeGJqUqhh2L", "PlatformUserID": "0wmPc5CsBQHBQEFt"}], "minPlayers": 69, "textChat": true, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'W3WVeNLiw5brKZ88' \
    --body '{"4ZjNHSyavY6FNKMy": {}, "LLl6ycv6aX0NzBVN": {}, "hHwlK70IRo2ZNpUO": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'QLXTt93iONNffQ45' \
    --userId '9PZajTvDxiGHjuvE' \
    --body '{"nRZzHhYNxFuYQRfu": {}, "81BfvTCUifmfVFSF": {}, "ldInKA82kRdy8oQr": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["nzIFX78MxjY3gBO5", "6JJsa9VSsJ6zewtz", "EOJSG2ryywaintte"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "XbKtUqCsH7b2Crm1", "data": {"WsGjQmKskLyC7Ktn": {}, "a3YWjD2VB1zIgDO1": {}, "8mO9MrNIJShEXDmx": {}}, "platforms": [{"name": "Y3JmrANM74EXLa2w", "userID": "hek59ZuBxsQ7JXjz"}, {"name": "3ZvvPEOe2ddqa6lI", "userID": "ZSijEZNkOEexSGuU"}, {"name": "IycbUZkQNTT7r4Rd", "userID": "tasaDmsiWY9Uy67Q"}], "roles": ["k3LnCZcVcVu7hLVs", "IfhXzTVKzXmqI7Hw", "MkD2rdKt9VAT29um"], "simultaneousPlatform": "cq6a3cJ472quIY2e"}' \
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
    --order 'QyuW1NbIAOkgcXbh' \
    --orderBy '3h8MtKOvQZ7RxYIh' \
    --status 'm6B33fqIHkuJJ8oT' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'sMdR6nM1Jy3wGBGj' \
    --orderBy 'z1GdknPzNgN6hSQ8' \
    --status 'SqyMmesKYFOd7gz3' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE