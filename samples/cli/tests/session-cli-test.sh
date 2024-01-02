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
echo "1..77"

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
    --body '{"regionRetryMapping": {"ZC1hc4Kk2gZNl2jw": ["wz7hqXR4bOkgIPxV", "6wtdhyAVTJf2EcrN", "FWDiuLUbEimxNopv"], "7RocLr43nMI96ylJ": ["7gxQTN70cbLCMjcD", "iyvpj97yrlacSZbO", "geq88WI2ifljtrWt"], "VdGfWaQWxLfoxOIL": ["qzNqvIoRJeP2QCDT", "vZf4a5hKK9yUASW1", "RDsSpDxAe0KYitWc"]}, "regionURLMapping": ["YnX1nMkwvIHKu0jG", "wIdrcnAIR6FRoBhD", "p56CwN0cw9fxzJnf"], "testGameMode": "i95CGWP6Yl3otU5F", "testRegionURLMapping": ["DUOWta6r2cIaoV78", "15utJR4HbGNzu7Wn", "Dr3UOEhbBVeNavPF"], "testTargetUserIDs": ["WHJR92MvoDgAEjBK", "vGUeF1LAXsOrszLd", "rJh6rk6WdInhRHjW"]}' \
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
    --body '{"durationDays": 42}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 44}' \
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
    --description '7FyFqbBSA7opU1ER' \
    --certname 'CoshHHI0HuYUJ0Hg' \
    --file 'tmp.dat' \
    --password 'kbwC3TYd7FQxrWJL' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 79, "PSNSupportedPlatforms": ["UAdRHukc2u3PvstW", "jdQrrXYWBsquJQaj", "q8gMnVxHQaqvcG6i"], "SessionTitle": "YkN3LXuhdIwQ645R", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "0IHtA5ySIIvspoUE", "XboxServiceConfigID": "nCgw1MWWkadnL3sq", "XboxSessionTemplateName": "jiXH3j8oUHJk3WBr", "XboxTitleID": "P174olXkRvEF7tfy", "localizedSessionName": {"zH6Pd9Ps7IW71dRf": {}, "2RtME6iW07tuBDd2": {}, "PLujy2BpJZXWQGJX": {}}}, "PSNBaseUrl": "svW19EpY4S6FScpF", "attributes": {"6fl24SekZeMytmAQ": {}, "8HVOYKwtEMoR5KOA": {}, "CD1qCbgAh6nHjVvI": {}}, "autoJoin": false, "clientVersion": "WgZmoGCmET7qudFt", "deployment": "lOCsQEwXKXVJ0FQS", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "JP8hG9zUl9IZ5VMF", "enableSecret": false, "fallbackClaimKeys": ["kp5k3w7gZsYBjQKj", "OxW8wTyQP2UthjQX", "Eclbut7K3SkRb5lr"], "immutableStorage": true, "inactiveTimeout": 76, "inviteTimeout": 35, "joinability": "e2FKLQQdCLRBDFlU", "leaderElectionGracePeriod": 92, "maxActiveSessions": 95, "maxPlayers": 32, "minPlayers": 68, "name": "3vsYvyeP1JpvqZmy", "persistent": false, "preferredClaimKeys": ["Hx82H204RipXLJfE", "s39qF2XSmlyFLrrQ", "RbwCAmihOJmYWmb1"], "requestedRegions": ["stcA3LVcgKWg9QWo", "VuSVJMpD58WEGfLM", "DiZqRjTgL5rr7mn4"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "S7U09LUQCfckLMnT"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --name 'DjOdj7SvfgfVgsWl' \
    --offset '2' \
    --order 'Oj9SX3PmJX3CuwJC' \
    --orderBy 'r7uI1rPcpOh8Hs7u' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'HH76Ho62OKkizpR6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'hhXVSrAspydtIwKH' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 42, "PSNSupportedPlatforms": ["ZlDFT4uVRFlysWEW", "kv7cX1bQbMN5E6Sc", "AZy2MSDdpKh6HFiQ"], "SessionTitle": "xBYOV6WYPuEoGZfD", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "fX9B4Wko6VO4u19i", "XboxServiceConfigID": "lcRiSKkGwnFKnHFY", "XboxSessionTemplateName": "NFaimLRKGTRxRXSi", "XboxTitleID": "bxqBGUsflhQKfugQ", "localizedSessionName": {"uTagBHjK4eq8R8Hd": {}, "THlu0GCPkclu6R1H": {}, "39LufhI4DjUTShdP": {}}}, "PSNBaseUrl": "pnahZDfLCOAWHVHo", "attributes": {"olyzcY87p6SDPnBh": {}, "jcy3Tsij1JcTtMyS": {}, "HLipdos3ogDwRU2c": {}}, "autoJoin": true, "clientVersion": "XrynrTlAXHIXDHRD", "deployment": "gFRqyq6Np4WTjCs9", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "L0anBsdk7CwE7jcP", "enableSecret": true, "fallbackClaimKeys": ["tFUiaxW59VGs8Yfx", "m7hdg1rm1VQqgMss", "jMkcseMpZrxqBet8"], "immutableStorage": false, "inactiveTimeout": 7, "inviteTimeout": 9, "joinability": "GuDRO1Fbxr8ZEoc7", "leaderElectionGracePeriod": 90, "maxActiveSessions": 58, "maxPlayers": 83, "minPlayers": 10, "name": "BM3jMkVMvjIeIEAe", "persistent": true, "preferredClaimKeys": ["ijDKcWSQbvWZccz6", "dyyVqh9xiIfWP8bP", "RaHcDmyip5iV5VbV"], "requestedRegions": ["dFi6fG3H80zYONLz", "RWfhOodtoFNJsEOz", "KOYyUI5aaGykTxnh"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "or7ul5BerPmlpR1r"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'kE0zSmqW2Kj0g5kV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'vFh4Mf59peadrHsx' \
    --namespace $AB_NAMESPACE \
    --userId 'x0IwvxhLppTE0rvt' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'AAkRn74SkcKh93Cv' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "STzAee5gvfPLpaC0"}' \
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
    --configurationName '5Tkoda1WbmZd085c' \
    --dsPodName 'TSBIQXcnHGULn82U' \
    --fromTime 'npQBb7Qldh0q4yh6' \
    --gameMode 'ywELi3R3nKhd6nSR' \
    --isPersistent 'gTG6v3oWuTO8MnZT' \
    --isSoftDeleted 'jCWsROupK2EKpZYW' \
    --joinability 'x7ECUKNoqWnV8o1r' \
    --limit '38' \
    --matchPool '90GeIsSYcZE71nQ8' \
    --memberID 'c3ZIxjOqyEv67Mzq' \
    --offset '49' \
    --order 'fqKEKh7ay632Bz1c' \
    --orderBy 'b75rr74XTjx0vYwr' \
    --sessionID 'iKOqwP4sSqdey5SF' \
    --status 'LusRmY6eEoODq3FP' \
    --statusV2 'aSqEikaJB06v39rx' \
    --toTime 'WiFvQFFRs8wrLX1P' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"aCDqQXZSINVpIEhB": {}, "0g5omqxWtJL33SjE": {}, "kGic0qDjoZVTLo9p": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["PiKS1A0tskRkTRjj", "aFV9dWHX9VSKbVjd", "h8QqJ7TCfFscmFmQ"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'IKSIG865n0I8szsS' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'GuY8COtoFSV17qcI' \
    --namespace $AB_NAMESPACE \
    --sessionId '4eUUpMUBCiFt3WSx' \
    --statusType 'ZNXRlnnMAaaeTIfp' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '46' \
    --order 'w0vJmUVfrGtb6dej' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'gnBwdhB4X4F7YiIw' \
    --key '4qtL6npI916dgFRm' \
    --leaderID '3A477dpb7Kd7qVpK' \
    --limit '87' \
    --memberID 'K4jeaUTopb9fAHsm' \
    --memberStatus 'NEkFZ7irEIKH2yXX' \
    --offset '66' \
    --order 'lvCzo2stzxn8tM4L' \
    --orderBy 'FC3d629xxfTVrUqi' \
    --partyID 'oBvbIezWfFmleahF' \
    --value 'FlsAqdy8v5wyCIoR' \
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
    --body '{"psn": {"clientId": "h5LNnd0J32NUpPbn", "clientSecret": "eraFEGMSHXLyOxoT", "scope": "GhjUg3VudCCHaJBx"}}' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdatePlatformCredentials' test.out

#- 32 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminDeletePlatformCredentials' test.out

#- 33 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '4Vi0KKZVRsKBkOoK' \
    > test.out 2>&1
eval_tap $? 33 'AdminReadSessionStorage' test.out

#- 34 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Z4LwdRbVVJNdPhXU' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteUserSessionStorage' test.out

#- 35 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'zTpfO9972pn10PYw' \
    --userId 'tq6iURPScnES4c3A' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadUserSessionStorage' test.out

#- 36 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'b9dztkYUUI5O8t6y' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryPlayerAttributes' test.out

#- 37 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '4FPqWUgteIYakt3y' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerAttributes' test.out

#- 38 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"PdkQQnCfGyCdB6U2": {}, "mhy7L6A6yqPY34YQ": {}, "w5VVW2TFheuTWDfs": {}}, "autoJoin": true, "backfillTicketID": "eJQkDGFbSPAiHW2W", "clientVersion": "4aaKdahxMgYfkFGo", "configurationName": "UjTuBTpsMo0Bac3f", "deployment": "CKTaJTe7gZJJQrfY", "dsSource": "aIfJC7Fy9mmPitdl", "fallbackClaimKeys": ["N4rzJqhin7VexThx", "Xcvftm8cjnDq3Jp9", "Ej28q2a90ahJQKNp"], "inactiveTimeout": 65, "inviteTimeout": 85, "joinability": "fkZIPvYXTEMaAa2R", "matchPool": "H3vv0Hg6v4hb5BoS", "maxPlayers": 44, "minPlayers": 28, "preferredClaimKeys": ["T4uhvtlWNPA5Vpxf", "M2o6zdNfI94IhUOH", "Gf0BkZwvbrsuyqzt"], "requestedRegions": ["VS9RrGQiK5zOqB5P", "PB0SmJZIgS0U17xZ", "fb591Q8cDRprBAxP"], "serverName": "xdePF5Pp57kAcld8", "teams": [{"UserIDs": ["7WBcKmuRRKu0xbBa", "BBA2c9ras9wo9kZu", "ly0N1CoSrxzzCYNW"], "parties": [{"partyID": "q6fRm33EQfdMkET7", "userIDs": ["BN6uth3BTjYNdnWP", "VBc9AuU54QIrw5oF", "4tLtSnqp7RMVvRIW"]}, {"partyID": "y3AngrGAor495Wgt", "userIDs": ["9B8fj1Q5cQpBjfcX", "ynlgjgPv08XOUTlZ", "lwXMAyphVsBxHNuA"]}, {"partyID": "K5rLueTHxEwAZa0F", "userIDs": ["AsJKT1TJ6UBGnK6Y", "WzB9Mtterow31bt5", "S8DcyPuUQpbe0OMJ"]}]}, {"UserIDs": ["RXLSnjOkptg2noXv", "4ssmV64vb2ezLmTv", "J4WWNewtGzAAcWWn"], "parties": [{"partyID": "G5WfwpTkeU6bn9CH", "userIDs": ["GpSBD0vY3NKquAPH", "625aGjpXIUrYDzR2", "ZZWUUSMUNGH5fxkb"]}, {"partyID": "o2NoQ2P4RfHL7ToB", "userIDs": ["Ho1HUSgxxE3XB6BB", "em59YUzgE49IswRX", "3VnKW7He9l14WLcI"]}, {"partyID": "I3biBqgnKqPKnH3x", "userIDs": ["7VZBI3QW5GFzWkKs", "8Js8RWCBffqLD5Sf", "w7hrBT4c4wGP7WD5"]}]}, {"UserIDs": ["GydrLbGbEnovPC5z", "PaoRsH6rpo9UfLPf", "ZW7qiGZGiCyWhW5V"], "parties": [{"partyID": "gOgJuTv9D2ZdvCPG", "userIDs": ["DwsBRZ4zzF3Zu7WB", "G3GNQQ9mSrUXgNJ9", "XfC92WuMV2FCTlpt"]}, {"partyID": "MxZb2PaoOD9aTqNe", "userIDs": ["wnkW00osudsZCKnE", "3ipmeLrrAoSHG3Yu", "zBXHvlbW26NXBDbn"]}, {"partyID": "dGUkIPmA2YtYDjyA", "userIDs": ["6FDkqamHqoteG3ep", "dd1XOlt7MPWuMAzs", "15NIUJPb8U7BFI9R"]}]}], "textChat": true, "ticketIDs": ["5l1IACQPZqnbaSSE", "AMW1ySpm5MB1pRjk", "sx4RSffVmlKrV4Xg"], "tieTeamsSessionLifetime": false, "type": "6EoYB6KbrhZCsak5"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateGameSession' test.out

#- 39 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"s8GV5KLJYOv7Y79H": {}, "eQKmMSh2FBYIyH2h": {}, "ewwOhRqs6lABxkfQ": {}}' \
    > test.out 2>&1
eval_tap $? 39 'PublicQueryGameSessionsByAttributes' test.out

#- 40 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "X6EspCDT0rp6INH8"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicSessionJoinCode' test.out

#- 41 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'Dpv5wKOMaFP8lMrZ' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSessionByPodName' test.out

#- 42 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1eycGdi42yj2Ak8j' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSession' test.out

#- 43 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'JHv1vw7aFhB6j4rv' \
    --body '{"attributes": {"KBtLQ7MxAInlbhWl": {}, "LuMSiMns74On1i6p": {}, "Kxf8ZCnBtiEjr6Je": {}}, "backfillTicketID": "4waolnjQHTZ8UnGg", "clientVersion": "f9DmpTaAaC9ZcgNN", "deployment": "VhlzYwZ2wGg3tqry", "fallbackClaimKeys": ["deVkDxUZggEWtcQN", "XmTaOiPrudhpxRsN", "WVKGi6lv6mr64UxX"], "inactiveTimeout": 62, "inviteTimeout": 10, "joinability": "HO4vcAaQlYGMEJXk", "matchPool": "Twtj3lUFmTy18J3c", "maxPlayers": 24, "minPlayers": 32, "preferredClaimKeys": ["Z0aBeNx8lps8wENC", "g1XgWLAzdJxaqYTR", "fQw93mDmZ66k0K2X"], "requestedRegions": ["WtHUfxHWouV0Xxok", "sOLCi4maNk1EVSz3", "KTd2eXsWVi7YpnvA"], "teams": [{"UserIDs": ["jKqQeX8GWdFOAwyH", "1k7MgIxyJeY626UY", "WKKszW4hAbgyZ4Pq"], "parties": [{"partyID": "xLLdpqe3r4XQzQG8", "userIDs": ["I7S6Fvd9acBKXpc1", "pln020g79TfEIyxv", "21fVw0ilH2hPUv3V"]}, {"partyID": "uvT0WYYSW1GFTV23", "userIDs": ["d74MgmUHncg30wUx", "ew5Bj9AdgJMasrr3", "34yA5ZfSaPT2878n"]}, {"partyID": "GvW2i9jkU7MmSISD", "userIDs": ["SDfgA8jMC1b31QBQ", "872z1OyeqzeCKEjM", "TQL8IvtvFd2oOuVr"]}]}, {"UserIDs": ["CnYP1UEmIQDRgWWT", "lDaYKbH0klFudoFB", "ooo1bwDUoiuOJeUf"], "parties": [{"partyID": "9crGRuNp6RzHOSfd", "userIDs": ["GUroDDJXljhQTLf9", "ARK65vsGrWcm2qYL", "clYNAKpZMIByv3qi"]}, {"partyID": "FtWJeZYgX1E7TgfO", "userIDs": ["n1a829gPRsoT9NZS", "ohjJqn9qlKMwFfv2", "ZtqayLbw3RYBzNrv"]}, {"partyID": "ECmwJONpv3OdKIbH", "userIDs": ["Y7nPs7wNE3bTuSVF", "IGMW2LTEM50aoyaY", "TyT6qtShQVPoN0VI"]}]}, {"UserIDs": ["uoXKaY890mHUY7Dc", "AsRefVDFLyzaVc4K", "ujeU1O3QaU8c5mdP"], "parties": [{"partyID": "pMiESQxi04StXeAh", "userIDs": ["bWy3u11yeYioL2Oh", "vIF0hvHlLCUkI9xn", "iwrw3pLtQIWNhSZY"]}, {"partyID": "S1NMgtetXnYNhBaA", "userIDs": ["S8fmCp54tgaLyyeE", "rQOPI38UneU1i0CG", "rjZEYY6kIfvblcVG"]}, {"partyID": "kvf3vspDpQTOUrFR", "userIDs": ["AOLI2JCBwX6SL3fX", "sHjpj9MbSK5gV1MW", "jGb2LEqe58JiEZYS"]}]}], "ticketIDs": ["klqvDqsIpUNTyvBn", "CChxhqqhnoFeUlKK", "VyEym3h5ffV9BeX4"], "tieTeamsSessionLifetime": false, "type": "eQYSgdeZBNSfek1W", "version": 31}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateGameSession' test.out

#- 44 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'UyPGN9Ea9vTWDB9P' \
    > test.out 2>&1
eval_tap $? 44 'DeleteGameSession' test.out

#- 45 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ODGkcUeaf63FtXpa' \
    --body '{"attributes": {"YDyohIsS31POnlV3": {}, "ZkcygdP8j84wdgoE": {}, "ayBTCQBVSZDcsyUM": {}}, "backfillTicketID": "x7X1MEjITzC9Wrlx", "clientVersion": "sZai7UBlv8Yhm36h", "deployment": "ru3UOlhgWAvmBmeQ", "fallbackClaimKeys": ["mSN5QnyFQeZErk1X", "CtRScygPE8YCNhxU", "ZHylQOrQG4x4xBUv"], "inactiveTimeout": 87, "inviteTimeout": 8, "joinability": "upHxhFWv4ceBvWmh", "matchPool": "d1baAKL73WUnxkmX", "maxPlayers": 55, "minPlayers": 91, "preferredClaimKeys": ["KE6VdcPC776llMVV", "BorjGQDnaEDtf4aZ", "Yw2q5QSZSa9hf1ko"], "requestedRegions": ["itHOwx6vdLyji2fq", "ljfAxlnDHoUa8uRI", "QGYWNLlyyZrdh4Xv"], "teams": [{"UserIDs": ["izRxIz1CfFvS2rxH", "1NSFTf6ytIRmks2Q", "0fEYR8ywZHe74M3G"], "parties": [{"partyID": "XP212PpraO1IBrRZ", "userIDs": ["xPqgt749lVUN1kic", "k1JPQnTStqeuvkVb", "y0i2vlXj9FFDB3tV"]}, {"partyID": "cdIhYAVSeJOCOmoT", "userIDs": ["LXdnwbqxnWsG1GuJ", "XqN1tgP1GExaXZ5k", "W4QZKMchaBzyrubn"]}, {"partyID": "BdAy8MmF0fV0KSaj", "userIDs": ["CCi6r2r2Rgt08PPE", "TuKtrra3gn7n8t6N", "tXAgKka6OojaHDiQ"]}]}, {"UserIDs": ["s3QLTuZ5jkw0fly0", "22nISkhnCiYotoBr", "de0wntSkChzr0xhY"], "parties": [{"partyID": "zqYohget5Dzr1k5p", "userIDs": ["mdOOtoeTef9cpVRg", "PdwNEy7R3W7cLOeA", "jHF0QE8KrZoAz0KS"]}, {"partyID": "LkdXkjEYHHKdTNd3", "userIDs": ["QeBVQlTufNHLz01B", "KIb0zYV1f43CdAdu", "fkNN43r39y2kSr1U"]}, {"partyID": "I9UvBxWEwIldtLge", "userIDs": ["uDeRUcLidsMYDEpb", "ZPxWttoAxYD7KwXn", "Wzv4mIEcO5v9FPLU"]}]}, {"UserIDs": ["0hr0QaZQrIPR2KMn", "jvFfAGmqhpItACfF", "k4GEINIoEeH2aETz"], "parties": [{"partyID": "p2Jztg3BaXsLHtws", "userIDs": ["NwVizWkCqcnXUrid", "Itlg94edP4KCQVPC", "vmSQD50His42J2yX"]}, {"partyID": "7LucgcBjeVtn3rnH", "userIDs": ["4lCB4VVuFlqKYdNj", "Ygmgzmil5QWHmJVq", "pkL7gap0Keg5kW7u"]}, {"partyID": "Tk5AxgF5DTHTYL40", "userIDs": ["XN8NTXbzoki52DKT", "5SwM4sKYfZzPenmm", "R77fm8fwnH1Yoh8C"]}]}], "ticketIDs": ["yMwGtJwBkBAwx1jJ", "CfziFeYzF7Wx0vw0", "ADsZbKlw1GiRCDts"], "tieTeamsSessionLifetime": false, "type": "l394C4PizJPQK8DR", "version": 30}' \
    > test.out 2>&1
eval_tap $? 45 'PatchUpdateGameSession' test.out

#- 46 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'c76s0LCFWtRxxWHt' \
    --body '{"backfillTicketID": "TtNk2rLWdnHNRrQC"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateGameSessionBackfillTicketID' test.out

#- 47 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'WKEB5XB1Noisbbd5' \
    > test.out 2>&1
eval_tap $? 47 'GameSessionGenerateCode' test.out

#- 48 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'of3cTJiAESI2Gbev' \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokeGameSessionCode' test.out

#- 49 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'dEq2U9TdTU1kUMNv' \
    --body '{"platformID": "nc3VMUyCexrMROb6", "userID": "fSCpFRwGM2YHMGWb"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicGameSessionInvite' test.out

#- 50 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rPaAjEgmRNZ2r3CA' \
    > test.out 2>&1
eval_tap $? 50 'JoinGameSession' test.out

#- 51 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'tl6Z75zFSr9HxTs2' \
    --body '{"leaderID": "Zg2KpKeNZI1qd52c"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicPromoteGameSessionLeader' test.out

#- 52 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'goekxx9DQpkF7KRQ' \
    > test.out 2>&1
eval_tap $? 52 'LeaveGameSession' test.out

#- 53 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZIIDZFGedeoGpt0p' \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionReject' test.out

#- 54 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'SUdDVXLyr8wPxYAI' \
    > test.out 2>&1
eval_tap $? 54 'GetSessionServerSecret' test.out

#- 55 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '37hnOPUxd1wTbKpz' \
    --body '{"additionalMembers": [{"partyID": "CtroIWwcjy206IGB", "userIDs": ["UcHr4XDAWCTkfWR2", "2DiaZHnZONl95yCs", "hDbmUxeX1lCJqz0D"]}, {"partyID": "pJ8gH68wP2HmkqnH", "userIDs": ["bbFxuUXI9uYkLpV0", "5B4xdiCOsShgG74t", "7fCXSRvkjlnYPnOW"]}, {"partyID": "LCSAfpFhvxtxNjBy", "userIDs": ["V7UzULOZ9DjzLlsT", "Fc2FPsgr5M75yBIt", "RUV1WXI8ZfXA4Rei"]}], "proposedTeams": [{"UserIDs": ["mLpRZvlDfncgezCa", "2kRTYZax7LIULkrx", "CJirBMELR78qbPdI"], "parties": [{"partyID": "ev5N3dWaBlnS9Sf2", "userIDs": ["kcRSomzIOfkxprar", "xLALoR4sS07vKE0R", "SE9NJGFtbG4QeSQY"]}, {"partyID": "2j1fzj32pEMshx7e", "userIDs": ["AV7lvdU593qyzWRR", "MwvQQxX865qe9hOK", "pQhyK95ueVY8R1v0"]}, {"partyID": "jCKgbWnwvS2gyIHI", "userIDs": ["6nq5ZK4KNFa0Tq2p", "AEEQpX6W2i5z10tG", "7GJudNSMiW7jFxaN"]}]}, {"UserIDs": ["uLdi3TpQMnNU3Vwh", "wozPO3qRmovxTgjr", "rw8yWAawuEmk8l7F"], "parties": [{"partyID": "eNQcWsTx7vgBTIjt", "userIDs": ["2cbZNZomVEgDqmlJ", "St1ECIgnSNraZX7B", "cCnQP0FUcY5Ysgtk"]}, {"partyID": "xAfa4oxU1uYuQZAU", "userIDs": ["g53eD8hDjbsV0zkG", "kBS7JYLAOpPiyJ8S", "npfOg9IBGHnqcNNe"]}, {"partyID": "LKexFOIa0XFwCS44", "userIDs": ["EiI6lDFO0fxJ0HEl", "i7TiY0GDbS6pzq1L", "287qugGCn4Tez4Km"]}]}, {"UserIDs": ["HpVEC6JEHWYzh78f", "BbLH8IYt2iMWXpUT", "nKPLgGYMSptOAGsu"], "parties": [{"partyID": "aZ8eEU7hvOtdt70w", "userIDs": ["FJiDYqdSA97wlIRa", "bjdni4IOM1JZhRgh", "W7BIjjrr4hfbbwXl"]}, {"partyID": "q2uIEbQRLqg5JorR", "userIDs": ["7RdygfW09lRxCKkT", "tcMeCIz63m66vm2i", "kouer8Pc3sdMwg1q"]}, {"partyID": "bm7jzVaUCkwRLFur", "userIDs": ["0nAKlsrP3wlWmo6i", "7kiX1DOewze1yEzB", "jDcPLsjdI2HDEUE6"]}]}], "version": 14}' \
    > test.out 2>&1
eval_tap $? 55 'AppendTeamGameSession' test.out

#- 56 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "v7VmhE1QpDgbAJuj"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyJoinCode' test.out

#- 57 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'QD3zaIBgZmO8lC1Q' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetParty' test.out

#- 58 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'TbQxtSFLqWW0iDXN' \
    --body '{"attributes": {"eudffmBzwPX9GN8y": {}, "uXjBIlGdqcm6dKRp": {}, "nUTf8sAi72JWvseW": {}}, "inactiveTimeout": 53, "inviteTimeout": 94, "joinability": "1REdDPf7Viu4IkfV", "maxPlayers": 59, "minPlayers": 6, "type": "ttRDPUzqr2P4gU7A", "version": 41}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateParty' test.out

#- 59 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'YwIrG9jZnIc3fUwa' \
    --body '{"attributes": {"HfAfi3k2RpTu2fJc": {}, "FRoNv8brCiKhhrXE": {}, "eM2Bn925NTBHVUDw": {}}, "inactiveTimeout": 7, "inviteTimeout": 93, "joinability": "eEi80cgqVNYxrOa8", "maxPlayers": 33, "minPlayers": 95, "type": "vxnHBBNifioYjlN5", "version": 58}' \
    > test.out 2>&1
eval_tap $? 59 'PublicPatchUpdateParty' test.out

#- 60 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'opcMsiZzDyzhZjQO' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratePartyCode' test.out

#- 61 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '1vzQPsjlL35ZNObL' \
    > test.out 2>&1
eval_tap $? 61 'PublicRevokePartyCode' test.out

#- 62 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'vqSUogQ1xwwkBsoQ' \
    --body '{"platformID": "ZHsarwSxHyWZgscC", "userID": "eEenONKEugpWkTH9"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyInvite' test.out

#- 63 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'qWEIBR7G9FqUqc5l' \
    --body '{"leaderID": "4hWwLUGUDV4jp4eO"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromotePartyLeader' test.out

#- 64 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '0jJF9RdjtywQm8mi' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoin' test.out

#- 65 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '6Dm9XFZfSHgLDIFC' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyLeave' test.out

#- 66 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'y8F3qZ5J9Wp0nDCD' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyReject' test.out

#- 67 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'Ra00EsPHxz2tYHwW' \
    --userId '1wOIWTrVd2BC4JNs' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyKick' test.out

#- 68 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"hpYmo8VhzpKDw7Mv": {}, "0SLn34WWalxiZUrf": {}, "dZAw8Mwi2TVNoz3I": {}}, "configurationName": "5wtMh9NNGaOdmO3P", "inactiveTimeout": 2, "inviteTimeout": 20, "joinability": "eIW18GC8jAFfYwJB", "maxPlayers": 3, "members": [{"ID": "eEICR8ZQ0qNsBmdj", "PlatformID": "wXuWD8omqRejpzn5", "PlatformUserID": "t41tq21p15mBTTaq"}, {"ID": "zQghkULL38Af1Ped", "PlatformID": "ycjb6jdkHyxxyo6E", "PlatformUserID": "ar5U5Whs3U2vMprS"}, {"ID": "rmxu3aDUNMbxZ3Gm", "PlatformID": "GhzePAyYICIZVq9l", "PlatformUserID": "8rSXVBqrg8BUBLeh"}], "minPlayers": 86, "textChat": false, "type": "bi7AXzZM5w9hU3Kk"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateParty' test.out

#- 69 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --userId 'jL327tCNhtjz89UZ' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetRecentPlayer' test.out

#- 70 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'b7nvRUwFFOFsep4y' \
    --body '{"tYYcmKJfZRz3buEQ": {}, "B06gPbjLNGLhkAj5": {}, "Or9Fu18bivmeBQby": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorageLeader' test.out

#- 71 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'G11xNsZ4BKYSBKWR' \
    --userId 'wvpC9Di9p5Bbb6X7' \
    --body '{"qiyooPyJev9M1bb4": {}, "K9MNVvTQFK64P9dq": {}, "vUGIh5mfpYZQ1mTU": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorage' test.out

#- 72 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["Lu0v4zowitrduMaq", "M6T3DTaVBGHqroSg", "RnrHEaT1DSliTW6Z"]}' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 73 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerAttributes' test.out

#- 74 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "bGj6D2IcI4doESV9", "data": {"L2bJzAylqhXrIFSm": {}, "RLVwR8Wahoddrhiu": {}, "daqv4OqvQygwlTS4": {}}, "platforms": [{"name": "9AxuDGqjCCzZ7CoA", "userID": "KeYnk1oRmJOd3YqQ"}, {"name": "mGh1G03jy6hvwkMv", "userID": "VhFlUVpQ6aMxg0R5"}, {"name": "Ip2zPwT9Y3m0Dc7I", "userID": "d8h2O3A1kzDlVofI"}], "roles": ["st8rvHt2BqCyVOj0", "imB7Jxq6wjqb5eTG", "gT71sxLZG48bHX5H"]}' \
    > test.out 2>&1
eval_tap $? 74 'PublicStorePlayerAttributes' test.out

#- 75 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'PublicDeletePlayerAttributes' test.out

#- 76 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'cQidXScJlA3qoHkO' \
    --orderBy 'o14uGmo5JHoo8CBl' \
    --status 'EvcbpkWx2c2uka0Z' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyGameSessions' test.out

#- 77 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'M7U4ACsdft6DcD46' \
    --orderBy 'wf2e6MRnNCwM2qnS' \
    --status 'nhlmnAF4tnTz18Hr' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE