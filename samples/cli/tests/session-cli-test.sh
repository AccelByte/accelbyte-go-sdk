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
    --body '{"metricExcludedNamespaces": ["9nbvisT5yFWTLZkO", "qGkP2sEDHEPI5Bjb", "44vYm8gVyN2KOy0m"], "regionRetryMapping": {"VyXmnNTsMkh3UuG6": ["UYTyoGmfysHvHPex", "pkhoZxkRoA81osAm", "hX88x0HV9uKz0AIs"], "QeMIjQaFWu2topNh": ["dncAIPV4nyZNUzww", "Yklq6UiEvGD4A0GT", "PsetYgL7JislSNT2"], "huQWyhdkrE2OWo6j": ["Rx3SurKCZQDzmzNJ", "gceshNwuL4104IGY", "9MVBGJzNNc4d2wU2"]}, "regionURLMapping": ["ev0HujPEjnR6U5MK", "idYhnMOYp01nnDeV", "7AdlXKy0x1gQXz0W"], "testGameMode": "gZ5zw4xZZX1JaBWw", "testRegionURLMapping": ["qo3afwdxpbBWggXN", "GnOcu64nydoZYMbc", "LVSsUNI7s0iyqdTu"], "testTargetUserIDs": ["8o5pVgjDmRzjL4PZ", "Gs5PkxpFkBWwrERz", "7qcPIjavT9wpFFi3"]}' \
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
    --body '{"durationDays": 63}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 61}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 70, "PSNSupportedPlatforms": ["WbYfAx1r7ActI3Vs", "584SHgeumGh5h6jo", "Oi851DX2Ue1EzHCE"], "SessionTitle": "Otu7U3P6lKph9qV9", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "mZ2xJekxmir820ah", "XboxServiceConfigID": "2ufUzWhGYXOVVx7l", "XboxSessionTemplateName": "WtKKWDXE3EuwzEFU", "XboxTitleID": "A6TKrDxqCvyndxrj", "localizedSessionName": {"41Mk4uoohI1CWmiT": {}, "8ibk4p3fo77FDkVv": {}, "yjEpLxAGacmeoM0O": {}}}, "PSNBaseUrl": "NcQiX4nHNvq1bTyE", "amsClaimTimeoutMinutes": 97, "appName": "G3pca6wXEsFUsu1a", "asyncProcessDSRequest": {"async": true, "timeout": 2}, "attributes": {"0v2quPRA0nvUe2h8": {}, "rtVPDHurnX4o7Js0": {}, "72ImtRzjpf8T7Zk3": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "pvWGSW94thH6j1Ju", "customURLGRPC": "ABlqV3TSEEEDXxNy", "deployment": "U0QpaVio6TdVH1mx", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "lD595iAjAceLQVh9", "enableSecret": false, "fallbackClaimKeys": ["FHFqcOrNKUdbh786", "saKB0VhHVLL0KIry", "99bY4z28LGMVb9QF"], "grpcSessionConfig": {"appName": "5I3rbusVkzfyvkN8", "customURL": "1elGT3F6vi7VVpML", "functionFlag": 73}, "immutableStorage": false, "inactiveTimeout": 27, "inviteTimeout": 1, "joinability": "uGeaSgfqpo18wonX", "leaderElectionGracePeriod": 7, "manualRejoin": true, "maxActiveSessions": 51, "maxPlayers": 43, "minPlayers": 40, "name": "tx5ZWO6OgztB65bg", "persistent": false, "preferredClaimKeys": ["zCIXTWqY8knsgd39", "nzkkqLWdTVgMEbSB", "pO4CAss4WIOo3rgw"], "requestedRegions": ["5DcgOH00o7fR8hmd", "Vlu1ufBD4aqE2um1", "mbFPcx0LAwD60w4R"], "textChat": true, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 29, "type": "gsy6cDXZkurXh7dP"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --name 'vSOAfuL8ZvVEsKgG' \
    --offset '5' \
    --order 'k3YkVu0dDM0vsY2h' \
    --orderBy '54gsENpbPajkuM5a' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'QWybvnoxD57s0woK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'nIFUIFnsBcVELc8i' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "UPDATE_INVITABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 71, "PSNSupportedPlatforms": ["DHiaZXr80dHlx7AL", "Pa6b5n6JKNY9GcCR", "JNyIkGqb03p3T4Y7"], "SessionTitle": "8FydnLNDcRODBgsY", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "30hJPsUNL1gfPPKO", "XboxServiceConfigID": "njGXt6IxUxNuAvkK", "XboxSessionTemplateName": "dnA39NwMv26gpnMH", "XboxTitleID": "bhcw9oMb0C7siD66", "localizedSessionName": {"3uGmKs8HTRpX13KC": {}, "sbFnAthrm7lw9ODr": {}, "7CNcMho3kOYPT9KU": {}}}, "PSNBaseUrl": "lywYeNE7Y7zNwLOR", "amsClaimTimeoutMinutes": 12, "appName": "1GCvghuSXsCyhFIk", "asyncProcessDSRequest": {"async": true, "timeout": 21}, "attributes": {"VgOPoeQr9PEVTlRN": {}, "OiEc0k40hvmI9yfl": {}, "XJMbdk6TIlKjoKE3": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "QeL0Sv8usKQrfp72", "customURLGRPC": "jjfk1CYiL5T5vvm8", "deployment": "3YZ1yKtMQ5qCsLvF", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "Pwk0jL3LOj6rhcFc", "enableSecret": false, "fallbackClaimKeys": ["APAnp9EL39AA69IG", "QMvG2tFk3sUxUskX", "36TtQr4ssh8e7Awo"], "grpcSessionConfig": {"appName": "401zKgqknyOE3KLD", "customURL": "bqRihZ0xkIEWHr49", "functionFlag": 71}, "immutableStorage": true, "inactiveTimeout": 31, "inviteTimeout": 62, "joinability": "PCKkWv7Srn8DM5xs", "leaderElectionGracePeriod": 85, "manualRejoin": true, "maxActiveSessions": 56, "maxPlayers": 50, "minPlayers": 1, "name": "yaZZ8t9eHOVQerDE", "persistent": true, "preferredClaimKeys": ["31FzZSp5rAd0S4eK", "g38kM2H2HlsQapXF", "lWK2pOlfOameKeHg"], "requestedRegions": ["uzkFwkd4DHmszoWl", "b0insiAEh5xOlDlC", "QAbKHYgv0pY0XDSQ"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 14, "type": "64LJkLylHeGKPPo0"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'L2pSEaRs0q7XYQFq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'DNAf21oOj9s7Xh9w' \
    --namespace $AB_NAMESPACE \
    --userId 'D1twhY2NNkDAHICm' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'eAUeVYcUKc3k5aDS' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "bvn2rnj88hW1cnDm"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '7CtkFqVNKYmVjWcm' \
    --dsPodName 'J504PW7MRNUcsAHY' \
    --fromTime '9HG9LWKPMwzYwoFD' \
    --gameMode 'P0oZTo6H4zopshGF' \
    --isPersistent 'L7TTDVhhQiOZLYXe' \
    --isSoftDeleted 'EO3WifrTcZnxqh16' \
    --joinability 'yCGNHqH7rHmDHzmE' \
    --limit '9' \
    --matchPool 'Z1c3YaYAbQvBjZRG' \
    --memberID '4Tc8TNsMxbTqIUSn' \
    --offset '40' \
    --order 'FHzMG73Xc9srOI6a' \
    --orderBy 'U7PtAnuVA9hfDVHA' \
    --sessionID '8jnOtkO5y0EFO0Nl' \
    --status 'ZidV8am2grpynURX' \
    --statusV2 'SvIm4BHoxVjRZYD7' \
    --toTime 'mgKTp5hdDnwQSHLI' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"qboBQxXxa5OCTHTl": {}, "yWSrPuiEtVpdrx9B": {}, "rwfUKjXdsjqII2ST": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["jXRaggqVQK2dT9Pr", "FI8vw20Lkkc4RllY", "PzRohYLDx0HsuGID"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'IT5GCleN3DfAB2MY' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId '6UVrGwP1ZZ1WVcLg' \
    --body '{"createdRegion": "MVHWPKA0kjeXAh5v", "deployment": "ZCLOLpVMhxNNAeGm", "description": "swHY5xlF5YzAJlKS", "ip": "KEJ4sACGxhnggqJM", "port": 76, "region": "yNWJEJxHjYGbV4xY", "serverId": "EEDcTQqu6iYJ10Op", "source": "KdfFdApUXz1yZOUr", "status": "63ilJ6NIWutqgH4f"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'X3I0cOvUqYDJDFff' \
    --namespace $AB_NAMESPACE \
    --sessionId 'PrpBbChI2Q930aXr' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '2umEYgXh0uja7UWe' \
    --namespace $AB_NAMESPACE \
    --sessionId 'aglLtmp7ACT6Y8k5' \
    --statusType '0ZNVoIQd2t40ma1g' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '67' \
    --order 'O0DRipZg2Ua8edaI' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --fromTime '4q9fpo4UxERJavJU' \
    --isSoftDeleted '3r7SdR78zrGjFFZ1' \
    --joinability 'qkoRAck9h0RtWmVl' \
    --key '9QIzePGbYoVAiEhd' \
    --leaderID 'rRUjCkPUDBBZ7heT' \
    --limit '14' \
    --memberID 'eclBwJNKoNmJUt3A' \
    --memberStatus 'pKMhGmZbDTUq9EAa' \
    --offset '70' \
    --order '4uGerbITzp2hUPlg' \
    --orderBy 'Ruor07fhnXDT4cTS' \
    --partyID 'n9M7titK3tu5nM18' \
    --toTime 'Q6evdDVuKS94SRta' \
    --value 'bM547MtSUJPo6tbl' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["bVgVVwup08DSDjWA", "yDpRAw8R5najje6t", "uH4ddWzLt2WQBOjk"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'eGQBGVPT8TdzLY7k' \
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
    --body '{"psn": {"clientId": "9rqojOb4fxl20smf", "clientSecret": "tNo77DMf35T9kmJQ", "scope": "d2xC5cjtlJ1z68b7"}}' \
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
    --limit '20' \
    --userId 'dI8ZK7kPyxhF58dX' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --userId 'SZfYPIHUBLEYxNK7' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'fjUv46c6Ih2XlTlV' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'lXlFQTb7vSA0OGU5' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'TU97fGg1tIjJVvY8' \
    --userId 'X3MeNTlpQnnzGwWo' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'hX1y9wzlf32yByQk' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'DrgxSo47OCNjqgc8' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'vuby8biOyT1K6jAe' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'true' \
    --body '{"appName": "RshWK1oB32CHPqyz", "attributes": {"RgfViaNuk5tUShzH": {}, "ipAPTufWZrbWWoND": {}, "iLaoq2KR2dqyWIrU": {}}, "autoJoin": true, "backfillTicketID": "yJ3Ouv0IUoZZgCPE", "clientVersion": "rbArqbglJ66k54KF", "configurationName": "ku9Ry94bH8o6PcQq", "customURLGRPC": "MHqMdtzHW9DcBf5O", "deployment": "cDAiIEt9x5cKOaYi", "dsSource": "MfpEyn7fElPSGW8k", "fallbackClaimKeys": ["SFhLzJqDzdwQHLRK", "gTgnvLhwp64nGpdn", "rbiK7aMB4er2tf4s"], "inactiveTimeout": 1, "inviteTimeout": 32, "joinability": "ZjT7BXrWeRdjDT0J", "matchPool": "CQ409rabGE3Vn7ws", "maxPlayers": 40, "minPlayers": 94, "preferredClaimKeys": ["fqQFjfW4PEvlVdfs", "VmeI5UB5SbOOcHhw", "sapPnDoSfSgvXizx"], "requestedRegions": ["p3NyY4ISskh8tIMn", "rZBpmP0DD976bTD6", "i2FVXz8JldoPxpaq"], "serverName": "53I8jmASc3khsx9D", "storage": {"leader": {"0krG1hSz5FubGTfj": {}, "1vy5aoffz5iGzFZj": {}, "1E1gr9YbLEArQ2ZW": {}}}, "teams": [{"parties": [{"partyID": "8VdjqMpqbMMmFk5n", "userIDs": ["NgETBL7bchI2FOvZ", "SNMkbKvnsKXnkQoH", "GTcUlnl5Es3qhJij"]}, {"partyID": "sqaFr3d1RRYMo1IM", "userIDs": ["ljEUlnHcJdW9RHRQ", "4oNUGFU17FPJqFa2", "mN5Jro82E9QVkMzm"]}, {"partyID": "jsOwGEQ3zvYGo1w8", "userIDs": ["eVyooWc6qZ469xkX", "fYMUfGI7wBRtR40m", "6fXJLSb8UEF5nDkM"]}], "teamID": "8AO334neqZDOZreY", "userIDs": ["rxZZVpEHlJIIq8dW", "qXCacl3XsqhhgrPG", "aGDDfhpDkOnnVtm1"]}, {"parties": [{"partyID": "Sbx88AikE9erxhNB", "userIDs": ["2aTQBNspVKuR61T6", "CbDlbhOUL6Zo8OR9", "H7DkkPhUiZVD9VTt"]}, {"partyID": "aZcO2IAmQngZ5Tqf", "userIDs": ["V7o48h6N2WV3Xwhy", "hOEiFmFGs58VxF13", "jgmRuf4fEHeWXiNB"]}, {"partyID": "q9QCTTDFIsYc8SCN", "userIDs": ["eXHqzVOoihUSNtyB", "XHhP0xLS3ey2OoFj", "Q4arZhxL9ITBt2UP"]}], "teamID": "fwX3sQcP5L7ffKLe", "userIDs": ["JrfiSVZWjX1WNYKk", "G04UqfXU6Z8e4cZb", "8I1ptu2vlwMUotWM"]}, {"parties": [{"partyID": "cHIQ39ICSjq94b6V", "userIDs": ["t3rqX6ODRlp2ujES", "W1KXsqzDXZScV80Z", "mnl16Ygw2eH1WiAk"]}, {"partyID": "w2cRlSx55OZAxrGd", "userIDs": ["gamcvOrBbc4H12nS", "kTQ6EKKEdFFB14YI", "S2DflE37PGsCAvzx"]}, {"partyID": "FWGOmlRsIZmkBPgj", "userIDs": ["3KlVolV0eiN3KM5I", "MgTtUYG8slkJstI5", "qvh6AeToqRfb1A5r"]}], "teamID": "IH1atdU1eVdSyi4i", "userIDs": ["jkwl6Y06fv0I2hFO", "K4mrFKGe0mGaUBj7", "dG3iAzlpnMJtU7vA"]}], "textChat": false, "textChatMode": "GAME", "ticketIDs": ["ult22waJZ6DFqR8t", "LNC40Z8OhyT56GQv", "r7GbCRUSjT4x5QaW"], "tieTeamsSessionLifetime": true, "type": "i3uTCNRgwDksZDAV"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"DrbGmKJh6GqHm8Ud": {}, "nmDZnRy9umNZCyf9": {}, "KhTL7P0cDeQ0h8Iv": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "82elbPTS9VL1dUGM"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'ea7HABD6Gvo4ejky' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'jzUXLN2JAi4gO4Wp' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qn1lTFKSr7MH3BlJ' \
    --body '{"attributes": {"lRQw3FuVMI0NlZiQ": {}, "wvAlt4MnyjiqyTGm": {}, "SbhZSfVSYg0os426": {}}, "backfillTicketID": "kC2Wi2SIZp9NyLj0", "clientVersion": "DhYSpC0DFUqwOxAT", "deployment": "cORwFWJXKKD8RdfZ", "fallbackClaimKeys": ["NxkNZu6OA4yfpo05", "gVgCj0XzHNOrbWDi", "gVN8IMuuafDWbMe1"], "inactiveTimeout": 87, "inviteTimeout": 53, "joinability": "oE2yHrqek5LeevWd", "matchPool": "9XKzjKSvVWOOEe4e", "maxPlayers": 39, "minPlayers": 10, "preferredClaimKeys": ["RA5uis7VTXNebHxe", "NKh00TgP1HmyD1Yp", "UDcG7fEyul9yzZA3"], "requestedRegions": ["JPVLD40NGoUVt6Qt", "M6PpQMXnXcVqa1PU", "n4il1sNMBM0n7MlA"], "teams": [{"parties": [{"partyID": "pVpqz34j53qlbW9g", "userIDs": ["SEusteBTxCeCy9rg", "WYOWw8hY0Buuwgo9", "xzdXpuTcCvSGP3df"]}, {"partyID": "Z887gDL4gdkVMSHy", "userIDs": ["Mf4l7ZstwY42Nshx", "63EbhMyfe2Wdx6iu", "96X5NtuvBzQsS0WH"]}, {"partyID": "3jz8LtpHvKYXQFSU", "userIDs": ["yIdW2pfjibJPk5cU", "eLsuZMYgOpELZg4P", "d0t19Ex9SyAFMPJ4"]}], "teamID": "AydkVsAnItZD9O6u", "userIDs": ["R14DDcZMbHREFjzD", "N31vRFM07EBSD315", "KD6jzyhBFPKvZUsU"]}, {"parties": [{"partyID": "K1pSDxuVbFiVZ1Ga", "userIDs": ["lC4zu96D37Te07UD", "h0MlmZLylXfrLozd", "NBqkfIcA3lz1Hopy"]}, {"partyID": "9sQijHr9hSjnXweQ", "userIDs": ["8otKmoxLPDOfsEb7", "jtBvqEVha4KkOItL", "9Kw8w2QXe2JUxZIR"]}, {"partyID": "ppfCj1jvGCyEUXs9", "userIDs": ["ljZgZSCssTuPx5b7", "R0UUVMdrwXG3JnpX", "4PhOneHV4L2Rz2XC"]}], "teamID": "xqHIYlTLZCF3pTbQ", "userIDs": ["9TJtFtqu5vmMpZVr", "eULdD2We36BRaM6a", "Dvj2EQcc7pRUwuua"]}, {"parties": [{"partyID": "KFt8iF9Skn5MjCki", "userIDs": ["To5EhZIfmSshrbHY", "MzGXFJN3KLAMdT9H", "7XI8DGdsvmNh9RB8"]}, {"partyID": "fLtaKVZ03tePrEje", "userIDs": ["Gxxeh64hbKwSIbv3", "pxuYlKazqCoqyr3m", "obXUEuifmFQ6hyX9"]}, {"partyID": "6ROOztVlYGwGSoPI", "userIDs": ["jTEEbQLr9Ubl7e9U", "6HVKSJGVcy5O8O4e", "Yt7xxfW1c3Rga7LH"]}], "teamID": "13HS6N8FpuD6OiiD", "userIDs": ["0tkUyeeem0unwwsp", "RQplkk1iDoXScuNK", "uX9H4igUonjAu31l"]}], "ticketIDs": ["CBstS53E9n2v6OuP", "seGYKkBxgvf4YYuc", "61mPMrNGPhOu69ws"], "tieTeamsSessionLifetime": true, "type": "zGeUwYbRczV372na", "version": 89}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'MQ5DBEcKYlm05YDm' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'SGb0Qm392gMr524s' \
    --body '{"attributes": {"KFaTwl8c3C1TAEbC": {}, "zhDTup7UnLZXhD8T": {}, "Z9Pmnnt3deilZPpr": {}}, "backfillTicketID": "55XudRzxKCXNpz37", "clientVersion": "bT9dX9MGFETzQqvE", "deployment": "T6c2CbnXDhjTrAoX", "fallbackClaimKeys": ["FaZIyhG0m7m2RQ4V", "3OoAAo98lGmskT9m", "WTPr3Uv5SjQwQhFh"], "inactiveTimeout": 15, "inviteTimeout": 27, "joinability": "xxpGwskcVw5voIra", "matchPool": "6ph4jadthIiSvxBK", "maxPlayers": 50, "minPlayers": 36, "preferredClaimKeys": ["4Y1ZZk3QqkvFrIGa", "vNOtTaHPfIOexrJa", "v0uxSaWngRRzBJGk"], "requestedRegions": ["sls7c46xDHNmsQ2y", "lPZwPj7lz82muQIa", "gUe8qtB9qk0e876K"], "teams": [{"parties": [{"partyID": "s66eqQ1rSkzDYIfM", "userIDs": ["65dSiIkM1Wo9hArh", "ekPCYgXRxNnA0MDC", "O4z38VX1DHOgrXBS"]}, {"partyID": "TMSXUWWC1JSMs7zy", "userIDs": ["9d86aS1LPFe3jd3f", "IU71QJIFV7T33JCO", "ikTO6AyOM2IqmX7H"]}, {"partyID": "JZwu8dxOowJKMyW1", "userIDs": ["7iNmVpgq9zsnjnIO", "zy0EBKdL8L1eOocH", "K2nTX7OHucoKFoDf"]}], "teamID": "PQyNzRpSZxIj4nRe", "userIDs": ["ssPXK4ow5Qc35PFv", "Qt4oPsH3fFcmmjV8", "mYPIi4S2hTneo9O6"]}, {"parties": [{"partyID": "G1doxExfhkDhLS1Z", "userIDs": ["W52zvOSqAJqy9zDM", "3ydpBbCCSLIGku8Q", "retgymXXNeLVQAyH"]}, {"partyID": "EVvRxaR0V90ab9Ch", "userIDs": ["dkmmgEMM63K6k3Vx", "yx9IZZkqsN0UpvrI", "iNHt20WBFl14WUmJ"]}, {"partyID": "MFgxvkhSDM7gyMxh", "userIDs": ["MCirgGmp8tHrRHYL", "HkdXJaNaV3KBeZeI", "81PQzJH9g7jrmfOR"]}], "teamID": "J7EvcDBSIjeLuhkm", "userIDs": ["Rv5khp4HQn0W0Shy", "70oNi6UbDha6r1kJ", "FV957jRqekvbOzTO"]}, {"parties": [{"partyID": "NHhvPnYFJACb6x2G", "userIDs": ["5S8SiQf1GDZV84u0", "hTu7dwIaIThTeVUN", "4hskkCkEG4a6Ti46"]}, {"partyID": "uttGMWhdUc7zC7ln", "userIDs": ["sDuMYI7vNaEWeWar", "lP5acaMmUAS8Toyq", "o1rq1knHuRxmSWSO"]}, {"partyID": "awUEhKf11TOiZVS0", "userIDs": ["LA6uXxrF7EIBvvBJ", "Nbn5U2Cv3KtApkwK", "oeVer7TiREZZLizo"]}], "teamID": "KmZEmEUGRoxRKVjN", "userIDs": ["RafQStCWrdk5fbjL", "I8MtCLNCa3UthDC8", "F0fMRyccueAot5Qh"]}], "ticketIDs": ["FzvHeoVdBrAOC63B", "3PaRygxbpuUUgGeY", "NHU3kc6SoCcPIkW3"], "tieTeamsSessionLifetime": true, "type": "8dCDjG4J2Kc3MOdg", "version": 43}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'v8DcX5NbPCAcxZzI' \
    --body '{"backfillTicketID": "i6Z7zVjEvhkwSkl8"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'NZyquUIJ9fRvcu0w' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'sMEXq6y9HfkAEeb8' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'KVVYExC57LOyMfL9' \
    --body '{"metadata": {"qHB9Dw6KO8fL4kEq": "9yixbdo2jfs2BB0v", "2EnOfQMgVm8nqxSD": "BjT7GyAiv7K4LoZk", "Vk6iO8pavdKoKx3w": "3UOKeXXW7ZL9OjzF"}, "platformID": "Eqe7jFTQ8pRr9PUZ", "userID": "PHzt8OSzEfmiR7Lj"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'GwvA5OoDxDOs5HvF' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'mcSarVoaaShuPnxX' \
    --body '{"leaderID": "uNBOX4gChTeNMcE2"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '27OaBf0a5TUMWroZ' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId '5PduD4i4mjgYx5Qu' \
    --namespace $AB_NAMESPACE \
    --sessionId 'JWz1srNOC2fzm1Pm' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '9Fim1rcXleZjx4jA' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId '1T590gl558XJNSVs' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'pDjNargUiUKEHTNQ' \
    --userId 'EAJXeOKqLMqxHKjt' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6lDYvUxWG4UwXns1"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'd9EoQexO9kB85ZWV' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'RjIEcmtdQ9RYLAXY' \
    --body '{"attributes": {"6iyrxJBbrR0ihpUu": {}, "dck3KEXk3rgDn4Rl": {}, "GV6mma8XD046QtRs": {}}, "inactiveTimeout": 61, "inviteTimeout": 27, "joinability": "tQPWdUox60bbK2zH", "maxPlayers": 72, "minPlayers": 67, "type": "ZQumkruJdCNRrc1P", "version": 21}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'wlcEzE9irJp5dm7A' \
    --body '{"attributes": {"fEVxMkSceKxf0vUd": {}, "HWiJzTnv4Xl7grvZ": {}, "spEZSamhHwJAH3Ns": {}}, "inactiveTimeout": 9, "inviteTimeout": 14, "joinability": "dAWS08dmoSHwH67w", "maxPlayers": 2, "minPlayers": 83, "type": "zDrhBV9SpstWFTny", "version": 3}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'WyrUHJjhUmfMMRon' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'SmEs5IpnpBAKqqzE' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'MSDYihrzK3iYtHSN' \
    --body '{"metadata": {"6uqTbrlDrNvlNkUp": "yZgYrhvYNxAAnz74", "a4I3Gr3DeD4Yfwky": "1koeUnuvLCmlOP51", "eOBSisnq3vmj4I8a": "rEtq9Dv9kOotFO82"}, "platformID": "6E7vfegewJUQlAdP", "userID": "U5yuY41GjdTmTw0b"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'kajOvbjn7aYZCq5N' \
    --body '{"leaderID": "szNv1ODyMRGZHupX"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '8AqxsCgUqtjrsMpp' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'VIXVPponURsLVbEo' \
    --userId 'UpP35i8DYS7lCBhw' \
    --body '{"p2PImEvC3VaHmF4I": {}, "yhOohdvLFEZzK9Mk": {}, "y0bKZcC61d2eOwq7": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'S5ZyJN10UVSz4jrG' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '0gLft4cojWLzYsjD' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'o8nTMVch0aTtHEEI' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'CJihCj4oDnp3nA0e' \
    --userId '05GOcifKq2JtAQYr' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '4H7qWmtkeaDotMq9' \
    --userId 'oDfIfAA0Hsz6xzvY' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"9qGkNmDYkYiC7bWX": {}, "jkoKzjO2S6elBBh5": {}, "SXkVByVPY1nnsI8C": {}}, "configurationName": "Jsh50ysURW8PRKR0", "inactiveTimeout": 99, "inviteTimeout": 52, "joinability": "YS9ZBIKYcP9hg88h", "maxPlayers": 69, "members": [{"ID": "XC40iQW33Ofm16rF", "PlatformID": "pdIXOekIi8gVV4cV", "PlatformUserID": "LmsBMjKyxsqRt35i"}, {"ID": "QMp4SVzIwEPxjoFD", "PlatformID": "wyf4JwOIzJyhR3KD", "PlatformUserID": "ExkXU8ndpKqZCxGK"}, {"ID": "L5Sv680csMIWWVwR", "PlatformID": "ndpzsgHndQVz8nyh", "PlatformUserID": "vOHIOwwopy5qAMNT"}], "minPlayers": 5, "textChat": false, "type": "BpOtFSoafbQw03f9"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'SjOQrRowEM6AykaP' \
    --body '{"sFkAAUKTVltxV7RV": {}, "IneLHtub6IpMiw93": {}, "1qXyN5D6rsyBZ3pT": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'N7rwz9zVjwB6b03C' \
    --userId 'DtpRWvQPcB1iHF7J' \
    --body '{"7E8wJW1Wc1hgTjHG": {}, "EFAk9lwwvbrwY2i0": {}, "cBtJX89dBl3wyLso": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["UUiZbcd7qJBq02QS", "TeY10ZRz5q582jSs", "14WR8xZH2OOVWOiw"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "n1eox1OqX69eCo8X", "data": {"9TrlBQyjlYIN3pgB": {}, "Lxw8sTcejoxqwhE9": {}, "3tvsei6eMIWzgxWM": {}}, "platforms": [{"name": "unUei98qtKkKMu2r", "userID": "RUm6pNqMZ4ooukAR"}, {"name": "xjkgghpneO1jWSVS", "userID": "yliWJpdqIMOdlf40"}, {"name": "FeTjt8rSBKp3jgb8", "userID": "IW3ElyAtWjcJomKW"}], "roles": ["0fGeOkJaS2F77iLG", "I8YDZZXVeHvjkwFS", "5ovMngfLTYk2nmfI"], "simultaneousPlatform": "ETTDxlJGdx2LzXwI"}' \
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
    --order 'NbFXk5kXo6hHNilR' \
    --orderBy 'XSy5eCowaQO2eKiN' \
    --status 'FB2NqVAKUdOgfMw9' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'bzY1eR2oaI1VactE' \
    --orderBy 'W0zhszdJfqMUo0m2' \
    --status 'sHEISKrrDOHRGhjt' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE