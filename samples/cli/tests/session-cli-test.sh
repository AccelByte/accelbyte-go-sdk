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
echo "1..95"

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
    --body '{"logLevel": "debug"}' \
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
    --body '{"metricExcludedNamespaces": ["DoruUEjWB7QT0LV6", "q8Eu7IM5ks1uYRZk", "Gx0apFgU4Dxf38aa"], "regionRetryMapping": {"TrLQYVB6Qsk7qrb6": ["fIHXAxeBVIwF9Keu", "lwdMcO6vUzZxJSVn", "geslbVnV7jEGI7sc"], "Kp29tWr4GMbsnjP5": ["aTiJU23zvltwYTwW", "3K51nGmSSBoZl6Xs", "7zxPvn3GFNLjTomg"], "K2LBTSVAESNDyiGL": ["szPQhUpMuxczHXyC", "XoKGlOA0MyWDYpKn", "YKdohtAzRLSQSWbc"]}, "regionURLMapping": ["6YcHoGXF6hXcOwFN", "L2Hr5HVx89XF4yZF", "rKyI23DJ786S1A5N"], "testGameMode": "pjDc1UMllFSSgmtu", "testRegionURLMapping": ["eAxF8KnU56fr4zGH", "SwuFDrNwluKjP5ov", "hbZcM1bzARQO07Vm"], "testTargetUserIDs": ["IBZ6lyO2vdyGq63u", "J9XzkkAVb2ge3GjZ", "KB6f1ZKYw6gZoBH3"]}' \
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
    --body '{"durationDays": 77}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 5}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 18, "PSNSupportedPlatforms": ["WT0iFb42XvP6Pfc6", "P4jtkCKHDxvyQY2l", "84cCAruq9idyq23I"], "SessionTitle": "yA5dLToGwl6ZWmcT", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "SKFw4D0LOVp1bOtI", "XboxServiceConfigID": "7sD29qilYbtxUBgV", "XboxSessionTemplateName": "nQx4CSXgg5KfAl9h", "XboxTitleID": "ihx33HgvzcA1CLOQ", "localizedSessionName": {"guiDlhHQOMshE4Hh": {}, "ZeNlWdmMSyU0stXt": {}, "gEWF5QS7c8vWOIjs": {}}}, "PSNBaseUrl": "6LorKsdBXTByvA3D", "amsClaimTimeoutMinutes": 22, "appName": "zCY9MGh1linir15I", "asyncProcessDSRequest": {"async": false, "timeout": 87}, "attributes": {"15Kbcx4mKZp2dj3r": {}, "pLH5cPsGDthy1Dcg": {}, "ZdgKoGiOl9Frv2q1": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "aw0IoZKfGxIWYlT4", "customURLGRPC": "n2psKMGFoSDzSumw", "deployment": "2qvkmCQ27JAhs3aN", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "PF2gvXCGCtbGubua", "enableSecret": true, "fallbackClaimKeys": ["34CwWIZca2H1ZaBj", "cJigklyK5ykYCAPK", "wvtGUeDelqMejAKq"], "grpcSessionConfig": {"appName": "YQ0ZuSpZWJ2vyhJN", "customURL": "qPYqRB6oxHhPt1JC", "functionFlag": 0}, "immutableStorage": false, "inactiveTimeout": 65, "inviteTimeout": 55, "joinability": "FRIENDS_OF_LEADER", "leaderElectionGracePeriod": 20, "manualRejoin": true, "maxActiveSessions": 1, "maxPlayers": 3, "minPlayers": 37, "name": "q7Fvwguqm735lNvU", "partyCodeGeneratorString": "iqpMtEP3WZo33Fuz", "partyCodeLength": 35, "persistent": true, "preferredClaimKeys": ["wS3RwhKbspIDsyVa", "5Eb4oFY79DgGDckK", "hMfZXlDXLzL49Llo"], "requestedRegions": ["eDfaClPHLQJxMsyQ", "PvXJnEGoNNKjBnBu", "VdMdUZ3RAcewxQ5N"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 59, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --name 'ZyGGzhHWm3yM7XQf' \
    --offset '7' \
    --order 'Yl2xB6BpAkJ0zjKy' \
    --orderBy 'xki9EmR50U9WBUuz' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'LF7J0TAxNRk2GPce' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'EgEQVhjMkwo1nUYo' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "UPDATE_INVITABLE_USER_TYPE", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 1, "PSNSupportedPlatforms": ["9E2ndPLaQ3OnIjBh", "i1qmScKWfXXbcWMR", "VN1hsmJvAWx5Rji3"], "SessionTitle": "J1EFAtu4kjNWDK9i", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "cgrWqThnk8VpN2Pz", "XboxServiceConfigID": "6LgqMsYGyzWayP5F", "XboxSessionTemplateName": "w4gUsnCRRwpFpiq7", "XboxTitleID": "WgTAIduiGjjx19hq", "localizedSessionName": {"QLvNI4kvdRYP1Rt9": {}, "M9DMU5W5I5AXrcST": {}, "fLLr06BaEB5PqzNP": {}}}, "PSNBaseUrl": "YLkm3KdfajHHqxF7", "amsClaimTimeoutMinutes": 42, "appName": "QVb0taYibdtoNMvm", "asyncProcessDSRequest": {"async": true, "timeout": 41}, "attributes": {"b8esXZAetOciaMSz": {}, "cwfwMUCyLLW7VOZa": {}, "bYgmKwuTOWDBcNKH": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "tFRPbJNcJUrCTHKF", "customURLGRPC": "IAJ3kSKvxgYS3F8i", "deployment": "ikfmYBpjSyc5ylOO", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "EP9gKBT1URHR8kra", "enableSecret": false, "fallbackClaimKeys": ["jldlAqyFNf8FcdDo", "RjVOjPIrYqXbEmHn", "CwZ6H96TUrk4WIva"], "grpcSessionConfig": {"appName": "IX37IaEpvmSskF42", "customURL": "DAswgUeYMP5RyQwe", "functionFlag": 30}, "immutableStorage": true, "inactiveTimeout": 100, "inviteTimeout": 10, "joinability": "FRIENDS_OF_MEMBERS", "leaderElectionGracePeriod": 62, "manualRejoin": true, "maxActiveSessions": 58, "maxPlayers": 19, "minPlayers": 42, "name": "ovMmfhYnmHGXSLEn", "partyCodeGeneratorString": "UZSDQHP63F6gXlig", "partyCodeLength": 90, "persistent": true, "preferredClaimKeys": ["Y2XFThPb8MDd5OrF", "pW4BG7il0nHkPG5b", "Ng0j84Ch5SRuLoT9"], "requestedRegions": ["rHriD0l4kpxrPyha", "Bn1ILFrGbpqPEZNk", "vkAUgqGQqfo5FaqK"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 0, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'UcjEjp5VJ5F3Yp57' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '6KgnT7170deYdjDU' \
    --namespace $AB_NAMESPACE \
    --userId 'KsUATYzfYnmHFo4y' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name '01UrDrEH7ZJy69M5' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "WLVm4wmyfcUWJcAk"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'G8hkPI4LZfGWhjwD' \
    --dsPodName 'bS5rjevZ0AdMlxuO' \
    --fromTime 'wvC12HrpsaM94HOD' \
    --gameMode '4rI7feNVGD0gACqp' \
    --isPersistent 'WirlJ68CQ3cVQnlG' \
    --isSoftDeleted 'Z6htA2V0shDADS2Z' \
    --joinability 'FRIENDS_OF_MEMBERS' \
    --limit '65' \
    --matchPool 'yu4338VhjBIbakMj' \
    --memberID 'TlyrOb2rpU3NYbyk' \
    --offset '27' \
    --order 'qpvcVHBFZVq4paN5' \
    --orderBy 'QEinoZ6PgGX9E4Hb' \
    --sessionID 'sKUB70dO8eFmLX0e' \
    --status 'REQUESTED' \
    --statusV2 'PREPARING' \
    --toTime 'ZB3ZAh8fIEM7SGJ8' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"0JJpP3QhkPu7Si5m": {}, "pgqGlYyaHb5f3lhx": {}, "FL44xxyII14pqFXt": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["VkpaIbRBiccsWzUs", "03NqHyf3CiacJTLi", "ulp58wdrxCfPQ4DJ"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'u7VM1537BWpTtTaR' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'FEMeJtYUOyXvDad6' \
    --body '{"createdRegion": "1Te1oaahUWS7zupq", "deployment": "g2VwBOSItq8PQ9aB", "description": "v9TG4BQCdjDwFsES", "ip": "2FlyfVAYRIIG0LHX", "port": 54, "region": "O8uHDg8j8TcdmkFs", "serverId": "Cyh8SlamsAOCOsyq", "source": "2WE6R2lkiMwvZKEd", "status": "0iaeStCnQiO8J8PB"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'egbE8y4Oep1TnFRI' \
    --namespace $AB_NAMESPACE \
    --sessionId 'oa7wmm7mH2f50May' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'IoCxA33JgN46bonP' \
    --namespace $AB_NAMESPACE \
    --sessionId 'T1Z1vnnF0TAlcrAJ' \
    --statusType 'd0HpcyEyzZBBp2aB' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '80' \
    --order 'eidnzfizO4jsQHUH' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName '499P9m4dXZGsPdiG' \
    --fromTime 'lE4a1xl3aojeU2sH' \
    --isSoftDeleted 'hUYUYWM0Nd2js8gS' \
    --joinability 'CLOSED' \
    --key 'nm9f5GPXebxZr6V9' \
    --leaderID 'LFBgV0t9jkpjlU9a' \
    --limit '10' \
    --memberID 'i1cOiuXtMxXXFLY7' \
    --memberStatus 'DROPPED' \
    --offset '68' \
    --order 'iU2ngMSm3Jj2X1oa' \
    --orderBy 'ApSHZXZLKp2hZ3iU' \
    --partyID '74sJpiQWmU9s98Ix' \
    --toTime 'IRc6czoJrAEp1MJ1' \
    --value 'KKFNyO6faftGLN1V' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["kLJeAeMdHnBapbtX", "MHx8CPfgMUFLYQrN", "EGHckcgtSMHccsoS"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'TT7a9iH0seeyNwZg' \
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
    --body '{"psn": {"clientId": "i40FCDrTK6TxBC3n", "clientSecret": "UP8JhQy2PB95ljVF", "scope": "nAm4uOmcLfhgvo04"}}' \
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
    --limit '5' \
    --userId 'hWKTaTO8axOu5ht0' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --userId 'Rp2Qg4YntX7L6GPu' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'cw1f8MqGlZfhBaNo' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'sCebCqNzd99GjX5r' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'iT6rFBLMx39xr5Cg' \
    --userId 'lgPcjpjcUuymOmWv' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'F2HOIjomH3ruY2Pl' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'jYmXCzUBYFm8nUvr' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'M7ljR0Vj2WwDwo70' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "gQQ9EwGmC1GwNRnO", "attributes": {"Mn9HhQFHXgThzBGT": {}, "om3zR3VWIrNMXCfb": {}, "bFJGqnRDsxymURHZ": {}}, "autoJoin": false, "backfillTicketID": "Fw9QCa2zRU0aNrMi", "clientVersion": "tLFk4cxZmGSDJlvh", "configurationName": "GYb1wXaMnTkPVR0T", "customURLGRPC": "ic25hK4UoOQLihE3", "deployment": "XRaX8zdfx1TOegQf", "dsSource": "cjkjtH0CCWkRNz5C", "fallbackClaimKeys": ["53PcYzx1Ra1rU0Uw", "H5rj4Lp9WhyyzDmm", "4f2bPJDDziImkItl"], "inactiveTimeout": 63, "inviteTimeout": 84, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "jMrCyFQcbKddSsVV", "maxPlayers": 42, "minPlayers": 91, "preferredClaimKeys": ["RsNe2iSp6fKsedOr", "cRUPVn3O4VNT5q9J", "AGfBI6WQwssdrH6y"], "requestedRegions": ["HrFBSHwnHoiWL84u", "Zw9pUhIHq1J2UitI", "T2B2RuAJFbLdzk39"], "serverName": "41NM4zcEveRSZlEu", "storage": {"leader": {"Sp9fYEtvNqYHJZXl": {}, "dw1gzVF3g79Ugb4Z": {}, "rzQmmMkIm8fwkaSk": {}}}, "teams": [{"parties": [{"partyID": "7kCf2fpytwQx6TpS", "userIDs": ["u0kw2FBQstgohRIl", "lNF2HMMY2sEP9dQT", "xFnlLWwGuIZk6Fsi"]}, {"partyID": "Epd8qHvNMYIFgubV", "userIDs": ["ulZr8szJS3lyBDwT", "QuSFZPb5NJGwVGR0", "yuDyo73E4cnQ17sX"]}, {"partyID": "BfTU5WDVEZYvyY07", "userIDs": ["pY0wC5L4NR74HLvf", "rWazkOjUHmfs0diA", "z2xPxwiGoubym1Kd"]}], "teamID": "rVIgLQtlkWPg3u4g", "userIDs": ["jpC6W6NdPINrFba7", "rDU41UHUaqHZlQXE", "bv1zdTYjInRerASN"]}, {"parties": [{"partyID": "OVrsUC4qQQUsw8L8", "userIDs": ["6mB7GTRFc4roIlXU", "a2TmUkHbfuBwdLuE", "CuVZO4dPi4yivSGL"]}, {"partyID": "fd2XAMLomj6knO7h", "userIDs": ["4tWD1vgqoUmyV0bN", "jEVZWqoBtaEFm3er", "YgtFMFxVApH0sW1I"]}, {"partyID": "7iEwB4bImIS72gJJ", "userIDs": ["M4dCA79CB30rogN0", "3plpocLZHJJSLiK0", "fMeaWG6pmnkXWVMk"]}], "teamID": "nhkBu1flmCPPtfKP", "userIDs": ["7NKDpJMSi7lScFoE", "h4ZdzObvOrBGM15C", "4JLMAMo6xAxfQXfz"]}, {"parties": [{"partyID": "JikEyRcb9Oirolqo", "userIDs": ["3PH7OXYbIGcRVF57", "CIFYDQ7BOm27LSoH", "Pmm6k9uDIVvhR8os"]}, {"partyID": "ohcnGI1MQ8KAItmr", "userIDs": ["MDgG7HwRybVJiyqo", "gCPQATsCJPfqQI00", "q1T9otm4EGX7wB2l"]}, {"partyID": "pgCpwalzJj8bzVfR", "userIDs": ["BNumLm9fMsZ0UMOQ", "8zjuW2k9D5vaJQjT", "iBFJPG0lf0VHAViI"]}], "teamID": "k0jpUQRceMobjCUB", "userIDs": ["eS2bOMRgLyUgKxc6", "7YPBuHOjT6IRPMcL", "yzLpfBUOFbVP6SwC"]}], "textChat": false, "textChatMode": "TEAM", "ticketIDs": ["dN73bfam2yJlKt88", "fljnDCrM3854QWwS", "ppJZ5NVnOVzCNYQS"], "tieTeamsSessionLifetime": false, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"Q3eW3vnGTeAfGMo4": {}, "IFlz4bYnFkXH1FWs": {}, "jJw3WcmsKC6GhdpO": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6hwLCuI7neMDcm3m"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '5YbXsuYw1kovWPEO' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '0wmI2u6Qnp9EzDLZ' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'SlhYPVwAWGJaMAm4' \
    --body '{"attributes": {"BdKZfWI0AQn2CedU": {}, "l1PBuTtoU4LafSrv": {}, "1YtIs9wZjJXChyeq": {}}, "backfillTicketID": "AoFtpD4awSYKkv6q", "clientVersion": "Aml5gVuNzXppTyiC", "deployment": "BBsAU7Q3QZO2IrQJ", "fallbackClaimKeys": ["pRM9MUdGu3EJk2Af", "VqHLv0Hmyel2CvXw", "HRQ3CzCyRN366hUs"], "inactiveTimeout": 19, "inviteTimeout": 41, "joinability": "OPEN", "matchPool": "7Dy55F1fzMONQaRL", "maxPlayers": 20, "minPlayers": 97, "preferredClaimKeys": ["4692o74o85YnWWiT", "t3UnzkdTVeMVhC39", "RNF1B8NY1w7VJ0WU"], "requestedRegions": ["FFf4ayStCGuQBttE", "Ptd7Ii8h7CQkOqCu", "jBhVfm9ikTA57GCo"], "teams": [{"parties": [{"partyID": "VK2iqquIRyC2kJIc", "userIDs": ["AmgVg6VKqla6cJcU", "sHSGXvBbda1WiVW9", "WfzCIXqe0yrzKsjE"]}, {"partyID": "aqdPaPTPLqftxRjv", "userIDs": ["QPUQkqmivhfq1fjY", "nq39zWgeTxJCqdb6", "9DXaoycCXNF7oUqT"]}, {"partyID": "FcKpU7XKCIzldlxi", "userIDs": ["uNWb2BvxOJyNFHFO", "etu6YAmfRr3HQ3D2", "YG71OSQoXA6Asc35"]}], "teamID": "o40oZ7YjgEj7j8WU", "userIDs": ["azK9vZbdFMyFeJ78", "x9J4JoTz5ojX8MkH", "w7XcDh9djYJoscRz"]}, {"parties": [{"partyID": "cftvCJTah1ERPmJv", "userIDs": ["VNHiTULKEVRCoorg", "79zkUorQQXR4sGxl", "RUzzLHos340BrGbO"]}, {"partyID": "79Ppv3Vo9V6HZdBy", "userIDs": ["mKl7jXLfADFJ0KcG", "M9Ade2qLy52r7okG", "oofnCU2Fgt98VvZr"]}, {"partyID": "W5ug970AFGRBAnUX", "userIDs": ["oMurKotQ5KNV3LJk", "DL0DXaagwhOqB3E6", "PsxAo0cYRQv0tDzd"]}], "teamID": "NUIlo5D4pNPU9eqQ", "userIDs": ["FabyvwxY9lLr2Mw9", "iJThVM4xMNSDPjTP", "pVgqh9Z7tbmsbFLh"]}, {"parties": [{"partyID": "xh4lBc2eiRKUKFpK", "userIDs": ["oGj5bMi07uLFl27z", "agindyWtQb3G3ohw", "1qBohNgdIJjrZM6B"]}, {"partyID": "2pPaSF8lk8byEBd0", "userIDs": ["Gdz6vrFfuLBUU1lT", "lZAmaTzqHzjdH3ZX", "gtZN1TJGp7nPPhRj"]}, {"partyID": "Id95IfUqbff0E4mC", "userIDs": ["FRwy0EK4ZZoVZrrA", "wySveverDcsR8xbh", "b4bV7hCHXisBrYrf"]}], "teamID": "9FrfGA9bS0FqXR6x", "userIDs": ["bHW2wyYiCN35me0Z", "1xfMwZavTLRtjyAv", "HBdDaTKaqVPpihMq"]}], "ticketIDs": ["RGDjbhxE1KjFJeQS", "ebWLio8CPYyYHfHe", "yMvdzNeyciLRvByF"], "tieTeamsSessionLifetime": false, "type": "DS", "version": 52}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'QeSlWdGNaOC3xT53' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'RZgGbGjQBMLlacZc' \
    --body '{"attributes": {"XQrmiTNVP33DaNLV": {}, "LLcx84HqGYlcZgMf": {}, "JocCHP4tLlDLXGQ4": {}}, "backfillTicketID": "ENNa2krSW10C4KIA", "clientVersion": "SkPENc2shUSHnkTr", "deployment": "yeZbsGyyGMkHEGI8", "fallbackClaimKeys": ["E6g0FEJCGHkcVRPf", "A6g1gEDxclzwNdNS", "N1VekWXAz1wlESmr"], "inactiveTimeout": 81, "inviteTimeout": 50, "joinability": "INVITE_ONLY", "matchPool": "BfKK6eWifssyHmN8", "maxPlayers": 47, "minPlayers": 37, "preferredClaimKeys": ["LFxHw2ocnr4dCEAu", "n9VTQRfMwEB9WB5P", "8LxkRGmUn0j9J3hG"], "requestedRegions": ["h8IUvQF9MUJMx1vw", "3CUeSPAsYl7wBs5P", "k47tUZHjAJXeLPTp"], "teams": [{"parties": [{"partyID": "WhWL4Dw5HxrllQvL", "userIDs": ["ZkfOBxK7lyo6Wmv5", "yMqKbdTQYR4TxDz7", "8S3RRZd5APxSNpZ2"]}, {"partyID": "lf6OHNas8KZ9GBdi", "userIDs": ["6TFWGMJhH8rwhoZT", "i3BW1iaDl73ztiPO", "VVOmh3yMU7bdkdau"]}, {"partyID": "7QnxPWcJ4fk4smQj", "userIDs": ["fgrAbYZRFBIJHB0n", "YQrJ0RfNhHxipNRl", "N3LghF8bFNLjQR3k"]}], "teamID": "DoFjNFzUFauyE3in", "userIDs": ["kMxidEDknbWvAvSL", "4oDWdYbqK8o3ZGNy", "Je2jrSZF3P4R8YKA"]}, {"parties": [{"partyID": "PzpiAvnuon1b0UNN", "userIDs": ["jEVMkJI3C5K9dnN3", "oeqIxNiypZkI0lvi", "uwS7ZVutMK8afKL9"]}, {"partyID": "ahgzwYI1LWiUlh8U", "userIDs": ["7gDlImxaXJd2pvA7", "Z0h4qvxkH78Fx7Qo", "QwQY6qxxNo8Miw7t"]}, {"partyID": "euzAnjEFicFRGsBQ", "userIDs": ["ud5dtSqy1x0CFzTS", "EB850a51BrxE3H8i", "cJvkaK95kEBpfzAK"]}], "teamID": "88NxKFmW2CfbdcY5", "userIDs": ["RbIztebZukVJ64IT", "bcxCTpOjr7sjfgH0", "tboOMBWCCrvdfPZJ"]}, {"parties": [{"partyID": "hA2QITOCUvzTeLsE", "userIDs": ["7ftEJv4C7hTMCLir", "B299stgWmc8mi9zQ", "rNEh3d5A9LZoEOKC"]}, {"partyID": "IIMRG6BbPs2goDPW", "userIDs": ["32sf6l6ptZNyhvBB", "aKj4FO5QxYgP0935", "i8DmSzSh763AzlGj"]}, {"partyID": "ySJUNg3Jdus5Gr1u", "userIDs": ["lsQHlxfuRmibOSsp", "wZrry8fNXKauOvV6", "c4NL8R2Y9n0gaxfb"]}], "teamID": "blX0xxBYuPqUhnqt", "userIDs": ["m8FwfPqjMDHsWSzl", "tzEci4lhu5aFF7X4", "golQB1c71jIm0aSC"]}], "ticketIDs": ["9mPYqBUl9FPTaYNd", "Nwdjd34Yk16Zodg1", "SKVUKbSAlM3xIl0Z"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 99}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'bfiqBq3j1KctcnzQ' \
    --body '{"backfillTicketID": "FUVcYInEX0Bt3iCq"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'K0ufrLIb55PV8eNd' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'ica0VhzgZ3zVW1Pf' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'gJ24BNt3loDisJS5' \
    --body '{"metadata": {"s2vFEZB9CSSOr5Re": "83qaogLLLqmCuLJr", "XhbW2ZZJ0KwJNmR2": "m6BmbgM83fzZ6PdW", "1HKf8bjgZmtpTQqS": "o8qblbXnwBnOY71w"}, "platformID": "3xPLchYY0y3TC1Kh", "userID": "JfBGifYQOQZaMckY"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'iGClE2X19qxGsYkr' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'vctUPekUZ2e3OJV3' \
    --body '{"leaderID": "bcww53KSnKtBni4m"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'TRz1Pg8kfalyGTY4' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId '3TSElGd2GrOxiQD0' \
    --namespace $AB_NAMESPACE \
    --sessionId 'ehVlcicK8BMiRjZb' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'BdUbtyyn3AGDwT2A' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ac5Sr5YCjVuG3RQt' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'fDgRNhvLTQhxhRqS' \
    --userId 'gfypgzCxev5MrQOK' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jE2yvT5PATj1z8BD"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ATIe1SrR4dY8sBVI' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'TOAoR1PgmKyLXWsM' \
    --body '{"attributes": {"qeRcbT7pGFKbYnhj": {}, "O4pllTYuC2oMwYtB": {}, "B3jrU5uGj6OyWt1F": {}}, "inactiveTimeout": 100, "inviteTimeout": 7, "joinability": "FRIENDS_OF_MEMBERS", "maxPlayers": 7, "minPlayers": 20, "type": "NONE", "version": 54}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Fi1gkt018F0pyIty' \
    --body '{"attributes": {"NZB5Lk8J5NBFZzly": {}, "jaexPPuBwSkL9nqM": {}, "wSc18kLx740aLuGZ": {}}, "inactiveTimeout": 80, "inviteTimeout": 56, "joinability": "CLOSED", "maxPlayers": 42, "minPlayers": 40, "type": "P2P", "version": 29}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'Hfxumns7kPSZaYCc' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'vROD7iVn7cRRz4ND' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'aJ6YEPbjecmXYJPp' \
    --body '{"metadata": {"Jwmpk0MlyTO4jvbo": "LKtMkWI2FXStA3vc", "doYsFIQ3oADl588k": "0OTfEEjlNfK8ywiO", "IftLfRpKm9uZBzfq": "PC6LH0ePp0Jk7gA6"}, "platformID": "OFa8cHS0rhFmUZzs", "userID": "eUNdInqWlWEmtM3W"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'cNTnSgR5Njb8xqkF' \
    --body '{"leaderID": "VMvnRrQHp1fs26Nt"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '4atdcMFZ4UqfLfWs' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorage
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '2OK6VB4SslakWi1Y' \
    --userId 'v7t72ltiH0ky0zdU' \
    --body '{"8DEyyE9uzGaLe8J3": {}, "WRHoEc5wcCe4ykH5": {}, "RpJmxY1nrDnBvIcx": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorage' test.out

#- 79 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId '5u9FYL7C5qMykxIL' \
    --userId '8xBZXFfvlb1KFmoO' \
    --body '{"sp4CkqfWWhjRebOv": {}, "oHlQAGFL3UaZccd8": {}, "g5VLl4fCB67NXYKU": {}}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 80 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '9Pap6ou8Af2e2GVP' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyJoin' test.out

#- 81 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'j6BYpt5TPXaotoqn' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyLeave' test.out

#- 82 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'pBnTVGGWTkYAdV8s' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyReject' test.out

#- 83 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId '79mQNuUH2ncYuAaK' \
    --userId 'RUgUzcNR3WoDptO0' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyCancel' test.out

#- 84 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '9gJSeFKXKzm0L35e' \
    --userId 'gF4yrEI8PQVI0Nci' \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyKick' test.out

#- 85 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"RBkIXnx3GdYxfqcl": {}, "bIHqPQYuE5xc031t": {}, "yz9VjqmMWRZlU8dB": {}}, "configurationName": "r1fjX2BHfJYwX7Fr", "inactiveTimeout": 10, "inviteTimeout": 97, "joinability": "CLOSED", "maxPlayers": 47, "members": [{"ID": "n6lF4ezwD2JeY0Mu", "PlatformID": "dH47UYkczuiO10xE", "PlatformUserID": "oMXivZS40djNzpVU"}, {"ID": "mMipR6rUAXuDVmz4", "PlatformID": "u4y8xnoRBosH9YcA", "PlatformUserID": "nwCRmoXtiZCE4mmj"}, {"ID": "ePnPr7a4DDnsfG72", "PlatformID": "4gBXfe6DyapwuEdQ", "PlatformUserID": "8XAXn4xth30P9Ju6"}], "minPlayers": 57, "textChat": true, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 85 'PublicCreateParty' test.out

#- 86 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentPlayer' test.out

#- 87 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 87 'PublicGetRecentTeamPlayer' test.out

#- 88 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'da2lUgZ5HGLNWlMK' \
    --body '{"rQ4Z8KQI37tl9zM8": {}, "13KA8JokSRMuduEL": {}, "l9stgOscGy6kJ40a": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorageLeader' test.out

#- 89 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'VnQygQtpQeSfiJzQ' \
    --userId 'h2AbyKIEADADCi2T' \
    --body '{"2DY7GCQNjSzshZ9n": {}, "Ks2lkvFnFehgLoFK": {}, "uIsieoI5Gws0emJq": {}}' \
    > test.out 2>&1
eval_tap $? 89 'PublicUpdateInsertSessionStorage' test.out

#- 90 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["tq65gKwCkvqu4wLM", "UKb0533aJhbBofIZ", "x2WqY5ijdu1XyVhY"]}' \
    > test.out 2>&1
eval_tap $? 90 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 91 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'PublicGetPlayerAttributes' test.out

#- 92 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "t6wz4xrXVTynq6Ck", "data": {"T4dcGjPTUDLTJIjU": {}, "vhMMoyXKiBVuOYYr": {}, "ei5CL6QOhB10wNfm": {}}, "platforms": [{"name": "pjC4oeXxbWi8OPqn", "userID": "Q3laAj5LgubkcXhE"}, {"name": "DeKqhrn1BEzMobCD", "userID": "fohlFs6e7WlYecUX"}, {"name": "Nc7lKDzaTzewAZ7B", "userID": "tbP6ySU2D4rMCWgd"}], "roles": ["gWm4yFG0ncpI2Ma8", "EUqAyjCbRO5Ekw0z", "LLVlCsWQo0qyQefF"], "simultaneousPlatform": "Zxfqu3MLrzU0W3nb"}' \
    > test.out 2>&1
eval_tap $? 92 'PublicStorePlayerAttributes' test.out

#- 93 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'PublicDeletePlayerAttributes' test.out

#- 94 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'NOyr0SFYdnHGsB1G' \
    --orderBy 'YI8b2ltEP5VnEAHV' \
    --status 'ZWYJwYFLrehsbrFf' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyGameSessions' test.out

#- 95 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'LQXcieAX53TBSyqn' \
    --orderBy '9vYU4kuas7IzykeP' \
    --status 'veYnFOnWAhG3e1Ki' \
    > test.out 2>&1
eval_tap $? 95 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE