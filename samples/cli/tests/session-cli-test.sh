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
    --body '{"metricExcludedNamespaces": ["NpX00erwtW3RSTNi", "4cs2zYOzZAqwvJx8", "i8jUNe1ivnS3C9lg"], "regionRetryMapping": {"wkTRmj9mLmv6NTdz": ["oe0cmbHLyb4vanuC", "A1A2W9gEvG9wDy5g", "KKXicFtf0NJMOpSJ"], "aA1hZiTCRDFWkK4W": ["IBhHvhdyDnX4rLgD", "fBBvifqjcKgEPxNI", "1EHNxOJnnsXayga1"], "13SXkR6GaQRHRzBU": ["UELFs91WypLfwCuv", "aOcINufu0xLFzbNe", "1UcgPVEPjENp24mP"]}, "regionURLMapping": ["awADQebGTgIaZbls", "88V0NkuJVENzTy03", "Br22KdznazRlPRXv"], "testGameMode": "Ydxwg4w0pibLhlp1", "testRegionURLMapping": ["80AZQyUTcbnbUCRv", "z4PYI3X2zEHbpGKP", "6loUDL2QjVHg3TqP"], "testTargetUserIDs": ["QrtZ4gfJG6947BAs", "N18UHAgyAw3N1nLY", "g8IAMof8cu3cGi26"]}' \
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
    --body '{"durationDays": 71}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 16}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "KICK", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 80, "PSNSupportedPlatforms": ["Ytz7DrJaNKh5ObDe", "hQc3Y6tIkDnWjmWB", "HEEc9gvFf8B8xzdA"], "SessionTitle": "2gsWVUMyeDbyjSkQ", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "HAdkd7ovBtGDBOfl", "XboxServiceConfigID": "gmHcuq986oeLyJSW", "XboxSessionTemplateName": "K7DFBzVDc3ohGGqz", "XboxTitleID": "jCKKkI8amI0GFZxx", "activePlatforms": ["Yb1lnTfeHgigvwil", "Wf0RJQysmDQhxXD3", "0bkVoN524rpl0A1P"], "localizedSessionName": {"7FazrqnwFsBMhaQW": {}, "b3747ZAO17a3Lkvn": {}, "VP2DsmN7MuLOZopj": {}}}, "PSNBaseUrl": "VpDck7dvM5sAgkCb", "amsClaimTimeoutMinutes": 19, "appName": "hXYVAUsAaJ05JlaX", "asyncProcessDSRequest": {"async": true, "timeout": 19}, "attributes": {"9Iwxx5elARLBpwcT": {}, "WfpsGDC5eFOAAgDP": {}, "7Txltsq86NJN0AQ8": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "2TMFzNs0ze4h9zyg", "customURLGRPC": "nbeAsISv8QykR8HC", "deployment": "KNFmV03AhOjIEtlU", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "8QfOysFcIFyDsq5j", "enableSecret": false, "fallbackClaimKeys": ["0r9b4OoZYu1CB2e6", "LrgtTUdDZUACi708", "f1bzkwTxomsUuCYj"], "grpcSessionConfig": {"appName": "SbBGURP1tHCyIy0w", "customURL": "X4GLQJhrhQBXU004", "functionFlag": 66}, "immutableStorage": true, "inactiveTimeout": 32, "inviteTimeout": 29, "joinability": "OPEN", "leaderElectionGracePeriod": 60, "manualRejoin": true, "maxActiveSessions": 92, "maxPlayers": 91, "minPlayers": 16, "name": "JhnyuSHOJ9N4Tvub", "partyCodeGeneratorString": "wAWo9onQduCFDh2o", "partyCodeLength": 46, "persistent": false, "preferredClaimKeys": ["hDpMWY1Zbz2LMANh", "gD61y3Qy06TS5Ghk", "EQKfG7Dtlg1kGRk8"], "requestedRegions": ["NTO12q2DT7QP16hT", "lYNu2TLLnMG90kRX", "e2VSA7RFnpSxrDcB"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 45, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --name 'XWq6n85BCHxMP5sO' \
    --offset '30' \
    --order 'RXcLTQ9K6ZQFrKcE' \
    --orderBy 'LmdOPo1fUZHLg9o9' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'wbcvTiQfkWDYKAr4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'EeqV6uiFCHj2TbRQ' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 71, "PSNSupportedPlatforms": ["iNDH0ZNB9eskA12o", "doVehvneOFr4kYhC", "woBmKZC41sermK44"], "SessionTitle": "6GMP6BlGBYFzhZXf", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "3DHLd1eXhHKOXtnZ", "XboxServiceConfigID": "au2LSLs8aDVk4xMx", "XboxSessionTemplateName": "OAJwrze2KcVUjbS0", "XboxTitleID": "RFwlARkt1SDkSQJ1", "activePlatforms": ["as1W5DOt8XCfuAP5", "UPPjZErkT95zMosB", "73Fcbc9wy9dDo53q"], "localizedSessionName": {"QHPJ5m3DDanFLv8x": {}, "TVj49GSdTR0Il2eg": {}, "NK7uwzBtFSzw91iV": {}}}, "PSNBaseUrl": "D7IXzKjZHTMujmP7", "amsClaimTimeoutMinutes": 19, "appName": "I6x73QdqOwxtJeEV", "asyncProcessDSRequest": {"async": false, "timeout": 17}, "attributes": {"sHfcWfN5zzf6QGUK": {}, "4WtHRRR1vtQweWHK": {}, "4rXsnjOmFcnMupZD": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "xyoyBZVyAjEzrKou", "customURLGRPC": "hNK3Ff72lPgCCPtj", "deployment": "OcpDlfT0wmhrLClK", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "58HpWXUw80SiYdtQ", "enableSecret": false, "fallbackClaimKeys": ["O4ThCW5buAUyMk2O", "uRE3t8XGUcHDcVAx", "3ocDeAsbCPyLFMvO"], "grpcSessionConfig": {"appName": "RtmUg4Zo3rL2Ucvd", "customURL": "Fto7yMznTlpo02kx", "functionFlag": 20}, "immutableStorage": true, "inactiveTimeout": 43, "inviteTimeout": 50, "joinability": "FRIENDS_OF_MEMBERS", "leaderElectionGracePeriod": 23, "manualRejoin": false, "maxActiveSessions": 63, "maxPlayers": 70, "minPlayers": 37, "name": "s5jcKL6yPa6pZdg8", "partyCodeGeneratorString": "CtVNNNnDiA9XoOjY", "partyCodeLength": 70, "persistent": false, "preferredClaimKeys": ["g5EUj6xOFRRPlFtL", "xuBh52mBu9QUc3kk", "lVf3jhdtRT4RIKgf"], "requestedRegions": ["ZE1ZuIWZ4sQJFDYF", "viqevz2G3mjnv1wO", "F5jUWXGF3OGyRrHf"], "textChat": true, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 56, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'dyaqsxmkaJGAOpWE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'MICIZh2pg6TlDa86' \
    --namespace $AB_NAMESPACE \
    --userId 'JT3p8mqaJidmkJBC' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name '6RTcROV02AWlDRLG' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "XvH7VlaTMMYIIDxt"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'BwtAByoy2VCEdagI' \
    --dsPodName 'wAQSbJvEEQdvzuft' \
    --fromTime 'HGAYfwa9d5Y0NEUi' \
    --gameMode 'a5uF9xBlPVr5BUNq' \
    --isPersistent 'iptCdmsDNBI193LU' \
    --isSoftDeleted 'NKbRCvz1cOjf6Tzh' \
    --joinability 'INVITE_ONLY' \
    --limit '10' \
    --matchPool '6jyy7ijJsNtmPpBp' \
    --memberID '4vHX38AYZImcQ7eH' \
    --offset '96' \
    --order 'VKn7gr8P2aMUZxoi' \
    --orderBy 'SPLOEGnnI3wLI6Ki' \
    --sessionID '1CffoOitWzWq2uzk' \
    --status 'DS_ERROR' \
    --statusV2 'PREPARING' \
    --toTime 'tMmrjpRAUlY5EtrS' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"XJMh9CV46GRENAap": {}, "uxtaI0oXvLMWnM3Y": {}, "mvQlPCoYHYUl2OIY": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["QPizwufCORwfO92e", "ThpFHQVxEMF0jChY", "tKTagLSJMaIO90wj"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'LkSClAbQIkTSopwk' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'Cn6ae4Xdvf3ASbNG' \
    --body '{"createdRegion": "MI93jhPAyV0BXLcq", "deployment": "jnbGiAR4rFGnZQwY", "description": "EAyLsTmrHjMGm5lp", "ip": "8flvgNx08YCYs0L2", "port": 92, "region": "KGTovZ01pRXBZETi", "serverId": "gkFfSY2wGnkcBDzu", "source": "1arbLaNW4QnusW64", "status": "ENDED"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'nhGgbzKFV9EjcWeT' \
    --namespace $AB_NAMESPACE \
    --sessionId 'tpRn4SN1yRLvb5ZV' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'vwlWRGCEC6yrKHZa' \
    --namespace $AB_NAMESPACE \
    --sessionId 't0yv8ICM66MDstwD' \
    --statusType 'PtJyyAvT4hLd6AkE' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '94' \
    --order 'tU5RhA8OGw6A5H4F' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'gYeJJqXTo8ZKXniw' \
    --fromTime 'K0FyJvEguBwYQlcX' \
    --isSoftDeleted 'r65ggnMTI810gZ7q' \
    --joinability 'FRIENDS_OF_LEADER' \
    --key 'iFf2wxPTEMnfPhsZ' \
    --leaderID 'VioZWfGH48Tysp7A' \
    --limit '31' \
    --memberID 'MBAtrYyuaJK4JLIG' \
    --memberStatus 'REJECTED' \
    --offset '77' \
    --order 'ZenZCj7Rax4O9h93' \
    --orderBy 't4lDMSasuhHG3dQV' \
    --partyID 'DkEOnqU9PfTss6Kp' \
    --toTime '9GbyBXO2JCKtUmmx' \
    --value '4OONS0nxRYc6wYjY' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["3K8IuFnQzf5xcn1J", "Y3uGN1wZQQICTtUA", "odNmCkPyh3ZHUkl5"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'c5c0J8Db024uR7TA' \
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
    --body '{"psn": {"clientId": "jZvIt4k5e05gsxkj", "clientSecret": "gkYRw3kubzEyMCuv", "scope": "MVg2SuZagfOvrGfm"}}' \
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

#- 41 AdminUploadPlatformCredentials
samples/cli/sample-apps Session adminUploadPlatformCredentials \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    --description 'rI1sPRkUqCGEQKGd' \
    --file 'tmp.dat' \
    --password 'ryMMROqWq2eZEOD3' \
    > test.out 2>&1
eval_tap $? 41 'AdminUploadPlatformCredentials' test.out

#- 42 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --userId 'zQAa4cr5q6tQcTk5' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentPlayer' test.out

#- 43 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --userId 'UnKfxRuZsIyls9Tm' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetRecentTeamPlayer' test.out

#- 44 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'mBLCgGjkHVp5ZH35' \
    > test.out 2>&1
eval_tap $? 44 'AdminReadSessionStorage' test.out

#- 45 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'eBSJ1vkpUL9W7zh0' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteUserSessionStorage' test.out

#- 46 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'YQY388ybVURSTcpU' \
    --userId 'k7qrfWJKZGzpLUvF' \
    > test.out 2>&1
eval_tap $? 46 'AdminReadUserSessionStorage' test.out

#- 47 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'fDW238KcbkM0Fqvc' \
    > test.out 2>&1
eval_tap $? 47 'AdminQueryPlayerAttributes' test.out

#- 48 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '3bico88mdNBFVdKu' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerAttributes' test.out

#- 49 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'nnbfFHozS01OcO2N' \
    > test.out 2>&1
eval_tap $? 49 'AdminSyncNativeSession' test.out

#- 50 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "OpOVP8Bx1zCiS4kL", "attributes": {"r2DDGJ77NQ86Jt7R": {}, "J9Fklw42OwSe0Bw0": {}, "S5BkvSsDbz97lcor": {}}, "autoJoin": true, "backfillTicketID": "5PXn5uGfb2zxiKto", "clientVersion": "DnrMZq6WFVXIT9ir", "configurationName": "RUUWMMRbHDxbxrIC", "customURLGRPC": "pD8J0QzNokCQfLT8", "deployment": "kTQEZrsSkrVkWyF4", "dsSource": "36NCFWEFdIGJVhh8", "fallbackClaimKeys": ["gbCaBq3rNnIAl6AG", "GGNfXM5nz9MGaYKw", "02OpwtBJY8rqtoDE"], "inactiveTimeout": 68, "inviteTimeout": 62, "joinability": "OPEN", "matchPool": "rtN4hkl4GTIktO16", "maxPlayers": 22, "minPlayers": 88, "password": "L38sFJaxBEoPI153", "preferredClaimKeys": ["T1Uc6J3FYUQKoO3n", "MD6uqcdIQz7KEhVX", "S201S3eqF5fsiESs"], "requestedRegions": ["pWWM87BYFlorgWxP", "Y78y8f0doSBLQyKF", "9ijxzUgqsUyR8GyP"], "serverName": "zJkcQYKG03HOJzmj", "storage": {"leader": {"btTx0wpipMLmec9F": {}, "KGQUlL5oCmHUFLnP": {}, "49AvjTZPRPpRxgAb": {}}}, "teams": [{"parties": [{"partyID": "UBppyUsHqEN89Xvf", "userIDs": ["aOI851yBrwFS2xbM", "fHbfAnYaf3Njp7b4", "ghpPKyoHyimpcz2D"]}, {"partyID": "dPL7qztOOcZC0wu6", "userIDs": ["cck7MRTHsiVZEAUL", "DjcEu7Du8IjVyVxE", "XVw6t3hdnFSbDvAo"]}, {"partyID": "Hs7hcBQc0aVs8HmV", "userIDs": ["8YVCvCVpvOg9FglQ", "lst5JGD14vQRsMVK", "vnPAjB3SrL9C1hsz"]}], "teamID": "BDril5kXEmCyGPfy", "userIDs": ["rp0c6GEeJWsR3Xa2", "fRl7omJOrKFJlSDS", "jyboBHPBibYzPSvM"]}, {"parties": [{"partyID": "4VESGGsEe8KmFK7K", "userIDs": ["wlbWjy1ZFncI6sB2", "oDNv68S0jC9YBXsc", "LUYmRQ1OqFE5yIbG"]}, {"partyID": "a3fo2M1aJOr3KKga", "userIDs": ["HufY3PQzCuomdvkx", "BqjxrQjpjzjhafx7", "G47tUKwGj1PD0e5U"]}, {"partyID": "ejcF96l5NFQb789k", "userIDs": ["TE52VzoX6h0iRuuE", "5N4XoeD2rN05USV6", "n5a6KkQgmAY6HMjM"]}], "teamID": "PXHiNteczra34k6x", "userIDs": ["qMoNm8Kp6h7hKSyV", "GbvGDO8nrZeCxsmc", "nWXZKkpSKLatnvhf"]}, {"parties": [{"partyID": "RaNLAuXkmHwoes96", "userIDs": ["0urlPIrpMWdsMK6R", "iEMA7VY8bFFcO7Cp", "qe6EWk3CI09idpqh"]}, {"partyID": "ziS4GKlAaC13K0dA", "userIDs": ["qYqic22TArTTb56Q", "z0To8819fm39ac5P", "nD70bIlVuH6Ya62e"]}, {"partyID": "vxfEfWdFsh6VS2BL", "userIDs": ["voexG21RacURcimi", "CYmO6FLTaMZ6D8VO", "3jC1RrqS4ETRBMhO"]}], "teamID": "4udN3W7QSKx5LOAz", "userIDs": ["dkJOi2sLAuYVdYtM", "YcZoePJHaVtSPiRt", "Zlurh4RkBtkdE5v0"]}], "textChat": true, "textChatMode": "NONE", "ticketIDs": ["UyRd6pHP1028DQCs", "rDRZQguDCdIYNtQq", "dFfiVkyG9GnZI6nh"], "tieTeamsSessionLifetime": false, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 50 'CreateGameSession' test.out

#- 51 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"Glavh3Rz1n2a8W5o": {}, "xt30Bx3vmVyV5h2C": {}, "0IOprZhgMmxRO6hx": {}}' \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryGameSessionsByAttributes' test.out

#- 52 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Rkb833L70RGozaxQ"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicSessionJoinCode' test.out

#- 53 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'AxYDrwZ4WjQaLRXt' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSessionByPodName' test.out

#- 54 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'fmXAQfaMJDlms5VH' \
    > test.out 2>&1
eval_tap $? 54 'GetGameSession' test.out

#- 55 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'MlqtsdPkRyntvN5U' \
    --body '{"attributes": {"FG52L7yBGL7zUrnt": {}, "Wawrv6pOGzeHaFKw": {}, "XDi52zqh0nSKH1Re": {}}, "backfillTicketID": "mZgdpblaNMfhvF8H", "clientVersion": "GExS1WF89R0xUAav", "deployment": "wg58A6uS2zyXdkGf", "fallbackClaimKeys": ["vHIM749VApr99KqK", "XB95MSOv6vm0C3Kw", "vB2FA4cWx3dNjtSm"], "inactiveTimeout": 67, "inviteTimeout": 9, "joinability": "FRIENDS_OF_LEADER", "matchPool": "5Zj4XVUzC3YxQZx8", "maxPlayers": 65, "minPlayers": 55, "password": "i6r1hGIs1uYn14Pe", "preferredClaimKeys": ["jKZpw4nR4s4pzrE5", "9IHeupeYCvdMyi0T", "rpjmOs6m0DUXlTvx"], "requestedRegions": ["OtdBsgM2CQUW1CEi", "QQIwPL24ahd2HGNc", "JOn4pggHdGUBXtZe"], "teams": [{"parties": [{"partyID": "quEe0fu3LsO7gRPO", "userIDs": ["W262mZcZHC6pMjYi", "385j8UM3YU7OnKFR", "DPq8oZWyyofJiXz6"]}, {"partyID": "S5MByRRg37xhfxmy", "userIDs": ["dA3PO8H0WL5fI0ZP", "W6a59pszlblQ4cyZ", "Q4Hr5cgRpU1vUGut"]}, {"partyID": "tEsgTzNviTai5pOH", "userIDs": ["OIJDsLu7kJKD6jvn", "fRXqPARozgSqIFhl", "ct9HVqsnk4J8SYe4"]}], "teamID": "EdFFCnAaCFrqms6a", "userIDs": ["DSJgMK1mJt4SGvbZ", "y7NfOLDDrYLsOmAC", "tcMOP3WMEsAQM11R"]}, {"parties": [{"partyID": "NU2xUPRvDRP0hBdZ", "userIDs": ["mjJXTfyOLwy9hkJg", "0meFR4KNT84jotpc", "9Nk33WsP8moZUIBW"]}, {"partyID": "nV7OtqIz9H5Q1WGc", "userIDs": ["q74JeiiNUM5iJMFs", "WPXQrUCcQTu4DV7I", "3XACn0n7EWewRLnE"]}, {"partyID": "i2CVCGZdBq98yW2M", "userIDs": ["ELMvHlsWPU7PGBHB", "SnMFweXJgBpUF8y2", "02vK820x3sdf16bq"]}], "teamID": "BFbrOPsB9BtcTWaU", "userIDs": ["n2PFs5Hy3IzudoUp", "jBVWnBFQSX3AkSSE", "oq3kfP31NAc0u6Y6"]}, {"parties": [{"partyID": "A4IORwrQgEBpqciq", "userIDs": ["LoSQwT58Lw84FH3N", "t0RH3he2Ydv2nurj", "Q9zDUBpbzdMHxYRV"]}, {"partyID": "OapSHJWcc6g5ftiv", "userIDs": ["5GrBraO4zb0EviXs", "JjVpM3nPbUR99Uva", "pLTtzBcT0FtYtxEd"]}, {"partyID": "xelNlRJhl1bCuZjN", "userIDs": ["4NFvqGK3GIi07i2O", "crc7eRw5ivklfppV", "P31Gt1xjbtQOcY3s"]}], "teamID": "fj8c7e7qhnq8xi3o", "userIDs": ["WVgcqy0iysJue1wk", "dJHa5fU9WcOngYLh", "EizHmujoIZwUPpzp"]}], "ticketIDs": ["UBlulxOzA3yCZyut", "FxkMXYHlI7l867wU", "q8tvQJDg8RzlPNjl"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 34}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSession' test.out

#- 56 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rvfgMeQWO16txbbI' \
    > test.out 2>&1
eval_tap $? 56 'DeleteGameSession' test.out

#- 57 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'nz2LohEi2TcM5ZRb' \
    --body '{"attributes": {"yk9IVsoiZtfe0WcQ": {}, "tSqD60kkM4DCBioq": {}, "siTRbViLBEbslzdH": {}}, "backfillTicketID": "X2b4RjVsGRm7DTb1", "clientVersion": "6IqEjgSUTIcFTi0I", "deployment": "m05cABNQVRXqsCoz", "fallbackClaimKeys": ["Td4O9Ik4jvlpQjyq", "HUcWA1L8EOTIrDG0", "FYoQaqvCoLgjWT3h"], "inactiveTimeout": 18, "inviteTimeout": 40, "joinability": "FRIENDS_OF_FRIENDS", "matchPool": "dVKMACuRva1RsLNH", "maxPlayers": 30, "minPlayers": 99, "password": "bqIxkvM7DGec2CIN", "preferredClaimKeys": ["Ehn47w0DklS3J9cC", "meltYMOmEpfbPLdM", "TWDJe0kEoxpwszIF"], "requestedRegions": ["uwqSfRFJifWEsThX", "8lBmL1Y91fxshykU", "2QcIQChf9GgCWnTV"], "teams": [{"parties": [{"partyID": "K52ZbRhGglAwXAI8", "userIDs": ["xPgCreA36yVJCW3E", "fKe7clC5c6Akww8B", "e0qM6ritFfpm5WPX"]}, {"partyID": "LyQhrdeGFiuste6M", "userIDs": ["6vC7uqv7gjuY10Rn", "I2opOIItCkealMQR", "yAFH5rHSHflhgPT9"]}, {"partyID": "dRWK9p2EwDuqGYIi", "userIDs": ["bwFEYVX3Tg9IzWYV", "mwsrY07Ji0hgg8fC", "7aWSJXTMcknni4O6"]}], "teamID": "S1i18d7LHpUGq8RZ", "userIDs": ["XVWQQjFqo3JzYvBO", "ypcyiH0sfdR3X2o9", "JIVkRsfe83oz2Uad"]}, {"parties": [{"partyID": "RTbrMalQjNKKhZbF", "userIDs": ["mFTMkdOnD4CvoABh", "EyvAlxE51NyUXDGu", "9cjrf2PtmW40K1Mu"]}, {"partyID": "j7vu31PRsJK0HUYe", "userIDs": ["AyaS804xHv7SMFbJ", "HlkPdzPSx4wsHgEy", "YQOWsVEyBrKPx8kj"]}, {"partyID": "av89nAdpFyAudM5F", "userIDs": ["OHyhMvfk4br8YeAo", "LfwwUEav8dFmhDyS", "i5Wuc79Phv2nO9UZ"]}], "teamID": "vNmluBdLU6MnvsPK", "userIDs": ["lprIOAFu8oRIowGh", "0Tqg7tkHU3vmKzIj", "EwASK27TyZe8Ou9j"]}, {"parties": [{"partyID": "lHm9KTlKXEogtCnc", "userIDs": ["Zm8vpOtmtfCkeTeA", "umR39wGPOYVMB8C6", "h93tvUiCjszjl4Vx"]}, {"partyID": "uWdoG01QfRgFKyW2", "userIDs": ["0cfkDnlCH2DGftr9", "6xG4UXXQ4xm2RJxY", "omwimquWw2QyM0gj"]}, {"partyID": "YmBBlgOaUgXKpeFx", "userIDs": ["5BKnH3kXmy2LUdoT", "UwXsJK6Kt0RxPEPN", "5rOqEgo7y2Rrx6hB"]}], "teamID": "BeqHX0xMxljsnRZa", "userIDs": ["Ai60m3rh0gTyjNvW", "UJRFz1tHZsM1NjwK", "FvpDt7qHezaYfLrR"]}], "ticketIDs": ["b5fxMXHXMrGSZsCn", "vhohQapGimzLENUR", "73o6kqPPRVz8n1ht"], "tieTeamsSessionLifetime": false, "type": "DS", "version": 63}' \
    > test.out 2>&1
eval_tap $? 57 'PatchUpdateGameSession' test.out

#- 58 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'AFi546ZiEl0RFU6H' \
    --body '{"backfillTicketID": "ZK6EMBZyOGZ1SnKf"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateGameSessionBackfillTicketID' test.out

#- 59 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'O9bEezrHYa7QPYQQ' \
    > test.out 2>&1
eval_tap $? 59 'GameSessionGenerateCode' test.out

#- 60 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'IaivgKNGewpeXrtC' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokeGameSessionCode' test.out

#- 61 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'qRVJ5B33bFZ9SEB2' \
    --body '{"metadata": {"yRDT7d5rS5EthjG2": "Gd24rQ57xULMOQ1Y", "6zifSZEpI9UYsRor": "5dCumGhp4lLUBplz", "GA6xYgQwrkvmmZzT": "If53WInIWjjgpV1m"}, "platformID": "fNMQ00WTE4Dn3FTt", "userID": "qmTnmUjwTrkesJkv"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionInvite' test.out

#- 62 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'T54ulGYSYRtgPg5g' \
    --body '{"password": "VF6OuidI5SDffWmq"}' \
    > test.out 2>&1
eval_tap $? 62 'JoinGameSession' test.out

#- 63 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'kGRAo1ucpz1Q9U54' \
    --body '{"leaderID": "fLqqb25tyUUlTCnX"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromoteGameSessionLeader' test.out

#- 64 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'nwMi3Ms4eEdbDxRv' \
    > test.out 2>&1
eval_tap $? 64 'LeaveGameSession' test.out

#- 65 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'hPmMYf3nKC8BnZ1V' \
    --namespace $AB_NAMESPACE \
    --sessionId 'lYRgoxuUS4Qct1ok' \
    > test.out 2>&1
eval_tap $? 65 'PublicKickGameSessionMember' test.out

#- 66 PublicGetGameSessionPassword
samples/cli/sample-apps Session publicGetGameSessionPassword \
    --namespace $AB_NAMESPACE \
    --sessionId 'iswbyDgoUIxE6jfK' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetGameSessionPassword' test.out

#- 67 PublicUpdateGameSessionPassword
samples/cli/sample-apps Session publicUpdateGameSessionPassword \
    --namespace $AB_NAMESPACE \
    --sessionId 'HbTJLM6YjIyxwdMl' \
    --body '{"newPassword": "RWk9ypNCyqUyxkWr"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateGameSessionPassword' test.out

#- 68 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 't2ynYKVznvWyzySx' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionReject' test.out

#- 69 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'pVjtOwpwZE0VRGhN' \
    > test.out 2>&1
eval_tap $? 69 'GetSessionServerSecret' test.out

#- 70 AppendTeamGameSession
eval_tap 0 70 'AppendTeamGameSession # SKIP deprecated' test.out

#- 71 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'YqhqFGVacaiNnxCK' \
    --userId '3gYH2e8r65m6neTW' \
    > test.out 2>&1
eval_tap $? 71 'PublicGameSessionCancel' test.out

#- 72 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mrEJrRWyIylEaDln"}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyJoinCode' test.out

#- 73 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ssSNEZeHP8T7drfz' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetParty' test.out

#- 74 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'mHxIJ5oJGpX0pNQZ' \
    --body '{"attributes": {"5r7mmtYSqTNvy1uO": {}, "wi6N0cRc7QtUaCWG": {}, "334P0MdatG4Qv5bi": {}}, "inactiveTimeout": 87, "inviteTimeout": 1, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 24, "minPlayers": 70, "password": "UTjMYAkIBKeKI1xD", "type": "DS", "version": 38}' \
    > test.out 2>&1
eval_tap $? 74 'PublicUpdateParty' test.out

#- 75 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'VA1LXb1TdGbgU3CH' \
    --body '{"attributes": {"YPTHYRMzDDLj5w0X": {}, "qsUooj82fKtMxfHM": {}, "WTKQceo7wl1YVvaa": {}}, "inactiveTimeout": 58, "inviteTimeout": 15, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 54, "minPlayers": 42, "password": "LFD7yHUz2nIlZ13i", "type": "P2P", "version": 55}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPatchUpdateParty' test.out

#- 76 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '8NqCHStIYQkF26iK' \
    > test.out 2>&1
eval_tap $? 76 'PublicGeneratePartyCode' test.out

#- 77 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'rOp6ZQfq9XtuCZH5' \
    > test.out 2>&1
eval_tap $? 77 'PublicRevokePartyCode' test.out

#- 78 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'iIcja7Wf8MfLTUEG' \
    --body '{"metadata": {"o9gEn2Et4ljqGbIG": "uMBY91oKe3C7u9Wz", "lYymLvWU7RKatGVz": "NcqzuJmRjFu54suO", "poMBRXoHxWnbwmDd": "C5qPTNBxNRdVTODF"}, "platformID": "aT2p5rRKDJxJmMis", "userID": "HW6EcGLQsG4pmN4f"}' \
    > test.out 2>&1
eval_tap $? 78 'PublicPartyInvite' test.out

#- 79 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'wF3q8HXlFsBrRRQ1' \
    --body '{"leaderID": "Sn0DQ8SsL2yfG8vq"}' \
    > test.out 2>&1
eval_tap $? 79 'PublicPromotePartyLeader' test.out

#- 80 PublicGetPartyPassword
samples/cli/sample-apps Session publicGetPartyPassword \
    --namespace $AB_NAMESPACE \
    --partyId 'LIVmJDqDi9CxaTYn' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetPartyPassword' test.out

#- 81 PublicUpdatePartyPassword
samples/cli/sample-apps Session publicUpdatePartyPassword \
    --namespace $AB_NAMESPACE \
    --partyId 'MyMC8fVeZmNprDpJ' \
    --body '{"newPassword": "w1f5Dm4TsOcbzlPX"}' \
    > test.out 2>&1
eval_tap $? 81 'PublicUpdatePartyPassword' test.out

#- 82 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'NvOXxCFkjfzxOCXs' \
    > test.out 2>&1
eval_tap $? 82 'PublicReadPartySessionStorage' test.out

#- 83 PublicUpdateInsertPartySessionStorage
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'pjqx9vJrXa2zd47T' \
    --userId 'fuyS7q679cRGIe5p' \
    --body '{"xc0W2BONUG3pNiIp": {}, "tfwjwS2JL0xxItQ8": {}, "5ruC9gJyGGh2e7XX": {}}' \
    > test.out 2>&1
eval_tap $? 83 'PublicUpdateInsertPartySessionStorage' test.out

#- 84 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'SNPwes1JdGB1dBNy' \
    --userId 'TxqNzXpLpoieBIzM' \
    --body '{"2QIwIgRYaCbKnJ5K": {}, "Gt6bmstY64fPyO1G": {}, "CSRYp0Vh0WgCxgA4": {}}' \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 85 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'IX0A232Ue6iOvWHd' \
    --body '{"password": "ivm2sCIn4PyT4Hyx"}' \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyJoin' test.out

#- 86 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'NKSp85EqFv8S7uAT' \
    > test.out 2>&1
eval_tap $? 86 'PublicPartyLeave' test.out

#- 87 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '7Qh3QjRje02rEeff' \
    > test.out 2>&1
eval_tap $? 87 'PublicPartyReject' test.out

#- 88 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'blGI0t1zEuyDn4rp' \
    --userId 'tOHlJtHY4y12aUNt' \
    > test.out 2>&1
eval_tap $? 88 'PublicPartyCancel' test.out

#- 89 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '4rd7IXwchZFVKpht' \
    --userId '88jqhN5lrxdy66Ud' \
    > test.out 2>&1
eval_tap $? 89 'PublicPartyKick' test.out

#- 90 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"d06EfK2k5eB9gaZK": {}, "GLkZhIRvqJ7HLb3v": {}, "Y9U9WAGMnizoMwlp": {}}, "configurationName": "lqKYYQgmMaKvu47a", "inactiveTimeout": 83, "inviteTimeout": 54, "joinability": "CLOSED", "maxPlayers": 96, "members": [{"ID": "8zb7tVeIQS5NdiG4", "PlatformID": "hgu54QEgdRe9p6FB", "PlatformUserID": "dtmfVSL1b6Sktsho"}, {"ID": "dkZRjDECfhqPpCHK", "PlatformID": "78qQWX4CuNkfYjbd", "PlatformUserID": "iAo9Om9MjwOoCSEI"}, {"ID": "XBEXufl4DSdvzWlp", "PlatformID": "IM7rdw3QY2SyH282", "PlatformUserID": "7bZr20ocaViRrnYA"}], "minPlayers": 20, "password": "nmxX61nlliDrVrcd", "textChat": true, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 90 'PublicCreateParty' test.out

#- 91 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 91 'PublicGetRecentPlayer' test.out

#- 92 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 92 'PublicGetRecentTeamPlayer' test.out

#- 93 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'h85QfZnsMF58Pfr1' \
    --body '{"XZr3v3cAKACJaKTd": {}, "BvzVAhGoDUbSgDbB": {}, "Ucrcgyydo2PaPAaX": {}}' \
    > test.out 2>&1
eval_tap $? 93 'PublicUpdateInsertSessionStorageLeader' test.out

#- 94 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'AlRYQ37q8voTIwuA' \
    --userId 'VofVdFUZVvqEzaEI' \
    --body '{"whqft1l7xKgei9ca": {}, "hstt5hGxJsVE5cft": {}, "m8o8sA7rUb84E8hf": {}}' \
    > test.out 2>&1
eval_tap $? 94 'PublicUpdateInsertSessionStorage' test.out

#- 95 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["yo3iGR1daKfrRWpR", "oS2ROjT14ryxCl8s", "iyYwgEecALCctSsv"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "rRYbszT9603KEIlr", "data": {"KVSPhX0YESe39rVm": {}, "90gXkyPejGS0Tpaj": {}, "wDurS4yL2d4qNqeY": {}}, "platforms": [{"name": "aMtq1Mh7VoVGk2yC", "userID": "ECKbIJRlk5QowCxG"}, {"name": "u2zgYHVEJ9O8bX1e", "userID": "mljAbYnXsMdDSwcV"}, {"name": "exWnSmGP8UvRwXcQ", "userID": "ugEz6DMIha9Er2Ms"}], "roles": ["fyAO5snPbCRM5iHN", "uC5qSVkAarzcIPHz", "klQz9umUkjw0aSVL"], "simultaneousPlatform": "mElKZyzhScWOMHHF"}' \
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
    --order 'FbtxJ4QlUH6w4DEp' \
    --orderBy 'PIQYt7kHaKEWE5xP' \
    --status '0Egq6jvo3aKDntob' \
    > test.out 2>&1
eval_tap $? 99 'PublicQueryMyGameSessions' test.out

#- 100 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'l38TaWd4m15kBhza' \
    --orderBy 'ZeTC9ziY7okD57WO' \
    --status 'R7SwxiGmVXy6ngey' \
    > test.out 2>&1
eval_tap $? 100 'PublicQueryMyParties' test.out

#- 101 PublicReplaceSessionStorageLeaderV2
samples/cli/sample-apps Session publicReplaceSessionStorageLeaderV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 'JNSx0OGmMEAi8D3G' \
    --body '{"2g8VkcAVVAqoekAd": {}, "upBAnCUfwHVs3CRQ": {}, "RW6VLHUVRwc191Qr": {}}' \
    > test.out 2>&1
eval_tap $? 101 'PublicReplaceSessionStorageLeaderV2' test.out

#- 102 PublicUpdateInsertSessionStorageLeaderV2
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeaderV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 'hXapVgL1vAfrWAQM' \
    --body '{"Su9A0zAogPAhqB1v": {}, "kJZShiyUG6x7AXpK": {}, "LtUxlgMkKHu06ovc": {}}' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdateInsertSessionStorageLeaderV2' test.out

#- 103 PublicReplaceSessionStorageUserV2
samples/cli/sample-apps Session publicReplaceSessionStorageUserV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 'yU5ZMtNpAqcTrdfq' \
    --userId 'gMGj4PlLqI0IcY7C' \
    --body '{"SVo15F2AJgREK2yK": {}, "lYZulYjXrB0n8NWD": {}, "qCQ212EzymD6GsbK": {}}' \
    > test.out 2>&1
eval_tap $? 103 'PublicReplaceSessionStorageUserV2' test.out

#- 104 PublicUpdateInsertSessionStorageUserV2
samples/cli/sample-apps Session publicUpdateInsertSessionStorageUserV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 'eirlJbJPSIGOFCod' \
    --userId 'gszm7i2c2IuftL8Z' \
    --body '{"4tI9BweOsHJZP3ZI": {}, "LEpVWWJGGNFcC6SW": {}, "MHgx8pVSqR5RUlqx": {}}' \
    > test.out 2>&1
eval_tap $? 104 'PublicUpdateInsertSessionStorageUserV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE