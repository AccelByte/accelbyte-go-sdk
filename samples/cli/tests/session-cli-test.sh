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
echo "1..96"

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
    --body '{"metricExcludedNamespaces": ["gl07OYIoneNzncUd", "DmOWWzAJlWcBEgkE", "vKTLAJ94VzT9sq11"], "regionRetryMapping": {"xhbLQ6ZRp7zvImL9": ["60WMw55XXCLsoBNu", "2uot3EtoEoGVkfry", "8dLg5Gjy9M1HF21p"], "cjRSUuyH5kk60z6G": ["42MGhX7QyJ7coAfu", "LIvcFrCXNfBysB3W", "7rGIjKWLT8WzwxzX"], "pHYYZONDJCczq2uh": ["1M1bF0Aa3mcpt5bz", "JU2F3Saq2eljx2Lm", "N2rwFA062Ka0NbTu"]}, "regionURLMapping": ["o95W441J3SsEfmZu", "UNQHcYfzBSuVhhYV", "lRBqQsb8tsegh7P8"], "testGameMode": "Lu6ADTxqSOLkUzVh", "testRegionURLMapping": ["rsyBstl9hAB2i8Jp", "SOC8vJlp7ooWoaHy", "HAzh37en5X9wy4Ug"], "testTargetUserIDs": ["3JOSXZvuiKSb7wFu", "jS0znR0u7oLMfdij", "KcPQbrt0HMcvXBaM"]}' \
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
    --body '{"durationDays": 57}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 59}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "KICK", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 58, "PSNSupportedPlatforms": ["nn2vmFY8DxABT2NE", "8lWU82JGfv08wt48", "hC1HPDw2tAbFL33h"], "SessionTitle": "3msHXK0KAuYKrzbU", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "iVas7CqzxPxfjG8u", "XboxServiceConfigID": "SkqFz3qPP51NfSMp", "XboxSessionTemplateName": "NnhttkpS95ei2Eyc", "XboxTitleID": "65EZnfT1mAnjwFcF", "localizedSessionName": {"CvoHSQ0uLe16mVQH": {}, "aXaLAeQLsbgtkc7B": {}, "9qUU3MUWCHJL3Vtj": {}}}, "PSNBaseUrl": "6ya8HNy125h7PCbd", "amsClaimTimeoutMinutes": 42, "appName": "EK0k0hilNLQqBsth", "asyncProcessDSRequest": {"async": false, "timeout": 19}, "attributes": {"7CA2lGcqMykvS6NZ": {}, "nVipBezFBlEc4XNB": {}, "Ec71KC35QDAUdpvM": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "R1vcLtpzNgFhehiO", "customURLGRPC": "65VespsOR8k5sRND", "deployment": "8eYp4Tmu0mUmee6A", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "agnCPdi2OKywDNXI", "enableSecret": false, "fallbackClaimKeys": ["PqoLrkHVYDJmHyw2", "yYj6fYWjtJ6HGh5W", "5mXqcSaI1lEnkC7o"], "grpcSessionConfig": {"appName": "VNRLgGfb05Ct3Adr", "customURL": "eeVDY6DW4pwhzzZV", "functionFlag": 5}, "immutableStorage": false, "inactiveTimeout": 86, "inviteTimeout": 96, "joinability": "FRIENDS_OF_MEMBERS", "leaderElectionGracePeriod": 52, "manualRejoin": true, "maxActiveSessions": 34, "maxPlayers": 5, "minPlayers": 36, "name": "5fQvhbLu2tEzfnTR", "partyCodeGeneratorString": "A1VwvErmCVuwES8w", "partyCodeLength": 84, "persistent": false, "preferredClaimKeys": ["K7exlqBwDKClBgIT", "MzLmIQxXl1TzgRGh", "AGLihMMQdJgzRY4K"], "requestedRegions": ["7HL8NpGck5dyVdnJ", "77NLYs9GnfKMa0c5", "U4W6aVWejaTZuXs7"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 79, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --name '0uJmQvRbetmwZId9' \
    --offset '19' \
    --order 'fk9SxchpABoQXIwx' \
    --orderBy '8wkb8YHKuhbDutHe' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'I59uu49drZ7Yzr47' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'hcdmWjMozkdD15Ba' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER", "KICK"], "PSNServiceLabel": 30, "PSNSupportedPlatforms": ["RVBsTSCgzMbJ7SDW", "axMPi5URAaTBiald", "19c8JoHOAprOI0dR"], "SessionTitle": "8au8FWCPTekZ0CaN", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "GL7lg3T6aBDbCK0t", "XboxServiceConfigID": "lPgAl2kuwxWu0mAO", "XboxSessionTemplateName": "rGhqtiVChDcEN854", "XboxTitleID": "8bpEEgrqIjkvauyz", "localizedSessionName": {"f4N1qxLk77UZEVZg": {}, "pPmzSnX9Lar2nkCV": {}, "ClOBmwAZdcTQ8qO5": {}}}, "PSNBaseUrl": "LwMyxIwGs4f9nndk", "amsClaimTimeoutMinutes": 91, "appName": "V6lamWOo3njKisZD", "asyncProcessDSRequest": {"async": false, "timeout": 80}, "attributes": {"ShMOM22FeualMD9k": {}, "C21SpF6juhNhH1i3": {}, "MrdoiiDBMkBo8IhF": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "VjBuycQqR4dA7Jls", "customURLGRPC": "X6NOoLAmzQXDYiRI", "deployment": "mcMDfPcTkRkxnHFn", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "1JbNZbsBrJpvD2qa", "enableSecret": false, "fallbackClaimKeys": ["o2ClHsId5YJS787V", "x535UeRfU2zgiijJ", "jyWSp294b6dffgYk"], "grpcSessionConfig": {"appName": "xTNjBVYYdYSJWzX6", "customURL": "DovylRYwgZVEDEOf", "functionFlag": 40}, "immutableStorage": false, "inactiveTimeout": 36, "inviteTimeout": 19, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 87, "manualRejoin": false, "maxActiveSessions": 97, "maxPlayers": 72, "minPlayers": 85, "name": "iTPxMEUSmS3jSDRV", "partyCodeGeneratorString": "uPRSQspcFLpBjViO", "partyCodeLength": 20, "persistent": false, "preferredClaimKeys": ["kq4T9WoGYpkucGBC", "9RbUORrwYebnOFCF", "xP4DukX2W4vpAgbS"], "requestedRegions": ["DJgok2v0r4qDzxX6", "px2VbvJr3Snt6xZf", "W7Zq6O5fnKL9NUjf"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 81, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'WL3JqJcSw1jv4aO5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'WDanPZLNq4DYASUy' \
    --namespace $AB_NAMESPACE \
    --userId 'E8NGjCgGJ9SXhaHD' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'W1D48CesX1Fa3wdY' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "1db4IQB8PWDLGTkt"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'NG8DXDpSxQQgvc7H' \
    --dsPodName '7NvVP3NRMj4ajeA8' \
    --fromTime 'zqQqBddrz6Ffh2hv' \
    --gameMode 'H1wtOosx2JRJ3G7l' \
    --isPersistent '3D3gdN3aneExbs6w' \
    --isSoftDeleted 'IZEez8CXIcxFMvnP' \
    --joinability 'FRIENDS_OF_LEADER' \
    --limit '41' \
    --matchPool 'M4URgj639HbojPqZ' \
    --memberID 'fOy3xVeqesbw8qH2' \
    --offset '24' \
    --order '2sEYwiwxp21ICt6j' \
    --orderBy 'oHa7DukqJTGuhWhD' \
    --sessionID '46qa7HLaY4PSyDnY' \
    --status 'REQUESTED' \
    --statusV2 'UNKNOWN' \
    --toTime 'qPnr4TmyLmlIUkas' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"gi8fIU7a4xJDIKM4": {}, "sGWeCNOEKozrjCnY": {}, "yx8Hw4hLevOTr2ov": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["Wt4zzDRAaYDgmUMl", "wO8PNp03jU6KSofO", "9XTFqy28tt7FiEBO"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId '2lcwEiNpn0cKFsNW' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'bZIrO7kH0xTmPTdC' \
    --body '{"createdRegion": "7BWzISAiG0Axtu5U", "deployment": "ct81W7iezYUPrFAt", "description": "eKMklXixStXPhAJ9", "ip": "GBOniNBfSPLjmvMe", "port": 84, "region": "6XAMAXWv6eaCrjd0", "serverId": "KybGDc3n3YqB48yd", "source": "rRXmglkQ8HyzT1ZV", "status": "8J6MLuAukFktZaj6"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'OHmfQKw16ZsINFj3' \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ea2TfT8QNGWje63D' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'F1UDP6ewnUSvQMOE' \
    --namespace $AB_NAMESPACE \
    --sessionId 'C1upORZHlRIsLRnu' \
    --statusType 'YK9wlr7enL0OgrZg' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '48' \
    --order 'EOUKOOAUpW69mE49' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'jaV6OKqGVS0LbU8n' \
    --fromTime 'r0QNIkqEF2MhmMrx' \
    --isSoftDeleted 'KAGKFHJ4eYrvWY8L' \
    --joinability 'FRIENDS_OF_MEMBERS' \
    --key 'ML15U1Mxbuejbtcg' \
    --leaderID 'GdFKNt8Xgf8ETTo5' \
    --limit '82' \
    --memberID 'CjtBySD2qkLLXwFe' \
    --memberStatus 'JOINED' \
    --offset '43' \
    --order 'HvcWQdWbiypgy4YW' \
    --orderBy 'GqsNrV43rh72MK0F' \
    --partyID 's0liZrhNG9qXcwtk' \
    --toTime 'XwvvDjuXG2G2R1hh' \
    --value 'lYOhPM7k0EvIXND5' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["gB05koj5cNI5SDXv", "8iqBGRpNAHtUJPIY", "QC3HcNZaRCDvmpGw"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'Fkr08dqM7uP6sQpp' \
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
    --body '{"psn": {"clientId": "KUr236pvm0eBqTdn", "clientSecret": "huF6z2NmyLAOA24g", "scope": "J8OOL1GtgCN435M5"}}' \
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
    --description 'dKOAB6gW6u7KcBU0' \
    --file 'tmp.dat' \
    --password 'i7xLZMZ117SSpQi9' \
    > test.out 2>&1
eval_tap $? 41 'AdminUploadPlatformCredentials' test.out

#- 42 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --userId '6G7ym5RtNQBh36uc' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentPlayer' test.out

#- 43 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --userId 'KYV8DqktghY1bIaP' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetRecentTeamPlayer' test.out

#- 44 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'z1YjLT8T817n3unD' \
    > test.out 2>&1
eval_tap $? 44 'AdminReadSessionStorage' test.out

#- 45 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'xpzBN4OrWDOThvYx' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteUserSessionStorage' test.out

#- 46 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'ewLLoVpADpdCKOQk' \
    --userId 'kQYw4Fk0nzQoldm7' \
    > test.out 2>&1
eval_tap $? 46 'AdminReadUserSessionStorage' test.out

#- 47 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'nb9yR7qD9KlbqsFQ' \
    > test.out 2>&1
eval_tap $? 47 'AdminQueryPlayerAttributes' test.out

#- 48 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'E710LMzQ0WfjBKQ7' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerAttributes' test.out

#- 49 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId '4B0MYWXolCXBdDT9' \
    > test.out 2>&1
eval_tap $? 49 'AdminSyncNativeSession' test.out

#- 50 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'true' \
    --body '{"appName": "HsMTnqPtpy0HBrwR", "attributes": {"OpodxZpmDAXXFVBG": {}, "oQ8U1nLlkAxGgjzV": {}, "UVqlS0XcAblVm6F6": {}}, "autoJoin": true, "backfillTicketID": "XB4U2FWh3HlVfe3a", "clientVersion": "uegcqEdy40p9HdPK", "configurationName": "nEqzBcZvATpSj394", "customURLGRPC": "9HCr8QunlXlfhCky", "deployment": "40N8ANZttpERbTVR", "dsSource": "SuMBqnM3YnL86nY3", "fallbackClaimKeys": ["fMynsdGGZ5SY3eGQ", "jIYrunA5qaHx0tU2", "NiT2nbV6e2D1Kg79"], "inactiveTimeout": 2, "inviteTimeout": 1, "joinability": "INVITE_ONLY", "matchPool": "O8RW9Ptpg16xUAvv", "maxPlayers": 42, "minPlayers": 58, "preferredClaimKeys": ["OhUUaWklINKRWEOR", "OnEGKlxkyc9p2PDB", "K19pQT7MxptGtMEP"], "requestedRegions": ["jVRnJQSqRgydzHOi", "4gByAnJAQFP5ZZWd", "uY5egMSAP1WGzjce"], "serverName": "fGHcxMILVDTCYRkt", "storage": {"leader": {"6Hyt3Ze46Ev7C18Q": {}, "qh0wKZzKVUxB5q2s": {}, "2cHJNWQzmI5SvnHJ": {}}}, "teams": [{"parties": [{"partyID": "Dvj8VypEHycoWWv9", "userIDs": ["BImAVezi7tqXFgnD", "TTge94weekrkig9j", "OrbM2x7J7ELhnY8m"]}, {"partyID": "t8oPB46KthZoGFJR", "userIDs": ["d0IX4b0rFf4TliGS", "LoNeIDxkIy73fU99", "94acuVIYX5yoWiTc"]}, {"partyID": "UTRxvCRfgkxHR52w", "userIDs": ["gz2zJn7Qre0tpPuQ", "ZHDXptIDChEMtCU8", "d5ZEkqGNQLWIEUp7"]}], "teamID": "r4NR8loK4iVprLgj", "userIDs": ["6daFVsgOBjUBjRZJ", "pynoU6Z3vZd89MuN", "BYWldeafGJH6naA1"]}, {"parties": [{"partyID": "8TIYkQdJ962dSsWb", "userIDs": ["XLrezIyJbVOKVbUt", "bazQieJAqzGxCbRI", "7wjA8qVHRmTDSTGJ"]}, {"partyID": "oyMhtrSb32MavGOC", "userIDs": ["8a7odDJVoHLuesvV", "ysMEgx2nGidQ0W21", "ZTnd8IzL9JVl7TIs"]}, {"partyID": "nEmIcHUMy7ImVJOX", "userIDs": ["5KSlSvqGrQnrdWra", "mPzRaDDMHCi41RRU", "qNxG2pIk95F3iUsC"]}], "teamID": "CxeEdRZkaeUvP933", "userIDs": ["4crER5jZFmdpa4Dd", "VuTHgnFtVvneyTQX", "n665GjFFWZsW8PKD"]}, {"parties": [{"partyID": "pQEnBKb12W13mtV1", "userIDs": ["zav1jdn7ex8BUgIB", "548Z4Y98FVGyF9AI", "QCHQ3MZ94oxkEqT3"]}, {"partyID": "yafHwtuX56NFIu6a", "userIDs": ["Ob5z5NVAnC7PTDk6", "4zIBqOjcXa1xXaUW", "o1FBWt74JIg3OeFS"]}, {"partyID": "RSpATf8yD9dgRJyG", "userIDs": ["HYgXKWl4dPOhyiru", "FzxWCz1X3TcL1aph", "PVEHMzDpkxHtunNl"]}], "teamID": "SVlPQmZhx5yVVOrt", "userIDs": ["Vh8ZAh3FEF8utXmo", "UJ619FhLwZNVjQUt", "85Gug77t8dJK74f3"]}], "textChat": false, "textChatMode": "TEAM", "ticketIDs": ["l5Ye61i6se28fxEl", "JzJiYzixYAtv1gHo", "zGLUkGP69Nw2M2t9"], "tieTeamsSessionLifetime": false, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 50 'CreateGameSession' test.out

#- 51 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"at0ybsBdCsZfLnVn": {}, "02dPe70TXGpoyDoA": {}, "hWZE43LjtG7zU4Wp": {}}' \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryGameSessionsByAttributes' test.out

#- 52 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "YRk2Gv0RD7CWGTwN"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicSessionJoinCode' test.out

#- 53 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '8VL0pDtyXkRjZgLe' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSessionByPodName' test.out

#- 54 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'TtuHEDHBR3UW5uu7' \
    > test.out 2>&1
eval_tap $? 54 'GetGameSession' test.out

#- 55 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'OiB0YDzfUVBEXFik' \
    --body '{"attributes": {"VmwLbXb86rWetfR1": {}, "lS1LhX76cykxqybT": {}, "SndCimvjSXfQErA2": {}}, "backfillTicketID": "vucX3Adr9uPPV41U", "clientVersion": "6afIgUU1wdZ6bVwb", "deployment": "iMkFLk717VDbFW4C", "fallbackClaimKeys": ["24r1rdmniUlD6jls", "o5ojUteV4oxdpUfI", "qwthXH6SjKHBBu5d"], "inactiveTimeout": 95, "inviteTimeout": 60, "joinability": "FRIENDS_OF_LEADER", "matchPool": "ZeGyhnqdxzPXBlgW", "maxPlayers": 78, "minPlayers": 93, "preferredClaimKeys": ["TCtKxhuTINgZ9t91", "EbfsfdL4gdDXuY4K", "edfA594xiGw7rVHA"], "requestedRegions": ["Keo8PsZjXjSkt4JR", "ZkzalpPtUj4PqKPP", "qk8ktwJ6DnY4Jsda"], "teams": [{"parties": [{"partyID": "rHVdzOoWxI2aKF6P", "userIDs": ["ERMJ5NxEaun1Pgn8", "NcpdInKurNmvWPHj", "couRsYxb4PCcD6mo"]}, {"partyID": "VnA1V2CwqRrE3p3k", "userIDs": ["nWPk5fLKokeiDJln", "dtlxtmqbJhz9yyfO", "tQRs9rrdq9M4ucJI"]}, {"partyID": "m2bBMuwxXVvnmvXU", "userIDs": ["HHOiEgSFSrj2JsEC", "1Ny9UEsbqtaBXDiP", "nk2uglQyk9FpLlrL"]}], "teamID": "MII6Cl79OgaWQlqw", "userIDs": ["KGc6DHOuM2V4BCdX", "hmCUloQhOa0QJ9zG", "VJfP5CEILmJCPVix"]}, {"parties": [{"partyID": "WTHagu24N6uKKCgq", "userIDs": ["Z4g3WGavYHD5ug3j", "QDLEs2wt8veDJI6c", "2spu0smFgGznoXb2"]}, {"partyID": "6a8r9qRr4eoDkdBd", "userIDs": ["nMAMPsJmgdvzwUNF", "5NTZvLNyU7LuqcsF", "5mIrqeVIofcJuhHn"]}, {"partyID": "vl7DQ4KNWmprNOeX", "userIDs": ["lxOr5dOzupSId5V1", "QuJulaGB7nk68Jgv", "4DZ2AVw1g4NITlqm"]}], "teamID": "Ly83IGE9jUOEa8XK", "userIDs": ["SXAJN9Rn3VU5u4ki", "CzK8eHui8LXtt6M5", "yguRk13UJ2Id8HYD"]}, {"parties": [{"partyID": "23rzDqKi6m7hfM4P", "userIDs": ["3ZSubKv5Zi162vxd", "Sh9JdmpWLzyz5Fst", "FXbZBbITvV27yNRR"]}, {"partyID": "IFoDEhnfRNKnVbBE", "userIDs": ["X7BAvLhqeq93nx4x", "roffighRsNv3N8Jt", "v91Uw0qDOQtMyqdk"]}, {"partyID": "x0G7crBOrdjGkmPQ", "userIDs": ["M5eoWdkyp4PsPxax", "aymaQkdwZT3oOtlf", "J1NROIYM9tIAf3yM"]}], "teamID": "7kFrNx4nll41zZft", "userIDs": ["n4Vo3MsL4w2qQa4q", "jMYuj7uc6xIwbhWI", "mpU6gDxPDX8b787d"]}], "ticketIDs": ["mN1JxyEWlAosnKvq", "hjdkvzwaeyQGTRFE", "QzHnUOktNq64ROSO"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 9}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSession' test.out

#- 56 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'z1Ieu8y12lpmb2H5' \
    > test.out 2>&1
eval_tap $? 56 'DeleteGameSession' test.out

#- 57 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'wwbGt1mhstTSLGeA' \
    --body '{"attributes": {"gG1xXYQeGFkBCDG1": {}, "fQmGy1ZbSTnZqEDr": {}, "EOy9OrAaqENnHe0r": {}}, "backfillTicketID": "uYfP0Asd6028lqDD", "clientVersion": "EcfkhY51fiW1AUQn", "deployment": "H95rL8bBB0GO0EnJ", "fallbackClaimKeys": ["AWuCpZQjkF3IN2bf", "qmOaKaaA19SIUzuC", "Ga1NotG6pTXfeYAm"], "inactiveTimeout": 57, "inviteTimeout": 51, "joinability": "INVITE_ONLY", "matchPool": "Q2TrWimF1oF4snlo", "maxPlayers": 52, "minPlayers": 100, "preferredClaimKeys": ["mjCZz2x94xccFn8x", "q9sWBQthn5B9U0rV", "F8r1pYHFSdNqv3N8"], "requestedRegions": ["iZuGod0GlnWh1lm1", "uCZ56SAyYf4nonTJ", "6GnZ0JbubXx99BMX"], "teams": [{"parties": [{"partyID": "efjs5bLo2n5b0BHa", "userIDs": ["MjhHaz3k80tSp4BX", "DLrqWa7OcTYoUCok", "AN1J09e2Wci9AltO"]}, {"partyID": "NCfu7Fb2JVoB2LVq", "userIDs": ["JjWX1PG37OCAzI7S", "fJaiCSnVWOFNqQCm", "Hm96qQuDUQQ0tQBk"]}, {"partyID": "3g0z4L4zfC8YADqB", "userIDs": ["rmgwcEOEKgFWpSmN", "gm3aVt2Hg4mWUOdq", "1N07TDdCt9Pe11t9"]}], "teamID": "lPMc9Tb9DZO8Zls6", "userIDs": ["U5eEu90IRIxJGAtD", "eIDV6fbBXP9kOEFX", "YA8RMVV3NlQkPVxy"]}, {"parties": [{"partyID": "BgUbYAq22D2QnrX3", "userIDs": ["FJwZGrx2LBLXdIxj", "RGYJSDE8ZRG2Desz", "htKLkijvj5Xh1pUC"]}, {"partyID": "zjml3M6jvP9ox2jl", "userIDs": ["Vt0DhGxrhzrk1pbo", "acVuTIZd6KJHmp6u", "VRIuq0K7zmnB3uVg"]}, {"partyID": "b1sJlPZJX3KGGpKL", "userIDs": ["YrBFtePcfaUCvF84", "Mrc17CcI1Nau4BnG", "5ISenWiyR34XF4Lh"]}], "teamID": "KldzOxif1vLuEtEa", "userIDs": ["JHPXVbAQFo1glwDk", "PMA4aM820SrWs52i", "3AoZW2pDVn52PfzA"]}, {"parties": [{"partyID": "pmNxTZW9vrhv6RPb", "userIDs": ["wMRhKYQJopWHZHsH", "9FRcdawbzKWyQipc", "dNKUanWp8DHMRsy6"]}, {"partyID": "EvwoBDjzhp9hnRoJ", "userIDs": ["qKkL4W5r6YI0754O", "pM4srHGjYk4HHC7w", "yVycSM4BvicwwcQT"]}, {"partyID": "w6AtxshmEgNL6ez7", "userIDs": ["8XLYPSXsmdyg6H53", "VvCwk9MVpSb0fXJ2", "ruXKEEwhPPqmahRb"]}], "teamID": "SXSkPGQphAUOVQLU", "userIDs": ["lKWmkn0aAPzWqTYr", "vvpn0yl3k2TVgOla", "8g8rFsiKehl74Mab"]}], "ticketIDs": ["CvXeexWeBz0vlo8H", "sTH7NZ446M2wzVMa", "mklbBmwBBORw7YYa"], "tieTeamsSessionLifetime": true, "type": "DS", "version": 82}' \
    > test.out 2>&1
eval_tap $? 57 'PatchUpdateGameSession' test.out

#- 58 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'jMmZXhpx9yshi6Hi' \
    --body '{"backfillTicketID": "fyamcsF4JLkkwBQ3"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateGameSessionBackfillTicketID' test.out

#- 59 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'dJKrfz0CcJ8xKfIU' \
    > test.out 2>&1
eval_tap $? 59 'GameSessionGenerateCode' test.out

#- 60 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'ko0HXvm8TWRh9Y8U' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokeGameSessionCode' test.out

#- 61 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'V681ceaTLa5k5haH' \
    --body '{"metadata": {"4111AYlHz8xXuJZG": "tPCm7qLvKoIq06BE", "e9k5aqwrIMESqJla": "1iQuBsCdU6n9xk18", "TEZj3vzZnoa8XWb5": "jX0f5RNnGPFmgYRc"}, "platformID": "FzHKtUN53krmwVJ4", "userID": "ECqqnShSYbWRH6an"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionInvite' test.out

#- 62 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'YTrm2BdFJ89tXwe2' \
    > test.out 2>&1
eval_tap $? 62 'JoinGameSession' test.out

#- 63 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'AUgBL6CQt4AECoFl' \
    --body '{"leaderID": "ZJw1nAETOzjHMr8o"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromoteGameSessionLeader' test.out

#- 64 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'oY5mhbluNY0F3huw' \
    > test.out 2>&1
eval_tap $? 64 'LeaveGameSession' test.out

#- 65 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'o4uibAh4vZxwPw5B' \
    --namespace $AB_NAMESPACE \
    --sessionId 'PiT4jsVbK3ibutef' \
    > test.out 2>&1
eval_tap $? 65 'PublicKickGameSessionMember' test.out

#- 66 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'geD2wnKblx5dBDhh' \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionReject' test.out

#- 67 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'wvMsIKvPnndOS2iX' \
    > test.out 2>&1
eval_tap $? 67 'GetSessionServerSecret' test.out

#- 68 AppendTeamGameSession
eval_tap 0 68 'AppendTeamGameSession # SKIP deprecated' test.out

#- 69 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId '60c2Ak8HwOoUJR8P' \
    --userId 'e8qIrL2iZWqY8yLq' \
    > test.out 2>&1
eval_tap $? 69 'PublicGameSessionCancel' test.out

#- 70 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "gmtrEFK51yA38OZ0"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyJoinCode' test.out

#- 71 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'x90gXFXUIJMkYEtb' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetParty' test.out

#- 72 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '9i4eQc0stIPzI3e8' \
    --body '{"attributes": {"Bu0c6DqIHnZVlPd9": {}, "0ZV8JxdiiUhUzYJd": {}, "KxyAeF0dJiwGVhLc": {}}, "inactiveTimeout": 27, "inviteTimeout": 61, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 56, "minPlayers": 81, "type": "DS", "version": 17}' \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateParty' test.out

#- 73 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'sxRkWwMX5B1akRun' \
    --body '{"attributes": {"qyz6del9jHgejbeV": {}, "m7EW1mTbhjjWNPzT": {}, "rehObWHirXByB8YT": {}}, "inactiveTimeout": 98, "inviteTimeout": 83, "joinability": "INVITE_ONLY", "maxPlayers": 95, "minPlayers": 84, "type": "NONE", "version": 53}' \
    > test.out 2>&1
eval_tap $? 73 'PublicPatchUpdateParty' test.out

#- 74 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'RR4G2P0QhIjGvKTR' \
    > test.out 2>&1
eval_tap $? 74 'PublicGeneratePartyCode' test.out

#- 75 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'RTjfrpmD7B96fdb3' \
    > test.out 2>&1
eval_tap $? 75 'PublicRevokePartyCode' test.out

#- 76 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'uVfDA5KuWKsL8ZFK' \
    --body '{"metadata": {"Vcin2f32pPz0GkTG": "QR9UIodJtnAq6KLi", "FiV3xcY5672BjNWk": "QBNeFDLYckVPSmOo", "Bk0hlMwHI2AWAGaq": "eomtxMcJc4oXMRTm"}, "platformID": "14bCo1YjOjTGORq8", "userID": "JUCougcsalzINpgm"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyInvite' test.out

#- 77 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'm0HHpEhSoRSnPR8k' \
    --body '{"leaderID": "YeVs7g2CIPCI2sXZ"}' \
    > test.out 2>&1
eval_tap $? 77 'PublicPromotePartyLeader' test.out

#- 78 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'WpAVYRR8u5fQ7XUU' \
    > test.out 2>&1
eval_tap $? 78 'PublicReadPartySessionStorage' test.out

#- 79 PublicUpdateInsertPartySessionStorage
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'YXDpzC0Wu546SRIY' \
    --userId 'V0qDqVA77EMuLYwO' \
    --body '{"qpNKEG6P5Q7vaed2": {}, "7OWv4LgVW42zT0Nk": {}, "YWlNqTfc7kKLoyF8": {}}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertPartySessionStorage' test.out

#- 80 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'AirYEVCNlifX7xKM' \
    --userId 'VLEhpZ5L4hO1aXn7' \
    --body '{"tupzrDEKQ4PaqrU2": {}, "L04HJ4Z1jf8jCtUE": {}, "1DiyAb8q5ZrKNiVS": {}}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 81 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'LpEuYNCOjX2mj7qK' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyJoin' test.out

#- 82 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '2WFVQAX9T7FT1A4G' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyLeave' test.out

#- 83 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'dLXZdRanAFM4xSXW' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyReject' test.out

#- 84 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'exzM3S0QVJnOv2v4' \
    --userId 'ZzqY5GV7bzNAhPiZ' \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyCancel' test.out

#- 85 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'hjMagm8emQwdtS4b' \
    --userId 'jmBLDCLAjw2OOYmA' \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyKick' test.out

#- 86 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"tXIK6PniIwMrKBu7": {}, "1IoJ6trVgYlzt97t": {}, "NKKIGItU0cihGePB": {}}, "configurationName": "rCSIJarPtDYKIxQs", "inactiveTimeout": 7, "inviteTimeout": 23, "joinability": "CLOSED", "maxPlayers": 83, "members": [{"ID": "tTYu8rm6PoGGALf6", "PlatformID": "M9bTkxFqHMEqI77Y", "PlatformUserID": "rJ1iGG0cB6vNEWSJ"}, {"ID": "df5q7pKlPsczrmo7", "PlatformID": "JD4S2Ck0cKu3JIoN", "PlatformUserID": "rxO2CVC5mxZUMAez"}, {"ID": "gG4ZmBNj5UbPNjV7", "PlatformID": "90FswUpZGTCuAWnF", "PlatformUserID": "1WRPX1x5qqNFA0pF"}], "minPlayers": 66, "textChat": true, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 86 'PublicCreateParty' test.out

#- 87 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 87 'PublicGetRecentPlayer' test.out

#- 88 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 88 'PublicGetRecentTeamPlayer' test.out

#- 89 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'csNI4prnhUmutWPj' \
    --body '{"hW9fQFKzOCDirY1v": {}, "fslk9BYQCAmgzIdB": {}, "vaVDmM9HKvvZ6xJ3": {}}' \
    > test.out 2>&1
eval_tap $? 89 'PublicUpdateInsertSessionStorageLeader' test.out

#- 90 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'icRJxblchcgctVOn' \
    --userId 'XBprjcr1bOEEB6sd' \
    --body '{"hceykc8AKt4kxWKW": {}, "P3z23QPNmtygbULk": {}, "DZKqIxpLytGfzle2": {}}' \
    > test.out 2>&1
eval_tap $? 90 'PublicUpdateInsertSessionStorage' test.out

#- 91 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["hYBBDJ6xYY4yxDJL", "Hqqfl2N8eQ7cWoAv", "tfYGZ6FXfK3DPu1X"]}' \
    > test.out 2>&1
eval_tap $? 91 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 92 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'PublicGetPlayerAttributes' test.out

#- 93 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "4DLwb6wKfptj8faW", "data": {"iZEYZhRBgw5jrWdy": {}, "BtHx0tr2DpufYHHt": {}, "AAFivf5GJeETpY62": {}}, "platforms": [{"name": "aTeGvSa70aFPY9TD", "userID": "gdXkgPeR9ovCoelA"}, {"name": "6Wv1B1F32zSi8QxG", "userID": "QUcCD4t8EIrVak8R"}, {"name": "bmrqDgkZJYrK1bi6", "userID": "E7UY5CjI3yNz1kiD"}], "roles": ["yRvUteKe6qRdbtH4", "xNksXfHGgUJ4ggHo", "2HdHTdDk6D1CAHpZ"], "simultaneousPlatform": "bCy6YbJG8sUnIPLy"}' \
    > test.out 2>&1
eval_tap $? 93 'PublicStorePlayerAttributes' test.out

#- 94 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'PublicDeletePlayerAttributes' test.out

#- 95 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'ICvFj9fvPNj6d5CR' \
    --orderBy 'n37QNTKAsfoXg04D' \
    --status '422aQTbsmpZsgjwR' \
    > test.out 2>&1
eval_tap $? 95 'PublicQueryMyGameSessions' test.out

#- 96 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'qTyVnRd9DpI99doV' \
    --orderBy 'sOQYDW6udjeIqmR1' \
    --status '6tH3vzmWlY7jDkgC' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE