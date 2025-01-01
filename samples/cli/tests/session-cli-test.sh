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
echo "1..93"

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
samples/cli/sample-apps Session adminGetDSMCConfigurationDefault \
    > test.out 2>&1
eval_tap $? 6 'AdminGetDSMCConfigurationDefault' test.out

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
    --body '{"metricExcludedNamespaces": ["xMqXuNhQkacSYBtq", "SuuJHLYzBHBYIMBG", "IfkZzKfB2eroH8K7"], "regionRetryMapping": {"xBcMcxSM5AKpHO1s": ["uPOeP5CtpBcJZLQE", "2H6Oy0v87MmZe3XE", "hIj7bujQdOBhBzfn"], "C5skdVzXiWadAQqA": ["u559iUslnGoOa1PR", "ZDVsbOu2cLq2snni", "FdAx78WIAyN8jxT1"], "8AXnBuayDh5mfeR3": ["MR0sNekzkBZxbJTH", "ltLDYWQVydx9qVlr", "LA3Jdf4lOokzGypr"]}, "regionURLMapping": ["zqrGBPgI6YMNzI5X", "DEt7zavrvxyPuV9M", "01BMytoYS28fhE6c"], "testGameMode": "MG26vLMgd0sSLOsv", "testRegionURLMapping": ["bDnsXepCp9fTVmWr", "cWnejOPjaR7SvDjm", "UKWHdauYU9K2Dvwb"], "testTargetUserIDs": ["Sw8bqeWPHPE4Av9a", "g7TEEF5V7gxVxxIB", "mSdCM4yEKvS3jsdK"]}' \
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
    --body '{"durationDays": 78}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 31}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 58, "PSNSupportedPlatforms": ["9IdN70Dug0AzkQjK", "gnHOpIwLVRnY3K3H", "wG42rwkhNQBeDIYq"], "SessionTitle": "J1FOb8e29P4Ct32C", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "JbW9uNJvsEBNQBLs", "XboxServiceConfigID": "D4sosYmRVPsKcrkt", "XboxSessionTemplateName": "kuQkRRZqIh0sbitx", "XboxTitleID": "WWsdRKRW0qZf8FoK", "localizedSessionName": {"o2dwgEjf9Rb81OaE": {}, "VcYyityfmHLsFoLE": {}, "yksGQTVtHR52LTVV": {}}}, "PSNBaseUrl": "m7pDxvdCH6Vk0bzq", "appName": "d3J52HWKZkn6xfLz", "attributes": {"OfQvwSsMtBDpxNlj": {}, "21UoMFbxIBKIe6ip": {}, "al4baK6YCdapOr1K": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "w8YB7AyP6KSI3hWc", "customURLGRPC": "euCRbSrRRD7bgWHj", "deployment": "oO7xUZzsX7PaAWYw", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "v7Um0vTPj9xOt5xu", "enableSecret": true, "fallbackClaimKeys": ["6wYpU8g8gjzKEgsV", "gAAiQcLcfcWejZzZ", "QDD7IucuBR04GrMQ"], "grpcSessionConfig": {"appName": "Vtix9c2YZ6mK10yM", "customURL": "OkdZ3Mgi31rogjEk", "functionFlag": 2}, "immutableStorage": false, "inactiveTimeout": 77, "inviteTimeout": 72, "joinability": "YI8Mm05Un9DMcYkD", "leaderElectionGracePeriod": 16, "manualRejoin": true, "maxActiveSessions": 69, "maxPlayers": 61, "minPlayers": 41, "name": "C2PlJ7XcJxcd1bdQ", "persistent": false, "preferredClaimKeys": ["rcGKSIlbxV1qQizQ", "CyiVhHxYfgQytLY9", "fFR0ZrDyckZPVmDm"], "requestedRegions": ["cyY9rUGZMCqkiBAB", "NLrlluBN2IhMKgJx", "dLt2buPnDN6zOX8B"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "7oEm4zfFIasJ6Ohd"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --name 'GxVyNxj3qsMOadOq' \
    --offset '100' \
    --order 'azh4rp6cn4D5LTtH' \
    --orderBy 'nXMVZ7vsRmMijjbR' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'i79vmMfqPDmD4PHm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'tgRufCba3A5VoBWO' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 80, "PSNSupportedPlatforms": ["MbX7BZEH2SQz8xTq", "NPIKfCY0DCn7hu3h", "wYbPFJLInG01ZqpC"], "SessionTitle": "cEMadLxRQ3h1H2BG", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "ynmbJvH7q5LXSTgs", "XboxServiceConfigID": "rVx1zT1mdF7kuh1t", "XboxSessionTemplateName": "QTltGZ7o0RzVkUll", "XboxTitleID": "IX0gMVIp3Wp3fDwE", "localizedSessionName": {"JfKnj6bHV2vOO7Oz": {}, "vrts1w4t4fWb5SNG": {}, "SV6yKWDmo8EMKuH5": {}}}, "PSNBaseUrl": "SsvpEX8RePTjwD5x", "appName": "oPWYF4K8rU9dafb3", "attributes": {"gGX4oCznMff83duZ": {}, "txpp8fhQHsvzOVZN": {}, "GqudeP2MBXq2niT3": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "OOkbXEMCPSH82ZYv", "customURLGRPC": "ngaOrwShcxFRqbQP", "deployment": "BHYjhmcXsLIBbfVN", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "IyGs0hDk0JMHK5Q4", "enableSecret": true, "fallbackClaimKeys": ["eBGT4PPEBuf7derg", "dUkhFlF6JkSkpTkr", "88ybo9ynQMcFaqQ7"], "grpcSessionConfig": {"appName": "wEjEMVIZgpKJ1CnW", "customURL": "E1BdWVHhUovNwKyq", "functionFlag": 99}, "immutableStorage": false, "inactiveTimeout": 54, "inviteTimeout": 37, "joinability": "p2oWKL3w7cdHVWj7", "leaderElectionGracePeriod": 90, "manualRejoin": false, "maxActiveSessions": 13, "maxPlayers": 36, "minPlayers": 55, "name": "yP040Wopwk3solLB", "persistent": true, "preferredClaimKeys": ["W5awSmJTyoY7NN6M", "Z1em0GsH5JpFWfU4", "O4WKyerhhdJyQECe"], "requestedRegions": ["T0BsY1CkAZGgorGe", "sOxUaJGqlv2UgwLx", "YU7NRdKFVjGL5LFs"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "m5GiYLv9QZVA1m5k"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'j3vxfgnItXnwFYmJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 's8ZsDhfTTiCKF4Kh' \
    --namespace $AB_NAMESPACE \
    --userId 'TOm3D8wY0RoFaYlq' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'gVxZNE0FmAVDl6Fi' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "a7jy4VVSxtcfhL6h"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetDSMCConfiguration' test.out

#- 24 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminSyncDSMCConfiguration' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'n6kPnL5b1zYqLzwN' \
    --dsPodName 'piV5sLvSs81pvRcX' \
    --fromTime '4gUBVE1PU1zlkmQ9' \
    --gameMode '2QB3R08hOhQaCnEg' \
    --isPersistent '7hDnYEIiWYN0eFzt' \
    --isSoftDeleted '4MofEspurtdc6BRn' \
    --joinability 'uZYjYYr7xc9I4IZ5' \
    --limit '30' \
    --matchPool '0VhZUUtwDaPSrx9d' \
    --memberID 'rUpQSymgF5FEOBdW' \
    --offset '88' \
    --order 'P9Orkj9Qc02zfQZf' \
    --orderBy 'JMUPk5j7InuGSHWO' \
    --sessionID 'tyuC6i5vJPe48oZT' \
    --status 'pyPjd0Qwu5EGbT6H' \
    --statusV2 '5sY5GoQcwaLEDSEm' \
    --toTime 'j1GPlQCwUJqE4Ar7' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"XiqoatyPS1un1zzL": {}, "MiIld8EHFOhuK5B8": {}, "6KIoikIMFPopRX41": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["99XuaVJvpaHvqtTk", "wiaFhvSiGhRbMmjc", "rX3Nj9FPGTjdjXTo"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'JXk9a6OlUfI4Agj0' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'IcxHPp8837LysLWn' \
    --namespace $AB_NAMESPACE \
    --sessionId 'PuxJ0w8CaB54K4AS' \
    > test.out 2>&1
eval_tap $? 29 'AdminKickGameSessionMember' test.out

#- 30 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'xM0dW4AhEFNiZZZW' \
    --namespace $AB_NAMESPACE \
    --sessionId 'e599QzLRTeXlf8SR' \
    --statusType 'TU32IzsG4ZJyWHmx' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGameSessionMember' test.out

#- 31 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '77' \
    --order 'RFTuxlO9F2lq49fy' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetListNativeSession' test.out

#- 32 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'cSa4tfw79jvNXOUe' \
    --joinability 'xnHddakI2d2fMqHj' \
    --key 'lqEicn4Bi7aZ8eJU' \
    --leaderID 'zYW2yDqcqkHYk4nv' \
    --limit '88' \
    --memberID 'sgdUeZ7Ro9AX1Gfs' \
    --memberStatus 'XGTMTbM6ymYrbePZ' \
    --offset '25' \
    --order 'oYk7bWJ9jn0Yu0ld' \
    --orderBy 'S1ClwwUNSJv5D6hf' \
    --partyID '3IHmxcmozxr31YMc' \
    --value 'LN7GHcp78OETKZbv' \
    > test.out 2>&1
eval_tap $? 32 'AdminQueryParties' test.out

#- 33 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["qcSOlIEfHttt046D", "HheHeyKsdJSEsHYr", "m5txzf3N3DlMAYgx"]}' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteBulkParties' test.out

#- 34 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'agC9u6VRQgVAN9NT' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadPartySessionStorage' test.out

#- 35 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AdminGetPlatformCredentials' test.out

#- 36 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "OYg2wiykLGjajkk7", "clientSecret": "qFoo6AxxS3n6pyFd", "scope": "0bEqSJd2y8GsqgRl"}}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdatePlatformCredentials' test.out

#- 37 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'AdminDeletePlatformCredentials' test.out

#- 38 AdminDeletePlatformCredentialsByPlatformId
samples/cli/sample-apps Session adminDeletePlatformCredentialsByPlatformId \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeletePlatformCredentialsByPlatformId' test.out

#- 39 AdminSyncPlatformCredentials
samples/cli/sample-apps Session adminSyncPlatformCredentials \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 39 'AdminSyncPlatformCredentials' test.out

#- 40 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --userId 'BjQEOsEiUXsHR74w' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetRecentPlayer' test.out

#- 41 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --userId 'KR1uKlzNwsftxvsY' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentTeamPlayer' test.out

#- 42 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'oo7tLvCutO62tSpf' \
    > test.out 2>&1
eval_tap $? 42 'AdminReadSessionStorage' test.out

#- 43 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '7KjyhMCzpnRbqpw7' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteUserSessionStorage' test.out

#- 44 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'IIWldfRHVk42K1Vr' \
    --userId 'AW6bfoNSloNYb6Vm' \
    > test.out 2>&1
eval_tap $? 44 'AdminReadUserSessionStorage' test.out

#- 45 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '0FUyULsi23EcceY9' \
    > test.out 2>&1
eval_tap $? 45 'AdminQueryPlayerAttributes' test.out

#- 46 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '1hMs78mkcvp6k5SH' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerAttributes' test.out

#- 47 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'Uz8nvZShQnJ3VyeT' \
    > test.out 2>&1
eval_tap $? 47 'AdminSyncNativeSession' test.out

#- 48 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "C5C7qBJ5j3pUYbEj", "attributes": {"Z17nlSxOtPtDlEbD": {}, "yjeB202JaOAM2qbF": {}, "5sabZJQCXYkNXZSJ": {}}, "autoJoin": false, "backfillTicketID": "C0exZrAwxj6rkDjq", "clientVersion": "7o6TEwRVXNbDCw1C", "configurationName": "QR1X6sQ2CcpwByh6", "customURLGRPC": "gCPL1fyvk5UCvJTT", "deployment": "qEaKTWRqZKIFDwBV", "dsSource": "mO0JSn56EoeYzdpx", "fallbackClaimKeys": ["qyhifVmcHvLr35lo", "6ZcaBWYrrIRQEiMu", "3C5enIiOS3D88r7i"], "inactiveTimeout": 100, "inviteTimeout": 10, "joinability": "x5ZxDMKsJxYBeKJa", "matchPool": "aJe0j7Dxr6OaBU0j", "maxPlayers": 38, "minPlayers": 91, "preferredClaimKeys": ["VX4rbRiJaOJEoInb", "nRYCU5Q0qCRoqaPf", "9T3OgZfNXtJiHPpd"], "requestedRegions": ["mMzdGji35SqMWQzd", "nKqpIcIPSBIgBItc", "nJ6xQ7DCqO7KJqFW"], "serverName": "WUQPNXtXFHQGbSwV", "storage": {"leader": {"4UuWlK574UpexDOR": {}, "OMC6KumcnpQHDB3f": {}, "GDBwom5HgmJj7Pkv": {}}}, "teams": [{"parties": [{"partyID": "FIqyZbYN3A3JASUE", "userIDs": ["P5Jj9mHFGbDRl6Zx", "kFaJ4gHJ5r7Q6r8K", "MjIAZlMWqjLGOlv9"]}, {"partyID": "D7McYxsSMmnHE0x2", "userIDs": ["NoldNqWYTRNKAaiP", "5nNNhu6gR3EEVZdj", "YjEwTzvyGWGTMdx9"]}, {"partyID": "FkpxEPmLPvdXRGHx", "userIDs": ["kCqRr2lPUiR7UctQ", "hD1F3CdDTKtHGp6O", "zRbqEmkZ6Ifozilr"]}], "teamID": "UsxZVvE6VOa3UljF", "userIDs": ["SF6dn5QPgswIi4pM", "ifO6LTvIXBnBDI8W", "J6pokaKfxZ5nId8O"]}, {"parties": [{"partyID": "1JQotoCTuEAXsl0U", "userIDs": ["tZzHHj0KzGhmeChg", "ozN4eixvMOJenhj0", "rtHqrHatDQiJs8df"]}, {"partyID": "2fOVKEMi62hUq5eB", "userIDs": ["8p8Cxsiozt85rOLe", "71psOZrUIr0Nxcvw", "16TsYCi0Ne6Iaye4"]}, {"partyID": "EhFsdU07lCbVmkuG", "userIDs": ["WXsA1G2lWIv6Gi2H", "tsHgTEmVLNJDsDsH", "DQnow6581geoDW2G"]}], "teamID": "ifSs85y2QDqS1EZQ", "userIDs": ["kY64XkCsIUnuY3e3", "qFux18MWVVK01cn9", "4lxpeLEVtQ0zMJtX"]}, {"parties": [{"partyID": "43OnptgnXmoX44lp", "userIDs": ["RyWzweRyYel8Yule", "RM7qwHP8k5e7Yu2G", "DsGhJhwrtdbetlbv"]}, {"partyID": "Jleq0ozKLHEJajtm", "userIDs": ["SGTK7BTKIlCY8Mg5", "gLjaVbNBASkukJIr", "EeiULjkG8qaDgL6D"]}, {"partyID": "1XYA2O75NcFNN6es", "userIDs": ["y4RojFVpn9bAFfax", "ICOcu4h45fBoBHD2", "fPxmf5vSjVxivi5p"]}], "teamID": "z4crPZ2sye3yWxQ2", "userIDs": ["lbzq3Mz6xOFECbnM", "fWVvpqmfTqhWgqUA", "TIUvyCJTz5D85e5U"]}], "textChat": true, "ticketIDs": ["G9goAxzPg0UzLiWv", "kKyI4WKUTAfayzHM", "QPGu2ZG7QUkx630A"], "tieTeamsSessionLifetime": true, "type": "KCEqtOnHWWxVNY7M"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateGameSession' test.out

#- 49 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"qxn0KDXzBvt7HoVq": {}, "w9PGp6cazZBD0Sqo": {}, "k29D1N6GXJaUL4BP": {}}' \
    > test.out 2>&1
eval_tap $? 49 'PublicQueryGameSessionsByAttributes' test.out

#- 50 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "9Jqy0lovO45sOg9a"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicSessionJoinCode' test.out

#- 51 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'pp7kSUF4A1vtQZDx' \
    > test.out 2>&1
eval_tap $? 51 'GetGameSessionByPodName' test.out

#- 52 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'WRjFmKfwGFnddESP' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSession' test.out

#- 53 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'sHrEqPdJVip1QHmg' \
    --body '{"attributes": {"kzfepuZVqU5KoSb7": {}, "XZwP8wCnRAnTDwgr": {}, "OtCAwng0TNeruXhv": {}}, "backfillTicketID": "OIk0XHmXV4cEm82U", "clientVersion": "a11xErPaUIUTIDCz", "deployment": "LgiY9mszhwnzydjc", "fallbackClaimKeys": ["deszA2Y5vyHomlAk", "FAnzWMfR4hbnF2ge", "FDsbbECQj72eu4yH"], "inactiveTimeout": 21, "inviteTimeout": 84, "joinability": "V4RGQmVJhbWscoyy", "matchPool": "1T7xfg873aQE4VvI", "maxPlayers": 85, "minPlayers": 16, "preferredClaimKeys": ["jw25Os1xsqmi5qeW", "nsYziwPgUGyJ5mzk", "tOjz9q7k1LsDfjlL"], "requestedRegions": ["hZB9ygM4aj7cx80y", "jtgzGqYhAVzpq4hm", "2wM3nnoimHMukpYw"], "teams": [{"parties": [{"partyID": "uuLNLDyT9xqdC8iU", "userIDs": ["ApAWpDjlVactXI4H", "TxrQLrD3DDXllAZc", "il9rs7pn0jSwOq1v"]}, {"partyID": "1qqQxoDJAytWOnXs", "userIDs": ["VQ1GTSLwPLcZ1MtS", "cntHEFSdhDuOluSK", "8xgsimuk5R9kZXwv"]}, {"partyID": "ctYGxfxWxhd1uxJC", "userIDs": ["qbEMqsTYxq7zYHvv", "MgeKXWFuJrKJoaT2", "P3RAqHr62UJ19X9S"]}], "teamID": "VsfSvvyFQASbf40M", "userIDs": ["YHavvWjglqgwaPRv", "ACtGmIos3rjNqHtR", "FqVQcVkN5QYADiTT"]}, {"parties": [{"partyID": "buMMWLuMWDGTakj8", "userIDs": ["sJ5XEGDgKsXDTIrv", "vom9V9UWOLYTPjWO", "Jik5HyknXnFO0LsE"]}, {"partyID": "WJGDtSWmuad3Vy5Q", "userIDs": ["oJpvjxhSB6gYXZqI", "LVZvi1o5aXpBp99B", "B2h7xcZ2Ig3DpNDX"]}, {"partyID": "Zk4T1k25kR8oorpm", "userIDs": ["RoNk2uKsWuMq7L4O", "XqdB12xA4EKlNwi3", "SBZT38lqhMuQyaxP"]}], "teamID": "MbP5WV1NztdU3BgQ", "userIDs": ["YFb82ZhpAGCzUpNz", "TAClF6ozcssHaJko", "4xwAZKHWSarnkWok"]}, {"parties": [{"partyID": "ZVsiQE89DhuqVFpX", "userIDs": ["BMKoYH4gmvyRfqfL", "0PJmTFQOsvd7piyM", "mWxcVF67JaMHNaPP"]}, {"partyID": "fdPqnHO7ebGI8cxb", "userIDs": ["ZOiOZf3InkptYHCo", "LSrwywa0G9eCXzIc", "bc9WTrasO3uaV5xy"]}, {"partyID": "bSWQPOKFZk1gyb59", "userIDs": ["yJn4csKZ1J7fTnYp", "pNLwUsSrQl3kdvYl", "bs0HBofbqXWKtQk5"]}], "teamID": "bUu7KkB9sCAhOJXv", "userIDs": ["x29CglyeGN5zRv85", "5LlIIyzcskcXi5se", "HeCq0rfsMYHTo37x"]}], "ticketIDs": ["oMmjxpa39f5LPl7o", "qUkOhnCNcHY1ILqh", "B0Wvl9B32atNT3DP"], "tieTeamsSessionLifetime": true, "type": "xpCmnemGKrVHORpn", "version": 28}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateGameSession' test.out

#- 54 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'y8zb0xiwqaVTLMa9' \
    > test.out 2>&1
eval_tap $? 54 'DeleteGameSession' test.out

#- 55 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'NBsKfff0VMC4OVk6' \
    --body '{"attributes": {"T45nhcwZlb00afBn": {}, "b0Ozbc4npfsxvWBE": {}, "dVEiRYMOMALoBgrs": {}}, "backfillTicketID": "IX61oskrZztI1YUJ", "clientVersion": "GraYVsW4xUf1Ey95", "deployment": "GG1fJoxvfPHjhvqu", "fallbackClaimKeys": ["1cu4P7rnQCH5kIoU", "FkWfHVLpuz9cytc2", "s2qfedaRiWYEW7t4"], "inactiveTimeout": 75, "inviteTimeout": 0, "joinability": "I1eVY98YshDXaRyQ", "matchPool": "HmlESGwgnp0Z2ZXV", "maxPlayers": 29, "minPlayers": 10, "preferredClaimKeys": ["tpCy2EQu9X7YTWEo", "mpH1SdFqSJ59a4nZ", "snHe2Q5t2dKSvk3w"], "requestedRegions": ["kXLDjUPS7a68yXiu", "isfOR91Tcw2UljPe", "MsK9LZvJ0f8d24wA"], "teams": [{"parties": [{"partyID": "qnq9ueFE1vUZJOQW", "userIDs": ["ZTZ9a6PomYHNcd5L", "Mqq3gs3104YNOtXV", "EMjJeoO86mwstt6O"]}, {"partyID": "ZOq22rZOWPwdarhk", "userIDs": ["aG6PMAAsgZiGRcfb", "GL0teoW6HYmP6nDz", "YAFDK15tJjQfEpfV"]}, {"partyID": "cVx8Nx3qtLMeBVnU", "userIDs": ["2wZlspirlhuAiCDb", "UdyeJeljthFRx8nX", "aKtMwKUhatzMa0yt"]}], "teamID": "9dcegGqwkaT82YZn", "userIDs": ["kn4ahrxGe6wl6fEQ", "KVBOgdomXTTNmS4J", "Av0jUUOA5IfcuQkt"]}, {"parties": [{"partyID": "lZjuiWLudw5zCnop", "userIDs": ["r6EQm4PX7PCE7hEu", "sgSD3zo1gXrc6SNy", "Qbd0wQyzGqRQ9Fpj"]}, {"partyID": "6iZC9r808D5mWjEL", "userIDs": ["kLneBvs0SMUknFQm", "I5CIIdgJBnnwZOZq", "D4BmImyGNNCi848X"]}, {"partyID": "BzOKb6U3O4pZWuf7", "userIDs": ["CjNQKm8qWx76hM8j", "FCY3uXfqZ1HfvECg", "zoeIhqTEuN2swJAV"]}], "teamID": "PzpWcewlImIoTpR7", "userIDs": ["069NK7bf1aRwiTFa", "IHu2U3Cv2XyPgU3R", "aBHDHPRhoxw6depX"]}, {"parties": [{"partyID": "K5MCqFok3n77o3Gs", "userIDs": ["T7W8hcUmE4Etpqn0", "NPWATZtaxMZRbWBh", "2QUhmbTcmc53vY7e"]}, {"partyID": "kMZpsj8oLNCJ3K1U", "userIDs": ["S5zfgHDtW3cBAikc", "4dgBp4JyYZjQAnRV", "BVwzc6h0dt9SAnR9"]}, {"partyID": "Q3FQXzx6tv7dcvoH", "userIDs": ["GumI5QrOHmgkkcbO", "K4gtoIJmrcO6NAhA", "UXTYBzakFnnW72DF"]}], "teamID": "8SgWRGZwCo210oiS", "userIDs": ["uD87hOQAyBDzZmdU", "GD5WYGRO7YCnKq23", "irsXAK2O2PkFN5Em"]}], "ticketIDs": ["gK44bNM1o3AScPRw", "xnXtFbJ5DOjp7uvo", "3xjjrEQnbqtb2dCz"], "tieTeamsSessionLifetime": false, "type": "N0bMrvlq5rlSNp4O", "version": 83}' \
    > test.out 2>&1
eval_tap $? 55 'PatchUpdateGameSession' test.out

#- 56 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId '3VmeHmX2PbiP1fS6' \
    --body '{"backfillTicketID": "0viYV0agqBZEvxP0"}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateGameSessionBackfillTicketID' test.out

#- 57 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '14s1vCkuOthI9mdA' \
    > test.out 2>&1
eval_tap $? 57 'GameSessionGenerateCode' test.out

#- 58 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'mo9JGJe6iBhqvtNr' \
    > test.out 2>&1
eval_tap $? 58 'PublicRevokeGameSessionCode' test.out

#- 59 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'zNLrLD9EMwqDOQiu' \
    --body '{"metadata": {"NXXcjQlQfOmjuzhV": "JiO0hr5dt40Iy4MZ", "mjaUza0KUbNSlYtz": "WMiEFpejF5gyFpdt", "QNzddt06xZpGl0OI": "cow0m7eJBQeFRyPU"}, "platformID": "PDwN60uWDcjJk469", "userID": "DEDZp6uTujU5OHJW"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGameSessionInvite' test.out

#- 60 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'QoiYjYIhWDrNl4mo' \
    > test.out 2>&1
eval_tap $? 60 'JoinGameSession' test.out

#- 61 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'm3GFaMAjk2U1qA1r' \
    --body '{"leaderID": "Fpc6CYSTymkKmTou"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPromoteGameSessionLeader' test.out

#- 62 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'MLdjz19Mp8fdeajh' \
    > test.out 2>&1
eval_tap $? 62 'LeaveGameSession' test.out

#- 63 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'g3E2rsh7ih2cFBum' \
    --namespace $AB_NAMESPACE \
    --sessionId 'gJEdBYYido55VBeg' \
    > test.out 2>&1
eval_tap $? 63 'PublicKickGameSessionMember' test.out

#- 64 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'L4r4DYf1TEB2s61J' \
    > test.out 2>&1
eval_tap $? 64 'PublicGameSessionReject' test.out

#- 65 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'GZGSwvs87Tqphch8' \
    > test.out 2>&1
eval_tap $? 65 'GetSessionServerSecret' test.out

#- 66 AppendTeamGameSession
eval_tap 0 66 'AppendTeamGameSession # SKIP deprecated' test.out

#- 67 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'OWZlxZIt3EKet1hP' \
    --userId 'wDjCce1QRAHDyz4e' \
    > test.out 2>&1
eval_tap $? 67 'PublicGameSessionCancel' test.out

#- 68 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jx3qNmIoE5ldHe6B"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyJoinCode' test.out

#- 69 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'fxFr2TfAtPpcDvz8' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetParty' test.out

#- 70 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'TU7jSdyjgYo5mrSz' \
    --body '{"attributes": {"2wLZpOctPuJ49CQB": {}, "Ox5w1Ci5iOuvydVT": {}, "WXfbI3m1JoZSdZks": {}}, "inactiveTimeout": 93, "inviteTimeout": 72, "joinability": "rxPemek4cVaUaMSu", "maxPlayers": 35, "minPlayers": 32, "type": "V2LgwQ6ed4GV3oGr", "version": 15}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateParty' test.out

#- 71 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'WNLrpDVzZTQDR297' \
    --body '{"attributes": {"BGSulk76uryQQofT": {}, "j8lFf8FbP8tFT2iJ": {}, "Y94mxQYvFrtQm5ig": {}}, "inactiveTimeout": 46, "inviteTimeout": 89, "joinability": "n6rEuZBNrhHk3EDR", "maxPlayers": 5, "minPlayers": 68, "type": "R5BqsOoA4pYx1ACd", "version": 32}' \
    > test.out 2>&1
eval_tap $? 71 'PublicPatchUpdateParty' test.out

#- 72 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'FNaeey0fh6IepXP1' \
    > test.out 2>&1
eval_tap $? 72 'PublicGeneratePartyCode' test.out

#- 73 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '4yjW1TiHhmNv0l0L' \
    > test.out 2>&1
eval_tap $? 73 'PublicRevokePartyCode' test.out

#- 74 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'qY8W5zMY48UGZSvG' \
    --body '{"metadata": {"Hckl1Bn8Yc7zIK8Y": "0q0Fu98gqXAzLyj6", "41te1liwIhJyDLIp": "t41NL2gZhLVjxjui", "VzZeMM9CoJ0isf7O": "qKjy2etTv68Fmk2v"}, "platformID": "8QNRQxAbxwFnE3hM", "userID": "XX7mIUbgCYRvMPUz"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicPartyInvite' test.out

#- 75 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'Te5x3yOdbKMj6d6l' \
    --body '{"leaderID": "puZjRrzKdadsuPQG"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPromotePartyLeader' test.out

#- 76 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'WvwKkxwcvIWC8iGc' \
    > test.out 2>&1
eval_tap $? 76 'PublicReadPartySessionStorage' test.out

#- 77 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'iGa5ZBnOUV0lNDCS' \
    --userId '5aY73cCIKv4HKXe4' \
    --body '{"JM0xlm8OLeP0To0i": {}, "EoEmTbod1NEBGpHe": {}, "dXU56eBWlcIMuhYU": {}}' \
    > test.out 2>&1
eval_tap $? 77 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 78 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'v6N90PNffe9KtUqs' \
    > test.out 2>&1
eval_tap $? 78 'PublicPartyJoin' test.out

#- 79 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'l2G6cpZBVm6k5X1n' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyLeave' test.out

#- 80 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'YF0X521HiEl4v8v3' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyReject' test.out

#- 81 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'DUhpB6eqNe1nYczk' \
    --userId 'H7vNcwv4UEq3VchK' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyCancel' test.out

#- 82 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'euztF7SC1o8I3JWd' \
    --userId '7a7Qj4ZqEmXHJckt' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyKick' test.out

#- 83 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"J4AkzikXujWEEeRh": {}, "fIVRkNcbvdVz3RKy": {}, "PqsItPfWpt12Ti43": {}}, "configurationName": "ZRKFRbEt6IayzcD5", "inactiveTimeout": 27, "inviteTimeout": 27, "joinability": "fLiXMIqIOi9hglr7", "maxPlayers": 96, "members": [{"ID": "efSUlJ7nnLu0WosR", "PlatformID": "PGf6sj23wlFlgpIM", "PlatformUserID": "ewez4AcJlPxpuFfo"}, {"ID": "iIKXYybSawfvs9If", "PlatformID": "WLeuP5eFqJ58MQE9", "PlatformUserID": "c21UaB0QFBt5yE17"}, {"ID": "mXoJXZWc6EKndnDf", "PlatformID": "JeGGDDJI7PGRpebb", "PlatformUserID": "yD2wgPAlrP8ghHv1"}], "minPlayers": 7, "textChat": false, "type": "yOKHzjNtRRMuUSx5"}' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateParty' test.out

#- 84 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 84 'PublicGetRecentPlayer' test.out

#- 85 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentTeamPlayer' test.out

#- 86 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ewl1dbV220qUrIqM' \
    --body '{"4NjQLt4QWFoETFIp": {}, "LifbxVzlxACmrngu": {}, "CuXQOCjMm8gyy2P0": {}}' \
    > test.out 2>&1
eval_tap $? 86 'PublicUpdateInsertSessionStorageLeader' test.out

#- 87 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'WxUFeIihVplrzMsl' \
    --userId 'yqyjEnbLWdTzkt5Q' \
    --body '{"J5Chy8pJ7qx73nFT": {}, "vwWVtAmaKSaBHdWV": {}, "m9d38TFZSiobeZnE": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorage' test.out

#- 88 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["1iUUAAO0TvHFb9e4", "BqMIDdWToyc1TuF3", "09PWYzqhwwLRjjfK"]}' \
    > test.out 2>&1
eval_tap $? 88 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 89 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'PublicGetPlayerAttributes' test.out

#- 90 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "OCwTfwVuMAD3KcoP", "data": {"vCVZTBWQZbh61iTu": {}, "dG2BBxs2Yv8ZgBUU": {}, "gO0CsfNM4pe8yyTa": {}}, "platforms": [{"name": "v24xVqKiwN8fR0Wc", "userID": "GstvInKytbKswIXk"}, {"name": "xmumOItnpzMkXclp", "userID": "XGIRFtCw6u7dm3K5"}, {"name": "hsMC5s6c66fpIBcs", "userID": "dDBQ56VH40loF2wO"}], "roles": ["kJMgNROhShCSLLWd", "2Ibz35ZfHomqgFZA", "6UIZyIJCwmS6WsWe"], "simultaneousPlatform": "u5hDewJ2EHOA2raf"}' \
    > test.out 2>&1
eval_tap $? 90 'PublicStorePlayerAttributes' test.out

#- 91 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'PublicDeletePlayerAttributes' test.out

#- 92 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'myHvc82FWOGZ36bu' \
    --orderBy 'ymMzf9xte9gNoIQv' \
    --status '5l2VleqpqARAjGsH' \
    > test.out 2>&1
eval_tap $? 92 'PublicQueryMyGameSessions' test.out

#- 93 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'zOm7YyP2TOoBYL0A' \
    --orderBy 'Xv7TCO3ZIGQFNqSj' \
    --status 'HLXdukzGepMrII49' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE