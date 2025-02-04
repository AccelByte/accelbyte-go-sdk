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
    --body '{"logLevel": "error"}' \
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
    --body '{"metricExcludedNamespaces": ["9r0JkzJ7foU6wijQ", "4sdPC3Gyl9YoEUmn", "CVJx6ZteUqt8fSFX"], "regionRetryMapping": {"rshTxdViAUG1pwT2": ["LWHuv5MQdbNt9x3I", "MWQrVnUkQOnwsP6L", "LIWa2p7J4gYYevv4"], "oEiEjJbMKRo6vBWa": ["F8Psgu24NkznT41d", "o7B1M7zrbEAtErax", "EIl2trMyvuTc7fPM"], "QkqDZ8ZSihs2ta3P": ["2euGlrQPjnAvG4Tt", "PBKqVvvoY5FtmJF5", "Zmq4tDeiTinUA7d6"]}, "regionURLMapping": ["7SaYdtahby62NWf0", "w4TVTthmcAcgbBzB", "JnpIz3l5F7UQSeJs"], "testGameMode": "tsIC39n527TFNGKs", "testRegionURLMapping": ["fKbUSGhGTsVcuV7H", "ygiUcFekyiemAsJh", "JPHC7cBe7w9FzrUo"], "testTargetUserIDs": ["QRRb2kBs3cQrhKa4", "ASrlLihvZia22t3g", "FD6zWY5c9hgexUmO"]}' \
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
    --body '{"durationDays": 27}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 37}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 18, "PSNSupportedPlatforms": ["0xag3TTPCyJBQE2P", "V8CNCcOwsiynwm6S", "WhtTK7Oxf9hJ5dJv"], "SessionTitle": "RHLt5HFoymRtqXWZ", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "UfZyvB5FakrAnZN2", "XboxServiceConfigID": "FpcqgkDAZU6mos8D", "XboxSessionTemplateName": "qjSBUdOwpaKefbo2", "XboxTitleID": "p7d2vlDthZWqaOic", "localizedSessionName": {"7ZELz3RrAuTWgzFM": {}, "KHCEqJXyQag3QG5u": {}, "x0hPj3Xz6gyArqL4": {}}}, "PSNBaseUrl": "CZErIXzq9MNE96zN", "appName": "AeWLIZiCA5uEoo2L", "asyncProcessDSRequest": {"async": false, "timeout": 47}, "attributes": {"7dzZcs2M3exgGJQM": {}, "uefUCOy87AlPoAmF": {}, "F4oK5bS5m8vCu3Cb": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "lvsXxCc7NMPGgcru", "customURLGRPC": "OjS140xCwLLB9FHr", "deployment": "2dVeTAdGceeA7xVN", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "2bciLVWmdotLotDr", "enableSecret": false, "fallbackClaimKeys": ["cbUQseCeoIIsuIhH", "72kU897KGpf22Bjm", "RqoYaRnm3T2N3sNN"], "grpcSessionConfig": {"appName": "jFOhaBbxGEGHw5tc", "customURL": "sbhT29iYcicxMUiT", "functionFlag": 32}, "immutableStorage": false, "inactiveTimeout": 14, "inviteTimeout": 31, "joinability": "yEFKQJdRqrMGBkVA", "leaderElectionGracePeriod": 17, "manualRejoin": true, "maxActiveSessions": 89, "maxPlayers": 20, "minPlayers": 49, "name": "OLqNfMOz6ejFBquv", "persistent": false, "preferredClaimKeys": ["rPvWMinj8f0KRFEl", "5fAhNS87Sdx0JgDW", "n8eduqP2Yihj45iv"], "requestedRegions": ["cecccyJFwBB1OPCq", "teNHftxj3NqYSbko", "3h0RjeNIJcYpL5k6"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "type": "Fbi71y748nTOzmkU"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'KdQFdDA9sjVapzew' \
    --offset '36' \
    --order 'SC1Ks0sQ7q1KBqSp' \
    --orderBy '6iWhJmRGvgWEQZ3N' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'Bk2ZdcI4C6PqC5kj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '82pb6R5Uuog4j9wf' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 27, "PSNSupportedPlatforms": ["ovHl7PsGpnDlAILG", "UlbwQaOu1cjuZI30", "6draeLv1qWvOidS5"], "SessionTitle": "dUcVBtZt6C05TWOc", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "9uL8fmQAJlePildK", "XboxServiceConfigID": "wcrkM3ZTzYv8PRCG", "XboxSessionTemplateName": "K5u9FzAAPOeyhK1W", "XboxTitleID": "hxLURXxQJKyqO3l9", "localizedSessionName": {"vmfLHnAdQ4FwLgzR": {}, "ZtqltaNFcR9H81Gp": {}, "bJL96ines5ntwxua": {}}}, "PSNBaseUrl": "nJnHhwDFmC5IcaTk", "appName": "vuM1Qd8DDMoemoo6", "asyncProcessDSRequest": {"async": true, "timeout": 93}, "attributes": {"y1OvHczyPdUkMyLt": {}, "cc8wlOb1zjpn8Dbl": {}, "k55UCNMK8cVtL44A": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "0ItiN0ifw6udZwd4", "customURLGRPC": "2UeGqKIGKDIRgNfH", "deployment": "t4VOZJAvwaJongi1", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "Udk4YBVJyr8MiTRp", "enableSecret": false, "fallbackClaimKeys": ["VCgtolQyOHY6sIXm", "CDyfDWVnE4JAzWfw", "S2JHr5VVJ7PXFKel"], "grpcSessionConfig": {"appName": "W6FaLKURYcQj8H6u", "customURL": "NqoWjX4NhmzUgZxT", "functionFlag": 92}, "immutableStorage": true, "inactiveTimeout": 70, "inviteTimeout": 37, "joinability": "hOkiy30wj0IhCPGh", "leaderElectionGracePeriod": 45, "manualRejoin": true, "maxActiveSessions": 0, "maxPlayers": 80, "minPlayers": 78, "name": "EK0zot5GkMy8gdGl", "persistent": true, "preferredClaimKeys": ["k1wp2PUyHMcxGAY5", "rIXVmR0vrJuvXwL0", "Ua6pSbruc2en0cMt"], "requestedRegions": ["Pp0QPsYa8iQ58FaW", "uh2sGlz4RIZkV2xj", "JeRS2WBUQuPK6rnH"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "type": "YsBM670xzqHmCpOT"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'jjiM7hNMDxRdmTfU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '7e1QRlDh4MqcL9jg' \
    --namespace $AB_NAMESPACE \
    --userId 'lW18qgZZwJ5xrLIT' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name '2S0UVKBs8MOxEAYA' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "2QrX3ihE5SZsieXx"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'cBQuUpJFVwuGmlUr' \
    --dsPodName 'BxfydgqbtKBJbekB' \
    --fromTime 'BIuUNQ2hI0r7hivA' \
    --gameMode '2ioF3Loc8NOyTySc' \
    --isPersistent 'b4AXfJfrk5zSzkEJ' \
    --isSoftDeleted '7kAaxKBMuq6TOYdR' \
    --joinability 'qMj2KoahkxCa3v1I' \
    --limit '87' \
    --matchPool 'uLDVvelVD7xU5mK0' \
    --memberID 'nEB56ILQkAqBBz4I' \
    --offset '1' \
    --order 'gg97AXEYsQObeQHF' \
    --orderBy 'et3pxciJAOaTn4LE' \
    --sessionID 'y9sRDL58Cpz99ewZ' \
    --status 'K0z7MY1J6d2nyfX5' \
    --statusV2 'ouxnXeciuYcVZRy5' \
    --toTime 'o7fj6kNH7LmUb9U0' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"HKXYN7OzAlR5LEQw": {}, "qtfRSWiV7ZOG0wxo": {}, "1mSw0uuMZZLJpGFu": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["kds4BuYjgcso8kyu", "JZH18C2IdEeLQXRe", "X2CzklMJX0PjSYvX"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'ji5hvcSc41oogauC' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'AChA4J8X900TNN4T' \
    --body '{"clientVersion": "bnOKnlRVqj7NBbrX", "createdRegion": "ddxKZxh6HaWrlnTi", "deployment": "x2Rc94Z6ppxiSTts", "description": "yGI574EcuDqklikO", "gameMode": "P77Hp7yH8M6se80T", "ip": "VS9MhHaquOB93bTK", "port": 11, "region": "QSDv13GNFyd45zq9", "serverId": "4b04j5Ld9SpnhZi8", "source": "rEkxsRc5rw3Ir94Y", "status": "zXh5KFgvzzAMuLik"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'KLLuexNbiXh1OKA9' \
    --namespace $AB_NAMESPACE \
    --sessionId 'K0UTNM16bLTWBiks' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'iblCBQM3soFEg7Ip' \
    --namespace $AB_NAMESPACE \
    --sessionId '9pcc32jSqmfLRefF' \
    --statusType '9o8cbCORv7pgKZ4a' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '17' \
    --order 'hOngefe7uF49oDea' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'tqHD5X5elElgA8ke' \
    --joinability 'A1zZWetrwQyyegrv' \
    --key '2vaGxwyPhwpAsFQB' \
    --leaderID '2YhjgqSPSuiMyCuj' \
    --limit '97' \
    --memberID 'iusoaOF2IdvP5sBx' \
    --memberStatus 'owDO7hs9CwTHS4kI' \
    --offset '44' \
    --order 'FcgQhDWNPe44LFOH' \
    --orderBy 'CzJ4z7nbjnyUZJGU' \
    --partyID 'wHZLd8U5qhlIv4uU' \
    --value '2WWCPk5FShTmoIp3' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["Mo3bQZFDLxO0Hpnj", "HI9xOMvDXxqKwLoR", "Xf5TSyry3O7Krmi8"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'nX6AKkx92XHS3Kmk' \
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
    --body '{"psn": {"clientId": "zoyWj8G8aHvhZXDV", "clientSecret": "C82a5Y6YoNYPsrpL", "scope": "3NqpQjyyS1xYJxBl"}}' \
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
    --limit '35' \
    --userId 'ancxvNqXc3xuCUDw' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --userId 'dO23BHbcUlYctoPw' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'lNSD07tBMm1Gwunh' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'EKW9KPSclfAZOPot' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'qlRvH0MCy0BW1Knd' \
    --userId 'PlipwcEX3wotkeR9' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'l6gDOAa0AuXLXwA0' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Ubsek0Ptld8fIciH' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'J7tUZlDHJ7tD8Vq5' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "C1ZU8A9fvg3IAVKb", "attributes": {"l48JmiSrvoU3Ct9Q": {}, "YReVObdtnV4sRFHz": {}, "6xah4z0jaTQsSRId": {}}, "autoJoin": false, "backfillTicketID": "bxdf8A58pvg77PRk", "clientVersion": "w4ZP7BoUtxHJ4jtl", "configurationName": "riF1QVKgMYtCBpXU", "customURLGRPC": "WOdPXTcwDnW2Spgm", "deployment": "5Sbbp7jgoG5palxr", "dsSource": "85sK5DXHhjl6tDiw", "fallbackClaimKeys": ["ah6Mc5b0SX7YbQf6", "YbFksdiqXpAVFiAq", "HMrGI147j6CqNTu0"], "inactiveTimeout": 60, "inviteTimeout": 37, "joinability": "L2HQGJEjp3hsffjE", "matchPool": "AAid2kCOGiecMj4W", "maxPlayers": 99, "minPlayers": 39, "preferredClaimKeys": ["ptghHXli7cL3DlVC", "Mml5yU0sUYQK4kNN", "is9CkRaxCnWPlx1F"], "requestedRegions": ["LYok7tSyvxbNWvg5", "AsGdMFwS6wgAmAjY", "NUtoCTqZFVTH0Yj6"], "serverName": "SWwdaqDVNDV9gkMr", "storage": {"leader": {"AbtJYCgswN0oHRCy": {}, "uNnsjsDnD8VVlJXP": {}, "HdC2W3JPloPUCY4e": {}}}, "teams": [{"parties": [{"partyID": "GxNkcGS3QFmnUPOV", "userIDs": ["G7JdKZnKzFUnCv6Z", "0XX6cIS6GpbWk4ib", "vKKkEAyoMAZRStmF"]}, {"partyID": "2cxrk9FuaaWwTPQZ", "userIDs": ["HTbQPTCvsG8fsiuI", "xofZiLrsbyNGqAIL", "nEsH9ymoTwiQ7UNi"]}, {"partyID": "Wb1ho63xcjnHellt", "userIDs": ["4IglLG3ljhehLeLl", "PERAKt6pEO9h7SK0", "vdodUcB2fX9WwGim"]}], "teamID": "9wpT0mfpB6WiG0IY", "userIDs": ["UXQOHl1kcJtGzw4a", "j2cMqB0Uu1giq6Lc", "irdRiiffxOVU09AT"]}, {"parties": [{"partyID": "hYR1tArmqdzEOK6T", "userIDs": ["pjgfURCPRR3Nfu2A", "qwOWt4VHPVuAjtWP", "9HEhu2ZO9LBYHrAy"]}, {"partyID": "2nnTv1Tq4Z48vOjW", "userIDs": ["33ikuic7eaDLSYrk", "Bvma9JUq6I8YnmxN", "gNGw8UNP9xTYQshH"]}, {"partyID": "lbmK1U9PcNfqgJj8", "userIDs": ["2odPdWEaYVsNiXGY", "s3Wb2ljw623sHcEM", "yGoDRwiFJKG3d4vf"]}], "teamID": "ZAmRiZGEUR6IsvqT", "userIDs": ["R6uzQ2XxD6t1aiqA", "rg1JUP3Cj5ijeG0S", "OAK0XyFP6jYJOOgb"]}, {"parties": [{"partyID": "XQ0LFKqYgNWWxtsO", "userIDs": ["C0OtIWwPiSyV7ycu", "HvYFc7ioYb7P2XLP", "XMepoketUZsushVR"]}, {"partyID": "0s1jB8MBtUij3HEZ", "userIDs": ["mpSgaTWCfRpKu6mb", "qqvOtZyU7nFPVr2R", "wssKDcltOyIsem77"]}, {"partyID": "OcuaLNXWQgTvacQF", "userIDs": ["P7N1HAgZIXlWAAsl", "M3BTtVKqVG9V2k9Z", "R2QDlTCfeZm2hkNR"]}], "teamID": "yC8lrZKguecStMgV", "userIDs": ["xEcEZEKHtSAkmmkG", "Z5spbXjw4m3aH7jN", "CxSOLs3AEZam5TKG"]}], "textChat": false, "textChatMode": "NONE", "ticketIDs": ["65rUTdcpCJZQCXWZ", "jj4ZPYL3XsV11efr", "7IEu9AUwFdJ3M12Q"], "tieTeamsSessionLifetime": true, "type": "GiYtdvgzgjYHD4pf"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"Skz7jSRnivAASjcy": {}, "Wm5wUAx9MmJhmzp7": {}, "OaoczDumFeUFZsLK": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "3iQgJLZqEjBKjHTp"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'wW7CXt5mj1twhjW5' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'amHF5hmEjamXkcz5' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '9ywc3P9mIUUlGWsp' \
    --body '{"attributes": {"ED061LzuAXtOalNs": {}, "7UtwAZXxn4cNnwLk": {}, "JbHpWEZeNPmORdCr": {}}, "backfillTicketID": "EOAwxkaHSNkO09gz", "clientVersion": "wJ2Pb5gtePFqKzH8", "deployment": "QH3FvcirZkNfqVe8", "fallbackClaimKeys": ["mMEneQywbUsfrXQr", "4miIAAaWac7B8tYq", "LuMZgT7gvs0e3L87"], "inactiveTimeout": 54, "inviteTimeout": 9, "joinability": "Zl5i0Fgv1BVf4usH", "matchPool": "xdJ9WadZ038cnOnF", "maxPlayers": 30, "minPlayers": 16, "preferredClaimKeys": ["7E9V2vPs0zWzjf7I", "zOw6eUGVIiLFmXRz", "6CCRtva75gTu4jYo"], "requestedRegions": ["2MjM0bC3Iva7EqaS", "NWleuOUADeb3n9Jg", "BnYViKCysYUfitQD"], "teams": [{"parties": [{"partyID": "3jzrQ6LawbAYOb6A", "userIDs": ["5DrM7Y5RAPHhedYO", "pACO4uPcBcTLLjvw", "sNqg8nnt4nmuK6As"]}, {"partyID": "9U28YNB4qJ7PlKpk", "userIDs": ["CNnh3MHrNGTRTOCc", "FrT9N8OnKJtY5emw", "66d8wjwwA2dTxweH"]}, {"partyID": "gKBtP4BiDoUU87Y6", "userIDs": ["CBvrDTKx2AU1Zdp7", "1T5yXU6qg27SUA7d", "VtkGY2IjIjz7Ozbi"]}], "teamID": "Tn3uVlyQEq84xmMd", "userIDs": ["LkTIWxSQ4Xz81U8b", "gEywkgA0HxDHqYye", "5IulxiAq95okd8aC"]}, {"parties": [{"partyID": "Wh82YP7UDvagX5lv", "userIDs": ["KgwLqYrkRhA1RT41", "5jXCiekZX3VVYSQH", "YIRlv74hxlJouEbi"]}, {"partyID": "rdjrW6y2sZi79pxm", "userIDs": ["6gyV5hnVYrmzosM6", "DHGNdSEa2j5FK5yn", "9FQVxS9noCM0bApI"]}, {"partyID": "IELYmCeUgpibYXmC", "userIDs": ["ZlebzVNFGemHfMuc", "XLkt4kbdfS7PDFH5", "EZe1ZS2pvukNlR7K"]}], "teamID": "ZCQOCoKCfpfnvz1P", "userIDs": ["6LydUS4InxIZfZaV", "XtuNds6vQz8yP1NV", "GeGMwJc44P8zspy8"]}, {"parties": [{"partyID": "yAEreKYnoS0p1DTi", "userIDs": ["fDcLEvZI4uR8cNvX", "zRtyo3zGj2JMTPT4", "lKfYrLOITWKy8Lnl"]}, {"partyID": "wlCGMgXcbwptegRW", "userIDs": ["Uv4XNifmQAA5qsuK", "U1p7JSc4jIUbrk4A", "XA88oCNXsvGWMmpe"]}, {"partyID": "RxxmkxjMPmZpAIcR", "userIDs": ["wD9hnV0mlen2vP1P", "Ghw0L8EFsZ8LLl42", "Vr8Nto6up5aqbmoV"]}], "teamID": "7Vb49I19vl25yY1B", "userIDs": ["c6aBsxyOPfuepjXx", "I2bIPYMVEPaiw48m", "m9C6YvYrNLkLF63h"]}], "ticketIDs": ["yL4258zR0nSJwj3B", "a2JzV1lXjOLnZVTB", "Gi2bNOVTHRSWAwHD"], "tieTeamsSessionLifetime": false, "type": "kvtTROFhzYwRYt2b", "version": 46}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '2wjjh5TPV8RpYiSD' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'S6YTp6TfCqzJsmdq' \
    --body '{"attributes": {"Dlxa7DTWXaZUpwyF": {}, "O21ljvDafIqQAH3k": {}, "1c8rznBKh2N44zVI": {}}, "backfillTicketID": "vIJqbscY7bg0FVRU", "clientVersion": "K0IEb8axwIFtC2aA", "deployment": "avgeSMiS10MVON3v", "fallbackClaimKeys": ["lAnjYoNovAFzMN3I", "JPBnTppR7ExAVcTP", "KSIGdd3U4D4DIYPe"], "inactiveTimeout": 23, "inviteTimeout": 44, "joinability": "iMd8tmBYPpe2kb9v", "matchPool": "1tNsHCNOiWMuivN6", "maxPlayers": 47, "minPlayers": 50, "preferredClaimKeys": ["2mtDpOeb52wmlViK", "ChGjk7Zv6nUGP6C1", "CurLb47OHOb3DlZD"], "requestedRegions": ["dw5Kf6MDx7binV3p", "RX9eX49qMnFeIjVb", "W7Pp5pGF4CAq83Iy"], "teams": [{"parties": [{"partyID": "6JpMvmMZKCudCd5E", "userIDs": ["Fl2FFWLx6kriFDso", "a6pQBZc6M9UT9Li1", "HiuPG59CkLeL6gMX"]}, {"partyID": "j83l5fZAjDcLDxKg", "userIDs": ["hTXJFXHK2mHHnyz4", "p0eqWACm7HrnpVID", "hLblTQzRTBIMiaC9"]}, {"partyID": "7tidmbHj4fDioTqk", "userIDs": ["Msrky0mrf8hK3rCs", "m79dprF7Y3DMZZOz", "H8GMUonNMqkfc9kd"]}], "teamID": "Sxi5qfg1XXIokT20", "userIDs": ["JeTmBDyTqPIjTZSk", "mRGig5xT9ge7hehF", "sMQp5To8d7YR6GuO"]}, {"parties": [{"partyID": "TJAke7TVrOn7bfUx", "userIDs": ["NzyMxtmLkFGCsY2F", "AUSEF88NdwWfyFvQ", "GHpg5mmc4VDt3NqR"]}, {"partyID": "YuPNBpJfnqnaiHmO", "userIDs": ["Og3Ul6PgAkfLpkpb", "jCHx7naWFJ04Yaxh", "SFpX5ZkP92yTzdNN"]}, {"partyID": "bGv0BM6UQ2F7XehS", "userIDs": ["u8LDUYlh5PW2EocZ", "bf19oXfucoyf2BMM", "jQFuMfFdefVKRcW4"]}], "teamID": "7qd0eFq4RGOy9qCw", "userIDs": ["89lhndSvEOGz3nIT", "qycl4opm0sTCJnNB", "j2DOPzvgS1en961o"]}, {"parties": [{"partyID": "SqUyIu06YmH2bOyG", "userIDs": ["lVfybqaBvQMaxIn8", "uP2epC9mFhrGe4r4", "NDHscbLZMoSKEzpY"]}, {"partyID": "K0LuEE2ARRfy5rx1", "userIDs": ["yYJkqoTmyqIsKV5C", "shm1uYjjiKek7fGw", "IGSRLVb9kvAbvidd"]}, {"partyID": "jHmQW11aWmbuVCVD", "userIDs": ["m3jmJepN4P9AmJvR", "EU0yXKN4a7ilbMDG", "Cxc347dxUAwblBA3"]}], "teamID": "hwUJEHY1XImXSDJV", "userIDs": ["1pz1wQBJCvke4o8R", "d0mELOSXZk1KL7uk", "E8K17PSM5jEVGTeQ"]}], "ticketIDs": ["fcEakBvnfyv7RSin", "d26iDLvgKf3a3H6g", "cIlgjQWuJjT2dyDh"], "tieTeamsSessionLifetime": true, "type": "xSTbpGAyl5GsAFAz", "version": 23}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId '6uDzsaCZEnBFPM0P' \
    --body '{"backfillTicketID": "CMoRhtmdolSwTHDZ"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'v1I69TVL0nNweScr' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'qYHs80CgZsnauk23' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'kAqKnTvJ8lZzXJQN' \
    --body '{"metadata": {"6TtqEZlLHcyavzug": "8bwCNt8Oa4iPiVuL", "NrOoPSNm594roCMz": "JCmE673P3NdLtwjT", "yQhsUmwX2LZcin2O": "1VO49PtaNh6dx8Rr"}, "platformID": "TPmV9uzihzE7PR2i", "userID": "hLWggIGxWEd0cgLJ"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'WqZdxM0L3NZ4hwgE' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'kmNWx0UIuC5MinYg' \
    --body '{"leaderID": "zGLg5wYHziR0D4Nh"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'B4ioA2UBPAqvNtXt' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'M8nPAMvlbakn8B2m' \
    --namespace $AB_NAMESPACE \
    --sessionId 'bpHOs9GvA5miPIfZ' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'tXh9mG7T1agSu61w' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'kI36Wg9ud33ukowY' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId '9lfVFGzhAnkmtJqb' \
    --userId '8oBTMeBtwKNmV9MR' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "flGidI8714UxYauv"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'k3isXLTQEUpjfEYZ' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '6RIRUXcKNOq061D7' \
    --body '{"attributes": {"usl7b9W1Dcm7KTYS": {}, "ld2dStV4B3QGI2MM": {}, "z84hWBulwWgjU1JB": {}}, "inactiveTimeout": 31, "inviteTimeout": 7, "joinability": "tyE5XVb9zUPNEyw3", "maxPlayers": 88, "minPlayers": 30, "type": "KxKODWhrGyyNS3V7", "version": 6}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Qs1zP02FaFAbPnO5' \
    --body '{"attributes": {"ZDSBWksl8viCkgN8": {}, "TZJ1GSfxlj58BvKL": {}, "FPt2ctupkpJbpcfN": {}}, "inactiveTimeout": 74, "inviteTimeout": 79, "joinability": "mBXxTtSrbTw4oAZ6", "maxPlayers": 9, "minPlayers": 78, "type": "iT63AHUTMSqitf53", "version": 96}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'EXgE7bNgDJfKuqTQ' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'ypzeRs64h8rfmctC' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'BsRG3pgrzGJeKCmG' \
    --body '{"metadata": {"15cuPLpii5n5jEm1": "TcfpLvkLU54iZDg8", "Y4eU3KmyWBwkim4W": "wTNjPCD0PkXyrqAl", "Qj81yyic8H9Oucwo": "9DRLbIOJOBlL1el5"}, "platformID": "NUorRahels4OmkOi", "userID": "Jn83vZlaUvLu0Wl1"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'Z7LULAP0ac8Dg6ed' \
    --body '{"leaderID": "Eg6hDu2aGNpfhd1d"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '2hijRp2Kx9xxpC8h' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'I7ec7hdw1IH7w6uR' \
    --userId '6VvVbyhK25cRrs6e' \
    --body '{"MV8pNljH3Ko548B5": {}, "qLz60qGNtjOdfqEq": {}, "NSmmOoWzqXYAqeUL": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'DMMOm30pq0WLldy3' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'NelAQE0FMFqAf67c' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'FFF0gZ9PEmM1POYb' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'hCwM8zmbZ8FYxYZy' \
    --userId '54Nbr1UN1QnBdpVy' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'vwQHPX38SVrivwew' \
    --userId 'waOLkDz9eLGDPj56' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"uQFSquFt8Ajjr0Be": {}, "XIPlZXgP5SrCm9o4": {}, "U7Fv1MwkSF9anpUU": {}}, "configurationName": "Gf260kxKalbPLI23", "inactiveTimeout": 20, "inviteTimeout": 31, "joinability": "t1nmBuMpp2wjexGV", "maxPlayers": 12, "members": [{"ID": "cKh6G89TdWXSggKd", "PlatformID": "s71X9weip6pQQffS", "PlatformUserID": "Rs4fDGBls6ii8KEd"}, {"ID": "LoGQ9kqwP3BLrx30", "PlatformID": "VWsXKREokoaDP69S", "PlatformUserID": "15O4e5CaLaLgP6m1"}, {"ID": "QxOW7ON7h0Y0M0nw", "PlatformID": "GZITRLHmuBd1XUBJ", "PlatformUserID": "5OTwlTMU5DZuMvu6"}], "minPlayers": 46, "textChat": true, "type": "g9IfBYwLHnpNr2p5"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '9KgRPWAVxfEqaGPa' \
    --body '{"5jA7B7VIc6h0Uwoe": {}, "K1UwdDWHdrjUlQ6i": {}, "vHXeJxxsJVth2on7": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'MZDqg7rHjLxqziCr' \
    --userId 'gkr4DgSiA2U0M2lA' \
    --body '{"x6I1n6nwMtwqHeCo": {}, "X3tgv9nOjpAeHWNj": {}, "ijF2FCjBSINCfVxt": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["9VViPDtCsCf61vIr", "CkkNlfUygs6tTg9c", "j1HEj1N3F9MHuKeK"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "c7GU6aJj56ewHt3S", "data": {"paRn8d2XhLo4no3m": {}, "WOpLUnpz22ZddIkZ": {}, "aPPQRFlrs6MYC4mM": {}}, "platforms": [{"name": "CzFimTEo7kNDIxGf", "userID": "wHUqtGhx75Gr3gYo"}, {"name": "W8jEYtHeCA4xSKq0", "userID": "RQHsngeDmlHOok1w"}, {"name": "DtViZXg4ZQHJt9D6", "userID": "qJAt2H7toMsfF1Jw"}], "roles": ["4Zw6Yn9ZmOa98CG5", "2oj8rbRcCAOJruK0", "W1yzafzC1WHrxvSb"], "simultaneousPlatform": "M5bj6d7KhPmJ6Bo8"}' \
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
    --order 'zSvpHgSMthycaOYJ' \
    --orderBy '9ghcP3R5etmOsxCW' \
    --status 'HjwlkMGrffblibqQ' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'xozxNvB5IpnUysfb' \
    --orderBy 'RNa9efc1s0E9xqeb' \
    --status '9mDlJReOVqqJJQ51' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE