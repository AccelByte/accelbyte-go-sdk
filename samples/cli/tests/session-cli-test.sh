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
    --body '{"metricExcludedNamespaces": ["8x0tYowNnxxtt9PO", "kal8WAOzA8Ni2cL5", "drlyNry1qVusaHkr"], "regionRetryMapping": {"lAGm6SfkoXNAfcZ6": ["TmlhtN4K5eyfhyLS", "osIrmXE2FKaoUQxZ", "o9iqpDUZlnsBWrLk"], "qKGr1DpxOT2z0WDg": ["bKJe1Ee4WDXZ685E", "Wo5Z442SFN4FAhjU", "9ydMhxsjxVlyS6YC"], "xRgThOPoBs2J2DLi": ["3VExlBc8iycCZtyE", "aTqo9lEOgfJwsm7r", "fgc9MjZNRZrndWvZ"]}, "regionURLMapping": ["PyVs1UyXdoeNQsfE", "1dP1G8T1CaNKbEr8", "bOTTqbXrb4Yu0zIi"], "testGameMode": "asyrbdWb6boI6ZGg", "testRegionURLMapping": ["8CiojFY21vGVOcqm", "rMwQ2q7rftCzYN0q", "TxaaBHUI0Pofa5cP"], "testTargetUserIDs": ["eIZekzYgds29CFVS", "KB32bYmZtbwb3mue", "lfem8uMgSKtwRcEp"]}' \
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
    --body '{"durationDays": 21}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 84}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 38, "PSNSupportedPlatforms": ["mahOWwL1Ih1TQhUT", "ZSEWhZVDmmwCsIRH", "LMRtB0A0pWvQ2f8k"], "SessionTitle": "LyQ2z13fFTUbAHzA", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "Wa06FecXMi640LNP", "XboxServiceConfigID": "PnZLVd9xrNAfAyuH", "XboxSessionTemplateName": "8YC5bh4lNSxRxFmi", "XboxTitleID": "LLlykzVNvQpfT2Du", "localizedSessionName": {"4RmlNYddGJo25WjG": {}, "3vMAqMxhcYkX4mMI": {}, "IuyoF7eoHaF6ik0y": {}}}, "PSNBaseUrl": "MPXAqHuotDGDPCkE", "amsClaimTimeoutMinutes": 59, "appName": "Mlvfz5uGyc5hyaIf", "asyncProcessDSRequest": {"async": false, "timeout": 91}, "attributes": {"V0C2Sd6MXBKP97Qv": {}, "tR7oTppe4bMeJ2vi": {}, "yswiTeeXNsQPc8DK": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "Ilbi6Wvi2ah2MixG", "customURLGRPC": "jHderBONEyVUYmQB", "deployment": "xZjYjZZeDNzECS2h", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "qEBZYuiRCMP3emSg", "enableSecret": true, "fallbackClaimKeys": ["bSurqu9TIElet35O", "c4V5Uu0UJNTQR8jY", "eSZl6Ymsq4loYVeC"], "grpcSessionConfig": {"appName": "WEO1zq1iQu2voB1s", "customURL": "yq8hjIoDAmYwWSl1", "functionFlag": 69}, "immutableStorage": false, "inactiveTimeout": 68, "inviteTimeout": 36, "joinability": "FRIENDS_OF_MEMBERS", "leaderElectionGracePeriod": 5, "manualRejoin": true, "maxActiveSessions": 63, "maxPlayers": 83, "minPlayers": 71, "name": "9wKQy6DwqMqbXuIi", "persistent": false, "preferredClaimKeys": ["2Fw8m0tLNYNc5RpV", "OgnrAmifJMBW1otU", "hzxT7LftIMmZiKS8"], "requestedRegions": ["S9U1VLg4DYxeJXAK", "pdTWLqTISqT42Hnc", "iLVB5ShPLO8DlhOg"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 44, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --name 'YRzPTaNsQj13IHex' \
    --offset '87' \
    --order 'fl7HMbowN9xDNLho' \
    --orderBy 'yqZxKYaxeOEExHL1' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'D28bfMEPoo18bUej' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'abg9ES5GuMAMdiGK' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 7, "PSNSupportedPlatforms": ["jZyHYThxwEFVBNNY", "KyrXhWVkGugqNDKZ", "AYt5WYH6n1C2ujFr"], "SessionTitle": "UazUgfmAAM2ceoV0", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "8icVTq3GMqbwL3zC", "XboxServiceConfigID": "086YFRTBIyqIzuor", "XboxSessionTemplateName": "nnfPOY7EHgbsojVr", "XboxTitleID": "nmMg0A9Fj4e2czDi", "localizedSessionName": {"qGLjfrAVYcDt9Ze1": {}, "7hDXHHE1CqLouuIj": {}, "m4cMPqVSnppgYkIY": {}}}, "PSNBaseUrl": "X0U3m7kPQcgTSzkX", "amsClaimTimeoutMinutes": 32, "appName": "cnUnfy7nDbm7eFOz", "asyncProcessDSRequest": {"async": false, "timeout": 3}, "attributes": {"6nxe7HaNhRFjKSSR": {}, "tjRRt8k5dXFioegQ": {}, "VTlQkVItolFCJQeb": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "gOQhx5XOsbJMh08g", "customURLGRPC": "ankgC4jy5m67Ksny", "deployment": "r1DmSxV2O80r9CJj", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "buwr1F45HyMrwNm4", "enableSecret": false, "fallbackClaimKeys": ["3CQYXNqDUixdCMv4", "xVnHcrk8zd64bBQR", "UYGFAeVwj32C3Z0m"], "grpcSessionConfig": {"appName": "DXPbkUFOOWgMDmW1", "customURL": "XppPsSimexNuMCGL", "functionFlag": 69}, "immutableStorage": true, "inactiveTimeout": 54, "inviteTimeout": 65, "joinability": "FRIENDS_OF_LEADER", "leaderElectionGracePeriod": 42, "manualRejoin": true, "maxActiveSessions": 6, "maxPlayers": 73, "minPlayers": 67, "name": "Du2RDnVJKD5Rpv9p", "persistent": true, "preferredClaimKeys": ["Jl1a4bgiIaFtIFiN", "8dpqA1g6LK0vPFiB", "zmYy1rkaip7N38Qm"], "requestedRegions": ["bTYrazlUcWdZFJYv", "jLXlo5UgWW29wseY", "McHIshHNiXNlHCxI"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "ttlHours": 91, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'vboygQL86FbzHL4E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'Z936AXiqHrlGCPo5' \
    --namespace $AB_NAMESPACE \
    --userId 'UxyWwkh5q1YqXAFu' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'ufGxDjz7DrWfQXvV' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "CzExKqHmBuZrptgD"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'kEgYgW7MgNGqEHYh' \
    --dsPodName '9aE9iUXWIXYN2gS5' \
    --fromTime 'ZjFQz74pmB4WQ3aW' \
    --gameMode 'OBS6so7NO3aQdx4A' \
    --isPersistent 'zkHqT7W6M4TsaCqL' \
    --isSoftDeleted '2P42duWOTLU77bma' \
    --joinability 'OPEN' \
    --limit '56' \
    --matchPool 'l3OJAanJcB4emAcG' \
    --memberID 'e2JpDi5QOibZxMLG' \
    --offset '43' \
    --order 'ra8SNIc9ooBZ0tpw' \
    --orderBy 'D7BaInujuhEx0sGV' \
    --sessionID 'e2Q5opAvlETJPRYc' \
    --status 'AVAILABLE' \
    --statusV2 'AVAILABLE' \
    --toTime 'BAK2uM4SrdB5v0Lo' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"7r0arYWEI9ZFQcuz": {}, "a5wSjsG2bVNHgY0V": {}, "zXINvsiWTpedpxFM": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["D3rQfowSO4nJhjZu", "OjddFDjTLIkb7D3t", "b5fKLCd312OzAkhm"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'shLejrdmLwFdCaH5' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'JZK7tLJqtnP2eZWH' \
    --body '{"createdRegion": "YHBeGM05T3HAcjtb", "deployment": "YO4eqXjRrlDFWYQZ", "description": "8Wd1N8KhO2RM7HYh", "ip": "Vo5jD1FbQcmarXwc", "port": 69, "region": "7jmvZ0NgEH4b0dNz", "serverId": "FOeckWqKuPJWomdt", "source": "RWswWkw0OYR1MtCf", "status": "COwVO5dxBvqi4XKK"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'bkCDAuMjPEmVdnX4' \
    --namespace $AB_NAMESPACE \
    --sessionId 'Y6jWwc4CMgQkRfJM' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'SlROONTUNd4GPtxS' \
    --namespace $AB_NAMESPACE \
    --sessionId 'pQOl8OYp0anoJItN' \
    --statusType 'ZqgvtcxmG7qlbTym' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '85' \
    --order 'bXng1mOp2ScSxJPE' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'NAe7DemFdusuaPAo' \
    --fromTime 'YrSBFYVJOzQQWMh6' \
    --isSoftDeleted 'Iv2jvPY1WKr2fOlP' \
    --joinability 'FRIENDS_OF_FRIENDS' \
    --key 'fDgpqEQtrhvoKNZ8' \
    --leaderID 'JxZEtaSg1aFoU84r' \
    --limit '91' \
    --memberID 'Lrjsg89vEZk4ZGTP' \
    --memberStatus 'LEFT' \
    --offset '28' \
    --order 'vcA5ZBq4JXEVtZYk' \
    --orderBy 'a6kjOyc3q1Ucn69e' \
    --partyID 'WwP0noqBXSXpKMm9' \
    --toTime 'Jl3W6tSVbv0ZpAGb' \
    --value 'IAeCmQoYerdEDDuM' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["JG3bIa6jTGqiRPXC", "IDAT1dZpHCGtcpH1", "SeRrK6SdnJSx8BrK"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'BwH2sBYsX7eceTxh' \
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
    --body '{"psn": {"clientId": "dVfrHZvevWWCRRXm", "clientSecret": "TMiJXaFh5GprsPY6", "scope": "TU5LQV1FuS61w782"}}' \
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
    --limit '100' \
    --userId '65rnYiJ6Kv2hsFqg' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --userId '6LJpJQgPzmYAc8p7' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'SuhxnwK3Y8epzhxC' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'wDpWkutH3XGgHN8X' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'OTjBfLE2zS06iwJQ' \
    --userId '03MLpl1se17qECvF' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'rWQivBvexKEWUvvy' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'umxTEUV9xiCU1RyA' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'M9dOPaWextvGbsav' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'true' \
    --body '{"appName": "T9XavcgzQnIWQfW2", "attributes": {"M8q7NF3IPlNY4km6": {}, "HmEHOBcOoQNm9y0F": {}, "kpGTCrQae5gK03bB": {}}, "autoJoin": false, "backfillTicketID": "6S2xNmTxFQp53j5V", "clientVersion": "zhekAdjAPFUqe3EX", "configurationName": "fX8VyZJUWHt5bYkW", "customURLGRPC": "RJL76AUTiSMHrpZe", "deployment": "xr2jF58BjvIrnxgw", "dsSource": "VCWjhgTAqi5VHuSp", "fallbackClaimKeys": ["D4ooXrOsbc1Vtum0", "3vyuPGojaJ3u9rgD", "ssOwIwVkHB7CMQbJ"], "inactiveTimeout": 80, "inviteTimeout": 76, "joinability": "INVITE_ONLY", "matchPool": "ZAokoF99z5AV2GTa", "maxPlayers": 80, "minPlayers": 93, "preferredClaimKeys": ["BvwBbEdZeUdDEBEU", "FH9bWgBx3bW6jNXw", "kOBCduQOKbUuQyUR"], "requestedRegions": ["nKmp6bXeLPdhi1Rs", "Kuuo5yZkKPHXBBQt", "yICTEmYvsebQJWeQ"], "serverName": "tE1VjZGQMM6EUx1S", "storage": {"leader": {"bmlsHIP3SKaa0gfc": {}, "xVD5GdAM4KnB8MuL": {}, "ukk5WsByxRPWMzKw": {}}}, "teams": [{"parties": [{"partyID": "BwFrvI2QH6J07mxQ", "userIDs": ["rYGWQhxdIsZbT70y", "cgTUfTsDrzE3OApK", "qlu9om5x5M33F9vq"]}, {"partyID": "FKtnoZ5nsgZsK8ra", "userIDs": ["0zRX6Xi783DqtKnf", "DAVrpUEyAPBIY7qw", "CF1iep81JnkuocBF"]}, {"partyID": "mY6mlOQNbcxvMKqz", "userIDs": ["nsSW5pgoDOMkivgW", "2IvkxVhLADFozbuw", "KQzz37MBDmXe8nHo"]}], "teamID": "ZOIh4ZzAWPiKkOJA", "userIDs": ["eW5grjGr5LcA6VUh", "ZLMMlvejol4WbkY9", "tlK4hCvnBKUyxpOh"]}, {"parties": [{"partyID": "OAjbzA4I3xSGbvrX", "userIDs": ["WMhKgwCIjb4iNe7S", "OYjnRTTZp7fH3InQ", "u1nlnvaFDaMQCKYF"]}, {"partyID": "DqJLcg9CGFO9xF4w", "userIDs": ["3lqY7tVOjRdkeBkg", "rMm9mseWQ6IPoCgg", "gZbCVVfzkGI2QDYs"]}, {"partyID": "J6okgd0jZZPnuRIf", "userIDs": ["JWxHgdaBtunPpqmt", "OsbOFi1hfrYVZeR5", "MHArJPPOiuMb5X57"]}], "teamID": "YF3QrZdaJGkSWX1u", "userIDs": ["HiFkG2Dxlc2iW41n", "DKDUHZ1ikazDWebk", "wOf5WEjgCuRpDsJa"]}, {"parties": [{"partyID": "I2OKx8CcBBQoOqmw", "userIDs": ["m0kXv93Co2X8Odmv", "oGHPWxHMXZDTBO15", "L9YFN2wNm2EpsIzH"]}, {"partyID": "Vvi5d8hGBMCkB7wc", "userIDs": ["TSX102aI5rPbYtu5", "w7gwlshvqnm0InoS", "V0dspywcl2RyJu2K"]}, {"partyID": "vhzlaqcNoKzgE0qL", "userIDs": ["9iiBirgvpTcas2cd", "TXOZchw4K1KisxwV", "sAs8Hp4q6LQvk5lP"]}], "teamID": "zfbFh0XSnByKKM06", "userIDs": ["iT0rN4W4jvKJ9NhB", "c2RtdGdzIzR11h93", "esFdcg78Prkhr3qk"]}], "textChat": true, "textChatMode": "NONE", "ticketIDs": ["5IzjVrJXgs0EN7XK", "NbZxy8GiTMfJTqhk", "DDbBRKxQSYL6CLh2"], "tieTeamsSessionLifetime": true, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"gG2bweRAnJdVxdtP": {}, "9KasyYvybCnnXSts": {}, "FH61YNStx4YFniT2": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ctpU0c0VPi5hYjyN"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'obwU2E5QcLxjPZJz' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'mGQy21FMI9rDmTGP' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'oPIxLuH7JY9uIGun' \
    --body '{"attributes": {"tOYc8jGpWBH0L2L9": {}, "R7wGN0r2d3La1vg0": {}, "iDs3e7L5VPOa4ske": {}}, "backfillTicketID": "IkNUHyxZElDsszes", "clientVersion": "88LHB7ZAtBUWXYXT", "deployment": "DM0D1h5jrwDTyolR", "fallbackClaimKeys": ["qcTVPKgt7tFsAnoQ", "aLLT7AWcsId1T1JY", "zshf4GW5fbInmkmR"], "inactiveTimeout": 81, "inviteTimeout": 76, "joinability": "CLOSED", "matchPool": "3nwWR2OEeQzVH3v2", "maxPlayers": 35, "minPlayers": 10, "preferredClaimKeys": ["mZ8Z0UkyjyqtWfB5", "OVDvl8OY48jCG8JA", "hv3I4twSvuhOghDJ"], "requestedRegions": ["3GQyQYCxdH6TX2sA", "1DojjfddoA6c9Ll5", "nbVv5A79XTK60tsg"], "teams": [{"parties": [{"partyID": "iKXxzDIVTWPA3Jfo", "userIDs": ["JW8mKU34dcIC7GfA", "lTS4bId538cqBVgn", "hGOd382HfTHvMDH3"]}, {"partyID": "ex9oTE6nB6txzZp7", "userIDs": ["KC9y3m5KL4m0zPIM", "WFwawZD1CHRyECXO", "WMuOs83aRzHLBysO"]}, {"partyID": "elgL2Zw4XZpenhfs", "userIDs": ["Kf4A6z3BqrSGHDf0", "YerIH3G4wBDJn8OB", "oGsizGS80puBXgy5"]}], "teamID": "6sOVoqHIdCIugNiB", "userIDs": ["3ylxHanFUNtEEr31", "Bs6YnJO38VlcJnO0", "8iOTdXbq6IcK5e1p"]}, {"parties": [{"partyID": "N4q2oNdSIYbMSyFb", "userIDs": ["VsrPlnZfJ8NsgWfL", "7YykIfKEoWw7vuZh", "kzmQAJFK26S71QRy"]}, {"partyID": "3ACDI9NzPKbknqal", "userIDs": ["ZgKcBUiAsMXyCAS5", "xqUz0rEfkabUUew7", "oxIMuRVTW62S1qb3"]}, {"partyID": "xtaGaKDOlfXaoySQ", "userIDs": ["DoKtbdpTu7HOuxkv", "qNkyOM8ZvLnZLZu6", "xVj5UhnOwszr3j6e"]}], "teamID": "R1mbICl9Ed5Chbt0", "userIDs": ["RM6AHtTL5aI4RDDe", "tm2hSK7v2lgeEQI1", "jcuNfeYD90vGw5Yg"]}, {"parties": [{"partyID": "JuPCvcdSFC5Cs2iq", "userIDs": ["cgtvDkXx3NKxBGpa", "PvfRufJTkT5lNgBo", "FTByWjCPDenyeWY9"]}, {"partyID": "71DG0n4oBpOUpJpZ", "userIDs": ["Kt7EZgZFnH6Pccmk", "NmUdQt0iRwDJIRy7", "supf2RpDIO21yVAr"]}, {"partyID": "zIwkUBVYSmDNN9jP", "userIDs": ["r53rulxlrt60kHFp", "t8CZO8GMw5IvjxRj", "nZN5rqJMnpPZFwAM"]}], "teamID": "cFC02oyWxggpb8nj", "userIDs": ["96ZTguVJPaDYQ9Ex", "1KqXpLRrvIMO9jON", "6tjYATPAgad36TOo"]}], "ticketIDs": ["eckB5v13i4xTPSW3", "6KiqgJKNS1tX8E7L", "I5BEftYzNgiTqdCB"], "tieTeamsSessionLifetime": false, "type": "DS", "version": 21}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'orHuyKbLlHn5erSI' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'VaXqodVBu6qRH73A' \
    --body '{"attributes": {"t7DcYEBwFfOmAhMT": {}, "YxfNdqsPHaLKTMVw": {}, "iErAXIuxP0pboDg0": {}}, "backfillTicketID": "xCwcQnANZDg6qKNb", "clientVersion": "xMqvooKZ01RMfNkr", "deployment": "mZMKdjy9rp8RXCNT", "fallbackClaimKeys": ["tXZVVd2urT9I2PjY", "jthS69mNGfJQRRZs", "sQyLwxJHkLGmsvGl"], "inactiveTimeout": 32, "inviteTimeout": 51, "joinability": "INVITE_ONLY", "matchPool": "SCWntZwu64dJLEli", "maxPlayers": 83, "minPlayers": 30, "preferredClaimKeys": ["16vXCNir9f8GXMua", "zlduZSU0pDnjQEhu", "qiqdXV2r2mdUSlZn"], "requestedRegions": ["FBLPGFDp6rou58jO", "GT41hvF4LybKg41e", "kclYunrSOn0pgfqb"], "teams": [{"parties": [{"partyID": "SSUzXGVh9QWNVbkH", "userIDs": ["oXrjyC7GyXZ0fAwc", "gzUXNkFPapxuYVrO", "xrxXoYUvEXP9spww"]}, {"partyID": "ExM92KcWXlG3KW6G", "userIDs": ["uG0jx4XRDa7GEkZh", "9YdrWW0ijnjS3KUe", "opQeKZVPllZKjC6A"]}, {"partyID": "7itxSUVJMQqBf8FC", "userIDs": ["VWvHZmsPYLRf3hu0", "bj3NfVHgC8ZBhDQ8", "TERd4DPsqdhG2dOO"]}], "teamID": "KS9OJ3TC8TA5wcaE", "userIDs": ["VLB71x20jyMS5VKO", "WHl5470jc590yagD", "V3T0EqCyX69ssa1a"]}, {"parties": [{"partyID": "WxoNWCoOg53tyzIZ", "userIDs": ["QAj7XMAg7GY1iuoF", "LqrOAccAxovhZfro", "EkMeLo2OOJY8eaG6"]}, {"partyID": "iYlho0MfcajQ9soG", "userIDs": ["Wc3yiv7XRKPV5gne", "s45PLQFvcHYyw4n3", "uG4KFhXE7iv51Bxv"]}, {"partyID": "aC7jxUKh5F3tgjmL", "userIDs": ["mMbnsyGSXxjtB3Z1", "A6cJGgelCElym8OI", "x2nYwBq3c2ZoAj2o"]}], "teamID": "pY9GkNCKyFoGxorI", "userIDs": ["kjGUy4GX6Hzq5Zxd", "ol13Gjy6lJFCakvt", "yWUvUkkw6JrwBPWc"]}, {"parties": [{"partyID": "eUOvlub62wk6etmR", "userIDs": ["dHkQaV2JkgrFAQne", "SLfGDeU1k2J6Np3g", "lQqDx7sxl2swS5Iy"]}, {"partyID": "LdHf8n9blr2tPVHb", "userIDs": ["AL9xtF3191Hkfum6", "jAV7H12sPgDGcg9s", "S7tcqH4VXbV2iTSs"]}, {"partyID": "epZapQEvGP7dcte7", "userIDs": ["3yG8Zop3HXBx1VMv", "H5pRJ7qjrKeWYTYC", "024zowRU1qQTp4OO"]}], "teamID": "B9CQWJIZvfEiyGax", "userIDs": ["Fk3UsOBJs4kDRDOR", "1DuoN4F5mAN6IOS2", "Z8uIWFICAf8vwPEf"]}], "ticketIDs": ["c0RC3VKyQQJxYngQ", "hpoFFnLIWyr8s5ME", "0g2jrlCoIQHlzKuZ"], "tieTeamsSessionLifetime": true, "type": "DS", "version": 37}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'enjNhsHgaj3V2qnk' \
    --body '{"backfillTicketID": "bKLC0m4q12Sd427z"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '5XrOZjlrqsDvqQqC' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 't88Xoj5gJAP5ke7N' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'vvVmxjJVZ7ZxikMB' \
    --body '{"metadata": {"dHAfxG4eujhoOQ8B": "YVAA8OiC7gR370SN", "Qw4ZNRoV6gHz48hH": "63fhi7LBFFRuI31K", "11QMDPrVZriHpQB5": "79CWWycjubgrOais"}, "platformID": "oeuX9qgDVgCannCx", "userID": "D3qNASBZiIPl2XNE"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'sJgb5ovtjfNrBrgd' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'cZpTgZlt3a1zOgGi' \
    --body '{"leaderID": "EGc8Xrsj37DiSzXr"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'EC79gmUcPjlrbFdc' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'U1pBgWsgtSrv82AQ' \
    --namespace $AB_NAMESPACE \
    --sessionId 'r5Jc3pn8yHB82jBd' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'KXMBVW8Bsc0BmAdF' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'yADTh112tof0vNr9' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'dGgrjhfOkSEOY1XX' \
    --userId 'Gu3iqMKLIuQAL89k' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "t5Tc7S61eYsMkCTN"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'A1mepnRnakAMKypS' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'fqtndtw7b9UNvdsa' \
    --body '{"attributes": {"jiMlQjKNCoUBnaku": {}, "WLxViwwQlq6r9VfG": {}, "W6qYkVQ6CqsXWGXT": {}}, "inactiveTimeout": 30, "inviteTimeout": 85, "joinability": "CLOSED", "maxPlayers": 83, "minPlayers": 10, "type": "DS", "version": 70}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'JlDST8oS9uPAsRWy' \
    --body '{"attributes": {"sKvi31nAnTi5KSaA": {}, "8efYtycPXVo8QL7K": {}, "LV8u2iykhmY7YuBt": {}}, "inactiveTimeout": 9, "inviteTimeout": 82, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 40, "minPlayers": 17, "type": "NONE", "version": 88}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'QPz77u4T1ahPauoJ' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'o7pPRDyTTEW07I80' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId '1PBit4UUtTeX2MRr' \
    --body '{"metadata": {"AMFRED8lfFMXlW5c": "Fm8EZ8caBx8w57QX", "XAH4CbyQbCia519L": "6f0ir55PxjQt93PG", "6RTfaKA3eSdKauMY": "7aHuGqj8Anz7nrh5"}, "platformID": "sndQJGdvVL4Dgrke", "userID": "AmDmJIkH21lirBNG"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'PeuVPBPBL76q3gGe' \
    --body '{"leaderID": "gywfL8BXPGmaNXDz"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '3sLkdVIwzHAa2zXq' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'HoHn75mTxbNlBHT7' \
    --userId 'aoaYAlRia5fvtPfx' \
    --body '{"SCbOtkJSiUd8QImC": {}, "ZHZTb8QixObGmg7b": {}, "hcLpsG7phZuzfyfM": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'kU4mWA7JNwXzMwyG' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '1BXRYoyfVPZ2XQBL' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'EVdYunihetsnqKKb' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'cx8rB8vbJW1UIUkS' \
    --userId 'kfg3UNiWVVsFYyBa' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'o8Np9nIiBACsThEh' \
    --userId '4bpPC97JnjnH9HhC' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"ZzjQ1aS9hb2MNeys": {}, "pIyh87HPeGkEchPk": {}, "CR15Y3z3JhSJJYbE": {}}, "configurationName": "W1oIQwNbhGBF4tSV", "inactiveTimeout": 54, "inviteTimeout": 39, "joinability": "CLOSED", "maxPlayers": 75, "members": [{"ID": "rgY6tztMsIsGeXNa", "PlatformID": "K8UWfQiANksUNwwk", "PlatformUserID": "Qgmt7nV8yqVXD9S8"}, {"ID": "450viAQjvLPLSV90", "PlatformID": "oBZhQ7ReBEzzUsMs", "PlatformUserID": "XxWnk0bJsFAY9Jbm"}, {"ID": "82b8Caau37zWf1Gz", "PlatformID": "xSBvZMiD2VvxLfGc", "PlatformUserID": "37QE438sTb2dpl7C"}], "minPlayers": 65, "textChat": false, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'akyPCmkZiFYVc3pP' \
    --body '{"t7O0MxwqE8cfDcNf": {}, "88QfwluJcnPmc1FD": {}, "yEL35MvcZ95xxglD": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'pOvZjCNLSJJWwNQ2' \
    --userId 'WsAOrer3SU63yOwU' \
    --body '{"G9P9wG6jbr7rwWJq": {}, "lVeTA34cTtR1PTWn": {}, "D3On0fryXi69ykqY": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["DcBa50EsJmlv3G3l", "d8Rack9ElCPCspY4", "7xglKNj206wtWyuN"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "2eHtRv1juqeR8E92", "data": {"ZUuN38CVjTskuzgL": {}, "b7j9Bz4opT3hK1cN": {}, "lMvnuguuMIxNy3wQ": {}}, "platforms": [{"name": "TAgTHTMzjpUOfXxQ", "userID": "LezJ5Y1Ak8X3N0Vq"}, {"name": "UHBLJUlVu2PyGxc6", "userID": "ZYntbo0Qj4DYS1MX"}, {"name": "ghYYPTFH9zXk3k02", "userID": "7TtW2P0RpJVlXNeJ"}], "roles": ["PD8ep27t84wvPsPj", "lgVacAZ0v6SQEt8L", "Y1f8qyCc7RCJknJ1"], "simultaneousPlatform": "6wOMumeIZrLo63KU"}' \
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
    --order 'FYTG5tFPxGrSAveG' \
    --orderBy 'Pvjcm4g2sf3GQSKF' \
    --status 'Xyo60s5NaecFNEln' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'IG9jJczxAZWhiiLp' \
    --orderBy 'YxmESWkxugJx1ue0' \
    --status 'GQUjG66lRQ77rGbV' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE