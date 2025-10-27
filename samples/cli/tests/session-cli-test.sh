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
    --body '{"metricExcludedNamespaces": ["6cwgnAFKxonVaE50", "nhKhUd0tRT0969TN", "JXdHKCCH3M2Y09p0"], "regionRetryMapping": {"w3flp5Fyrs2ztB8Q": ["4yw0EC1BDLwaUQbN", "0YL0084g9OBSNdFR", "rtAHwqmfhHKeThop"], "Y3kIO9ukEJNCsQgS": ["M0qLqB0pU6bde8J9", "Nfpe45y2gT3UbElE", "tCFeLIesmpzXKJMq"], "sECb0IAZYSUhoZHO": ["7pH3pS5AMrRXsB7V", "Sy285nNbSHacLWXe", "iVSIk6YDDI1hOa2V"]}, "regionURLMapping": ["KusMImc8JcFO3HPm", "vmVunQws7bfMIgLT", "NCcrgWVf3cddShTL"], "testGameMode": "GvDqXg9HG2SJUzVp", "testRegionURLMapping": ["ThEXD6Gl2GG5t2w3", "wTNIO9tWh6dXQYra", "6KVHO6c6HCD6lBrm"], "testTargetUserIDs": ["JEujlgw62dLACJyY", "Ri1k91B47oczZBfN", "uPaT7HurM1vnuaZE"]}' \
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
    --body '{"durationDays": 18}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 26}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 68, "PSNSupportedPlatforms": ["ybuUpWhlaAOImd9E", "HWEz5HLgTgbDWH9i", "4ISKIMwKdup4t3ri"], "SessionTitle": "Y9QzGJtAP4WMPCoy", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "idL4kdMZljShNpVn", "XboxServiceConfigID": "PrL3g0sWw0MjNNeO", "XboxSessionTemplateName": "7lygTW4NHq7afznX", "XboxTitleID": "pQ4Jp0NGfXpZae4H", "localizedSessionName": {"r6sg0BIVBf0RLb3J": {}, "GPdbFSgIZE8wr6Mo": {}, "MoIGIa1txzDzHgT4": {}}}, "PSNBaseUrl": "aPzVtIMNU9Kwso0c", "amsClaimTimeoutMinutes": 2, "appName": "Sx103CVznFLoNApf", "asyncProcessDSRequest": {"async": true, "timeout": 65}, "attributes": {"0xz4enquOAqeAdL3": {}, "yFiXu6mRPIMPhfhg": {}, "BRv0g1aHbTzWKweO": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "rjj9RAdqPmQRD7ZD", "customURLGRPC": "ETozapSsG2KqPAj6", "deployment": "csuq5geV54cFZeGh", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "6w7p7lIbJWlcpcEP", "enableSecret": true, "fallbackClaimKeys": ["4MIRgNXxlzmVmHfZ", "6j2cCeqjamF4IMGG", "0qd7DmpZfqukkOLX"], "grpcSessionConfig": {"appName": "0bMlx8KAVxm5rSHb", "customURL": "e7Gx3OIK1x9fE1Uu", "functionFlag": 78}, "immutableStorage": true, "inactiveTimeout": 28, "inviteTimeout": 30, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 49, "manualRejoin": true, "maxActiveSessions": 5, "maxPlayers": 52, "minPlayers": 53, "name": "8nXsr75T6P0sij4x", "partyCodeGeneratorString": "VUqQSX7Gvo7qAusb", "partyCodeLength": 96, "persistent": true, "preferredClaimKeys": ["eghjbzc4r3ExYILo", "R7diqpBikY6kOFnt", "MTmcWPtICHVHSNCd"], "requestedRegions": ["7OgFQUJgI5zyCqgY", "tZ9OxTPSQbprdz4N", "SWcgZ2jHFPeQrnD8"], "textChat": true, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 1, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --name 'bvuU3PjlzythjHBL' \
    --offset '59' \
    --order 'UBJ2k76rTGz8YhS6' \
    --orderBy 'iMCDDg6f3OP9y4Os' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '9HwIonFPqWOVfP2c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'vurBhUIxAxk8qjPJ' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 4, "PSNSupportedPlatforms": ["X8LhFmP37yhzyALc", "GBohXENnMNJ47LXU", "Gtu00q8BwllkJ7KP"], "SessionTitle": "sOiYEN7fvgyT2yZz", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "ZFLg4Yg12orsxJeV", "XboxServiceConfigID": "lunvS2CdAJIn2pQs", "XboxSessionTemplateName": "h6h82SVj6DNkWyov", "XboxTitleID": "DOrEK4FGdJuQ6YfR", "localizedSessionName": {"peGGU2jfwAP6JcZM": {}, "A8snm154ingy03b1": {}, "jZANpvjdizbtl7KX": {}}}, "PSNBaseUrl": "FbGPakCRUuzcikxp", "amsClaimTimeoutMinutes": 42, "appName": "B8nRiHrFE5rh2W3d", "asyncProcessDSRequest": {"async": false, "timeout": 25}, "attributes": {"BuJ8TCDNff6u2lye": {}, "Su7AF4Z6K00wjX0v": {}, "zIwQLEsKVF7KKZQD": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "Zhw5w7U8z9wD1DgU", "customURLGRPC": "V5WtcobykQFGeZTC", "deployment": "NaIf3tnTeByf7TPS", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "nvXKyjeey77yUmjd", "enableSecret": false, "fallbackClaimKeys": ["8SrXU9LdcgllssBo", "91z6VE7SPqtZ36W2", "XwDaKNeEJ0i5LfkF"], "grpcSessionConfig": {"appName": "P4OcZ6OrSi7ndHx6", "customURL": "VeexnMXPDo5msSXe", "functionFlag": 7}, "immutableStorage": true, "inactiveTimeout": 92, "inviteTimeout": 71, "joinability": "FRIENDS_OF_LEADER", "leaderElectionGracePeriod": 75, "manualRejoin": true, "maxActiveSessions": 22, "maxPlayers": 69, "minPlayers": 79, "name": "CoSnxqCZX5tzDF15", "partyCodeGeneratorString": "dgUCgn62KrA5vTGI", "partyCodeLength": 41, "persistent": false, "preferredClaimKeys": ["EMJoes1G7ispPgHt", "Pm7sPODPy6E1BZ5I", "UyXcz029JrQzHGUV"], "requestedRegions": ["wqRn32nNPPrBICpj", "CCZov9mCoCpg1kGe", "TkwgFefompN4mTcJ"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 80, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'Mu6yWjXEDTmrhozV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'OrrmRCRh3KzBn013' \
    --namespace $AB_NAMESPACE \
    --userId 'PR0B1HWwSLf43EV8' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'Wxj2h2OsXdXH5VJI' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "2UFG1iqCSynKw3ju"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'R23EVeSpM1Z8ipuz' \
    --dsPodName 'mfcSUkxiGrHihZd6' \
    --fromTime 'fOVSA29b2xBeH1Tv' \
    --gameMode 'styyrfwWzV2UEEo8' \
    --isPersistent 'VYpfiEHJtYYElUx8' \
    --isSoftDeleted 'b8CaagxIg2qAAqJG' \
    --joinability 'FRIENDS_OF_MEMBERS' \
    --limit '85' \
    --matchPool 'vEmeJZWQbpsozGRE' \
    --memberID '0CubdqFICQA1UDcR' \
    --offset '30' \
    --order 'ZhJKa7JCh63dhRqn' \
    --orderBy 'RajanR2D1BU2bK3m' \
    --sessionID '9L757AKowjNWKAxK' \
    --status 'PREPARING' \
    --statusV2 'DS_CANCELLED' \
    --toTime 'zRypMl2R95zxMtyo' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"X6mwFsDJoHfj7pOu": {}, "THTjCCcwghqKdWEW": {}, "4JlEKYxr3osvbgpo": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["HHkPqXsYr2mL00BW", "F6DjSly45n6iu6bZ", "A6x0Cd1ZjVvFNoGp"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'nUVT7pIXq90DW5TH' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'v8V8fKYV5VveO9rF' \
    --body '{"createdRegion": "79D8Gke9u0UZTzuB", "deployment": "8zyUFLudIoBx7LQo", "description": "au856E3rBH6ZGlKA", "ip": "qkOzDw4psoB9Gz1S", "port": 36, "region": "ktm5HkzsB1CD7KWC", "serverId": "IUXwXP4Vs8FcSbCm", "source": "rlX5SFGfJHbhLk67", "status": "dZdcklyGIkyYPwn1"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'IusEkKCF90nAtff5' \
    --namespace $AB_NAMESPACE \
    --sessionId 'ONT2NGJW5CChvIDR' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'ZHtnnNRV7xIoBAW5' \
    --namespace $AB_NAMESPACE \
    --sessionId 'KslWCXNiUrfAhejY' \
    --statusType '2baxKr1rUivSFaDB' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '15' \
    --order '8RevBTWGc1OM719B' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'FnDSEeIfXVL8hXBc' \
    --fromTime '53zNSpsgklUF7xza' \
    --isSoftDeleted 'BwputC0QAljISVYV' \
    --joinability 'OPEN' \
    --key 'QZO9PChDuANneeXI' \
    --leaderID 'onkkt1Hs5dlT0a0s' \
    --limit '0' \
    --memberID '4SmuUob14reb5m28' \
    --memberStatus 'JOINED' \
    --offset '74' \
    --order 'lT0PDo9heggPudHp' \
    --orderBy 'qiUKZUfBqCp1WMxe' \
    --partyID 'kSNNAX0ciW17BzMj' \
    --toTime 'U7KUNCEFPD4TOZxo' \
    --value 'LqLSjEGelvfdu51p' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["VqboHIoVG2aT70pJ", "QSXRexihrM9l3Pre", "XI6Xzys9Z3KRiDkQ"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'wClh5GI1lCucPTg5' \
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
    --body '{"psn": {"clientId": "YsEcriKocKDRomOA", "clientSecret": "w7S3ySgfoVbO9As8", "scope": "Qypq1K6vEtXxUf6l"}}' \
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
    --limit '77' \
    --userId 'L55zzyunAHzRLSMt' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --userId 'cMCA7IgxSm8jeNiT' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'GclTTM2ahFHhMBXz' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'okWL4coQhuvoqjdG' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'y1uwMkr9wSFjtCZy' \
    --userId 'RPcg0cqE2Mw39yVD' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'xVJxgVDCJMmnwVLo' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'kjSYsadCEV6D9dji' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId '4bQKGDX9Xuv5MuM0' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "xcu3Pzv7fC5aHPYJ", "attributes": {"HvV7EUkObGycWtcz": {}, "aRrzgUlSVhTTZBGS": {}, "rcx8eG7mKYtULIH7": {}}, "autoJoin": true, "backfillTicketID": "YozemJflBqNP0Lzn", "clientVersion": "Wijth1h4NUEAZLeX", "configurationName": "vrnVF2qMUzCubdbj", "customURLGRPC": "yjq6RZR3IoluWpgP", "deployment": "eb5RyeXwkl14zyX5", "dsSource": "Xn4eqTthnOF6Hbhm", "fallbackClaimKeys": ["GrPt7aYUQdGgKc4G", "rcRe2Jlx0aUwvE1t", "PLgHoFt3OIpn1kyP"], "inactiveTimeout": 30, "inviteTimeout": 47, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "ntHMUPJzeK0ONPDQ", "maxPlayers": 67, "minPlayers": 35, "preferredClaimKeys": ["ZWuY3C8qfD53VG96", "ORXuSFCgpeBzuFeA", "4VthCGT3iLnXKODy"], "requestedRegions": ["5uy3owkU5kX56qJu", "GOSziL4tf1SwBbJM", "k4xoHQCrxauLlTy3"], "serverName": "4uagTUPTY3eZjL8c", "storage": {"leader": {"AoHk3rtyxvrn4qwe": {}, "kMC0EIPj16wj9B4W": {}, "r8PDjncGnz6Gsez8": {}}}, "teams": [{"parties": [{"partyID": "CEFlst9Q3vg2bXdL", "userIDs": ["Z4jp24D6BgS75LBd", "u7pri5kqhLA5VdAH", "wqjr0RlDcyXKD3ra"]}, {"partyID": "TKLADowiPx8B3y73", "userIDs": ["mB4CiGDdLsEFjfig", "4XQ9AHNXKF0Mt3sj", "P1VMn0jHmZmPPB2d"]}, {"partyID": "WZ1CLsFxA7LhbDUC", "userIDs": ["W571I10iBROitrqH", "7wNVDJziSVxWjRYp", "Z69zbcRB4ERaZvEq"]}], "teamID": "zi7uwiDP73EduVFn", "userIDs": ["NSb8iazGjq1cRPZ1", "LjABEeGEVBm8bfQ2", "mTQmt4gYbzsL8QG3"]}, {"parties": [{"partyID": "ognbZ1gseMxsZgj9", "userIDs": ["oqZMzOSxijCafsnp", "bcGYyLWmI3tQVM8M", "WiFkfFzzz5gTfA67"]}, {"partyID": "MnTo9w3OnhNroR0c", "userIDs": ["uXRnHuDxAds3kjqn", "twZf8SWD2KZ8LWEV", "8T4kwBGl6VYkhZ0Z"]}, {"partyID": "8nk2nppFh1GSxTps", "userIDs": ["2zekBHkqlZgORGUw", "dAfYWbl40Z5yBgX2", "7vHeZrQbHSynvAvn"]}], "teamID": "ESO6wDDDs2vvtYZV", "userIDs": ["sAI7Q7jwCDU1clHk", "XXDuYWk30YK12z8i", "8QFhfD7WBMMRwBzF"]}, {"parties": [{"partyID": "l2uJoI4zfnpY5eEp", "userIDs": ["DP3AUSIMRXwANdBO", "KcIeU5MrhGIN0KG8", "fBtkNFsgKFLQk3OF"]}, {"partyID": "Pf7QkmJQzQozUJyx", "userIDs": ["YCHhySmRrgpgaZpm", "BVHBOLokOl5aJqlI", "EUXxcdOX3mIVNtth"]}, {"partyID": "vSWkCyDM8f2NvZfp", "userIDs": ["tbOXLZGJVOvvxWDv", "1o4w5vJrcboTbbm5", "4vrDCPX2WtHQFNMC"]}], "teamID": "KsyemAgwc9jS4ukh", "userIDs": ["3R3btpQrVopUYXny", "nKi41cBHG5uU5BKQ", "xcZ3yvPwMR6rqAv3"]}], "textChat": false, "textChatMode": "GAME", "ticketIDs": ["c05a3KODfvNoogZi", "8CnP82ap1VF8Cxid", "U2Sf46saDukatF6v"], "tieTeamsSessionLifetime": true, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"L0ItQFs1r73dxVjA": {}, "KN2wdkTpsIJivTMo": {}, "qPwgJ1TCHj0gDx8K": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "eAR2zrhr7wwrR7xO"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'RO9QA4PSSB0Vfoss' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'A1obRc8dwZy9bPEX' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qhurFkcihvF8Hmye' \
    --body '{"attributes": {"hFQqu7YAmXJ1OoP6": {}, "EnlVph3ZWbjD1XYk": {}, "REXzxzT1zZfUiGfz": {}}, "backfillTicketID": "kI98LMZeCU7LC9KN", "clientVersion": "8yaynwYdkwdQTaFy", "deployment": "NGjxehK1yQ14ve6m", "fallbackClaimKeys": ["N6nMZ9UnIuQUDnVb", "l7s1o5qaHh4m8eWx", "ffMOBkGxphnH7SUa"], "inactiveTimeout": 21, "inviteTimeout": 36, "joinability": "INVITE_ONLY", "matchPool": "5aiXhu6cQuld2Vf8", "maxPlayers": 16, "minPlayers": 7, "preferredClaimKeys": ["IeZvFfFGvqJ4R01X", "PzbexNZAfy8m1JOw", "nnw3kJwI0ZDIw0Pz"], "requestedRegions": ["OpOr1OAmI4WogmP5", "kRyBqeAiGuFE19sM", "f1QjVZi43ufTApg7"], "teams": [{"parties": [{"partyID": "CxEKI4Uxw3aEy8uI", "userIDs": ["FhsY25o4wYDlmdQw", "KS34saDVKlxCkAdv", "csI67FSJEei74PsZ"]}, {"partyID": "tFz7QJCouwocgVV4", "userIDs": ["3ue9RCbRg4v9s1En", "glwofGEhTN5u1krg", "YleZCMX2s98Zvz8m"]}, {"partyID": "KNBxnmF2PFYMLB8L", "userIDs": ["PV7lcWUTDfEo43xL", "wN2nNEMnhZ0MwQd6", "GKmehngOAiRH5Dka"]}], "teamID": "SPCUmADnezCezXyj", "userIDs": ["R3YXrZjsEDVDbuRt", "04inJauwmj9lBvaQ", "PQbw8IXdd1MpvEcZ"]}, {"parties": [{"partyID": "ONSU2Qc1ekQ5WyUL", "userIDs": ["7v6vFVzUR89x04eq", "NeKBqYCuIdoHo2jP", "a7JsWu5q2aH7l6WB"]}, {"partyID": "VFxPvaJYf2aA7aZw", "userIDs": ["OLUsLBdDMO5cNtOs", "c6GJIsdzN6LRjgj6", "9KLHivzvVPU78Ieu"]}, {"partyID": "Y8EJwrePsMBDYcMv", "userIDs": ["os0KfRl1HrebQxz3", "yYJByTLHRHcHOpNQ", "HD76TF4DgaQVLz6d"]}], "teamID": "N4GFJ67GIb6ijslH", "userIDs": ["iVPgGdkMGYzshmCF", "vkEXqywrVUi3ahzZ", "cS9E66GKeXnFgdq1"]}, {"parties": [{"partyID": "xx8o223mMMeHC4I3", "userIDs": ["QW9E326lneDr0D5F", "XUq3vbhAiAvRZerm", "CCoPyQaPwclncmt9"]}, {"partyID": "qGV6vU3PluHPXeEr", "userIDs": ["jzsP2PtIPLNObd6b", "azxT15jjU4RuJNBb", "ar27wiIH689B84Vk"]}, {"partyID": "WtwXQm1eokUpKUxf", "userIDs": ["rGZE5ilRJab53l99", "skx9ki3Jjsm5VLYr", "tweVHxJDRsakca7j"]}], "teamID": "JeLYrpBGgTfDNk2x", "userIDs": ["6DjVOCZccQ6JTrOD", "M2jubHRJmvYX9Tvh", "7kmHBwUUp5dlVhbt"]}], "ticketIDs": ["8iBE5SXGUDcqv3o0", "r0rbrxe4Wtp0tY9H", "ZgHYxII8oNSoNGZh"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 44}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '2Kuxz5xwKNvLDS85' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '4jN6fGztGikMCLMT' \
    --body '{"attributes": {"bZh0mMzZS1OJJT1M": {}, "o7qxK2R5jrlgIMZ3": {}, "2usrFJ1e2z4MdbIW": {}}, "backfillTicketID": "Eo6bpjjFDhK1ptCo", "clientVersion": "R8FeHJxRY0Wr3dHd", "deployment": "JFGH8NBiUT1UPxHi", "fallbackClaimKeys": ["HnJXoXFQv5zx0QUb", "7FwfyZwL3EfCYK4W", "zryT1RZPQk8Fb8rm"], "inactiveTimeout": 36, "inviteTimeout": 56, "joinability": "INVITE_ONLY", "matchPool": "ICsHhTsX2tCjAqPf", "maxPlayers": 88, "minPlayers": 46, "preferredClaimKeys": ["cuFR61IBREkjArjI", "hKOZVmvKJvAMyAEp", "0Z7ULrjI6Q66M1MK"], "requestedRegions": ["nkIImXkLQKHKx7Ao", "5l7gtUShUBFhBKhV", "m6dxGq9O7cH5H0Qy"], "teams": [{"parties": [{"partyID": "T3wRvG4LsGP802Xv", "userIDs": ["TGQmjKUEYcz47zjJ", "JKAVOBPddD8PSnOZ", "3unFwCGzDN16LIAl"]}, {"partyID": "K40rHjO0HaYC98r1", "userIDs": ["X9wxPbikl1RUcxMT", "cam8Tv6iMg9jKF77", "27QPotU7ivwpANf6"]}, {"partyID": "SKJVFRK78uuyDHQX", "userIDs": ["MqrRlsKy4z08mDjl", "WJYzXQetwpNCHljG", "bukuPY6oieJIzMBe"]}], "teamID": "9I3fubgPVYsxHceN", "userIDs": ["aklTYWIg2xP1FNd8", "VkZuVLi8dF9D5Hud", "gv4oMml0I89g8zeP"]}, {"parties": [{"partyID": "n2nExb8SqhnLKWaA", "userIDs": ["VpbauoyUHOQsuhSU", "cNddzaqvHDAl45Uq", "1us2qInTSydGBAjN"]}, {"partyID": "PP72WOldfDxNyxB1", "userIDs": ["EraGipd3Vwr4qDLc", "SB9j6x6xgGOAWups", "wGjgs8hkPI3vf0Y8"]}, {"partyID": "vPNp9eMz22K6hpcE", "userIDs": ["SI2YpTjS38WQd1bL", "Xff2vYhPb10HB4zQ", "6mkmRKrrZ3xWCOBW"]}], "teamID": "c7Ux4ejZerG08YRs", "userIDs": ["xXe7ngGGicFbKYkP", "j1in1BLEh9XmPOR4", "XYA0OqPgtSlUeYuM"]}, {"parties": [{"partyID": "ddwhVMroQUYeeSGl", "userIDs": ["8Dv56erAEmU6IW2j", "3xcSyFgB2E3lXuJu", "vjfI6Xxdb9Km2Qna"]}, {"partyID": "S12Pt3Q5Hl0V8eOi", "userIDs": ["KLy8e1uS5U2XXnl8", "tG7qf5LHx9XzgiTj", "xykMdYTsVxpqweis"]}, {"partyID": "iTI2Jsm5ry4rZPZE", "userIDs": ["3Drcqx9UkM4PgCEV", "NN7m7JSEPxkvVUGu", "FigS1hYnegacll1X"]}], "teamID": "qItmY0sf2zBX8Gqn", "userIDs": ["EtyZr7E3OXf5ONQm", "gdApjKcjSwKQsjwH", "dXODeL6w39wRrMSA"]}], "ticketIDs": ["fe1bDOgH58dNU4u5", "0ev0vfg11ByZZOlo", "tTtTsBw7RhRSDA3d"], "tieTeamsSessionLifetime": true, "type": "NONE", "version": 43}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'oHSOjupSq1gBISMx' \
    --body '{"backfillTicketID": "mM6rWdjON6NFJpfi"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'z6l3O97fOhjWndvh' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'jhm3hqUwjCVGHWps' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'yXz6OMLSr1FBQCFm' \
    --body '{"metadata": {"gfE7qZ53Ll4sxBBS": "a14UIBsnuc1wa7Xj", "p5Q4cx6J7aIV0nFr": "yU2kVB53ieB77MFl", "iio6O4txXEytjGR6": "mzV5kREdoSkk4Al0"}, "platformID": "EBlYpQVJTHREYJAl", "userID": "rBsxStNXKV7akJcm"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'L1ziFlxyV7tKMvrq' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'C73fhug7CEKPkuT8' \
    --body '{"leaderID": "dDf3ldrBBhW8gp5o"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'QNPMwE2xYxYZCptM' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'CFq9HaR6xXWqTJpy' \
    --namespace $AB_NAMESPACE \
    --sessionId 'qVT0FNm0q93qcNdC' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'MtLJE5kDAsXLv1Sy' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'LBmij7CgZbzWP0U3' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'BZFtcpLVC3g9yIc6' \
    --userId 'dtO5nk8peWv3PRUb' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Lorktv5pwxRtivGM"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'zDpMHRj4nwDJ6xl9' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'RZ8Z8088nu6PTksH' \
    --body '{"attributes": {"d8gJ5k67c3Iq6pzC": {}, "OspVIypuUmgFqdG5": {}, "bLIgFq3nXx1QjhpX": {}}, "inactiveTimeout": 50, "inviteTimeout": 25, "joinability": "OPEN", "maxPlayers": 37, "minPlayers": 43, "type": "P2P", "version": 5}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Ph6lWAf1SXB1BygL' \
    --body '{"attributes": {"SVLbpqqmrm7SRFvD": {}, "96f6EPBl774ebqfv": {}, "GlJYyVJJKsSRrqkq": {}}, "inactiveTimeout": 60, "inviteTimeout": 43, "joinability": "FRIENDS_OF_MEMBERS", "maxPlayers": 8, "minPlayers": 34, "type": "DS", "version": 75}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '4uqxJmVt10ZOyYvc' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'ciyghSYBwcN9dOYL' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'AdqOaA7JIyzaAXXb' \
    --body '{"metadata": {"zhHrTe6g2vSJ749j": "XGOXvZP4TwgOhoDP", "5HDKqbbHsvwF0YQE": "xsIcp7qqhLileQZ3", "kdeDqdSKAYBCjHLI": "xxk85eWzwv8HVyKh"}, "platformID": "3M3M4xxCbBQeyvsa", "userID": "3n1SWTgh55DcZiRE"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'a28193HlVxpP3usl' \
    --body '{"leaderID": "gojtUsA3DyREjuvI"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '3cdsnAHE4uI6LsvF' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'cXOclWJGg591878d' \
    --userId 'SIKSKB1TdE0DlklI' \
    --body '{"iCYnYT9OKyBzZUCJ": {}, "apu5HF8s25SCrXXU": {}, "nnZTssTWc3P9c788": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'kndtJMJkL8kOrBS4' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '6Bq1XFJvmD9oYvrO' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '2d0dH3LOPRN6vvFv' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'v93FoRTCF0BT35fG' \
    --userId 'r1Ia56bz1SrfvIaH' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'gK64EevMoIxC6qWC' \
    --userId 'focayfzWR1vPewXb' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"6yB3CB322vN9Dxmz": {}, "WeguUfWPC20GYdhU": {}, "skrZfQViUbLcFl4p": {}}, "configurationName": "BDFVHbxA7vDLOmKu", "inactiveTimeout": 47, "inviteTimeout": 33, "joinability": "OPEN", "maxPlayers": 87, "members": [{"ID": "V6hTq94Ouo3lqCIi", "PlatformID": "0tJgWNRdEUOAZcRl", "PlatformUserID": "fE0NUGBH9SRM2qJF"}, {"ID": "B8BD6r3RhSSBFki6", "PlatformID": "6ORvlHFNRkc7U545", "PlatformUserID": "avhT4L77NJsIw6Xt"}, {"ID": "VcyRg0t0q8vFUXen", "PlatformID": "n01cxSjrv7vvyymH", "PlatformUserID": "RVNQUx587buf2ZJB"}], "minPlayers": 86, "textChat": true, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'HpVA6026SOy1WYFc' \
    --body '{"5Je8YUAKNUXgBoha": {}, "FkgWuBcUdmLLPZOo": {}, "uB7CzEFe4dVXfBxv": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'KyuJVfNwo4QMwTsJ' \
    --userId 'sEpR2KHRfVWRBdyY' \
    --body '{"eRblYED3Tsb9M7EH": {}, "NhWtNedjozK4wO81": {}, "FuTrvcb19KmS8nZG": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["BGjCDvnm0VHUu4uT", "91F6wJkEYatUW13D", "dlz7FP8ez4oMK2Dn"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "m1xD47B0TXk18wfm", "data": {"VWjzMDIwQZU7IJi7": {}, "d2pah9e6C4VBbjoi": {}, "K1uvV2AiYaf5SsYK": {}}, "platforms": [{"name": "LqbuLgr1dbwidcrd", "userID": "l6tRaAe8E4H1ygAe"}, {"name": "g3bHskEEC4R4xDHW", "userID": "4MLY8o2DkL6XcOI8"}, {"name": "YKDgYtSCPoulDDBh", "userID": "524CPqa9dXVpmnqk"}], "roles": ["e7KjTnP5Re8kdd9m", "3zdPh5l8O9RGZW7f", "3dm10g1AVTZkaoLp"], "simultaneousPlatform": "VHKRfoxaEr0tHqGQ"}' \
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
    --order '7Eur6P1UJNmdPLp1' \
    --orderBy '59162l31rv6hTHk3' \
    --status '2XU6HeCDlEoAsWW5' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '03vvaB5PqjkbHG2V' \
    --orderBy 'mvnzOmT5vxP65oPl' \
    --status 'Vw17LaYqBO6mxpEs' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE